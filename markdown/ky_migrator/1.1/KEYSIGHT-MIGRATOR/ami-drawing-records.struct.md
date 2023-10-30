# AMI-DRAWING-RECORDS [Public Structure] {.title}

{.hierarchy}
&nbsp;&nbsp;&#9581;&#9472;[`persistent-records`](persistent-records.struct.md)
**`AMI-DRAWING-RECORDS`**
&nbsp;

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Records of Annotation drawings on disk

# Slots

_drawings_ {`hash-table`}
:   Table of [`ami-drawing-info`](ami-drawing-info.struct.md) on disc
    indexed by sourcepath.

