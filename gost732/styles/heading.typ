#import "../g7.32-2017.config.typ":config
#let style_heading(content) = {
    set heading(numbering: config.heading.numbering)
    
    show heading.where(level:1): it => {
        if (config.heading.l1.pagebreak){pagebreak()}
        set text(config.heading.l1.size, weight: config.heading.l1.weight, hyphenate: false)
        if (config.heading.l1.upper){
            upper[#align(config.heading.l1.align)[#it]]
        } else {
            align(config.heading.l1.align)[#it]
        }
        par(text(size: config.heading.l1.indent, h(0.0em)))
    }

    show heading.where(level:2): it => {
        if (config.heading.l2.pagebreak){pagebreak()}
        set text(config.heading.l2.size, weight: config.heading.l2.weight, hyphenate: false)
        if (config.heading.l2.upper){
            upper[#align(config.heading.l2.align)[#it]]
        } else {
            align(config.heading.l2.align)[#it]
        }
        par(text(size: config.heading.l2.indent, h(0.0em)))
    }

    show heading.where(level:3): it => {
        if (config.heading.l3.pagebreak){pagebreak()}
        set text(config.heading.l3.size, weight: config.heading.l3.weight, hyphenate: false)
        if (config.heading.l3.upper){
            upper[#align(config.heading.l3.align)[#it]]
        } else {
            align(config.heading.l3.align)[#it]
        }
        par(text(size: config.heading.l3.indent, h(0.0em)))
    }

    content
}