# ADG_SETTINGS [Public Dialog] {.title}

Package: [`cadm-auto-doc-gen`](CADM-AUTO-DOC-GEN.pkg.md) (Nick name(s): `:adg`) {.package}

Edit customizable settings for the `ADGService` extension module.

The settings dialog can be activated by

*  Selecting the command:\
   _File -&gt; Settings -&gt; Extensions -&gt;_ **[:MODULE-TITLE](CADM-AUTO-DOC-GEN.pkg.md)**.\
   from the _Modeling_ top menu bar..
* Typing `ADG_SETTINGS` into the _Modeling_ command line.

**Note**: Settings changed by this dialog override settings loaded from `adg_customize.lsp`!

# Dialog

![Settings Dialog](images/Settings_dia.png){. leftfloat}

1. TODO: describe UI
2. Reset the settings to the startup configuration.

# Syntax

~~~ bob
                   .-<--------------<------------<-.
                   |                               |
+--------------+   |   .---------.    .--------.   |   +----------+
|ADG__SETTINGS |->-O->-| :MY_VAR |->-/ string /-->-O->-| COMPLETE |
+--------------+   |   '---------'  '--------'     |   +----------+
                   |   .--------.                  |
                   '->-| :RESET |---------------->-'
                       '--------'

