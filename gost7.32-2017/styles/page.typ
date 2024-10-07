#let style_page(content) = {
    set page(
        footer: context [
            #text(size: 14pt)[
            #let (num,) = counter(page).get()
            #if (num != 1) {
                align(center)[#num]
            }]
        ],
        paper: "a4",
        margin: (left: 30mm, right: 15mm, top: 20mm, bottom: 20mm),
    )

    set text(font: "Times New Roman", size: 14pt, lang: "ru")
    
    set align(top)

    set par(justify: true, first-line-indent: 1.25cm)

    content
}
