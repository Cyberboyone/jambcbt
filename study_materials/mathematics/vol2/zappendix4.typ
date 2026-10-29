#import "template.typ": *

#current-chapter.update("Appendix T: Index and Study Paths")

#pagebreak()
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX T]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Index and Three Study Paths]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Where everything is, and three honest routes through the book: a full forty-five-day course, a fourteen-day emergency plan, and the last seven days.
  ]
]

#v(6pt)

== T.1 Index of the Appendices

#table(
  columns: (auto, 1.7fr, 1.7fr, auto),
  inset: 5.5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  ..(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Ref.],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it contains],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[When to use it],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Minutes],
  ),
  [A], [Master formula and method compendium], [Any revision session; the last ten minutes before the paper], [15],
  [B], [The forty-five-day countdown plan], [From the first day of serious preparation], [—],
  [C], [Glossary of 140 essential terms], [Weekly vocabulary pass; the last week], [20],
  [D], [Nine chapter recap pages], [End of each chapter; the last week], [10 each],
  [E], [200-item flashcard bank], [Two passes a week, every week], [12],
  [F], [Second full mock examination], [A fortnight after Mock 1], [40],
  [H], [Thirty additional graded worked examples], [After the chapter examples, before the drills], [45],
  [I], [Twenty advanced challenge problems], [Once the standard band is secure], [40],
  [J], [Error log and progress trackers], [After every marked set], [5],
  [K], [200 rapid-fire questions and answers], [Blocks of twenty against a clock], [8 per block],
  [L], [Twenty-five formula derivations], [When a formula refuses to stick], [30],
  [M], [120-question mixed practice bank], [Three sessions of forty], [135],
  [N], [Forty spot-the-error exercises], [When careless slips persist], [25],
  [O], [Exam-day playbook and thirty FAQs], [The last week, and the morning of the paper], [20],
  [P], [The Final Forty], [The week before the examination], [40],
  [Q], [The eighty-question marathon], [Two weeks out, as an endurance test], [90],
  [R], [All 342 chapter drill answers], [Whenever you mark a chapter drill], [5],
  [S], [Forty-eight method cards], [Before each drill; the night before], [12 a pass],
  [T], [This index and the three study paths], [The day you open the book], [5],
  [U], [Six mini-papers of ten questions each], [Short sessions; a weekly check], [15 each],
)

== T.2 Path 1 — The Full Forty-Five Days

Follow Appendix B exactly. Each day names one section, one practice target and one closing check. Do not compress two new-topic days into one; drop a revision day if you fall behind. This path is the one that produces the highest final score, because it leaves time for the interleaved fortnight (days 25–34) that turns isolated skills into a single, usable toolkit.

== T.3 Path 2 — The Fourteen-Day Emergency

For a candidate who has the syllabus in view but has not yet drilled it. Two hours a day, one chapter every day and a half.

#table(
  columns: (auto, 1.6fr, 1.6fr),
  inset: 5.5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  ..(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Chapters and sections],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Practice target],
  ),
  [1], [Chapter 1: whole chapter, worked examples first], [Drill Q1–20],
  [2], [Chapter 1 challenge examples; Chapter 2 §2.1–2.3], [Drill Q21–45; Chapter 2 Q1–12],
  [3], [Chapter 2 §2.4–2.5; Chapter 3 §3.1], [Chapter 2 Q13–37; Chapter 3 Q1–10],
  [4], [Chapter 3 §3.2–3.3], [Chapter 3 Q11–42],
  [5], [Chapter 4: whole chapter], [Drill Q1–34],
  [6], [Chapter 5 §5.1–5.2; Appendix D recap 4 and 5], [Chapter 5 Q1–36],
  [7], [Chapter 6: whole chapter; recap 6], [Drill Q1–31],
  [8], [Chapter 7 §7.1–7.2; recap 7], [Chapter 7 Q1–30],
  [9], [Chapter 7 §7.3; Chapter 8: whole chapter], [Chapter 7 Q31–43; Chapter 8 Q1–35],
  [10], [Chapter 9 §9.1–9.4; recap 9], [Chapter 9 Q1–20],
  [11], [Chapter 9 §9.5–9.6], [Chapter 9 Q21–39],
  [12], [Mock 1 under timing; mark; error log], [All misses redone],
  [13], [Appendix K blocks 1–5; Appendix M Q1–40], [Mark and log],
  [14], [Appendix P, the Final Forty], [Mark, review, rest],
)

#trap-box("What the Emergency Path Cannot Do")[
  It cannot build the deeper understanding that makes an unfamiliar question tractable. It will carry a candidate from a weak position to a competitive one; it will not manufacture the last five marks. If you have more than three weeks, use Path 1.
]

== T.4 Path 3 — The Last Seven Days

Appendix O.1 gives the day-by-day plan. The shape of it is this: one full paper on day 7, chapter repair on days 6 and 5, rapid-fire and derivations on days 4 and 3, compendium and flashcards on day 2, the Final Forty on day 1, and nothing new on the day itself.

== T.5 You Are Ready When ...

#grid(
  columns: (1fr, 1fr),
  column-gutter: 12pt,
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Evidence of readiness]
    #v(3pt)
    + You score 30 or more out of 40 on any mock in this volume, cold.
    + No chapter loses more than two marks on that paper.
    + You finish in under thirty-five minutes.
    + You can reproduce the quadratic formula and the two determinant rules from memory in thirty seconds.
    + You can name the chapter of any question within five seconds of reading it.
    + Every drill question you have attempted twice has been marked, and every miss has a line in the error log.
  ],
  block(width: 100%, fill: trap-bg, stroke: 0.8pt + trap-red, radius: 7pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: trap-red)[Evidence that you are not]
    #v(3pt)
    - You have read the chapters but marked no drills.
    - Your error log has no entries, because you have not looked at a wrong answer twice.
    - You can follow a worked example but cannot begin the same question cold.
    - You rely on the solutions page to tell you whether a method is right.
    - You have never sat a paper against a clock.
    - You are still choosing which chapters to study rather than working through the weakest one.
  ],
)

#v(8pt)

#block(
  width: 100%,
  fill: jamb-navy,
  radius: 10pt,
  inset: 20pt,
)[
  #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: rgb("#A7F3D0"))[A CLOSING NOTE]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 11pt, fill: white)[
    Algebra rewards patience more than brilliance. Every method in this volume is short enough to be learned in an afternoon and durable enough to last a lifetime of examinations; what it needs is repetition under mild pressure, and the honesty to write down the errors you would rather forget.
  ]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 11pt, fill: white)[
    Work the drills. Mark them. Log the misses. Return to the chapter that produced them. Then sit the paper again — and notice that the second sitting feels like a different, easier paper, though nothing about the paper has changed.
  ]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#CBD5E1"))[JAMB CBT Study Series · Mathematics, Volume 2 of 4 · Complete Algebra]
]