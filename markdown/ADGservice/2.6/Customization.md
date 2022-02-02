# Extension Module Customization Overview {.title}

Function and behavior of the `ADGService` extension module can be customized in following ways:

# Extension Module Startup Configuration

The module startup configuration (typically defined by the CAD admin) can be customized by
editing the `adg_customize.lsp` file.
The factory default `adg_customize.lsp` file can be found
in the root directory where the module was unpacked (see [Extension Module Installation and Startup](Installation.md).

This extension module fully supports the _Modeling_ multi-level customization architecture.
The `adg_customize.lsp` file can be placed into one or more of the following directories:

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

The module's startup configuration can be customized by editing the `adg_customize.lsp` file:

See also the [ADG Installation and Configuration Guide](ADG_Installation_Instructions.doc)

### Re-loading Customizations after Change

> Type following command into the _Modeling_ command line and press _Enter_:

~~~ lisp
(adg:load-module-customization)
~~~

## Interactive Configuration

# ADG Service Configuration

> Some settings can be persistently changed by the user in a Modeling session via the
> settings dialog: [`cadm-auto-doc-gen:ADG_SETTINGS`](CADM-AUTO-DOC-GEN/ADG_SETTINGS.dia.md). Changes made in this
> dialog override the settings loaded from `adg_customize.lsp`.

The ADG is configured by editing the `ADGService.exe.config` file located in the
`adg` directory. This file is in XML format and contains the user configurable
properties in the `<appSettings>` section. **Note**: Configuration must be performed **before**
the service is started!

The default (unconfigured) section looks similar to:
~~~xml
<appSettings>
    <!-- Fully qualified Path to a Modeling executable (SolidDesigner.exe) to use as ADG worker. -->
    <add key="ADG_WORKER_LOCATION" value="D:/osdm/osdm-19x/Modeling/amd64/SolidDesigner.exe" />
    <!-- When Modeling does not send any request before this timeout occurs, it is restarted. -->
    <!-- Time is in minutes -->
    <add key="ADG_WORKER_TIMEOUT" value="5" />
    <!-- Time to wait until the ADG worker (Modeling) has connected -->
    <!-- Time is in minutes -->
    <add key="ADG_START_TIMEOUT" value="2" />
    <!-- Number of concurrent worker (Modeling) processes -->
    <add key="ADG_MAX_WORKER_COUNT" value="1" />
    <!-- License server host -->
    <add key="ADG_MELS_HOST" value="win7x64-vm-lab" />
    <!-- Set to 'T' to use Product Data Management (ModelManager) -->
    <!-- Set to 'NIL' to use basic translator -->
    <add key="ADG_PDM_ACTIVE" value="NIL" />
    <!-- relative path to ADG startup file ()-->
    <add key="ADG_STARTUP_FILENAME" value="startup" />
    <!-- Fully qualified path to a ADG working directory -->
    <!-- When emtpy the directory 'work_dir' in the ADG service installation directory is used -->
    <add key="ADG_WORK_DIR" value="" />
    <!-- Fully qualified path to the ADG input directory -->
    <!-- When emtpy the directory 'input_dir' in the ADG service installation directory is used -->
    <add key="ADG_INPUT_DIR" value="" />
    <!-- Fully qualified path to the ADG output directory -->
    <!-- When emtpy the directory 'output_dir' in the ADG service installation directory is used -->
    <add key="ADG_OUTPUT_DIR" value="" />
    <!-- Maximum time a worker may run before it is restarted  -->
    <!-- Time is in minutes -->
    <add key="ADG_MAX_UPTIME" value="1440" />
    <!-- Hostname ot IPV4 Address of the SMTP Server -->
    <add key="ADG_SMTP_HOST" value="localhost"/>
    <!-- SMPT Port -->
    <add key="ADG_SMTP_PORT" value="25"/>
    <!-- ADG service sender email address -->
    <!-- When ADG sends out emails this address is used. -->
    <!-- Preferrably an existing address so that recipients can reply to it. -->
    <add key="ADG_SERVICE_MAIL_FROM" value="adg@yourcompany.com"/>
    <!-- One or more comma separated email addresses of ADG Administrators. -->
    <!-- Status and error emails will be sent to these email addresses. -->
    <add key="ADG_ADMINISTRATOR" value=""/>
    <!-- `CONTINUOUS` Keep all worker processes running continously.       -->
    <!--   New jobs are picked up from `ADG_INPUT_DIR` by idle workers.    -->
    <!-- `ON-DEMAND` Start a single, dedicated worker process for each job -->
    <!--   appearing in `ADG_INPUT_DIR`.                                   -->
    <add key="ADG_MODE" value="CONTINUOUS"/>
</appSettings>
~~~
