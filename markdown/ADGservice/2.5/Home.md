# Modeling Extension Module _Auto Doc Generator_ {.title}

The `ADGservice` extension module for _Modeling_ provides
document generation and translation services (ADG - Automated Document Generator).

The installation package consists of three components which build on each other:

Component  | Description
---------- | -----------------------------------------------------------------------
ADGservice | The _Modeling_ extension module
adg        | Windows service to orchestrate _Modeling_ worker processes.
adgweb     | ASP.net Blazor web service for interactive form based ADG job creation.

# Getting Started

* [Extension Module Installation and Startup](Installation.md)
* [Extension Module Customization Overview](Customization.md)

# See Also

* [ADG Service Architecture Overview](Architecture.md)

# Programming Interfaces

## Lisp packages in this module

| Name | Summary |
| :---- | :---- |
| [`cadm-auto-doc-gen`](CADM-AUTO-DOC-GEN/CADM-AUTO-DOC-GEN.pkg.md) | Primary Lisp package of the `ADGservice` _Modeling_ extension module. |
