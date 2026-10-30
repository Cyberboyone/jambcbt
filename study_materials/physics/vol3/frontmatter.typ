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

    #text(font: "DejaVu Sans", size: 38pt, weight: "bold", fill: white)[PHYSICS]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 13.4pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 3: Heat & Thermodynamics
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Temperature and Thermometers, Expansion, Heat Transfer, Calorimetry and
      Latent Heat, the Gas Laws and Kinetic Theory, and Thermodynamics — with
      28 reviewed diagrams, 30 worked examples and a note on every exam-style
      option.
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
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Calorimetry and the method of mixtures, the gas laws and the
          ideal-gas equation, and specific and latent heat. Heat capacity and
          the gas laws together carry the heaviest weight of the six chapters.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ What Makes This Volume Different]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Every temperature in every worked example is carried in kelvin as
          well as °C, because the gas law is the one place where a forgotten
          conversion costs a whole question — and every example ends with a
          *Check* line that re-derives the answer by a second route.
        ]
      ],
    )

    #v(16mm)

    #line(length: 100%, stroke: 0.8pt + rgb("#334155"))
    #v(3mm)
    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),
      text(font: "DejaVu Sans", size: 8.6pt, fill: rgb("#94A3B8"))[
        JAMB CBT Master Study Series • Physics • Volume 3 of 4
      ],
      text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#34D399"))[
        2026 Edition
      ],
    )
  ]
]

// ============================================================================
// PAGE: THE SERIES MAP
// ============================================================================
#pagebreak()

= The Physics Series, and Where This Volume Sits

Physics in the UTME is six topics and about forty equations, and the questions are not designed to trick you — they are designed to find out whether you can pick the right equation under time pressure. The four volumes of this series take the six topics in the order the syllabus lists them, so that each one arrives with the mathematics it needs already in place.

#v(4pt)

#table(
  columns: (0.5fr, 1.5fr, 2.3fr, 0.9fr),
  inset: 5.5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Vol.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it covers],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[UTME],
  ),
  [*1*], [Mechanics & Properties of Matter], [Measurement, motion, forces, energy, circular motion and gravitation, properties of matter], [Section A],
  [*2*], [Waves, Sound & Light], [Wave motion, sound, mirrors, refraction, lenses and optical instruments, colour and the spectrum], [Section B],
  [*3*], [Heat & Thermodynamics], [Temperature and thermometers, expansion, heat transfer, calorimetry and latent heat, the gas laws, thermodynamics and heat engines], [Section B],
  [*4*], [Electricity, Magnetism & Modern Physics], [Electrostatics, current electricity, magnetism, induction, electronics and radioactivity], [Sections C and D],
)

#v(6pt)

This volume is the one where a formula and a thermometer have to agree. Heat is the only part of the syllabus where the answer can be checked by a second sense — you can feel that the water in the calorimeter has warmed, and you can see the ice stop melting while the temperature holds at zero. Use that: every worked example here is a described experiment first and an equation second, because the examiner writes the questions the same way round.

#v(4pt)

#diagram-fig("diagrams/utme_weight.svg",
  "Typical number of UTME Physics questions per chapter: calorimetry and the gas laws carry the largest blocks of marks.", width: 84%)

#concept-box("How to read the weights")[
  These are averages from recent papers — a guide to where a revision hour returns the most marks, not a promise about your paper. Calorimetry and the gas laws together meet about a quarter of the Section B questions on their own, and almost every one of them needs a correct kelvin temperature before it can be started.
]

#v(6pt)

= The Six Chapters at a Glance

#table(
  columns: (0.5fr, 1.5fr, 2.6fr, 0.7fr),
  inset: 5.5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topic],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[By the end of it you can],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Weight],
  ),
  [*1*], [Temperature and Thermometers], [convert between °C and K, define the fixed points, and calibrate a thermometer from two readings], [3],
  [*2*], [Expansion of Solids, Liquids and Gases], [use $alpha$, $2 alpha$ and $3 alpha$ with confidence, and explain the anomalous expansion of water], [3],
  [*3*], [Heat Transfer], [compute conduction, describe convection, and explain why a black surface both absorbs and emits best], [3],
  [*4*], [Calorimetry, Latent Heat and Vapours], [use $Q = m c Delta theta$, run a mixture calculation, and handle $Q = m L$], [4],
  [*5*], [The Gas Laws and the Kinetic Theory], [apply Boyle, Charles, the pressure law and $p V = n R T$, and derive pressure from molecular motion], [4],
  [*6*], [Thermodynamics and Heat Engines], [use the first law, read a $p V$ diagram, and compute the efficiency of an engine], [3],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[The weight is the average number of questions the topic has carried in recent UTME papers. Chapters 4 and 5 are the ones to finish first if time is short.]

