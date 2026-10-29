#import "template.typ": *
#show: setup-book.with(subject: "BIOLOGY", volume-num: 2, volume-title: "Test")
#for i in range(8) [
  #heading(level: 1)[Heading number #i]
  Some text.
]
#pagebreak()
#show outline.entry: it => {
  let lvl = it.level
  link(it.element.location(), block(width: 100%, above: if lvl == 1 { 9pt } else { 1.6pt }, below: 0pt,
    grid(columns: (auto, 1fr, auto), column-gutter: 6pt,
      text(size: 9.8pt, weight: "bold")[#it.element.body],
      box(width: 1fr),
      context text(size: 9.2pt)[#it.element.location().page()],
    )))
}
#outline(title: none, depth: 2)
