#import "template.typ": *

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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 1 OF 3],
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
      Volume 1: Cells, Nutrition & Transport
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Complete, In-Depth Mastery of the Living Thing and How It Works — Classification, Cell Structure and Cell Division, Photosynthesis, Animal Nutrition, Transport in Plants and Animals, Respiration, Excretion and Homeostasis, Support and Movement.
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
          Every subtopic ranked by UTME frequency — the organelle table, the photosynthesis equation, the digestive enzyme chain and the double circulation route that appear every single year.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#34D399"))[◆ Labelled Diagrams Throughout]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Cells, viruses, the leaf in section, the alimentary canal, the heart, the nephron and the skeleton — drawn to be copied exactly as the examiner expects.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#60A5FA"))[▸ Define, Then Explain]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Every chapter opens with the definitions the examiner marks, then shows how the process works — never a list of facts without the reason behind it.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#F87171"))[✓ Practice Qs & Full Solutions]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          UTME-style drill questions per chapter, two full CBT mocks, timed drills and a master bank — every option explained, not merely keyed.
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
        text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[
          JAMB CBT Companion Textbook Series • Print-Ready A4 Manual
        ],
        text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: rgb("#FEF3C7"))[
          Chapters 1 – 10 + Two Full CBT Mocks
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
    Volume 1 takes you from “what is a living thing” to “how a mammal moves”: the cell and its organelles, how cells divide, how plants make food and animals digest it, how substances are moved, how energy is released, how waste is removed, and how the body is held up and moved.
  ]
]

#v(6pt)

#diagram-fig("diagrams/utme_weight.svg", "Typical number of UTME Biology questions per topic in this volume. Transport in animals (circulation) and the two nutrition chapters carry the most marks; no chapter is safe to skip.")

// ============================================================================
// PAGE: WHY BIOLOGY MARKS ARE WON HERE
// ============================================================================
#pagebreak()

#current-chapter.update("How Biology Marks Are Won")

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
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How the question is worded],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the examiner wants],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch.],

  [1], [“Which of the following is a characteristic of living things?”], [The seven characteristics, exactly named], [1],
  [2], [“Organisms in the kingdom Monera are distinguished by …”], [No true nucleus; prokaryotic], [1],
  [3], [“The organelle responsible for … is the …”], [Organelle + its one-line function], [2],
  [4], [“Which of these is present in a plant cell but not an animal cell?”], [Wall, chloroplast, large vacuole], [2],
  [5], [“The number of chromosomes in the daughter cells after mitosis is …”], [Same as the parent cell ($2n$)], [3],
  [6], [“The products of photosynthesis are …”], [Glucose and oxygen], [4],
  [7], [“The enzyme that digests … is …”], [Enzyme, substrate, product, site], [5],
  [8], [“Water is transported in the plant by the …”], [Xylem (upwards, dead cells)], [6],
  [9], [“Blood flows from the left ventricle to the …”], [The route, in order], [7],
  [10], [“Anaerobic respiration in muscle tissue produces …”], [Lactic acid (not alcohol)], [8],
  [11], [“The functional unit of the kidney is the …”], [Nephron, and what it does], [9],
  [12], [“Which of these is a hinge joint?”], [Elbow, knee — one plane only], [10],
)

