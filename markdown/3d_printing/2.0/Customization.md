# Extension Module Customization Overview {.title}

Function and behavior of the `3d_printing` extension module can be customized in following ways:

# Extension Module Startup Configuration

The module startup configuration (typically defined by the CAD admin) can be customized by
editing the `3dp_customize.lsp` file.
The factory default `3dp_customize.lsp` file can be found
in the root directory where the module was unpacked (see [Extension Module Installation and Startup](Installation.md).

This extension module fully supports the _Modeling_ multi-level customization architecture.
The `3dp_customize.lsp` file can be placed into one or more of the following directories:

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
more of the following parameters in the `3dp_customize.lsp` file:

* [`3d-printing:*3dp-default-recognition-precision*`](3D-PRINTING/AA3dp-default-recognition-precisionAA.var.md)
* [`3d-printing:*3dp-lightweight-model-enabled*`](3D-PRINTING/AA3dp-lightweight-model-enabledAA.var.md)
* [`3d-printing:*3dp-plane-recognition-enabled*`](3D-PRINTING/AA3dp-plane-recognition-enabledAA.var.md)
* [`3d-printing:*3dp-cylinder-recognition-enabled*`](3D-PRINTING/AA3dp-cylinder-recognition-enabledAA.var.md)
* [`3d-printing:*3dp-merge-enabled*`](3D-PRINTING/AA3dp-merge-enabledAA.var.md)
* [`3d-printing:*3dp-face-count-limit*`](3D-PRINTING/AA3dp-face-count-limitAA.var.md)               
* [`3d-printing:*user-interface-integration*`](3D-PRINTING/AAuser-interface-integrationAA.var.md)

### Re-loading Customizations after Change

> Type following command into the _Modeling_ command line and press _Enter_:

~~~ lisp
(3dp:load-module-customization)
~~~

# Interactive Configuration
Settings can be persistently changed by the user in a Modeling session via the
settings dialog: [`3d-printing:3DP_SETTINGS`](3D-PRINTING/3DP_SETTINGS.dia.md). Changes made in this
dialog override the settings loaded from `3dp_customize.lsp`.
