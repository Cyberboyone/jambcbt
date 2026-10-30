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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 4 OF 4],
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
      Volume 4: Organic Chemistry & Practical
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Alkanes and Crude Oil, Alkenes and Alkynes, Alcohols and Alkanoic Acids,
      Esters, Soaps and Polymers, Carbohydrates and Proteins, and the Practical
      Paper — Qualitative Analysis, Titration and Chromatography.
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
          Every subtopic ranked by UTME frequency — the functional-group identification, the alkene test, the alcohol oxidation, the ester and soap equations, the food tests and the titration calculation.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#34D399"))[◆ Drawn From the Bench]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          The fractionating column, the cracking unit and the functional-group map; the fermentation apparatus and the liebig condenser; the soap micelle, the titration set-up and the chromatography tank — each drawn with the chemistry printed on the drawing.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#60A5FA"))[▸ Reagents With Conditions]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Organic chemistry is a map of conversions. Every reaction is given with its reagent, its condition and its observation, so that the condition on its own is enough to bring back the product in the hall.
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
    Volume 1 taught you what matter is. Volume 2 taught you what matter *does* — energy, rate, equilibrium, acids and electrons. Volume 3 was the *elements*: which metal gives up its electron to which, and how an ore becomes a metal. This volume is about *carbon*: how a handful of atoms builds a hundred thousand compounds, how a functional group decides what a molecule will do, and how the same few reactions are examined every single year.
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
    Organic chemistry is one question repeated: *what functional group does this molecule carry?* The group decides the reaction, the reaction decides the reagent, and the reagent carries its condition with it — so a candidate who can name the group has, in effect, already been given the answer.
  ]
]

#v(6pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 8pt)[
  #set text(size: 9pt)
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[By the end of this volume you can]
  #v(2pt)
  + name an alkane, alkene or alcohol from its structure, and draw it from its name;
  + say what cracking, reforming and fractional distillation each do, and why;
  + test an unknown for unsaturation, an alcohol, an acid, a sugar, a starch and a protein;
  + follow a conversion from one functional group to the next on the functional-group map;
  + write the equation for an ester, a fat, a soap and a condensation polymer;
  + read a titration, an Rf value and a qualitative analysis scheme without hesitating.
]

#v(4pt)

#diagram-fig("diagrams/utme_weight.svg", "Typical number of UTME Chemistry questions per topic. Chapters 1 to 3 carry the largest blocks of marks; Chapter 6 carries the practical questions that most candidates never revise.", width: 92%)

// ============================================================================
// PAGE: WHY THIS VOLUME REWARDS A MAP
// ============================================================================
#current-chapter.update("How Organic Marks Are Won")

#block(
  width: 100%,
  fill: jamb-navy,
  radius: 8pt,
  inset: (x: 16pt, y: 12pt),
)[
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Why Volume 4 Is the Volume You Can Finish]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#A7F3D0"))[
    There are millions of organic compounds and about a dozen organic reactions. The syllabus asks for the dozen, applied to a molecule you have not seen before: *name the group*, *name the reagent*, *write the equation*, *state the observation*. Candidates who lose these marks are not the ones who cannot reason — they are the ones who learned the reactions as forty separate facts instead of one map.
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

  [Name the group], [“CH₃CH₂COOH belongs to the homologous series of …”], [*3*],
  [Name the reagent], [“Which reagent would distinguish hexane from hex-1-ene?”], [*2*],
  [Name the condition], [“Ethanol is converted to ethene by heating with …”], [*2, 3*],
  [Write the equation], [“The equation for the saponification of a fat is …”], [*4*],
  [Follow the conversion], [“Ethene → ethanol → ethanoic acid → ethyl ethanoate”], [*2–4*],
  [Match the observation], [“A violet colour with Biuret reagent shows the presence of …”], [*5*],
)

#v(6pt)

#block(width: 100%, fill: rgb("#FFFBEB"), stroke: 0.9pt + rgb("#FCD34D"), radius: 7pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: rgb("#B45309"))[◆ Read the figure, then read the table]
  #v(2pt)
  #text(size: 9.6pt)[
    Chapters 1 to 3 carry the largest share of organic questions, but the cheapest marks need no arithmetic at all: the test for unsaturation, the colour change on oxidation, the smell of an ester and the colour of a precipitate — asked every year, in the same words, and answered in one line. Chapter 6 is the chapter most candidates skip, and the one where a handful of memorised observations pays best.
  ]
]

