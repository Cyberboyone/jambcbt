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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 3 OF 3],
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
    #text(font: "DejaVu Sans", size: 14.2pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 3: Heredity, Evolution, Ecology & Applied Biology
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      The Whole of the Heredity and Ecology Syllabus — Chromosomes, Genes and Inheritance, Probability and Sex Linkage, Variation and Mutation, Evolution and Its Evidence, Ecosystems, Food Webs and Energy Flow, Nutrient Cycles, Conservation, Applied and Practical Biology.
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
          Every subtopic ranked by UTME frequency — the monohybrid cross, the test cross, the sex-linked pedigree, the food web and the pyramid of energy that appear every single year.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#34D399"))[◆ Labelled Diagrams Throughout]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Chromosome behaviour in meiosis, the crossing square, the pedigree, the homologous limbs, the food web, the carbon and nitrogen cycles and the quadrat — drawn to be copied exactly as the examiner expects.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#60A5FA"))[▸ Define, Then Explain]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Every chapter opens with the definitions the examiner marks, then shows the reasoning: allele and phenotype, genotype ratio and probability, energy lost at each trophic level, cause and consequence in a polluted river.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#F87171"))[✓ Practice Qs & Full Solutions]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Thirty questions per chapter, two full CBT mocks, a rapid-fire recall appendix, a 120-question master bank and a full examination-technique appendix — every option explained.
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
    Biology is the longest UTME syllabus of all: four sections, dozens of processes and a diagram in almost every question. Volume 3 takes Sections C and D — heredity, evolution, ecology and applied biology — and closes the series with the examination technique the hall demands.
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
    Volume 3 takes you from “why you have your mother's eyes” to “why a lake dies of fertiliser”: chromosomes and genes, the monohybrid and test cross, probability and sex linkage, variation, mutation, natural selection and the fossil record, then ecosystems, food webs, energy flow, the carbon and nitrogen cycles, succession, conservation, crops and pests — and the practical skills and examination technique that turn knowledge into marks.
  ]
]

#v(6pt)

#diagram-fig("diagrams/utme_weight.svg", "Typical number of UTME Biology questions per topic in this volume. Genetics, inheritance, ecology and practical skills carry the most marks; no chapter is safe to skip.")

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
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Why the Last Two Sections Are Won on Reasoning, Not Recall]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#A7F3D0"))[
    Heredity and ecology are the only parts of the Biology paper that can be worked out from first principles. A candidate who can draw a crossing square does not have to remember the ratio, and one who can read a pyramid of energy does not have to memorise a food web. This volume teaches the working, then the words.
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
      #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[① Write the genotypes]
      #v(3pt)
      #text(size: 9.8pt)[Never answer an inheritance question in your head. Put the parent genotypes on paper, draw the square, count the classes. The grid answers the question for you.]
    ],
    block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
      #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: info-blue)[② Count, then name]
      #v(3pt)
      #text(size: 9.8pt)[Ratio, probability, energy transferred, population size: the examiner sets numbers because numbers can be marked. Show the arithmetic, then give the answer with its unit.]
    ],
    block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
      #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: trap-red)[③ Follow the energy]
      #v(3pt)
      #text(size: 9.8pt)[In ecology, every question is about where the energy or the element goes next. Trace carbon, nitrogen or energy along one path and half the chapter has been answered.]
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

  [1], [“A cross between TT and tt gives an F1 that is …”], [All Tt, all tall — the dominant phenotype], [1],
  [2], [“The ratio 3 : 1 in the F2 of a monohybrid cross shows …”], [Complete dominance; 1 : 2 : 1 is the genotype ratio], [1],
  [3], [“A test cross is used to …”], [Reveal whether a tall plant is TT or Tt], [2],
  [4], [“A colour-blind man marries a carrier woman. Their sons are …”], [Half colour-blind — sex-linked, from the mother], [2],
  [5], [“Which is a continuous variation?”], [Height; blood group is discontinuous], [3],
  [6], [“Sickle-cell anaemia is caused by …”], [A gene mutation — one base substitution], [3],
  [7], [“The wings of a bird and the forelimbs of a bat are …”], [Homologous — same origin, different function], [4],
  [8], [“A pyramid of energy always tapers because …”], [About 90 % of the energy is lost at each level], [6],
  [9], [“In the nitrogen cycle, nitrifying bacteria …”], [Convert ammonia to nitrite and then to nitrate], [7],
  [10], [“The first organisms to colonise bare rock are …”], [Lichens — the pioneer community], [7],
  [11], [“The best estimate of population size is obtained by …”], [The capture–recapture method: $N = (M times C) div R$], [10],
  [12], [“A control is needed in an experiment in order to …”], [Show the result is due to the variable tested], [10],
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
#set text(size: 8.4pt)
#table(
  columns: (1.5fr, 1.95fr, 2.05fr, auto),
  inset: (x: 5.5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Syllabus topic],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Examinable objectives],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you must be able to do],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],

  [*Heredity*], [Chromosomes, genes and alleles; DNA and the gene; mitosis and meiosis.] , [(i) State the difference between a gene and an allele; (ii) explain why meiosis halves the chromosome number.], [*1*],
  [*Inheritance*], [Monohybrid crosses, test crosses, probability, sex determination, sex linkage, blood groups.], [(i) Work out an F2 ratio; (ii) use a test cross; (iii) explain a sex-linked pedigree.], [*2*],
  [*Variation*], [Continuous and discontinuous variation; mutation; adaptation.], [(i) Classify a variation; (ii) name a cause of mutation; (iii) explain one adaptation.], [*3*],
  [*Evolution*], [Evidence for evolution; natural selection; speciation.], [(i) Distinguish homologous from analogous structures; (ii) outline natural selection in five steps.], [*4*],
  [*Ecology*], [Ecosystem, habitat, niche, population, community; sampling.], [(i) Define each term precisely; (ii) describe how to sample a population.], [*5*],
  [*Interactions*], [Food chains, food webs, trophic levels, pyramids, competition, symbiosis.], [(i) Draw a food web; (ii) explain why a pyramid of energy tapers.], [*6*],
  [*Cycles*], [Carbon and nitrogen cycles; succession; Nigerian biomes.], [(i) Follow nitrogen from the air to a plant; (ii) order the stages of succession.], [*7*],
  [*Conservation*], [Pollution, deforestation, erosion, conservation and its methods.], [(i) Name the pollutant and its effect; (ii) state one conservation method for a named habitat.], [*8*],
  [*Applied biology*], [Crops, pests and their control, livestock, diseases of crops and animals.], [(i) Explain crop rotation; (ii) distinguish biological from chemical control.], [*9*],
  [*Practical skills*], [Quadrat, transect, capture–recapture, food tests, microscopy, drawing and graphs.], [(i) Estimate a population size; (ii) draw and label a graph the examiner can mark.], [*10*],)
]

