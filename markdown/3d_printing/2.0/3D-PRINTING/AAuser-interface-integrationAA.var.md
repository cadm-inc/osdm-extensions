# `*USER-INTERFACE-INTEGRATION*` [Public Variable] {.title}

Package: [`3d-printing`](3D-PRINTING.pkg.md) (Nick name(s): `:3dp`) {.package}

Modeling user interface integration level {`keyword`} for this extension
module. Supported levels are:

`:FLUENTUI` (factory default)
:   Commands defined in this module are added to a module specific group in the
    _Extensions_ tab of the Modeling ribbon bar.
    The settings dialog is added to `File -> Settings -> Extensions`.
    Help action(s) are added to the _Modeling_ Help menu.

`:TOOLBOX`
:   Commands defined in this module are added to the _Toolbox_
    of the _Quick Access Toolbar._
    The settings dialog is added to `File -> Settings -> Extensions`.
    Help action(s) are added to the _Modeling_ Help menu.

`:CUSTOM`
:   The settings dialog is added to `File -> Settings -> Extensions`.
    Help action(s) are added to the _Modeling_ Help menu.
    All other required user interfaces need to be custom built.

`:NONE`
:   Commands available in this module are defined, but no user interface is
    built.

