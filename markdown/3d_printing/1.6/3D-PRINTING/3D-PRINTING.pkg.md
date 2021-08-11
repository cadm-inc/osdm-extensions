# 3D-PRINTING [Package] {.title}

Primary package of the `3d_printing` extension module for _Modeling_.

The `:3D - PRINTING` package(nicknamed `:3DP`) contains:

* the customization tools for the `3d_printing` extension module
* module manifest data
* dialogs and LISP APIs to import
  meshes from manufacturing data such as _STL_ and _3MF_ as solids or
 face parts into the _Modeling_ CAD application.

# Package Contents

## Dialogs

| Name | Summary |
| :---- | :---- |
| [`3DP_FOCUS_STUDY_REGION`](3DP_FOCUS_STUDY_REGION.dia.md) | Focus on a region of a mesh quality study by showing only items in a specified _region of interest_ (box) or with related gemoetry. |
| [`3DP_MEASURE_MESH_QUALITY`](3DP_MEASURE_MESH_QUALITY.dia.md) | Measure the quality of a mesh with respect to the part it was derived from. |
| [`3DP_SETTINGS`](3DP_SETTINGS.dia.md) | Edit customizable module settings for the 3d printing extension. |

## Variables / Parameters / Constants

| Name | Summary |
| :---- | :---- |
| [`*3dp-cylinder-recognition-enabled*`](AA3dp-cylinder-recognition-enabledAA.var.md) | Cylinder recognition option default. |
| [`*3dp-default-recognition-precision*`](AA3dp-default-recognition-precisionAA.var.md) | Default precision for surface recognition {`number`}. |
| [`*3dp-face-count-limit*`](AA3dp-face-count-limitAA.var.md) | Maximum number of faces {`integer`} an imported body can have before data reduction is enforced. |
| [`*3dp-lightweight-model-enabled*`](AA3dp-lightweight-model-enabledAA.var.md) | Option to import STL data as lightweigth model (`T`) or full model (`NIL`). |
| [`*3dp-merge-enabled*`](AA3dp-merge-enabledAA.var.md) | Merge option. |
| [`*3dp-plane-recognition-enabled*`](AA3dp-plane-recognition-enabledAA.var.md) | Plane recognition option default. |
| [`*user-interface-integration*`](AAuser-interface-integrationAA.var.md) | Modeling user interface integration level {`keyword`} for this extension module. |
| [`+module-id+`](+module-id+.var.md) | The extension module ID. |

## (Generic) Functions / Macros / Accessors

| Name | Summary |
| :---- | :---- |
| [`about-module`](about-module.fun.md) | Show the `3d_printing` _about_ information in the _Modeling_ output textbox. |
| [`activate-module`](activate-module.fun.md) | Activate this module. |
| [`deactivate-module`](deactivate-module.fun.md) | Deactivate this module. |
| [`display-module-help`](display-module-help.fun.md) | Display a module help page in the browser. |
| [`get-available-commands`](get-available-commands.fun.md) | Get a list of commands availalable for this module |
| [`get-module-manifest`](get-module-manifest.fun.md) | Get the extension module manifest. |
| [`load-module-customization`](load-module-customization.fun.md) | Load or re-load the module customizations. |
| [`module-active-p`](module-active-p.fun.md) | Predicate to termine if this extension module is active. |
