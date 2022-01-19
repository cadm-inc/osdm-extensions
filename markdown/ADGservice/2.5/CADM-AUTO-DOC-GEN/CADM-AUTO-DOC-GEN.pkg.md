# CADM-AUTO-DOC-GEN [Package] {.title}

Primary Lisp package of the `ADGservice` _Modeling_ extension module.

The package `:CADM-AUTO-DOC-GEN` (nicknamed `:ADG`) contains
tools to support _Automated Document Generator_ infrastructure.

# Programming Notes

This package is **not** intended to be included in the `:use' specification of
other packages due to a high probability of name conflicts.
To reference a facility provided by this package, code in another package
must use an explicit package prefix, e.g.

~~~ Lisp
(adg:load-module-customization)
~~~

# Package Contents

## Dialogs

| Name | Summary |
| :---- | :---- |
| [`ADG_SETTINGS`](ADG_SETTINGS.dia.md) | Edit customizable settings for the `ADGService` extension module. |

## Variables / Parameters / Constants

| Name | Summary |
| :---- | :---- |
| [`*adg-administrator*`](AAadg-administratorAA.var.md) | Recipient(s) for ADG notification emails {_string_ or _string list_} |
| [`*adg-debug-mode*`](AAadg-debug-modeAA.var.md) | `T` To display all commands that are executed in the log file with their parameters. |
| [`*adg-download-prefix*`](AAadg-download-prefixAA.var.md) | The url prefix to use for ADG result downloads {`string`}. |
| [`*adg-execution-mode*`](AAadg-execution-modeAA.var.md) | Current mode of adg execution. |
| [`*adg-hp2xx*`](AAadg-hp2xxAA.var.md) | Path to the external `hp2xx` executable. |
| [`*adg-input-dir*`](AAadg-input-dirAA.var.md) | The fully qualified  path to the 'input directory' where all ADG input files must be placed for processing. |
| [`*adg-jobstat-prefix*`](AAadg-jobstat-prefixAA.var.md) | The url prefix to use for ADG job status requests {`string`}. |
| [`*adg-keep-session*`](AAadg-keep-sessionAA.var.md) | `T` to keep the current session after a job is completed. |
| [`*adg-lib-dir*`](AAadg-lib-dirAA.var.md) | Fully qualified path to the 'lib' directory under which all the ltabs and templates are stored. |
| [`*adg-max-uptime*`](AAadg-max-uptimeAA.var.md) | Maximum Modeling uptime { `fixnum`} in minutes. |
| [`*adg-output-dir*`](AAadg-output-dirAA.var.md) | The fully qualified path to the 'output directory' where ADG-generated output files will be placed for pickup or storing. |
| [`*adg-pdm-active*`](AAadg-pdm-activeAA.var.md) | `T` to use Product Data Management (ModelManager); `NIL` to use basic translator. |
| [`*adg-start-time-utc*`](AAadg-start-time-utcAA.var.md) | Start time of the Modeling process in seconds since epoch {`number`}. |
| [`*adg-webroot*`](AAadg-webrootAA.var.md) | The root url of the ADG webservice {`string`}. |
| [`*adg-work-dir*`](AAadg-work-dirAA.var.md) | The fully qualified path to the working directory where the ADG produces any temporary or intermediate files. |
| [`*user-interface-integration*`](AAuser-interface-integrationAA.var.md) | Modeling user interface integration level {`keyword`} for this extension module. |
| [`+module-id+`](+module-id+.var.md) | The extension module ID. |

## (Generic) Functions / Macros / Accessors

| Name | Summary |
| :---- | :---- |
| [`about-module`](about-module.fun.md) | Show the `ADGService` _about_ information in the _Modeling_ output textbox. |
| [`activate-module`](activate-module.fun.md) | Activate this module. |
| [`deactivate-module`](deactivate-module.fun.md) | Deactivate this module. |
| [`display-module-help`](display-module-help.fun.md) | Display a module help page in the browser. |
| [`get-available-commands`](get-available-commands.fun.md) | Get a list of commands availalable for this module |
| [`get-module-manifest`](get-module-manifest.fun.md) | Get the extension module manifest. |
| [`load-module-customization`](load-module-customization.fun.md) | Load or re-load the module customizations. |
| [`module-active-p`](module-active-p.fun.md) | Predicate to termine if this extension module is active. |
