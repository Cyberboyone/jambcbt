#import "template.typ": *

#current-chapter.update("Appendix I: Structured Questions with Model Answers")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: Structured Questions]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Structured Questions]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Six long questions — one per chapter — of the kind that appears in the theory paper rather than the CBT. Work each one on paper before you read the model answer: the answer is written the way a marker expects to see it.]
]

#v(4pt)

== I.1 A Thermometer, Two Scales

*Question.* A thermometer is calibrated with an unmarked stem. Its property reads 12 mm at the ice point and 88 mm at the steam point. (a) Find the temperature when the property reads 45 mm. (b) Find the reading at 60 °C. (c) State the temperature 40 °C on the kelvin scale, and say whether a *rise* of 40 °C is also a rise of 40 K.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* $theta = (X - X_0)\/(X_(100) - X_0) times 100 = (45 - 12)\/(88 - 12) times 100 = 33\/76 times 100 = 43.4$ °C.

  *(b)* Rearranged, $X = X_0 + (X_(100) - X_0) theta\/100 = 12 + 0.76 times 60 = 57.6$ mm.

  *(c)* $T = theta + 273 = 313$ K. A temperature *difference* is the same number on both scales, because the two degrees are the same size — so a rise of 40 °C is a rise of 40 K.
]

== I.2 A Rail, and a Strip That Bends

*Question.* A steel rail is 20.0 m long at 20 °C. Take $alpha = 1.2 times 10^(-5)$ K⁻¹. (a) Find its length at 60 °C. (b) Find the gap that must be left between successive rails if they are laid at 20 °C and may reach 60 °C. (c) A brass strip and a steel strip are riveted together and warmed. State which is on the outside of the curve and why.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* $Delta L = alpha L_0 Delta theta = 1.2 times 10^(-5) times 20.0 times 40 = 9.6 times 10^(-3)$ m, so the length is 20.0096 m — about 20.01 m.

  *(b)* The gap must absorb the expansion: 9.6 mm, usually rounded to 1.0 cm in practice.

  *(c)* Brass is on the outside. Brass has the larger expansivity ($1.9 times 10^(-5)$ against $1.2 times 10^(-5)$ K⁻¹), so it becomes the longer strip and forms the outer arc of the bend.
]

== I.3 A Window and a Rod

*Question.* A glass window is 2.0 m² in area and 4.0 mm thick, with $k = 0.8$ W m⁻¹ K⁻¹. The inside is at 22 °C and the outside at 2 °C. (a) Find the rate of heat loss through the glass. (b) A second sheet is fitted with a 12 mm air gap between the sheets. Explain why the loss falls sharply, and name the two processes the trapped air suppresses. (c) State one further change that would reduce the loss and the process it attacks.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* $P = k A Delta theta \/ L = 0.8 times 2.0 times 20 \/ (4.0 times 10^(-3)) = 8000$ W. That is the conduction rate through the glass alone; in practice surface films and frame losses make the measured figure smaller.

  *(b)* Air has a very small conductivity ($0.026$ W m⁻¹ K⁻¹ against 0.8 for glass), so replacing a slab of glass with a wider slab of air cuts the conduction rate by a factor of about thirty. Trapping the air in a narrow gap also stops it circulating, which suppresses *convection*; the sealed gap removes the *conduction* path through moving air.

  *(c)* Silvering or coating the inner surfaces with a low-emissivity layer attacks *radiation*, which is the route the trapped air does nothing to stop.
]

== I.4 A Copper Block in a Calorimeter

*Question.* A copper block of mass 0.30 kg is heated to 150 °C and dropped into a copper calorimeter of mass 0.10 kg containing 0.20 kg of water at 20 °C. Take $c_"Cu" = 400$ and $c_w = 4200$ J kg⁻¹ K⁻¹. (a) Find the final temperature, ignoring losses. (b) Find the heat lost by the block. (c) State the effect on the answer of ignoring the calorimeter.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* Heat lost by the block = heat gained by water + calorimeter:
  $0.30 times 400 times (150 - theta) = (0.20 times 4200 + 0.10 times 400)(theta - 20)$,
  so $120(150 - theta) = 880(theta - 20)$, giving $18\,000 - 120 theta = 880 theta - 17\,600$ and $theta = 35\,600\/1000 = 35.6$ °C.

  *(b)* $Q = 120 times (150 - 35.6) = 1.37 times 10^4$ J.

  *(c)* The calorimeter absorbs heat too. Leaving it out makes the gained side smaller, so the final temperature comes out *higher* than it should — the mixture appears to need less energy to warm.
]

