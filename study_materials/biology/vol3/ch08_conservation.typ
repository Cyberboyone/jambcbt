#import "template.typ": *

#current-chapter.update("Chapter 8: Human Influence, Pollution and Conservation")
#pagebreak()

#chapter-opener(
  8,
  "Human Influence, Pollution and Conservation",
  subtitle: "Air, Water and Land Pollution, Eutrophication, the Greenhouse Effect and Ozone Depletion, Deforestation, Erosion and Desertification, and the Five Arms of Conservation",
  syllabus-ref: "Sec. C • Topic 8",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Define pollution and name the source, the pollutant and the effect for air, water and land.",
    "Trace the chain of eutrophication from fertiliser run-off to a dead lake.",
    "Explain the greenhouse effect, name the main greenhouse gases and distinguish it from ozone depletion.",
    "Explain how deforestation and overgrazing lead to erosion and desertification.",
    "Distinguish in situ from ex situ conservation and give an example of each.",
    "Name the conservation measures available to a Nigerian government and their limitations.",
  ),
  hotspots: (
    "\\\"Fish die in a eutrophic lake because …\\\" — decomposers use up the dissolved oxygen.",
    "\\\"The main greenhouse gases are …\\\" — carbon dioxide and methane, with CFCs and nitrous oxide.",
    "\\\"CFCs damage the ozone layer by …\\\" — releasing chlorine atoms that break ozone molecules apart.",
    "\\\"A national park is an example of …\\\" — *in situ* conservation. \\\"A zoo or a seed bank\\\" — *ex situ*.",
    "\\\"Deforestation on a slope causes …\\\" — soil erosion, and then flooding and siltation downstream.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Mixing up the greenhouse effect and ozone depletion: the greenhouse effect traps *heat* near the ground; ozone depletion lets more *ultraviolet* radiation through. Both are caused by pollution, but by different gases and with different effects. (2) Writing that eutrophication kills fish because \\\"the algae are poisonous\\\": the mechanism the examiner wants is decomposers exhausting the dissolved oxygen. (3) Calling a zoo an example of in situ conservation: in situ means in the natural habitat.",
)

// ============================================================================
// SECTION 8.1
// ============================================================================
== 8.1 What Pollution Is

*Pollution* is the addition to the environment of a substance or a form of energy, in a quantity or at a rate that harms living things. Two words in that definition do the work: *addition* — pollution is not merely the presence of a substance, since carbon dioxide and nitrate are natural — and *rate*, because a habitat can absorb a small amount of waste and cannot absorb it faster than it is produced.

The syllabus divides pollution by where it happens, and the table below is the one to learn: *source → pollutant → effect*.

#diagram-fig("diagrams/ch08_pollution.svg",
  "Air, water and land pollution with the source, the pollutant and the effect for each — the three-column pattern the examiner uses.")

#concept-box("Pollutants that are not substances")[
  Pollution can also be energy: *noise* from generators and traffic, *heat* discharged from a power station into a river (thermal pollution, which lowers the dissolved oxygen), and *light* that disturbs nocturnal animals. A question that names noise or heat is still a question about pollution.
]

// ============================================================================
// SECTION 8.2
// ============================================================================
== 8.2 Air Pollution, the Greenhouse Effect and the Ozone Layer

Three separate air problems are examined, and they are constantly confused with each other.

#table(
  columns: (1.5fr, 1.5fr, 1.95fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Problem],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Caused by],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Effect],
  ),

  [*Greenhouse effect*], [carbon dioxide and methane from burning fuel, cattle and rice fields; CFCs; nitrous oxide], [heat is trapped in the atmosphere; the average temperature rises; ice caps melt, sea level rises, rainfall patterns shift, droughts and floods become more severe],
  [*Ozone depletion*], [CFCs from old refrigerators, air conditioners and aerosols], [chlorine atoms break ozone apart, so more ultraviolet radiation reaches the ground and causes skin cancer, eye damage and crop damage],
  [*Acid rain*], [sulphur dioxide and nitrogen oxides from burning coal, oil and vehicle fuel], [rainwater of pH below 5.6 corrodes roofs and bridges, acidifies lakes and kills fish, and leaches minerals out of the soil so that crops fail],
)

#concept-box("The greenhouse effect is not, by itself, a bad thing")[
  Without any greenhouse effect the Earth's average temperature would be about 33 °C colder and life as we know it would not exist. The problem is the *enhanced* greenhouse effect: the extra carbon dioxide and methane from human activity trap more heat than the natural balance allows. Say \\\"enhanced\\\" if you want to be precise, and always name the gas and the activity that produced it.
]

