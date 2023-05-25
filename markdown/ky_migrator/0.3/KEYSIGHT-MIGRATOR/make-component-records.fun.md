# MAKE-COMPONENT-RECORDS [Public Function] {.title}

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Make and a new [`component-records`](component-records.struct.md)
instance and initialize it with records persisted to disk earlier (if any).

:warning: The records file on disk may contain multiple instances of
info objects for the same sysid, depending on how often the info was
updated. We keep the most up-to-date info only.

``` lisp
(make-component-records dir)
```

# Arguments

_dir_ {`pathname`}
:   Absolute path to the directory containing a persisted file records.

# Returns

A new instance of a [`component-records`](component-records.struct.md) initialized with the
content of the records file found in the given directory.
If the file does not exist it is created, and the `table` is empty.

# Related Structures

| Name | Summary |
| :---- | :---- |
| [`component-records`](component-records.struct.md) | Table of model components which are sub-types of [`component-info`](component-info.struct.md) indexed by sysid. |
