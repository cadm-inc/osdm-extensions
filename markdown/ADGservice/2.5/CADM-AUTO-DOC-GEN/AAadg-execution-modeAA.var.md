# `*ADG-EXECUTION-MODE*` [Public Variable] {.title}

Package: [`cadm-auto-doc-gen`](CADM-AUTO-DOC-GEN.pkg.md) (Nick name(s): `:adg`) {.package}

Current mode of adg execution.
* `:CONTINUOUS`: The _ADG_ runs continously.
  New jobs are picked up from `ADG_INPUT_DIR` as soon as they appear.
* `:ON-DEMAND`: _ADG_ processes picks up a single job from `ADG_INPUT_DIR` and then exits.
