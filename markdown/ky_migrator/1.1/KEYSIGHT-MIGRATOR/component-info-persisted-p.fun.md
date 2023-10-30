# COMPONENT-INFO-PERSISTED-P [Public Function] {.title}

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Predicate to determine if a [`component-info`](component-info.struct.md) object has been
persisted and contains actual sysids rather than [`entity`]
handles.

``` lisp
(component-info-persisted-p arg)
```

# Arguments

_this_ {[`component-info`](component-info.struct.md)}
:   The component info object to apply the predicate to.

# Returns

`T` if the component info object is in the _resolved_ state; `NIL` otherwise.

# Related Structures

| Name | Summary |
| :---- | :---- |
| [`component-info`](component-info.struct.md) | Common data for model component records. |
