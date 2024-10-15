#import "styles/page.typ": *
#import "styles/heading.typ": *
#import "styles/list.typ": *
#import "styles/raw.typ": *

#import "utils/image.typ": *
#import "utils/raw.typ": *
#import "utils/table.typ": *
#import "utils/toc.typ": *

#let page_numbering = page_numbering

#let gost732-2017(content) = {
    show: style_page;
    show: style_heading;
    show: style_list;
    show: style_raw;
    content
}

#let гост732-2017(content) = gost732-2017(content)
