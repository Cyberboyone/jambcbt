#import "template.typ": *

#current-chapter.update("Appendix J: The Twelve Traps, Worked")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix J: The Twelve Traps, Worked]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Twelve Traps, Worked]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The twelve wrong answers that appear most often in scripts, each with the question that produces it, the wrong answer it produces and the one-line fix. Read this the night before the paper.]
]

#v(6pt)

#set text(size: 9.4pt)

#table(
  columns: (0.35fr, 1.75fr, 1.55fr, 2.3fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The slip],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it produces],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The fix],
  ),
  [1], [An angle measured from the surface instead of from the normal], [an angle of incidence that is the complement of the right one — and every later step wrong], [Draw the normal first, on every diagram, before writing a number],
  [2], [Using $v = d\/t$ for an echo], [a distance or speed exactly half what it should be], [The sound travels *twice* the distance: $v = 2d\/t$],
  [3], [Forgetting that the frequency does not change at a boundary], [a frequency that changes and a wavelength that does not], [$f$ belongs to the source; $v$ and $lambda$ change together],
  [4], [Mixing the mirror and lens sign conventions], [an image on the wrong side, or a virtual image called real], [Concave mirror and converging lens positive; convex mirror and diverging lens negative],
  [5], [Putting the focal length in centimetres into $P = 1\/f$], [a power a hundred times too small], [$f$ in metres for power; centimetres are fine for $1\/f = 1\/u + 1\/v$],
  [6], [Using $lambda = 4L$ for a pipe open at both ends], [a fundamental an octave too low], [Closed pipe $4L$, open pipe and string $2L$],
  [7], [Adding the beat frequencies instead of subtracting], [a beat frequency of about twice the right one], [Beats are a *difference*: the closer the notes, the slower the beat],
  [8], [Believing an object “has” a colour], [a red object called red in green light], [Ask what the light contains and what the surface reflects],
  [9], [Treating total internal reflection as possible into a denser medium], [a critical angle for air-to-glass], [Dense to rare, and beyond the critical angle only],
  [10], [Adding wavelengths instead of reciprocals for lenses in contact], [a combination weaker than either lens], [Powers add, not focal lengths: $P = P_1 + P_2$],
  [11], [Counting crests to a trough as one wavelength], [a wavelength half the right size], [Crest to crest, or trough to trough, is one wavelength],
  [12], [Recording a magnification with a unit], [“the image is magnified 2 cm”], [Magnification is a bare ratio of two lengths],
)

#v(8pt)

#concept-box("The trap behind the traps")[
  Eleven of the twelve come from the same habit: reaching for the formula before drawing the picture. A ray diagram settles the sign of an image, the position of a normal, the number of wavelengths on a string and the direction of a bend — before a single number is written. The candidate who sketches first makes fewer of these mistakes than the candidate who is faster at arithmetic. Before you mark an option, ask whether it makes sense: a critical angle above 90°, a light wavelength of half a millimetre, a telescope that magnifies by 0.02 — each is arithmetic that has gone right and physics that has gone wrong.
]

== J.2 The Pocket List

Photocopy this column, fold it into the back of your rough notebook, and read it in the queue outside the hall. Twelve lines, one per trap.

#[
  #set text(size: 9.2pt)
  #set par(leading: 0.7em, spacing: 0.6em)
  + *Angles from the normal*, never from the surface.
  + *Echoes travel twice* the distance: $v = 2d\/t$.
  + *Frequency does not change* at a boundary; speed and wavelength do.
  + *Signs*: concave mirror and converging lens positive, convex mirror and diverging lens negative.
  + *Power needs metres*: $P = 1\/f$ with $f$ in metres.
  + *Pipes*: closed $4L$, open and strings $2L$.
  + *Beats subtract*: the closer the notes, the slower the beat.
  + *Objects have no colour of their own*: ask what the light contains.
  + *Total internal reflection* needs dense-to-rare and an angle beyond the critical angle.
  + *Powers add*, focal lengths do not.
  + *Crest to crest* is one wavelength, not crest to trough.
  + *Magnification has no unit*.
]

Three more that are not traps but habits, and that between them prevent half of the twelve above: draw the normal and the ray before writing a number; ask what the light is doing before asking which formula; and check the size of the answer against Appendix D.5 before marking the option.

#v(6pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Why a list beats a reread]
  #v(3pt)
  #text(size: 9.6pt)[A trap is a habit, and habits are broken by repetition rather than by understanding. Reading the twelve lines once a day for the last week costs about two minutes a day and prevents the errors that cost the most marks — because they are made confidently, and so are never checked. Say each line out loud, and follow it with the question that caught you last time: “angles from the normal — did I draw it?” A trap only dies when it has been named in your own voice.]
]

#v(6pt)

== J.3 The Morning of the Paper

#table(
  columns: (1.2fr, 3.4fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[When],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What],
  ),
  [the night before], [read Appendix D.5 and this appendix, nothing else; sleep is worth more than a new topic],
  [in the queue], [the pocket list in J.2, twice, slowly],
  [at the desk], [write the three relations of Appendix E.3 on the question paper before you begin],
  [first pass], [answer what you recognise, flag the rest, leave no blanks],
  [last four minutes], [check the units in the options against the units asked for, and every decimal point],
)

