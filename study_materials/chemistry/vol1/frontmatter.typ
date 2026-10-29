#import "template.typ": *

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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 1 OF 4],
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
      Volume 1: Matter, Atoms & Bonding
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Matter, Separation and Purity, Chemical Combination and the Mole,
      the Gas Laws and Kinetic Theory, Atomic Structure and Isotopes,
      the Periodic Table and Periodicity, and Chemical Bonding.
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
          Every subtopic ranked by UTME frequency — the mole calculation, the gas-law substitution, the electron configuration and the bond-type question that appear every single year.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#34D399"))[◆ Apparatus and Structures Drawn to Scale]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Distillation, filtration, the separating funnel, the gas laws on their axes, the orbital diagram, the periodic trend arrows and the dot-and-cross bond diagrams — drawn exactly as the examiner expects them.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#60A5FA"))[▸ Calculate, Then Explain]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Every numerical topic is taught as a method with units: moles from mass, moles from gas volume, moles from concentration, then the reasoning that makes the number mean something.
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
    Chemistry is the shortest UTME science syllabus on paper and the longest in practice, because every topic arrives as a calculation. Volume 1 builds the language the other three volumes use: what matter is, how it is separated, how it is counted in moles, how gases behave, what an atom is made of, why the periodic table is arranged as it is, and why atoms join.
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
  [*2*], [Physical Chemistry], [Kinetics, equilibrium, energetics, acids, bases, salts, pH, volumetric analysis, redox and electrochemistry], [Section B (part)],
  [*3*], [Inorganic Chemistry], [Group trends, the metals and their compounds, extraction and industrial processes, the non-metals, environmental chemistry], [Section C],
  [*4*], [Organic Chemistry & Practical], [Hydrocarbons, functional groups, polymers, soaps, food chemistry, qualitative analysis and practical skills], [Sections D and E],
)

#v(8pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[This volume in one sentence]
  #v(3pt)
  #text(size: 10.2pt)[
    Volume 1 takes you from “how do I separate salt from sand?” to “why does sodium chloride conduct when molten but not when solid?”: the techniques of separation and purity, the mole as the chemist's counting unit, the gas laws with their axes and units, the atom with its protons, neutrons, isotopes and orbitals, the periodic table read as a set of trends, and the three kinds of bonding that hold every substance in the syllabus together.
  ]
]

#v(6pt)

#diagram-fig("diagrams/utme_weight.svg", "Typical number of UTME Chemistry questions per topic in this volume. The mole, atomic structure, periodicity and bonding carry the most marks; separation techniques supply the easiest marks in the paper.")

// ============================================================================
// PAGE: WHY CHEMISTRY MARKS ARE WON HERE
// ============================================================================
#current-chapter.update("How Chemistry Marks Are Won")


#block(
  width: 100%,
  fill: jamb-navy,
  radius: 8pt,
  inset: (x: 16pt, y: 12pt),
)[
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Why Volume 1 Decides Your Chemistry Score]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#A7F3D0"))[
    Two thirds of the Chemistry paper is worked, not remembered. A candidate who can convert grams to moles, and moles to a volume or a concentration, can answer questions from every one of the four volumes. A candidate who cannot will lose marks in kinetics, in titration curves, in electrochemistry and in organic formulae alike. This volume teaches the arithmetic of the subject and the reasons behind it, in that order.
  ]
]

#v(6pt)

== The Three Habits That Decide Your Chemistry Score

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *1 · Write the unit before the number.* Every mark in a calculation is attached to a unit: g mol⁻¹, dm³, mol dm⁻³, kJ mol⁻¹, °C. A number without a unit is half an answer, and a wrong unit is a wrong answer even when the arithmetic is right.

  *2 · Balance the equation first.* Stoichiometry is only valid on a balanced equation. Ratio, then moles, then the asked-for quantity — never the other way round.

  *3 · Say what the particles are doing.* Chemistry is a particle subject. A question about why salt conducts when molten, why a gas pressure rises when it is heated, or why graphite conducts but diamond does not, is always answered by naming the particles and what they do.
]

#v(6pt)

