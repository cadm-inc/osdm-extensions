# `*3DP-CYLINDER-RECOGNITION-ENABLED*` [Public Variable] {.title}

Package: [`3d-printing`](3D-PRINTING.pkg.md) (Nick name(s): `:3dp`) {.package}

Cylinder recognition option default. Can be customized in `3dp_customize.lsp`.

If set to `T` the cylinder recognition component attempts to find best-fit cylindrical
regions for sets of contiguous mesh triangles with a given approximation accuracy.
The planar regions are then converted into cylindrical model faces to
reduce model complexity.

Specify `NIL` to turn off recognition of cylindrical faces by default.

