# DEACTIVATE-MODULE [Public Function] {.title}

Package: [`3d-printing`](3D-PRINTING.pkg.md) (Nick name(s): `:3dp`) {.package}

Deactivate this module.

``` lisp
(deactivate-module)
```

# Returns

`T` for successful deactivation; `NIL` otherwise.

# Description

Module deactivation implies:
* unregistering and unconfiguring the module's user interface (if any)
* releasing the license (if applicable))