#pagebreak()

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

  [1], [“Which method separates a mixture of two miscible liquids?”], [Fractional distillation — the boiling points differ], [1],
  [2], [“A pure substance melts at …”], [A sharp, constant melting point; impurities lower and broaden it], [1],
  [3], [“The number of moles in 8 g of oxygen gas is …”], [$8 div 32 = 0.25$ mol — use $M_r$, not $A_r$], [2],
  [4], [“What mass of CO₂ is produced when …”], [Balance, ratio, moles, then mass], [2],
  [5], [“A gas at 27 °C is heated to 327 °C at constant pressure. Its volume …”], [Double — use kelvin, $300 "K" arrow 600 "K"$], [3],
  [6], [“The pressure of a fixed mass of gas at constant volume is proportional to …”], [Absolute temperature], [3],
  [7], [“An atom of $""^37_17"Cl"$ contains …”], [17 protons, 20 neutrons, 17 electrons], [4],
  [8], [“The electronic configuration of $""_26"Fe"^(3+)$ is …”], [Remove three electrons from the 4s before the 3d], [4],
  [9], [“Which element has the highest first ionisation energy?”], [The one furthest right and highest up in the period], [5],
  [10], [“Sodium chloride conducts when molten because …”], [Its ions are free to move], [6],
  [11], [“The bond in $"H"_2"O"$ is best described as …”], [Covalent, with hydrogen bonding between molecules], [6],
  [12], [“Which substance has the highest boiling point?”], [The one with the strongest forces *between* its molecules], [6],
)

// ============================================================================
// PAGE: SYLLABUS MAPPING
// ============================================================================
#current-chapter.update("Official JAMB Syllabus Mapping")


== Official JAMB UTME Syllabus Mapping (Volume 1 Chapters)

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

  [*Matter*], [States of matter; physical and chemical changes; elements, compounds and mixtures.], [(i) Classify a substance; (ii) explain a change of state in terms of particles.], [*1*],
  [*Separation techniques*], [Filtration, evaporation, crystallisation, distillation, fractional distillation, chromatography, sublimation, magnetic separation; purity and melting points.], [(i) Choose the method for a given mixture; (ii) explain how a pure substance is identified.], [*1*],
  [*Chemical combination*], [Laws of conservation of mass, constant and multiple proportions; the mole; $A_r$, $M_r$; empirical and molecular formulae; stoichiometry.], [(i) Convert mass to moles and back; (ii) find an empirical formula; (iii) calculate a reacting mass.], [*2*],
  [*Gases*], [Boyle's, Charles', pressure and Avogadro's laws; the ideal gas equation; Dalton's law; kinetic theory; diffusion.], [(i) Apply each law in kelvin; (ii) use $p V = n R T$; (iii) explain diffusion by particle mass.], [*3*],
  [*Atomic structure*], [Sub-atomic particles, atomic number and mass number, isotopes, relative atomic mass, electronic configuration, orbitals.], [(i) Count protons, neutrons and electrons; (ii) write a configuration; (iii) calculate relative atomic mass from isotopes.], [*4*],
  [*Periodic table*], [Groups and periods; trends in radius, ionisation energy, electronegativity, metallic character; group properties.], [(i) Predict a trend; (ii) explain it in terms of nuclear charge and shielding.], [*5*],
  [*Chemical bonding*], [Ionic, covalent, coordinate and metallic bonds; polarity; intermolecular forces; properties of the resulting substances.], [(i) Draw a dot-and-cross diagram; (ii) explain a property from the bonding present.], [*6*],)
]

#v(5pt)

#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[Where the rest of the Chemistry syllabus lives]
  #v(3pt)
  #text(size: 9.6pt)[
    Volume 2 carries kinetics, equilibrium, energetics, acids, bases, salts, pH, titration, redox and electrochemistry; Volume 3 carries the metals, the non-metals, extraction, the major industrial processes and environmental chemistry; Volume 4 carries organic chemistry, polymers, food chemistry, qualitative analysis and the practical paper.
  ]
]

// ============================================================================
// PAGE: HOW TO USE
// ============================================================================
#current-chapter.update("How to Use This Book")


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
    Week 1 — chapters 1 and 2, and the whole of the mole drill. \
    Week 2 — chapter 3, gas-law questions until the kelvin conversion is automatic. \
    Week 3 — chapters 4 and 5, with the periodic table drawn from memory twice. \
    Week 4 — chapter 6 and Mock Examination 1. \
    Week 5 — the 120-question master bank, twenty questions a day, with every miss written into the question map. \
    Week 6 — the second mock paper, the rapid-fire appendix, and nothing new.
  ]
]

#v(6pt)

