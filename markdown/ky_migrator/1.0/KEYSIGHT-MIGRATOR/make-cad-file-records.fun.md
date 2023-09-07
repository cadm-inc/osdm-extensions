# MAKE-CAD-FILE-RECORDS [Public Function] {.title}

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Make and a new [`cad-file-records`](cad-file-records.struct.md)
instance and initialize it with records persisted earlier (if any).

``` lisp
(make-cad-file-records dir)
```

# Arguments

_dir_ {`pathname`}
:   Absolute path to the directory containing a persisted file records.

# Returns

A new instance of a [`cad-file-records`](cad-file-records.struct.md) initialized with the
content of the records file found in the given directory.
If the file does not exist it is created, and the `filetable` is empty.

# Related Structures

| Name | Summary |
| :---- | :---- |
| [`cad-file-records`](cad-file-records.struct.md) | Records for CAD files indexed by path. |
