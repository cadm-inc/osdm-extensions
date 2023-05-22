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

_resolved-sysids_ {`list`}
:   A list of property lists of the form
    `(:instance sysid :component-sysids (sysid-1 ...))` where
    `sysid` is the sysid of a model instance supposed to own a layout
     on the drawing and
    `sysid-1 ...` is a list of related instance or
    contents object sysids {`string` list}
    of components found one or more 3d models. This slot is typically
    set by [`associate-models-and-drawings`].

_model-sysids_ {`list`}
:   List of the top level instance sysids {`string`} referencing this drawing.
    `nil` if no association was detected.
    This slot is typically
    set by [`associate-models-and-drawings`].

