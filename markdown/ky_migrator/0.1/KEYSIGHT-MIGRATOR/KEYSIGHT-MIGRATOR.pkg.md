# KEYSIGHT-MIGRATOR [Package] {.title}

Primary Lisp package of the `ky_migrator` _Modeling_ extension module.

The package `:KEYSIGHT-MIGRATOR` (nicknamed `:KYM`) contains dialogs and tools
to facilitate the migration of _Modeling_ 3d and 2d models to _ModelManager_
or _Enovia_.


# Programming Notes

This package is **not** intended to be included in the `:use` specification of
other packages due to a high probability of name conflicts.
To reference a facility provided by this package, code in another package
must use an explicit package prefix, e.g.

~~~ Lisp
(kym:load-module-customization)
~~~

# Package Contents

## Dialogs

| Name | Summary |
| :---- | :---- |
| [`KEYSIGHT_MM_IMPORT_ASSEMBLER`](KEYSIGHT_MM_IMPORT_ASSEMBLER.dia.md) | Prepare _Modeling_ 2d and 3d models for _ModelManager_ check-in. |
| [`KYM_SETTINGS`](KYM_SETTINGS.dia.md) | Edit customizable settings for the `ky_migrator` extension module. |

## Variables / Parameters / Constants

| Name | Summary |
| :---- | :---- |
| [`*user-interface-integration*`](AAuser-interface-integrationAA.var.md) | Modeling user interface integration level {`keyword`} for this extension module. |
| [`+module-id+`](+module-id+.var.md) | The extension module ID. |

## (Generic) Functions / Macros / Accessors

| Name | Summary |
| :---- | :---- |
| [`about-module`](about-module.fun.md) | Show the `ky_migrator` _about_ information in the _Modeling_ output textbox. |
| [`activate-module`](activate-module.fun.md) | Activate this module. |
| [`deactivate-module`](deactivate-module.fun.md) | Deactivate this module. |
| [`display-module-help`](display-module-help.fun.md) | Display a module help page in the browser. |
| [`get-available-commands`](get-available-commands.fun.md) | Get a list of commands availalable for this module |
| [`get-module-manifest`](get-module-manifest.fun.md) | Get the extension module manifest. |
| [`load-module-customization`](load-module-customization.fun.md) | Load or re-load the module customizations. |
| [`module-active-p`](module-active-p.fun.md) | Predicate to termine if this extension module is active. |
