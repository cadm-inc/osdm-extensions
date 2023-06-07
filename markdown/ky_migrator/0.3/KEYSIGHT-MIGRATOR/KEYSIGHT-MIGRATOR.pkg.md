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
| [`KEYSIGHT_MM_ASSISTED_CHECKIN`](KEYSIGHT_MM_ASSISTED_CHECKIN.dia.md) | Decription |
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
| [`component-info-persisted-p`](component-info-persisted-p.fun.md) | Predicate to determine if a [`component-info`](component-info.struct.md) object has been persisted and contains actual sysids rather than [`entity`] handles. |
| [`deactivate-module`](deactivate-module.fun.md) | Deactivate this module. |
| [`display-module-help`](display-module-help.fun.md) | Display a module help page in the browser. |
| [`get-available-commands`](get-available-commands.fun.md) | Get a list of commands availalable for this module |
| [`get-module-manifest`](get-module-manifest.fun.md) | Get the extension module manifest. |
| [`load-module-customization`](load-module-customization.fun.md) | Load or re-load the module customizations. |
| [`make-cad-file-records`](make-cad-file-records.fun.md) | Make and a new [`cad-file-records`](cad-file-records.struct.md) instance and initialize it with records persisted earlier (if any). |
| [`make-change-records`](make-change-records.fun.md) | Create a logger which log changes and can repeatedly apply chaanges to 3d components. |
| [`make-component-records`](make-component-records.fun.md) | Make and a new [`component-records`](component-records.struct.md) instance and initialize it with records persisted to disk earlier (if any). |
| [`module-active-p`](module-active-p.fun.md) | Predicate to termine if this extension module is active. |

## Structures

| Name | Summary |
| :---- | :---- |
| [`ami-drawing-info`](ami-drawing-info.struct.md) | Annotation drawing record. |
| [`ami-drawing-records`](ami-drawing-records.struct.md) | Records of Annotation drawings on disk |
| [`cad-file-records`](cad-file-records.struct.md) | Records for CAD files indexed by path. |
| [`cad-fileinfo`](cad-fileinfo.struct.md) | A record of a 2d or 3d model file processed to prepare for ModelManager import. |
| [`change-info`](change-info.struct.md) | Log for one model change. |
| [`change-records`](change-records.struct.md) | A logger for changes to [`component-info`](component-info.struct.md) objects. |
| [`cluster-composite-key`](cluster-composite-key.struct.md) | A composite key including the sysid. |
| [`component-info`](component-info.struct.md) | Common data for model component records. |
| [`component-records`](component-records.struct.md) | Table of model components which are sub-types of [`component-info`](component-info.struct.md) indexed by sysid. |
| [`contents-info`](contents-info.struct.md) | Record of a fileable contents cluster. |
| [`instance-info`](instance-info.struct.md) | Record of a fileable instance cluster. |
| [`persistent-records`](persistent-records.struct.md) | Base structure to persist records of some sort in a single (.lsp) file. |
