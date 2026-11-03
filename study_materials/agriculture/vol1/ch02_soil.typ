#import "template.typ": *

#current-chapter.update("Chapter 2: Rocks, Soil Formation and Soil Properties")

#pagebreak()

#chapter-opener(
  2,
  "Rocks, Soil Formation and Soil Properties",
  subtitle: "Where Soil Comes From, What It Is Made Of, and Why Its Texture Decides Everything",
  syllabus-ref: "Part I • Soil Science",
  utme-weight: "7 Qs a year",
  running: "Rocks, Soil Formation and Soil Properties",
)

#focus-radar(
  objectives: (
    "Name the three rock types and state the soil each one tends to produce.",
    "Explain weathering and the five factors of soil formation.",
    "Draw and label a soil profile, horizon by horizon.",
    "Describe soil texture and structure, and relate each to water, air and roots.",
    "Relate soil pH and the major soil groups of Nigeria to the crops that suit them.",
  ),
  hotspots: (
    "“The rock formed by the cooling of molten magma is …” — igneous. The trap offers *metamorphic*, which is rock changed by heat and pressure without melting.\n",
    "“The horizon with most humus and most roots is …” — the A horizon. The trap offers *the O horizon*, which is the litter lying on top, not yet soil.\n",
    "“A soil with a high clay content …” — holds water but drains slowly and is poorly aerated. The trap offers *is always the most fertile*, which confuses water-holding with fertility.\n",
    "“The arrangement of soil particles into crumbs and blocks is …” — structure. The trap offers *texture*, which is the proportion of sand, silt and clay, not the way they clump.\n",
  ),
  trap-summary: "Three slips. (1) Confusing weathering with erosion: weathering breaks rock *in place*, erosion carries the broken material away. (2) Treating soil as crushed rock, when half of it is organic matter, air and water. (3) Learning the horizons as a list instead of a sequence, so that a question about depth or drainage cannot be answered.",
)

// ============================================================================
== 2.1 The Three Rock Types, and the Soil Each One Gives

Soil begins as rock. The mineral part of every soil is the rock beneath it or the rock that was
washed down from somewhere else, and the *kind* of rock decides the texture and the chemistry that
follow.

#table(
  columns: (1.1fr, 1.75fr, 1.6fr, 1.5fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it forms],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Examples],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Soil it tends to give],
  ),
  [Igneous], [cooling and solidifying of magma or lava], [granite, basalt], [coarse, acidic, sandy loam over granite; fine, dark, fertile over basalt],
  [Sedimentary], [deposition and compaction of sediments, often under water], [sandstone, limestone, shale], [sandy and well drained over sandstone; fine and base-rich over limestone; heavy clay over shale],
  [Metamorphic], [heat and pressure change an existing rock without melting it], [marble, slate, gneiss], [shallow, stony soils; marble gives a lime-rich, neutral soil],
)

#v(2pt)

The three families are linked in a cycle. Any rock can be weathered into sediment, compacted into
sedimentary rock, buried and changed into metamorphic rock, melted into magma and cooled again into
igneous rock. The soil on top is the thin, living skin of that cycle.

#rule-box("The one-line test")[
  If it has crystals and no layers, it is probably *igneous*. If it has layers or fossils, it is
  *sedimentary*. If it is hard, banded or shiny and looks like a rock that has been squeezed, it
  is *metamorphic*.
]

== 2.2 Weathering: How Rock Becomes Soil

Weathering is the breakdown of rock *in place*. It is not erosion: erosion moves the broken
material away, and the two are asked about together precisely because candidates confuse them.

#table(
  columns: (1.05fr, 1.9fr, 2.0fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Kind],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What does it],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Nigerian example],
  ),
  [Physical], [heat and cold, wetting and drying, frost, roots prising rock apart, wind abrasion], [granite breaking into blocks on the Jos Plateau],
  [Chemical], [solution, oxidation, carbonation, hydrolysis — water and acids alter the minerals], [limestone dissolving in rainwater; iron oxidising to give the red of laterite],
  [Biological], [roots, burrowing animals, lichens and the acids they release], [lichens on exposed rock faces and tree roots in cracks],
)

#v(2pt)

