#import "template.typ": *

#current-chapter.update("Chapter 8: Harvest, Storage and Marketing")

#pagebreak()

#chapter-opener(
  8,
  "Harvest, Storage and Marketing",
  subtitle: "When to Reap, How to Process, Where to Keep It, and Who Takes the Margin",
  syllabus-ref: "Part I • Crop Production and Economics",
  utme-weight: "6 Qs a year",
  running: "Harvest, Storage and Marketing",
)

#focus-radar(
  objectives: (
    "State the maturity indices used to decide when a crop is ready for harvest.",
    "Describe the primary processing of cassava, oil palm, cocoa and rice.",
    "Name the structures used for storage and the conditions that make storage work.",
    "Explain post-harvest losses, their causes and how they are reduced.",
    "Describe the marketing channel for a Nigerian food crop and the work of a cooperative.",
  ),
  hotspots: (
    "“The moisture content at which grain can be stored safely is …” — about 12–13 per cent. The trap offers *20 per cent*, at which the grain heats and moulds.\n",
    "“Gari is produced by …” — grating, fermenting, dewatering and frying. The trap offers *milling and boiling*, which describes neither the fermentation nor the fry.\n",
    "“The main function of a marketing cooperative is …” — to bulk members' produce and bargain for a better price. The trap offers *to lend money at interest*, which is a credit union's work.\n",
    "“Cocoa beans are fermented before drying in order to …” — develop flavour and colour and kill the germ. The trap offers *to dry them faster*, which is the opposite: fermentation adds days, not saves them.",
  ),
  trap-summary: "Three slips. (1) Treating storage as a building when it is a set of conditions: dry, cool, clean, sealed and pest-free. (2) Confusing primary processing (threshing, drying, milling) with secondary processing (gari, oil, chocolate). (3) Forgetting that the farmer's price is the market price *minus* the costs the middleman carries — transport, storage, grading and risk.",
)

// ============================================================================
== 8.1 Knowing When to Harvest

Harvesting at the wrong moment costs as much as a pest. Too early and the grain is light and the
fruit is sour; too late and the crop shatters, rots or is eaten in the field.

#table(
  columns: (1.2fr, 2.0fr, 2.0fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Index],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Example],
  ),
  [Colour], [the crop changes from green to its mature colour], [maize cobs yellow and the husk dries; tomato turns from green to red],
  [Size and shape], [the fruit or tuber reaches its full size], [yam sets and the leaves yellow; the tuber is firm],
  [Moisture content], [the grain dries to a safe figure], [12–13 per cent for maize and rice at harvest storage],
  [Days from planting], [the variety's known maturity], [maize 90–120 days; cowpea 70–90 days],
  [Texture and sound], [the grain is hard and rattles; the pod is papery], [cowpea pods turn brown and the seed rattles],
  [Taste and juice], [sugar and acid reach the eating point], [pineapple and citrus are tested by taste and colour break],
)

#v(2pt)

Harvesting itself is done by hand on most Nigerian farms — a cutlass for maize stalks, a knife for
cowpea, a digging stick or a fork for yam, hands for groundnut. Mechanised harvesting exists on
estates and in the rice schemes, and its advantage is speed: the crop that is ready and not harvested
is a crop exposed to rain, birds and rats.

== 8.2 Processing: Adding Value and Shelf Life

Processing turns a perishable harvest into a product that can be stored, transported and sold. It is
divided into *primary* processing — threshing, winnowing, drying, milling — and *secondary*
processing, which makes a new product.

#table(
  columns: (1.0fr, 2.4fr, 2.1fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Product],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The steps],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why each step],
  ),
  [Gari], [peel, grate, ferment (2–3 days), press out the water, sift, fry], [fermentation removes the cyanide and sours the taste; frying dries and gelatinises the starch],
  [Cassava flour / fufu], [peel, soak or ferment, mill, dry], [soaking softens the root and removes cyanogenic compounds],
  [Palm oil], [harvest the bunch, thresh the fruit, boil or ferment, pound, press, clarify], [heat and pounding release the oil from the mesocarp; clarifying removes water and fibre],
  [Cocoa], [break the pod, ferment the beans (5–7 days), dry, bag], [fermentation develops the chocolate flavour and kills the germ; drying brings the moisture below 8 per cent],
  [Rice], [thresh, dry, winnow, mill (husk and bran removed), polish], [milling separates the husk and bran; over-milling removes nutrients and breaks the grain],
  [Groundnut oil], [shell, roast, grind, press, filter], [roasting develops flavour and makes the oil flow],
  [Yam flour (elubo)], [peel, slice, dry, mill], [drying preserves the tuber and the flour stores for months],
)

#v(2pt)

Processing is where most of the value is added, and where most of the post-harvest loss can be
prevented. A tonne of cassava sold as roots earns a fraction of the same tonne sold as gari; a bag of
cocoa sold wet loses both weight and grade.

== 8.3 Storage and Its Conditions

The purpose of storage is to hold the harvest at a steady quality until the price or the need is
right. Five conditions decide whether it works.

