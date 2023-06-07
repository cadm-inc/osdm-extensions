# CHANGE-RECORDS [Public Structure] {.title}

{.hierarchy}
&nbsp;&nbsp;&#9581;&#9472;[`persistent-records`](persistent-records.struct.md)
**`CHANGE-RECORDS`**
&nbsp;

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

A logger for changes to [`component-info`](component-info.struct.md) objects.

The logs are cached in memory until [`flush-change-records`] is called.
Changes can be logged by calling [`log-component-change`].

# Slots

_buffer_ {`list`}
:   A cached list of [`change-info`](change-info.struct.md) records.

# Related functions

| Name | Summary |
| :---- | :---- |
| [`make-change-records`](make-change-records.fun.md) | Create a logger which log changes and can repeatedly apply chaanges to 3d components. |
