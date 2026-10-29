#import "template.typ": *

#current-chapter.update("Chapter 5: Animal Nutrition")
#pagebreak()

#chapter-opener(
  5,
  "Animal Nutrition and Digestion",
  subtitle: "The Food Classes and Their Tests, Enzymes, the Alimentary Canal, Dentition, Absorption in the Ileum, and the Liver",
  syllabus-ref: "Sec. B • Topic 4",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Name the six food classes and give the test for each.",
    "Match each digestive enzyme to its substrate, its product and its site of action.",
    "Trace a piece of food through the alimentary canal, naming what happens at each stage.",
    "Compare the dentition of a herbivore, a carnivore and an omnivore.",
    "Explain how the villus is adapted for absorption.",
  ),
  hotspots: (
    "\"The enzyme that digests starch is …\" — amylase (ptyalin in saliva, pancreatic amylase in the duodenum).",
    "\"Bile is produced by the … and stored in the …\" — the liver; the gall bladder.",
    "\"The end product of protein digestion is …\" — amino acids, not peptides.",
    "\"Absorption of digested food takes place mainly in the …\" — ileum.",
    "\"The test for reducing sugar uses …\" — Benedict's solution and a water bath.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Writing that bile *digests* fat — it only *emulsifies* it, increasing the surface area for lipase. (2) Confusing *absorption* (food passing into the blood) with *assimilation* (food being used by the cells). (3) Naming the wrong end product: starch → glucose, protein → amino acids, fat → fatty acids and glycerol — never the other way round.",
)

// ============================================================================
// SECTION 5.1
// ============================================================================
== 5.1 The Food Classes

Food does four things: it supplies *energy*, provides *material for growth and repair*, keeps the body *healthy*, and supplies *roughage* to keep the gut working.

#table(
  columns: (0.95fr, 1.7fr, 1.5fr, 1.15fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Food sources],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Test],
  ),

  [*Carbohydrates*], [Main source of energy; starch is the storage form, sugars the transport form], [Rice, yam, bread, cassava, sugar], [Starch: iodine → blue-black. Reducing sugar: Benedict's + heat → brick-red],
  [*Proteins*], [Growth and repair of tissues; enzymes and antibodies are proteins], [Beans, fish, meat, eggs, milk], [Biuret → violet/purple],
  [*Fats and oils*], [Concentrated energy store; insulation; forms cell membranes], [Palm oil, groundnut, butter, fish], [Emulsion test: ethanol then water → milky white],
  [*Vitamins*], [Small quantities needed for health; no energy value], [Fruit, vegetables, liver, fish oil], [Not tested at school level — learn the deficiency disease instead],
  [*Mineral salts*], [Building materials and regulators — calcium for bones, iron for haemoglobin], [Milk, salt, green vegetables, liver], [Not tested — learn the deficiency],
  [*Water*], [Solvent, transport medium, temperature control], [Drinking water and all foods], [—],
  [*Roughage (fibre)*], [Cellulose that cannot be digested; keeps the gut muscles working (peristalsis)], [Vegetables, whole grains, fruit], [—],
)

#v(5pt)

#shortcut-box("The four food tests, in one line each")[
  *Starch* — add iodine: blue-black means present. *Reducing sugar* — add Benedict's, heat in a water bath: brick-red. *Protein* — add Biuret: violet. *Fat* — shake with ethanol, then pour into water: milky emulsion.
]

#worked-example(
  1,
  "Identifying an unknown food",
  tier: "FOUNDATION",
  [A food sample gives a blue-black colour with iodine, a violet colour with Biuret, and no change with Benedict's solution. State which food substances are present and which are absent.]
  ,[
    Blue-black with iodine means *starch* is present. Violet with Biuret means *protein* is present. No change with Benedict's means no *reducing sugar* is present.

    Since starch is present but the sugar test is negative, the food is a starchy, protein-containing food in which the carbohydrate has not yet been broken down into sugar — a cereal or a tuber, for example.

    *Answer:* starch and protein present; reducing sugar absent.
  ],
)

// ============================================================================
// SECTION 5.2
// ============================================================================
== 5.2 Enzymes — the Digestive Keys

An enzyme is a *biological catalyst*: a protein that speeds up a reaction and is not used up by it. Each enzyme works on one substrate only — the *lock-and-key* idea — and each has an optimum temperature (about 37 °C in the human body) and an optimum pH.

#table(
  columns: (1.15fr, 1.45fr, 1.55fr, 1.2fr, 0.8fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Enzyme],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Site],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Substrate],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Product],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[pH],
  ),

  [Salivary amylase (ptyalin)], [Mouth], [Starch], [Maltose], [~7],
  [Pepsin], [Stomach], [Proteins], [Peptides], [~2 (acid)],
  [Pancreatic amylase], [Duodenum], [Starch], [Maltose], [~8],
  [Trypsin], [Duodenum], [Proteins and peptides], [Amino acids], [~8],
  [Lipase], [Duodenum], [Fats], [Fatty acids + glycerol], [~8],
  [Maltase], [Ileum], [Maltose], [Glucose], [~8],
  [Sucrase], [Ileum], [Sucrose], [Glucose + fructose], [~8],
  [Lactase], [Ileum], [Lactose], [Glucose + galactose], [~8],
)