#rule-box("The five conditions of a good store")[
  *1. Dry* — grain at 12–13 per cent moisture, tubers cured and firm. *2. Cool* — shade and
  ventilation, away from the sun. *3. Clean* — the store swept, the old grain removed, the bags
  sound. *4. Sealed* — against insects, rodents and damp. *5. Raised and dry underfoot* — off the
  ground, on a platform or a pallet, with the roof sound.
]

#v(2pt)

#table(
  columns: (1.15fr, 2.0fr, 2.1fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Structure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it suits],
  ),
  [Maize crib], [a raised, slatted structure that lets air through the cobs], [dried maize on the cob, on a smallholding],
  [Barn / rumbu], [a mud or thatch store with a raised floor], [sorghum, millet and cowpea in the village],
  [Silo], [a tall airtight metal or concrete bin], [bulk grain on a large farm or a strategic reserve],
  [Warehouse], [a large ventilated building with pallets and stacks], [bagged grain and processed products],
  [Hermetic bag (PICS)], [a triple-layer plastic bag that is sealed after filling], [cowpea and maize without chemicals; the insects use up the oxygen and die],
  [Underground pit / clamp], [a lined pit or a soil-covered heap], [yams, cocoyam and potatoes in the ground],
  [Cold room], [a refrigerated chamber], [vegetables, fruit and flowers; expensive and power-dependent],
)

#v(2pt)

Storage pests are the second enemy after the field pests: the *cowpea weevil* bores the seed,
the *grain moth* webs the surface, *rats* take the edge of the bag, and *mould* follows damp. The
remedies are the five conditions, plus cleaning, drying, fumigation where it is licensed, and
botanical repellents such as neem and pepper in the traditional store.

== 8.4 Post-Harvest Losses

A post-harvest loss is any reduction in quantity or quality between the field and the consumer. In
Nigeria it is commonly a third of the harvest, and it is the cheapest loss to prevent because the
crop has already been grown.

#table(
  columns: (1.15fr, 2.0fr, 2.1fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Cause],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Where it happens],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Reduction],
  ),
  [Delayed harvesting], [the field], [harvest at maturity; watch the weather],
  [Threshing and shelling], [the drying floor], [a tarpaulin, not the road; a clean machine setting],
  [Inadequate drying], [the drying floor], [dry to 12–13 per cent before bagging; use a moisture meter],
  [Insects and rodents], [the store], [hermetic bags, clean stores, fumigation, cats and traps],
  [Mould and heating], [the store], [dry grain, ventilated stacks, no leaky roof],
  [Poor handling and transport], [the road], [sound bags, covered loads, not overloaded],
  [Lack of a market], [the farm gate], [cooperatives, storage to sell later, processing],
)

#diagram-fig("diagrams/agr1_ch08_storage.svg",
  "Figure 8.1 — where the harvest is lost between the field and the plate, and the remedy at each stage.", width: 98%)

== 8.5 Marketing

Marketing is everything that happens to the crop between the farm gate and the consumer: assembling,
grading, transporting, storing, financing and selling.

#table(
  columns: (1.4fr, 2.0fr, 1.9fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What is done],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Who carries it],
  ),
  [Assembling], [small lots are gathered into a saleable bulk], [the village buyer or the cooperative],
  [Grading], [produce is sorted by size, colour and quality], [the farmer, at the farm gate, or the buyer],
  [Transport], [the crop is moved from the village to the town], [the lorry owner and the middleman],
  [Storage], [the crop is held until the price or the need changes], [the wholesaler and the trader],
  [Financing], [the crop is paid for before it is sold], [the middleman, the cooperative or the bank],
  [Risk-bearing], [the trader takes the loss if the price falls], [the wholesaler],
)

#v(2pt)

The channel for a food crop runs: *farmer → village buyer → wholesaler → retailer → consumer*. Each
link takes a margin for the work it does, and the farmer's share is small because the farmer sells
at the point where the crop is bulkiest and the market is thinnest.

#rule-box("What a cooperative does for the farmer")[
  A cooperative bulks the members' produce so that it can be sold as a lorry load rather than a
  basket; it bargains for a price instead of accepting one; it buys inputs in bulk and shares the
  discount; it can hold stock and sell later; and it gives the member access to credit and to
  information. Its weakness is the same as its strength — it depends on the honesty of the members
  and the officers who run it.
]

#v(2pt)

#trap-box("The margin is not theft")[
  The middleman's profit buys transport, storage, credit and the risk of a price fall. A question that
  asks why the farmer's share is small is asking about the *functions* the channel performs, not about
  the moral character of the trader.
]

== 8.6 Farm Records, in One Page

A farm that keeps no records cannot tell whether it made a profit. Four records carry the syllabus.

#table(
  columns: (1.2fr, 2.0fr, 2.1fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Record],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it shows],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why it matters],
  ),
  [Inventory], [the land, tools, livestock and stock on hand], [the farm's capital, and what is missing],
  [Labour record], [who worked, for how long, and at what rate], [the biggest cost on a Nigerian farm],
  [Production record], [the area planted, the inputs used and the output], [the yield, and whether it is rising],
  [Financial record], [receipts and expenses, and the profit or loss], [whether the farm is a business or a habit],
)

