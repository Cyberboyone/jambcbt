#import "template.typ": *

#current-chapter.update("Chapter 4: Hydrogen, Oxygen and Nitrogen")
#pagebreak()

#chapter-opener(
  4,
  "Hydrogen, Oxygen and Nitrogen",
  subtitle: "Laboratory and Industrial Preparation, Properties and Tests, the Haber and Ostwald Processes, Fertilisers and the Nitrogen Cycle",
  syllabus-ref: "Sec. C • Topic 4",
  utme-weight: "4 Qs every year",
)

#focus-radar(
  objectives: (
    "Describe the laboratory preparation of hydrogen, oxygen and ammonia, with the reagents, the drying agent and the method of collection.",
    "Describe the industrial preparation of hydrogen, oxygen and nitrogen.",
    "State the test for each gas and the observations that identify it.",
    "Write the equation for the Haber process and state its catalyst, temperature and pressure.",
    "Describe the Ostwald process and write the three equations that convert ammonia to nitric acid.",
    "Describe the nitrogen cycle and explain the environmental effect of nitrate fertilisers.",
  ),
  hotspots: (
    "“The gas prepared by heating ammonium chloride with calcium hydroxide is …” — ammonia, dried with calcium oxide and collected upward.",
    "“Hydrogen is collected by …” — upward delivery, because it is the lightest gas, or over water because it is insoluble.",
    "“The catalyst in the Haber process is …” — iron, at 450 °C and 200 atm.",
    "“The Ostwald process converts …” — ammonia to nitric acid, in three steps over a platinum–rhodium gauze.",
    "“The gas that relights a glowing splint is …” — oxygen. Hydrogen gives a pop; carbon dioxide extinguishes.",
    "“Nitrogen is unreactive because …” — the N≡N triple bond is very strong.",
  ),
  trap-summary: "Three slips. (1) Drying ammonia with calcium chloride or concentrated sulphuric acid: both react with it, so calcium oxide is used. (2) Saying that hydrogen is collected “downward” because it is light: upward delivery carries a light gas *up* out of the jar, so the jar is held mouth-downward and the gas rises into it. (3) Writing the Haber conditions as “high temperature and high pressure, which both favour the yield”: a high temperature lowers the yield and is used only for rate, so the sentence needs the word *compromise*.",
)

// ============================================================================
== 4.1 Three Gases, Three Personalities

Hydrogen, oxygen and nitrogen are the three gases around which the whole of inorganic industry is built. They differ in one decisive way: oxygen is reactive and supports combustion; hydrogen is reactive and burns; nitrogen is almost inert and must be forced to react. Everything else in this chapter follows from those three personalities.

#table(
  columns: (1.1fr, 1.35fr, 1.5fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Gas],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Collected by],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chief use],
  ),

  [hydrogen], [lighted splint gives a pop], [upward delivery, or over water], [Haber process; hydrogenation of oils],
  [oxygen], [relights a glowing splint], [over water, or downward delivery], [steel making; welding; breathing apparatus],
  [nitrogen], [no test: it extinguishes and is identified by its inertness], [over water], [Haber process; inert atmosphere; liquid nitrogen coolant],
  [ammonia], [turns damp red litmus blue; white smoke with HCl], [upward delivery only], [fertilisers; nitric acid],
  [carbon dioxide], [turns limewater milky], [downward delivery, or over water], [fizzy drinks; fire extinguishers],
)

#concept-box("Why hydrogen, and not helium, fills weather balloons")[
  Hydrogen is the lightest gas and gives the greatest lift, but it is flammable, and the Hindenburg disaster ended its use in passenger airships. Helium is twice as heavy per atom but completely inert, so modern balloons use helium. The chemistry examination still asks for hydrogen, because the *test* — a lighted splint giving a pop — is a classic, and because hydrogen's reactivity is the point of the Haber process.
]

// ============================================================================
== 4.2 Preparing the Three Gases