#v(5pt)

#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[Where the rest of the Biology syllabus lives]
  #v(3pt)
  #text(size: 9.8pt)[
    Classification, cells, cell division, nutrition, transport, respiration, excretion and support are Volume 1. Nervous and hormonal control, the sense organs, reproduction, growth, health, micro-organisms, drugs and public health are Volume 2. The examination-technique appendix and the consolidated answer keys close this volume.
  ]
]

// ============================================================================
// PAGE: TABLE OF CONTENTS
// ============================================================================
#current-chapter.update("Table of Contents")

#pagebreak()

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

#import "_toc.typ": toc-rows
#toc-two-column(toc-rows)

// ============================================================================
// PAGE: HOW TO USE THIS BOOK
// ============================================================================
#current-chapter.update("How to Use This Book")

#pagebreak()

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
  [*Drill*], [Thirty questions with a key, a score band and a full solution for every item.], [Do it in one sitting, mark it, then read every solution — including the ones you got right.],
  [*Mock paper*], [Forty questions in forty minutes, with key, score band, question map and solutions.], [Sit it under exam conditions. The question map turns your score into a revision plan.],
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
#current-chapter.update("Diagnostic Pre-Test")

#pagebreak()

== Diagnostic Pre-Test (Twelve Minutes)

#v(2pt)

#text(size: 10pt)[
  Twelve questions, one from each chapter's core idea. Answer without the book, in twelve minutes, then mark yourself with the key below. Do not read anything else first — this test is a map, not a lesson.
]

#v(4pt)

#mcq(1, [The thread-like structures in the nucleus that carry the genes are called], [chromosomes], [ribosomes], [centrioles], [nucleoli])
#mcq(2, [A cross between a pure tall pea plant (TT) and a pure short one (tt) produces an F1 generation that is], [all short], [all tall], [half tall and half short], [three tall to one short])
#mcq(3, [The ratio obtained when a heterozygote is crossed with a homozygous recessive is], [3 : 1], [1 : 2 : 1], [1 : 1], [9 : 3 : 3 : 1])
#mcq(4, [A test cross is carried out in order to determine], [the number of chromosomes], [whether an organism is homozygous or heterozygous], [the sex of an organism], [the rate of mutation])
#mcq(5, [Colour blindness in humans is an example of], [a sex-linked characteristic], [a continuous variation], [a chromosomal mutation], [an acquired characteristic])
#mcq(6, [Which of the following is a discontinuous variation?], [Body height], [Blood group], [Body mass], [Skin shade])
#mcq(7, [Sickle-cell anaemia results from], [a change in the base sequence of a gene], [a deficiency of iron in the diet], [the loss of a whole chromosome], [an infection by a virus])
#mcq(8, [The wings of a bird and the forelimbs of a bat are examples of], [analogous structures], [homologous structures], [vestigial structures], [convergent evolution])
#mcq(9, [In a food chain, the organisms that manufacture food are called], [primary consumers], [producers], [decomposers], [secondary consumers])
#mcq(10, [A pyramid of energy always tapers towards the top because], [the number of organisms decreases], [energy is lost at each trophic level], [the animals become larger], [the top predators are fewer])
#mcq(11, [The bacteria that convert ammonia to nitrates in the soil are], [nitrifying bacteria], [denitrifying bacteria], [nitrogen-fixing bacteria], [decomposing bacteria])
#mcq(12, [The best method of estimating the population of a mobile animal is the], [quadrat method], [capture–recapture method], [transect method], [line-intercept method])
#answer-key-grid(("A", "B", "C", "B", "A", "B", "A", "B", "B", "B", "A", "B"))

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
