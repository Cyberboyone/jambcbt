#import "template.typ": *
#show: setup-book.with(subject: "BIOLOGY", volume-num: 2, volume-title: "Test")
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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 2 OF 3],
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

    #text(font: "DejaVu Sans", size: 38pt, weight: "bold", fill: white)[BIOLOGY]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 16pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 2: Coordination, Reproduction & Growth
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Complete, In-Depth Mastery of How the Body Controls and Reproduces Itself — Nervous Coordination and the Neurone, the Brain and Sense Organs, Hormones, Reproduction in Plants and Animals, Growth and Development, Health and Disease, Micro-organisms, Drugs and Public Health, Practical Skills.
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
          Every subtopic ranked by UTME frequency — the reflex arc, the eye, the menstrual cycle, the flower and the seed that appear every single year.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#34D399"))[◆ Labelled Diagrams Throughout]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          The neurone, the synapse, the eye, the brain in section, the endocrine map, the flower, the seed and the growth curves — drawn to be copied exactly as the examiner expects.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#60A5FA"))[▸ Define, Then Explain]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Every chapter opens with the definitions the examiner marks, then shows how the process works — stimulus and response, hormone and target, gamete and zygote.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#F87171"))[✓ Practice Qs & Full Solutions]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Thirty questions per chapter, two full CBT mocks, a rapid-fire recall appendix and a 120-question master bank — every option explained, not merely keyed.
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
          Chapters 1–10 · 300 Drills · 2 CBT Mocks · 120-Question Bank
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
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[The Biology Series, and Where This Volume Sits]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#A7F3D0"))[
    Biology is the longest UTME syllabus of all: four sections, dozens of processes and a diagram in almost every question. The series splits it into three volumes that follow the syllabus itself, so nothing is taught twice and nothing is left out.
  ]
]

#v(6pt)

#table(
  columns: (auto, 1.35fr, 1.9fr, 1.6fr),
  inset: 6.5pt,
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Vol.],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Title],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Coverage],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Syllabus section],

  [*1*], [Cells, Nutrition & Transport], [Classification, cells, cell division, plant and animal nutrition, transport, respiration, excretion, support and movement], [Sections A and B (part)],
  [*2*], [Coordination, Reproduction & Growth], [Nervous and hormonal control, sense organs, reproduction in plants and animals, growth and development, health and disease], [Section B (part)],
  [*3*], [Heredity, Evolution, Ecology & Applied Biology], [Genetics, variation, evolution, ecology, conservation, agricultural biology and practical skills], [Sections C and D],
)

#v(8pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[This volume in one sentence]
  #v(3pt)
  #text(size: 10.2pt)[
    Volume 2 takes you from “how a nerve carries a message” to “how a population stays healthy”: the neurone and the synapse, the brain, the eye and the ear, hormones and the menstrual cycle, the flower and the seed, fertilisation and pregnancy, growth curves, disease and immunity, and the practical skills the examiner tests in the hall.
  ]
]

#v(6pt)

#diagram-fig("diagrams/utme_weight.svg", "Typical number of UTME Biology questions per topic in this volume. Reproduction in plants and animals, and coordination, carry the most marks; no chapter is safe to skip.")

// ============================================================================
// PAGE: WHY BIOLOGY MARKS ARE WON HERE
// ============================================================================
#current-chapter.update("How Biology Marks Are Won")

#pagebreak()

#block(
  width: 100%,
  fill: jamb-navy,
  radius: 8pt,
  inset: (x: 16pt, y: 12pt),
)[
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Why Biology Marks Are Won on Definitions and Diagrams]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#A7F3D0"))[
    Biology looks like a memory subject and is examined like a precision subject. The candidate who writes “the mitochondrion is where respiration happens” loses the mark to the one who writes “the mitochondrion releases energy from glucose by aerobic respiration”. Precision is worth marks.
  ]
]

#v(6pt)

== The Three Habits That Decide Your Biology Score

#block(breakable: false)[
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 10pt,
    row-gutter: 10pt,
    block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
      #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[① Name the structure]
      #v(3pt)
      #text(size: 9.8pt)[Every process question can be turned into a “which structure?” question. Learn the diagram, then the name, then the function — in that order.]
    ],
    block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
      #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: info-blue)[② Give the function, not the label]
      #v(3pt)
      #text(size: 9.8pt)[An organelle is only worth describing by what it does. “Ribosome — site of protein synthesis” earns the mark; “ribosome — small body in the cell” does not.]
    ],
    block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
      #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: trap-red)[③ Follow the substance]
      #v(3pt)
      #text(size: 9.8pt)[Trace water, glucose, oxygen or blood along one path and you have answered half the questions in the chapter. Say the route out loud, in order.]
    ],
  )
]

#v(6pt)

== The Twelve Question Types That Reappear Every Year

