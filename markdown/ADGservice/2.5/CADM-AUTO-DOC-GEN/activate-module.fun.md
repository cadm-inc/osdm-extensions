# ACTIVATE-MODULE [Public Function] {.title}

Package: [`cadm-auto-doc-gen`](CADM-AUTO-DOC-GEN.pkg.md) (Nick name(s): `:adg`) {.package}

Activate this module.

``` lisp
(activate-module)
```

# Returns

`T` for successful activation; `NIL` otherwise

# Description

Module activation implies:
* registering and configuring the module's user interface (if any)
* aqcuiring the license (if applicable)
