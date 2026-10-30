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

    #text(font: "DejaVu Sans", size: 38pt, weight: "bold", fill: white)[PHYSICS]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 13.4pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 4: Electricity, Magnetism & Modern Physics
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Electrostatics and Capacitors, Current Electricity, Magnetism and
      Electromagnetic Induction, Electronics, Atomic Physics and the
      Photoelectric Effect, and Radioactivity — with 26 reviewed diagrams,
      30 worked examples and a note on every exam-style option.
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
          Current electricity with resistance and power, the force on a
          current-carrying conductor, and the photoelectric equation. These
          three carry more Section C and D questions than the other three
          chapters put together.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ What Makes This Volume Different]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Every circuit is drawn the way the examiner draws it, with the
          meters in place and the arrows on the current — because most lost
          marks in this section are reading errors, not arithmetic ones. Every
          worked example still ends with a *Check* line that finds the answer
          a second way.
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
        JAMB CBT Master Study Series • Physics • Volume 4 of 4
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
  [*4*], [Electricity, Magnetism & Modern Physics], [Electrostatics, capacitors, current electricity, magnetism, induction, electronics, atomic physics and radioactivity], [Sections C and D],
)

#v(6pt)

This is the last volume, and the only one that covers two syllabus sections. Electricity is the part of the paper where a diagram does most of the thinking: a circuit drawn correctly tells you whether to add resistances or to use the potential divider, and a field drawn correctly tells you which way the force pushes. Modern physics is the opposite — six short equations, each asked in almost the same words every year. Learn the six exactly and the section is finished.

#v(4pt)

#diagram-fig("diagrams/utme_weight.svg",
  "Typical number of UTME Physics questions per chapter: current electricity, electrostatics, atomic physics and radioactivity carry the largest blocks of marks.", width: 84%)

#concept-box("How to read the weights")[
  These are averages from recent papers — a guide to where a revision hour returns the most marks, not a promise about your paper. Current electricity alone supplies about a fifth of the whole Physics paper, and it is the chapter most often lost to a unit slip: milliamps entered as amps, minutes entered as seconds, kilo-ohms entered as ohms.
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
  [*1*], [Electrostatics and Capacitors], [apply $F = k q_1 q_2 \/ r^2$, draw a field, and use $C = Q\/V$ and $W = 1\/2 C V^2$], [4],
  [*2*], [Current Electricity], [use Ohm's law and $R = rho l \/ A$, combine resistors, handle e.m.f. and internal resistance, and compute power and cost], [4],
  [*3*], [Magnetism and Electromagnetic Induction], [find the force on a conductor, explain the motor, generator and transformer, and use Faraday's law], [3],
  [*4*], [Electronics], [describe a semiconductor, use a diode and a rectifier, bias a transistor, and build a truth table], [3],
  [*5*], [Atomic Physics and the Photoelectric Effect], [draw an energy-level diagram, use $E = h f$ and the photoelectric equation, and explain line spectra], [4],
  [*6*], [Radioactivity and Nuclear Energy], [balance a decay equation, use half-life, and compute the energy released in a nuclear reaction], [4],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[The weight is the average number of questions the topic has carried in recent UTME papers. Chapters 1, 2, 5 and 6 are the ones to finish first if time is short.]

#v(6pt)

== The Equations That Carry the Paper

#table(
  columns: (1.5fr, 0.35fr, 1.5fr, 0.35fr),
  inset: 4.5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [$F = k q_1 q_2 \/ r^2$], [1], [$I = Q \/ t$], [2],
  [$E = F \/ q$], [1], [$V = I R$], [2],
  [$C = Q \/ V$], [1], [$R = rho l \/ A$], [2],
  [$W = 1\/2 C V^2$], [1], [$P = I V = I^2 R$], [2],
  [$F = B I l$], [3], [$E = h f$], [5],
  [$(V_s)/(V_p) = (N_s)/(N_p)$], [3], [$h f = W + 1\/2 m v^2$], [5],
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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • PHYSICS VOLUME 4]
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
  + $k = 9.0 times 10^9$ N m² C⁻², $e = 1.6 times 10^(-19)$ C, $epsilon_0 = 8.85 times 10^(-12)$ F m⁻¹ and $h = 6.6 times 10^(-34)$ J s, unless a question gives its own value.
  + One coulomb is a *very* large charge: any current in a circuit moves coulombs per second, which is why the arithmetic in Chapter 2 is dominated by $I = Q\/t$.
  + Resistivity is quoted in $Omega$ m and resistance in $Omega$. A wire's resistance depends on its length, its area and its material, in that order of frequency in the paper.
  + Energy in a circuit is in joules and power in watts; the electricity bill is in kilowatt-hours, and one kilowatt-hour is 3.6 MJ.
  + In modern physics, energies are quoted in joules *or* in electron-volts. One electron-volt is $1.6 times 10^(-19)$ J — the same number as the electronic charge.
  + Units are written with a space and a negative index: A m⁻², not A/m².
]

#v(6pt)

#trap-box("Four habits that decide a Current Electricity score")[
  *1 · Convert milliamps, kilo-ohms and minutes before you substitute.* 20 mA is $20 times 10^(-3)$ A; 5 k$Omega$ is $5 times 10^3$ $Omega$; 2 minutes is 120 s. Half the lost marks in this section are unit errors, not physics errors.

  *2 · Decide whether the resistors are in series or in parallel before you add anything.* Series adds resistance and divides voltage; parallel adds conductance and divides current. Draw the path the current takes.

  *3 · Read the meter in the diagram.* An ammeter is in series and an ideal one has zero resistance; a voltmeter is in parallel and an ideal one has infinite resistance. A question that places one wrongly is testing exactly that.

  *4 · Ask what the question wants — charge, current, energy, power or cost.* $Q = I t$ gives coulombs, $W = I V t$ gives joules, and $P = I V$ gives joules per second. Three questions that look alike and ask for three different units.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[Where a section is marked with a green bar and the word CONCEPT, it is a definition the examiner quotes back at you; where it is marked JAMB TRAP, it is the mistake the examiner is banking on. Both are worth more than their length in the chapter.]
