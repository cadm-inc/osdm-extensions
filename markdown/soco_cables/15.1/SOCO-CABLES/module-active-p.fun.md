# MODULE-ACTIVE-P [Public Function] {.title}

Package: [`soco-cables`](SOCO-CABLES.pkg.md) (Nick name(s): `:rca` `:soco_cables`) {.package}

Predicate to termine if this extension module is active.

``` lisp
(module-active-p)
```

# Returns

`T if the module is active; `NIL` otherwise.

# Description

A module is active, if its:
* user interface (if any) is configured and enabled
* license (if applicable) is acquired

