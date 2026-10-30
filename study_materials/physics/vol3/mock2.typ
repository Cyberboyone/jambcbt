#import "template.typ": *

#current-chapter.update("Mock Examination 2")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Mock Examination 2]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[MOCK EXAMINATION 2]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Second Full-Syllabus CBT Paper]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[A second forty-question paper built from different items: the same syllabus coverage with more of the graph, laboratory and calculation questions. Sit it a week after Mock 1.]
]

#v(5pt)

+ Forty questions, forty minutes, no negative marking.

+ Expect at least twelve questions that need a calculation before the choice can be made.

+ Mark only after the full forty minutes have elapsed.

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 8pt,
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[QUESTIONS] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TIME] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40 min]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[MARKING] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[No negatives]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TARGET] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[31 / 40]],
)

== Mock Examination 2 — Questions

#mcq(1, [Charles' law states that, for a fixed mass of gas at constant pressure,], [volume is proportional to pressure], [volume is proportional to absolute temperature], [pressure varies inversely with volume], [volume is constant])
#v(4.06pt)

#mcq(2, [In an isobaric process, the work done by a gas at pressure $p$ is], [$p \/ Delta V$], [$Delta p V$], [zero], [$p Delta V$])
#v(4.06pt)

#mcq(3, [The constriction in a clinical thermometer], [prevents the mercury from returning until it is shaken], [increases the range], [makes the mercury expand faster], [reduces the sensitivity])
#v(4.06pt)

#mcq(4, [A copper rod and a steel rod of equal length are riveted together and heated. The pair bends with], [steel on the outside], [no bend], [copper on the outside], [both straight])
#v(4.06pt)

#mcq(5, [A vacuum flask is silvered inside to reduce heat loss by], [conduction], [convection], [radiation], [evaporation])
#v(4.06pt)

#mcq(6, [The specific heat capacity of water is], [42 J kg⁻¹ K⁻¹], [420 J kg⁻¹ K⁻¹], [42 000 J kg⁻¹ K⁻¹], [4200 J kg⁻¹ K⁻¹])
#v(4.06pt)

#mcq(7, [The assumption that gas molecules have negligible volume fails when], [the gas is very dense], [the pressure is very low], [the temperature is very high], [the gas is monatomic])
#v(4.06pt)

#mcq(8, [A gas at 1.0 × 10⁵ Pa expands from 200 cm³ to 500 cm³ at constant pressure. The work done is], [3.0 J], [30 J], [300 J], [3.0 kJ])
#v(4.06pt)

#mcq(9, [The reason a gas thermometer is used as a standard is that], [gases are cheap], [all gases behave alike at low pressure], [gases do not expand], [gases have no fixed points])
#v(4.06pt)

#mcq(10, [A liquid with a real expansivity equal to the cubic expansivity of a glass vessel would], [overflow at once], [freeze], [show no change of level in the stem], [contract])
#v(4.06pt)

#mcq(11, [The SI unit of thermal conductivity is], [W m⁻² K⁻¹], [J kg⁻¹ K⁻¹], [W K⁻¹], [W m⁻¹ K⁻¹])
#v(4.06pt)

#mcq(12, [Water at 0 °C compared with the same mass of ice at 0 °C contains], [more internal energy], [less internal energy], [the same internal energy], [no internal energy])
#v(4.06pt)

#mcq(13, [Boltzmann's constant is equal to], [$R N_A$], [$N_A \/ R$], [$R \/ N_A$], [$R T$])
#v(4.06pt)

#mcq(14, [A Carnot engine works between 500 K and 300 K. Its efficiency is], [20 %], [60 %], [80 %], [40 %])
#v(4.06pt)

#mcq(15, [Heat is best defined as], [energy in transit because of a temperature difference], [the average kinetic energy of the particles of a body], [the total internal energy of a body], [the degree of hotness of a body])
#v(4.06pt)

#mcq(16, [The unit of cubic expansivity is], [m³ K⁻¹], [K⁻¹], [m K⁻¹], [m³])
#v(4.06pt)

