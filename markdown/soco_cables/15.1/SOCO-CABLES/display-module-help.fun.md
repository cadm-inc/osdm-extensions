# DISPLAY-MODULE-HELP [Public Function] {.title}

Package: [`soco-cables`](SOCO-CABLES.pkg.md) (Nick name(s): `:rca` `:soco_cables`) {.package}

Display a module help page in the browser.

~~~lisp
(display-module-help [page])
~~~

# Arguments

_page_ {`string` ["Home.html"]}
:   Optional relative path to help page. The path is relative to the extension module's
    `documentation/pub/html` directory. If this parameter is not provided, the module
    documentation [Modeling Extension Module _Rigid Cable Advisor_](../Home.md) is opened.

# Returns

> `T` for success; `NIL` otherwise