#block(width: 100%, fill: rgb("#FFFBEB"), stroke: 0.9pt + rgb("#FCD34D"), radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: rgb("#B45309"))[How to read a worked example]
  #v(3pt)
  #text(size: 9.8pt)[
    The method line names the formula. The substitution line puts the numbers in with their units. The answer line gives the value *and* the unit, usually to two or three significant figures. If your answer differs in the last figure only, you are right; if it differs by a factor of 16 or 1000, you used the wrong unit — check the kelvin conversion and the gram-to-kilogram conversion first, because those cause more lost marks than any other slip in chemistry.
  ]
]

// ============================================================================
// PAGE: DIAGNOSTIC PRE-TEST
// ============================================================================
#current-chapter.update("Diagnostic Pre-Test")

#pagebreak()

== Diagnostic Pre-Test (Twelve Minutes)

Twelve questions, one from each chapter and one from each skill the paper tests. Sit them in twelve minutes without notes, then mark yourself against the key. Fewer than eight correct means you should work through Volume 1 chapter by chapter before you begin Volume 2.

#mcq(1, [Which method is most suitable for separating a mixture of ethanol and water?], [filtration], [fractional distillation], [sublimation], [magnetic separation])
#mcq(2, [A pure crystalline solid is best identified by], [its colour], [its sharp melting point], [its mass], [its smell])
#mcq(3, [The number of moles in 4 g of sodium hydroxide ($M_r = 40$) is], [0.1 mol], [0.4 mol], [4 mol], [10 mol])
#mcq(4, [The empirical formula of a compound containing 40 % carbon, 6.7 % hydrogen and 53.3 % oxygen is], [$"CH"_2"O"$], [$"C"_2"H"_4"O"_2$], [$"CHO"$], [$"C"_2"H"_6"O"$])
#mcq(5, [A fixed mass of gas at constant pressure occupies 300 cm³ at 27 °C. At 327 °C its volume will be], [600 cm³], [300 cm³], [3300 cm³], [150 cm³])
#mcq(6, [According to Boyle's law, at constant temperature the pressure of a fixed mass of gas is], [directly proportional to its volume], [inversely proportional to its volume], [independent of volume], [proportional to the square of the volume])
#mcq(7, [An atom of $""^39_19"K"$ contains], [19 protons, 19 neutrons and 19 electrons], [19 protons, 20 neutrons and 19 electrons], [20 protons, 19 neutrons and 20 electrons], [19 protons, 39 neutrons and 19 electrons])
#mcq(8, [The electronic configuration of a chlorine atom ($Z = 17$) is], [2, 8, 7], [2, 8, 8], [2, 7, 8], [8, 8, 1])
#mcq(9, [Across a period from left to right, the atomic radius generally], [increases], [decreases], [stays the same], [increases then decreases])
#mcq(10, [Which element has the largest first ionisation energy?], [sodium], [magnesium], [chlorine], [argon])
#mcq(11, [Sodium chloride conducts electricity when molten because], [electrons are free to move], [ions are free to move], [the molecules are polar], [it contains mobile protons])
#mcq(12, [The bond formed between a hydrogen atom and an oxygen atom in a water molecule is], [ionic], [covalent], [metallic], [a hydrogen bond])

#answer-key-grid(("B", "B", "A", "A", "A", "B", "B", "A", "B", "D", "B", "B"))

#answer-notes((
  ("B", [ethanol and water are miscible liquids with different boiling points, so fractional distillation separates them.]),
  ("B", [a pure solid melts sharply at a constant temperature; an impure one melts over a range and lower down.]),
  ("A", [$n = m div M_r = 4 div 40 = 0.1$ mol.]),
  ("A", [divide each percentage by the atomic mass, then by the smallest: 3.33 : 6.7 : 3.33 gives $"CH"_2"O"$.]),
  ("A", [convert to kelvin: 300 K → 600 K, so the volume doubles to 600 cm³.]),
  ("B", [$p V = "constant"$ at constant temperature, so pressure and volume are inversely proportional.]),
  ("B", [19 protons, 19 electrons, and 39 − 19 = 20 neutrons.]),
  ("A", [$2 + 8 + 7 = 17$, so 2, 8, 7.]),
  ("B", [nuclear charge increases across the period while the shell stays the same, so the atom contracts.]),
  ("D", [argon is a noble gas at the end of period 3, with a full shell and the highest ionisation energy of the four.]),
  ("B", [in the molten state the ions are free to move and carry charge; in the solid they are locked in a lattice.]),
  ("B", [hydrogen and oxygen share a pair of electrons, which is a covalent bond; hydrogen bonding acts between molecules.]),
))
