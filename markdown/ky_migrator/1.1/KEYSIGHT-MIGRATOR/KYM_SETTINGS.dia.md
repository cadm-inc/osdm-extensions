# KYM_SETTINGS [Public Dialog] {.title}

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Edit customizable settings for the `ky_migrator` extension module.

The settings dialog can be activated by

*  Selecting the command:
   _File -&gt; Settings -&gt; Extensions -&gt;_ **[:MODULE-TITLE](KEYSIGHT-MIGRATOR.pkg.md)**.
   from the _Modeling_ top menu bar..
* Typing `KYM_SETTINGS` into the _Modeling_ command line.

**Note**: Settings changed by this dialog override settings loaded from `kym_customize.lsp`!

# Dialog

![Settings Dialog](images/Settings_dia.png){. leftfloat}

1. TODO: describe UI
2. Reset the settings to the startup configuration.

# Syntax

~~~ bob
                   .-<--------------<-------------<-.
                   |                                |
+--------------+   |   .---------.     .--------.   |   +----------+
| KYM_SETTINGS |->-O->-| :MY_VAR |->- / string /-->-O->-| COMPLETE |
+--------------+   |   '---------'   '--------'     |   +----------+
                   |   .--------.                   |
                   '->-| :RESET |----------------->-'
                       '--------'
~~~

# Options

`:MY_VAR` {string}
:   TODO: Describe dialog variables.

`:RESET`
:   Reset all values to the factory default.