#shortcut-box("Two gases, two effects, never swapped")[
  Greenhouse effect → *carbon dioxide and methane* → the planet warms. \
  Ozone depletion → *CFCs* → more ultraviolet light gets through. \
  Acid rain → *sulphur dioxide and nitrogen oxides* → pH falls. \
  A question that mentions refrigeration or spray cans is about *ozone*; one that mentions cattle or power stations is about the *greenhouse*.
]

// ============================================================================
// SECTION 8.3
// ============================================================================
== 8.3 Water Pollution and Eutrophication

Water is polluted by *sewage*, by *fertiliser and manure run-off*, by *oil* from tankers and leaking pipelines, by industrial effluent containing heavy metals, and by *sediment* washed off bare ground. The one the syllabus develops in detail is eutrophication.

*Eutrophication* is the enrichment of water by nitrate and phosphate, and its consequences follow in a fixed chain that must be written in order:

+ *Fertiliser and sewage enter.* Rain washes nitrate and phosphate from farmland, or sewage is discharged, into a pond, lake or slow river.
+ *Algae bloom.* The nutrients are the limiting factor, so algae and floating plants multiply rapidly and cover the surface — an *algal bloom*.
+ *Light is blocked.* The algae shade the submerged plants, which cannot photosynthesise and die.
+ *Decomposers multiply.* Bacteria break down the dead algae and plants, and they respire.
+ *Oxygen runs out.* The decomposers use up the dissolved oxygen, so fish and other animals suffocate — this is the step candidates lose marks on, because they write \\\"the algae poison the fish\\\".

#worked-example(
  1,
  "The eutrophication chain, in the marks it earns",
  tier: "UTME STANDARD",
  [A lake beside a large poultry farm develops a thick green scum every dry season. Within a month the water smells foul and dead fish float at the edge. Explain what has happened],
  [
    *Cause.* Rain and drainage water carry nitrate and phosphate from poultry manure into the lake. These are the nutrients that were limiting plant growth, so *algae multiply rapidly* and form a surface scum — an algal bloom.

    *Light.* The scum blocks sunlight, so submerged plants cannot photosynthesise and die.

    *Decay.* Bacteria and fungi decompose the dead plants and algae. They are aerobic, so they take *dissolved oxygen* from the water.

    *Result.* The dissolved oxygen falls below the level that fish can tolerate, and the fish suffocate; the anaerobic bacteria that follow produce hydrogen sulphide, which is the smell.

    *Wording that earns the last mark:* \\\"the decomposers use up the dissolved oxygen\\\", not \\\"the algae poison the fish\\\". And the *remedy* follows from the cause: a buffer strip of vegetation between the farm and the lake, and less fertiliser applied before the rains.
  ],
)

// ============================================================================
// SECTION 8.4
// ============================================================================
== 8.4 Deforestation, Erosion and Desertification

These three are a sequence, and the syllabus expects you to be able to run it in either direction.

*Deforestation* is the removal of forest cover, for timber, for farmland, for fuelwood and for building. Its consequences are not only the loss of the trees: the *roots* that held the soil are gone, the *canopy* that broke the force of the rain is gone, and the *litter* that fed the humus is gone.

#concept-box("From felling to desert, in five steps")[
  1. *Trees are removed* — the canopy no longer breaks the fall of rain, and the roots no longer bind the soil.
  2. *Rain hits bare ground* — the soil is washed away in *sheet erosion*, then in *gullies*; the fertile topsoil goes first.
  3. *Water runs off instead of soaking in* — the water table falls, streams dry up in the dry season, and the same rain that once soaked in now floods downstream.
  4. *Vegetation cannot return* — the exposed subsoil holds little water or humus, so seedlings die and the land stays bare.
  5. *The desert edge advances* — with less vegetation, the surface reflects more heat, the local rainfall falls, and the dry Sahel creeps southwards. This is *desertification*.
]

Overgrazing and bush burning do the same damage by a different route: they remove the cover without removing the roots, and repeated burning destroys the seed bank and the humus in the topsoil.

#concept-box("Control measures, with the mechanism")[
  *Afforestation and shelter belts* — trees break the wind and their roots hold the soil. \
  *Contour ploughing and terracing* — ploughing across a slope, not down it, slows run-off. \
  *Cover crops and mulching* — the ground is never bare, so rain does not strike it directly. \
  *Strip cropping and crop rotation* — the soil is covered for more of the year and its nutrients are replenished. \
  *Controlled grazing and rotational grazing* — grass recovers before it is grazed again. \
  *Reforestation of the watershed* — the catchment above a dam is planted so that silt does not fill the reservoir.
]

// ============================================================================
// SECTION 8.5
// ============================================================================
== 8.5 Conservation

*Conservation* is the wise, planned management of natural resources so that they are not used up — the phrase to remember is \\\"not locking a resource away, but keeping it renewable\\\". Two ideas are often confused: *conservation* is the sustainable use of a resource; *preservation* is leaving it alone entirely.

