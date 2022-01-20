# Extension Module Customization Overview {.title}{: .title}

Function and behavior of the `soco_router` extension module can be customized in following ways:

# Extension Module Startup Configuration

The module startup configuration (typically defined by the CAD admin) can be customized by
editing the `rcr_customize.lsp` file.
The factory default `rcr_customize.lsp` file can be found
in the root directory where the module was unpacked (see [](:Installation :file)).

This extension module fully supports the _Modeling_ multi-level customization architecture.
The `rcr_customize.lsp` file can be placed into one or more of the following directories:

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
more of the following parameters in the `rcr_customize.lsp` file:

| [:TOC-COL-PARAMETER](:SD-DOC :resource) | [:TOC-COL-SUMMARY](:SD-DOC :resource) |
| :---------------------------------------| :------------------------------------ |
TODO: add links to settings variables here

### Re-loading Customizations after Change

> Type following command into the _Modeling_ command line and press _Enter_:

~~~ lisp
(rcr:load-module-customization)
~~~

# Interactive Configuration

Settings can be persistently changed by the user in a Modeling session via the
settings dialog: []('RCR_SETTINGS :dialog). Changes made in this
dialog override the settings loaded from `rcr_customize.lsp`.
