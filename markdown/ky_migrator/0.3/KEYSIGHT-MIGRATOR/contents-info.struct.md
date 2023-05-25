# CONTENTS-INFO [Public Structure] {.title}

{.hierarchy}
&nbsp;&nbsp;&#9581;&#9472;[`component-info`](component-info.struct.md)
**`CONTENTS-INFO`**
&nbsp;

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Record of a fileable contents cluster.

:warning: When created in session some of the slots contain
[`sel_item`] or [`entity`] objects
as placeholders. These are replaced by the target types by [`update-contents-info`]

# Slots

_metakey_ {}
:   A composite metadata key.

_shares_ {`list`}
:   List of human readable pathnames created for the shares
    of this cluster or [`sel_item`] objects if
    info object has not been _persisted_ yet.

_model-sysids_ {`list`}
:   Sysids of the top-level instances (models)
    containing this cluster
    or a list of [`entity`] objects
    for the models if the info object has not been _persisted_ yet.

_parent-sysids_ {`list`}
:   Sysids of the filing clusters pointing to this cluster
    or a list of [`entity`] handles
    if the info object has not been _persisted_ yet.

_check-result_ {`list`}
:   Part check result.

_layout-owner-sysids_ {`list`}
:   List of sysids of instances owning one or more layouts.

_db-gref_ {`plist`} read only
:   Property list of the `DB-GREF` attribute values.


# Inherited functions

| Name | Summary |
| :---- | :---- |
| [`component-info-persisted-p`](component-info-persisted-p.fun.md) | Predicate to determine if a [`component-info`](component-info.struct.md) object has been persisted and contains actual sysids rather than [`entity`] handles. |
