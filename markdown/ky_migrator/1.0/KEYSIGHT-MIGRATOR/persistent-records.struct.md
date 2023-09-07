# PERSISTENT-RECORDS [Public Structure] {.title}

{.hierarchy}
**`PERSISTENT-RECORDS`**
&nbsp;

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Base structure to persist records of some sort in a single (.lsp) file.

Files are managed in a crash-resistant way. Existing records are recovered
after crash when this structure is instantiated, and new records can be
added thereafter.

# Slots

_path_ {`pathname`}
:   Absolute path to the file containing the persisted records.

_outstream_ {`stream`}
    :   The stream to write new records to.