// ============================================================================
// PAGE: THE THREE HABITS
// ============================================================================
#current-chapter.update("The Three Habits & the Twelve Question Types")
#pagebreak()

== The Three Habits That Decide Your Organic Score

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *1 · Identify the functional group before you read the question twice.* Every organic question begins with a structure or a name, and the group in that structure narrows the answer to two or three possibilities before the options are even read. The functional-group map in Appendix E is the whole of this habit on one page.

  *2 · Learn the reagent with its condition, not on its own.* Bromine in the dark adds across a double bond; bromine in sunlight substitutes into an alkane. Concentrated sulphuric acid at 170 °C dehydrates ethanol to ethene; the same acid with an alcohol and an acid makes an ester. The reagent alone does not fix the product — the reagent plus the condition does.

  *3 · Convert every observation into a sentence you could write in the hall.* “Orange bromine water goes colourless” is not a fact about bromine; it is the sentence *this compound is unsaturated*. The examination gives you the observation and asks for the compound, so learn the observation first and the compound second.
]

#v(6pt)

== The Twelve Question Types That Reappear Every Year

#[
#set text(size: 8.4pt)
#table(
  columns: (0.3fr, 1.65fr, 1.6fr, 0.4fr),
  inset: (x: 4.5pt, y: 2.4pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How the question is worded],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the examiner wants],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch.],

  [1], [“The general formula of the alkanes is …”], [CₙH₂ₙ₊₂ — two H more than an alkene], [1],
  [2], [“The fraction that distils first is …”], [Refinery gas, C₁–C₄ — the lowest b.p.], [1],
  [3], [“Cracking of C₁₆H₃₄ gives …”], [An alkane and an alkene; carbon balanced], [1],
  [4], [“The IUPAC name of CH₃CH(CH₃)CH₂CH₃ is …”], [2-methylbutane; number from the near end], [1],
  [5], [“Which reagent distinguishes hexane from hex-1-ene?”], [Bromine water — decolourised by the alkene], [2],
  [6], [“The polymer formed from ethene is …”], [Polyethene, by addition], [2],
  [7], [“Ethanol → ethene by heating with …”], [Conc. H₂SO₄ at 170 °C — dehydration], [2, 3],
  [8], [“Which alcohol gives a ketone on oxidation?”], [A secondary alcohol — propan-2-ol], [3],
  [9], [“An acid and an alcohol with conc. H₂SO₄ give …”], [An ester — ethyl ethanoate here], [3, 4],
  [10], [“Soap does not lather in hard water because …”], [Calcium salts of the acid are insoluble], [4],
  [11], [“Nylon is formed by … polymerisation”], [Condensation — water is eliminated], [4, 5],
  [12], [“A violet colour with Biuret reagent shows …”], [A protein — peptide bonds bind Cu²⁺], [5],
)
]

#v(4pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 9pt)[
  #set text(size: 9.2pt)
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[And the two that belong to the practical paper]
  #v(2pt)
  + *The titration calculation.* $c_1 V_1 \/ n_1 = c_2 V_2 \/ n_2$, with the volumes in the same unit and the mole ratio read from the equation. Ask whether the acid is monobasic or dibasic before dividing.
  + *The Rf value.* $R_f = "distance moved by the spot" \/ "distance moved by the solvent front"$, always less than one, and always quoted with the solvent used.
]

// ============================================================================
// PAGE: SYLLABUS MAPPING
// ============================================================================
#current-chapter.update("Official JAMB Syllabus Mapping")
#pagebreak()

