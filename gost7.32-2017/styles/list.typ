#let style_list(content) = {
    set list(indent: 1.25cm)
    show list: it => {
        it
        par(text(size: 0.35em, h(0.0em)))
    }
    set enum(indent: 1.25cm)
    show enum: it => {
        it
        par(text(size: 0.35em, h(0.0em)))
    }
    content
}