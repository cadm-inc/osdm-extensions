# CAD-FILE-RECORDS [Public Structure] {.title}

{.hierarchy}
&nbsp;&nbsp;&#9581;&#9472;[`persistent-records`](persistent-records.struct.md)
**`CAD-FILE-RECORDS`**
&nbsp;

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Records for CAD files indexed by path.

The records table is indexed with `pathname` objects referring to files
which were loaded (successfully or not).

The records file contains two different record types:

`(state relpath)`
:   Where `relpath` is of type `pathname` and denotes the relative path to a
    file below the input directory. `status` is one of two keywords:
    * `:loading` - the CAD file is about to be loaded.
    * `:processing` - The loaded model is about to be processed.

a [`cad-fileinfo`](cad-fileinfo.struct.md) instance.
:   This is the processing result. If this is present in the records the loaded file
    is completely dealt with (successfully or unsuccessfully).

# Slots

_filetable_ {`hash-table`}
:   Table containing {[`cad-fileinfo`](cad-fileinfo.struct.md)} objects for each file
    and indexed by the file's relative path {`pathname`}.

# Related functions

| Name | Summary |
| :---- | :---- |
| [`make-cad-file-records`](make-cad-file-records.fun.md) | Make and a new [`cad-file-records`](cad-file-records.struct.md) instance and initialize it with records persisted earlier (if any). |
