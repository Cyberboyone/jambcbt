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
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Exam-Day Playbook]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[What to do in the forty minutes, in order. The paper rewards arithmetic you can trust and a plan you do not have to invent at the keyboard.]
]

#v(6pt)

#set text(size: 9.5pt)

== K.1 The Three Passes

#table(
  columns: (1.1fr, 1.6fr, 3.1fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Pass],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Time],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you do],
  ),
  [First], [about 24 min], [Answer every question you recognise on sight. If the method is not clear in ten seconds, flag it and move on. No blanks anywhere: a guess is worth a quarter of a mark on average, a blank is worth nothing],
  [Second], [about 12 min], [Return to the flagged questions. Write the knowns, choose a row of the formula map, and compute. Estimate the answer before you look at the options],
  [Third], [about 4 min], [Check that every question has an answer, that units in the options match what was asked, and that no decimal point has slipped a place],
)

== K.2 Calculator Discipline

+ *Convert before you compute.* km h⁻¹ to m s⁻¹, g to kg, cm to m, minutes to seconds. Write the converted values down; do not carry a conversion in your head.
+ *One operation at a time.* Enter $0.5 times 2 times 10^2$ as three steps, not as one long string. A missed bracket costs more marks than a slow finger.
+ *Use brackets for the denominator.* $m v^2 \/ r$ needs $(m times v^2) \/ r$ on most machines.
+ *Round at the end.* Carry full values through and round only the final answer, to the number of figures the data justify.
+ *Sanity-check the size.* A satellite at 7600 m s⁻¹ is plausible; 760 m s⁻¹ or 76 000 m s⁻¹ are not.

== K.3 The Numbers to Carry in Your Head

#table(
  columns: (2.3fr, 1.25fr, 2.3fr, 1.25fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
  ),
  [$g$], [10 m s⁻²], [$sqrt(2)$], [1.41],
  [$pi$], [3.14], [$sqrt(3)$], [1.73],
  [density of water], [1000 kg m⁻³], [$sqrt(10)$], [3.16],
  [atmospheric pressure], [$10^5$ Pa], [$1\/sqrt(2)$], [0.71],
  [$G$], [$6.7 times 10^(-11)$], [$sin 30$°], [0.50],
  [radius of the Earth], [$6.4 times 10^6$ m], [$cos 60$°], [0.50],
)

== K.4 The Last Ten Minutes

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 12pt)[
  #set text(size: 9.5pt)
  + *No blank rows.* Scroll the whole paper once and confirm that every question carries a letter.
  + *Read the odd ones again.* A question that felt strange usually had one word changed: *least*, *after*, *total*, *in terms of*.
  + *Check the units of your answer against the options.* If yours is in metres and every option is in centimetres, multiply by 100 and choose.
  + *Do not re-do the arithmetic you have already checked.* Change an answer only when you can name the reason.
  + *Stop on time.* The last minute is for the answer sheet, not for a fifth attempt at question 37.
]

#v(8pt)

#block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 12pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[A LAST WORD]
  #v(3pt)
  #set text(size: 9.5pt)
  You have read six chapters, worked six drills, and sat two papers. The marks in the hall will come from the forty questions in front of you, not from how much you can remember under pressure — so answer the easy ones first, convert your units, and trust the formula map. The physics does not change between now and the exam; only your nerves do.
]
#v(10pt)

== K.5 The Rest of the Series

Volume 1 finishes the mechanics half of the UTME Physics syllabus. The other three volumes carry the rest, in the same house style and at the same depth.

#table(
  columns: (0.45fr, 1.9fr, 3.3fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Vol.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it adds],
  ),
  [1], [Mechanics and Properties of Matter], [measurement, motion, forces, energy, machines, circular motion, gravitation, SHM, elasticity, fluids],
  [2], [Waves, Sound and Light], [waves, superposition, sound, reflection, refraction, mirrors and lenses, optical instruments, colour],
  [3], [Heat and Thermodynamics], [temperature, expansion, heat transfer, calorimetry, change of state, gas laws, thermodynamics, humidity],
  [4], [Electricity, Magnetism and Modern Physics], [electrostatics, capacitors, current electricity, magnetism, induction, a.c., electronics, atomic and nuclear physics],
)

#v(6pt)

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 12pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[BETWEEN NOW AND THE EXAM]
  #v(3pt)
  #set text(size: 9.4pt)
  + Sit *Mock Examination 1* under a clock, at the same hour of the day as the real paper, and mark it the same evening.
  + Keep the *Error Log* in Appendix G going into the last week; it is the only revision list that is about you rather than about the syllabus.
  + Re-read *Appendix J* the night before. Twelve slips cost more marks than twelve hard topics.
  + Do the *rapid-fire pairs* once a day for the last seven days. Twenty seconds a line is the whole exercise.
]

#v(10pt)

#block(
  breakable: false,
  width: 100%,
  fill: jamb-navy,
  radius: 10pt,
  inset: (x: 18pt, y: 16pt),
)[
  #set align(center)
  #set text(hyphenate: false)
  #text(font: "DejaVu Sans", size: 10.2pt, fill: rgb("#A7F3D0"))[THE HABIT THAT MARKS ARE MADE OF]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 12.6pt, fill: white)[Convert the units, draw the picture, name the formula, then compute.]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 9.2pt, fill: rgb("#CBD5E1"))[Every worked example in this volume does those four things in that order. So does every solution you will write in the hall.]
]
