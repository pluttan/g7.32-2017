#import "../g7.32-2017.config.typ":config

#let page_numbering(content) = {
    set page(
        footer: [
            #set text(size: config.page.textSize)
            #set align(config.page.alignNum)
            #context counter(page).display("1")
        ]
    )
    
    content
}

#let style_page(content) = {
    set page(
        paper: config.page.paper,
        margin: config.page.margin,
    )

    set text(font: config.page.font, size: config.page.textSize, lang: "ru")
    
    set align(top)

    set par(leading: 1em, spacing: 1em, justify: true, first-line-indent: config.page.parIndent)

    show: page_numbering

    content
}
