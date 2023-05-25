# CAD-FILEINFO [Public Structure] {.title}

{.hierarchy}
**`CAD-FILEINFO`**
&nbsp;

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

A record of a 2d or 3d model file processed to prepare for
ModelManager import.

# Slots

_path_ {`pathname`} read-only
:   Absolute path to the 2d/3d model file.

_models-3d {`alist`}
:   Assoc list with elements of the form `(name . file)` where
    _name_ {`string`} is the name of the top-level instance
    and _file_ {`pathname`} is the relative path of that model in the staging
    directory created by processing the
    the loaded file. `nil` if not 3d models were in that file.

_drawing_ {`string`}
:   Relative pathname to drawing file in the staging directory.
    `nil` if no drawing was in that file.

_state_ {`keyword`}
:   The processing state:
    * `:new` - A new instance.
    * `:loading` - File about to be loaded. If that is the
      last known status, Modeling crashed.
    * `:processing` - File could be loaded and is about to be
      processed.
    * `:complete` - File was loaded and processed.
      This slot is updated by [`update-cad-file-records`] and should not be written to.

_write-date_ {`fixnum`}
:   Timestamp of the last write access to the CAD file referenced by the `path`
slot.

_load-method_ {`keyword`}
:   The method used to load the file.
* `:sd` - Modeling universal load (3d models and drawings).
* `:me30` - Legacy ME30 import
* `:none` (default) - no load method did work.

_error-status_ {`object`}
:   Information about errors that occurred (if any).


