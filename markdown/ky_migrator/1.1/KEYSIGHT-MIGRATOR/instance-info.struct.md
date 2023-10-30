# INSTANCE-INFO [Public Structure] {.title}

{.hierarchy}
&nbsp;&nbsp;&#9581;&#9472;[`component-info`](component-info.struct.md)
**`INSTANCE-INFO`**
&nbsp;

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Record of a fileable instance cluster.

# Slots

_sourcepath_ {`pathname`}
:   Absolute path to file this component came from.

_name_ {`string`}
:   The name of the instance (as shown in the structure browser.

_contents-sysid_ {[`entity`] | `string`}
:   The unique sysid of the (shared) contents object
    referred to by this instance or an [`entity`] handle
    if the info object has not been _resolved_ yet.


# Inherited functions

| Name | Summary |
| :---- | :---- |
| [`component-info-persisted-p`](component-info-persisted-p.fun.md) | Predicate to determine if a [`component-info`](component-info.struct.md) object has been persisted and contains actual sysids rather than [`entity`] handles. |
