# KEYSIGHT_MM_IMPORT_ASSEMBLER [Public Dialog] {.title}

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Prepare _Modeling_ 2d and 3d models for _ModelManager_ check-in.

This dialog can be activated by:
* Selecting the command Prepare MM Import in the Keysight Migrator group
  of the _Modeling_ ribbon (see also [The Extension Module User Interface](../UI.md)
* Typing `KEYSIGHT_MM_IMPORT_ASSEMBLER` into the _Modeling_ command line.

# Syntax

~~~ bob
                                      .-<-----------------------<-----------------<-.
                                      |                                             |
  +-------------------------------+   |  .------------------.       .-----------.   |   +----------+
->| KEYSIGHT_MM_IMPORT_ASSEMBLER  |->-O->| :INPUT_DIRECTORY |--->- / directory /-->-O->-| COMPLETE |
  +-------------------------------+   |  '------------------'     '-----------'     |   +----------+
                                      |  .--------------------.     .-----------.   |
                                      O->| :STAGING_DIRECTORY |->- / directory /-->-O
                                      |   '--------------------'   '-----------'    |
                                      |  .--------.              .---------.        |
                                      O->| :CHECK |---------->- / :ON/:OFF /------>-O
                                      |  '--------'            '----------'         |
                                      |  .-----------------.     .---------.        |
                                      '->| :DISPLAY_REPORT |->- / :ON/:OFF /------>-O
                                         '-----------------'   '----------'
~~~

# Options

`:INPUT_DIRECTORY`
:   The input directory containing 2d _Annotation_ and MI drawings as well as 3d models of
    any format supported by _Modeling_. The sub structure is up to the user but it is recommended
    to keep related files together.

`:STAGING_DIRECTORY`
:   The models in native _Modeling_ format (.sd*). Filenames are component
    sysids to guarantee uniqueness.

`:CHECK`
:   Option to run a part check to all parts.

`DISPLAY_REPORT`
:   Show a report when import is finished.