== Official JAMB UTME Syllabus Mapping (Volume 4 Chapters)

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
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Syllabus topic],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Examinable objectives],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you must be able to do],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],

  [*Petroleum and the alkanes*], [Crude oil and its fractions; fractional distillation; cracking and reforming; the alkanes, their general formula, isomerism and substitution.], [(i) Name the fractions in order; (ii) explain what cracking and reforming produce; (iii) draw and name the isomers of a given alkane; (iv) write the chlorination of methane], [*1*],
  [*Alkenes and alkynes*], [The double and triple bond; general formulae; isomerism; preparation; addition reactions; polymerisation; the tests for unsaturation.], [(i) Explain why the double bond is reactive; (ii) write an addition with a named reagent and condition; (iii) draw the repeat unit of a polymer; (iv) use bromine water as a test], [*2*],
  [*Alcohols and alkanoic acids*], [Classification of alcohols; fermentation and hydration; oxidation and dehydration; the acidity of the alkanoic acids and their reactions.], [(i) Classify and name an alcohol; (ii) give the product of oxidation for each class; (iii) state the conditions for fermentation; (iv) write the reactions of an acid with a metal, a base and a carbonate], [*3*],
  [*Esters, fats, soaps and polymers*], [Esterification; fats and oils; saponification and the action of soap; addition and condensation polymerisation; natural and synthetic polymers.], [(i) Write the esterification equation; (ii) explain why soap forms a scum; (iii) distinguish addition from condensation; (iv) name the monomer of a given polymer], [*4*],
  [*Carbohydrates and proteins*], [Monosaccharides, disaccharides and polysaccharides; hydrolysis; the structure and hydrolysis of proteins; food tests and the food industry.], [(i) Classify a sugar; (ii) write the hydrolysis of sucrose and starch; (iii) describe the Biuret, Benedict's and iodine tests; (iv) explain denaturation], [*5*],
  [*The practical paper*], [Separation and purification; titration; chromatography; qualitative analysis of gases, cations and anions; the recording of observations and conclusions.], [(i) Choose a separation method; (ii) read a burette and calculate a concentration; (iii) calculate an Rf; (iv) name the gas or ion from a stated observation], [*6*],)
]

#v(5pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[One sentence per chapter — what the examiner is really testing]
  #v(3pt)
  #set text(size: 9.1pt)
  + *Chapter 1.* Carbon forms chains, and the length of the chain decides the boiling point and the fraction.
  + *Chapter 2.* A double bond is a pair of electrons waiting to be attacked, and every alkene reaction is that attack.
  + *Chapter 3.* The class of the alcohol decides the product, and the acid is a weak acid for one reason — the ion is stabilised.
  + *Chapter 4.* An ester is an acid plus an alcohol minus water, and soap is that ester taken apart again by alkali.
  + *Chapter 5.* Sugars, starches and proteins are all condensation polymers, and hydrolysis takes every one of them back.
  + *Chapter 6.* The practical paper tests whether you can see, record and conclude — not whether you can remember.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[
  *Where the rest of the syllabus lives.* Volume 1 carries matter, separation, the mole, gases, atomic structure, periodicity and bonding; Volume 2 carries acids and bases, solutions, energetics, rates, equilibrium, redox and electrochemistry; Volume 3 carries the metals, the non-metals and the chemical industries.
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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • CHEMISTRY VOLUME 4]
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
  + *The teaching sections.* The group first, then the reactions, then the test, then the use — with a worked example wherever a calculation is possible.
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
    Week 1 — chapter 1, crude oil, the column and every isomer of the first five alkanes. \
    Week 2 — chapter 2, the double bond, addition and the test for unsaturation. \
    Week 3 — chapter 3, fermentation, oxidation and the alkanoic acids. \
    Week 4 — chapter 4, esters, soaps and polymers, and Mock Examination 1. \
    Week 5 — chapter 5, sugars, starches and proteins, with every food test learned by colour. \
    Week 6 — chapter 6, the practical paper, the 120-question bank and Mock Examination 2.
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
    [*1*], [Alkanes and crude oil], [fractions, cracking, isomerism, substitution, the fuel gases],
    [*2*], [Alkenes and alkynes], [the double bond, addition, polymerisation, the unsaturation test, ethyne],
    [*3*], [Alcohols and alkanoic acids], [fermentation, distillation, oxidation, dehydration, acidity, esters],
    [*4*], [Esters, soaps and polymers], [esterification, fats and oils, saponification, addition and condensation polymers],
    [*5*], [Carbohydrates and proteins], [mono-, di- and polysaccharides, hydrolysis, peptides, food tests, denaturation],
    [*6*], [Practical chemistry], [separation, titration, chromatography, recrystallisation, gas and cation tests],
  )
]