== 8.7 Four Worked Questions

#worked-example(
  1,
  "The safe moisture",
  [Maize grain should be dried to a moisture content of about

    A. 5 per cent \
    B. 12–13 per cent \
    C. 20 per cent \
    D. 30 per cent],
  [
    *Step 1 — recall the storage rule.* Grain keeps when it is dry enough for mould and insects to be inactive.

    *Step 2 — name the figure.* 12–13 per cent is the standard safe moisture for cereal grain in the tropics.

    *Step 3 — dismiss the extremes.* Five per cent is over-dried and cracks the grain; 20 to 30 per cent is wet enough to heat, mould and rot.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Processing cassava",
  [Gari is produced from cassava by

    A. boiling and mashing the roots \
    B. grating, fermenting, dewatering and frying \
    C. drying the whole roots and milling them \
    D. soaking the roots in salt water only],
  [
    *Step 1 — recall the process.* Cassava is peeled and grated; the pulp is fermented for two or three days; the water is pressed out; the damp grits are sifted and fried.

    *Step 2 — match.* B gives the four steps in order.

    *Step 3 — dismiss the rest.* Boiling gives fufu, not gari; drying whole roots gives a different flour; salt water alone removes neither the cyanide nor the water.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The cooperative's case",
  [A group of yam farmers forms a marketing cooperative mainly in order to

    A. obtain land from the government \
    B. sell their produce in bulk and bargain for a better price \
    C. avoid paying tax on their income \
    D. employ a farm manager for each member],
  [
    *Step 1 — recall the definition.* A marketing cooperative assembles, grades and sells the members' produce on their behalf.

    *Step 2 — name the advantage.* Bulking gives the group the volume to sell to a wholesaler or a processor, and the bargaining power that goes with it.

    *Step 3 — dismiss the rest.* Land acquisition, tax avoidance and individual managers are not the purposes of a marketing cooperative.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The loss, in money",
  [A farmer harvests 2 000 kg of maize. Fifteen per cent is lost in storage and the rest is sold at
  ₦400 per kg. His revenue is

    A. ₦800 000 \
    B. ₦680 000 \
    C. ₦340 000 \
    D. ₦1 700 000],
  [
    *Step 1 — find what survives.* 15 per cent of 2 000 kg is 300 kg lost, so 1 700 kg remain.

    *Step 2 — multiply by the price.* 1 700 × 400 = ₦680 000.

    *Step 3 — check the distractors.* ₦800 000 is the revenue if nothing were lost; ₦1 700 000 multiplies kilograms by two; ₦340 000 halves the answer.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 8.8 Chapter 8 in the Exam Hall — a Two-Minute Set

#mcq(1, [Maize is ready for harvest when], [the tassel appears], [the husk dries and the grains harden], [the leaves are still green], [the cob is half formed])

#mcq(2, [Cocoa beans are fermented mainly to], [dry them quickly], [remove the shell], [develop flavour and colour], [increase their weight])

#mcq(3, [Hermetic storage bags work by], [poisoning the insects], [keeping the grain cool], [excluding light], [sealing out oxygen so the insects die])

#mcq(4, [The channel of distribution of a food crop in Nigeria usually begins with the], [farmer], [wholesaler], [retailer], [consumer])

#answer-key-grid(("B", "C", "D", "A"))

#answer-notes((
  ("B", [The husk dries and the grain hardens at about 12–13 per cent moisture.]),
  ("C", [Fermentation develops the flavour and colour and kills the germ; drying comes after it.]),
  ("D", [The sealed bag starves the insects of oxygen; nothing is added to the grain.]),
  ("A", [The farmer sells first, usually to a village buyer, and each link takes a margin.]),
))

#diagram-fig("diagrams/recap_agr1_ch08.svg",
  "Chapter 8 recap card: maturity, processing, storage and marketing.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 8 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Harvest at the moment the colour, size, moisture or days say so, because early and late both
    cost. Processing — gari, palm oil, cocoa, rice — adds value and shelf life, and the steps are
    examinable in order. Storage is five conditions: dry, cool, clean, sealed and raised, and the
    structure is only the box those conditions live in. A third of the harvest is lost between field
    and plate, and every loss has a remedy that costs less than the loss. Marketing moves the crop
    through a chain in which each link is paid for the work it does, and the cooperative exists to
    give the farmer the bargaining power of bulk.
  ]
]

#chapter-checklist("Before you leave Chapter 8", (
  [List four maturity indices with an example of each.],
  [Describe the processing of gari in four steps.],
  [State the five conditions of a good store.],
  [Name four causes of post-harvest loss and a remedy for each.],
  [Explain what a marketing cooperative does, and what it cannot do.]),
)

#concept-box("Carry this into Volume 2")[
  The crop has been grown, harvested, stored and sold. Volume 2 turns to the other half of the
  subject: the animal that converts the crop residues and the pasture into meat, milk and eggs; the
  fish pond and the forest; and the business of the farm — records, credit, extension and the
  policies that decide what the farmer is paid.
]

#include "drill_ch08.typ"
