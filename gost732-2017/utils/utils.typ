#let str(content) = {
  if content.has("text") {
    content.text
  } else if content.has("children") {
    content.children.map(str).join("")
  } else if content.has("body") {
    str(content.body)
  } else if content == [ ] {
    " "
  }
}