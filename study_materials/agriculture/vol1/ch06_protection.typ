#import "template.typ": *

#current-chapter.update("Chapter 6: Pests, Diseases and Weeds")

#pagebreak()

#chapter-opener(
  6,
  "Pests, Diseases and Weeds",
  subtitle: "The Three Enemies of the Standing Crop, and the Four Families of Control",
  syllabus-ref: "Part I • Crop Protection",
  utme-weight: "6 Qs a year",
  running: "Pests, Diseases and Weeds",
)

#focus-radar(
  objectives: (
    "Define a pest and classify insect pests by their mouthparts and the damage they do.",
    "Name the major pests of Nigerian crops and the crop each attacks.",
    "Distinguish fungal, bacterial and viral diseases and give an example of each.",
    "Define a weed, state its effects, and describe the methods of weed control.",
    "Compare cultural, biological, chemical and genetic control, and explain integrated pest management.",
  ),
  hotspots: (
    "“An insect that pierces the plant and sucks its sap …” — a piercing-sucking insect such as an aphid. The trap offers *a biting-chewing insect*, which removes leaf tissue and leaves holes.\n",
    "“Black pod disease of cocoa is caused by …” — a fungus, *Phytophthora palmivora*. The trap offers *a bacterium*, which gives soft rots and wilts rather than a black lesion with a white margin.\n",
    "“Striga is a …” — parasitic weed of cereals, especially sorghum and millet. The trap offers *an insect pest*, because the word sounds like one.\n",
    "“The best reason for rotating crops is …” — it breaks the life cycle of pests and diseases that live in the soil. The trap offers *it adds nitrogen*, which is true only when the rotation includes a legume.",
  ),
  trap-summary: "Three slips. (1) Treating every organism on the farm as a pest, when a pest is defined by the *damage* it does. (2) Confusing a disease symptom with its cause: yellowing is a symptom, a virus may be the cause. (3) Reaching for the spray can first, when cultural control — clean seed, right spacing, destroying refuse, rotation — is cheaper and prevents the outbreak instead of treating it.",
)

// ============================================================================
== 6.1 What a Pest Is, and How Pests Are Classified

A pest is any organism whose activities reduce the quantity or quality of what the farmer is trying
to produce. The definition is economic, not biological: the same insect is a pest in a maize field
and a curiosity in a forest.

#table(
  columns: (1.2fr, 2.0fr, 2.0fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Examples],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Damage],
  ),
  [Biting and chewing insects], [grasshoppers, caterpillars, beetles, termites], [holes in leaves, cut stems, eaten roots],
  [Piercing and sucking insects], [aphids, whiteflies, mealybugs, thrips, capsids], [yellowing, curling, stunting; they may also carry viruses],
  [Boring insects], [stem borers, weevils, fruit flies], [tunnels in stems, tubers and fruit; the crop collapses or rots],
  [Nematodes], [root-knot nematode], [galls on roots; stunting and wilting],
  [Rodents], [cane rat, grasscutter, rats and mice], [cut stems, eaten grain, damage in store],
  [Birds], [quelea, weaver birds], [grain eaten in the field and at the drying floor],
  [Molluscs], [snails and slugs], [seedlings eaten and leaves holed],
)

#v(2pt)

#rule-box("Mouthparts tell you both the damage and the chemical")[
  A *biting-chewing* insect eats the leaf, so the damage is a hole and the control is a stomach
  poison — a contact or ingested insecticide. A *piercing-sucking* insect drinks from the plant, so
  the damage is a symptom in the tissue and the control must be *systemic*, taken up by the plant and
  met by the insect inside it.
]

== 6.2 The Named Pests of Nigerian Crops

