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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 3 OF 4],
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
      Volume 3: Inorganic Chemistry
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Metals and the Reactivity Series, Groups 1 and 2, Aluminium, Iron and Steel,
      Hydrogen, Oxygen and Nitrogen, Sulphur and the Halogens, and the Chemical
      Industries of Nigeria.
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
          Every subtopic ranked by UTME frequency — the reactivity-series prediction, the Group 1 and 2 trend, the extraction equation, the gas test, the Contact and Haber conditions and the ion that identifies a halide.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#34D399"))[◆ Drawn From the Process Itself]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          The blast furnace band by band, the Bayer and Hall–Héroult cells in section, the Contact and Haber loops, the nitrogen cycle and the halogen displacement tubes — each drawn as the examiner draws it, with the chemistry printed on the drawing.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#60A5FA"))[▸ Equations, Not Paragraphs]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Inorganic chemistry is remembered as equations with conditions attached. Every reaction in this volume is set out with its reagent, its condition and its observation, so that the observation can lead you back to the equation in the hall.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#F87171"))[✓ Practice Qs & Full Solutions]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Forty questions per chapter with a solution for every option, two full CBT mocks, a rapid-fire recall appendix, a 120-question master bank, an equations appendix and a full examination-technique appendix.
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
    Volume 1 taught you what matter is. Volume 2 taught you what matter *does* — energy, rate, equilibrium, acids and electrons. Volume 3 is about the *elements themselves*: which metal gives up its electron to which, how an ore is turned into a metal, what a group of elements has in common, and how those facts are used to make cement, fertiliser, sulphuric acid and safe drinking water.
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
    Inorganic chemistry is one idea repeated: an element's *position* predicts its *behaviour* — how vigorously it reacts, what it forms, whether it is found free or as an ore, and how much energy it takes to get it out — and every chapter in this volume is that idea applied to a group of elements, a process or an industry.
  ]
]

#v(6pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 8pt)[
  #set text(size: 9pt)
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[By the end of this volume you can]
  #v(2pt)
  + place any metal on the series and say how it is extracted;
  + write a Group 1 or Group 2 reaction with water, oxygen or a halogen;
  + draw the blast furnace and the Hall–Héroult cell, zone by zone;
  + give the catalyst and conditions for the Haber, Ostwald and Contact processes;
  + identify an ion from a flame colour, a precipitate or a gas test;
  + name the raw material and the product of Nigeria's six chemical industries.
]

#v(4pt)

#diagram-fig("diagrams/utme_weight.svg", "Typical number of UTME Chemistry questions per topic in this volume. Chapters 4 to 6 carry the largest blocks of marks; the group trends of Chapters 1 and 2 supply the one-mark recall questions that a well-prepared candidate should never lose.", width: 92%)

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
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Why Volume 3 Is the Easiest Volume to Win]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#A7F3D0"))[
    Physical chemistry punishes arithmetic. Inorganic chemistry rewards memory organised into a system. Almost every question in this volume is answered by one of four moves: *place the element*, *name the reagent*, *write the equation*, *state the observation*. The candidates who lose these marks are not the ones who cannot think — they are the ones who learned the reactions as a list instead of as a pattern.
  ]
]

#v(6pt)

#table(
  columns: (1.55fr, 2.0fr, 1.4fr),
  inset: (x: 6pt, y: 4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The move],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the examiner asks],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],

  [Place the element on the series], [“Which of these metals will displace copper from copper(II) sulphate?”], [*1*],
  [Compare the group], [“Which is the most reactive: lithium, sodium or potassium?”], [*2*],
  [Name the reducing agent], [“Aluminium is extracted by electrolysis because …”], [*3*],
  [Name the reagent and the condition], [“The gas evolved when ammonium chloride is heated with calcium hydroxide is …”], [*4*],
  [Match the observation to the ion], [“A yellow precipitate insoluble in ammonia shows the presence of …”], [*5*],
  [Follow the process], [“The purpose of adding cryolite in the Hall–Héroult cell is to …”], [*6*],
)

#v(6pt)

#block(width: 100%, fill: rgb("#FFFBEB"), stroke: 0.9pt + rgb("#FCD34D"), radius: 7pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: rgb("#B45309"))[◆ Read the figure, then read the table]
  #v(2pt)
  #text(size: 9.6pt)[
    Chapters 4, 5 and 6 carry four questions each, so they are worth as much together as the whole of Chapters 1 and 2. But the first two chapters are the cheapest marks in the volume: the reactivity series and the group trends are short, they never change, and they answer the one-mark recall questions that decide the difference between a good score and a very good one.
  ]
]

