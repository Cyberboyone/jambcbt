#import "template.typ": *
#import "_toc.typ": toc-rows

// Set before the cover, so the first inside page carries the right running head.
#current-chapter.update("Series Overview & UTME Strategy Guide")

// ============================================================================
// COVER PAGE (Full-Bleed Single A4 Page)
// ============================================================================
#page(
  margin: 0pt,
  header: none,
  footer: none,
  fill: rgb("#07192F"),
)[
  #rect(width: 100%, height: 9mm, fill: jamb-bright)

  #pad(x: 20mm, top: 10mm)[
    #grid(
      columns: (56pt, 1fr, auto),
      column-gutter: 12pt,
      align: (left + horizon, left + horizon, right + horizon),
      box(
        radius: 11pt,
        clip: true,
        stroke: 1.5pt + rgb("#34D399"),
        image("../../../assets/icon.png", width: 52pt),
      ),
      [
        #text(font: "DejaVu Sans", size: 12.5pt, weight: "bold", fill: rgb("#34D399"))[JAMB CBT MASTER STUDY SERIES] \
        #v(2pt)
        #text(font: "DejaVu Sans", size: 9.2pt, fill: rgb("#CBD5E1"))[100% Official UTME Syllabus Aligned • High-Yield Exam Edition]
      ],
      box(
        fill: jamb-bright,
        radius: 6pt,
        inset: (x: 11pt, y: 6pt),
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 2 OF 4],
      ),
    )

    #v(6mm)

    #box(
      fill: rgb("#064E3B"),
      stroke: 1pt + rgb("#34D399"),
      radius: 20pt,
      inset: (x: 14pt, y: 5pt),
      text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: rgb("#A7F3D0"))[
        UNIFIED TERTIARY MATRICULATION EXAMINATION (UTME)
      ],
    )

    #v(4mm)

    #text(font: "DejaVu Sans", size: 38pt, weight: "bold", fill: white)[CHEMISTRY]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 14.2pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 2: Physical Chemistry
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Acids, Bases and Salts, Solutions and Solubility, Chemical Energetics,
      Rates of Reaction, Chemical Equilibrium, and Redox and Electrochemistry.
    ]

    #v(4mm)

    #image("diagrams/cover_banner.svg", width: 100%)

    #v(4mm)

    #grid(
      columns: (1fr, 1fr),
      row-gutter: 7pt,
      column-gutter: 10pt,
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ High-Yield Areas of Focus]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Every subtopic ranked by UTME frequency — the pH calculation, the titration mole ratio, the Le Chatelier prediction, the enthalpy sign and the electrode reaction that appear in every paper.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#34D399"))[◆ Curves and Cells Drawn to Scale]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Titration curves, solubility curves, the Maxwell–Boltzmann distribution, energy profiles with and without a catalyst, the equilibrium graph and the electrolytic cell — drawn exactly as the examiner expects them.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#60A5FA"))[▸ Calculate, Then Explain]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Every numerical topic is taught as a method with units: pH from concentration, moles from a titration, kJ from calorimetry, rate from a gradient — and then the sentence that says what the number means.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#F87171"))[✓ Practice Qs & Full Solutions]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Forty questions per chapter, two full CBT mocks, a rapid-fire recall appendix, a 120-question master bank and a full examination-technique appendix — every option explained.
        ]
      ],
    )
  ]

  #place(bottom)[
    #rect(
      width: 100%,
      fill: jamb-green,
      inset: (x: 20mm, y: 4mm),
    )[
      #grid(
        columns: (1fr, auto),
        column-gutter: 14pt,
        align: (left + horizon, right + horizon),
        text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[
          JAMB CBT Companion Textbook Series
        ],
        text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: rgb("#FEF3C7"))[
          Chapters 1–6 · 240 Drills · 2 CBT Mocks · 120-Question Bank
        ],
      )
    ]
  ]
]

// ============================================================================
// PAGE 2: SERIES MAP
// ============================================================================
#current-chapter.update("Series Overview & UTME Strategy Guide")

#block(
  width: 100%,
  fill: jamb-navy,
  radius: 8pt,
  inset: (x: 16pt, y: 12pt),
)[
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[The Chemistry Series, and Where This Volume Sits]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#A7F3D0"))[
    Volume 1 taught you what matter is and how to count it. Volume 2 asks what matter *does*: how fast a reaction goes, how far it goes, how much heat it gives out, how acids and bases behave in water, how a salt is made and analysed, how a titration is calculated, and how electrons moving from one species to another light a bulb or plate a spoon.
  ]
]

