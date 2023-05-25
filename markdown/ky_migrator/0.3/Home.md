# Modeling Extension Module _Keysight Migrator_ {.title}

The _Keysight Migrator_ extension module for _Modeling_ provides dialogs and
tools to facilitate the import of 3d models and 2d drawings
contained in local folders to _ModelManager_ in preparation for migrating the data to _Enovia_.

# Getting Started

* [Extension Module Installation and Startup](Installation.md)
* [Extension Module Customization Overview](Customization.md)
* [The Extension Module User Interface](UI.md)

# Migration Processes and Tools

## Drawing Association

The Drawing Association Tool [`keysight_drawing_associator`] uses comma
separated records read from a _Master Extraction List_ to obtain information about
drawings and 3d models (parts / assemblies) located in an 'extraction folder'.
This information is used in the following ways to establish an association between
drawings and 3d models (parts / assemblies):

1. The 3d models referenced by the Master Extraction List are scanned for instances
2. Each drawing referenced in the Master Extraction List is loaded into Modeling in order to inquire the sysids of the 3d models referenced the drawing.
3. The sysids obtained from the drawing are matched against the sysids obtained in step 1. The match result is reported in the output csv file (drawing associations file).
4. If enabled a metadata match is applied to drawings which incomplete matching in the previous step. The 3d models matching the metadata criteria are reported in the output csv file.

~~~bob
Association Process Diagram
............................
   .----------------------.
  (  Extraction Directory  )
  /'----------------------'\
  |   .------------------+ |   .--------------------.     .--------------------+
  |  / Master Extraction |---->| Drawing Associator |--> / Drawing Association |
  |  | List              | |   '--------------------'    | List                |
  |  +-------------------+ |                             +---------------------+
  |   .---+      .---+     |
  |  /  .-+-+   /  .-+-+   |
  |  | / 2d |   | / 3d |   |
  |  +-|    |   +-|    |   |
  |    +----+     +----+   |
  '-----------------------'
~~~

## Migration of unmanaged 2d/3d Data to ModelManager

The migration process imports unmanaged models and drawings from a local folder to ModelManager in a two-stage process.
Data is passed between the stages via file system directories.

~~~ bob
Migration Process Diagramm
...........................
+------------------------------------------------------+   +------------------------------------------------------+
|           Stage 1 (not connected to MM)              |   |           Stage 2 (Connected to MM)                  |
| .-------------------------.  .---------------------. |   | .-------------------------.  .---------------------. |
| | Automated Model Scan    |  | Interactive         | |   | | Rule based automated    |  | Interactive         | |
| | and Conflict Resolution |  | Error Resolution    | |   | | MM check-in             |  | Conflict Resolution | |
| '---^-------------------.-'  '-.-------------------' |   | '-^-----------------------'  '-^----------^--------' |
+-----|-------------------|------|---------------------+   +---|----------------------------|----------|----------+
      |           .-------+------'                             |                            |          |
      |           |       |                                    |                            |          |
   .--v---.-------v--.    |                     .--------------v--.                         |     .----v--------.
  (  Input Directory  )   '------------------->( Staging Directory )<-----------------------'    ( Model Manager )
  /'-----------------'\                        /'-----------------'\                             /'-------------'\
  |                   |                        |                   |                             |               |
  |  .---+    .---+   |                        |  .---+    .---+   |                             | #             |
  | /  .-+-+ /  .-+-+ |                        | /  .-+-+ /  .-+-+ |                             | +--O          |
  | | /    | | /    | |                        | | /    | | /    | |                             |    |          |
  | +-| 2d | +-| 3d | |                        | +-| 2d | +-| 3d | |                             |    +--O       |
  |   +----+   +----+ |                        |   +----+   +----+ |                             |    +--O       |
  '-------------------'                        |       .---+       |                             |               |
                                               |      /  .-+--+    |                             '---------------'
                                               |      | / log |    |
                                               |      +-|     |    |
                                               |        +-----+    |
                                               '-------------------'
~~~

where:

`Input Directory`
:   is a local folder containing _Drafting_ or Annotation drawings (*.mi; *.ami) and 3d models
    (*.sd?; *.sd?c; *.xmit (ME30); *.bdl; *.pkg; *.sdexp). This folder can contain
    a user defined sub-directory structure.

`Staging Directory`
:   A work folder which is used to pass processed models and drawings to the check-in stage (stage 2).
    this directory typically has following structure and contents:

    ~~~bob
    #
    +-- drawings.ami
    |      |
    |      '-- *.ami (Annotation drawings)
    |
    +-- drawings.mi
    |      |
    |      '-- *.mi (Drafting/ME10 drawings)
    |
    +-- models
    |      |
    |      '-- *.sd* (3d models)
    |
    '-- *.lsp (Log files)
    ~~~

`Model Manager`
:   The `ModelManager` database where the models and drawings are to be managed.

The process has two distinct stages each of which can be interrupted and resumed at any point.

Stage 1 (not connected to MM)
:   This stage does **not** require the _ModelManager_ module to be activated nor does it require
    the user to have _ModelManager_ specific knowledge.

    All models and drawings contained in the `Input Directory` are loaded into
    _Modeling_ to perform specific actions:
    * **Drawings**:
      * Determine the drawing type (Annotation or ME10).
      * Log _drawing owners for_ _Annotation_ drawings.
      * Copy _Annotation_ to `drawings.ami` in the `Staging Directory`
      * Copy _Drafting (ME10)_ to `drawings.ami` in the `Staging Directory`
    * **3d Models**
      * Reintegrate versioned parts
      * Mark simplified objects as _untouchable_ and delete the simplifiication feature.
      * Mark PC Board Assemblies as _untouchable_ and delete any contained coordinate systems.
      * Run a part-check.
      * Resolve SYSID conflicts (by assigning new sysids to convert
        sysid conflicts into  model name conflicts).
      * Save each loaded model (top-level instance) to `models` in the `Staging Directory`

    During processing of models and drawings a report of required user actions is compiled. The user
    is expected to address all items in the action list before handing the `Staging Directory`
    down to stage 2.

Stage 2 (Connected to ModelManager)
:   This stage requires the _ModelManager_ module to be activated. The user is expected to have basic
    _ModelManager_ knowledge to perform the assisted check-ins. The import uses the data passed down
    from stage 1 in the `Staging Directory`.

    All models and drawings contained in the `Input Directory` are loaded into
    _Modeling_ via an _Assisted Check-in_ dialog which:
    * presents a table of 'model-name conflicts' which the user can resolve by.
      * Assigning a new model name
      * Replacing the conflicting object with an object already present in _ModelManager_
    * Loads all associated drawings for check-in.

# Programming Interfaces

## Lisp packages in this module

| Name | Summary |
| :---- | :---- |
| [`keysight-migrator`](KEYSIGHT-MIGRATOR/KEYSIGHT-MIGRATOR.pkg.md) | Primary Lisp package of the `ky_migrator` _Modeling_ extension module. |

# Programming Interfaces

## Lisp packages in this module

| Name | Summary |
| :---- | :---- |
| [`keysight-migrator`](KEYSIGHT-MIGRATOR/KEYSIGHT-MIGRATOR.pkg.md) | Primary Lisp package of the `ky_migrator` _Modeling_ extension module. |