#v(6pt)

== The Equations That Carry the Paper

#table(
  columns: (1.5fr, 0.35fr, 1.5fr, 0.35fr),
  inset: 4.5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [$theta\/"°C" + 273 = T\/"K"$], [1], [$Q = m c Delta theta$], [4],
  [$L = L_0 (1 + alpha Delta theta)$], [2], [$Q = m L$], [4],
  [$V = V_0 (1 + gamma Delta theta)$], [2], [$p V = n R T$], [5],
  [$k A (theta_1 - theta_2) \/ L$], [3], [$p V = 1\/3 N m c^2$], [5],
  [$P = sigma A T^4$], [3], [$Delta U = Q - W$], [6],
)

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The number in the narrow column is the chapter that teaches the equation. A formula you cannot place in its chapter is a formula you will not recognise in the hall.]

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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • PHYSICS VOLUME 3]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
]

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Six chapters, each with five worked examples, a recap card and a two-minute set. The page numbers are printed into this list, so you can turn straight to a section without hunting for it.]

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

Every chapter is built in the same order, and the order is the method:

#v(3pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Exam radar.* The syllabus objectives, the high-yield areas and the three traps that cost the most marks.
  + *The teaching sections.* The definition, then the equation, then the diagram, then a worked example wherever a calculation is possible.
  + *Five worked examples.* Two foundation, two UTME standard, one JAMB challenge — each ending in a *Check* line that re-derives the answer by a second route.
  + *Recap card and “in one breath”.* The whole chapter on one page, and the same chapter in a paragraph you can recite.
  + *Two-minute set.* Four questions in the style of the CBT engine, with the key and a note on every option.
  + *The drill.* Forty questions with full solutions. Attempt all forty before you look at the key.
]

#v(6pt)

#concept-box("The conventions this book uses")[
  + $g = 10$ m s⁻² and $pi = 3.14$ throughout, because that is what the UTME paper uses. Where a question gives its own value, use that.
  + Water: $c = 4200$ J kg⁻¹ K⁻¹, $L_"f" = 3.34 times 10^5$ J kg⁻¹ and $L_"v" = 2.26 times 10^6$ J kg⁻¹, unless a question says otherwise.
  + Specific heat capacities are for one kilogram; the older tables give them in J g⁻¹ K⁻¹ for one gram. Read the unit before you substitute.
  + Every temperature that goes into a gas law is in *kelvin*. A Celsius temperature in $p V = n R T$ is the single most expensive slip in this volume.
  + $R = 8.31$ J mol⁻¹ K⁻¹ and one mole of any gas occupies 22.4 dm³ at s.t.p.
  + Units are written with a space and a negative index: J kg⁻¹ K⁻¹, not J/kg/K.
]

#v(6pt)

#trap-box("Four habits that decide a Heat score")[
  *1 · Convert to kelvin before you write the equation.* Not after. Write the temperature, then write it again in K beside it, then start.

  *2 · Decide which side is losing and which is gaining.* A mixture question that loses track of the direction produces a sensible-looking number with the wrong sign.

  *3 · Read whether the question asks for the rate or for the total.* A conduction question asks for watts, a calorimetry question asks for joules; the same formula with the wrong quantity is a lost mark.

  *4 · Ask whether the temperature is changing or holding.* A thermometer that does not move while heat is still going in is a change of state, and that is where $Q = m L$ lives.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[Where a section is marked with a green bar and the word CONCEPT, it is a definition the examiner quotes back at you; where it is marked JAMB TRAP, it is the mistake the examiner is banking on. Both are worth more than their length in the chapter.]
