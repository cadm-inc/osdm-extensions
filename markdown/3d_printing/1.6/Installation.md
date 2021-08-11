# Extension Module Installation and Startup {.title}

# Prerequisites

* A complete, up-to-date _Creo Elements Direct Modeling_ installation.
* _STL_IMPORT_ license(s)

# Installation Planning

To perform a successfull installation of this _Modeling_ extension module it is
necessary to understand the relationship between the module startup
configuration options and the module install location. Please read section
[Loading/Activating the extension module in _Modeling_](#startupConfig)
before installing the module.

# Installation from ZIP Archive

The `3d_printing` extension module is shipped in a single ZIP
archive. It can be installed in one of the following ways:

## Using the Installer (recommended)

The extension module comes with an installer written in Lisp (`install.lsp`).
This installer is located at the root diectory of the ZIP archive. To install the extension
module using the installer follow these steps:

* Unpack the ZIP archive to a temporary loctation.
* Start a version of _Modeling_ supported by this extension module.
* In Modeling load `install.lsp.` by one of the following methods:
  * Open the _Load_ dialog by clicking on `File --> Open...` or by typing the
   `CTRL-O` keyboard shortcut, and then choose the `LISP source` file type from
   the _File type_ options. Browse to the directory the module got unpacked to,
    and then select `install.lsp`.
  * Load `install.lsp` from the _Modeling_ command line by typing the Lisp expression:

> ~~~Lisp
> ; '...' = path to the unpacked ZIP archive
> (load ".../install.lsp")
> ~~~

* Upon loading the installer, the extension module installation dialog opens.
  Make sure you understand the implications of the load and startup configuration
  of this module as described in the next section. If you need some explanation
  about any of the install options, click the _help_ button <b>&#x2754;</b> at the top right
  corner of the dialog.
* Select an installation location and/or startup option and click the _Confirm_ button.
  The module will be installed to the selected loaction and is ready for use.

## Manual Installation

The extension module is _portable_ and can be unpacked in any desired directory and executed from there.

# Loading/Activating the Extension Module in _Modeling_ {#startupConfig}

To use the functionality provided by the extension module it needs to be first
_loaded_ into _Modeling_.

The module can be then activated manually (interactively) or automatically when
_Modeling_ starts:

## Loading the Extension Module Interactively

* Open the _Load_ dialog by clicking on `File --> Open...` or pressing the
  `CTRL-O` keyboard shortcut and then choose the `LISP source` file type from the
  File type_ options. Browse to the '3d_printing' directory in the
  module's installation and then select `startup.lsp`.
* Load `startup.lsp` from the _Modeling_ command line by typing the Lisp expression:

>> ~~~Lisp
>> ; '...' -  path to the module's installation directory
>> (load ".../3d_printing/startup.lsp")
>> ~~~

### Some Commands to Try

> Type any of the following commands into the _Modeling_ command
> line and press _Enter_ to execute:
>
> ~~~ lisp
> ; Show information about the `3d_printing` extension module
> (3dp:about-module)
>
> ; Show help information
> (3dp:display-module-help)
> ~~~

## Automatically Loading the  Module when _Modeling_ Starts (Autoload)

The extension module can be loaded automatically on _Modeling_ startup by adding
startup code to one of the `sd_customize` files:

~~~ lisp
; '...' is the module installation directory
(load ".../3d_printing/startup.lsp")
~~~

As described in the _Customization Guide for Administrators and Advanced Users_ (_Modeling documentation_),
`sd_customize` files can exist in any of the _Modeling_ customization directories:
* SD (factory level)
* Corp (corporate level)
* Site (site level)
* User (user level)

It is recommended to let the install dialog add this entry the optimal
`sd_customize` file by **checking** the _Load when Modeling starts_ option. The
installer automatically chooses the optimal `sd_customize`
file location for the selected install location.

## Module 'On-Demand' Activation / Deactivation

Once the module is loaded it needs to be turned on (activated) using
the Modeling _Module Management Dialog_ which opens when you click
on `File -> Modules ...`. All loaded CADM extension Modules can be found in the
`CADM Extensions` section.

To activate/deactivate a CADM module check/uncheck it in the dialog.

## Activating the Module when Modeling Starts

To activate the module automatically when Modeling starts, perform these
steps:

* Open the _Modeling Module Activation_ dialog by clicking on
  `File -> Modules ... -> Startup ...`.
* Select the module to auto-activate from the _Modules_ list on the right side.
* Click 'Add -->' to add the module to the _Modeling Startup Sequence_.

# Loading a Previous Version of the Module

All versions of a module are installed side-by-side. By default the newest
installed version is started. In case is should be necessary to temporarily or
permanently revert back to an older version of the module, this can be easily
achieved by editing the module's `startup.lsp` file
".../3d_printing/startup.lsp". `...` represents the module's install
location. The top of this `startup.lsp` looks like this:

~~~ lisp
(in-package :cadm-extension-installer :use '(:lisp :oli))

(let ((module-version "1.2.8") ; <-- change this version
   ...
)
~~~

To start an older version replace the current version with another installed
version and save the changes.

# Uninstalling the Module

CADM extension moduled are _portable_ and can be easily deinstalled by deleting
the module directory.

To delete a particular version of the module, delete the _version_ directory
from the module's installation directory and update the
".../3d_printing/startup.lsp" file to load one of the remaining
versions as described in the previous section.

To delete all versions of the module delete its installation directory
and remove the load configuration from `sd_customize` or `pesd_startup`.