#table(
  columns: (1.3fr, 1.35fr, 2.1fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Pest],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Crop],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Damage and sign],
  ),
  [Maize stem borer], [maize, sorghum], [tunnels in the stem; dead heart; broken stalks],
  [Fall armyworm], [maize], [ragged holes in the whorl; moist frass],
  [Cowpea aphid], [cowpea], [colonies on young shoots; curling and sooty mould],
  [Cowpea weevil (bruchid)], [cowpea in store], [round holes in the seed; the store is ruined in weeks],
  [Cassava mosaic whitefly], [cassava], [the vector of cassava mosaic virus],
  [Cassava mealybug], [cassava], [white waxy colonies; leaf distortion and dieback],
  [Variegated grasshopper], [cassava, maize, vegetables], [leaves stripped to the midrib],
  [Termites], [cassava, yam, tree crops], [hollow stems and roots; mounds over the plants],
  [Root-knot nematode], [tomato, okra, yam], [galls on the roots; stunting and wilting],
  [Cane rat / grasscutter], [sugarcane, cassava, rice], [stems cut at the base; cobs and tubers eaten],
  [Quelea], [rice, sorghum, millet], [the ripening grain taken in flocks],
)

== 6.3 Diseases: Fungi, Bacteria and Viruses

A disease is a disturbance in the plant caused by a pathogen, and the pathogen's group decides the
symptom and the control.

#table(
  columns: (0.9fr, 1.7fr, 2.6fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Group],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Signs and symptoms],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Nigerian examples and control],
  ),
  [Fungal], [spots, blights, mildews, rusts, rots; a mould or a powdery growth], [black pod of cocoa; rice blast; maize rust; damping-off in the nursery; control by fungicide, clean seed, wider spacing, destroying infected pods],
  [Bacterial], [water-soaked spots that turn brown, wilts, soft rots, often with a yellow halo], [bacterial blight of cassava; bacterial wilt of tomato; control by resistant varieties, crop rotation, avoiding overhead irrigation],
  [Viral], [mosaic patterns, mottling, streaks, stunting, distortion; no mould], [cassava mosaic disease; maize streak virus; cocoa swollen shoot; control by resistant varieties, rogueing, and killing the vector],
)

#v(2pt)

The disease triangle is the idea behind every mark in this section. A disease needs a *susceptible
host*, a *pathogen* and a *favourable environment* — moisture, warmth, shade, wounding. Remove one
side and the outbreak does not happen. That is why good farmers do not merely spray: they plant a
resistant variety, space it so that the canopy dries, and remove the infected material.

#diagram-fig("diagrams/agr1_ch06_protection.svg",
  "Figure 6.1 — the disease triangle, and the four families of control that break it.", width: 98%)

== 6.4 Weeds and Their Control

A weed is a plant growing where it is not wanted. Weeds are the most expensive enemy of the small
farmer, because they compete for exactly what the crop needs and they arrive without an invitation.

#table(
  columns: (1.2fr, 2.0fr, 2.0fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Weed],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why it is a problem],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Where it is found],
  ),
  [Spear grass (*Imperata cylindrica*)], [deep rhizomes that survive hoeing and burning], [savanna and abandoned farmland],
  [Elephant grass (*Pennisetum purpureum*)], [tall, dense, and hard to cut], [roadsides and moist farmland],
  [Siam weed (*Chromolaena odorata*)], [fast-growing shrub that smothers young crops and hosts pests], [the forest and derived savanna],
  [Striga (witchweed)], [a *parasitic* weed that attaches to the roots of cereals], [sorghum, millet, maize in the dry savanna],
  [Tridax and Euphorbia], [fast seeding ground cover in cultivated fields], [everywhere],
  [Water hyacinth], [floats and blocks waterways and fishing], [rivers and creeks],
)

#v(2pt)

#table(
  columns: (1.25fr, 2.0fr, 2.0fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Example],
  ),
  [Cultural], [smother the weed with a crop, or time the crop ahead of it], [close spacing, early planting, cover crops, mulching],
  [Mechanical], [pull, hoe, cut or plough it out], [hand weeding, hoeing, slashing, tillage],
  [Biological], [introduce a natural enemy that eats the weed], [the moth released against water hyacinth],
  [Chemical], [selective or non-selective herbicide], [glyphosate on spear grass; atrazine in maize],
  [Preventive], [keep the seed out of the field], [clean seed, clean implements, clean manure, quarantine],
)

