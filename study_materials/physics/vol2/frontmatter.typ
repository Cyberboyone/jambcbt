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

    #text(font: "DejaVu Sans", size: 38pt, weight: "bold", fill: white)[PHYSICS]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 13.4pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 2: Waves, Sound & Light
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Wave Motion, Sound, Reflection at Plane and Curved Mirrors, Refraction,
      Total Internal Reflection, Lenses and Optical Instruments, and Colour —
      with 28 reviewed diagrams, 30 worked examples and a note on every
      exam-style option.
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
          The wave equation and the terms of a wave, sound and its speed in each
          medium, mirror and lens calculations, Snell's law and the critical
          angle, and the eye. Refraction and lenses carry the heaviest weight.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ What Makes This Volume Different]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Every ray diagram is drawn to scale from the same numbers the worked
          example uses, so the picture and the arithmetic never disagree — and
          every worked example ends with a *Check* line that re-derives the
          answer by a second route.
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
        JAMB CBT Master Study Series • Physics • Volume 2 of 4
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
  [*3*], [Electricity, Magnetism & Modern Physics], [Electrostatics, current electricity, magnetism, electromagnetic induction, electronics, radioactivity and atomic physics], [Sections C and D],
  [*4*], [Practical Physics & the CBT Papers], [Instruments, measurements, graph work, error analysis, the practical paper and two full mock examinations],
)

#v(6pt)

This volume is the one that turns a formula into a picture. A wave is a shape that travels; a sound is that shape in the air; light is that shape without a medium at all. Once you can draw the shape — a crest and a trough, a ray and a normal, an object and its image — the arithmetic is short, and most of the marks in Section B are won or lost on the drawing rather than on the algebra.

#v(4pt)

#diagram-fig("diagrams/utme_weight.svg",
  "Typical number of UTME Physics questions per chapter: refraction and lenses carry the largest blocks of marks.", width: 84%)

#concept-box("How to read the weights")[
  These are averages from recent papers — a guide to where a revision hour returns the most marks, not a promise about your paper. Waves, refraction and lenses together meet roughly a third of the questions on their own, so a fortnight on those three chapters is the best single investment in this volume.
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
  [*1*], [Wave Motion], [use $v = f lambda$, name every term of a wave, and explain reflection, refraction, diffraction and interference], [3],
  [*2*], [Sound], [place sound in the right medium, use resonance and beats, and explain the Doppler effect], [4],
  [*3*], [Reflection at Plane and Curved Mirrors], [draw the image, use $1\/f = 1\/u + 1\/v$ and $m = v\/u$, and choose the right mirror for a job], [3],
  [*4*], [Refraction and Total Internal Reflection], [apply Snell's law, find the critical angle, and explain fibres and mirages], [4],
  [*5*], [Lenses and Optical Instruments], [locate a lens image, compute power, and correct short and long sight], [4],
  [*6*], [Colour, the Spectrum and Photometry], [explain dispersion, add and subtract colours, and use the inverse-square law of illumination], [3],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[The weight is the average number of questions the topic has carried in recent UTME papers. Chapters 2, 4 and 5 are the ones to finish first if time is short.]

#v(8pt)

== The Equations That Carry the Paper

#table(
  columns: (1.5fr, 0.35fr, 1.5fr, 0.35fr),
  inset: 4.5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [$v = f lambda$], [1], [$1\/f = 1\/u + 1\/v$], [3],
  [$f = 1 \/ T$], [1], [$m = v \/ u$], [3],
  [$v = 2 d \/ t$], [2], [$n = sin i \/ sin r$], [4],
  [$f_1 = v \/ 4L$], [2], [$sin c = 1 \/ n$], [4],
  [$f_"beat" = f_1 - f_2$], [2], [$P = 1 \/ f$], [5],
  [$f' = f v \/ (v plus.minus v_s)$], [2], [$P = P_1 + P_2$], [5],
  [$eta = "real depth" \/ "apparent depth"$], [4], [$E = I \/ d^2$], [6],
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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • PHYSICS VOLUME 2]
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
  + The speed of light in a vacuum is taken as $3.0 times 10^8$ m s⁻¹ and the speed of sound in air as 340 m s⁻¹, unless a question says otherwise.
  + Angles are measured from the *normal*, never from the surface. A diagram that measures from the mirror is a diagram that will produce the wrong sign.
  + Ray diagrams are drawn with a ruler; a sketch that puts the image on the wrong side of the lens will give the wrong sign in the formula as well.
  + Units are written with a space and a negative index: m s⁻¹, not m/s.
]

#v(6pt)

#trap-box("Four habits that decide a Physics score")[
  *1 · Draw the diagram before the equation.* A ray diagram, a wave sketch or a graph turns most of Section B into arithmetic you have already met.

  *2 · Put the normal in first.* Every angle in optics is measured from the normal; candidates who measure from the mirror or the surface lose the mark even when the arithmetic that follows is right.

  *3 · Track the sign of v.* A positive image distance is real and on the far side of a lens; a negative one is virtual and on the same side as the object. The same rule settles the mirror questions.

  *4 · Read the unit of the answer.* A question that asks for a focal length in cm, a power in dioptres or a speed in km s⁻¹ is testing whether you read the last line.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[Where a section is marked with a green bar and the word CONCEPT, it is a definition the examiner quotes back at you; where it is marked JAMB TRAP, it is the mistake the examiner is banking on. Both are worth more than their length in the chapter.]
