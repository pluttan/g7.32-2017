// Составляет содержание работы.
#import "../g7.32-2017.config.typ":config

#let table_of_contents() = {
    {
        set align(config.toc.title.align)
        set text(config.toc.title.size, weight: config.toc.title.weight)
        [config.toc.title_label]
    }
    set align(config.toc.align)
    outline(
        title: [],
        indent: auto,
    )
}

#let содержимое() = table_of_contents()
