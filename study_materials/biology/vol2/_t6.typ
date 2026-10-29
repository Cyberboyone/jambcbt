#set page(width: 200mm, height: 60mm, margin: 8mm)
#set text(size: 9pt)
#let row(t, p) = grid(
  columns: (auto, 1fr, auto),
  column-gutter: 4pt,
  align: (left + bottom, left + bottom, right + bottom),
  [#t],
  box(width: 1fr, repeat(text(fill: gray, size: 6pt)[.], gap: 0.34em)),
  [#p],
)
#row("Chapter 1: Nervous coordination", 9)
#row("1.2 The Neurone — the Unit", 12)
#row("Short", 3)