#v(6pt)

#table(
  columns: (auto, 1.3fr, 2.0fr, 1.5fr),
  inset: 6.5pt,
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Vol.],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Title],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Coverage],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Syllabus section],

  [*1*], [Matter, Atoms & Bonding], [Matter and separation, chemical combination and the mole, gases and kinetic theory, atomic structure, the periodic table, chemical bonding], [Sections A and B (part)],
  [*2*], [Physical Chemistry], [Acids, bases and salts, pH and titration, solutions and solubility, energetics, rates, equilibrium, redox and electrochemistry], [Section B (part)],
  [*3*], [Inorganic Chemistry], [Group trends, the metals and their compounds, extraction and industrial processes, the non-metals, environmental chemistry], [Section C],
  [*4*], [Organic Chemistry & Practical], [Hydrocarbons, functional groups, polymers, soaps, food chemistry, qualitative analysis and practical skills], [Sections D and E],
)

#v(8pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[This volume in one sentence]
  #v(3pt)
  #text(size: 10.2pt)[
    Volume 2 is the volume of *reversible* things: a weak acid that only partly ionises, a salt that hydrolyses, a gas that dissolves less as it warms, a reaction that speeds up fourfold for every ten degrees, an equilibrium that pushes back when you squeeze it, and a cell that drives electrons the other way when you reverse the current — and every one of those ideas arrives in the examination as a calculation you can set out in four lines.
  ]
]

#v(6pt)

#diagram-fig("diagrams/utme_weight.svg", "Typical number of UTME Chemistry questions per topic in this volume. Acids, bases and titration carry the largest single block of marks; equilibrium and electrochemistry supply the discriminating questions that separate a 250 from a 320.")

// ============================================================================
// PAGE: WHY THIS VOLUME DECIDES THE SCORE
// ============================================================================
#current-chapter.update("How Chemistry Marks Are Won")

#block(
  width: 100%,
  fill: jamb-navy,
  radius: 8pt,
  inset: (x: 16pt, y: 12pt),
)[
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Why Volume 2 Decides Your Chemistry Score]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#A7F3D0"))[
    Volume 1 questions are answered by a definition or a single division. Volume 2 questions are answered by a *chain*: write the equation, find the moles, apply the ratio, convert to the asked-for unit, then say what it means. One broken link and the mark is gone — which is why the chain, not the fact, is what this volume drills.
  ]
]

#v(6pt)

#table(
  columns: (1.55fr, 2.0fr, 1.4fr),
  inset: (x: 6pt, y: 4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The chain in this volume],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the examiner asks],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],

  [Concentration → moles → ratio → pH], [“25.0 cm³ of 0.100 M NaOH neutralises 20.0 cm³ of HCl. Find the concentration of the acid.”], [*1*],
  [Solubility → temperature → crystals], [“A saturated solution at 80 °C is cooled to 20 °C. Mass crystallised?”], [*2*],
  [Bond energy → enthalpy → sign], [“Use the bond energies to calculate ΔH for the reaction.”], [*3*],
  [Gradient → rate → collision theory], [“Why does the rate double when the concentration doubles?”], [*4*],
  [Stress → shift → new equilibrium], [“What happens to the yield of ammonia if the pressure is raised?”], [*5*],
  [Electrode potentials → cell EMF → direction], [“Which electrode is the anode, and what is the cell EMF?”], [*6*],
)

// ============================================================================
// PAGE: THE THREE HABITS
// ============================================================================
#pagebreak()

== The Three Habits That Decide Your Chemistry Score

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *1 · Write the equation before you write a number.* Every calculation in this volume begins with a balanced equation or a stated formula. Ratio, moles, then the asked-for quantity — never the other way round. Candidates who start with the arithmetic lose the stoichiometry marks and the arithmetic marks together.

  *2 · Watch the sign and the unit.* Enthalpy is negative when heat leaves, pH falls when acid is added, the anode is where oxidation happens, and a rate has units of mol dm⁻³ s⁻¹. In this volume, a sign is a mark: ΔH = −890 kJ mol⁻¹ and ΔH = +890 kJ mol⁻¹ are opposite statements about the same reaction.

  *3 · Say which side the particles are on.* Physical chemistry is explained by where the particles are and how often they meet: the ions that carry the current, the molecules that collide with enough energy, the gas molecules that dissolve less as the temperature rises, the electrons that leave the zinc and arrive at the copper. Name them and the explanation writes itself.
]

