#let bud = plugin("./llm-middlebox.wasm")

#let to-string(it) = {
  if type(it) == str {
    it
  } else if type(it) != content {
    str(it)
  } else if it.has("text") {
    it.text
  } else if it.has("children") {
    it.children.map(to-string).join()
  } else if it.has("body") {
    to-string(it.body)
  } else if it == [ ] {
    " "
  }
}

#let help(body) = {
  let str-from-content = bytes(to-string(body))

  box(str(bud.help(str-from-content)), inset: 5pt, stroke: red)
}
