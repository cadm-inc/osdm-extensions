# COMPONENT-RECORDS [Public Structure] {.title}

{.hierarchy}
&nbsp;&nbsp;&#9581;&#9472;[`persistent-records`](persistent-records.struct.md)
**`COMPONENT-RECORDS`**
&nbsp;

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Table of model components which are sub-types of [`component-info`](component-info.struct.md)
indexed by sysid.

# Slots

_table_ {`hash-table`}
:   A table containing [`instance-info`](instance-info.struct.md) and
    [`contents-info`](contents-info.struct.md) records indexed by sysid.

# Related functions

| Name | Summary |
| :---- | :---- |
| [`make-component-records`](make-component-records.fun.md) | Make and a new [`component-records`](component-records.struct.md) instance and initialize it with records persisted to disk earlier (if any). |
