# SHOW-HOLEWIZARD [Public Function] {.title}

Package: [`holewizard`](HOLEWIZARD.pkg.md) (Nick name(s): `:hw`) {.package}

```lisp
(show-holewizard :feature feature
                 :mode    action)
```

Show the _Hole Feature Tool_ UICT UICT dialog.

# Parameters

> ## :feature {_SEL_ITEM_}
>>   Hole feature to open the dialog with.
>>   Can be `nil` if the operation mode is `:CREATE`.
> ## :mode {_keyword_}
>>   Operation mode. Can be `:CREATE`, `:MODIFY`, or `:COPY`
# Returns

> `T` for success
