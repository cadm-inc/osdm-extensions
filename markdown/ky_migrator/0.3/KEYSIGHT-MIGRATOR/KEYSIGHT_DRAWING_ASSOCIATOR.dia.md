# KEYSIGHT_DRAWING_ASSOCIATOR [Public Dialog] {.title}

Package: [`keysight-migrator`](KEYSIGHT-MIGRATOR.pkg.md) (Nick name(s): `:kym`) {.package}

Associate drawings with 3d models using a _Master Extraction List_.

# Syntax

~~~ bob
                                     .-<--------------------<-----------------<-.
                                     |                                          |
  +------------------------------+   |  .------------.          .------.        |   +----------+
->| KEYSIGHT_DRAWING_ASSOCIATOR  |->-O->| :INPUT_CSV |------>--/ file /------->-O->-| COMPLETE |
  +------------------------------+   |  '------------'        '------'          |   +----------+
                                     |  .-------------.         .------.        |
                                     O->| :OUTPUT_CSV |----->--/ file /------->-O
                                     |  '-------------'       '------'          |
                                     |  .----------.            .----------.    |
                                     O->| :BY_NAME |-------->--/ :ON/:OFF /--->-O
                                     |  '----------'          '----------'      |
                                     |  .----------------.      .----------.    |
                                     '->| :BY_PARTNUMBER |-->--/ :ON/:OFF /--->-'
                                        '----------------'    '----------'
~~~

# Options

`:option`
:   text

