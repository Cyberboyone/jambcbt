#import "template.typ": *

#current-chapter.update("Chapter 5: Animal Nutrition")
#pagebreak()

#chapter-opener(
  5,
  "Animal Nutrition and Digestion",
  subtitle: "Food Classes and Their Tests, Enzymes, the Alimentary Canal, Absorption in the Ileum, and the Dental Formula",
  syllabus-ref: "Sec. B • Topic 4",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Name the classes of food and state the test for each.",
    "State the properties of enzymes and the effect of temperature and pH on them.",
    "Name the digestive enzyme at each site, with its substrate and product.",
    "Relate the structure of a villus to absorption.",
    "Write the dental formula of a named mammal and relate the teeth to diet.",
  ),
  hotspots: (
    "\"The enzyme in saliva is …\" — salivary amylase (ptyalin), acting on starch.",
    "\"The test for protein is …\" — Biuret's test, violet colour.",
    "\"Bile is produced by the …\" — liver (stored in the gall bladder); it emulsifies fats.",
    "\"Most absorption takes place in the …\" — ileum of the small intestine.",
    "\"The dental formula of an adult human is …\" — 2.1.2.3 over 2.1.2.3.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Saying bile *digests* fat — it only *emulsifies* it, breaking it into droplets so lipase can work. (2) Giving the stomach as the site of most absorption — the stomach absorbs mainly water and alcohol, not food. (3) Forgetting that the *pancreas* makes most of the enzymes of the small intestine, even though the food is not in the pancreas.",
)

// ============================================================================
// SECTION 5.1
// ============================================================================
== 5.1 Food Classes and How to Test Them

#table(
  columns: (1.05fr, 1.2fr, 1.45fr, 1.45fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Food class],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Building unit],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Test and positive result],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Use in the body],
  ),

  [*Carbohydrate*], [Simple sugars (glucose, fructose)], [Benedict's solution → *brick-red* precipitate], [Energy for respiration],
  [*Starch*], [Glucose units], [Iodine solution → *blue-black* colour], [Energy store],
  [*Protein*], [Amino acids], [Biuret's test → *violet/purple*], [Growth and repair],
  [*Fat (lipid)*], [Fatty acids and glycerol], [Emulsion test (shake with water) → *milky white*], [Energy store, insulation],
  [*Vitamin*], [Various], [No simple common test], [Health; small amounts needed],
  [*Mineral salt*], [Ions such as iron and calcium], [No simple common test], [Health; small amounts needed],
  [*Water*], [—], [Anhydrous copper(II) sulphate → blue], [Solvent and transport],
)

#v(4pt)

#shortcut-box("Two tests, two colours, no ambiguity")[
  *Iodine* on starch: blue-black. *Benedict's* on reducing sugar: brick-red. Protein is *violet* (Biuret) and fat is *milky* (emulsion). Learn these four colours and you have every food-test question in the paper.
]

// ============================================================================
// SECTION 5.2
// ============================================================================
== 5.2 Enzymes

An *enzyme* is a protein that speeds up a chemical reaction without being used up itself. Enzymes are *specific*: one enzyme works on one substrate. They are sensitive to *temperature* and *pH*.

#table(
  columns: (1.2fr, 1.6fr, 1.6fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Enzyme group],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Substrate],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Product],
  ),

  [*Amylase* (carbohydrase)], [Starch], [Maltose, then glucose],
  [*Protease* (e.g. pepsin, trypsin)], [Proteins], [Peptides, then amino acids],
  [*Lipase*], [Fats], [Fatty acids and glycerol],
)

#v(4pt)

#concept-box("The two graphs every year")[
  As temperature rises, the rate of an enzyme reaction rises — until the enzyme is *denatured* above its optimum (about 37 °C in the human body), after which the rate falls sharply. Change of pH away from the optimum also slows the enzyme, because the active site changes shape and the substrate no longer fits.
]

#worked-example(
  1,
  "Why an enzyme stops working",
  tier: "UTME STANDARD",
  [An enzyme that works best at 37 °C is heated to 80 °C. Explain why the rate of reaction falls to zero and does not recover when the enzyme is cooled again.],
  [
    Above the optimum temperature the enzyme is *denatured*: the bonds holding its three-dimensional shape are broken, and the *active site* loses the shape that matches the substrate.

    Denaturation is *irreversible*. Cooling the enzyme does not restore the shape of the active site, so the substrate can no longer bind and no reaction occurs.

    *Answer:* the enzyme is permanently denatured; its active site no longer fits the substrate.
  ],
)

// ============================================================================
// SECTION 5.3
// ============================================================================
== 5.3 The Alimentary Canal

#diagram-fig("diagrams/ch05_canal.svg",
  "The human alimentary canal and its glands. Follow the food from mouth to anus — and note which glands empty into which part.")

#table(
  columns: (1.1fr, 1.45fr, 1.5fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Region],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Digestion there],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Absorption there],
  ),

  [*Mouth*], [Salivary amylase digests starch to maltose; teeth break up food], [None],
  [*Oesophagus*], [None — peristalsis moves food down], [None],
  [*Stomach*], [Pepsin digests protein to peptides in acid (pH 1–2)], [Water, alcohol, some drugs],
  [*Duodenum*], [Pancreatic amylase, trypsin, lipase; bile emulsifies fats], [Iron, calcium, some vitamins],
  [*Ileum*], [Intestinal enzymes complete the breakdown], [*Most* nutrients: glucose, amino acids, fatty acids, glycerol, vitamins],
  [*Colon*], [None; water is absorbed], [Water and mineral salts],
  [*Rectum and anus*], [None], [None — faeces stored and egested],
)

