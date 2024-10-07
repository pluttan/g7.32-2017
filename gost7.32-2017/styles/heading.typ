#let style_heading(content) = {
    set heading(numbering: "1.1")
    show heading.where(level:1): it => {
        pagebreak()
        set text(14pt, hyphenate: false)
        upper[#align(center)[#it]]
        par(text(size: 0.35em, h(0.0em)))
    }

    show heading.where(level:2): it => {
        set text(16pt, hyphenate: false)
        it
        par(text(size: 0.35em, h(0.0em)))
    }

    show heading.where(level:3): it => {
        set text(14pt, hyphenate: false)
        it
        par(text(size: 0.35em, h(0.0em)))
    }
    content
}