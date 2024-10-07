#let config = (
    raw:(
        theme:"",
        bg: luma(240),
        num: false,
        size: 14pt,
        splitter: "|",
        counter: counter("listing")
    ),
    toc:(
        title:(
            label: "Содержание",
            size: 16pt,
            weight: "bold",
            align: "center"
        ),
        align: "left"
    ),
    img:(
        counter: counter("image")
    ),
    table:(
        counter: counter("table")
    ),
    page:(
        textSize: 14pt,
        alignNum: "center",
        paper: "a4",
        margin: (left: 30mm, right: 15mm, top: 20mm, bottom: 20mm),
        font: "Times New Roman",
        parIndent: 1.25cm
    ),
    list: (
        indent: 0.35em
    ),
    heading: (
        numbering: "1.1",
        l1: (
            pagebreak: true,
            size: 16pt,
            upper: true,
            align: center,
            indent: 0.35em
        ),
        l2: (
            pagebreak: false,
            size: 16pt,
            upper: false,
            align: left,
            indent: 0.35em
        ),
        l3: (
            pagebreak: false,
            size: 14pt,
            upper: false,
            align: left,
            indent: 0.35em
        ),
    )
)

