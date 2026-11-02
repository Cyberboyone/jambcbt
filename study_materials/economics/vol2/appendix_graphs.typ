#import "template.typ": *

#current-chapter.update("Appendix E: The Graph File")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Graph File]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Graph File]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every figure in the volume, catalogued by chapter, with what it shows and the
    trap it is drawn to expose. Use it as a revision index: if you cannot say what a
    figure shows before you read the row, that is the section to reread.
  ]
]

#v(5pt)

== E.1 How to Draw Any Macroeconomics Diagram in Forty Seconds

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Draw the axes and label them.* Price level against real output for aggregate diagrams; price against quantity for a tariff; year against index number for a time series.
  + *Draw the curves before the words.* Two curves for a market, one curve for a time series, boxes for a flow.
  + *Mark the starting point.* Equilibria, intersections and base years are all *the old position*, and every question moves away from it.
  + *Shift one thing only.* Say which curve moves and which way before you touch the pencil. A macro answer that shifts two curves is almost always wrong.
  + *Mark the new point and label the change.* The marks are in the arrow, not the drawing.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[A diagram in the hall takes forty seconds and earns the same mark as a paragraph. Draw it even where the question does not demand one: the picture stops the sign error.]

#v(5pt)

== E.2 Every Figure, Chapter by Chapter

#[
  #set text(size: 8.2pt)
#table(
  columns: (0.45fr, 1.55fr, 1.9fr, 1.35fr),
  inset: (x: 4pt, y: 3.0pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it shows],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The trap it exposes],
  ),
  [*1*], [The circular flow], [households and firms with leaks and injections around them], [treating saving as an injection],
  [*1*], [Three routes to one number], [output, income and expenditure arriving at the same total], [counting intermediate goods in the output route],
  [*1*], [GDP against GNP], [border output against ownership of factors], [adding exports to get GNP],
  [*1*], [Real against nominal], [the same series deflated by a price index], [multiplying by the index instead of dividing],
  [*1*], [The multiplier], [successive rounds of spending, each smaller], [multiplying by MPC instead of 1 ÷ (1 − MPC)],
  [*2*], [The functions of money], [four functions and what fails without each], [calling a store of value the primary function],
  [*2*], [Credit creation], [one deposit lending through several banks], [counting only the first loan],
  [*2*], [The credit multiplier], [deposits against reserves as the ratio falls], [reading the ratio as the multiplier],
  [*2*], [The central bank], [its six functions and the instrument for each], [confusing it with the ministry of finance],
  [*2*], [Demand-pull and cost-push], [two curves moving in opposite directions], [naming cost-push when wages rise with demand],
  [*2*], [The Phillips curve], [inflation against unemployment, short and long run], [treating the trade-off as permanent],
  [*3*], [The budget], [revenue and expenditure bars and the three positions], [calling a deficit a debt],
  [*3*], [Direct and indirect taxes], [who hands over the money and who bears it], [confusing statutory with economic incidence],
  [*3*], [The Laffer curve], [revenue rising then falling with the rate], [assuming revenue always rises with the rate],
  [*3*], [Tax incidence], [the wedge between buyer's price and seller's price], [ignoring elasticity],
  [*4*], [Comparative advantage], [hours per unit in two countries], [using absolute rather than opportunity cost],
  [*4*], [A tariff], [world price, tariff price and the four welfare boxes], [counting the tariff as a gain to consumers],
  [*4*], [Devaluation], [relative prices before and after, and the J-curve], [assuming improvement in the short run],
  [*4*], [The balance of payments], [current and capital accounts as two sides], [believing a deficit means the accounts do not balance],
  [*5*], [Growth against development], [two countries with the same growth and different outcomes], [equating the two],
  [*5*], [The population pyramid], [age bands by sex], [reading a broad base as an ageing population],
  [*5*], [The demographic transition], [birth and death rates through four stages], [expecting population to fall first],
  [*5*], [Types of unemployment], [four causes against four cures], [applying demand stimulus to a structural problem],
  [*5*], [The PPC and growth], [the frontier shifting out], [a movement along the curve called growth],
  [*6*], [The institutions], [six bodies and what each publishes or controls], [naming the ministry where the CBN acts],
  [*6*], [The weights of the paper], [the forty questions by topic], [revising in the wrong proportion],
  [*6*], [The data table], [inflation, growth, reserves and the exchange rate], [reading an index as a rate],
)
]

#v(5pt)

== E.3 The Diagram Checklist

#text(size: 8.6pt)[*The checklist:* axes labelled; curves named (D and S, AD and AS, or the two countries); one shift only; old and new points marked 1 and 2, or E and E′; and the change named in words under the drawing in six words or fewer.]

#v(4pt)

#trap-box("Three diagram habits that lose marks in the macroeconomics section")[
  + *Drawing the micro answer.* A tariff is drawn on a price-and-quantity diagram, but a devaluation is not: it is a relative-price change between two countries, and drawing it as a market shift gives the wrong answer.
  + *Shifting the price level.* In an aggregate diagram the price level is on the *vertical* axis, so an inflation question moves along a curve or shifts a curve — it never shifts the axis.
  + *Forgetting the time axis.* The J-curve, the multiplier and the demographic transition are all stories about time. Without the axis the shape means nothing.
]
