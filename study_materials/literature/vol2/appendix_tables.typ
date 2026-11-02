#import "template.typ": *

#current-chapter.update("Appendix G: Five Texts on One Page")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix G: Five Texts on One Page]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Five Texts on One Page]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The whole set text list, one row per text, in the four columns that matter on the
    morning of the examination: the world, the central want, the spine in one sentence,
    and the claim to open with.
  ]
]

#v(5pt)

#[
  #set text(size: 7.9pt)
  #set par(leading: 0.6em, spacing: 0.62em)
#table(
  columns: (0.95fr, 1.05fr, 1.1fr, 1.35fr, 1.35fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Text],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[World],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Central want],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Spine in one sentence],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Opening claim],
  ),
  [*Othello*], [Venice and Cyprus; an army, a senate and a marriage], [Othello: to be trusted without being tested], [A general is taught to read his wife as evidence, and kills her for what the evidence does not say.], [The play converts love into an evidentiary problem, and the conversion is Iago's work.],
  [*Native Son*], [Chicago, 1940; a kitchenette, a wealthy house and a cell], [Bigger: to be somebody, to be seen], [A young man is hired by the family that owns his mother's building, kills their daughter by accident, and is tried for the story the press has already written.], [The novel's subject is visibility without recognition, and its technique is a narration that judges while it sympathises.],
  [*Harvest of Corruption*], [Jacassa; a ministry, a hotel, a police headquarters, a court], [Aloho: a job, and a life], [A jobless graduate is recruited into a network, used as a courier, bought out of prison, and killed by the consequences of being useful.], [Corruption works as an employment agency: it recruits what it will consume, and the law can only see the courier.],
  [*Faceless*], [Accra; Sodom and Gomorrah and the Agbogbloshie market], [Fofo: for her sister's death to matter], [A fourteen-year-old street child and an NGO assemble the life and death of a girl the city never recorded, and save one child where a system remains.], [A child with no record is a child with no face, and the novel's investigation is also its argument.],
  [*Lonely Days*], [Kufi; a village of farms, dye-pits and a cap-picking rite], [Yaremi: to keep her husband's name and her own house], [A widow refuses all three caps and is ostracised and dispossessed, and refuses to leave.], [Custom is a procedure that turns a private grief into public business, and the procedure is the cruelty.],
)

]

#concept-box("One row, one answer")[
  If you can recite one row — world, want, spine, claim — you can answer a question on
  that text. If you can recite two rows, you can answer a comparison. That is the whole
  purpose of this page: five rows, five possible answers, on one sheet of paper.
]

#trap-box("Do not memorise the spines as summaries")[
  The last column is the one that earns marks; the fourth is only there to keep you
  orientated. A candidate who recites the spine and stops has written a blurb. A candidate
  who starts from the claim and uses the spine for evidence has written an answer.
]