#trap-box("Bile does not digest anything")[
  *Bile* is made by the *liver*, stored in the *gall bladder* and released into the duodenum. It contains no enzymes. Its job is to *emulsify* fats — break large droplets into many small ones — so that lipase has a much larger surface area to work on. It also neutralises the acid from the stomach, giving the pancreatic enzymes the alkaline pH they need.
]

#worked-example(
  2,
  "The effect of temperature",
  tier: "UTME STANDARD",
  [An enzyme that digests starch is tested at 20 °C, 37 °C and 80 °C. State and explain the result at each temperature.]
  ,
  [
    At *20 °C* digestion is slow: the molecules have little kinetic energy, so the enzyme and substrate meet only rarely.

    At *37 °C* digestion is fastest: this is the optimum temperature, the body temperature at which the enzyme works best.

    At *80 °C* digestion stops: the enzyme is a protein, and the heat has *denatured* it. Its shape — and therefore its active site — has been destroyed permanently, so the substrate no longer fits.

    *Answer:* slow, fast, none — with denaturation as the reason for the third.
  ],
)

// ============================================================================
// SECTION 5.3
// ============================================================================
== 5.3 The Alimentary Canal

#diagram-fig("diagrams/ch05_alimentary.svg",
  "The human alimentary canal, with the numbered parts and the accessory organs that pour their secretions into it.")

#table(
  columns: (1.05fr, 2.5fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What happens there],
  ),

  [*Mouth*], [Teeth cut and grind the food; saliva moistens it, and salivary amylase begins the digestion of starch to maltose. The tongue rolls it into a bolus and starts swallowing.],
  [*Oesophagus*], [No digestion. *Peristalsis* — waves of muscular contraction behind the bolus — pushes the food to the stomach.],
  [*Stomach*], [Churns the food; hydrochloric acid kills bacteria and gives pepsin its acid pH; pepsin digests proteins to peptides. The result is *chyme*.],
  [*Duodenum*], [Bile from the liver emulsifies fat and neutralises the acid; pancreatic juice supplies amylase, trypsin and lipase. Most chemical digestion is completed here.],
  [*Ileum*], [The longest part of the gut. Its lining is folded into *villi*, which absorb glucose, amino acids, fatty acids, glycerol, vitamins, minerals and water.],
  [*Caecum and appendix*], [Large in herbivores, where cellulose is digested by bacteria; in humans it is small and has little digestive function.],
  [*Colon*], [Absorbs water and mineral salts; the remaining material becomes faeces.],
  [*Rectum and anus*], [Stores faeces and passes them out by *egestion*.],
)

#concept-box("Digestion, absorption, assimilation, egestion")[
  *Digestion* is the breakdown of large, insoluble food molecules into small, soluble ones. *Absorption* is the passage of those small molecules through the gut wall into the blood. *Assimilation* is their use by the cells — for energy, growth or repair. *Egestion* is the removal of the undigested remainder. Four different words, four different marks; use them precisely.
]

// ============================================================================
// SECTION 5.4
// ============================================================================
== 5.4 Dentition

Mammals have two sets of teeth: *milk* (deciduous) teeth, which are lost, and *permanent* teeth. Each jaw has four kinds of tooth, and which ones are large tells you what the animal eats.

#diagram-fig("diagrams/ch05_dentition.svg",
  "Dentition compared: herbivore, carnivore and omnivore. The shape and number of each type of tooth are the examinable differences.")

#table(
  columns: (1.15fr, 1.7fr, 1.7fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Herbivore (sheep, cow)],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Carnivore (dog, cat)],
  ),

  [Incisors], [Broad and chisel-like for cropping grass; ruminants have no upper incisors, only a horny pad], [Small],
  [Canines], [Absent or small], [Large, curved and pointed for tearing flesh],
  [Premolars and molars], [Broad, with flat, ridged surfaces for grinding], [Sharp, blade-like *carnassial* teeth that shear like scissors],
  [Jaw movement], [Side-to-side grinding], [Up-and-down only — no grinding],
  [Diastema], [A gap between incisors and molars where the tongue can work], [Absent],
)

#worked-example(
  3,
  "Deducing the diet from the teeth",
  tier: "UTME STANDARD",
  [An animal's skull shows large, sharp canine teeth, small incisors, blade-like cheek teeth and a jaw that can only move up and down. Deduce its diet and give two reasons.]
  ,
  [
    The *large, curved canines* are for seizing and tearing prey; small incisors are of little use for cutting plant material.

    The *blade-like cheek teeth* shear flesh like scissor blades rather than grinding it, and the *up-and-down jaw movement* is the carnivore pattern — grinding requires a side-to-side movement that this skull cannot perform.

    *Answer:* the animal is a carnivore.
  ],
)

