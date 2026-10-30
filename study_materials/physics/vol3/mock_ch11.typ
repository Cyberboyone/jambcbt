#import "template.typ": *

#current-chapter.update("Mock Examination 1")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Mock Examination 1]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[MOCK EXAMINATION 1]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Full-Syllabus CBT Paper]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty questions in forty minutes — the format, the difficulty spread and the topic mix of a real UTME Physics paper on temperature, expansion, heat transfer, calorimetry, the gas laws and thermodynamics.]
]

#v(5pt)

+ Attempt *all forty* questions in *forty minutes*. There is no negative marking, so never leave a blank.

+ One minute a question. If a question takes longer than ninety seconds, flag it and return in the final pass.

+ Mark yourself against the key only when the forty minutes have elapsed.

+ Record every miss in the Question Map — it converts a score into a revision plan.

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 8pt,
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[QUESTIONS] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TIME] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40 min]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[MARKING] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[No negatives]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TARGET] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[30 / 40]],
)

== Mock Examination 1 — Questions

#mcq(1, [A resistance thermometer is preferred to mercury for precision because], [it is cheaper], [it is smaller], [it can be read without calibration], [its property varies precisely and reproducibly with temperature])
#v(10.31pt)

#mcq(2, [A gas at 0 °C has a volume of 100 cm³. At constant pressure and 273 °C the volume is], [50 cm³], [100 cm³], [200 cm³], [150 cm³])
#v(10.31pt)

#mcq(3, [A black body is one that], [reflects all radiation], [absorbs all radiation incident on it], [emits no radiation], [is always at 0 K])
#v(10.31pt)

#mcq(4, [Wet clothes dry faster on a windy day because], [moving air carries the vapour away], [the wind raises the temperature], [wind makes the cloth thinner], [wind increases the latent heat])
#v(10.31pt)

#mcq(5, [The general gas equation for a fixed mass of gas is], [$p V = n R T$], [$p V = $ constant], [$V \/ T = $ constant], [$p_1 V_1 \/ T_1 = p_2 V_2 \/ T_2$])
#v(10.31pt)

#mcq(6, [In an isothermal process on an ideal gas, the change in internal energy is], [positive], [zero], [negative], [equal to the heat supplied])
#v(10.31pt)

#mcq(7, [Which of the following is a thermometric property?], [the mass of a metal block], [the colour of a cold body], [the pressure of a gas at constant volume], [the weight of a thermometer])
#v(10.31pt)

#mcq(8, [A brass rod is 1.000 m long at 0 °C. Taking $alpha = 1.9 times 10^(-5)$ K⁻¹, its length at 100 °C is], [1.0019 m], [0.9981 m], [1.019 m], [1.19 m])
#v(10.31pt)

#mcq(9, [The power radiated by a black body is proportional to], [$T$], [$T^2$], [$T^3$], [$T^4$])
#v(10.31pt)

#mcq(10, [A liquid boils when its saturated vapour pressure], [is zero], [equals the external pressure], [equals its density], [is less than the external pressure])
#v(10.31pt)

#mcq(11, [A gas at 27 °C occupies 300 cm³ at constant pressure. Its volume at 127 °C is], [about 300 cm³], [about 1411 cm³], [about 400 cm³], [about 200 cm³])
#v(10.31pt)

#mcq(12, [A Carnot engine works between 600 K and 300 K. Its efficiency is], [50 %], [30 %], [60 %], [100 %])
#v(10.31pt)

#mcq(13, [The temperature of a body is a measure of], [the total energy of its particles], [the heat it contains], [the work it can do], [the average kinetic energy of its particles])
#v(10.31pt)

#mcq(14, [Which of these has the largest expansion for the same rise in temperature?], [a brass rod], [a steel rod], [a glass rod], [an iron rod of the same length])
#v(10.31pt)

#mcq(15, [Two rods of the same material and length, one with twice the area of the other, carry heat between the same temperatures. The thicker rod carries], [half as much], [twice as much], [the same], [four times as much])
#v(10.31pt)

#mcq(16, [A 2.0 kW kettle heats 1.5 kg of water from 20 °C to 100 °C. Ignoring losses, the time is], [about 8 minutes], [about 12 minutes], [about 4 minutes], [about 25 minutes])
#v(10.31pt)

#mcq(17, [The ideal gas equation in terms of the number of moles is], [$p V = m R T$], [$p V = n R T$], [$p V = n R \/ T$], [$p \/ V = n R T$])
#v(10.31pt)

#mcq(18, [In an isolated system, a spontaneous process always], [increases the entropy], [decreases the entropy], [leaves the entropy unchanged], [changes the total energy])
#v(10.31pt)

#mcq(19, [The calorie is defined as the heat needed to raise the temperature of], [1 kg of water by 1 K], [1 kg of any substance by 1 K], [1 g of water by 1 °C], [1 g of ice by 1 K])
#v(10.31pt)

