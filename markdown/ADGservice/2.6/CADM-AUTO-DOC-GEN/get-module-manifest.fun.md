# GET-MODULE-MANIFEST [Public Function] {.title}

Package: [`cadm-auto-doc-gen`](CADM-AUTO-DOC-GEN.pkg.md) (Nick name(s): `:adg`) {.package}

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
