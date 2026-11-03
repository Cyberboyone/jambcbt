#import "template.typ": *

#current-chapter.update("Appendix H: The Eight-Week Plan")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix H: The Eight-Week Plan]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Eight-Week Plan]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    One chapter a week, its drill on the Saturday, and the papers left for the last fortnight.
    Twelve hours a week is enough if the hours are timed.
  ]
]

#v(6pt)

== H.1 The Weeks

#table(
  columns: (0.5fr, 1.35fr, 1.45fr, 1.25fr, 1.65fr),
  inset: (x: 5pt, y: 3.0pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Drill],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Nerve centre],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The one thing to be able to say],
  ),
  [1], [1. The Animal on the Farm], [Ch 1, 40 questions], [§1.2 – 1.5], [the four systems, and why the nomad moves],
  [2], [2. The Body of the Farm Animal], [Ch 2, 40 questions], [§2.1 – 2.4], [the rumen, chamber by chamber],
  [3], [3. Nutrition and Feeding], [Ch 3, 40 questions], [§3.3 – 3.6], [the Pearson square, and a balanced ration],
  [4], [4. Health and Disease Control], [Ch 4, 40 questions], [§4.1 – 4.4], [vector, host and the disease each carries],
  [5], [5. Livestock Management], [Ch 5, 40 questions], [§5.1 – 5.5], [brooding temperature, fall by 3 °C a week],
  [6], [6. Fisheries and Forestry], [Ch 6, 40 questions], [§6.1 – 6.4], [stocking a pond: area × rate],
  [7], [7. Farm Records and Accounts], [Ch 7, 40 questions], [§7.2 – 7.6], [depreciation, gross margin, break-even],
  [8], [8. Extension, Cooperatives and Policy], [Ch 8, 40 questions], [§8.1 – 8.5], [the policy dates, and the cooperative principles],
)

== H.2 The Week in Hours

#table(
  columns: (1.35fr, 0.7fr, 2.55fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Session],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Hours],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What happens in it],
  ),
  [Monday, read], [2], [the chapter, with a pencil, marking figures as you meet them],
  [Tuesday, read again], [1.5], [only the sections you marked; write the figures on a card],
  [Wednesday, recall], [1.5], [the recall card, covered column, out loud],
  [Thursday, drill], [1.5], [twenty questions, no clock, then read every solution],
  [Friday, repair], [1], [the questions you got wrong, reworked from the solution],
  [Saturday, timed], [2], [the chapter drill under the clock, then mark it],
  [Sunday, review], [2.5], [the week's errors, the previous week's card, and one paper section],
)

== H.3 The Last Fortnight

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 12pt)[
  #text(size: 9.8pt)[
    *Days 14 to 10.* One full paper every other day, in the morning, at the clock. Mark it the
    same afternoon and write the error in a notebook with the reason, not just the answer.
  ]

  #text(size: 9.8pt)[
    *Days 9 to 5.* The two papers again, but this time do only the questions you got wrong
    before. If a topic produces more than three errors, go back to the chapter section, not to
    the paper.
  ]

  #text(size: 9.8pt)[
    *Days 4 to 2.* Appendix A, all sixty pairs, three passes a day. Appendix J, the trap file,
    once each evening. No new material.
  ]

  #text(size: 9.8pt)[
    *The last day.* The figures card and the trap file, an early night, and the calculator
    checked. A tired candidate loses more marks than an ignorant one.
  ]
]

== H.4 What to Do When the Mark Will Not Move

#table(
  columns: (1.25fr, 1.55fr, 1.9fr),
  inset: (x: 5.5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Symptom],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it usually means],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The repair],
  ),
  [Stuck around 50 %], [definitions and figures are half-learned], [Appendix A twice a day for a week; nothing else new],
  [Stuck around 60 %], [the easy questions are right and the calculations are wrong], [Appendix D, seven formulas, twenty worked items],
  [Stuck around 70 %], [the stem is misread under the clock], [underline the command word and the limit word before reading the options],
  [Stuck around 80 %], [two or three topics carry all the losses], [the chapter sections behind them, then their drills again],
  [Score swings 15 %], [the clock and the nerves, not the knowledge], [papers at the same hour, in the same seat, with the same watch],
  [Runs out of time], [spending four minutes on a one-mark calculation], [45 seconds a question; leave and return],
)

#pagebreak(weak: true)