#table(
  columns: (0.32fr, 1.9fr, 1.5fr, 0.6fr),
  inset: (x: 5pt, y: 2.8pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How the question is worded],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the examiner wants],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch.],

  [1], [“The part of the neurone that conducts impulses away from the cell body is the …”], [Axon; dendrites carry impulses towards it], [1],
  [2], [“A synapse transmits an impulse by means of …”], [A chemical transmitter across the gap], [1],
  [3], [“The part of the brain that controls balance is the …”], [Cerebellum; medulla controls breathing], [2],
  [4], [“The structure that focuses light on the retina is the …”], [Lens; the cornea does most of the bending], [2],
  [5], [“A reflex action is one that is …”], [Automatic and protective — often spinal, not cerebral], [2],
  [6], [“The hormone that lowers blood glucose is …”], [Insulin, from the islets of Langerhans], [3],
  [7], [“The transfer of pollen from anther to stigma is …”], [Pollination; fertilisation is later], [4],
  [8], [“The part of the flower that becomes the fruit is the …”], [Ovary; the ovule becomes the seed], [4],
  [9], [“Fertilisation in a mammal normally occurs in the …”], [Oviduct (fallopian tube)], [5],
  [10], [“The hormone that maintains the uterine lining in pregnancy is …”], [Progesterone], [5],
  [11], [“Which cells produce antibodies?”], [Lymphocytes (B cells)], [7],
  [12], [“The magnification of a drawing 20 mm long of a 0.5 mm specimen is …”], [×40 — image ÷ actual], [10],
)

// ============================================================================
// PAGE: SYLLABUS MAPPING
// ============================================================================
#current-chapter.update("Official JAMB Syllabus Mapping")

#pagebreak()

== Official JAMB UTME Syllabus Mapping (Volume 2 Chapters)

#v(2pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 8pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[How to read this table]
  #h(6pt)
  #text(font: "DejaVu Sans", size: 9.2pt)[
    The left column is the wording of the official syllabus. The middle column is what the examiner actually tests. The right column is the chapter that teaches it, and the drill that proves it.
  ]
]

#table(
  columns: (1.55fr, 2.0fr, 1.65fr, auto),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Syllabus topic],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Examinable objectives],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you must be able to do],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],

  [*Nervous coordination*], [The neurone, impulse transmission, the synapse, reflex actions.], [(i) Label a neurone; (ii) explain transmission across a synapse; (iii) describe a reflex arc.], [*1*],
  [*The central nervous system*], [Brain and spinal cord; the autonomic system.], [(i) State the function of each part of the brain; (ii) explain what a reflex arc does.], [*2*],
  [*The sense organs*], [The eye, the ear and the skin.], [(i) Label the eye and explain accommodation; (ii) correct the common defects.], [*2*],
  [*Hormonal control*], [Endocrine glands, hormones and their effects; plant hormones.], [(i) Match hormone to gland to effect; (ii) explain negative feedback.], [*3*],
  [*Reproduction in plants*], [Flower structure, pollination, fertilisation, seeds, fruits and dispersal.], [(i) Label the flower; (ii) trace the pollen tube to the embryo sac.], [*4*],
  [*Reproduction in animals*], [Reproductive systems, gametogenesis, the menstrual cycle, fertilisation, pregnancy, birth control.], [(i) Label both systems; (ii) explain the hormonal control of the cycle.], [*5*],
  [*Growth and development*], [Growth curves, metamorphosis, measurement of growth.], [(i) Interpret a growth curve; (ii) compare complete and incomplete metamorphosis.], [*6*],
  [*Health and disease*], [Pathogens, transmission, the body's defences, immunity, vaccination.], [(i) Classify a disease by its cause and its method of spread; (ii) explain how a vaccine works.], [*7*],
  [*Micro-organisms and decay*], [Useful and harmful micro-organisms; decay; food preservation; industry.], [(i) State the conditions for decay; (ii) give one industrial use of a named micro-organism.], [*8*],
  [*Drugs, first aid and public health*], [Drug abuse, first aid, sanitation, immunisation programmes.], [(i) Describe the effects of a named drug; (ii) state the first-aid steps for a named emergency.], [*9*],
  [*Practical skills*], [Microscopy, magnification, biological drawings, food tests, experiments and controls.], [(i) Calculate magnification; (ii) design a controlled experiment and identify its variables.], [*10*],)

#v(6pt)

#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[Where the rest of the Biology syllabus lives]
  #v(3pt)
  #text(size: 9.8pt)[
    Classification, cells, cell division, nutrition, transport, respiration, excretion and support are Volume 1. Genetics and variation, evolution, ecology, conservation and applied biology are Volume 3. Examination technique, consolidated answer keys and the mastery tracker sit in the appendices of Volume 3.
  ]
]

// ============================================================================

#pagebreak()
#show outline.entry.where(level: 1): it => {
  v(5pt, weak: true)
  strong(text(font: "DejaVu Sans", size: 9.8pt, fill: jamb-navy)[#it])
}
#show outline.entry.where(level: 2): it => {
  text(font: "DejaVu Sans", size: 8.7pt, fill: jamb-slate)[#it]
  v(0.6pt, weak: true)
}
#outline(title: none, indent: 14pt, depth: 2)
