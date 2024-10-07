#import "../g7.32-2017.config.typ":config
#let style_list(content) = {
    set list(indent: config.page.parIndent)
    show list: it => {
        it
        par(text(size: config.list.indent, h(0.0em)))
    }
    set enum(indent: config.page.parIndent)
    show enum: it => {
        it
        par(text(size: config.list.indent, h(0.0em)))
    }
    content
}