#mcq(17, [A surface that is a good absorber of radiation is also], [a poor emitter], [a good emitter], [a perfect reflector], [a poor conductor])
#v(4.06pt)

#mcq(18, [The dew point is the temperature at which], [water freezes], [humidity is zero], [the air becomes saturated], [the pressure is one atmosphere])
#v(4.06pt)

#mcq(19, [A fixed mass of gas is taken from 100 cm³ at 2.0 × 10⁵ Pa through a process to 250 cm³ at 1.2 × 10⁵ Pa. Its temperature], [has risen], [has fallen], [is unchanged], [cannot be related to these values])
#v(4.06pt)

#mcq(20, [Water in a cylinder is heated at constant pressure, evaporating completely, then the steam expands. The work done by the steam comes at the expense of], [only the heat supplied after boiling], [the internal energy alone], [the container], [both the heat supplied and the internal energy])
#v(4.06pt)

#mcq(21, [A thermometer reads 20 °C in a room and is then placed in a beaker of water at 60 °C. Its reading], [jumps instantly to 60 °C], [rises gradually and settles at 60 °C], [settles below 60 °C because glass insulates it], [rises to 60 °C and then falls])
#v(4.06pt)

#mcq(22, [A glass vessel has linear expansivity $8.0 times 10^(-6)$ K⁻¹. Its cubic expansivity is], [$2.4 times 10^(-5)$ K⁻¹], [$2.7 times 10^(-5)$ K⁻¹], [$8.0 times 10^(-6)$ K⁻¹], [$6.4 times 10^(-5)$ K⁻¹])
#v(4.06pt)

#mcq(23, [The rate of heat loss through a window of area 2.0 m² and thickness 5.0 mm, with a temperature difference of 10 K and $k = 0.8$ W m⁻¹ K⁻¹, is], [32 W], [320 W], [32 kW], [3200 W])
#v(4.06pt)

#mcq(24, [A block of ice at −10 °C is warmed to 0 °C, then melted. The energy needed to warm it is smaller than the energy needed to melt it because], [the specific heat of ice is smaller], [ice is denser than water], [the latent heat of fusion is much larger than $c_"ice" times 10$ K], [the ice loses no heat])
#v(4.06pt)

#mcq(25, [The volume occupied by 1.0 mol of an ideal gas at s.t.p. is about], [2.24 dm³], [22.4 dm³], [224 dm³], [24.0 dm³])
#v(4.06pt)

#mcq(26, [The internal energy of an ideal gas depends on], [pressure alone], [volume alone], [temperature alone], [pressure and volume independently])
#v(4.06pt)

#mcq(27, [A platinum coil reads 8.0 Ω in melting ice and 12.0 Ω in steam. At 10.0 Ω the temperature is], [40 °C], [60 °C], [80 °C], [50 °C])
#v(4.06pt)

#mcq(28, [The cubic expansivity of a solid is], [$3 alpha$], [$alpha$], [$2 alpha$], [$6 alpha$])
#v(4.06pt)

#mcq(29, [The temperature of the filament of a lamp is doubled. The power it radiates rises by a factor of], [16], [2], [4], [8])
#v(4.06pt)

#mcq(30, [Sweating cools the body because], [sweat is colder than the skin], [sweat conducts heat away], [sweat is a good radiator], [evaporation absorbs latent heat from the skin])
#v(4.06pt)

#mcq(31, [The pressure of a gas is doubled at constant volume while the temperature is held constant. This is impossible because], [the gas would condense], [at fixed $V$ and $T$ the pressure is fixed by $p V = n R T$], [the container would burst], [the molecules would slow down])
#v(4.06pt)

#mcq(32, [Rubbing two rough surfaces together warms them. This is an example of], [heat being converted into work], [an adiabatic expansion], [work being converted into internal energy], [a Carnot cycle])
#v(4.06pt)

