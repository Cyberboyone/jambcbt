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
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Twelve Traps, Worked]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The slips the examiner banks on, each with the wrong answer it produces and the one-line habit that kills it. Read this the night before the paper.]
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
  [1], [Keeping km h⁻¹ in a formula that wants m s⁻¹], [a speed 3.6 times too large], [Divide by 3.6 the moment a speed is in km h⁻¹, before anything else],
  [2], [Multiplying a mass in grams by $g$], [a weight 1000 times too small], [Convert to kilograms first; weight is $m$ in kg times 10],
  [3], [Treating distance and displacement as the same], [a displacement that ignores direction], [Ask whether the answer needs a direction; if it does, draw the two legs],
  [4], [Adding two vectors as ordinary numbers], [a resultant that is too large], [Only parallel vectors add; otherwise use Pythagoras or the cosine rule],
  [5], [Saying the acceleration is zero at the top of a flight], [a body that hovers], [Gravity never switches off: $a = 10$ m s⁻² downward throughout],
  [6], [Using the total time of flight for a projectile's fall], [double the correct height], [Split the flight: the rise and the fall each take half the total time],
  [7], [Writing weight in newtons but quoting it as a mass], [a mass ten times too large], [Weight is a force in N; mass is in kg, and only the balance measures mass],
  [8], [Forgetting the minus sign on a deceleration], [a speed that grows while the body brakes], [Put the sign in at the start: $a = -5$ m s⁻², then substitute],
  [9], [Using a diameter where the formula wants a radius], [an area four times too large], [Halve the diameter before it touches $pi r^2$, $m v^2 \/ r$ or $G M \/ r^2$],
  [10], [Leaving an area in cm² while the pressure is in Pa], [a pressure 10 000 times too large], [Convert cm² to m² with $10^(-4)$; there is no shortcut worth the risk],
  [11], [Inventing an outward force on a body in a circle], [a force that does not exist], [One force, towards the centre; the outward feeling is the absence of a push, not a push],
  [12], [Using a mechanical advantage as if it were an efficiency], [an efficiency above 100 %], [Efficiency is the advantage divided by the velocity ratio, and it can never exceed 100 %],
)

#v(6pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 12pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[THE THIRTEENTH TRAP]
  #v(3pt)
  #set text(size: 9.4pt)
  The thirteenth trap is not in the physics at all: it is answering the question you expected instead of the one on the screen. Read the stem twice, underline the word that decides the answer — *greatest*, *least*, *after*, *before*, *total* — and only then look at the options. Half the questions that look unfamiliar are familiar questions with one changed word.
]
