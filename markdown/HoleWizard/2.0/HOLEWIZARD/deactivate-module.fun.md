# DEACTIVATE-MODULE [Public Function] {.title}

Package: [`holewizard`](HOLEWIZARD.pkg.md) (Nick name(s): `:hw`) {.package}

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