Hot, wet climates favour chemical weathering; cold and dry climates favour physical weathering.
That is why the same granite gives a deep, clay-rich soil in the forest belt and a thin, stony one
on a dry plateau.

== 2.3 The Five Factors of Soil Formation

#table(
  columns: (1.2fr, 2.1fr, 1.9fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Factor],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Effect],
  ),
  [Parent material], [the rock supplies the minerals and the initial texture], [limestone soils are base-rich; granite soils are acidic and sandy],
  [Climate], [rain and heat decide how fast weathering and leaching go], [the wet south leaches bases out; the dry north keeps them],
  [Organisms], [plants, animals and micro-organisms add organic matter and mix it in], [earthworms and roots make a dark, crumbly topsoil],
  [Relief], [slope decides drainage and how much soil stays in place], [hilltops are thin and stony; valleys are deep and wet],
  [Time], [a young soil is shallow and rock-like; an old one is deep and leached], [the old, red, leached soils of the plateau],
)

#v(2pt)

Give the five in that order in a written answer and you have the marks. The examiner's own phrase is
"parent material, climate, organisms, relief and time", and the first and last of those are the two
that candidates forget.

== 2.4 The Soil Profile

A pit dug into the ground shows layers, called horizons. Together they are the soil profile, and
the profile is the soil's biography: what has been added at the top, what has been washed down,
and what the rock below has contributed.

#table(
  columns: (0.9fr, 1.4fr, 2.7fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Horizon],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it contains],
  ),
  [O], [organic layer], [fresh and partly decayed litter lying on the surface — leaves, twigs, animal remains],
  [A], [topsoil], [the layer the crop feeds in: humus mixed with mineral soil, roots, and most soil organisms],
  [B], [subsoil], [clay, iron and other material washed down from above; little humus, few roots],
  [C], [weathered rock], [broken rock that has not yet become soil],
  [R], [bedrock], [solid parent rock, unweathered],
)

#v(2pt)

Two consequences follow, and both are examined. First, the *depth of the A horizon* is what a
farmer means by "deep soil": a shallow A horizon over a hard B horizon stops roots and holds water
where the crop cannot use it. Second, *leaching* moves material downwards — the clay and iron of the
B horizon came from the A — and in the wet tropics it also carries bases out of the profile
altogether, which is why so many Nigerian soils are acidic.

#diagram-fig("diagrams/agr1_ch02_soil.svg",
  "Figure 2.1 — a soil profile, and the texture triangle reduced to three worked soils.", width: 98%)

== 2.5 Texture and Structure

These two words are tested together and must never be exchanged.

*Texture* is the proportion of sand, silt and clay in the soil. It is a property of the particles
themselves and cannot be changed by the farmer except by adding organic matter or by mixing in
another soil. *Structure* is the way those particles are grouped into crumbs, blocks or plates. It
is a property of the arrangement, and it can be improved by cultivation, organic matter and
drainage.

#table(
  columns: (0.9fr, 1.15fr, 1.35fr, 1.8fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Fraction],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Particle size],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it does in the soil],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Effect on the crop],
  ),
  [Sand], [0.02–2.0 mm], [drains fast, holds little water or nutrient, warms quickly], [drought stress; needs frequent, small fertiliser doses],
  [Silt], [0.002–0.02 mm], [holds some water and nutrient; easily washed away], [good tilth, but crusts and erodes],
  [Clay], [under 0.002 mm], [holds water and nutrients strongly; drains slowly, swells when wet], [waterlogging and root rot; but the most nutrient-rich fraction],
  [Loam], [a mixture], [the compromise: enough clay to hold water, enough sand to drain], [the texture most crops prefer],
)

#v(2pt)

#table(
  columns: (1.2fr, 2.0fr, 2.0fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Structure type],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it means for water and roots],
  ),
  [Crumb / granular], [small round aggregates], [the best structure: free drainage, good aeration, easy root growth],
  [Blocky], [angular blocks], [moderate; roots can move between the blocks],
  [Platy], [flat plates lying horizontally], [water and roots are stopped; often a sign of compaction],
  [Columnar], [tall vertical columns], [found in sodic soils; poor drainage and poor root growth],
  [Single grain], [no aggregation at all], [sand: loose and droughty],
  [Massive], [one solid mass], [clay: compacted, waterlogged and airless],
)