#mcq(20, [Water at 4 °C is], [less dense than ice], [the same density as at 0 °C], [solid], [the densest water there is])
#v(10.31pt)

#mcq(21, [Convection does not occur in a freely falling spacecraft because], [there is no effective weight to make warm fluid rise], [there is no air], [the temperature is too low], [radiation takes over completely])
#v(10.31pt)

#mcq(22, [The specific latent heat of vaporisation of water is], [3.34 × 10⁵ J kg⁻¹], [2.26 × 10⁶ J kg⁻¹], [2.26 × 10⁵ J kg⁻¹], [4.2 × 10³ J kg⁻¹])
#v(10.31pt)

#mcq(23, [A gas cylinder contains 4.0 kg of gas at 2.0 × 10⁵ Pa. Gas is released until 1.0 kg remains, at constant temperature. The final pressure is], [1.0 × 10⁵ Pa], [4.0 × 10⁵ Pa], [5.0 × 10⁴ Pa], [8.0 × 10⁵ Pa])
#v(10.31pt)

#mcq(24, [An engine takes 5.0 kJ of heat per cycle and rejects 3.5 kJ. Its efficiency is], [42 %], [57 %], [70 %], [30 %])
#v(10.31pt)

#mcq(25, [A liquid-in-glass thermometer has a bulb of thin glass so that], [it is cheaper], [it does not break], [heat reaches the liquid quickly], [the liquid expands more])
#v(10.31pt)

#mcq(26, [All gases at constant pressure expand by the same fraction of their volume per kelvin, equal to], [1/100 K⁻¹], [1/373 K⁻¹], [1/2730 K⁻¹], [1/273 K⁻¹])
#v(10.31pt)

#mcq(27, [Which surface will cool a hot object fastest?], [matt black], [polished silver], [white paint], [clear glass])
#v(10.31pt)

#mcq(28, [The specific heat capacity of a metal is measured by the method of mixtures using], [a thermometer and a ruler], [a calorimeter with water, a thermometer and a balance], [a voltmeter and an ammeter only], [a barometer])
#v(10.31pt)

#mcq(29, [The internal energy of an ideal gas consists of], [its potential energy only], [the chemical energy of its bonds], [the kinetic energy of its molecules], [the energy of its container])
#v(10.31pt)

#mcq(30, [A refrigerator extracts 600 J from its cold compartment using 200 J of work. Its coefficient of performance is], [3.0], [2.0], [4.0], [0.33])
#v(10.31pt)

#mcq(31, [Absolute zero is], [0 °C], [273 °C], [−373 °C], [−273 °C])
#v(10.31pt)

#mcq(32, [A thermostat uses a bimetallic strip because the strip], [melts at a fixed temperature], [bends by a predictable amount at a chosen temperature], [is a good conductor], [is cheap])
#v(10.31pt)

#mcq(33, [Doubling the thickness of a wall, with everything else unchanged,], [halves the heat loss], [doubles the heat loss], [leaves it unchanged], [quarters it])
#v(10.31pt)

#mcq(34, [The main source of error in a school calorimetry experiment is], [the balance], [the mass of the stirrer], [heat exchange with the surroundings], [the size of the calorimeter])
#v(10.31pt)

#mcq(35, [Using degrees Celsius instead of kelvin in Charles' law will], [give the right answer], [make no difference at 0 °C], [only affect pressure], [give a wrong answer])
#v(10.31pt)

#mcq(36, [600 J of heat is supplied to a gas which does 250 J of work. The change in internal energy is], [−350 J], [350 J], [850 J], [150 J])
#v(10.31pt)

#mcq(37, [A faulty thermometer reads 1 °C in melting ice and 99 °C in steam. When the true temperature is 40 °C, its reading is], [38.8 °C], [39.2 °C], [40.0 °C], [40.2 °C])
#v(10.31pt)

#mcq(38, [Ice floats on water because], [ice is denser than water], [ice is less dense than water], [ice is colder], [ice has a lower specific heat capacity])
#v(10.31pt)

#mcq(39, [A copper rod of length 0.50 m and area $4.0 times 10^(-4)$ m² has ends at 100 °C and 20 °C. Taking $k = 400$ W m⁻¹ K⁻¹, the rate of heat flow is], [25.6 W], [5.1 W], [256 W], [2.56 kW])
#v(10.31pt)

#mcq(40, [The heat needed to convert 0.50 kg of water at 100 °C into steam at 100 °C is], [1.1 × 10⁵ J], [2.3 × 10⁵ J], [1.1 × 10⁶ J], [2.3 × 10⁶ J])
#v(10.31pt)

#pagebreak()

== Mock Examination 1 — Answer Key

