#import "template.typ": *

#current-chapter.update("Chapter 6: Growth and Development")
#pagebreak()

#chapter-opener(
  6,
  "Growth and Development",
  subtitle: "Measuring Growth, Growth Curves, Puberty, Metamorphosis and the Stages of Human Development",
  syllabus-ref: "Sec. B • Topic 6",
  utme-weight: "1 Q every year",
)

#focus-radar(
  objectives: (
    "Define growth and development and explain how each is measured.",
    "Describe and interpret the sigmoid growth curve of a human and the stepped curve of an insect.",
    "Explain why an insect must moult in order to grow.",
    "Distinguish complete from incomplete metamorphosis and give an example of each.",
    "List the changes that take place at puberty in boys and in girls, and name the hormones responsible.",
    "Name the stages of human development from zygote to adult.",
  ),
  hotspots: (
    "\"Growth is best defined as …\" — a permanent increase in size or mass due to cell division and enlargement.",
    "\"The stepped growth curve is shown by …\" — an insect with an exoskeleton.",
    "\"An insect moults because …\" — the exoskeleton is rigid and cannot stretch.",
    "\"Complete metamorphosis has …\" — four stages: egg, larva, pupa, adult.",
    "\"The hormone responsible for the growth spurt at adolescence is …\" — growth hormone (with testosterone or oestrogen).",
  ),
  trap-summary: "Three slips decide this chapter. (1) Treating *growth* and *development* as the same word: growth is an increase in size, development is the appearance of new structures and abilities. (2) Saying an insect grows by stretching its skeleton — it cannot; it must *moult*. (3) Calling a nymph a larva: a *nymph* resembles the adult and there is no pupal stage.",
)

// ============================================================================
// SECTION 6.1
// ============================================================================
== 6.1 What Growth Really Means

#concept-box("Growth and development are not the same thing")[
  *Growth* is a permanent increase in size or mass — an irreversible increase brought about by *cell division* and *cell enlargement*. \
  *Development* is the appearance of new structures and new abilities: a seed becoming a seedling, a child becoming an adult, a tadpole growing legs. \
  A crystal gets bigger but it does not *grow*, because no cells divide; a body builder who swells after a heavy meal has not grown either.
]

Growth can be measured in several ways, and the examiner expects you to know which to choose.

#table(
  columns: (1.35fr, 2.1fr, 1.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Measure],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it is taken],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Best for],
  ),

  [*Height (length)*], [Measured standing against a wall, heels together, head level], [Children and adolescents],
  [*Mass*], [A beam balance; a lever balance is less precise], [Infants, where height changes slowly],
  [*Dry mass*], [The organism is dried to constant mass in an oven], [Plants and seedlings — water content confuses fresh mass],
  [*Width or girth*], [A tape measure round the trunk or stem], [Trees and woody plants],
  [*Area*], [Gridded paper or a planimeter for a leaf], [Leaves],
  [*Cell count*], [Counting under a microscope], [Micro-organisms and cell cultures],
)

#shortcut-box("Fresh mass or dry mass?")[
  If a question asks about the growth of a *plant*, the answer is *dry mass*, because a plant's fresh mass changes every time it absorbs or loses water. Water is not growth; carbon fixed by photosynthesis is.
]

// ============================================================================
// SECTION 6.2
// ============================================================================
== 6.2 Growth Curves

A graph of size against time is a *growth curve*. Two shapes carry almost all the marks: the *sigmoid* curve of a human or a plant, and the *stepped* curve of an insect.

#diagram-fig("diagrams/ch06_growth.svg",
  "Two growth curves. The human curve is S-shaped: slow in infancy, steady in childhood, a spurt at puberty, then level. The insect curve rises in steps because the exoskeleton must be shed at each moult.")

#table(
  columns: (1.2fr, 2.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Stage of the human curve],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What happens and why],
  ),

  [Infancy], [Very rapid growth — the baby doubles its birth mass in about five months, because cells divide quickly],
  [Childhood], [Steady, slower growth; the brain and the body organise rather than expand],
  [Adolescence (puberty)], [A second rapid phase — the *growth spurt* — with growth hormone plus testosterone or oestrogen],
  [Adulthood], [Growth stops when the growth plates at the ends of the long bones fuse],
  [Old age], [Height may fall slightly as the discs between the vertebrae thin],
)

#concept-box("Why an insect must moult")[
  An insect's rigid *exoskeleton* of chitin cannot stretch. The insect therefore grows in bursts: it swells, splits the old cuticle, crawls out soft, expands, and hardens again — *moulting* or *ecdysis*. That is why the curve is a staircase and not a smooth rise. A vertebrate has an internal skeleton that grows with it, so its curve is smooth.
]

// ============================================================================
// SECTION 6.3
// ============================================================================
== 6.3 Metamorphosis

*Metamorphosis* is a change of body form during development, and it comes in two kinds.

#diagram-fig("diagrams/ch06_metamorph.svg",
  "Complete metamorphosis has four stages — egg, larva, pupa, adult — while incomplete metamorphosis has three — egg, nymph, adult — with no pupal stage.")

