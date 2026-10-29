#import "template.typ": *
#show: setup-book.with(subject: "BIOLOGY", volume-num: 2, volume-title: "Test")
#set text(font: "Libertinus Serif", size: 11.4pt)
#show outline.entry.where(level: 1): it => {
  v(5pt, weak: true)
  strong(text(font: "DejaVu Sans", size: 9.8pt)[#it])
}
#show outline.entry.where(level: 2): it => {
  text(font: "DejaVu Sans", size: 8.7pt)[#it]
  v(0.6pt, weak: true)
}
#heading(level: 1)[Heading number 0]

Some text.

#heading(level: 2)[Sub number 0]

Some text.

#heading(level: 1)[Heading number 1]

Some text.

#heading(level: 2)[Sub number 1]

Some text.

#heading(level: 1)[Heading number 2]

Some text.

#heading(level: 2)[Sub number 2]

Some text.

#heading(level: 1)[Heading number 3]

Some text.

#heading(level: 2)[Sub number 3]

Some text.

#heading(level: 1)[Heading number 4]

Some text.

#heading(level: 2)[Sub number 4]

Some text.

#heading(level: 1)[Heading number 5]

Some text.

#heading(level: 2)[Sub number 5]

Some text.

#heading(level: 1)[Heading number 6]

Some text.

#heading(level: 2)[Sub number 6]

Some text.

#heading(level: 1)[Heading number 7]

Some text.

#heading(level: 2)[Sub number 7]

Some text.

#heading(level: 1)[Heading number 8]

Some text.

#heading(level: 2)[Sub number 8]

Some text.

#heading(level: 1)[Heading number 9]

Some text.

#heading(level: 2)[Sub number 9]

Some text.

#pagebreak()
#outline(title: none, depth: 2)
