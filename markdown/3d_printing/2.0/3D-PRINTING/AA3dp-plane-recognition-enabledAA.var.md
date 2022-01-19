# `*3DP-PLANE-RECOGNITION-ENABLED*` [Public Variable] {.title}

Package: [`3d-printing`](3D-PRINTING.pkg.md) (Nick name(s): `:3dp`) {.package}

Plane recognition option default. Can be customized in `3dp_customize.lsp`.

If set to `T` the plane recognition component attempts to find best-fit planar
regions for sets of contiguous mesh triangles with a given approximation accuracy.
The planar regions are then converted into planar model faces to
reduce model complexity.

Specify `NIL` to turn off recognition of planar faces by default.