// ============================================================================
// PAGE: THE THREE HABITS
// ============================================================================
#current-chapter.update("The Three Habits & the Twelve Question Types")
#pagebreak()

== The Three Habits That Decide Your Inorganic Score

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *1 · Put every element on one line before you answer anything.* The reactivity series is not a list to memorise for its own sake: it decides which metal is found free, which is extracted with carbon, which needs electrolysis, which displaces which, and which reacts with cold water, steam or acid alone. Half the questions in this volume are answered the moment the metals are in order.

  *2 · Learn each reaction with its condition attached.* “Chlorine and sodium hydroxide” produces sodium chloride and sodium chlorate(I) *when cold and dilute*, and sodium chloride and sodium chlorate(V) *when hot and concentrated*. The reagent alone does not fix the product; the reagent plus the condition does. Write the condition beside the equation every single time.

  *3 · Convert the observation into a test.* Inorganic chemistry is examined through the eye: a white precipitate that dissolves in excess, a gas that relights a glowing splint, a flame that is lilac. Learn the test as an observation first and the ion second, because that is the order in which the question gives it to you.
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

  [1], [“Which of the following metals occurs free in nature?”], [Gold and platinum — below the metals that react with air and water], [1],
  [2], [“Which metal will displace zinc from zinc sulphate?”], [Only a metal above zinc: magnesium, aluminium, sodium], [1],
  [3], [“On heating, the carbonate that does not decompose is …”], [Sodium and potassium carbonates are stable to heat], [2],
  [4], [“Lithium, sodium and potassium are stored under oil because …”], [They react with oxygen and water in the air], [2],
  [5], [“The role of limestone in the blast furnace is to …”], [Decompose to CaO, which removes SiO₂ as slag], [3],
  [6], [“In the Hall–Héroult cell the cathode reaction is …”], [$op("Al")^(3+) + 3e^- -> op("Al")$; the anode burns away], [3],
  [7], [“The gas prepared by heating ammonium chloride with calcium hydroxide is …”], [Ammonia — collected upward because it is lighter than air], [4],
  [8], [“The catalyst in the Contact process is …”], [Vanadium(V) oxide, V₂O₅, at 450 °C and 1–2 atm], [5],
  [9], [“Chlorine water is added to potassium bromide. The observation is …”], [The solution turns orange as bromine is displaced], [5],
  [10], [“A cream precipitate insoluble in dilute ammonia but soluble in concentrated ammonia is …”], [Silver bromide, AgBr], [5],
  [11], [“The main raw materials for cement are …”], [Limestone and clay, heated in a rotary kiln], [6],
  [12], [“The pollutant that destroys the ozone layer is …”], [CFCs — chlorine atoms catalyse the breakdown of O₃], [6],
)

// ============================================================================
// PAGE: SYLLABUS MAPPING
// ============================================================================
#current-chapter.update("Official JAMB Syllabus Mapping")
#pagebreak()

== Official JAMB UTME Syllabus Mapping (Volume 3 Chapters)

#v(2pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 8pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[How to read this table]
  #h(6pt)
  #text(font: "DejaVu Sans", size: 9.2pt)[
    The left column is the wording of the official syllabus. The middle column is what the examiner actually tests. The right column is the chapter that teaches it, and the drill that proves it.
  ]
]

