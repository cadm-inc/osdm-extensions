# MAKE-CHANGE-RECORDS [Public Function] {.title}

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Create a logger which log changes and can repeatedly apply chaanges
 to 3d components.

 ``` lisp
 (make-change-records dir)
 ```

 # Arguments

_dir_ {`pathname`}
:   The directory to store the changelog.

 # Returns

 A new [`change-records`](change-records.struct.md) instance

# Related Structures

| Name | Summary |
| :---- | :---- |
| [`change-records`](change-records.struct.md) | A logger for changes to [`component-info`](component-info.struct.md) objects. |
