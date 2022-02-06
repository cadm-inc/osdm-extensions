# GET-MODULE-MANIFEST [Public Function] {.title}

Package: [`holewizard`](HOLEWIZARD.pkg.md) (Nick name(s): `:hw`) {.package}

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
