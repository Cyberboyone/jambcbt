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
