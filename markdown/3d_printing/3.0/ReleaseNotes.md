# Package Release Notes {.title}

# 3.0.0

* Fixed unitialized variable in callback method which caused load/save 3mf to abort immediately
* Upgraded to lib3MF 2.2
* Dropped support for Modeling versins older than 20.3 (due to lib3MF requirements)

# 2.0.3 - Bugfix Release

* Fixed 'Nil is not of type cons' error due to change in k2 mass property API for
  Modeling 20.4.

# 2.0.2 - Bugfix Release

* Fixed invalid import assembly name when path to mf file is given.

# 2.0.1 - Bugfix Release

* Show model of CAD model handled the same was as CAD model faces during focus operation
* Model state restored to initial state when inspection is terminated

# 2.0.0 - Feature Release

* Measurement Browser Enhancements
  * Maximum distance of a mesh region to the associated CAD model faces recorded
    in the study metadata
  * User defined table filters enabled
  * Sorting of measurement results changed to largest distance first to show the biggest
    problems first.
  * Maximum distance of facet regions to model faces shown in the
    measurement browser

* Focus region dialog re-organized. See also [`3d-printing:3DP_FOCUS_STUDY_REGION`](3D-PRINTING/3DP_FOCUS_STUDY_REGION.dia.md) (Focus on a region of a mesh quality study by showing only items in a specified _region of interest_ (box) or with similar geometry).
  * Study result have now three show options for each result type: solid,transparent, hidden
  * Moved the box filter to the bottom of the dialog because it is now a secondary
    filter method. Most likely it is used after defining geometry filters and/or
    selection in the _Measurement Browser_.
  * Only model faces are shown now when faces for geometric filtering are
    selected.

# 1.6.2 - Bugfix Release

* Bugfix: Fixed ugly _nil is not of type cons_ error when selecting 
  reference parts/assemblies which are not **below** the study container.

# 1.6.1 - Bugfix Release

* resolution data type changed to number because it is always in mm
* top level assembly naming fixed when unix style path is used for 3mf import

# 1.6.0 Maintenance Release

* Upgrade to libmf 2.1. beta
* culled recursion when checking coedges to avoid stack overflow on unpatched SolidDesigner.exe

# 1.5.5

* License checks added.

# 1.5.4

* Error browser too few items due to destructive sorting fixed.
* All measurements turned on for face selection
* debug logging cleaned up

### [`3d-printing:3DP_FOCUS_STUDY_REGION`](3D-PRINTING/3DP_FOCUS_STUDY_REGION.dia.md) (Focus on a region of a mesh quality study by showing only items in a specified _region of interest_ (box) or with similar geometry)

Measurement browser extended:

* show all measurements
* more display filters

# 1.5.2

### [`3d-printing:3DP_FOCUS_STUDY_REGION`](3D-PRINTING/3DP_FOCUS_STUDY_REGION.dia.md) (Focus on a region of a mesh quality study by showing only items in a specified _region of interest_ (box) or with similar geometry)

* Dialog extended to allow selection of model geometry matching user defined criteria.
* Sub dialog added to allow convenient browsing of measurement results.

# 1.5.1

* Incorrect call to `3dp::attach-mf-feature` fixed which was introduced in refactoring.
* Module activated when license is activated.

# 1.5.0

### [`3d-printing:3DP_FOCUS_STUDY_REGION`](3D-PRINTING/3DP_FOCUS_STUDY_REGION.dia.md) (Focus on a region of a mesh quality study by showing only items in a specified _region of interest_ (box) or with similar geometry)

* box selector improved to reduce number of false positives.
* Interactive manipulation of detail level.

### [`3d-printing:3DP_MEASURE_MESH_QUALITY`](3D-PRINTING/3DP_MEASURE_MESH_QUALITY.dia.md) (Measure the quality of a mesh with respect to the part it was derived from)

* Quality study restructured to associate measurement results with individual model faces.
* Additional coloring options

### Other
Documentation improvements

# 1.4.5

* Documentation improvements
* Structure browser menu actions
  * show import properties
  * show study report
  * part/mesh alignment
  * region of interest selection
* Consistent naming of mesh analysis dialog: [`3d-printing:3DP_MEASURE_MESH_QUALITY`](3D-PRINTING/3DP_MEASURE_MESH_QUALITY.dia.md).
* Dialog to focus on a region of interest in the mesh study: [`3d-printing:3DP_FOCUS_STUDY_REGION`](3D-PRINTING/3DP_FOCUS_STUDY_REGION.dia.md)

# 1.4.4

### Bugfixes

* Transformation of Study assemblies fixed
* Replaced call to GATHER_FACES dialog by specialized face copy code to avoid scalability issue.

### Enhancements

* Add all model faces which have an error facet associated to the model face assembly to
* make inspection and measurements easier
* Added documentation on how to work with the study results

# 1.4.3 

Implemented a container based Mesh Quality Study data structure which contains sub-assemblies with:

* parts containing connected facet groups exceeding the error threshold
* parts containing connected facet groups exceeding the warning threshold
* parts containing CAD model faces which could not be assigned to facets.

# 1.4.2

* Mesh import: Feature attached to imported mesh so that meshes can be recognized.
* Mesh quality: Unassigned faces captured to face part which is put in to a container under the mesh body
* Mesh quality: mesh part specific show settings (edge off; face transparency).
* Mesh quality: Disallow selecting parts of the wrong type.

# 1.4.1

* persisted settings loaded when customization is loaded

# 1.4.0

* Measure mesh quality algorithm redesigned to work with scanned data.
* Measure mesh quality dialog added to user interface.
* documentation update

# 1.3.2
* _Modeling Module Manager_ intergration
* Packaged with CADM module installer
* _Modeling_ user interface integration (help menu)

# 1.3.0
* 3mf data import/export added

# 1.2.2
* Mesh repair improved
* Plane recognition now computes the eigenvalues
  of the energy matrix to find best fit plane.
* Cylinder fitting based on a _gradient descent_ algorithm added
* Automatic detection of best import resolution implemented.

# 1.2.0
* Optional loading of STL data as _lightweight_ model.

# 1.1.0
* Handling of degenerate triangles (_slivers_) improved.
* Un-reparable triangles removed.
* Priority queue used to improve the detection of planar facet regions.
* Spur edge removal improved
* New configurable parameter [`3d-printing:*3dp-face-count-limit*`](3D-PRINTING/AA3dp-face-count-limitAA.var.md) to
  enforce data reduction if import model exceeds the face count limit.
* Default configuration settings optimized:
  * [`3d-printing:*3dp-plane-recognition-enabled*`](3D-PRINTING/AA3dp-plane-recognition-enabledAA.var.md) set to **off**
    (`NIL`) by default to allow automatic selection of import precision.
  * [`3d-printing:*3dp-default-recognition-precision*`](3D-PRINTING/AA3dp-default-recognition-precisionAA.var.md) 
    changed to 0.01 mm to allow import of larger models.
  * [`3d-printing:*3dp-merge-enabled*`](3D-PRINTING/AA3dp-merge-enabledAA.var.md) changed to **off** (`NIL`) due to issues
    described in [Known Limitations](Limitations.md)

# 1.0.4
* Backport of prototype to standard _Modeling_ 19.
* HP specific optimizations and additions
