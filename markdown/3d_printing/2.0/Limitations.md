# Known Limitations {.title}

There are two limitations with respect to merging of models imported from STL.
The default for merging is controlled by the configuration parameter [`3d-printing:*3dp-merge-enabled*`](3D-PRINTING/AA3dp-merge-enabledAA.var.md).
To improve import quality and success rate, the default has been set to **off** (`NIL`) for now.

It is recommended to perform merging interactively on an as-needed basis using the
dialog `MERGE_3D`.

# Scalability Issues with Merging

Merge scans all vertices in the model created from STL data using a native (C++) function
which causes a `Stack overflow` with large amounts of vertices. Following options to fix this
issues are available:

* fix the native (C++) function and create a custom build of _Modeling_.
* get PTC to include the (simple) bugfix in one of the next _Modeling_ releases.

# Export Limitations

* 3mf export currently does not export face colors, part instance colors, textures or materials.

# Import Limitations

* 3mf import does not import face colors.
* 3mf materials are imported as material color without material name.
* 3mf textures are not imported.
