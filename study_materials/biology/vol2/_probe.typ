#heading(level: 1)[One]
#pagebreak()
#heading(level: 2)[Two]
#pagebreak()
#context {
  let e = outline.entry
  // probe fields by rendering with a rule that prints repr
  []
}
#show outline.entry: it => [#repr(it.func()) #repr(it.fields())]
#outline(depth: 2)
