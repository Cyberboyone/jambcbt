#import "template.typ": *

#current-chapter.update("Chapter 6: Fisheries and Forestry")

#pagebreak()

#chapter-opener(
  6,
  "Fisheries and Forestry",
  subtitle: "The Pond That Turns a Swamp into Protein, and the Woodlot That Pays in Ten Years",
  syllabus-ref: "Part II • Fisheries and Forestry",
  utme-weight: "5 Qs a year",
  running: "Fisheries and Forestry",
)

#focus-radar(
  objectives: (
    "State the importance of fisheries and forestry to Nigeria.",
    "Name the fish species farmed and the systems under which they are farmed.",
    "Describe the construction and management of a fish pond.",
    "Describe the types of forest and the products each yields.",
    "Explain agroforestry, taungya and the conservation of forest resources.",
  ),
  hotspots: (
    "“The commonest fish farmed in Nigeria is …” — the African catfish, *Clarias gariepinus*. The trap offers *tilapia*, which is farmed but less widely.\n",
    "“A pond is limed in order to …” — raise the pH, kill pests and release nutrients. The trap offers *fertilise the water*, which the manure does.\n",
    "“Taungya is a system in which …” — crops are grown between young forest trees until the canopy closes. The trap offers *fish and rice together*, which is not the term.\n",
    "“A forest reserve is important because …” — it protects the watershed, the soil, the wildlife and the timber. The trap offers only *it produces timber*, which is the narrowest answer.",
  ),
  trap-summary: "Three slips. (1) Confusing the pond's *fertilisation* (adding manure to grow plankton) with its *liming* (raising pH and killing pests). (2) Forgetting that fish need oxygen as much as food, so an overstocked pond kills its stock overnight. (3) Treating the forest as a mine: a plantation is a crop and is harvested in rotation, while a reserve is protected — the paper tests the difference.",
)

// ============================================================================
== 6.1 Why Fish and Forest

#table(
  columns: (1.05fr, 2.1fr, 1.85fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Contribution],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Fisheries],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Forestry],
  ),
  [Food], [fish is the cheapest animal protein in the south], [bushmeat, honey, fruit and seeds from the trees],
  [Income], [a pond pays in six to eight months], [timber, poles and fuel pay in ten to twenty years],
  [Employment], [fishermen, fish smokers, traders], [sawyers, carpenters, fuel wood sellers],
  [Raw material], [fish meal, oil, hides], [timber, pulp, plywood, gum, tannin, medicine],
  [Land], [uses swamp and floodplain the crop cannot use], [holds the soil on the slope the crop would lose],
  [Environment], [fish control mosquitoes and snails], [the forest protects the watershed and the climate],
)

// ============================================================================
== 6.2 Fish and the Systems That Farm Them

#table(
  columns: (1.1fr, 1.2fr, 1.6fr, 1.4fr),
  inset: (x: 4pt, y: 3.3pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Species],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Scientific name],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Tolerates],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Note],
  ),
  [African catfish], [*Clarias gariepinus*], [low oxygen, high density, poor water], [the commonest farmed fish; it also breathes air at the surface],
  [Nile tilapia], [*Oreochromis niloticus*], [warm water, plankton], [fast growth but breeds too freely in the pond],
  [Carp], [*Cyprinus carpio*], [still water and muddy bottoms], [often polycultured with tilapia],
  [Heterotis], [*Heterotis niloticus*], [shallow, weedy water], [a larger fish for the table],
  [Grey mullet], [*Mugil cephalus*], [brackish water of the lagoon], [the fish of the coastal creeks],
)

#v(4pt)

#table(
  columns: (1.05fr, 2.05fr, 1.9fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Its weakness],
  ),
  [Pond culture], [an earthen or concrete pond, filled and stocked], [the water must be managed daily],
  [Tank culture], [a plastic or concrete tank above ground], [costly, but the water is controlled],
  [Cage culture], [a net cage floating in a river or a lake], [the farmer owns no land, only the cage],
  [Pen culture], [an enclosure in a shallow lake or floodplain], [the stock escapes at high water],
  [Integrated farming], [a pond beside a poultry house or a piggery; the droppings feed the pond], [manure overload kills the fish if it is not managed],
  [Rice–fish culture], [fish in the flooded rice field], [the pesticide may kill the fish],
)

// ============================================================================
== 6.3 Building and Running a Pond