#mcq(33, [The lower fixed point of the Celsius scale is the temperature of], [boiling water at any pressure], [a freezing mixture of ice and salt], [pure melting ice at standard pressure], [absolute zero])
#v(4.06pt)

#mcq(34, [The expansion of a solid on heating is best explained by], [an increase in the number of atoms], [the increased amplitude of atomic vibration increasing the mean separation], [the atoms becoming heavier], [a change in the atomic charge])
#v(4.06pt)

#mcq(35, [Which of the following would make the *worst* material for a cooking pot handle?], [copper], [wood], [plastic], [rubber])
#v(4.06pt)

#mcq(36, [Relative humidity is the ratio of], [saturated vapour pressure to actual vapour pressure], [mass of vapour to mass of air], [dew point to boiling point], [actual vapour pressure to saturated vapour pressure])
#v(4.06pt)

#mcq(37, [The mean kinetic energy of a molecule at 27 °C is about], [6.2 × 10⁻²¹ J], [1.2 × 10⁻²⁰ J], [4.1 × 10⁻²¹ J], [6.2 × 10⁻²³ J])
#v(4.06pt)

#mcq(38, [In an isochoric (constant-volume) process, the work done by the gas is], [equal to the heat supplied], [equal to the change in internal energy], [zero], [negative])
#v(4.06pt)

#mcq(39, [A temperature falls from 80 °C to 30 °C. The fall on the kelvin scale is], [223 K], [50 K], [273 K], [323 K])
#v(4.06pt)

#mcq(40, [The volume–temperature graph of a gas at constant pressure, plotted in °C, cuts the temperature axis at], [0 °C], [−100 °C], [273 °C], [−273 °C])
#v(4.06pt)

#pagebreak()

== Mock Examination 2 — Answer Key

#answer-key-grid((
  "B", "D", "A", "C", "C", "D", "A", "B", "B", "C",
  "D", "A", "C", "D", "A", "B", "B", "C", "A", "D",
  "B", "A", "D", "C", "B", "C", "D", "A", "A", "D",
  "B", "C", "C", "B", "A", "D", "A", "C", "B", "D",
))

#v(8pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[READ YOUR SCORE]
  #v(3pt)
  #table(
    columns: (0.9fr, 2.6fr),
    inset: 4pt,
    align: (left + horizon, left + horizon),
    stroke: none,
    [*34–40*], [Secure. Sit the next paper under the same conditions within a week.],
    [*28–33*], [Developing. Group your misses by chapter in the Question Map and revise the heaviest one.],
    [*0–27*], [Revise before re-testing. Reread the chapter and redo its drill first.],
  )
]

== Mock Examination 2 — Question Map

Which chapter each question came from, grouped so that a column of misses in your script becomes a revision list. Tick every question you got wrong; the chapter with the longest tick list is the one to revise tonight, before you re-sit the paper.

#table(
  columns: (0.42fr, 1.75fr, 2.55fr, 0.5fr),
  inset: 5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topic],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.]),
  [1], [Temperature and Thermometers], [3, 9, 15, 21, 27, 33, 39], [7],
  [2], [Expansion of Solids, Liquids and Gases], [4, 10, 16, 22, 28, 34, 40], [7],
  [3], [Heat Transfer], [5, 11, 17, 23, 29, 35], [6],
  [4], [Calorimetry, Latent Heat and Vapours], [6, 12, 18, 24, 30, 36], [6],
  [5], [The Gas Laws and the Kinetic Theory], [1, 7, 13, 19, 25, 31, 37], [7],
  [6], [Thermodynamics and Heat Engines], [2, 8, 14, 20, 26, 32, 38], [7],
)

The paper is level with the syllabus: Chapter 1 (7) and Chapter 2 (7) carry the most questions, so a miss there costs the most marks. Revise those first.

