# GET-AVAILABLE-COMMANDS [Public Function] {.title}

Package: [`3d-printing`](3D-PRINTING.pkg.md) (Nick name(s): `:3dp`) {.package}

Get a list of commands availalable for this module

``` lisp
(get-available-commands [group-id])
```

# Arguments

group-id {`keyword`} - optional
:   If specified returns the command group matching the given id.

# Returns

One (if group-id is provided) or more lists of grouped command identifiers
of the form:

~~~ Lisp
(<group> <group label> <availCmd> ...)
~~~

where

`<group>` {`keyword`}
:   key of a command group such as `:settings` or `:help`

`<group name>` {`string`}
:   Label of command group for use in the user interface.

`<availCmd>` {`string list`}
:   One or more triplets of strings to uniquely identify a command.
    The triplet has the form `(<app-name> <group-name> <cmd-name>)`
    and is intended to be used for building custom user interfaces.

`NIL` is returned if:
* the module was never activated (commands available after activation)
* the module does not define any commands for the user interface.
* a `group-id` was given, but there is no matching group.