== 6.5 Pesticides and Integrated Pest Management

A pesticide is a chemical that kills a pest, and its name states the target: *insecticide* for
insects, *fungicide* for fungi, *herbicide* for weeds, *nematicide* for nematodes, *rodenticide* for
rodents and *molluscicide* for snails.

#table(
  columns: (1.2fr, 2.0fr, 2.0fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Formulation],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Use],
  ),
  [Emulsifiable concentrate (EC)], [the active ingredient dissolved in a solvent, to be diluted in water], [the commonest knapsack spray],
  [Wettable powder (WP)], [a powder that forms a suspension in water], [fungicides and some insecticides],
  [Dust], [the active ingredient mixed with a fine inert powder], [seed dressing and dry stores],
  [Granules], [pellets of the chemical on a carrier], [soil insects and nematodes],
)

#v(2pt)

#rule-box("Using a pesticide safely, in six rules")[
  *1.* Read the label and use the stated dose — twice the dose is not twice the kill, it is a
  poisoned crop and a resistant pest. *2.* Wear protective clothing: overall, gloves, boots, a mask.
  *3.* Spray in the cool of the morning or evening, never into wind. *4.* Observe the *pre-harvest
  interval* printed on the label. *5.* Never eat, drink or smoke while spraying, and wash after.
  *6.* Dispose of the container properly; never reuse it for food or water.
]

#v(2pt)

The four families of control are not rivals; they are layers. *Cultural* control prevents the
outbreak — rotation, clean seed, the right spacing, destroying crop refuse, timely planting.
*Biological* control uses the pest's own enemies — predators, parasites and pathogens.
*Genetic* control plants a variety that resists the pest. *Chemical* control is the last line, used
when the first three have not held. Together they are *integrated pest management*, and it is the
answer the syllabus wants whenever a question asks how pests should be controlled.

#trap-box("Symptom is not cause")[
  A yellowing leaf is a symptom. It may be a virus carried by a whitefly, a nitrogen deficiency, a
  waterlogged root or a nematode. The paper tests whether you can name the *cause*, and the options
  are usually one symptom and three causes. Read the stem twice: it will tell you whether it is
  asking what the farmer sees or what is behind it.
]

== 6.6 Four Worked Questions

