# COMPONENT-INFO [Public Structure] {.title}

{.hierarchy}
**`COMPONENT-INFO`**
&nbsp;

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Common data for model component records.

:warning: This structure and its derived structures has two states:
* In-session state where all sysids are handles of type [`entity`]
* Persisted (resolved) state where all sysids are the sysid strings retrieved from
  the [`entity`] handles that were previously there.
  Use the [`component-info-persisted-p`](component-info-persisted-p.fun.md) predicate to determine
  if the component-info object has been resolved.

# Slots

_sysid_ {[`entity`] | `string`}
:   Initially an entity handle. After conflict resolution
    the (unique) component sysid.

_typename_ {`string`}
:   The user friendly name of the component type.

_filename_ {`pathname`}
:   File name of the component in the staging area.

_child-sysids_ {`string` list}
:   The sysids of the structure children (filing contents clusters).

# Related functions

| Name | Summary |
| :---- | :---- |
| [`component-info-persisted-p`](component-info-persisted-p.fun.md) | Predicate to determine if a [`component-info`](component-info.struct.md) object has been persisted and contains actual sysids rather than [`entity`] handles. |
