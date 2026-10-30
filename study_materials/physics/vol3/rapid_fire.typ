#import "template.typ": *

#current-chapter.update("Appendix A: 40 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 40 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[40 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty one-line questions with the answer beside each. Cover the right-hand column with a sheet of paper and work down the list — twenty seconds a line. Anything you cannot answer in twenty seconds is a chapter to reread tonight.]
]

#v(5pt)

== A.1 The First Twenty

#[
  #set text(size: 8.4pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 5.60pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [Conduction is the transfer of heat], [through a body from a hotter to a colder part without the body moving],
    [During melting at the melting point, the heat supplied], [breaks the bonds holding the solid together],
    [The mean kinetic energy of a gas molecule is], [$3\/2 k T$],
    [A consequence of the second law is that], [the total entropy of an isolated system never decreases],
    [Which statement about a thermometer in use is correct?], [it reads its own temperature],
    [A liquid in a glass vessel has an apparent expansivity of $1.5 times 10^(-4)$ K⁻¹. If $3 alpha$ for the glass is $2.7 times 10^(-5)$ K⁻¹, the real expansivity is], [$1.8 times 10^(-4)$ K⁻¹],
    [The rate of heat transfer through a wall can be reduced by], [increasing its thickness],
    [The heat needed to convert 0.20 kg of ice at 0 °C into water at 20 °C is about], [8.4 × 10⁴ J],
    [A gas at 27 °C and 1.0 × 10⁵ Pa is heated at constant volume to 327 °C. The new pressure is], [about 2.0 × 10⁵ Pa],
    [The second law of thermodynamics says that heat cannot], [flow from cold to hot without work being done],
    [Heat flows spontaneously only when], [there is a temperature difference between them],
    [Two rods, one of copper and one of steel, are the same length at 20 °C. At 120 °C], [the copper rod is longer],
    [In steady state along a lagged rod, the rate of heat flow is], [the same at every section],
    [Two litres of water at 20 °C are mixed with one litre at 80 °C. The final temperature is], [40 °C],
    [The density of a gas at constant pressure], [decreases as the temperature rises],
    [A gas does 400 J of work while 150 J of heat leaves it. The change in internal energy is], [−550 J],
    [Which temperature is impossible?], [−300 °C],
    [A plate of area 500 cm² is heated through 40 K. If $alpha = 2.0 times 10^(-5)$ K⁻¹, the increase in area is], [0.80 cm²],
    [The temperature difference across a rod is doubled, with everything else unchanged. The rate of heat flow], [is doubled],
    [Ignoring the heat capacity of the calorimeter makes the calculated specific heat capacity of a hot solid], [too high],
  )
]

#pagebreak()

== A.2 The Second Twenty

Twenty more, in the same format. If a line takes longer than twenty seconds, the chapter to reread is the one printed in your head beside it — write the number down and treat the list as a revision order, not a score.

#[
  #set text(size: 8.4pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 5.60pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [A gas is compressed slowly at constant temperature. The molecules], [move with unchanged average speed but strike the walls more often],
    [For a complete cycle, the net heat absorbed equals], [the net work done by the gas],
    [The average kinetic energy of the particles of a body is proportional to], [its temperature on the absolute scale],
    [A rod of length 4.0 m expands by 2.4 mm when heated through 50 K. Its linear expansivity is], [$1.2 times 10^(-5)$ K⁻¹],
    [Water in a kettle is heated by a coil at the bottom rather than at the top because], [convection then carries the heat through the water],
    [Water is used as a coolant in car engines because], [it has a high specific heat capacity],
    [The mean kinetic energy of gas molecules depends on], [temperature only],
    [In an isothermal expansion of an ideal gas, the heat supplied], [equals the work done by the gas],
    [Convert 350 K to degrees Celsius.], [77 °C],
    [A steel tape is correct at 20 °C. When used at 45 °C to measure 30 m, the tape reads], [slightly more than the true length],
    [Which of these is *not* a way in which heat can be transferred?], [reflection],
    [The specific latent heat of fusion of ice is], [3.34 × 10⁵ J kg⁻¹],
    [The number of molecules in 1.0 cm³ of a gas at s.t.p. is about], [2.7 × 10¹⁹],
    [In the diesel engine, ignition is caused by], [the high temperature produced by compression],
    [Which pair of readings could come from the same thermometer?], [100 °C and 373 K],
    [Water is densest at], [4 °C],
    [Heat from a fire reaches your face mainly by], [radiation],
    [A liquid that does not wet glass is preferred in a thermometer because], [it does not stick to the walls of the tube],
    [2.0 mol of a gas occupy 24.0 dm³ at 27 °C. Taking $R = 8.31$ J mol⁻¹ K⁻¹, the pressure is about], [2.1 × 10⁵ Pa],
    [A heat engine takes 2000 J from the hot reservoir and rejects 1500 J to the cold sink. The work output is], [500 J],
  )
]


Three lines that are worth more than a fourth reading of the list: an answer you had to work out is not yet an answer you know; the chapter beside the line is where to go, not the page; and a line you miss twice in a fortnight is a gap in the *chapter*, not in your memory of the list.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[THE TWENTY-SECOND RULE]
  #v(4pt)
  #text(size: 10.1pt)[
    Twenty seconds is chosen because it is roughly the time a CBT question gives you. If a line here takes longer, you will not have it in the hall either — not because you never learned it, but because it is not yet automatic. Read the chapter, redo the drill question on that line, then come back to the list and time yourself again on the same line only.
  ]
]