#v(6pt)

== The Twelve Question Types That Reappear Every Year

#table(
  columns: (0.32fr, 1.9fr, 1.55fr, 0.45fr),
  inset: (x: 5pt, y: 2.8pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How the question is worded],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the examiner wants],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch.],

  [1], [“The pH of a 0.01 M solution of a strong acid is …”], [$2$ — the concentration of $op("H")^+$ is the concentration of the acid], [1],
  [2], [“Which indicator is suitable for a weak acid–strong base titration?”], [One whose range straddles the steep part: phenolphthalein (8.3–10.0)], [1],
  [3], [“25 cm³ of 0.1 M NaOH neutralised 20 cm³ of acid. The acid concentration is …”], [Use $c_1 V_1 \/ n_1 = c_2 V_2 \/ n_2$ — the ratio is not always 1 : 1], [1],
  [4], [“Solubility at 20 °C is 20 g per 100 g water. The mass in 250 g of water is …”], [Scale the ratio; watch the “per 100 g” basis], [2],
  [5], [“Which of these is exothermic?”], [Combustion, neutralisation, condensation, freezing — a negative ΔH], [3],
  [6], [“Use the bond energies to find ΔH …”], [Bonds broken minus bonds formed], [3],
  [7], [“The rate is doubled by …”], [Raising temperature, adding a catalyst, increasing concentration of a reactant], [4],
  [8], [“Which factor does *not* affect the rate?”], [A change in pressure for a solid, or a catalyst changing the position of equilibrium], [4],
  [9], [“What happens to the yield of ammonia when the pressure is increased?”], [It rises — four moles of gas become two], [5],
  [10], [“The equilibrium constant is …”], [$K_c$ for the stated equation, with products over reactants], [5],
  [11], [“Which electrode is the anode in the electrolysis of …”], [Where oxidation happens — the positive electrode in an electrolytic cell], [6],
  [12], [“In the cell, electrons flow from …”], [Zinc to copper — anode to cathode, by external circuit], [6],
)

// ============================================================================
// PAGE: SYLLABUS MAPPING
// ============================================================================
#current-chapter.update("Official JAMB Syllabus Mapping")

== Official JAMB UTME Syllabus Mapping (Volume 2 Chapters)

#v(2pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 8pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[How to read this table]
  #h(6pt)
  #text(font: "DejaVu Sans", size: 9.2pt)[
    The left column is the wording of the official syllabus. The middle column is what the examiner actually tests. The right column is the chapter that teaches it, and the drill that proves it.
  ]
]

#[
#set text(size: 8.4pt)
#table(
  columns: (1.45fr, 1.95fr, 2.05fr, auto),
  inset: (x: 5.5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Syllabus topic],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Examinable objectives],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you must be able to do],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],

  [*Acids, bases and salts*], [Arrhenius and Brønsted–Lowry definitions; strong and weak acids; pH and pOH; indicators; titration; salt preparation; hydrolysis of salts.], [(i) Calculate pH from concentration; (ii) select an indicator; (iii) name the salt preparation route; (iv) explain why a salt solution is acidic or basic.], [*1*],
  [*Solutions and solubility*], [Solutes and solvents; concentration in g dm⁻³ and mol dm⁻³; dilution; saturated solutions; solubility curves; crystallisation; water of crystallisation.], [(i) Convert between concentration units; (ii) calculate dilution; (iii) read a solubility curve; (iv) find the mass crystallised on cooling.], [*2*],
  [*Chemical energetics*], [Exothermic and endothermic reactions; enthalpy change; bond breaking and bond formation; enthalpy of neutralisation, combustion and formation; Hess's law; calorimetry.], [(i) Assign the sign of ΔH; (ii) calculate ΔH from bond energies; (iii) apply Hess's law; (iv) calculate a heat change from a calorimeter], [*3*],
  [*Rates of reaction*], [Collision theory; effect of concentration, temperature, pressure, surface area and catalyst; rate measurement; energy profile and activation energy.], [(i) Explain each factor in terms of collisions; (ii) interpret a rate graph; (iii) sketch and label an energy profile.], [*4*],
  [*Chemical equilibrium*], [Reversible reactions; dynamic equilibrium; Le Chatelier's principle; equilibrium constant; the Haber and contact processes.], [(i) Predict the effect of a change; (ii) write $K_c$ for a given equation; (iii) explain the operating conditions of an industrial process.], [*5*],
  [*Redox and electrochemistry*], [Oxidation numbers; oxidising and reducing agents; conduction in electrolytes; electrolysis and electrode products; galvanic cells; EMF series; corrosion and electroplating.], [(i) Assign oxidation numbers; (ii) predict the products of electrolysis; (iii) calculate a cell EMF; (iv) identify the anode and cathode in either cell.], [*6*],)
]