// ============================================================================
// PAGE: DIAGNOSTIC PRE-TEST
// ============================================================================
#current-chapter.update("Diagnostic Pre-Test")

#pagebreak()

== Diagnostic Pre-Test (Twelve Minutes)

Twelve questions, two from each chapter, in the style the CBT engine uses. Sit them in twelve minutes without notes, then mark yourself against the key. Fewer than eight correct means you should work through Volume 4 chapter by chapter before you sit a full mock.

#mcq(1, [The general formula of the alkanes is], [CₙH₂ₙ], [CₙH₂ₙ₋₂], [CₙH₂ₙ₊₂], [CₙHₙ])
#mcq(2, [The fraction that leaves the fractionating column first is], [bitumen], [diesel], [kerosene], [refinery gas])
#mcq(3, [The reaction between ethene and bromine water is an example of], [substitution], [addition], [elimination], [reduction])
#mcq(4, [Which reagent distinguishes hexane from hex-1-ene?], [limewater], [sodium], [bromine water], [litmus solution])
#mcq(5, [When ethanol is warmed with acidified potassium dichromate(VI), the colour change is from], [purple to colourless], [green to orange], [colourless to purple], [orange to green])
#mcq(6, [The alcohol that gives a ketone on oxidation is], [methanol], [propan-1-ol], [propan-2-ol], [butan-1-ol])
#mcq(7, [The gas evolved when ethanoic acid is added to sodium carbonate is], [hydrogen], [oxygen], [chlorine], [carbon dioxide])
#mcq(8, [The reaction of a fat with hot concentrated sodium hydroxide solution is called], [esterification], [saponification], [hydrogenation], [polymerisation])
#mcq(9, [Which of the following polymers is formed by condensation?], [polyethene], [polypropene], [nylon], [poly(chloroethene)])
#mcq(10, [A solution gives a brick-red precipitate with Benedict's reagent. It contains], [a protein], [starch], [a reducing sugar], [a fat])
#mcq(11, [25.0 cm³ of 0.100 mol dm⁻³ sodium hydroxide neutralises 25.0 cm³ of hydrochloric acid. The concentration of the acid is], [0.0500 mol dm⁻³], [0.100 mol dm⁻³], [0.200 mol dm⁻³], [0.400 mol dm⁻³])
#mcq(12, [A spot moves 3.0 cm while the solvent front moves 6.0 cm. The Rf value is], [0.20], [0.30], [0.50], [2.00])

#answer-key-grid(("C", "D", "B", "C", "D", "C", "D", "B", "C", "C", "B", "C"))

#answer-notes((
  ("C", [the alkane carries two hydrogens more than the alkene of the same carbon count: CₙH₂ₙ₊₂, as in C₂H₆.]),
  ("D", [the column is a temperature gradient, and the smallest molecules — refinery gas, C₁ to C₄ — leave the cool top first.]),
  ("B", [the bromine adds across the double bond, so nothing is lost: the orange colour goes as a colourless dibromo compound forms.]),
  ("C", [bromine water is decolourised by the alkene and not by the alkane; sodium would react with the alcohol, and limewater and litmus test neither.]),
  ("D", [dichromate(VI) is orange and is reduced to chromium(III), which is green; the colour change is the evidence of oxidation.]),
  ("C", [propan-2-ol is secondary: the carbinol carbon has one hydrogen, so oxidation gives propanone and stops there.]),
  ("D", [an acid and a carbonate give the salt, water and carbon dioxide — the test that separates an acid from an alcohol.]),
  ("B", [alkaline hydrolysis of a fat is saponification; it produces the soap and glycerol.]),
  ("C", [nylon is a polyamide, made by condensation with the loss of water; the other three are addition polymers of alkenes.]),
  ("C", [copper(II) is reduced to copper(I) oxide, which is the brick-red precipitate; sucrose would give no change until it is hydrolysed.]),
  ("B", [the acid and the alkali react one to one and the volumes are equal, so the concentrations are equal at 0.100 mol dm⁻³.]),
  ("C", [Rf is the distance moved by the spot divided by the distance moved by the solvent front: 3.0 ÷ 6.0 = 0.50.]),
))