#v(4pt)

#worked-example(
  2,
  "Following one piece of bread",
  tier: "FOUNDATION",
  [Describe what happens to the starch in a piece of bread, from the mouth to the ileum, naming the enzyme at each stage.],
  [
    In the *mouth*, salivary amylase (ptyalin) begins the digestion of starch to maltose, at pH about 7.

    In the *stomach*, the acid stops amylase working — starch digestion pauses there.

    In the *duodenum*, pancreatic amylase resumes it, breaking the remaining starch to maltose; intestinal *maltase* in the ileum then splits maltose into glucose, which is absorbed into the blood capillaries of the villi.

    *Answer:* amylase (mouth) → no digestion (stomach) → pancreatic amylase (duodenum) → maltase to glucose (ileum).
  ],
)

// ============================================================================
// SECTION 5.4
// ============================================================================
== 5.4 Absorption and the Villus

The wall of the ileum is folded into millions of finger-like projections called *villi* (singular: villus). Each villus has a thin wall, a rich supply of blood capillaries and a central *lacteal*.

#table(
  columns: (1.2fr, 2.0fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature of the villus],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why it helps absorption],
  ),

  [Very many villi], [Enormous surface area for absorption],
  [Thin (one cell thick) wall], [Short diffusion distance],
  [Dense capillary network], [Carries glucose and amino acids away, keeping the gradient steep],
  [Central lacteal], [Absorbs the products of fat digestion],
  [Microvilli on the surface cells], [Increase the surface area still further],
)

#v(4pt)

#worked-example(
  3,
  "Why fats take a different route",
  tier: "JAMB CHALLENGE",
  [Fatty acids and glycerol do not enter the blood capillaries of the villus directly. Explain what happens to them instead.],
  [
    Fatty acids and glycerol are not soluble in water, so they cannot dissolve in the blood plasma. Inside the villus cells they are recombined into fats and coated in protein to form small droplets (*chylomicrons*).

    These droplets enter the *lacteal*, part of the lymphatic system, and are carried in lymph, eventually joining the blood through the thoracic duct.

    *Answer:* they are absorbed into the lacteals as fat droplets and travel in the lymph before entering the blood.
  ],
)

// ============================================================================
// SECTION 5.5
// ============================================================================
== 5.5 Teeth and Diet

Mammals have four kinds of teeth: *incisors* for cutting, *canines* for tearing, and *premolars* and *molars* for crushing and grinding. The number of each in one half of each jaw is written as a *dental formula*.

#diagram-fig("diagrams/ch05_dentition.svg",
  "The three diets in one picture: the human omnivore, the herbivore and the carnivore, and what each dentition is built to do.")

#table(
  columns: (1fr, 1.3fr, 1.3fr, 1.3fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Herbivore (cow)],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Carnivore (dog)],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Omnivore (human)],
  ),

  [Dental formula], [$0.0.3.3 div 3.1.3.3$ (upper canines absent)], [$3.1.4.2 div 3.1.4.3$], [$2.1.2.3 div 2.1.2.3$],
  [Incisors], [Broad, for cropping grass], [Small], [Medium, for biting],
  [Canines], [Absent or small], [Long, curved, for tearing flesh], [Small],
  [Premolars and molars], [Large, ridged, for grinding], [Sharp, blade-like — *carnassial* teeth], [Mixed, for crushing],
  [Jaw movement], [Side-to-side grinding], [Up-and-down only], [Both],
)

#v(4pt)

#trap-box("Count before you multiply")[
  A dental formula gives the teeth in *one half of one jaw*. To get the total for an adult human: $(2 + 1 + 2 + 3) times 2$ jaws $times 2$ halves $= 32$ teeth. Forgetting the "half of one jaw" convention turns 32 into 16 — the commonest error in this topic.
]

// ============================================================================
// SECTION 5.6 — CHECKLIST
// ============================================================================
== 5.6 Chapter 5 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + name the food classes and give the test and positive result for each;
  + state what an enzyme is and how temperature and pH affect it;
  + name the enzyme, substrate and product at each site of digestion;
  + label the alimentary canal and its glands on a diagram;
  + give five adaptations of a villus and explain each;
  + write the dental formula of a named mammal and say what it tells you about diet.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Food is broken down by specific enzymes at specific places: amylase in the mouth and duodenum, pepsin in the stomach, everything else in the small intestine. The villi absorb it, fats through the lacteals, and the teeth say what the animal is built to eat.
  ]
]

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: the tests, the enzymes, the canal and the dental formula.", width: 62%)

// ============================================================================
// SECTION 5.7 — TWO-MINUTE SET
// ============================================================================
== 5.7 Chapter 5 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [The reagent used to test for starch is], [Biuret's solution], [Benedict's solution], [iodine solution], [Sudan III])
#mcq(2, [The enzyme that digests protein in the stomach is], [amylase], [pepsin], [lipase], [maltase])
#mcq(3, [Most absorption of digested food occurs in the], [stomach], [duodenum], [ileum], [colon])
#mcq(4, [The dental formula of an adult human is], [$2.1.2.3 div 2.1.2.3$], [$3.1.4.2 div 3.1.4.3$], [$0.0.3.3 div 3.1.3.3$], [$2.1.2.4 div 2.1.2.4$])

#answer-key-grid(("C", "B", "C", "A"))