#v(5pt)

#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[Where the rest of the Chemistry syllabus lives]
  #v(3pt)
  #text(size: 9.6pt)[
    Volume 1 carries matter, separation, the mole, gases, atomic structure, periodicity and bonding; Volume 3 carries the metals, the non-metals, extraction, the major industrial processes and environmental chemistry; Volume 4 carries organic chemistry, polymers, food chemistry, qualitative analysis and the practical paper.
  ]
]

// ============================================================================
// PAGE: TABLE OF CONTENTS
// ============================================================================
#current-chapter.update("Table of Contents")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Table of Contents]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 9pt,
  inset: 13pt,
)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • CHEMISTRY VOLUME 2]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
]

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Six chapters, two mock papers, the 120-question master bank and eight appendices. The page numbers are printed into this list, so you can turn straight to a section without hunting for it.]

#v(5pt)

#let rows = toc-rows.filter(r => r.at(0) == 1 or not (
  r.at(1).contains("Answer Key") or r.at(1).contains("Complete Solutions") or r.at(1).starts-with("Trap ")
))

#toc-two-column(rows, cols: 2, compact: true)

#current-chapter.update("How to Use This Book")
#pagebreak()

// ============================================================================
// PAGE: HOW TO USE
// ============================================================================

== How to Use This Book

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  Each chapter is built in the same order, and the order is the method:

  + *Exam radar.* The syllabus objectives, the high-yield areas and the three traps that cost the most marks.
  + *The teaching sections.* Definitions first, then the reasoning, then a worked example with every step and unit shown.
  + *Checklist and “in one breath”.* A list of what you must be able to do, and the chapter compressed to a paragraph you can recite.
  + *Recap card.* Four panels — the whole chapter on one page, for the last week before the examination.
  + *Two-minute set.* Four questions in the exact style of the CBT engine, with the key and an explanation of every option.
  + *The drill.* Forty questions with full solutions. Attempt all forty before you look at the key.
]

#v(6pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[A study plan that fits six weeks]
  #v(3pt)
  #text(size: 9.8pt)[
    Week 1 — chapter 1, acids and bases, and every pH calculation in the drill. \
    Week 2 — chapter 2, concentrations and solubility curves, and a titration a day. \
    Week 3 — chapter 3, energetics, with every sign written out. \
    Week 4 — chapters 4 and 5, rates and equilibrium, explained aloud in particle language. \
    Week 5 — chapter 6 and Mock Examination 1. \
    Week 6 — the 120-question master bank, the second mock paper and the rapid-fire appendix.
  ]
]

#v(6pt)

#block(width: 100%, fill: rgb("#FFFBEB"), stroke: 0.9pt + rgb("#FCD34D"), radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: rgb("#B45309"))[How to read a worked example]
  #v(3pt)
  #text(size: 9.8pt)[
    The *method* line names the formula. The *substitution* line puts the numbers in with their units. The *answer* line gives the value and the unit, usually to two or three significant figures. If your answer differs in the last figure only you are right; if it differs by a factor of 1000 you confused cm³ with dm³ — the commonest single error in this volume, and the one this book corrects on every page it can.
  ]
]

// ============================================================================
// PAGE: DIAGNOSTIC PRE-TEST
// ============================================================================
#current-chapter.update("Diagnostic Pre-Test")

#pagebreak()

== Diagnostic Pre-Test (Twelve Minutes)

