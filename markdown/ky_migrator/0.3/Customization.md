# Extension Module Customization Overview {.title}

Function and behavior of the `ky_migrator` extension module can be customized in following ways:

# Extension Module Startup Configuration

The module startup configuration (typically defined by the CAD admin) can be customized by
editing the `kym_customize.lsp` file.
The factory default `kym_customize.lsp` file can be found
in the root directory where the module was unpacked (see [Extension Module Installation and Startup](Installation.md).

This extension module fully supports the _Modeling_ multi-level customization architecture.
The `kym_customize.lsp` file can be placed into one or more of the following directories:

|           | Location                                                        |
| :-------  | :-------------------------------------------------------------  |
| Factory   | Module installation directory                                   |
| Corporate | as specified in %SDCORPCUSTOMIZEDIR%                            |
| Site      | as specified in %SDSITECUSTOMIZEDIR%                            |
| User      | %APPDATA%/PTC/Creo Elements Direct Modeling {version}/{version} |

where:

> %SDCORPCUSTOMIZEDIR%, %SDSITECUSTOMIZEDIR%
> :   Windows environment variables typically defined by the CAD adminstrator.

> %APPDATA%
> :   Windows system variable pointing to the user's application data directory

> {version}
> :   _Modeling_ Version

**Note**: Customization files are loaded in table order. The _user_ customization takes
precedence over all other customizations.

### Customization Options

The module's startup configuration can be customized by setting one or
more of the following parameters in the `kym_customize.lsp` file:

| Setting Parameter | Summary |
| :---------------------------------------| :------------------------------------ |
TODO: add links to settings variables here

### Re-loading Customizations after Change

> Type following command into the _Modeling_ command line and press _Enter_:

~~~ lisp
(kym:load-module-customization)
~~~

# Interactive Configuration

Settings can be persistently changed by the user in a Modeling session via the
settings dialog: [`keysight-migrator:KYM_SETTINGS`](KEYSIGHT-MIGRATOR/KYM_SETTINGS.dia.md). Changes made in this
dialog override the settings loaded from `kym_customize.lsp`.
