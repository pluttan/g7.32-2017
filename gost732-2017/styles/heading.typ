#import "../g7.32-2017.config.typ": config

#let style_heading(content) = {
    set heading(numbering: config.heading.numbering)
    
    show heading.where(level:1): it => {
        if (config.heading.l1.pagebreak){
            // Первый заголовок должен быть на первой странице
            if (counter(heading).get() != (1,)) {
                pagebreak()
            }
        }
        set text(config.heading.l1.size, weight: config.heading.l1.weight, hyphenate: false)
        if (config.heading.l1.upper){
            upper[#align(config.heading.l1.align)[#block(spacing: config.heading.l1.indent)[#it]]]
        } else {
            align(config.heading.l1.align)[#block(spacing: config.heading.l1.indent)[#it]]
        }
    }

    show heading.where(level:2): it => {
        if (config.heading.l2.pagebreak){
            // Первый заголовок должен быть на первой странице
            if (counter(heading).get() != (1,)) {
                pagebreak()
            }
        }
        set text(config.heading.l2.size, weight: config.heading.l2.weight, hyphenate: false)
        if (config.heading.l2.upper){
            upper[#align(config.heading.l2.align)[#block(spacing: config.heading.l2.indent)[#it]]]
        } else {
            align(config.heading.l2.align)[#block(spacing: config.heading.l2.indent)[#it]]
        }
    }

    show heading.where(level:3): it => {
        if (config.heading.l3.pagebreak){
            // Первый заголовок должен быть на первой странице
            if (counter(heading).get() != (1,)) {
                pagebreak()
            }
        }
        set text(config.heading.l3.size, weight: config.heading.l3.weight, hyphenate: false)
        if (config.heading.l3.upper){
            upper[#align(config.heading.l3.align)[#block(spacing: config.heading.l3.indent)[#it]]]
        } else {
            align(config.heading.l3.align)[#block(spacing: config.heading.l3.indent)[#it]]
        }
    }

    content
}