#answer-key-grid((
  "D", "C", "B", "A", "D", "B", "C", "A", "D", "B",
  "C", "A", "D", "A", "B", "C", "B", "A", "C", "D",
  "A", "B", "C", "D", "C", "D", "A", "B", "C", "A",
  "D", "B", "A", "C", "D", "B", "D", "B", "A", "C",
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

== Mock Examination 1 — Question Map

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
  [1], [Temperature and Thermometers], [1, 7, 13, 19, 25, 31, 37], [7],
  [2], [Expansion of Solids, Liquids and Gases], [2, 8, 14, 20, 26, 32, 38], [7],
  [3], [Heat Transfer], [3, 9, 15, 21, 27, 33, 39], [7],
  [4], [Calorimetry, Latent Heat and Vapours], [4, 10, 16, 22, 28, 34, 40], [7],
  [5], [The Gas Laws and the Kinetic Theory], [5, 11, 17, 23, 29, 35], [6],
  [6], [Thermodynamics and Heat Engines], [6, 12, 18, 24, 30, 36], [6],
)

The paper is level with the syllabus: Chapter 1 (7) and Chapter 2 (7) carry the most questions, so a miss there costs the most marks. Revise those first.

#block[
  #set text(size: 9.6pt)
  #set par(leading: 0.68em, spacing: 0.72em)
  #block(breakable: false)[
  == Mock Examination 1 — Complete Solutions
  #sol-item(1, "D", dense: true, pad: 13.22pt)[
    *Chapter 1.* Platinum resistance varies smoothly and reproducibly, so the instrument can be read to a small fraction of a degree.
  ]

  #sol-item(2, "C", dense: true, pad: 13.22pt)[
    *Chapter 2.* 273 K → 546 K, so the volume doubles: 200 cm³.
  ]
  ]

  #sol-item(3, "B", dense: true, pad: 13.22pt)[
    *Chapter 3.* A perfect absorber — and therefore, by detailed balance, a perfect emitter too.
  ]

  #sol-item(4, "A", dense: true, pad: 13.22pt)[
    *Chapter 4.* Evaporation continues while the air just above the cloth is unsaturated; wind keeps replacing that layer.
  ]

  #sol-item(5, "D", dense: true, pad: 13.22pt)[
    *Chapter 5.* Combining the three laws gives $p V \/ T = $ constant for a fixed mass, hence the two-state form.
  ]

  #sol-item(6, "B", dense: true, pad: 13.22pt)[
    *Chapter 6.* For an ideal gas $U$ depends on $T$ alone, so at constant $T$ the internal energy does not change.
  ]

  #sol-item(7, "C", dense: true, pad: 13.22pt)[
    *Chapter 1.* The pressure of a fixed mass of gas at constant volume rises steadily with temperature — that is the gas thermometer.
  ]

  #sol-item(8, "A", dense: true, pad: 13.22pt)[
    *Chapter 2.* $Delta L = 1.9 times 10^(-5) times 1.000 times 100 = 1.9 times 10^(-3)$ m, so the new length is 1.0019 m.
  ]

  #sol-item(9, "D", dense: true, pad: 13.22pt)[
    *Chapter 3.* $P = sigma A T^4$ — the fourth power makes radiation enormously sensitive to temperature.
  ]

  #sol-item(10, "B", dense: true, pad: 13.22pt)[
    *Chapter 4.* That equality is the definition, and it is why the boiling point depends on the outside pressure.
  ]

  #sol-item(11, "C", dense: true, pad: 13.22pt)[
    *Chapter 5.* $V_2 = 300 times 400 \/ 300 = 400$ cm³ — kelvin throughout.
  ]

  #sol-item(12, "A", dense: true, pad: 13.22pt)[
    *Chapter 6.* $eta = 1 - 300 \/ 600 = 0.50$.
  ]

  #sol-item(13, "D", dense: true, pad: 13.22pt)[
    *Chapter 1.* Temperature is per particle. A bath of warm water and a red-hot nail can be the same temperature with very different total energies.
  ]

  #sol-item(14, "A", dense: true, pad: 13.22pt)[
    *Chapter 2.* Brass has the largest linear expansivity of the four, at about $1.9 times 10^(-5)$ K⁻¹.
  ]

  #sol-item(15, "B", dense: true, pad: 13.22pt)[
    *Chapter 3.* The rate is proportional to area.
  ]

  #sol-item(16, "C", dense: true, pad: 13.22pt)[
    *Chapter 4.* $Q = 1.5 times 4200 times 80 = 5.04 times 10^5$ J and $t = 252$ s $approx 4.2$ min.
  ]

  #sol-item(17, "B", dense: true, pad: 13.22pt)[
    *Chapter 5.* $p V = n R T$, with $R = 8.31$ J mol⁻¹ K⁻¹ and $T$ in kelvin.
  ]

  #sol-item(18, "A", dense: true, pad: 13.22pt)[
    *Chapter 6.* That is the second law in its entropy form. In an ideal reversible process the entropy is unchanged.
  ]

  #sol-item(19, "C", dense: true, pad: 13.22pt)[
    *Chapter 1.* One calorie raises 1 g of water through 1 °C, and 1 cal = 4.2 J.
  ]

  #sol-item(20, "D", dense: true, pad: 13.22pt)[
    *Chapter 2.* 4 °C is the temperature of maximum density — the turning point of the anomalous expansion.
  ]

  #sol-item(21, "A", dense: true, pad: 13.22pt)[
    *Chapter 3.* Buoyancy needs weight. Without it, warm fluid does not rise, and a flame becomes a dim sphere fed by diffusion.
  ]

  #sol-item(22, "B", dense: true, pad: 13.22pt)[
    *Chapter 4.* 2.26 × 10⁶ J kg⁻¹, roughly seven times the latent heat of fusion.
  ]

  #sol-item(23, "C", dense: true, pad: 13.22pt)[
    *Chapter 5.* At fixed $V$ and $T$, $p prop n$: a quarter of the gas gives a quarter of the pressure.
  ]

  #sol-item(24, "D", dense: true, pad: 13.22pt)[
    *Chapter 6.* $W = 5000 - 3500 = 1500$ J and $eta = 1500 \/ 5000 = 0.30$.
  ]

  #sol-item(25, "C", dense: true, pad: 13.22pt)[
    *Chapter 1.* Responsiveness depends on the rate at which heat reaches the liquid, and thin glass conducts it quickly.
  ]

  #sol-item(26, "D", dense: true, pad: 13.22pt)[
    *Chapter 2.* $1\/273$ K⁻¹ — the reciprocal of the kelvin offset, which is why every gas line meets the axis at −273 °C.
  ]

  #sol-item(27, "A", dense: true, pad: 13.22pt)[
    *Chapter 3.* A good absorber is a good emitter, and a matt black surface is the best emitter of the four.
  ]

  #sol-item(28, "B", dense: true, pad: 13.22pt)[
    *Chapter 4.* The mass of the metal, its temperature, the mass of water and the final temperature are all measured.
  ]

  #sol-item(29, "C", dense: true, pad: 13.22pt)[
    *Chapter 5.* Ideal-gas molecules have no potential energy of interaction, so the internal energy is purely kinetic.
  ]

  #sol-item(30, "A", dense: true, pad: 13.22pt)[
    *Chapter 6.* $Q_1 = 600 + 200 = 800$ J is rejected, and the CoP is $Q_2 \/ W = 600 \/ 200 = 3.0$.
  ]

  #sol-item(31, "D", dense: true, pad: 13.22pt)[
    *Chapter 1.* Absolute zero is 0 K = −273 °C, the least kinetic energy the particles can have.
  ]

  #sol-item(32, "B", dense: true, pad: 13.22pt)[
    *Chapter 2.* The curvature is a function of temperature only, so the strip can open or close a contact at a set point.
  ]

  #sol-item(33, "A", dense: true, pad: 13.22pt)[
    *Chapter 3.* The rate is inversely proportional to thickness.
  ]

  #sol-item(34, "C", dense: true, pad: 13.22pt)[
    *Chapter 4.* Heat leaks in or out throughout the experiment, which is why the calorimeter is insulated and the mixing is quick.
  ]

  #sol-item(35, "D", dense: true, pad: 13.22pt)[
    *Chapter 5.* The proportionalities hold on the absolute scale only, because the gas laws extrapolate to zero volume at 0 K, not 0 °C.
  ]

  #sol-item(36, "B", dense: true, pad: 13.22pt)[
    *Chapter 6.* $Delta U = Q - W = 600 - 250 = 350$ J.
  ]

  #sol-item(37, "D", dense: true, pad: 13.22pt)[
    *Chapter 1.* Its two fixed points are 1 and 99, an interval of 98 of its degrees for a true 100, so 40 true degrees are $40 times 98\/100 = 39.2$ of its degrees above 1: reading $= 40.2$ °C. The reading is too high in the upper half because its scale is compressed.
  ]

  #sol-item(38, "B", dense: true, pad: 13.22pt)[
    *Chapter 2.* Water expands as it freezes, so a given mass of ice occupies more volume than the water it came from.
  ]

  #sol-item(39, "A", dense: true, pad: 13.22pt)[
    *Chapter 3.* $P = 400 times 4.0 times 10^(-4) times 80 \/ 0.50 = 25.6$ W.
  ]

  #sol-item(40, "C", dense: true, pad: 13.22pt)[
    *Chapter 4.* $Q = 0.50 times 2.26 times 10^6 = 1.13 times 10^6$ J.
  ]

]