#[
#set text(size: 8.8pt)
#table(
  columns: (1.45fr, 1.95fr, 2.05fr, auto),
  inset: (x: 6pt, y: 5.4pt),
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Syllabus topic],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Examinable objectives],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you must be able to do],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],

  [*Metals and the reactivity series*], [Occurrence of metals; the activity series; extraction by carbon reduction and by electrolysis; alloys; corrosion.], [(i) Predict a displacement; (ii) choose an extraction method; (iii) explain alloy properties; (iv) describe rusting and its prevention.], [*1*],
  [*Group 1 and Group 2 elements*], [Physical and chemical properties; reactions with water, oxygen and the halogens; trends in solubility and thermal stability; flame tests.], [(i) Write the reaction of a Group 1 or 2 metal with water; (ii) explain the trend in reactivity; (iii) identify a metal from its flame colour; (iv) compare the solubility of hydroxides and sulphates], [*2*],
  [*Aluminium, iron and steel*], [Extraction of aluminium by electrolysis; the blast furnace; manufacture and properties of steel; alloys of aluminium.], [(i) Explain the role of cryolite; (ii) write the electrode equations; (iii) name the reactions at each furnace temperature; (iv) relate carbon content to steel properties], [*3*],
  [*Non-metals: hydrogen, oxygen and nitrogen*], [Preparation and properties; uses; the Haber and Ostwald processes; the nitrogen cycle; air pollution.], [(i) Describe a preparation with a diagram; (ii) test for each gas; (iii) state the conditions of both processes; (iv) trace nitrogen through the cycle], [*4*],
  [*Sulphur and the halogens*], [Allotropes and uses of sulphur; the Contact process; properties and reactions of the halogens; halide identification; disproportionation.], [(i) Write the Contact process equations with conditions; (ii) predict halogen displacement; (iii) identify a halide from its silver salt; (iv) explain the trend in oxidising power], [*5*],
  [*Chemical industry and the environment*], [Nigeria's major chemical industries; water treatment; pollution and control; waste management and recycling.], [(i) Name the raw material, process and product of an industry; (ii) describe the stages of water treatment; (iii) match a pollutant to its effect and control], [*6*],)
]

#v(5pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[One sentence per chapter — what the examiner is really testing]
  #v(3pt)
  #set text(size: 9.1pt)
  + *Chapter 1.* Position on the series decides how the metal is found, how it is extracted, and which metal displaces which.
  + *Chapter 2.* Reactivity rises down Group 1 and Group 2, and solubility runs the other way for the hydroxides and sulphates.
  + *Chapter 3.* Aluminium needs electricity because it sits above carbon; iron needs only coke because it sits below.
  + *Chapter 4.* Each gas is prepared by one reaction and identified by one test, and each industrial process is a compromise between yield, rate and cost.
  + *Chapter 5.* Sulphur is oxidised step by step to sulphuric acid; the halogens fall in reactivity as they rise in colour and density.
  + *Chapter 6.* Every industry is a raw material plus energy; every pollutant is a product nobody wanted.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[
  *Where the rest of the syllabus lives.* Volume 1 carries matter, separation, the mole, gases, atomic structure, periodicity and bonding; Volume 2 carries acids and bases, solutions, energetics, rates, equilibrium, redox and electrochemistry; Volume 4 carries organic chemistry, polymers, food chemistry, qualitative analysis and the practical paper.
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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • CHEMISTRY VOLUME 3]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
]

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Six chapters, two mock papers, the 120-question master bank and eleven appendices. The page numbers are printed into this list, so you can turn straight to a section without hunting for it.]

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
  + *The teaching sections.* The trend first, then the reactions, then the process, then the use — with a worked example wherever a calculation is possible.
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
    Week 1 — chapter 1, the reactivity series, and every displacement in the drill. \
    Week 2 — chapter 2, Groups 1 and 2, with the flame colours learned aloud. \
    Week 3 — chapter 3, extraction: Bayer, Hall–Héroult and the blast furnace, drawn from memory. \
    Week 4 — chapter 4, the gases, the Haber and Ostwald processes and the nitrogen cycle. \
    Week 5 — chapter 5, sulphur and the halogens, and Mock Examination 1. \
    Week 6 — chapter 6, the industries and the environment, the 120-question bank and Mock Examination 2.
  ]
]

#v(6pt)

#block(width: 100%, fill: rgb("#FFFBEB"), stroke: 0.9pt + rgb("#FCD34D"), radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: rgb("#B45309"))[How to read a reaction in this book]
  #v(3pt)
  #text(size: 9.8pt)[
    Every reaction is given as *reagents → product*, with the condition printed underneath and the observation beside it. Read the three together and then cover the product: if you can produce the product from the condition, you own the reaction. If you can only produce it from the equation, you have memorised a line rather than learned a fact, and the examiner's version of the question — with a different reagent — will defeat you.
  ]
]

#v(4pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-navy)[The six chapters at a glance]
  #v(3pt)
  #set text(size: 9.4pt)
  #table(
    columns: (auto, 1.1fr, 1.9fr),
    inset: (x: 5pt, y: 3pt),
    align: (center + horizon, left + horizon, left + horizon),
    stroke: 0.4pt + jamb-border,
    [*1*], [Metals and the reactivity series], [occurrence, extraction, displacement, alloys, corrosion],
    [*2*], [Groups 1 and 2], [trends in reactivity and solubility, flame tests, thermal stability],
    [*3*], [Aluminium, iron and steel], [Bayer, Hall–Héroult, the blast furnace, steel and alloys],
    [*4*], [Hydrogen, oxygen and nitrogen], [preparations and tests, Haber, Ostwald, the nitrogen cycle],
    [*5*], [Sulphur and the halogens], [the Contact process, displacement, silver halides, disproportionation],
    [*6*], [Industry and the environment], [cement, soap, glass, fertiliser, water treatment, pollution, waste],
  )
]

