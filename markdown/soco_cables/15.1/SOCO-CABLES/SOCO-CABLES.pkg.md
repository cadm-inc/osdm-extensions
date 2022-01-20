# SOCO-CABLES [Package] {.title}

Primary Lisp package of the `soco_cables` _Modeling_ extension module.

The package `:SOCO-CABLES` (nicknamed `:RCA` or `:SOCO_CABLES`) contains
cable modeling dialogs and a connector library for the _Rigid Cable Modeler_.

# Programming Notes

This package is **not** intended to be included in the `:use' specification of
other packages due to a high probability of name conflicts.
To reference a facility provided by this package, code in another package
must use an explicit package prefix, e.g.

~~~ Lisp
(rca:load-module-customization)
~~~

# Package Contents

## Dialogs

| Name | Summary |
| :---- | :---- |
| [`RCA_SETTINGS`](RCA_SETTINGS.dia.md) | Edit customizable module settings. |

## Variables / Parameters / Constants

| Name | Summary |
| :---- | :---- |
| [`*rca-auto-clear-offset-points*`](AArca-auto-clear-offset-pointsAA.var.md) | Should point offset values be reset (i.e. |
| [`*rca-cable-color*`](AArca-cable-colorAA.var.md) | Default color for cables {`integer`}. |
| [`*rca-check-illegal-cond*`](AArca-check-illegal-condAA.var.md) | Show violated rules in display window {`boolean`}. |
| [`*rca-comp-color*`](AArca-comp-colorAA.var.md) | Default color for components {`integer`}. |
| [`*rca-conn1-color*`](AArca-conn1-colorAA.var.md) | Default color for connector1 {`integer`}. |
| [`*rca-conn2-color*`](AArca-conn2-colorAA.var.md) | Default color for connector1 {`integer`}. |
| [`*rca-create-lbl-comp-feedback*`](AArca-create-lbl-comp-feedbackAA.var.md) | Determine if labels for components should be shown {`boolean`}. |
| [`*rca-display-cable-path-only*`](AArca-display-cable-path-onlyAA.var.md) | Only display cable path when adding/editing points {`boolean`}. |
| [`*rca-enable-cell-editing*`](AArca-enable-cell-editingAA.var.md) | Allow editing of point values directly in table (no multi-selection) {`boolean`}. |
| [`*rca-keep-current-part*`](AArca-keep-current-partAA.var.md) | Keep current part when editing cable (if nil, cable becomes current part) {`boolean`}. |
| [`*rca-lbl-rel-size*`](AArca-lbl-rel-sizeAA.var.md) | Relative size of label with regard to total length of cable {`float`}. |
| [`*rca-model-tip-dist*`](AArca-model-tip-distAA.var.md) | Let cable protrude through the connector {`boolean`}. |
| [`*rca-use-previous-cabledata*`](AArca-use-previous-cabledataAA.var.md) | Reuse previous points if creating a new cable {`boolean`}. |
| [`*user-interface-integration*`](AAuser-interface-integrationAA.var.md) | Modeling user interface integration level {`keyword`} for this extension module. |
| [`+module-id+`](+module-id+.var.md) | The extension module ID. |

## (Generic) Functions / Macros / Accessors

| Name | Summary |
| :---- | :---- |
| [`about-module`](about-module.fun.md) | Show the `soco_cables` _about_ information in the _Modeling_ output textbox. |
| [`activate-module`](activate-module.fun.md) | Activate this module. |
| [`deactivate-module`](deactivate-module.fun.md) | Deactivate this module. |
| [`display-module-help`](display-module-help.fun.md) | Display a module help page in the browser. |
| [`get-available-commands`](get-available-commands.fun.md) | Get a list of commands availalable for this module |
| [`get-module-manifest`](get-module-manifest.fun.md) | Get the extension module manifest. |
| [`load-module-customization`](load-module-customization.fun.md) | Load or re-load the module customizations. |
| [`module-active-p`](module-active-p.fun.md) | Predicate to termine if this extension module is active. |
