# `*3DP-DEFAULT-RECOGNITION-PRECISION*` [Public Variable] {.title}

Package: [`3d-printing`](3D-PRINTING.pkg.md) (Nick name(s): `:3dp`) {.package}

Default precision for surface recognition {`number`}. Can be customized in `3dp_customize.lsp`.
This option sets the default precision in the
_STL import_ options dialog in mm:

High numbers specify low precisions and should not exceed 0.1 because the
stability of the imported model degrades quickly beyond that point. Highest possible precision
(smallest number) is 0.000001 mm
