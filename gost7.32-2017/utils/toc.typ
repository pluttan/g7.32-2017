// Составляет содержание работы.
#import "../g7.32-2017.config.typ":config
#let mk_table_of_contents() = {
    {
        set align(config.toc.title.align)
        set text(config.toc.title.size, weight: config.toc.title.weight)
        [config.toc.title.label]
    }
    set align(config.toc.align)
    outline(
        title: [],
        indent: auto,
    )
}
#let собрать_содержание() = {mk_table_of_contents()}