# DEACTIVATE-MODULE [Public Function] {.title}

Package: [`cadm-tools`](CADM-TOOLS.pkg.md) (Nick name(s): `:cdmt`) {.package}

Deactivate this module.

``` lisp
(deactivate-module)
```

# Returns

`T` for successful deactivation; `NIL` otherwise

# Description

Module deactivation implies:
* unregistering and unconfiguring the module's user interface (if any)
* releasing the license (if applicable))

