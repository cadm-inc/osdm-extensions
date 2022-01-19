# GET-MODULE-MANIFEST [Public Function] {.title}

Package: [`3d-printing`](3D-PRINTING.pkg.md) (Nick name(s): `:3dp`) {.package}

Get the extension module manifest.

~~~ lisp
(get-module-manifest)
~~~

# Returns

> Extension module manifest as property list of the form:
>
> ~~~ lisp
> '(:MODULE-NAME {string}
>   :VERSION {string}
>   :BUILD-DATE {string}
>   :COPYRIGHT {string})
> ~~~
