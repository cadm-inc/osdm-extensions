# Modeling Extension Module _Keysight Migrator_ {.title}

The _Keysight Migrator_ extension module for _Modeling_ provides dialogs and
tools to facilitate the import of 3d models and 2d drawings
contained in local folders to _ModelManager_ in preparation for migrating the data to _Enovia_.

In the current state this module is a proof-of-concept prototype which will service as
the basis to:
* execute tests to determine issues which may not yet be known
* continue discussion and develop final requirements
* derive the final requirements and technical approach

# Getting Started

* [Extension Module Installation and Startup](Installation.md)
* [Extension Module Customization Overview](Customization.md)
* [The Extension Module User Interface](UI.md)

# Process Overview

~~~ bob
+------------------------------------------------------+   +------------------------------------------------------+
|                 (not connected to MM)                |   |                    (Connected to MM)                 |
| .-------------------------.  .---------------------. |   | .-------------------------.  .---------------------. |
| | Automated Model Scan    |  | Interactive         | |   | | Rule based automated    |  | Interactive         | |
| | and Conflict Resolution |  | Conflict Resolution | |   | | MM check-in             |  | Conflict Resolution | |
| '----------^--------------'  '-------------------^-' |   | '-^-----------------------'  '-^----------^--------' |
+------------|-------------------------------------|---+   +---|----------------------------|----------|----------+
             |                                     |           |                            |          |
             |                                     |           |                            |          |
      . -----'------- .                         . -v-----------v- .                         |     . ---v------- .
     ( Input Directory )                       ( Staging Directory ) <----------------------'    ( Model Manager )
      ' ------------- '                         ' --------------- '                               ' ----------- '
~~~

# Programming Interfaces

## Lisp packages in this module

| Name | Summary |
| :---- | :---- |
| [`keysight-migrator`](KEYSIGHT-MIGRATOR/KEYSIGHT-MIGRATOR.pkg.md) | Primary Lisp package of the `ky_migrator` _Modeling_ extension module. |
