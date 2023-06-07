# KEYSIGHT_MM_ASSISTED_CHECKIN [Public Dialog] {.title}

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Decription

# Syntax

~~~ bob
                                      .-<-----------------------<-----------------<-.
                                      |                                             |
  +-------------------------------+   |  .--------------------.     .-----------.   |   +----------+
->| KEYSIGHT_MM_ASSISTED_CHECKIN  |->-O->| :STAGING_DIRECTORY |->--/ directory /-->-O->-| COMPLETE |
  +-------------------------------+   |   '-------------------'   '-----------'     |   +----------+

~~~

# Options

`:STAGING_DIRECTORY`
:   The models in native _Modeling_ format (.sd*) prepared by the migration
    stage 1 dialog [`KEYSIGHT_MM_IMPORT_ASSEMBLER`](KEYSIGHT_MM_IMPORT_ASSEMBLER.dia.md).
    Filenames are component sysids to guarantee uniqueness.