Twelve questions, one from each chapter and one from each skill the paper tests. Sit them in twelve minutes without notes, then mark yourself against the key. Fewer than eight correct means you should work through Volume 2 chapter by chapter before you sit a full mock.

#mcq(1, [The pH of a 0.001 M solution of a strong monobasic acid is], [1], [3], [11], [0.001])
#mcq(2, [Which indicator is most suitable for the titration of a weak acid with a strong base?], [methyl orange], [phenolphthalein], [litmus], [universal indicator])
#mcq(3, [25.0 cm³ of 0.100 M sodium hydroxide neutralises 20.0 cm³ of hydrochloric acid. The concentration of the acid is], [0.080 M], [0.125 M], [0.100 M], [0.200 M])
#mcq(4, [The solubility of a salt is 40 g per 100 g of water at 60 °C. The mass dissolved in 250 g of water at that temperature is], [10 g], [40 g], [100 g], [160 g])
#mcq(5, [Which change is exothermic?], [melting ice], [dissolving ammonium chloride in water], [burning methane], [boiling water])
#mcq(6, [For the reaction $"N"_2 + 3"H"_2 -> 2"NH"_3$, ΔH is negative. The reaction is], [endothermic, and the products have more energy], [exothermic, and the products have less energy], [exothermic, with no change in energy], [endothermic, with no change in energy])
#mcq(7, [Increasing the temperature increases the rate of a reaction mainly because], [the activation energy falls], [more collisions have energy greater than the activation energy], [the concentration of the reactants rises], [the catalyst becomes more active])
#mcq(8, [A catalyst increases the rate of a reaction by], [raising the activation energy], [lowering the activation energy], [increasing the enthalpy change], [shifting the equilibrium to the right])
#mcq(9, [For $"N"_2(g) + 3"H"_2(g) <=> 2"NH"_3(g)$, increasing the pressure will], [shift the equilibrium to the left], [shift the equilibrium to the right], [have no effect], [stop the reaction])
#mcq(10, [The equilibrium constant $K_c$ for $"H"_2 + "I"_2 <=> 2"HI"$ is written], [$["HI"] \/ (["H"_2]["I"_2])$], [$(["H"_2]["I"_2]) \/ ["HI"]$], [$["HI"]^2 \/ (["H"_2]["I"_2])$], [$(["H"_2]["I"_2]) \/ ["HI"]^2$])
#mcq(11, [In the electrolysis of molten sodium chloride, the product at the cathode is], [chlorine], [sodium], [hydrogen], [oxygen])
#mcq(12, [In a galvanic cell made of zinc and copper, the electrons flow through the external circuit], [from copper to zinc], [from zinc to copper], [in both directions], [not at all])

#answer-key-grid(("B", "B", "B", "C", "C", "B", "B", "B", "B", "C", "B", "B"))

#answer-notes((
  ("B", [a strong monobasic acid ionises completely, so $["H"^+] = 0.001 = 10^(-3)$ and $op("pH") = 3$.]),
  ("B", [the equivalence point of a weak acid–strong base titration is basic, so an indicator that changes in the basic range is needed; phenolphthalein changes over 8.3–10.0.]),
  ("B", [$c_a = c_b V_b \/ V_a = 0.100 times 25.0 \/ 20.0 = 0.125$ M, because the acid and the base react 1 : 1.]),
  ("C", [$40 times 250 \/ 100 = 100$ g.]),
  ("C", [combustion releases heat; melting, dissolving ammonium chloride and boiling all absorb it.]),
  ("B", [a negative ΔH means heat is released, so the products sit lower in energy than the reactants.]),
  ("B", [a higher temperature gives the molecules a wider spread of energies, so a larger fraction exceeds $E_a$; the activation energy itself does not change.]),
  ("B", [a catalyst provides an alternative route with a lower activation energy; it does not change ΔH and does not shift the position of equilibrium.]),
  ("B", [four moles of gas become two, so a rise in pressure favours the side with fewer molecules — the right.]),
  ("C", [products over reactants, each raised to the coefficient in the balanced equation.]),
  ("B", [the sodium ion is attracted to the negative cathode and is discharged there as sodium metal.]),
  ("B", [zinc is the more reactive metal, so it is oxidised and releases electrons into the external circuit towards copper.]),
))
