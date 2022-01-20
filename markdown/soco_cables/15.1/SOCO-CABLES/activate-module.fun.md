# ACTIVATE-MODULE [Public Function] {.title}

Package: [`soco-cables`](SOCO-CABLES.pkg.md) (Nick name(s): `:rca` `:soco_cables`) {.package}

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
