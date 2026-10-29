#import "template.typ": *

#current-chapter.update("Chapter 5: Reproduction in Animals")
#pagebreak()

#chapter-opener(
  5,
  "Reproduction in Animals",
  subtitle: "The Reproductive Systems, Gametes, the Menstrual Cycle, Fertilisation, Pregnancy, Birth and Birth Control",
  syllabus-ref: "Sec. B • Topic 5",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Label the main parts of the male and female reproductive systems and state the function of each.",
    "Compare the sperm and the ovum in structure, size and motility.",
    "Describe the menstrual cycle and explain the role of FSH, LH, oestrogen and progesterone.",
    "State where fertilisation occurs and trace the zygote to implantation.",
    "Describe the structure and functions of the placenta, amnion and umbilical cord.",
    "Name the methods of birth control and state how each works.",
  ),
  hotspots: (
    "\"Fertilisation in a human normally occurs in the …\" — the oviduct (fallopian tube), never the uterus.",
    "\"Ovulation is triggered by …\" — a surge of LH.",
    "\"The hormone that maintains the lining of the uterus during pregnancy is …\" — progesterone.",
    "\"The structure that allows exchange between mother and foetus is the …\" — the placenta.",
    "\"Identical twins arise from …\" — one fertilised egg dividing into two embryos.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Putting fertilisation in the *uterus*: the egg is fertilised in the *oviduct* and *then* travels to the uterus to implant. (2) Mixing up oestrogen and progesterone: *oestrogen* repairs and thickens the lining, *progesterone* maintains it. (3) Saying the placenta feeds the foetus by mixing the two bloods — the bloods never mix; substances diffuse across the placental membrane.",
)

// ============================================================================
// SECTION 5.1
// ============================================================================
== 5.1 The Reproductive Systems

Reproduction in animals is sexual: a haploid sperm from the male fuses with a haploid ovum from the female, restoring the diploid number in the zygote.

#diagram-fig("diagrams/ch05_systems.svg",
  "The human reproductive systems, drawn schematically. The male system produces and delivers sperm; the female system produces eggs and houses the developing embryo.")

#table(
  columns: (1.15fr, 1.6fr, 1.1fr, 1.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Organ],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[One-line answer],
  ),

  [*Testis*], [Produces sperm and testosterone], [Male], [Sperm + male hormone],
  [*Epididymis*], [Stores sperm while they mature], [Male], [Sperm store],
  [*Vas deferens*], [Carries sperm from the testis to the urethra], [Male], [Sperm duct],
  [*Prostate and seminal vesicles*], [Add fluid to form semen], [Male], [Semen],
  [*Urethra*], [Carries semen (and urine) out of the body], [Male], [Exit tube],
  [*Ovary*], [Produces eggs (ova) and the hormones oestrogen and progesterone], [Female], [Egg + hormones],
  [*Oviduct*], [Site of fertilisation; carries the egg to the uterus], [Female], [Fertilisation tube],
  [*Uterus*], [Houses and nourishes the developing embryo], [Female], [Womb],
  [*Cervix*], [Muscular neck of the uterus, closed by a mucus plug in pregnancy], [Female], [Gateway],
  [*Vagina*], [Receives the semen and is the birth canal], [Female], [Birth canal],
)

#table(
  columns: (1.15fr, 1.35fr, 1.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Sperm],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ovum],
  ),

  [Size], [Very small — about 0.05 mm], [Large — about 0.1 mm, and visible to the eye],
  [Shape], [Head, middle piece and tail], [Round, with a food store and a jelly coat],
  [Motility], [Motile — swims with its tail], [Non-motile — moved by cilia in the oviduct],
  [Numbers], [Millions released at once], [One released per cycle],
  [Food store], [Very little; the middle piece holds mitochondria for energy], [Abundant yolk for the early embryo],
  [Chromosome number], [Haploid ($n$)], [Haploid ($n$)],
)

#shortcut-box("Who swims, who stores?")[
  The *sperm* is built for delivery: small, motile, many mitochondria, almost no food. The *ovum* is built for storage: large, still, packed with yolk. If a question asks why the ovum is larger, the answer is *food reserves for the embryo before implantation*.
]

// ============================================================================
// SECTION 5.2
// ============================================================================
== 5.2 The Menstrual Cycle

