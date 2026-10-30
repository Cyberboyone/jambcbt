#import "template.typ": *

#current-chapter.update("Appendix G: Revision Planner and Score Tracker")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix G: Revision Planner and Score Tracker]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Revision Planner and Score Tracker]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Six weeks to the paper, a page to record every score, and the last ten days written out day by day.
  ]
]

#v(5pt)

== G.1 The Six-Week Plan

#table(
  columns: (0.7fr, 1.5fr, 2.6fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapters],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you must be able to do by Sunday],
  ),
  [1], [1 and 2], [preview a passage, name the question type and find the answering sentence],
  [2], [3 and 4], [tell an inference from an assumption, and write a twenty-word summary],
  [3], [5 and 6], [sort the vowels and the voices, and mark the stress on any word],
  [4], [Mock 1], [sit it closed book, mark it, and log the four sections separately],
  [5], [the weakest two chapters, then Mock 2], [a second score that beats the first on the same section],
  [6], [Appendices D to K], [the four checks without looking them up],
)

#v(3pt)

#text(size: 9.6pt)[Two chapters a week is a pace, not a rule. If a chapter takes three days, take three days — but do not move to the next chapter without sitting the drill, because the drill is where the chapter is actually learned.]

== G.2 The Weekly Score Log

#table(
  columns: (0.6fr, 0.9fr, 0.9fr, 0.9fr, 0.9fr, 1.5fr),
  inset: (x: 4.5pt, y: 5pt),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Summ.],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Oral],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Total],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The section to fix],
  ),
  [1], [], [], [], [], [],
  [2], [], [], [], [], [],
  [3], [], [], [], [], [],
  [4], [], [], [], [], [],
  [5], [], [], [], [], [],
  [6], [], [], [], [], [],
)

#v(3pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[Record the four sections separately, because a total hides the only number that matters: which section is still losing marks. A total that rises while one section falls is not progress.]

== G.3 The Last Ten Days

#table(
  columns: (0.7fr, 2.7fr, 2.1fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Do],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Do not],
  ),
  [10–8], [Appendix J twice, and the four checks aloud], [start a new chapter],
  [7], [Mock 1 again, section by section], [re-read the whole book],
  [6], [Master bank, questions 1–60], [count the score],
  [5], [the sound chart, aloud, twice], [copy out the spelling list],
  [4], [Mock 2, closed book], [look at the answers while working],
  [3], [every question you got wrong in Mock 2], [revise what you already know],
  [2], [Appendix J, then Appendix K], [learn a new rule],
  [1], [Appendix K only, then stop by eight o'clock], [stay up late],
)

#v(3pt)

#concept-box("What the last ten days are for")[
  + The last ten days are for *consolidation*, not for new material. A rule learned on day nine is a rule you will confuse with the nine you already know.
  + Two short sessions a day beat one long one: twenty minutes at breakfast and twenty at night, with the same appendix each time.
  + Every session should end with something you can say aloud — a check, a sound, a rhyme. Reading without recall is not revision.
]
