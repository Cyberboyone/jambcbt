#import "template.typ": *

#current-chapter.update("Appendix F: The Formula Sheet")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: The Formula Sheet]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Formula Sheet]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every formula the paper has ever tested, with the symbols defined, the unit stated
    and one worked substitution beside each. Learn the substitutions, not only the
    formulas: the marks are given for the arithmetic, not for the definition.
  ]
]

#v(5pt)

== F.1 Elasticity

#table(
  columns: (0.85fr, 1.55fr, 2.3fr),
  inset: (x: 5pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Measure],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Worked substitution],
  ),
  [*PED*], [% change in Qd ÷ % change in P], [Price rises 20 per cent, Qd falls 50 per cent: 50 ÷ 20 = *2.5*, elastic.],
  [*PES*], [% change in Qs ÷ % change in P], [Price rises 10 per cent, Qs rises 4 per cent: 4 ÷ 10 = *0.4*, inelastic.],
  [*YED*], [% change in Qd ÷ % change in income], [Income rises 10 per cent, Qd falls 4 per cent: −4 ÷ 10 = *−0.4*, inferior.],
  [*XED*], [% change in Qx ÷ % change in Py], [Py rises 20 per cent, Qx rises 10 per cent: 10 ÷ 20 = *+0.5*, substitutes.],
  [Percentage change], [(new − old) ÷ old × 100], [Price ₦20 to ₦25: (5 ÷ 20) × 100 = *25 per cent*.],
)

#v(5pt)

#shortcut-box("The unit rule that settles every elasticity question")[
  + *Above 1 is elastic, exactly 1 is unit elastic, below 1 is inelastic.* The number is a ratio of percentages, so it has no unit — never write *2.5 naira* or *2.5 units*.
  + *Ignore the sign for PED, keep it for YED and XED.* The paper quotes PED as a positive number; it does not quote income or cross elasticity that way.
  + *Total revenue falls when price rises if demand is elastic.* The revenue test is the fastest check on any elasticity answer.
]

#v(5pt)

== F.2 Cost, Revenue and Profit

#table(
  columns: (0.9fr, 1.5fr, 2.3fr),
  inset: (x: 5pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Measure],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Worked substitution],
  ),
  [Total cost], [TFC + TVC], [Fixed ₦200, variable ₦30 × 10: TC = 200 + 300 = *₦500*.],
  [Average cost], [TC ÷ Q], [TC ₦500 at 10 units: AC = *₦50*.],
  [Average fixed cost], [TFC ÷ Q], [₦200 at 10 units: AFC = *₦20*.],
  [Average variable cost], [TVC ÷ Q], [₦300 at 10 units: AVC = *₦30*.],
  [Marginal cost], [ΔTC ÷ ΔQ], [TC rises from ₦190 to ₦250: MC = 60 ÷ 1 = *₦60*.],
  [Total revenue], [P × Q], [₦40 × 10 units: TR = *₦400*.],
  [Average revenue], [TR ÷ Q, which equals price], [₦400 at 10 units: AR = *₦40*.],
  [Profit], [TR − TC], [₦400 − ₦500 = *−₦100*, a loss.],
  [Break-even output], [TFC ÷ (P − AVC)], [₦300 ÷ (₦40 − ₦25) = *20 units*.],
  [Monopoly marginal revenue], [P = a − bQ gives MR = a − 2bQ], [P = 100 − 2Q gives MR = 100 − 4Q, so Q = 20 at MC = 20.],
)

#v(5pt)

#rule-box("The three rules behind the formulas")[
  + *Marginal is always a change in a total.* MC uses total cost, MR uses total revenue, and neither is an average.
  + *Profit is maximised where MR = MC,* not where price is highest and not where revenue is highest.
  + *Break-even is TR = TC; shut-down is P below minimum AVC.* The break-even output is above the shut-down output, always.
]



== F.3 Market Structure

#table(
  columns: (1.1fr, 1.5fr, 2.1fr),
  inset: (x: 5pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Structure],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Conditions],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equilibrium],
  ),
  [Perfect competition], [P = AR = MR; firm is a price taker],
  [Produce where P = MC; long-run price at minimum AC, normal profit],
  [Monopolistic competition], [downward demand, free entry],
  [MR = MC in the short run; tangency in the long run, normal profit and excess capacity],
  [Monopoly], [downward demand, MR below price, blocked entry],
  [Produce where MR = MC, read the price off the demand curve; supernormal profit persists],
  [Oligopoly], [a few firms, interdependence],
  [Kinked demand gives rigidity; a cartel behaves like a monopolist if it holds],
)

#v(5pt)

#shortcut-box("The monopoly calculation in four steps")[
  + *Write the demand curve* as P = a − bQ.
  + *Halve the slope* to get MR = a − 2bQ.
  + *Set MR = MC* and solve for Q.
  + *Put Q back into the demand curve* for the price — never into the marginal revenue curve, which would give you the marginal revenue, not the price.
]

#v(5pt)

== F.4 National Income and Money

#table(
  columns: (1.05fr, 1.65fr, 2.0fr),
  inset: (x: 5pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Measure],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Worked substitution],
  ),
  [Gross national product], [GDP + net factor income from abroad], [GDP ₦200bn, net factor income ₦10bn: GNP = *₦210bn*.],
  [Net national product], [GNP − depreciation], [₦210bn − ₦15bn = *₦195bn*.],
  [Per capita income], [national income ÷ population], [₦195bn ÷ 130m = *₦1,500 per head*.],
  [National income multiplier], [1 ÷ (1 − MPC)], [MPC 0.8: 1 ÷ 0.2 = *5*.],
  [Credit multiplier], [1 ÷ cash reserve ratio], [Reserve ratio 25 per cent: 1 ÷ 0.25 = *4*.],
  [Real income], [nominal income ÷ price index × 100], [Nominal ₦60,000, index 120: *₦50,000 in real terms*.],
)

#v(5pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[These five macro formulas belong to Volume 2, but the papers in this volume mix the two halves of the syllabus, so they are printed here as well. A candidate who can substitute into them can answer the fifteen macro questions without waiting for the second volume.]

#v(6pt)

#concept-box("How to use this sheet in the last week")[
  + *Cover the middle column* and reproduce each formula from memory, then check the substitution on the right.
  + *Do one substitution per formula* with your own numbers. A formula used once is remembered; a formula only read is not.
  + *Write the formula on the top of the question paper* in the hall, before the clock starts: it is allowed, and it saves the ten seconds that a panic costs.
]
