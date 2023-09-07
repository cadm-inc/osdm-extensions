# CHANGE-INFO [Public Structure] {.title}

{.hierarchy}
**`CHANGE-INFO`**
&nbsp;

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Log for one model change.

# Slots

_locations_ {`string` list}
:   The human-readable paths of the changed components in the model structure.

_key-before_ {[`cluster-composite-key`](cluster-composite-key.struct.md)}
:   Composite of the cluster before change.

_key-after_ {[`cluster-composite-key`](cluster-composite-key.struct.md)}
:   composite key of the cluster after the change.

_reason_ {`keyword`}
:   A keyword describing the change reason.