#table(
  columns: (0.85fr, 2.15fr, 1.95fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Step],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What is done],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Why],
  ),
  [1], [choose a site with a clay bottom, a gentle slope and a water source], [a sandy bottom loses water; a steep site erodes],
  [2], [clear and excavate; 1.0–1.5 m deep, with a drain at the lowest corner], [the depth holds temperature; the drain empties it],
  [3], [build the dyke and the inlet and outlet screens], [the screens keep out predators and wild fish],
  [4], [dry, then lime the bottom; 200–500 kg per hectare], [the lime raises the pH and kills pests and parasites],
  [5], [fill with water and fertilise with poultry manure], [the manure grows the plankton the fish eat],
  [6], [stock fingerlings at 5–10 per m², acclimatised in a bucket], [a sudden change of temperature kills them],
  [7], [feed 3 per cent of body weight daily, at a fixed station], [the fish learn the station; waste is visible],
  [8], [sample monthly; record the weight and the feed], [the record tells the farmer when to harvest],
)

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE WATER IS THE CROP]
  #v(3pt)
  #text(size: 9.6pt)[
    A fish farmer is a water farmer. *Green* water is good — the colour is the plankton. *Muddy*
    water means erosion or a disturbed bottom. *A scum on the surface* means too much feed. *Fish
    at the surface, gasping,* means the oxygen has gone, and the answer is to stop feeding and
    change the water at once.
  ]
]

// ============================================================================
#diagram-fig("diagrams/agr2_ch06_fish_forest.svg",
  "6.1 — a fish pond in section, and the farm that keeps its trees.", width: 98%)

== 6.4 Harvesting and Preservation

#table(
  columns: (1.05fr, 2.0fr, 1.95fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Best for],
  ),
  [Seining], [a net drawn through the pond], [a partial harvest; the rest stay to grow],
  [Draining], [the pond is emptied through the outlet], [the final harvest, and the pond clean-up],
  [Trapping], [baited traps set overnight], [a small daily supply to the market],
  [Smoking], [the fish is dried over a low fire], [the traditional preservation; it keeps weeks],
  [Sun drying], [split and dried on a rack], [small fish, in the dry season],
  [Freezing], [stored at −18 °C], [the urban market, where there is power],
)

// ============================================================================
== 6.5 The Forest and Its Products

#table(
  columns: (1.05fr, 1.95fr, 2.0fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Its management],
  ),
  [Forest reserve], [government land protected for timber, water and wildlife], [gazetted and guarded; no farming without a permit],
  [Plantation], [trees planted and managed as a crop], [clear-felled in blocks and replanted; teak, Gmelina, pine],
  [Community forest], [land held and used by a village], [rules made by the community, and enforced by it],
  [Shelterbelt], [rows of trees planted against the wind], [protects the farm and the village from the harmattan],
  [Sacred grove], [a patch protected by custom], [the oldest conservation system in the country],
)

#v(4pt)

#table(
  columns: (1.05fr, 1.2fr, 1.7fr, 1.55fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Product],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[From],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Use],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Species],
  ),
  [Timber], [the trunk], [building, furniture, railway sleepers], [Obeche, Iroko, Mahogany, Teak],
  [Poles and fuel], [the small stem and the branch], [building, charcoal, cooking], [Gmelina, Eucalyptus, Leucaena],
  [Pulp], [the softwood fibre], [paper], [Pine, Gmelina],
  [Gum and resin], [the bark], [adhesive, varnish, incense], [Acacia, gum arabic],
  [Tannin], [the bark], [leather tanning], [the mangrove and the acacia],
  [Medicine], [bark, leaf, root], [traditional medicine], [neem, *Azadirachta indica*; *Morinda*],
  [Fruit and food], [the tree's crop], [food and oil], [oil palm, cashew, shea, kola, mango],
)

// ============================================================================
== 6.6 Agroforestry and Conservation

#table(
  columns: (1.05fr, 2.1fr, 1.85fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Practice],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it gives],
  ),
  [Taungya], [crops grown between young plantation trees until the canopy closes], [food for the farmer and weeding for the forest],
  [Alley cropping], [crops between hedgerows of leguminous trees], [prunings mulch the crop and return nitrogen],
  [Windbreak], [a line of trees across the prevailing wind], [the crop is not lodged; the soil is not blown],
  [Shelterbelt], [several rows, protecting a whole farm or village], [a micro-climate and a fuel supply],
  [Home garden], [fruit trees, vegetables and small stock round the house], [a household's whole diet and a little cash],
  [Woodlot], [a block of trees for fuel and poles], [a crop harvested on a ten-year rotation],
)

#v(4pt)

#text(size: 9.7pt)[
  *Conservation* is the use of the forest without destroying it: *selective felling* takes the
  mature tree and leaves the young ones; *replanting* replaces what is cut; *protection of the
  watershed* keeps the streams running; *fire control* and *grazing control* keep the seedlings
  alive. The forest that is cut faster than it grows is not a resource but a debt.
]

// ============================================================================
== 6.7 Four Worked Questions