The menstrual cycle is a repeating series of changes in the ovary and the uterus, controlled by four hormones. It lasts about 28 days in most women, counted from the first day of bleeding.

#diagram-fig("diagrams/ch05_cycle.svg",
  "The menstrual cycle. FSH starts a follicle growing; oestrogen repairs the uterine lining; an LH surge triggers ovulation on about day 14; progesterone maintains the lining until it falls at the end of the cycle.")

#table(
  columns: (1.15fr, 1.2fr, 2.15fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Hormone],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[From],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Effect],
  ),

  [*FSH*], [Pituitary], [Stimulates a follicle in the ovary to grow and to secrete oestrogen],
  [*Oestrogen*], [Developing follicle], [Repairs and thickens the lining of the uterus after menstruation],
  [*LH*], [Pituitary], [A surge on about day 14 triggers ovulation — the release of the egg],
  [*Progesterone*], [Corpus luteum, later the placenta], [Maintains the thickened lining; inhibits FSH and LH so no second egg is released],
)

#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[The cycle in five lines — learn it as a story]
]

+ *Days 1–5:* progesterone falls, the lining breaks down and is shed — menstruation.
+ *Days 6–13:* FSH made the follicle grow; oestrogen repairs and thickens the lining.
+ *Day 14:* the LH surge triggers ovulation.
+ *Days 15–28:* the ruptured follicle becomes the corpus luteum and secretes progesterone, which maintains the lining.
+ *If no fertilisation:* the corpus luteum degenerates, progesterone falls, and the cycle begins again.

#trap-box("Which hormone does which")[
  *Oestrogen* = repair and grow the lining. *Progesterone* = *pro*-gestation: maintain the lining for a pregnancy. *FSH* = grow the follicle. *LH* = release the egg. If a question says *maintains the lining* the answer is progesterone; if it says *repairs the lining* the answer is oestrogen.
]

// ============================================================================
// SECTION 5.3
// ============================================================================
== 5.3 Fertilisation, Implantation and Pregnancy

#diagram-fig("diagrams/ch05_fertilisation.svg",
  "From ovulation to birth: the egg is fertilised in the oviduct, the zygote divides as it travels, and the embryo implants in the lining of the uterus.")

#concept-box("The six events, in order")[
  *Ovulation* — an egg is released from the ovary. \
  *Fertilisation* — a sperm fuses with the egg in the upper oviduct, forming the zygote. \
  *Cleavage* — the zygote divides repeatedly as it travels down the oviduct. \
  *Implantation* — the ball of cells sinks into the lining of the uterus, about a week after fertilisation. \
  *Placenta formation* — the embryo and the mother's uterus together form the placenta. \
  *Birth* — contractions of the uterus push the baby out through the cervix and vagina.
]

#table(
  columns: (1.15fr, 2.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Structure],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Function],
  ),

  [*Placenta*], [Exchange surface between mother and foetus: oxygen and food in, carbon dioxide and urea out. It also makes progesterone and oestrogen. The two blood supplies never mix — substances diffuse across the membrane],
  [*Umbilical cord*], [Carries the foetal blood vessels between the foetus and the placenta: two arteries out, one vein in],
  [*Amnion and amniotic fluid*], [A fluid-filled sac that cushions the foetus against shock, keeps it at a constant temperature and allows it to move],
  [*Cervix*], [Muscular ring at the neck of the uterus; closed by a mucus plug during pregnancy],
)

#shortcut-box("Why the mother's blood must not mix with the foetus's")[
  The mother and the foetus may have different blood groups, and the mother's immune system would attack foreign cells. A membrane that lets *dissolved substances* through but not *cells* keeps the exchange going without the danger. That single sentence answers most placenta questions.
]

#worked-example(
  1,
  "Tracing the journey",
  tier: "UTME STANDARD",
  [Describe the journey of a sperm from the time it is deposited until it meets the egg, and state what happens to the zygote after fertilisation.],
  [
    - The sperm are deposited in the *vagina* and swim through the *cervix* and *uterus*, using the tail and the muscular contractions of the uterus.
    - They pass into the *oviduct*, where one of them meets the egg.
    - The acrosome of the sperm releases enzymes that digest the jelly coat of the egg, and the sperm nucleus enters.
    - The two haploid nuclei fuse — *fertilisation* — and a diploid *zygote* is formed.
    - The zygote divides by *mitosis* as it travels down the oviduct, forming a ball of cells.
    - About a week later the ball *implants* in the lining of the uterus, and the placenta develops.

    *Model answer:* fertilisation in the oviduct; implantation in the uterus about a week later.
  ],
)

