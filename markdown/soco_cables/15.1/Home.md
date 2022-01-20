# Modeling Extension Module _Rigid Cable Advisor_ {.title}

The Rigid Cable Modeler is a tool to simplify the process of design
and routing of _"cable"_ type assemblies.
These _"cables"_ could be representations
of coax cables, pipes, waveguides, ribbon cables, wires, HVAC ducting, etc.
While similar cables are commonly used in RF and microwave instruments Cable
Modeler is not limited to just those applications. Cable Modeler can be used
anywhere there is need to bend and route a part that has a constant cross
section shape. In addition, this tool can produce data, which allows direct
prototyping of the cable assembly. Cable Modeler is an add-on module to Creo Elements
Direct Modeling and does require a license for usage.
The presentation of all pertinent
data is in an easy-to-use tabular format. A cable is created by choosing a size,
picking the cable terminators from a menu and selecting the bend points from a
_Modeling_ workplane or off an existing 3D wireframe, surface or solid
model. Cable Advisor will show the designer the total length of the cable, build
it and automatically add the appropriate connectors from its library.

# Getting Started

* [Extension Module Installation and Startup](Installation.md)
* [Cable Modeler Customization Overview](Customization.md)
* [Cable Modeler Customization Guide](rca_customize.html)
* [The Extension Module User Interface](UI.md)
* [Cable Modeler User Manual](user-manual.html)

# Programming Interfaces

## Lisp packages in this module

| Name | Summary |
| :---- | :---- |
| [`soco-cables`](SOCO-CABLES/SOCO-CABLES.pkg.md) | Primary Lisp package of the `soco_cables` _Modeling_ extension module. |
