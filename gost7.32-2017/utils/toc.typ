// Составляет содержание работы.
#import "../g7.32-2017.config.typ":config

#let table_of_contents() = {
    {
        set align(config.heading.l1.align)
        set text(config.heading.l1.size, weight: config.heading.l1.weight)
        [config.toc.label]
    }
    set align(config.toc.align)
    outline(
        title: [],
        indent: auto,
    )
}

#let содержимое() = table_of_contents()
