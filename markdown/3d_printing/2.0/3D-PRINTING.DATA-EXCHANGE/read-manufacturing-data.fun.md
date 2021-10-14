# READ-MANUFACTURING-DATA [Public Function] {.title}

Package: [`3d-printing.data-exchange`](3D-PRINTING.DATA-EXCHANGE.pkg.md) (Nick name(s): `:3dp.x`) {.package}

Read manufacturing data (STL or 3MF) from files and optionally reconstruct
surfaces.

~~~lisp
(read-manufacturing-data mf-file  :type                   {keyword}
                                 [:facecount-limit        {number}]
                                 [:surface-reconstruction {keyword|keyword list}]
                                 [:resolution             {number}]
                                 [:progress               {PROGRESS}])
~~~


Generates a model specification consisting of nested property lists.

# Arguments

_mf-file_ {`string`}
:   Path to file containing manufacturing data.

_type_ {`keyword`}
:   Type of data to import. Currently supported are `:STL` and `:3MF`.

_:resolution_ {`number` [1.0e-3]}
:   Surface recognition precision. Used for geometric comparisons in
    surface fitting.

_:facecount-limit_ {`number` [150000]}
:   Optional maximum number of faces in the imported model. If that limit is
    exceeded, plane recognition is enforced to reduce the number of faces.
    Default is 150,000.

_:surface-reconstruction_ {`keyword`|_keyword list_ [`NIL`] }
:   Optional one or more surface types to reconstruct.
    Currently supported surface types  are:
    * `:PLANES`
    * `:CYLINDERS`

_:progress_ {`PROGRESS` [`NIL`]}
:   Optional instance of a progress object. Used to update a progress indicator
    in the UI. if `NIL` (default) no progress is displayed.
# Returns

> Model specification (list of property lists) created from manufacturing
> data.
> The specification of the root assembly of the model hierarchy is the first
> element in the returned list. Its id is: **"Root"**.
> The format of the elemtents of the specification list is described below:
>
> ## Instance (Component) Links

<blockquote>

~~~ lisp
(
  :TM     <transformation  {MATRIX-3D}>
  :TARGET <hash-key        {integer}>
)
~~~

 </blockquote>

> ## Parts (Mesh objects)

<blockquote>

~~~ lisp
(
  :ID                     <hash-key    {integer}>
  :NAME                   <part-name   {string}>
  :BODY                   <body-handle {BODY}>
  :RESOLUTION             <res                       {number}>
  :FACET-COUNT            <number-of-facets          {number}>
  :FACE-COUNT             <number-of-facets          {number}>
  :REPAIRED-FACET-COUNT   <number-of-degenerate-faces-repaired {number}>
  :DEGENERATE-FACET-COUNT <number-of-degenerate-facets_dropped {number}>
  :SURFACE-RECONSTRUCTION <surface-types {keyword list}>
 [:COLOR                  <part contents color        {integer}>]
 [:TRANSPARENCY           <part contents transparency {double }>]
)
~~~

</blockquote>

> **Note** The `:COLOR` and `:TRANSPACENCY` properties are available only for
> 3mf data import.

> ## Assemblies (Components objects)

<blockquote>

~~~ lisp
(
  :ID         <hash-key       {integer}>
  :NAME       <component-name {string}>
  :COMPONENTS <child-links    {plist list}>
)
~~~

</blockquote>

> ## Top Level Assembly

<blockquote>

~~~ lisp
(
  :ID         -1
  :NAME       <filename                 {string}>
  :COMPONENTS <top-level-instances      {plist list}>
 [:META-DATA  ( (:NAME {string}) :VALUE {string}) ...)]
)
~~~

</blockquote>

> **Note** the `:META-DATA` property is currently available for 3mf-files only.