// ============================================================================
// SECTION 5.4
// ============================================================================
== 5.4 Twins

#table(
  columns: (1.2fr, 1.9fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Identical (monozygotic)],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Fraternal (dizygotic)],
  ),

  [Origin], [One fertilised egg splits into two embryos], [Two eggs released and fertilised by two sperm],
  [Genes], [Identical], [As alike as ordinary brothers and sisters],
  [Sex], [Always the same], [May be the same or different],
  [Placenta], [Usually share one placenta], [Each has its own placenta],
  [Frequency], [About one set in three of all twins], [About two sets in three],
)

// ============================================================================
// SECTION 5.5
// ============================================================================
== 5.5 Birth Control

#table(
  columns: (1.4fr, 2.25fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it works],
  ),

  [Combined oral contraceptive pill], [Contains oestrogen and progesterone, which suppress FSH and LH, so no egg is released],
  [Condom (sheath)], [A physical barrier that stops sperm entering the vagina; it also reduces the spread of sexually transmitted infections],
  [Diaphragm or cervical cap], [A barrier placed over the cervix],
  [Intrauterine device (IUD)], [A small device placed in the uterus that prevents implantation],
  [Vasectomy], [The vas deferens is cut and tied, so semen contains no sperm],
  [Tubal ligation], [The oviducts are cut and tied, so the egg and sperm cannot meet],
  [Natural (rhythm) method], [Abstinence during the days around ovulation],
  [Injectable and implant contraceptives], [Slow release of hormones that prevent ovulation],
)

#trap-box("The pill does not stop menstruation")[
  The combined pill prevents *ovulation*, not menstruation — the monthly bleed on the pill is a withdrawal bleed. Nor is it a barrier: it gives no protection against sexually transmitted infections, which is why the condom is still taught alongside it.
]

// ============================================================================
// SECTION 5.6 — CHECKLIST
// ============================================================================
== 5.6 Chapter 5 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + name the organs of the male and female reproductive systems and give the function of each;
  + compare the sperm and the ovum in size, structure, motility and food store;
  + describe the menstrual cycle and name the hormone responsible for each stage;
  + state where fertilisation occurs and trace the zygote to implantation;
  + give the functions of the placenta, umbilical cord and amniotic fluid;
  + explain why the maternal and foetal blood never mix;
  + distinguish identical from fraternal twins in origin, genes, sex and placenta;
  + name six methods of birth control and say how each works;
  + explain the cause of the menopause and the changes that follow it.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    FSH grows the follicle, oestrogen repairs the lining, the LH surge releases the egg, and progesterone holds the lining until it is clear whether an embryo has implanted. Fertilisation happens in the oviduct; the placenta does the feeding; and the cord is the delivery line.
  ]
]

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: gametes, the cycle, fertilisation and pregnancy.", width: 100%)

// ============================================================================
// SECTION 5.7 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 5.7 Chapter 5 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Fertilisation in a human normally takes place in the], [uterus], [ovary], [oviduct], [cervix])
#mcq(2, [Ovulation is triggered by a surge of], [FSH], [LH], [progesterone], [oestrogen])
#mcq(3, [The hormone that maintains the lining of the uterus during pregnancy is], [oestrogen], [FSH], [progesterone], [LH])
#mcq(4, [The structure through which the foetus obtains oxygen and food is the], [amnion], [cervix], [placenta], [oviduct])

#answer-key-grid(("C", "B", "C", "C"))

#answer-notes((
  ("C", [the egg is fertilised in the upper oviduct and only then travels to the uterus to implant.]),
  ("B", [a surge of luteinising hormone (LH) on about day 14 ruptures the follicle and releases the egg.]),
  ("C", [progesterone maintains the thickened lining; oestrogen repairs it earlier in the cycle.]),
  ("C", [the placenta is the exchange surface — oxygen and food cross from the mother's blood, and wastes cross back.]),
))