// ============================================================================
// SECTION 5.5
// ============================================================================
== 5.5 Absorption in the Ileum

The ileum is about six metres long and its inner surface is folded into millions of finger-like projections called *villi*. Each villus is one cell thick, richly supplied with blood capillaries, and contains a central lymph vessel called a *lacteal*.

#diagram-fig("diagrams/ch05_villus.svg",
  "A villus. The four adaptations — large surface area, thin wall, good blood supply and a lacteal — are a standard four-mark question.")

#table(
  columns: (1.15fr, 2.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature of the villus],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why it helps absorption],
  ),

  [Finger-like shape, millions of them], [Enormous surface area over which absorption can take place],
  [Wall one cell thick], [Short diffusion distance, so substances cross quickly],
  [Dense capillary network], [Removes absorbed food at once, keeping a steep diffusion gradient],
  [Central lacteal], [Absorbs the fatty acids and glycerol, which are too large for the capillaries],
  [Microvilli on the surface cells], [Increase the surface area still further],
)

#worked-example(
  4,
  "Following the fat",
  tier: "JAMB CHALLENGE",
  [Trace the digestion and absorption of a fat molecule from the duodenum to its destination.]
  ,
  [
    In the duodenum, *bile* from the liver emulsifies the fat into small droplets, and *lipase* from the pancreas digests it into *fatty acids and glycerol*.

    These products are absorbed through the wall of the villus into the *lacteal* — the lymph vessel at the centre of the villus — rather than into the blood capillary, because they are too large to enter the capillary directly.

    The lymph carries them to the *thoracic duct*, which empties into the bloodstream near the heart, and from there they are carried to the tissues, where they are reassembled into fat and used for insulation, as an energy store, or to build cell membranes.

    *Answer:* emulsified by bile, digested by lipase, absorbed into the lacteal, carried in lymph to the blood, and used or stored in the tissues.
  ],
)

// ============================================================================
// SECTION 5.6
// ============================================================================
== 5.6 The Liver

The liver is the largest internal organ and the body's chemical factory.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[What the liver does]
  #v(4pt)
  • makes *bile*, which is stored in the gall bladder;
  • stores *glycogen*, converting excess glucose to glycogen and back again when blood sugar falls;
  • *deaminates* excess amino acids, turning the nitrogen part into urea which the kidneys excrete;
  • stores *iron* (from worn-out red blood cells), *vitamins A, D and B₁₂*;
  • breaks down *alcohol* and other harmful substances — detoxification;
  • produces *fibrinogen* and other blood-clotting proteins;
  • in the fetus, makes red blood cells.
]

#trap-box("The two commonest liver questions")[
  *“Bile is produced by the liver and stored in the gall bladder.”* Candidates lose the mark by swapping the two — the gall bladder stores only.

  *“The liver converts excess glucose into glycogen.”* It is *glycogen*, not starch. Starch is the plant storage carbohydrate; glycogen is the animal one.
]

// ============================================================================
// SECTION 5.7 — CHECKLIST
// ============================================================================
== 5.7 Chapter 5 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + name the six food classes, a source of each and the test for starch, sugar, protein and fat;
  + say what an enzyme is and state the effect of temperature and pH on it;
  + match six digestive enzymes to their sites, substrates and products;
  + trace food through mouth → oesophagus → stomach → duodenum → ileum → colon → rectum;
  + explain the part played by bile, and by the pancreas;
  + compare herbivore, carnivore and omnivore dentition;
  + describe four adaptations of the villus;
  + list six functions of the liver.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Food is broken down by enzymes — amylase for starch, protease for protein, lipase for fat — each working at its own pH in its own part of the tube. Bile emulsifies fat but digests nothing. The villi absorb, the liver processes, and the colon takes back the water.
  ]
]

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: food classes and tests, enzymes, absorption and teeth.", width: 100%)

// ============================================================================
// SECTION 5.8 — TWO-MINUTE SET
// ============================================================================
== 5.8 Chapter 5 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#block(breakable: false)[
#mcq(1, [Bile is produced by the], [gall bladder], [pancreas], [liver], [duodenum])
#mcq(2, [The end product of the digestion of protein is], [peptides], [amino acids], [glucose], [glycerol])
#mcq(3, [Absorption of digested food takes place mainly in the], [stomach], [colon], [ileum], [oesophagus])
#mcq(4, [A food sample turns brick-red when heated with Benedict's solution. The food contains], [starch], [protein], [a reducing sugar], [fat])

#answer-key-grid(("C", "B", "C", "C"))
]


#include "drill_ch05.typ"