== 2.6 Soil Water, Air and Organic Matter

A good soil is roughly half solid and half pore space, and the pore space is shared between water
and air. The proportion changes with every rain, and the crop lives through the changes.

#table(
  columns: (1.35fr, 2.0fr, 1.9fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why the crop cares],
  ),
  [Field capacity], [the water left after excess has drained away], [the soil is at its best: water and air together],
  [Wilting point], [the water held so tightly that roots cannot pull it], [the crop wilts even though the soil is damp],
  [Available water], [the difference between the two], [this is the reservoir the crop actually draws on],
  [Gravitational water], [water that drains through the pore spaces], [it takes nutrients with it — this is leaching],
  [Humus], [fully decomposed organic matter], [holds water and nutrients, and gives the crumb structure],
)

#v(2pt)

#rule-box("The living half of the soil")[
  Soil is not sterile. Bacteria and fungi decompose the litter; earthworms and termites mix it into
  the profile; rhizobia fix nitrogen in legume roots; mycorrhizal fungi extend the root system. Kill
  the life and the soil becomes a medium that merely holds the plant upright.
]

== 2.7 Soil pH and the Soils of Nigeria

Soil pH measures acidity and alkalinity on a scale from 1 to 14, with 7 neutral. Most crops do best
between 5.5 and 7.0, because that is where the nutrients are most available. Below 5.5 the soil is
acid: aluminium becomes toxic and phosphorus is locked up. Above 7.5 the soil is alkaline and
iron, manganese and zinc become unavailable.

#table(
  columns: (1.35fr, 1.2fr, 2.7fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Soil group],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[pH],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Where, and what it suits],
  ),
  [Ferruginous tropical (laterite)], [5.0–6.5], [the forest and derived savanna; acidic, iron-rich, hard when dry; suits cassava, oil palm, maize with lime],
  [Sandy soils of the north], [5.5–6.5], [the Sudan savanna; light and droughty; suits millet, sorghum, groundnut],
  [Alluvial soils], [5.5–7.0], [river floodplains — the Niger, Benue and Kaduna; deep and fertile; suit rice, sugarcane, vegetables],
  [Hydromorphic soils], [5.0–6.5], [seasonally waterlogged valley bottoms; suit rice and sugarcane],
  [Mangrove and saline soils], [7.0–8.5], [the coastal swamps; saline and waterlogged; suit rice where drained, and mangrove forestry],
  [Volcanic soils], [6.0–7.0], [the Jos and Biu plateaus; dark and fertile; suit vegetables and potatoes],
)

#v(2pt)

The pattern to remember is north–south. The south is wet, so the bases have been leached out and
the soils are acidic and red. The north is dry, so the bases remain and the soils are lighter in
colour and less acid. The delta and the river valleys break the pattern, because water brings new
material every year and keeps the soil young.

#trap-box("Texture is not structure, and neither is fertility")[
  A heavy clay soil can be fertile and still drown a crop; a sandy soil can be well drained and
  still starve it. Fertility is the *supply of nutrients in available form*, and it depends on
  organic matter, pH and management as much as on the particles. If an option says "clay soils are
  the most fertile", read it again: they hold nutrients, but they also hold water where roots
  cannot breathe.
]

== 2.8 Four Worked Questions