// ============================================================================
// PAGE: SYLLABUS MAPPING
// ============================================================================
#pagebreak()

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

  [*Characteristics of living things*], [Movement, respiration, sensitivity, growth, reproduction, excretion, nutrition.], [(i) List and explain the seven characteristics; (ii) apply them to an unfamiliar organism.], [*1*],
  [*Classification*], [Five kingdoms; binomial nomenclature; viruses.], [(i) Place an organism in its kingdom; (ii) write a binomial name correctly.], [*1*],
  [*Cell structure and organisation*], [Prokaryotic and eukaryotic cells; organelles; plant and animal cells; levels of organisation.], [(i) Identify organelles and their functions; (ii) compare plant, animal and bacterial cells.], [*2*],
  [*Cell division*], [Mitosis and meiosis; chromosome behaviour; significance.], [(i) Describe the stages; (ii) state the chromosome number of the products.], [*3*],
  [*Plant nutrition*], [Photosynthesis; leaf structure; mineral requirements.], [(i) State the equation and the conditions; (ii) explain the fate of the products.], [*4*],
  [*Animal nutrition*], [Food classes; enzymes; the alimentary canal; dentition.], [(i) Test for food substances; (ii) trace digestion of each class.], [*5*],
  [*Transport in plants*], [Absorption, transpiration, translocation.], [(i) Explain the transpiration pull; (ii) distinguish xylem from phloem.], [*6*],
  [*Transport in animals*], [Blood, the heart, circulation, lymph.], [(i) Trace the double circulation; (ii) relate vessel structure to function.], [*7*],
  [*Respiration*], [Aerobic and anaerobic respiration; respiratory surfaces; gaseous exchange.], [(i) Compare the two types; (ii) explain how each surface is adapted.], [*8*],
  [*Excretion and homeostasis*], [Kidney, liver, skin; osmoregulation and temperature control.], [(i) Name the excretory organs and their products; (ii) explain negative feedback.], [*9*],
  [*Support and movement*], [Skeleton, bones, muscles, joints; support in plants.], [(i) Classify joints; (ii) explain antagonistic muscle action.], [*10*],
)

#v(6pt)

#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[Where the rest of the Biology syllabus lives]
  #v(3pt)
  #text(size: 9.8pt)[
    Coordination and control (nervous and hormonal), reproduction in plants and animals, growth and development, and health and disease are Volume 2. Genetics and variation, evolution, ecology, conservation, applied biology and practical skills are Volume 3. Examination technique, consolidated answer keys and the mastery tracker sit in the appendices of Volume 3.
  ]
]

// ============================================================================
// PAGE: TABLE OF CONTENTS
// ============================================================================
#pagebreak()

#current-chapter.update("Table of Contents")

#block(
  width: 100%,
  fill: jamb-navy,
  radius: 8pt,
  inset: (x: 16pt, y: 12pt),
)[
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.2pt, fill: rgb("#A7F3D0"))[
    Chapters, drills, mocks and appendices — everything in this volume, in the order you should use it.
  ]
]

#v(8pt)

#show outline.entry.where(level: 1): it => {
  v(5pt, weak: true)
  strong(text(font: "DejaVu Sans", size: 9.8pt, fill: jamb-navy)[#it])
}

#show outline.entry.where(level: 2): it => {
  text(font: "DejaVu Sans", size: 8.7pt, fill: jamb-slate)[#it]
  v(0.6pt, weak: true)
}

#outline(title: none, indent: 14pt, depth: 2)

// ============================================================================
// PAGE: HOW TO USE THIS BOOK
// ============================================================================
#pagebreak()

#current-chapter.update("How to Use This Book")

== How to Use This Book

#v(2pt)

#table(
  columns: (1.15fr, 1.5fr, 1.55fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Element],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it is],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How to use it],

  [*Chapter opener*], [Banner with the chapter number, syllabus reference and UTME weight.], [Read the weight first. Three-star chapters deserve two sittings.],
  [*Exam Radar*], [The official objectives beside the high-yield focus areas and one examiner insight.], [Turn each bullet into a question and answer it aloud before reading on.],
  [*Concept box*], [The definition or mechanism the examiner marks.], [Copy it into your own words, not verbatim, then check you have not lost the key word.],
  [*Diagram*], [A labelled figure drawn to exam standard.], [Cover the labels and redraw. A diagram you cannot redraw is a diagram you do not know.],
  [*Worked example*], [A question with the full reasoning shown line by line.], [Cover the solution, answer it yourself, then compare. Mark where your wording differed.],
  [*JAMB trap*], [The misconception that costs marks, with the correction.], [Read it twice. These boxes are where the difference between 60 and 80 lives.],
  [*Checklist*], [“I can …” statements for the chapter.], [Tick only what you can do without the book. Everything else is tonight's revision.],
  [*Recap card*], [Four lines that summarise the whole chapter.], [Say them aloud at the end of the week; if you stumble, reread that section.],
  [*Two-minute set*], [Four CBT-style questions with a key immediately after.], [Time yourself. Ninety seconds each is the real pace.],
  [*Drill*], [Thirty to fifty questions with keys, a question map and full solutions.], [Do it in one sitting, mark it, then read every solution — including the ones you got right.],
)