// ============================================================================
// PAGE: DIAGNOSTIC PRE-TEST
// ============================================================================
#current-chapter.update("Diagnostic Pre-Test")

#pagebreak()

== Diagnostic Pre-Test (Twelve Minutes)

Twelve questions, two from each chapter, in the style the CBT engine uses. Sit them in twelve minutes without notes, then mark yourself against the key. Fewer than eight correct means you should work through Volume 3 chapter by chapter before you sit a full mock.

#mcq(1, [Which metal occurs in nature in the free state?], [sodium], [iron], [gold], [aluminium])
#mcq(2, [A piece of zinc is placed in copper(II) sulphate solution. The observation is that], [copper dissolves and zinc is deposited], [zinc dissolves and copper is deposited], [both metals dissolve], [no reaction occurs])
#mcq(3, [The most reactive of these metals is], [calcium], [magnesium], [sodium], [aluminium])
#mcq(4, [Sodium is stored under paraffin oil because it reacts with], [nitrogen only], [oxygen and water vapour in the air], [carbon dioxide only], [the glass of the bottle])
#mcq(5, [The reducing agent in the extraction of iron in the blast furnace is], [carbon], [carbon monoxide], [limestone], [silicon(IV) oxide])
#mcq(6, [Cryolite is added to the Hall–Héroult cell in order to], [increase the melting point of alumina], [dissolve the alumina and lower the operating temperature], [act as a catalyst], [prevent oxidation of the aluminium])
#mcq(7, [The gas evolved when ammonium chloride is heated with calcium hydroxide is], [chlorine], [hydrogen chloride], [ammonia], [nitrogen])
#mcq(8, [The catalyst used in the Contact process is], [iron], [platinum], [vanadium(V) oxide], [nickel])
#mcq(9, [Chlorine water is added to potassium bromide solution. The colour observed is], [pale yellow], [orange], [purple], [colourless])
#mcq(10, [Which of the following is a greenhouse gas?], [nitrogen], [oxygen], [methane], [argon])
#mcq(11, [The main raw materials in the manufacture of cement are], [limestone and clay], [sand and soda ash], [bauxite and cryolite], [crude oil and natural gas])
#mcq(12, [The gas that turns limewater milky is], [oxygen], [carbon dioxide], [hydrogen], [sulphur(IV) oxide])

#answer-key-grid(("C", "B", "C", "B", "B", "B", "C", "C", "B", "C", "A", "B"))

#answer-notes((
  ("C", [gold and platinum are below hydrogen in the reactivity series, so they are not oxidised by air or water and are found uncombined.]),
  ("B", [zinc is above copper in the series, so it displaces copper: the blue colour fades and a red-brown deposit forms on the zinc.]),
  ("C", [sodium reacts with cold water violently; calcium reacts readily, magnesium slowly with cold water and aluminium hardly at all because of its oxide layer.]),
  ("B", [sodium tarnishes in air as it forms the oxide, and reacts with water vapour, so it is kept under oil.]),
  ("B", [the carbon burns to carbon monoxide, and it is the CO that reduces the iron(III) oxide: Fe₂O₃ + 3CO → 2Fe + 3CO₂.]),
  ("B", [cryolite dissolves the alumina and lets the cell run at about 950 °C instead of the 2045 °C melting point of pure alumina.]),
  ("C", [ammonium salts release ammonia when warmed with a base; the gas is lighter than air and is collected upward.]),
  ("C", [vanadium(V) oxide, V₂O₅, catalyses the oxidation of sulphur(IV) oxide to sulphur(VI) oxide at about 450 °C.]),
  ("B", [chlorine is above bromine, so it displaces it; bromine water is orange.]),
  ("C", [methane absorbs infrared radiation; nitrogen, oxygen and argon do not.]),
  ("A", [cement is made by heating limestone and clay together in a rotary kiln.]),
  ("B", [carbon dioxide forms insoluble calcium carbonate, which makes the limewater milky.])
))
