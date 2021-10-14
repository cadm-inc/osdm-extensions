# LOAD-MODULE-CUSTOMIZATION [Public Function] {.title}

Package: [`3d-printing`](3D-PRINTING.pkg.md) (Nick name(s): `:3dp`) {.package}

Load or re-load the module customizations.

~~~lisp
(load-module-customization [with-persisted-settings])
~~~

# Arguments

_with-persisted-settings_ {`boolean` [`NIL`]}
:   Optional flag. `T` to restore persisted settings created by the
    [`3DP_SETTINGS`](3DP_SETTINGS.dia.md)
    after the customization has been loaded. `NIL` to just load the
    customization.

# Returns

`T` on success; `NIL` otherwise.

# Description

This function is automatically called at the end of the module loading process but can also
be called explicitely whenever the customization changed.

Customization files can be placed into
one or more of the following directories:

|           | Location                                                        |
| :-------  | :-------------------------------------------------------------  |
| Factory   | Module installation directory                                   |
| Corporate | as specified in %SDCORPCUSTOMIZEDIR%                            |
| Site      | as specified in %SDSITECUSTOMIZEDIR%                            |
| User      | %APPDATA%/PTC/Creo Elements Direct Modeling {version}/{version} |


**Note** The customization files are loaded in table order. The _user_ customization takes
precedence over all other customizations.

