# 3D-PRINTING.DATA-EXCHANGE [Package] {.title}

The package `:3D-PRINTING.DATA-EXCHANGE` (nicknamed `:3DP.X`) contains
a LISP API and dialogs to import or export manufacturing data such as _STL_ or _3MF_
with optional reverse-engineering of facet-data into analytical surfaces.

# Package Contents

## Dialogs

| Name | Summary |
| :---- | :---- |
| [`LOAD_MANUFACTURING_DATA`](LOAD_MANUFACTURING_DATA.dia.md) | _Modeling_ load dialog extension for loading manufacturing data files (STL, 3mf). |
| [`SAVE_3MF_MODEL`](SAVE_3MF_MODEL.dia.md) | Save a selection of parts and assemblies as 3mf data file. |

## (Generic) Functions / Macros / Accessors

| Name | Summary |
| :---- | :---- |
| [`read-manufacturing-data`](read-manufacturing-data.fun.md) | Read manufacturing data (STL or 3MF) from files and optionally reconstruct surfaces. |
| [`write-3mf-data`](write-3mf-data.fun.md) | Write a 3mf model to disk using a model specification property list. |