#diagram-fig("diagrams/ch08_conservation.svg",
  "Conservation: why conserve, in situ and ex situ protection, law and policy, education and sustainable use, with Nigerian examples.")

#table(
  columns: (1.2fr, 2.1fr, 1.65fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Approach],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Examples],
  ),

  [*In situ*], [the organism is protected *where it lives*, together with the whole community and habitat it depends on], [national parks — Yankari, Cross River, Old Oyo; game reserves; forest reserves; sacred groves],
  [*Ex situ*], [the organism is protected *away from its habitat*], [zoos; botanical gardens; seed and gene banks; captive breeding; sperm storage],
  [*Law and policy*], [rules that limit what may be taken, and when], [ban on hunting and logging, closed seasons, quotas and permits, protected-area status, CITES],
  [*Education*], [people protect what they understand and value], [school conservation clubs, extension officers, radio campaigns against bush burning],
  [*Sustainable use*], [harvest no faster than the resource renews], [agroforestry, controlled logging with replanting, fishing quotas, bee-keeping instead of bushmeat hunting],
)

#concept-box("Why conserve? Four reasons, one line each")[
  *Economic* — food, timber, medicine, fuel and tourism, now and in the future. \
  *Ecological* — every species is a node in a food web, and genetic diversity is the raw material of evolution and of future crops. \
  *Scientific and cultural* — the study of life, and the heritage of the people who live with it. \
  *Physical* — forests protect watersheds, hold soil and moderate local climate, which is conservation in everyone's interest.
]

#trap-box("In situ or ex situ? One test")[
  Ask: *is the organism still in its own habitat?* If yes → *in situ* — national park, game reserve, forest reserve, marine protected area. If it has been moved, or only its seeds or gametes are stored → *ex situ* — zoo, botanical garden, seed bank, captive breeding programme. A gene bank is *ex situ* even though no animal is kept, because the habitat is not involved.
]

// ============================================================================
// SECTION 8.6 — CHECKLIST
// ============================================================================
== 8.6 Chapter 8 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + define pollution, and give source, pollutant and effect for air, water and land;
  + name two pollutants that are not substances;
  + explain the greenhouse effect and name three greenhouse gases;
  + explain how CFCs damage the ozone layer, and why that matters;
  + explain how acid rain forms and what it damages;
  + write the five steps of eutrophication in order, and say why the fish die;
  + run the sequence from deforestation to desertification in five steps;
  + give five soil-conservation measures with the mechanism of each;
  + distinguish conservation from preservation, and in situ from ex situ conservation;
  + name four Nigerian examples of protected areas, and four reasons to conserve.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 8 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Pollution is the addition of a substance or a form of energy faster than the environment can absorb it. Carbon dioxide and methane drive the enhanced greenhouse effect; CFCs destroy ozone; sulphur dioxide and nitrogen oxides give acid rain; nitrate and phosphate cause eutrophication, which ends with decomposers exhausting the dissolved oxygen. Removing vegetation exposes soil to rain and wind, so erosion follows and, at the dry edge, desertification. Conservation keeps resources renewable through in situ protection in parks and reserves, ex situ protection in zoos and gene banks, law, education and sustainable use.
  ]
]

#diagram-fig("diagrams/recap_ch08.svg",
  "Chapter 8 recap card: pollution, eutrophication, erosion and conservation.", width: 100%)

// ============================================================================
// SECTION 8.7 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 8.7 Chapter 8 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Fish die in a eutrophic lake mainly because], [the water becomes too salty], [the algae remove all the nitrate], [the water becomes too cold], [decomposers use up the dissolved oxygen])
#mcq(2, [The enhanced greenhouse effect is caused mainly by], [CFCs alone], [carbon dioxide and methane], [sulphur dioxide], [nitrogen gas])
#mcq(3, [Protecting an animal inside a national park is an example of], [ex situ conservation], [gene bank storage], [in situ conservation], [captive breeding])
#mcq(4, [Deforestation on a hillside is most likely to cause], [soil erosion], [eutrophication of the sea], [ozone depletion], [acid rain])

#answer-key-grid(("D", "B", "C", "A"))

#answer-notes((
  ("D", [the bloom dies, the decomposers multiply, and their respiration removes the dissolved oxygen that the fish need — the algae do not poison the fish directly.]),
  ("B", [carbon dioxide from burning fuel and methane from cattle and rice fields are the two largest contributors, with CFCs and nitrous oxide behind them.]),
  ("C", [in situ means protection in the organism's own habitat, which is exactly what a national park provides.]),
  ("A", [the canopy and the roots that held the soil are gone, so rain washes the topsoil down the slope.]),
))

#include "drill_ch08.typ"
