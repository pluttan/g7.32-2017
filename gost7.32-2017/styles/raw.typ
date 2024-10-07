#let style_raw(content) = {
    show raw: it => {
        box(
            fill: luma(240),
            inset: (x:6pt, y:0pt),
            outset: (y:3pt),
            radius: 4pt,
            align(left)[it]
        )
    }

    content
}