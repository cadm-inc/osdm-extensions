# INQ-EDGE-INTERPOLATION-POINTS [Public Function] {.title}

Package: [`cadm-tools`](CADM-TOOLS.pkg.md) (Nick name(s): `:cdmt`) {.package}

Generate interpolation points for a 2d or 3d edge.

```lisp
(inq-edge-interpolation-points edge :dest-space {keyword | SEL_ITEM}
                                    :accuracy   {number})
```

Interpolation points for 2d edges (edges on a workplane) will be 3d.

# Arguments

edge {`SEL_ITEM`}
:   2d or 3d edge to generate interpolation points for.

dest-space {`keyword` | `SEL_ITEM`}
:   The coordinate system to return the data in. Possible value are:
    * `:local` -   Data is returned in the coordinate system of the
       body/workplane containing the edge.
    * `:local` -   Data is returned in the global coordinate system
    * `SEL_ITEM` -   Data is returned
      in the coordinate system of the object or the part/workplane
      owning the element.

accuracy {`number`}
:   The geometric precision (or accuracy). This is roughly the maximum
    distance of the interpolation points from the edge. To reduce the
    number of interpolation points generated use higher numbers (i.e. lower accuracy).
    Typically 0.001 should be sufficient

# Returns

Property list of the form:
    (:type t :points interpolation-pts)

Where _t_ is one of the keywords
* `:line` -	There are two interpolation points returned which represent a
  3d straight
* `:circular-arc` - There are three interpolation points returned which
  represent a circular arc
* `:closed-circle` - There a four interpolation points returned which
  represent a full circle. The first and last interpolation
  points are identical
* `:spline-arc` - The n interpolation points returned represent an open and
  finite spline curve. The points can be use to reconstruct an
  interpolation spline (e.g.  by using the
  bspline-cv-by-interpolation function)
* `:closed-spline` - The n interpolation points returned represent a closed
  spline curve. The first and last interpolation point
  is identical.

# Example

A typical usage pattern for this function looks like:

~~~ lisp
(let* ((interpolation-data (inq-edge-interpolation-points edge :dest-space :global
                                                               :accuracy   0.001))
        (interpolation-points (getf interpolation-data :points))
        (interpolation-type   (getf interpolation-data :type))
        ...)
  (case interpolation-type
    (:line ... )
    ...
  )
  ...
)
~~~