#worked-example(
  1,
  "The difference between a pest and a disease",
  [Which of the following is a pest and not a disease?

    A. Black pod of cocoa \
    B. Maize streak \
    C. The stem borer of maize \
    D. Damping-off of seedlings],
  [
    *Step 1 — recall the two definitions.* A pest is an animal that damages the crop; a disease is
    a disorder caused by a pathogen, even when an insect carries the pathogen.

    *Step 2 — sort the options.* Black pod is a fungus, maize streak is a virus and damping-off is
    a fungus — all three are diseases. The stem borer is an insect whose larva eats the stem.

    *Step 3 — beware the carrier.* Maize streak is spread by a leafhopper, and the leafhopper is a
    pest, but the *disease* it carries is still a disease. The question asks which item is a pest,
    and only the borer is the animal itself.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The mouthparts, and what follows from them",
  [Aphids damage a cowpea crop by piercing the plant tissue and sucking sap. The insecticide that would
  be most effective is one that

    A. is a stomach poison and is eaten with the leaf \
    B. is systemic and is taken up into the plant sap \
    C. is a contact dust that stays on the leaf surface \
    D. is mixed with the seed at planting],
  [
    *Step 1 — locate the insect.* A sucking insect has its mouthparts *inside* the plant, drinking sap.

    *Step 2 — match the chemical to the location.* A systemic insecticide enters the plant and moves in the sap, so the insect takes it up with its food.

    *Step 3 — dismiss the surface poisons.* A stomach poison must be eaten with the leaf, and a contact dust must touch the insect; neither reaches one feeding inside the tissue.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Naming the pathogen",
  [Black pod disease of cocoa, which produces dark lesions on the pods with a white mould in wet
  weather, is caused by a

    A. virus \
    B. bacterium \
    C. fungus \
    D. nematode],
  [
    *Step 1 — use the sign.* A mould growth in wet weather is the fruiting body of a fungus.

    *Step 2 — check the symptom against the group.* A dark lesion that spreads and produces white mould is the classic fungal picture; bacteria give water-soaked spots and soft rots, viruses give mosaic patterns with no mould at all.

    *Step 3 — dismiss the nematode.* Nematodes work on roots, not on pods.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Why rotation works",
  [Crop rotation helps to control soil-borne pests and diseases mainly because

    A. it adds nitrogen to the soil \
    B. the pest or pathogen cannot find its host plant when the crop changes \
    C. it improves the structure of the soil \
    D. it raises the pH of the soil],
  [
    *Step 1 — state what a soil-borne pest needs.* It survives in the soil between seasons and must find the same host when the next crop is planted.

    *Step 2 — show what rotation does.* A different crop is not a host, so the pest or pathogen starves or its life cycle is broken.

    *Step 3 — qualify the others.* Nitrogen is added only when the rotation includes a legume; structure and pH are not the mechanism the question asks for.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 6.7 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [An insect with piercing and sucking mouthparts], [chews holes in the leaves], [cuts the stem at the base], [bores into the fruit], [removes sap and causes yellowing])

#mcq(2, [Black pod disease of cocoa is caused by a], [virus], [fungus], [bacterium], [nematode])

#mcq(3, [Striga is a weed that], [grows on roadsides only], [is parasitic on the roots of cereals], [is controlled by mulching alone], [attacks only tree crops])

#mcq(4, [Integrated pest management means], [spraying every week], [using only biological control], [combining cultural, biological, genetic and chemical methods], [abandoning chemical control altogether])

#answer-key-grid(("D", "B", "B", "C"))

#answer-notes((
  ("D", [Sucking insects take sap and leave yellowing and distortion; chewing insects leave holes.]),
  ("B", [A dark lesion with white mould in wet weather is fungal — *Phytophthora*.]),
  ("B", [Striga attaches to the roots of sorghum, millet and maize and draws its food from them.]),
  ("C", [IPM is a combination, with chemicals used last and least.]),
))

#diagram-fig("diagrams/recap_agr1_ch06.svg",
  "Chapter 6 recap card: the pests, the diseases, the weeds and the controls.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A pest is an organism that reduces what the farmer produces, and its mouthparts tell you both the
    damage and the chemical. Diseases come in three groups — fungal, bacterial and viral — and each
    needs a host, a pathogen and the right conditions, which is what the triangle shows. Weeds are
    the third enemy, and the parasitic ones such as *Striga* are the worst. Control is layered:
    cultural and genetic prevention first, biological help next, and the chemical last, used at the
    dose on the label and with the pre-harvest interval kept.
  ]
]

#chapter-checklist("Before you leave Chapter 6", (
  [Distinguish biting-chewing from piercing-sucking insects by damage and by chemical.],
  [Name one fungal, one bacterial and one viral disease with its crop.],
  [Define a weed and name three Nigerian weeds, one of them parasitic.],
  [State five methods of weed control.],
  [Explain integrated pest management in two sentences.]),
)

#concept-box("Carry this into Chapter 7")[
  The practices and the protections are now in place; the next question is *what* to plant. Chapter 7
  takes the crops of Nigeria group by group — the cereals that carry the carbohydrate, the legumes
  that fix their own nitrogen, the roots and tubers that store it underground, and the cash crops
  that earn the foreign exchange.
]

#include "drill_ch06.typ"