#table(
  columns: (1.15fr, 1.35fr, 1.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Complete],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Incomplete],
  ),

  [Stages], [Egg → larva → pupa → adult], [Egg → nymph → adult],
  [Pupal stage], [Present], [Absent],
  [Young resembles adult?], [No — the caterpillar looks nothing like the butterfly], [Yes — the nymph is a small adult without wings],
  [Habitat and food], [Often different for larva and adult], [Usually the same for nymph and adult],
  [Examples], [Butterfly, moth, housefly, mosquito, bee, beetle], [Grasshopper, cockroach, termite, locust, praying mantis],
)

#worked-example(
  1,
  "Why metamorphosis is an advantage",
  tier: "UTME STANDARD",
  [Explain one advantage of complete metamorphosis to a species such as the mosquito, and one way in which this knowledge is used in public health.],
  [
    *Advantage:* the larva and the adult live in different places and eat different food. A mosquito larva filters organic particles in stagnant water while the adult sucks blood or nectar. They therefore do not compete with each other for the same resource, and the species can survive in a place where a single stage could not.

    *Public-health use:* the larval stage is aquatic and cannot move far. Draining stagnant water, filling puddles and spraying the water surface with oil therefore kill the larvae and break the life cycle — far more effective than trying to catch adults flying.

    *Model answer:* different larval and adult niches reduce competition; the aquatic larva can be controlled by draining breeding sites.
  ],
)

// ============================================================================
// SECTION 6.4
// ============================================================================
== 6.4 Puberty and Adolescence

*Puberty* is the period when the reproductive organs become functional and the secondary sexual characters appear. It is triggered by hormones from the pituitary, which switch on the gonads.

#table(
  columns: (1.35fr, 1.35fr, 1.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Change],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[In boys],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[In girls],
  ),

  [Pubic and underarm hair], [Appears], [Appears],
  [Voice], [Deepens as the larynx enlarges], [Remains high],
  [Body build], [Shoulders broaden; muscle mass increases], [Hips widen; body fat increases],
  [Breasts], [May swell slightly and temporarily], [Develop],
  [Skin], [Becomes oilier; acne may appear], [Becomes oilier; acne may appear],
  [Reproductive change], [Sperm production begins; wet dreams], [Menstrual cycle begins; ovulation],
  [Hormone responsible], [Testosterone, with growth hormone], [Oestrogen and progesterone, with growth hormone],
)

#trap-box("Puberty is not the same as adolescence")[
  *Puberty* is the biological change — the hormones, the gametes and the secondary sexual characters. *Adolescence* is the wider period of social and emotional change between childhood and adulthood. In an exam question about hormones, write puberty; in a question about behaviour, write adolescence.
]

// ============================================================================
// SECTION 6.5
// ============================================================================
== 6.5 The Stages of Human Development

#table(
  columns: (1.25fr, 2.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What is happening],
  ),

  [Zygote], [The single cell formed by fertilisation, in the oviduct],
  [Embryo], [From the first division to about eight weeks; organs are forming and the placenta is established],
  [Foetus], [From eight weeks to birth; organs grow and mature],
  [Infant], [Birth to about two years — the fastest growth of all, and the period of milk teeth],
  [Child], [Two years to puberty — steady growth and the replacement of milk teeth by permanent teeth],
  [Adolescent], [Puberty to adulthood — the growth spurt and reproductive maturity],
  [Adult], [Growth has stopped; the body maintains itself],
)

// ============================================================================
// SECTION 6.6 — CHECKLIST
// ============================================================================
== 6.6 Chapter 6 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + define growth and distinguish it from development;
  + name four ways of measuring growth and say which suits which organism;
  + draw and label the sigmoid growth curve of a human, marking the growth spurt;
  + explain why the growth curve of an insect is a staircase;
  + compare complete and incomplete metamorphosis with two examples of each;
  + explain the advantage of metamorphosis to a species;
  + list four changes at puberty in each sex and name the hormones responsible;
  + name the stages of human development from zygote to adult in order.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Growth is a permanent increase in size; development is the appearance of new structures. Humans grow on a sigmoid curve, insects on a staircase because they must moult, and the biggest single change of form is metamorphosis — four stages if it is complete, three if it is not.
  ]
]

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: growth, curves, metamorphosis and development.", width: 100%)

// ============================================================================
// SECTION 6.7 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 6.7 Chapter 6 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Growth is best defined as], [an increase in the number of cells only], [an increase in fresh mass], [a permanent increase in size due to cell division and enlargement], [any change in shape])
#mcq(2, [A pupa is best described as], [the feeding stage of an insect], [the stage in which the adult body is built], [the adult stage], [the egg stage])
#mcq(3, [Complete metamorphosis consists of], [egg, nymph and adult], [egg, larva, pupa and adult], [larva, adult and egg], [egg and adult only])
#mcq(4, [The growth spurt at puberty in girls is mainly stimulated by], [insulin], [adrenaline], [oestrogen with growth hormone], [digestive enzymes])

#answer-key-grid(("C", "B", "B", "C"))

#answer-notes((
  ("C", [growth is a *permanent* increase in size, brought about by cell division and enlargement — not by water uptake.]),
  ("B", [inside the pupa the larval tissues are broken down and the adult body is built.]),
  ("B", [complete metamorphosis has four stages: egg, larva, pupa and adult.]),
  ("C", [oestrogen together with growth hormone drives the female growth spurt at puberty.]),
))

#include "drill_ch06.typ"