#diagram-fig("diagrams/ch04_prep.svg",
  "Three laboratory preparations side by side: oxygen from hydrogen peroxide, hydrogen from zinc and acid, ammonia from an ammonium salt and a base. Each is collected by the method its density and solubility allow.", width: 100%)

#table(
  columns: (1.05fr, 1.85fr, 1.35fr, 1.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Gas],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Laboratory preparation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Dried with],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Industrial preparation],
  ),

  [oxygen], [2H₂O₂ → 2H₂O + O₂ with MnO₂], [passed over CaO or H₂SO₄], [fractional distillation of liquid air],
  [hydrogen], [Zn + 2HCl → ZnCl₂ + H₂], [passed over CaO], [steam reforming of natural gas; electrolysis of brine],
  [nitrogen], [not prepared in the school laboratory], [—], [fractional distillation of liquid air],
  [ammonia], [2NH₄Cl + Ca(OH)₂ → CaCl₂ + 2NH₃ + 2H₂O], [passed over CaO], [the Haber process],
  [carbon dioxide], [CaCO₃ + 2HCl → CaCl₂ + H₂O + CO₂], [passed over CaCl₂], [from fermentation; from lime kilns],
)

#trap-box("Three drying agents, three exclusions")[
  Concentrated sulphuric acid dries hydrogen, oxygen, nitrogen and carbon dioxide, but it *reacts* with ammonia, so it can never be used there. Calcium chloride dries most gases but forms a compound with ammonia, CaCl₂·8NH₃, so it is excluded too. Calcium oxide is the drying agent for ammonia because it is basic and therefore does not react with a base. If the question shows a drying tower of the wrong agent, the gas collected will be contaminated or absent, and that is the mark.
]

#formula-box("The industrial routes worth memorising")[
  $"CH"_4 + "H"_2 "O" -> "CO" + 3 "H"_2 quad "(steam reforming, nickel catalyst, about 800 °C)"$
  #v(3pt)
  $"N"_2 + 3 "H"_2 <=> 2 "NH"_3 quad "(Haber: iron, 450 °C, 200 atm)"$
  #v(3pt)
  $"2H"_2 "O" -> 2 "H"_2 + "O"_2 quad "(electrolysis of water, or of brine for chlorine and hydrogen)"$
]

// ============================================================================
== 4.3 Ammonia and the Haber Process

Ammonia is the compound that feeds the world. The Haber process fixes atmospheric nitrogen — a gas so inert that it was once thought unable to react at all — by combining it with hydrogen over an iron catalyst.

#diagram-fig("diagrams/ch04_haber.svg",
  "The Haber process as a loop rather than a line. Only about 15 % of the gas reacts on each pass, so the unreacted nitrogen and hydrogen are separated from the ammonia and returned to the converter; the loop, not the yield per pass, is what makes the process economic.", width: 100%)

#table(
  columns: (1.3fr, 1.45fr, 1.85fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why that value],
  ),

  [catalyst], [finely divided iron], [speeds up both directions; the position of equilibrium is unchanged],
  [temperature], [about 450 °C], [low enough for a good yield, high enough for a workable rate],
  [pressure], [about 200 atm], [four moles of gas become two, so pressure drives the equilibrium to the right],
  [removal of ammonia], [the gas is cooled and liquefied out], [taking the product away pulls the equilibrium to the right],
  [recycle], [unreacted N₂ and H₂ return to the converter], [the yield per pass is only about 15 %],
)

#concept-box("Le Chatelier, applied to one sentence")[
  The forward reaction is *exothermic* (ΔH = −92 kJ mol⁻¹) and it *reduces the number of gas molecules* (four moles become two). By Le Chatelier's principle, a low temperature and a high pressure both push the equilibrium towards ammonia. The low temperature would make the reaction impossibly slow, so 450 °C is chosen as a compromise, and the iron catalyst restores the rate without changing the position. That paragraph is the model answer to “Explain the conditions used in the Haber process”, and it is worth learning as a paragraph rather than as a list.
]