== I.5 A Cylinder of Gas

*Question.* A cylinder holds 200 cm³ of gas at $1.0 times 10^5$ Pa and 27 °C. The gas is compressed to 50 cm³ and heated to 127 °C. (a) Find the new pressure. (b) Find the number of moles of gas. (c) State and explain what happens to the r.m.s. speed of the molecules.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* $p_2 = p_1 V_1 T_2 \/ (V_2 T_1) = 1.0 times 10^5 times 200 times 400 \/ (50 times 300) = 5.3 times 10^5$ Pa.

  *(b)* $n = p V \/ (R T) = 1.0 times 10^5 times 2.0 times 10^(-4) \/ (8.31 times 300) = 8.0 times 10^(-3)$ mol.

  *(c)* The r.m.s. speed rises, because it depends on the absolute temperature ($c_"rms" = sqrt(3 R T \/ M)$) and the temperature has risen from 300 K to 400 K. It increases by a factor $sqrt(400\/300) = 1.15$, that is by about 15 %.
]

== I.6 An Engine and Its Books

*Question.* A heat engine takes 1.5 kJ of heat per cycle from a reservoir at 600 K and rejects 0.90 kJ to a sink at 300 K. (a) Find the work done per cycle and the efficiency. (b) Find the Carnot efficiency between the same two temperatures and comment. (c) The engine runs at 20 cycles per second. Find its power output. (d) State what happens to the rejected heat.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* $W = Q_1 - Q_2 = 1500 - 900 = 600$ J, and $eta = 600\/1500 = 0.40$, that is 40 %.

  *(b)* $eta_"Carnot" = 1 - 300\/600 = 0.50$. The real engine is at 40 % against an ideal limit of 50 %, which is a very good real engine — most are far below the Carnot value.

  *(c)* $P = W times f = 600 times 20 = 12\,000$ W, or 12 kW.

  *(d)* It passes to the cold sink — the surroundings, through the radiator or the exhaust — and warms them. The second law requires it: an engine that rejected no heat would be 100 % efficient.
]

== I.7 The Mark Scheme at a Glance

#table(
  columns: (1.3fr, 3.1fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part of the answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it earns, and how to show it],
  ),
  [the relation], [the formula written before any numbers — the examiner is looking for the physics, not the arithmetic],
  [the substitution], [the numbers put in with their units on their own line, so the method is visible even if the arithmetic slips],
  [the answer], [a value with a unit and a sensible size; 8000 W through a window is checkable at a glance],
  [the kelvin line], [the conversion written out whenever a gas law or an efficiency is involved — it is worth a mark by itself],
  [the statement], [one sentence of interpretation where the question asks for it: “the mixture ends warm but not hot”, “the engine rejects heat to the sink”],
  [the check], [a second route to the same answer, or a sentence saying why the answer is the right way round],
)

#v(6pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Write one of these out by hand every week]
  #v(4pt)
  #text(size: 10.1pt)[
    The CBT paper will not ask you to write a structured answer — but the theory paper will, and the same reasoning earns the marks in both. Take one question from this appendix each week, cover the model answer, and write your own on a blank page: the relation first, the substitution on its own line with units, the answer with its unit, then one sentence of interpretation. Six weeks of that is six pages of handwriting, and it is the most reliable way to stop losing marks for method on questions you can actually do.
  ]
]

*Where the two papers overlap.* Almost every structured question in a JAMB theory paper begins with a calculation this volume has already taught and ends with a sentence of comment that the objective paper would have turned into a multiple-choice option. A candidate who can do question I.6 can also answer "the efficiency of the engine is" in four seconds; a candidate who can only pick the option freezes when the same numbers arrive without the choices. Writing the working out is therefore not an extra subject — it is the same subject with the scaffolding removed, and it is the reason this appendix exists.
