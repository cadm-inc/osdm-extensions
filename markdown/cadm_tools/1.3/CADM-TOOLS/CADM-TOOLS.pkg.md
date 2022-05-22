# CADM-TOOLS [Package] {.title}

Primary package of the `cadm_tools` _Modeling_ extension module.

The package `:CADM-TOOLS` (nicknamed `:CDMT`) provides geometry and data structure
utilities.

# Programming Notes

This package is **not** intended to be included in the `:use' specification of
other packages due to a high probability of name conflicts.
To reference a facility provided by this package, code in another package
must use an explicit package prefix, e.g.

~~~ Lisp
(cdmt:load-module-customization)
~~~

# Package Contents

## Dialogs

| Name | Summary |
| :---- | :---- |
| [`CADM_APPROXIMATE_EDGE`](CADM_APPROXIMATE_EDGE.dia.md) | Test harness for [inq-edge-interpolation-points](inq-edge-interpolation-points.fun.html) |
| [`CDMT_SETTINGS`](CDMT_SETTINGS.dia.md) | Edit customizable settings for the `cadm_tools` extension module. |
| [`SET_OBJECT_SYSID`](SET_OBJECT_SYSID.dia.md) | Test harness for [set-obj-sysid](set-obj-sysid.fun.html) |

## Variables / Parameters / Constants

| Name | Summary |
| :---- | :---- |
| [`*user-interface-integration*`](AAuser-interface-integrationAA.var.md) | Modeling user interface integration level {`keyword`} for this extension module. |
| [`+module-id+`](+module-id+.var.md) | The extension module ID. |

## (Generic) Functions / Macros / Accessors

| Name | Summary |
| :---- | :---- |
| [`about-module`](about-module.fun.md) | Show the `cadm_tools` _about_ information in the _Modeling_ output textbox. |
| [`activate-module`](activate-module.fun.md) | Activate this module. |
| [`deactivate-module`](deactivate-module.fun.md) | Deactivate this module. |
| [`display-module-help`](display-module-help.fun.md) | Display a module help page in the browser. |
| [`get-available-commands`](get-available-commands.fun.md) | Get a list of commands availalable for this module |
| [`get-module-manifest`](get-module-manifest.fun.md) | Get the extension module manifest. |
| [`inq-edge-interpolation-points`](inq-edge-interpolation-points.fun.md) | Generate interpolation points for a 2d or 3d edge. |
| [`load-module-customization`](load-module-customization.fun.md) | Load or re-load the module customizations. |
| [`module-active-p`](module-active-p.fun.md) | Predicate to termine if this extension module is active. |
| [`set-obj-sysid`](set-obj-sysid.fun.md) | Set the sysid of an object or objects's contents. |