#worked-example(
  1,
  "The Haber calculation",
  tier: "UTME STANDARD",
  [In the Haber process, 6.0 g of hydrogen is mixed with excess nitrogen. Calculate (a) the mass of ammonia that can be formed, and (b) the volume of nitrogen, measured at s.t.p., that is used up.],
  [
    *Moles of hydrogen.* $M_r(op("H")_2) = 2$.
    $n = 6.0 div 2 = 3.0 "mol"$

    *Mole ratios.* From $op("N")_2 + 3 op("H")_2 <=> 2 op("NH")_3$, three moles of hydrogen give two moles of ammonia and use one mole of nitrogen.

    *(a) Mass of ammonia.*
    $n(op("NH")_3) = 3.0 times 2 div 3 = 2.0 "mol"$
    $m = 2.0 times 17 = 34 "g"$

    *(b) Volume of nitrogen.*
    $n(op("N")_2) = 3.0 div 3 = 1.0 "mol"$
    $V = 1.0 times 22.4 = 22.4 "dm"^3$

    *Note.* The mass of ammonia, 34 g, is larger than the mass of hydrogen, as it must be — but it is smaller than the combined mass of hydrogen and nitrogen used, because 28 g of nitrogen have been added: $6.0 + 28 = 34$ g of product.
  ],
)

// ============================================================================
== 4.4 Nitric Acid and the Ostwald Process

Ammonia is oxidised to nitric acid in three steps over a platinum–rhodium gauze. The acid is the second pillar of the fertiliser industry, and the first step is the one that decides the cost of the plant.

#diagram-fig("diagrams/ch04_ostwald.svg",
  "The Ostwald process, three steps and two catalysts (only the first step is catalysed). Ammonia is burnt to nitrogen(II) oxide, cooled and oxidised to nitrogen(IV) oxide, then absorbed in water to give nitric acid.", width: 100%)

#table(
  columns: (0.7fr, 2.0fr, 1.9fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Step],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Conditions],
  ),

  [1], [$4 op("NH")_3 + 5 op("O")_2 -> 4 op("NO") + 6 op("H")_2 op("O")$], [platinum–rhodium gauze, 900 °C; strongly exothermic],
  [2], [$2 op("NO") + op("O")_2 -> 2 op("NO")_2$], [cooled to about 50 °C; no catalyst needed],
  [3], [$4 op("NO")_2 + op("O")_2 + 2 op("H")_2 op("O") -> 4 op("HNO")_3$], [absorbed in water in a packed tower; about 60 % acid],
)

#trap-box("Nitric acid is an oxidising acid")[
  Dilute nitric acid reacts with metals to give *nitrogen oxides* rather than hydrogen, because the nitrate ion is a better oxidising agent than the hydrogen ion is a reducing one. Copper with concentrated nitric acid gives brown nitrogen dioxide; with dilute nitric acid it gives colourless nitrogen(II) oxide, which turns brown at the mouth of the tube as it meets the air. If an examination question asks why no hydrogen is evolved, the answer is “nitric acid is an oxidising acid, so it is reduced instead of the metal”.
]

// ============================================================================
== 4.5 Nitrogen in the Soil: Fertilisers and the Cycle

Plants cannot use atmospheric nitrogen. They take it up as *nitrate* or *ammonium* ions from the soil, and the conversion of N₂ into those ions is called *nitrogen fixation*. Nature does it with lightning and with bacteria; industry does it with the Haber process.

#diagram-fig("diagrams/ch04_nitrogen.svg",
  "The nitrogen cycle. Fixation, nitrification, assimilation, decomposition and denitrification return the element to the air; the Haber process short-circuits the whole loop by fixing nitrogen without a bacterium.", width: 100%)

#table(
  columns: (1.5fr, 1.85fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Fertiliser],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Note],
  ),

  [urea], [CO(NH₂)₂], [46 % nitrogen; the most concentrated solid fertiliser],
  [ammonium sulphate], [(NH₄)₂SO₄], [21 % nitrogen, plus sulphur],
  [ammonium nitrate], [NH₄NO₃], [34 % nitrogen; also an explosive, so it is regulated],
  [superphosphate], [Ca(H₂PO₄)₂ + CaSO₄], [supplies phosphorus],
  [muriate of potash], [KCl], [supplies potassium],
)

