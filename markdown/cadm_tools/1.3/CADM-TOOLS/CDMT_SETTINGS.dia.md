# CDMT_SETTINGS [Public Dialog] {.title}

Package: [`cadm-tools`](CADM-TOOLS.pkg.md) (Nick name(s): `:cdmt`) {.package}

Edit customizable settings for the `cadm_tools` extension module.

    The settings dialog can be activated by

    *  Selecting the command:
       _File -&gt; Settings -&gt; Extensions -&gt;_ **[:MODULE-TITLE](CADM-TOOLS.pkg.md)**.
       from the _Modeling_ top menu bar..
    * Typing `CDMT_SETTINGS` into the _Modeling_ command line.

    **Note**: Settings changed by this dialog override settings loaded from `cdmt_customize.lsp`!

    # Dialog

~~~ mermaid
graph LR

    1. TODO: describe UI
    2. Reset the settings to the startup configuration.

    # Syntax

    ~~~ bob
                                      .-<--------------<------------<-.
                                      |                               |
    +-----------------------------+   |   .---------.    .--------.   |   +----------+
    |CDMT_SETTINGS |->-O->-| :MY_VAR |->-/ string /-->-O->-| COMPLETE |
    +-----------------------------+   |   '---------'  '--------'     |   +----------+
                                      |   .--------.                  |
                                      '->-| :RESET |---------------->-'
                                          '--------'
    ~~~

    # Options

    `:MY_VAR` {string}
    :   TODO: Describe dialog variables.

    `:RESET`
    :   Reset all values to the factory default.
    