#worked-example(
  1,
  "Naming the rock family",
  [A rock that shows clear crystals and no layers, formed when magma cooled slowly underground, is

    A. sedimentary \
    B. metamorphic \
    C. igneous \
    D. residual],
  [
    *Step 1 — use the clue.* Crystals and no layers point to cooling from a melt.

    *Step 2 — place it.* Slow cooling underground gives large crystals; that is intrusive igneous rock, granite being the standard example.

    *Step 3 — dismiss the rest.* Sedimentary rock is layered and often fossil-bearing; metamorphic rock has been altered after it formed; "residual" describes a soil, not a rock.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Reading the profile",
  [The horizon of a soil profile that contains most of the humus and most of the plant roots is the

    A. O horizon \
    B. A horizon \
    C. B horizon \
    D. C horizon],
  [
    *Step 1 — define each.* O is litter on the surface; A is topsoil; B is subsoil; C is weathered rock.

    *Step 2 — decide where humus and roots are.* Humus is *mixed with mineral soil* in the A horizon; the O horizon is organic matter that has not yet been incorporated, which is why roots rarely feed there.

    *Step 3 — reject B and C.* The B horizon receives what is leached from above and contains little organic matter.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Texture and its consequences",
  [A soil contains 55 per cent clay, 30 per cent silt and 15 per cent sand. Its most likely
  behaviour in the field is

    A. rapid drainage and frequent drought \
    B. slow drainage, waterlogging and poor aeration \
    C. excessive leaching of nutrients \
    D. inability to hold nutrients at all],
  [
    *Step 1 — classify.* Clay dominates, so the soil is a clay soil.

    *Step 2 — recall the behaviour of clay.* Fine particles pack tightly, hold water strongly and leave little pore space for air.

    *Step 3 — test the distractors.* A and C describe sand; D describes a soil with almost no clay.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Why the parent rock still matters",
  [Soils formed on limestone are usually more fertile than soils formed on granite in the same
  climate because limestone

    A. weathers faster than granite \
    B. supplies calcium and magnesium and keeps the soil near neutral \
    C. contains more phosphorus than granite \
    D. holds less water than granite],
  [
    *Step 1 — compare the chemistry.* Limestone is calcium carbonate; as it weathers it releases calcium (and magnesium in dolomite) and neutralises acidity.

    *Step 2 — connect chemistry to fertility.* A near-neutral pH keeps phosphorus and molybdenum available and suits most crops, which is why limestone soils are prized.

    *Step 3 — reject the others.* Limestone does not weather notably faster, is not especially rich in phosphorus, and its fine texture makes it hold *more* water, not less.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 2.9 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [The breakdown of rock in place by heat, water and living things is called], [erosion], [deposition], [weathering], [leaching])

#mcq(2, [Which horizon is the layer in which most crops feed?], [O horizon], [A horizon], [B horizon], [R horizon])

#mcq(3, [The proportion of sand, silt and clay in a soil is its], [structure], [texture], [profile], [consistence])

#mcq(4, [A soil with a pH of 4.5 is best corrected by adding], [gypsum], [urea], [sulphur], [lime])

#answer-key-grid(("C", "B", "B", "D"))

#answer-notes((
  ("C", [Weathering breaks rock where it lies; erosion is the transport of the broken material.]),
  ("B", [The A horizon is the topsoil, where humus is mixed with mineral soil and roots are concentrated.]),
  ("B", [Texture is the proportion of the three fractions; structure is how they are grouped.]),
  ("D", [Lime neutralises acidity. Sulphur and ammonium sulphate make soil more acid, not less.]),
))

#diagram-fig("diagrams/recap_agr1_ch02.svg",
  "Chapter 2 recap card: formation, the profile, texture and pH.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Soil is rock broken down by weather and worked on by life. Igneous, sedimentary and metamorphic
    rocks give different textures and different chemistry; weathering breaks them in place; five
    factors — parent material, climate, organisms, relief and time — decide what soil forms. The
    profile records the result, with the A horizon feeding the crop and the B horizon receiving what
    leaching carries down. Texture governs water and air; structure governs drainage and roots; pH
    governs what nutrients are available. In Nigeria the wet south is acidic and red, the dry north
    is lighter and less acid, and the valleys are renewed every flood.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [Name the three rock types and give one soil consequence of each.],
  [Distinguish weathering from erosion, in one sentence.],
  [List the five factors of soil formation in order.],
  [Draw a profile and label O, A, B, C and R, with one property of each.],
  [Explain why a clay soil can be fertile and still drown a crop.],
))

#concept-box("Carry this into Chapter 3")[
  A soil can be well structured, well drained and the right pH, and still starve the crop: the
  nutrients may simply not be there, or not in a form the root can take. The next chapter is about
  feeding the soil — the sixteen nutrients, the manure that supplies them slowly and the fertiliser
  that supplies them fast.
]

#include "drill_ch02.typ"