#concept-box("Eutrophication in four sentences")[
  Nitrate fertiliser that is not taken up by the crop is washed out of the soil by rain and carried into streams and lakes. The nitrate feeds an explosive growth of algae at the surface. When the algae die, bacteria decompose them and use up the dissolved oxygen. The water becomes anaerobic, fish die, and the lake turns green and foul — which is why farmers are now required to time their applications and leave buffer strips beside watercourses.
]

// ============================================================================
#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: the preparations, the two processes and the nitrogen cycle.", width: 100%)

#pagebreak()
== 4.6 Chapter 4 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + describe the laboratory preparation of oxygen, hydrogen and ammonia, with reagents and equations;
  + name the drying agent for each gas, and the two that cannot be used for ammonia;
  + describe how each gas is collected, and say why;
  + state the test for hydrogen, oxygen, ammonia and carbon dioxide;
  + give the industrial route to hydrogen, oxygen and nitrogen;
  + state the catalyst, temperature and pressure of the Haber process;
  + explain the Haber conditions as a compromise;
  + write the three Ostwald equations and name the catalyst;
  + name four nitrogen fertilisers with their formulae;
  + describe the nitrogen cycle in five steps;
  + explain eutrophication in four sentences.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Three gases, three personalities: oxygen supports combustion, hydrogen burns, and nitrogen is almost inert because of its triple bond. Each has one laboratory preparation — hydrogen peroxide with a manganese(IV) oxide catalyst, zinc with dilute acid, an ammonium salt with a base — and one industrial route, the last of which is the fractional distillation of liquid air for both oxygen and nitrogen. Ammonia is the gas that ties the chapter together: prepared in the laboratory by heating ammonium chloride with calcium hydroxide, dried with calcium oxide and collected upward because it is lighter than air; made industrially by the Haber process over iron at 450 °C and 200 atm, where every condition is a compromise between yield and rate; oxidised in the Ostwald process to nitric acid; and spread on fields as fertiliser, from which it escapes into rivers and causes eutrophication. The nitrogen cycle is the same story without the factory: fixation, nitrification, assimilation, decomposition and denitrification, round and round.
  ]
]

== 4.7 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [The gas evolved when ammonium chloride is heated with calcium hydroxide is], [chlorine], [hydrogen chloride], [ammonia], [nitrogen])
#mcq(2, [In the Haber process, the catalyst used is], [vanadium(V) oxide], [iron], [platinum], [nickel])
#mcq(3, [Ammonia is dried in the laboratory using], [concentrated sulphuric acid], [calcium chloride], [calcium oxide], [phosphorus(V) oxide])
#mcq(4, [The Ostwald process is used to manufacture], [sulphuric acid], [nitric acid], [ammonia], [ammonium sulphate])

#answer-key-grid(("C", "B", "C", "B"))

#answer-notes((
  ("C", [ammonium salts release ammonia when warmed with a base; the gas is lighter than air and is collected by upward delivery.]),
  ("B", [the Haber process uses finely divided iron; vanadium(V) oxide belongs to the Contact process, platinum to Ostwald and nickel to hydrogenation.]),
  ("C", [calcium oxide is basic and does not react with ammonia; sulphuric acid and calcium chloride both combine with it.]),
  ("B", [Ostwald oxidises ammonia to nitric acid; sulphuric acid comes from the Contact process.]),
))

#concept-box("Carry this into Chapter 5")[
  Chapter 4 ended with a gas that must be forced to react: nitrogen, held together by a triple bond. Chapter 5 opens with a gas that reacts eagerly, sulphur dioxide, and shows how industry exploits that eagerness to make sulphuric acid — the same pattern of catalytic oxidation you have just met in the Ostwald process, applied to a different element. The halogens then supply the opposite extreme: elements that are so reactive that they are found only as ions, and whose reactivity can be read off a single displacement experiment.
]

#include "drill_ch04.typ"
