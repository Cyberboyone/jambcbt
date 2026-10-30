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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The twelve mistakes that cost the most marks in this paper, each shown with the answer it produces and the line that prevents it. Every one of them appears at least once in the drills.]
]

#v(6pt)

#set text(size: 9.4pt)

#table(
  columns: (0.35fr, 1.8fr, 1.6fr, 2.2fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The slip],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it produces],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The fix],
  ),
  [1], [Putting a Celsius temperature into a gas law], [an answer wrong by a factor of two or more — 27 °C doubled is 54 °C, not 600 K], [Convert first: $T = theta + 273$. Write the kelvin value on its own line],
  [2], [Treating heat and temperature as the same thing], [a small hot spark called “more heat” than a bath of warm water], [Heat is energy in transit, measured in joules; temperature is what the thermometer reads, in °C or K],
  [3], [Leaving the calorimeter out of a mixture], [a final temperature that is too high, because part of the heat had somewhere else to go], [Add $C Delta theta$ to the gained side. The can and stirrer warm up too],
  [4], [Using $m c Delta theta$ while the ice is melting], [a temperature rise where the thermometer should not move at all], [During a change of state use $m L$. The two equations never apply at once],
  [5], [Mixing grams, centimetres and cubic centimetres], [answers out by factors of 1000], [Kilograms, metres, cubic metres — convert in the line above the formula],
  [6], [Using $alpha$ where $gamma$ is needed], [an expansion three times too small, or three times too big], [Solids: $Delta L = alpha L_0 Delta theta$ but $Delta V = 3 alpha V_0 Delta theta$],
  [7], [Assuming water contracts all the way to 0 °C], [ice sinking, lakes freezing from the bottom, and the wrong density graph], [Water is densest at 4 °C; below that it *expands* as it cools],
  [8], [Making the conduction rate grow with the thickness], [a thick wall losing more heat than a thin one], [$P = k A Delta theta \/ L$: the rate falls as $L$ rises],
  [9], [Radiating with $T$ in Celsius], [a radiated power that is orders of magnitude wrong], [$P = sigma A T^4$, with $T$ in kelvin — and remember the fourth power],
  [10], [Saying a good absorber cannot be a good emitter], [a question about black kettles answered backwards], [Absorptivity and emissivity are the same property; matt black does both best],
  [11], [Writing $Delta U = Q + W$ with $W$ done by the gas], [the internal energy rising when it should fall, in every adiabatic question], [This book uses $Delta U = Q - W$, with $W$ the work done *by* the gas],
  [12], [Confusing efficiency with coefficient of performance], [an engine or refrigerator answer greater than 100 %, or a CoP below 1 used as an efficiency], [An engine's $eta$ is below 1; a refrigerator's CoP is usually above 1. Different questions, different formula],
)

#v(4pt)

== J.2 The Pocket List

Photocopy this column, fold it into the back of your rough notebook, and read it in the queue outside the hall. Twelve lines, one per trap.

#[
  #set text(size: 9.2pt)
  #set par(leading: 0.7em, spacing: 0.6em)
  + *Kelvin first*, in every gas law, every efficiency and every radiation term.
  + *Heat is energy*, temperature is a reading. They are not the same quantity.
  + *Count the calorimeter* on the gained side of a mixture.
  + *Change of state means $m L$*, not $m c Delta theta$.
  + *Kilograms and metres*, always, before the formula.
  + *Volume expansivity is $3 alpha$*; area is $2 alpha$.
  + *Water is densest at 4 °C* and expands as it freezes.
  + *Conduction falls with thickness*: $P = k A Delta theta \/ L$.
  + *Radiation goes as $T^4$*, in kelvin.
  + *Black is the best absorber and the best emitter.*
  + *$Delta U = Q - W$*, with $W$ the work done by the gas.
  + *Efficiency below one, CoP above one* — and read which is asked.
]

Three more that are not traps but habits, and that between them prevent half of the twelve above: write the kelvin line before the gas law; ask whether the temperature is changing or the state is; and check the size of the answer against Appendix D.5 before marking the option.

== J.3 The Morning of the Paper

#table(
  columns: (1.2fr, 3.4fr),
  inset: (x: 5pt, y: 4.2pt),
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
  [first pass], [answer what you recognise, flag the rest, leave no blank options],
  [last four minutes], [check that every answer has the unit the question asked for, then check every decimal point],
)

== J.4 Three Traps, Worked in Full

*Trap 1: the Celsius slip.* A sealed flask of gas at 27 °C and $1.0 times 10^5$ Pa is warmed to 327 °C. At constant volume, what is the new pressure?

The wrong route divides 327 by 27 and gets a factor of 12. The right route writes the kelvin line first: $T_1 = 300$ K, $T_2 = 600$ K, so the pressure doubles to $2.0 times 10^5$ Pa. The 27 and the 327 are *readings*; the 300 and the 600 are *temperatures*, and only the second pair may enter the equation.

*Trap 2: the missing calorimeter.* A 0.10 kg copper block at 100 °C is dropped into 0.20 kg of water at 20 °C in a 0.05 kg copper can. Take $c_"Cu" = 400$ and $c_w = 4200$ J kg⁻¹ K⁻¹.

Ignoring the can: $40(100 - theta) = 840(theta - 20)$ gives $theta = 23.6$ °C. Including it: $(840 + 20)(theta - 20) = 40(100 - theta)$, so $theta = 23.1$ °C. The difference looks small, but in an exam it is the difference between the marked option and the distractor — and the distractor is there precisely because candidates leave the can out.

*Trap 3: efficiency against performance.* An engine takes 2000 J and rejects 1500 J. Its efficiency is $500\/2000 = 25$ %. A refrigerator removes 600 J using 200 J of work; its coefficient of performance is $600\/200 = 3.0$. Both are correct, and neither is a percentage: an efficiency above 100 % is impossible, a CoP above 1 is normal. Read which machine the question is describing before writing the fraction.
