# AMI-DRAWING-INFO [Public Structure] {.title}

{.hierarchy}
**`AMI-DRAWING-INFO`**
&nbsp;

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Annotation drawing record.

# Slots

_name_ {`string`}
:   Name of the drawing

_sourcepath_ {`pathname`}
:   Absolute path to file this drawing came from.

_filename_ {`pathname`}
:   Name of the file on disk in the staging area (drawings.ami subfolder).

_instance-sysids_ {`list`}
:   List of instance sysids of 3d components which a used on this drawing.

