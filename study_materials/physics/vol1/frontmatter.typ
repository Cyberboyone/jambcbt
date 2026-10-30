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

    #text(font: "DejaVu Sans", size: 38pt, weight: "bold", fill: white)[PHYSICS]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 13.4pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 1: Mechanics & Properties of Matter
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Measurement and Units, Motion in a Straight Line, Forces and Newton's Laws,
      Work and Energy, Circular Motion and Gravitation, and the Properties of
      Matter — with 34 reviewed diagrams, 30 worked examples and a note on
      every exam-style option.
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
          Measurement and dimensions, equations of motion, Newton's laws in a
          lift, moments, momentum and collisions, work and power, circular
          motion, SHM and flotation. Chapters 3 and 6 carry the heaviest weight.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ What Makes This Volume Different]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Every worked example ends with a *Check* line that re-derives the
          answer by a second route, and every chapter ends with the four
          questions the examiner actually asks, each with a note on why the
          other three options are wrong.
        ]
      ],
    )

    #v(18mm)

    #line(length: 100%, stroke: 0.8pt + rgb("#334155"))
    #v(3mm)
    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),
      text(font: "DejaVu Sans", size: 8.6pt, fill: rgb("#94A3B8"))[
        JAMB CBT Master Study Series • Physics • Volume 1 of 4
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
  [*2*], [Waves, Sound & Light], [Waves and their properties, sound, reflection and refraction, lenses and optical instruments, the electromagnetic spectrum], [Section B],
  [*3*], [Electricity, Magnetism & Modern Physics], [Electrostatics, current electricity, magnetism, electromagnetic induction, electronics, radioactivity and atomic physics], [Sections C and D],
  [*4*], [Practical Physics & the CBT Papers], [Instruments, measurements, graph work, error analysis, the practical paper and two full mock examinations],
)

#v(6pt)

This volume carries the two topics that everything else rests on. The mechanics half builds from the ruler to the satellite: measurement and its uncertainties, then the equations of motion, then the three laws, then the conservation of energy, then the circular motion that turns a straight line into an orbit and the oscillation that turns a force into a vibration. The matter half asks what a solid, a liquid and a gas do when you push them.

#v(4pt)

#diagram-fig("diagrams/utme_weight.svg",
  "Typical number of UTME Physics questions per chapter: Chapters 3 and 6 carry the largest blocks of marks.", width: 84%)

#concept-box("How to read the weights")[
  These are averages from recent papers — a guide to where a revision hour returns the most marks, not a promise about your paper. Two hours on forces and two on matter will meet roughly a fifth of the questions on their own.
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
  [*1*], [Measurement, Units and Dimensions], [convert units, quote dimensions, read a vernier and a micrometer, and add or resolve vectors], [3],
  [*2*], [Motion in a Straight Line], [use the four equations of motion, read $s$–$t$ and $v$–$t$ graphs, and split a projectile into two motions], [4],
  [*3*], [Forces, Newton's Laws and Momentum], [draw a free-body diagram, take moments, and apply impulse and the conservation of momentum], [4],
  [*4*], [Work, Energy, Power and Machines], [compute work at an angle, conserve energy, and find MA, VR and efficiency], [3],
  [*5*], [Circular Motion, Gravitation and SHM], [use $F = m v^2 \/ r$, Newton's law of gravitation, and the two period formulas], [3],
  [*6*], [Properties of Matter], [apply Hooke's law, pressure, Archimedes and the fluid effects to a real body], [4],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[The weight is the average number of questions the topic has carried in recent UTME papers. Chapters 2, 3 and 6 are the ones to finish first if time is short.]

#v(8pt)

== The Equations That Carry the Paper

#table(
  columns: (1.5fr, 0.35fr, 1.5fr, 0.35fr),
  inset: 4.5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [$v = u + a t$], [2], [$F = m v^2 \/ r$], [5],
  [$s = u t + (1\/2) a t^2$], [2], [$F = G m_1 m_2 \/ r^2$], [5],
  [$v^2 = u^2 + 2 a s$], [2], [$v = sqrt(G M \/ r)$], [5],
  [$F = m a$], [3], [$T = 2 pi sqrt(l \/ g)$], [5],
  [$F t = m v - m u$], [3], [$F = k e$], [6],
  [$"moment" = F d$], [3], [$p = rho g h$], [6],
  [$W = F s cos theta$], [4], [$"upthrust" = rho V g$], [6],
  [$E_k = (1\/2) m v^2$], [4], [$"MA" = "load" \/ "effort"$], [4],
  [$P = W \/ t = F v$], [4], [$"efficiency" = "MA" \/ "VR" times 100 %$], [4],
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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • PHYSICS VOLUME 1]
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
  + Answers are quoted to two or three significant figures, and the working keeps one more.
  + Units are written with a space and a negative index: m s⁻¹, not m/s. An answer without its unit loses a mark, even when the number is right.
  + $W$ is weight and $w$ is work here only where the context is unambiguous; where it is not, the quantity is spelled out.
]

#v(6pt)

#trap-box("Four habits that decide a Physics score")[
  *1 · Draw the diagram before the equation.* A free-body diagram, a velocity–time sketch or a ray diagram turns most questions into arithmetic you have already met.

  *2 · Write the equation, then substitute.* Candidates who substitute as they think lose the marks that the working would have carried, because a wrong answer with visible correct method still earns the method mark in the structured paper.

  *3 · Check the direction.* Force, velocity, acceleration and momentum are vectors, and the commonest lost mark in mechanics is a sign.

  *4 · Read the unit of the answer.* A question that asks for energy in kJ, a time in minutes or a density in g cm⁻³ is testing whether you read the last line, not whether you can do the arithmetic.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[Where a section is marked with a green bar and the word CONCEPT, it is a definition the examiner quotes back at you; where it is marked JAMB TRAP, it is the mistake the examiner is banking on. Both are worth more than their length in the chapter.]
