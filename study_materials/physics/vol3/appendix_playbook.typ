#import "template.typ": *

#current-chapter.update("Appendix K: The Exam-Day Playbook")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix K: The Exam-Day Playbook]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Exam-Day Playbook]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[What to do in the hall, in the order you do it. Everything here has been said earlier in the volume; this is the page you read on the morning.]
]

#v(4pt)

== K.1 The Three Passes

The CBT engine gives you one question at a time and a clock in the corner. Three passes beat one long grind, every time.

+ *Pass one — the sure things.* Answer every question you recognise within about twenty seconds. Do not stop to work anything out; mark the option you *know*, and move. On a forty-question paper this pass takes about ten minutes and banks most of the marks.
+ *Pass two — the calculations.* Work the questions that need arithmetic: the calorimetry, the gas law, the efficiency. Write the relation, substitute, and check the size of the answer against Appendix D.5 before you mark. This is where the paper is won, and it is worth twenty of the forty minutes.
+ *Pass three — the leftovers.* Return to anything flagged. If two options survive, choose on physics, not on instinct: which one is the right order of magnitude, which one has the right unit, which one matches the sign convention. Then leave nothing blank — there is no negative marking.

#trap-box("The three-pass habit fails in one way")[
  It fails when pass one is allowed to become pass two on the first question. The clock in the corner does not care that you nearly had it; a minute spent finishing a question you flagged is a minute taken from three you could have answered. Flag, move, return.
]

== K.2 Calculator Discipline

+ *Kelvin before you press anything.* Type $27 + 273$ first, then use the 300. A calculator will happily multiply a Celsius reading by a gas constant and give you a confident wrong answer.
+ *Brackets around the denominator.* $k A Delta theta \/ L$ entered as `k*A*Δθ/L` is fine; entered as `k*A*Δθ/L+10` it is not. When the denominator has more than one term, put it in brackets.
+ *Powers of ten by hand.* In this volume the exponents do most of the work: $3.34 times 10^5$ times 0.2 is $6.7 times 10^4$. Do the digits on the calculator and the powers in your head, then check the two against each other.
+ *One memory slot.* If you use the calculator's memory for an intermediate value, clear it at the start of every question. A memory left over from question twelve is the commonest cause of an answer that is exactly one question out.

== K.3 The Numbers to Carry in Your Head

#table(
  columns: (1.6fr, 1.2fr, 2.2fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Number],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The question it settles],
  ),
  [$c$ of water], [4200], [any calorimetry answer of the wrong order of magnitude],
  [$L_f$ of ice], [$3.34 times 10^5$], [melting a kilogram of ice takes about 334 kJ],
  [$L_v$ of water], [$2.26 times 10^6$], [boiling takes about seven times as much as melting],
  [$R$], [8.31], [one mole at s.t.p. occupies 22.4 dm³],
  [0 °C], [273 K], [every gas law, every efficiency],
  [body temperature], [310 K], [why 37 °C is not “about 300” in a pressure question],
  [atmospheric pressure], [$1.0 times 10^5$ Pa], [boiling point, and the pressure in a gas question],
)

== K.4 The Last Ten Minutes

+ *Read the clock, not the question.* At ten minutes left, count how many questions remain and divide. If the number is larger than the minutes, stop calculating and start eliminating.
+ *Check units in the options.* A question that asks for heat in joules cannot have an answer in watts. Three of the four options are usually the same quantity in the same unit; the fourth is the trap.
+ *Check the direction of the answer.* A mixture cannot end hotter than its hottest component or colder than its coldest. An engine cannot be more efficient than Carnot. Water cannot boil above its boiling point at that pressure. One sentence, and a whole class of wrong answers disappears.
+ *Leave nothing blank.* No negative marking means a guess is worth a quarter of a mark on average, and a blank is worth nothing.

== K.5 The Rest of the Series

#table(
  columns: (0.9fr, 2.0fr, 2.2fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Vol.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it adds to this volume],
  ),
  [1], [Mechanics & Properties of Matter], [the pressure and density ideas that heat transfer and gases both use],
  [2], [Waves, Sound and Light], [the wave model behind radiation and the thermometer's optical cousins],
  [3], [Heat and Thermodynamics], [this volume],
  [4], [Electricity, Magnetism and Modern Physics], [the electrical heating that supplies $Q = P t$, and the atomic picture behind temperature],
)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[One last sentence]
  #v(3pt)
  #text(size: 10.1pt)[
    Every question in this volume is one of four things: a temperature to convert, a heat to count, a rate to divide by a length or an area, or a cycle to book-keep. Decide which of the four you are looking at in the first ten seconds, and the formula follows without being remembered.
  ]
]
