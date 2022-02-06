# HW_SETTINGS [Public Dialog] {.title}

Package: [`holewizard`](HOLEWIZARD.pkg.md) (Nick name(s): `:hw`) {.package}

Edit customizable settings for the `HoleWizard` extension module.

The settings dialog can be activated by

*  Selecting the command:
   _File -&gt; Settings -&gt; Extensions -&gt;_ **[:MODULE-TITLE](HOLEWIZARD.pkg.md)**.
   from the _Modeling_ top menu bar..
* Typing `HW_SETTINGS` into the _Modeling_ command line.

**Note**: Settings changed by this dialog override settings loaded from `hw_customize.lsp`!

# Dialog

![Settings Dialog](images/Settings_dia.png){. leftfloat}

1. TODO: describe UI
2. Reset the settings to the startup configuration.

# Syntax

~~~ bob
                                  .-<--------------<------------<-.
                                  |                               |
+-----------------------------+   |   .---------.    .--------.   |   +----------+
|HW_SETTINGS |->-O->-| :MY_VAR |->-/ string /-->-O->-| COMPLETE |
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