#worked-example(
  1,
  "Stocking a pond",
  [A farmer has a pond of 200 m² and stocks it at 8 fingerlings per square metre. How many
  fingerlings does he need?

    A. 25 \\
    B. 800 \\
    C. 1 600 \\
    D. 2 400],
  [
    *Step 1 — write the relation.* Number of fish = area × stocking density.

    *Step 2 — put in the figures.* 200 m² × 8 fingerlings/m² = 1 600.

    *Step 3 — sanity-check.* At 8 per square metre, 100 m² carries 800; 200 m² carries twice that.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Why the lime",
  [Agricultural lime is applied to the bottom of a fish pond before it is filled in order to

    A. feed the fish \\
    B. raise the pH and kill pests \\
    C. increase the water depth \\
    D. make the water turbid],
  [
    *Step 1 — recall what lime is.* Calcium carbonate or calcium oxide: an alkaline material.

    *Step 2 — recall the pond's problem.* A new pond is often acid, and it carries snails, insects
    and wild fish that compete with the stock.

    *Step 3 — connect the two.* The lime raises the pH, kills the pests and releases nutrients from
    the mud; the *manure* is what feeds the plankton.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The system with two crops",
  [In which system are food crops grown between rows of young forest trees until the trees form a
  canopy?

    A. Taungya \\
    B. Alley cropping \\
    C. Shifting cultivation \\
    D. Mixed cropping],
  [
    *Step 1 — find the defining feature.* Two harvests on one piece of land: the crop while the
    trees are young, and the timber after they close over.

    *Step 2 — match the term.* That is *taungya*, a system the forestry service uses to establish a
    plantation cheaply and the farmer uses to get a plot of land.

    *Step 3 — separate the look-alikes.* Alley cropping keeps the hedgerows and the crop together
    for good; shifting cultivation moves the plot; mixed cropping has no trees in the plan.

    *Answer: A.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The pond that lost its stock",
  [A farmer fertilises his pond with fresh poultry manure every morning. In the third week the
  water turns black, the fish come to the surface gasping, and most of the stock dies overnight.
  The immediate cause is

    A. a shortage of feed \\
    B. oxygen depletion from the decaying manure \\
    C. the temperature of the water \\
    D. the size of the fingerlings],
  [
    *Step 1 — read the sequence.* Too much manure is added, the plankton blooms and then dies, and
    the dead plankton and the manure are decomposed by bacteria.

    *Step 2 — recall what decomposition uses.* Bacteria consume oxygen. In a pond the oxygen is
    already limited at night, and the bloom collapses it altogether.

    *Step 3 — state the remedy.* Stop feeding and fertilising, add fresh water, and fertilise only
    when the water clears — a handful of manure, not a bucket.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 6.8 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [The commonest fish farmed in Nigeria is], [tilapia], [catfish], [carp], [mullet])

#mcq(2, [Fish are stocked in a pond at the rate of], [1–2 fingerlings per m²], [5–10 fingerlings per m²], [50–100 fingerlings per m²], [500 fingerlings per m²])

#mcq(3, [Taungya is a system of], [fish and rice culture], [growing crops among young forest trees], [rearing bees in a forest], [grazing cattle under trees])

#mcq(4, [A forest reserve differs from a plantation because a reserve is], [planted and harvested in rotation], [protected for timber, water and wildlife], [owned by a company], [cleared every year])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [*Clarias gariepinus* tolerates low oxygen and high density, which is why it dominates.]),
  ("B", [5–10 per m² is the extension recommendation for an earthen pond.]),
  ("B", [The crop pays while the trees establish; the canopy later closes over the plot.]),
  ("B", [A reserve is protected; a plantation is a crop and is harvested in blocks.]),
))

#diagram-fig("diagrams/recap_agr2_ch06.svg",
  "Chapter 6 recap card: the pond, the stocking rate, the forest types and agroforestry.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A pond is a crop of water: the site is clay, the depth is a metre and a half, the bottom is
    limed, the water is manured, the fingerlings go in at five to ten a square metre and are fed
    three per cent of their weight a day. The forest is the farm's long account: the reserve is
    protected, the plantation is harvested in rotation, and agroforestry — taungya, alley cropping,
    the windbreak and the woodlot — keeps trees and crops on the same land without either
    displacing the other.
  ]
]

#chapter-checklist("Before you leave Chapter 6", (
  [Name four farmed fish and give the scientific name of the catfish.],
  [List the eight steps of pond construction and management in order.],
  [State the stocking rate and the daily feed rate for a pond.],
  [Distinguish a forest reserve, a plantation and a community forest.],
  [Define taungya, alley cropping, windbreak and shelterbelt.],
))

#concept-box("Carry this into Chapter 7")[
  Every enterprise in the last five chapters has a cost and a return, and the farmer who cannot
  write them down is farming by feel. The next chapter is the book-keeping: the source document,
  the cash book, the depreciation of the pond and the plough, and the three statements that tell
  a farmer whether the season was a business or a habit.
]

#include "drill_ch06.typ"
