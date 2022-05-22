# SET-OBJ-SYSID [Public Function] {.title}

Package: [`cadm-tools`](CADM-TOOLS.pkg.md) (Nick name(s): `:cdmt`) {.package}

Set the sysid of an object or objects's contents.

```lisp
(set-obj-sysid obj :attachment {keyword}
                   :sysid      {string})
```

# Arguments

obj {`SEL_ITEM`}
:   The object to for which to set the sysid

attachment {`keyword`}
:   Determines at what level to set the sysid. Options include:

  	*  **`:instance`**: the sysid is set for this instance
  	*  **`:contents`**: the sysid is set for the objects shared contents

sysid {`string`}
:   The sysid of the object or the object's contents.

# Returns

`T` - if the sysid was set successfully.