#block[
  #set text(size: 9.6pt)
  #set par(leading: 0.68em, spacing: 0.72em)
  #block(breakable: false)[
  == Mock Examination 2 — Complete Solutions
  #sol-item(1, "B", dense: true, pad: 13.22pt)[
    *Chapter 5.* $V \/ T = $ constant, with $T$ in kelvin — not degrees Celsius.
  ]

  #sol-item(2, "D", dense: true, pad: 13.22pt)[
    *Chapter 6.* For constant pressure, $W = p Delta V$.
  ]
  ]

  #sol-item(3, "A", dense: true, pad: 13.22pt)[
    *Chapter 1.* The thread breaks at the constriction when the mercury contracts, so the reading is held until the thermometer is shaken down.
  ]

  #sol-item(4, "C", dense: true, pad: 13.22pt)[
    *Chapter 2.* Copper expands more than steel, so the copper side becomes the longer, outer arc of the curve.
  ]

  #sol-item(5, "C", dense: true, pad: 13.22pt)[
    *Chapter 3.* Silvered walls are poor emitters and reflect infrared back, which is the radiation route.
  ]

  #sol-item(6, "D", dense: true, pad: 13.22pt)[
    *Chapter 4.* 4200 J kg⁻¹ K⁻¹, or 4.2 J g⁻¹ K⁻¹ — the largest of the common substances in the syllabus.
  ]

  #sol-item(7, "A", dense: true, pad: 13.22pt)[
    *Chapter 5.* In a dense gas the molecules' own volume is no longer small compared with the container.
  ]

  #sol-item(8, "B", dense: true, pad: 13.22pt)[
    *Chapter 6.* $W = p Delta V = 1.0 times 10^5 times 300 times 10^(-6) = 30$ J.
  ]

  #sol-item(9, "B", dense: true, pad: 13.22pt)[
    *Chapter 1.* At low pressure every gas has the same expansion coefficient, 1/273, so the reading does not depend on which gas is used.
  ]

  #sol-item(10, "C", dense: true, pad: 13.22pt)[
    *Chapter 2.* The apparent expansivity would be zero: the liquid's growth is exactly taken up by the vessel.
  ]

  #sol-item(11, "D", dense: true, pad: 13.22pt)[
    *Chapter 3.* From $k = P L\/(A Delta theta)$, the unit is W m⁻¹ K⁻¹.
  ]

  #sol-item(12, "A", dense: true, pad: 13.22pt)[
    *Chapter 4.* The ice must absorb the latent heat of fusion to become water at the same temperature, so the water holds that extra energy.
  ]

  #sol-item(13, "C", dense: true, pad: 13.22pt)[
    *Chapter 5.* The gas constant per molecule, $k = R \/ N_A = 1.38 times 10^(-23)$ J K⁻¹.
  ]

  #sol-item(14, "D", dense: true, pad: 13.22pt)[
    *Chapter 6.* $eta = 1 - T_2 \/ T_1 = 1 - 300 \/ 500 = 0.40$, so 40 %.
  ]

  #sol-item(15, "A", dense: true, pad: 13.22pt)[
    *Chapter 1.* Heat is a *process*: energy that flows because of a temperature difference. The other three describe states or totals.
  ]

  #sol-item(16, "B", dense: true, pad: 13.22pt)[
    *Chapter 2.* Expansivity is always a fractional change per kelvin, so the unit is K⁻¹ whatever the dimension.
  ]

  #sol-item(17, "B", dense: true, pad: 13.22pt)[
    *Chapter 3.* Absorption and emission are the same process reversed, so the two properties always go together.
  ]

  #sol-item(18, "C", dense: true, pad: 13.22pt)[
    *Chapter 4.* Cool the air until the actual vapour pressure reaches the saturated value and condensation begins.
  ]

  #sol-item(19, "A", dense: true, pad: 13.22pt)[
    *Chapter 5.* $p V$ goes from $2.0 times 10^7$ to $3.0 times 10^7$ in the same units, so $T prop p V$ has risen by 50 %.
  ]

  #sol-item(20, "D", dense: true, pad: 13.22pt)[
    *Chapter 6.* The first law allows both the heat taken in and the internal energy to supply the work.
  ]

  #sol-item(21, "B", dense: true, pad: 13.22pt)[
    *Chapter 1.* The thermometer must absorb heat before its own temperature reaches the water's; the reading climbs and settles.
  ]

  #sol-item(22, "A", dense: true, pad: 13.22pt)[
    *Chapter 2.* $3 alpha = 2.4 times 10^(-5)$ K⁻¹.
  ]

  #sol-item(23, "D", dense: true, pad: 13.22pt)[
    *Chapter 3.* $P = 0.8 times 2.0 times 10 \/ (5.0 times 10^(-3)) = 3200$ W.
  ]

  #sol-item(24, "C", dense: true, pad: 13.22pt)[
    *Chapter 4.* $2100 times 10 = 2.1 times 10^4$ J kg⁻¹ against $3.34 times 10^5$ J kg⁻¹ for melting — a factor of about 15.
  ]

  #sol-item(25, "B", dense: true, pad: 13.22pt)[
    *Chapter 5.* 22.4 dm³ at 273 K and 1.01 × 10⁵ Pa.
  ]

  #sol-item(26, "C", dense: true, pad: 13.22pt)[
    *Chapter 6.* The kinetic energy of the molecules, and hence $U$, is fixed by the temperature.
  ]

  #sol-item(27, "D", dense: true, pad: 13.22pt)[
    *Chapter 1.* $theta = (10.0 - 8.0)\/(12.0 - 8.0) times 100 = 2\/4 times 100 = 50$ °C.
  ]

  #sol-item(28, "A", dense: true, pad: 13.22pt)[
    *Chapter 2.* A volume grows in three directions: $3 alpha$. Counting dimensions, not squaring or cubing the coefficient.
  ]

  #sol-item(29, "A", dense: true, pad: 13.22pt)[
    *Chapter 3.* Radiation goes as $T^4$, and $2^4 = 16$.
  ]

  #sol-item(30, "D", dense: true, pad: 13.22pt)[
    *Chapter 4.* The escaping molecules carry energy with them, lowering the average kinetic energy of what remains.
  ]

  #sol-item(31, "B", dense: true, pad: 13.22pt)[
    *Chapter 5.* For a fixed mass at fixed volume and temperature, the pressure has a single value; only adding more gas could raise it.
  ]

  #sol-item(32, "C", dense: true, pad: 13.22pt)[
    *Chapter 6.* Mechanical work against friction becomes internal energy — the reverse of an engine's action.
  ]

  #sol-item(33, "C", dense: true, pad: 13.22pt)[
    *Chapter 1.* Pure melting ice at standard atmospheric pressure is 0 °C — the anchor of every calibration.
  ]

  #sol-item(34, "B", dense: true, pad: 13.22pt)[
    *Chapter 2.* The atoms vibrate about fixed positions; the vibration amplitude grows and the mean separation increases, so the solid lengthens.
  ]

  #sol-item(35, "A", dense: true, pad: 13.22pt)[
    *Chapter 3.* A good conductor would deliver the heat of the pot to the hand, which is exactly what a handle must not do.
  ]

  #sol-item(36, "D", dense: true, pad: 13.22pt)[
    *Chapter 4.* Expressed as a percentage, it compares what the air holds with the most it could hold at that temperature.
  ]

  #sol-item(37, "A", dense: true, pad: 13.22pt)[
    *Chapter 5.* $3\/2 k T = 1.5 times 1.38 times 10^(-23) times 300 = 6.21 times 10^(-21)$ J.
  ]

  #sol-item(38, "C", dense: true, pad: 13.22pt)[
    *Chapter 6.* $W = p Delta V = 0$ when $Delta V = 0$, so $Delta U = Q$.
  ]

  #sol-item(39, "B", dense: true, pad: 13.22pt)[
    *Chapter 1.* A temperature *difference* is unchanged between the scales, so 50 °C = 50 K.
  ]

  #sol-item(40, "D", dense: true, pad: 13.22pt)[
    *Chapter 2.* The extrapolation reaches zero volume at −273 °C, which is the experimental route to absolute zero.
  ]

]

