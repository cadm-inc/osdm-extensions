# `*RCA-MODEL-TIP-DIST*` [Public Variable] {.title}

Package: [`soco-cables`](SOCO-CABLES.pkg.md) (Nick name(s): `:rca` `:soco_cables`) {.package}

Let cable protrude through the connector {`boolean`}.

When `T` the system adjusts the length of the visual model by the connector tip distance.
Certain connectors may allow the user to see the cable protruding through the
connector. This setting allows the system to shorten or lengthen the cable by
the tip_dist setting to provide a more accurate visualization. If this
visualization change is not wanted set this parameter to `NIL` and the
cable visualization will end at the ref plane.

