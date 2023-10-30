# ACTIVATE-MODULE [Public Function] {.title}

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

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
