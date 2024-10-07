#import "../g7.32-2017.config.typ":config
#let style_page(content) = {
    set page(
        footer: context [
            #text(size: config.page.textSize)[
                #let (num,) = counter(page).get()
                #if (num != 1) {
                    align(config.page.alignNum)[#num]
                }
            ]
        ],
        paper: config.page.paper,
        margin: config.page.margin,
    )

    set text(font: config.page.font, size: config.page.textSize, lang: "ru")
    
    set align(top)

    set par(justify: true, first-line-indent: config.page.parIndent)

    content
}
