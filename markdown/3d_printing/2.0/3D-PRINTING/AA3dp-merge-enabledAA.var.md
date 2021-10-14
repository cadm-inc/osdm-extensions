# `*3DP-MERGE-ENABLED*` [Public Variable] {.title}

Package: [`3d-printing`](3D-PRINTING.pkg.md) (Nick name(s): `:3dp`) {.package}

Merge option. Can be customized in `3dp_customize.lsp`.

When set to `T` mergeable edges are removed from the model by after sets of mesh triangles
have been converted to analytic model faces.

When set to `NIL` mergeable (spur) edges are left in the model.
