#import "template.typ": *

#current-chapter.update("Appendix G: The Six-Week Plan")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix G: The Six-Week Plan]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Six-Week Plan]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Six weeks to the paper, a page to record every score, and the last ten days written out day by day. If you have less than six weeks, use the last section and work backwards.]
]

#v(5pt)

== G.1 The Six Weeks

#table(
  columns: (0.55fr, 1.35fr, 3.6fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapters],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you must be able to do by Sunday],
  ),
  [1], [1 and 2],
  [read the novel once for the story, write twelve chapter cards, and put any event into the right chapter without looking],
  [2], [3 and 4],
  [name every character in Appendix E from the third column, and state each theme as a claim in one sentence],
  [3], [5 and Paper 1],
  [name the narrator, the frame, the motifs and the three proverbs, then sit Paper 1 closed book and mark it],
  [4], [6 and Paper 2],
  [sit Paper 2 to the clock, log the four blocks separately, and know which block is costing you the most time],
  [5], [the Novel Paper and half the master bank],
  [score 32 or more on the Novel Paper and log two blocks of the bank],
  [6], [the rest of the bank, Appendix A, and this appendix],
  [answer all forty rapid-fire pairs in under fifteen minutes, and recite the four checks from memory],
)

#v(3pt)

#text(size: 9.6pt)[Two chapters a week is a pace, not a rule. What is a rule is the drill: do not move to the next chapter without sitting the forty questions at the end of this one, because the drill is where the chapter is actually learned.]

== G.2 The Score Log

#text(size: 9.4pt)[Copy this table into the back of a notebook and fill one row a week. A score you have not written down cannot be compared with the last one, and a course without comparison is guesswork.]

#v(3pt)

#table(
  columns: (0.5fr, 0.95fr, 0.95fr, 0.95fr, 0.95fr, 0.9fr, 1.3fr),
  inset: (x: 3.5pt, y: 3.4pt),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Drill 1–2 /80],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Drill 3–4 /80],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Drill 5–6 /80],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Paper 1 /60],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Paper 2 /60],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What to change next week],
  ),
  [1], [], [], [], [], [], [],
  [2], [], [], [], [], [], [],
  [3], [], [], [], [], [], [],
  [4], [], [], [], [], [], [],
  [5], [], [], [], [], [], [],
  [6], [], [], [], [], [], [],
)

#v(4pt)

== G.3 The Last Ten Days

#table(
  columns: (0.9fr, 2.9fr, 2.2fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Morning],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Evening],
  ),
  [−10], [the twelve chapter cards, aloud, from memory], [forty rapid-fire pairs],
  [−9], [re-read Chapters 5 to 9 in the novel], [Drill 3, timed at forty-four minutes],
  [−8], [Appendix E, third column only], [Drill 4, timed],
  [−7], [Paper 1 under exam conditions], [mark Paper 1 and read every solution],
  [−6], [the four blocks of Paper 1, weakest first], [forty rapid-fire pairs, missed column],
  [−5], [re-read Chapters 10 to 12], [Drill 5, timed],
  [−4], [Paper 2 under exam conditions], [mark Paper 2 and log the blocks],
  [−3], [the Novel Paper], [Drill 6, timed],
  [−2], [Appendices H and J only], [the bank, first sixty, marked in blocks of twenty],
  [−1], [the bank, last sixty], [nothing new: the four checks, the timing, and sleep],
)

#v(4pt)

#shortcut-box("If you have only one week")[
  + Day 1–2: read the novel with the twelve cards open, and learn Appendix E.
  + Day 3: Chapters 2 and 3, then the two drills.
  + Day 4: Chapters 4 and 5, then the two drills.
  + Day 5: Chapter 6. Sit Paper 1 and mark it.
  + Day 6: Paper 2, then the Novel Paper.
  + Day 7: Appendix A aloud, Appendix J silently, and the four checks once more.
  + What you drop is the master bank, not the drills, and never the two papers.
]

#v(4pt)

#concept-box("When a score falls")[
  + Check the clock first. A fall of five marks with the same knowledge is usually a fall in pace, not in memory.
  + Check the block, not the total. A paper marked in four blocks tells you which block to revise; a total tells you only how you feel.
  + Re-sit the same paper a week later. A score that recovers on a paper you have already seen is a memory problem; one that does not is a method problem, and Appendix J is the cure.
]
