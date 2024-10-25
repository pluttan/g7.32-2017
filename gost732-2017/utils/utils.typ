#import "heading.typ": *
#import "image.typ": *
#import "raw.typ": *
#import "table.typ": *
#import "toc.typ": *

#let to_str(content) = {
    if type(content) == str {
        content
    } else if content.has("text") {
        content.text
    } else if content.has("children") {
        content.children.map(to_str).join("")
    } else if content.has("body") {
        to_str(content.body)
    } else if content == [ ] {
        " "
    }
}