#v(6pt)

#block(width: 100%, fill: tip-bg, stroke: 0.8pt + tip-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: tip-amber)[The one rule that matters]
  #v(3pt)
  #text(size: 9.9pt)[
    Never read a chapter without answering the drill in the same week. Reading biology feels productive and proves nothing; answering questions proves everything.
  ]
]

// ============================================================================
// PAGE: DIAGNOSTIC PRE-TEST
// ============================================================================
#pagebreak()

#current-chapter.update("Diagnostic Pre-Test")

== Diagnostic Pre-Test (Twelve Minutes)

#v(2pt)

#text(size: 10pt)[
  Twelve questions, one from each chapter's core idea. Answer without the book, in twelve minutes, then mark yourself with the key below. Do not read the solutions yet — this test is a map, not a lesson.
]

#v(4pt)

#mcq(1, [Which of the following is *not* a characteristic of living things?], [Respiration], [Crystallisation], [Excretion], [Reproduction])
#mcq(2, [Organisms whose cells have no true nucleus belong to the kingdom], [Protista], [Fungi], [Monera], [Plantae])
#mcq(3, [The organelle that releases energy from glucose is the], [Ribosome], [Mitochondrion], [Golgi body], [Chloroplast])
#mcq(4, [The cell wall of a plant cell is made mainly of], [Chitin], [Cellulose], [Protein], [Lipid])
#mcq(5, [The products of photosynthesis are], [Water and oxygen], [Glucose and oxygen], [Carbon dioxide and water], [Glucose and carbon dioxide])
#mcq(6, [The enzyme in saliva that acts on starch is], [Pepsin], [Lipase], [Amylase], [Trypsin])
#mcq(7, [Water and mineral salts are transported in a plant by the], [Phloem], [Xylem], [Cambium], [Cortex])
#mcq(8, [In a mammal, oxygenated blood leaves the heart through the], [Pulmonary artery], [Vena cava], [Aorta], [Pulmonary vein])
#mcq(9, [Anaerobic respiration in human muscle produces], [Lactic acid], [Alcohol and carbon dioxide], [Carbon dioxide and water], [Glucose])
#mcq(10, [The functional unit of the kidney is the], [Nephron], [Neurone], [Alveolus], [Villus])
#mcq(11, [The number of chromosomes in a normal human body cell is], [23], [46], [22], [44])
#mcq(12, [Which of these is a hinge joint?], [Shoulder], [Hip], [Elbow], [Neck])

#v(4pt)

#answer-key-grid(("B", "C", "B", "B", "B", "C", "B", "C", "A", "A", "B", "C"))

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Read your score]
  #v(4pt)
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 10pt,
    block(width: 100%, fill: white, stroke: 0.6pt + jamb-mint-border, radius: 5pt, inset: 8pt)[
      #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-green)[10 – 12 correct]
      #v(2pt)
      #text(size: 9.2pt)[Strong start. Skim chapters 1–3, then work properly from chapter 4.]
    ],
    block(width: 100%, fill: white, stroke: 0.6pt + jamb-mint-border, radius: 5pt, inset: 8pt)[
      #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: tip-amber)[6 – 9 correct]
      #text(size: 9.2pt)[Typical. Read every chapter, but give the missed topics a second drill.]
    ],
    block(width: 100%, fill: white, stroke: 0.6pt + jamb-mint-border, radius: 5pt, inset: 8pt)[
      #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: trap-red)[0 – 5 correct]
      #text(size: 9.2pt)[Start at chapter 1 and do not skip a drill. Your marks are in the basics.]
    ],
  )
]
