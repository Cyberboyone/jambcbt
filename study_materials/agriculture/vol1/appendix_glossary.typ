#import "template.typ": *

#current-chapter.update("Appendix F: The Definitions File")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix F: The Definitions File]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Definitions File]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    The definitions the paper uses, in the wording it accepts. A definition is one sentence; the
    example that follows it is what earns the second mark.
  ]
]

#v(6pt)


#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 12pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[SIX PAIRS THE PAPER CONFUSES]
  #v(5pt)
  #text(size: 9.7pt)[
    *Weathering and erosion.* Weathering breaks the rock where it lies; erosion carries the pieces
    away. A question that says "in place" is a weathering question.
  ]
  #v(4pt)
  #text(size: 9.7pt)[
    *Manure and fertiliser.* Manure is organic, bulky and slow; fertiliser is mineral, concentrated
    and fast. Their one shared purpose is to supply nutrients, and that is where the similarity ends.
  ]
  #v(4pt)
  #text(size: 9.7pt)[
    *A pest and a disease.* The pest is an animal you can pick off the leaf; the disease is a
    disorder, often with a pathogen you cannot see. A virus is a disease even when an insect carries it.
  ]
  #v(4pt)
  #text(size: 9.7pt)[
    *A weed and a volunteer.* Both are plants where they are not wanted; the volunteer is the crop
    of the previous season, and it is pulled for a different reason — it carries the same pests.
  ]
  #v(4pt)
  #text(size: 9.7pt)[
    *A tuber and a root.* The yam is a tuber — a swollen stem with buds. The cassava is a root —
    a swollen storage root with no buds, which is why it is propagated from stem cuttings.
  ]
  #v(4pt)
  #text(size: 9.7pt)[
    *Profit and revenue.* Revenue is what the market paid; profit is what is left after the cost.
    A farm can have a large revenue and no profit, and the paper sets that trap in every paper.
  ]
]

#v(5pt)

#table(
  columns: (1.2fr, 2.9fr),
  inset: (x: 6pt, y: 1.9pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Definition],
  ),
  [Agriculture], [the production of crops and animals, and the processing and marketing of what they yield],
  [Agronomy], [the science of field crops and the soil that carries them],
  [Horticulture], [the science of fruits, vegetables and ornamentals],
  [Silviculture], [the science of forest trees],
  [Apiculture], [the keeping of bees for honey and wax],
  [Aquaculture], [the farming of fish and other water organisms],
  [Pedology], [the study of the formation, classification and mapping of soils],
  [Edaphology], [the study of the soil as a medium for plant growth],
  [Agroforestry], [the growing of trees together with crops or livestock on the same land],
  [Extension], [the two-way service that carries research to the farmer and the farmer's problem back to research],
  [Subsistence farming], [farming whose produce is mainly consumed by the farm family],
  [Commercial farming], [farming whose produce is mainly sold],
  [Intensive farming], [farming that puts a large amount of labour and capital on a small area],
  [Extensive farming], [farming that uses a large area with little labour or capital per hectare],
  [Shifting cultivation], [a system in which land is cropped briefly and then rested under bush fallow],
  [Crop rotation], [the ordering of different crops on the same land over a series of seasons],
  [Monoculture], [the repeated growing of one crop on the same land],
  [Mixed farming], [the keeping of livestock and the growing of crops on one farm],
  [Mixed cropping], [the growing of two or more crops together in one field],
  [Intercropping], [the growing of crops in distinct rows or strips between one another],
  [Igneous rock], [rock formed by the cooling and solidification of molten material],
  [Sedimentary rock], [rock formed from the compaction and cementation of deposited material],
  [Metamorphic rock], [rock altered by heat and pressure while still solid],
  [Weathering], [the breakdown of rock in place by physical, chemical or biological processes],
  [Erosion], [the removal and transport of soil by water, wind or gravity],
  [Soil profile], [the vertical section of the soil from the surface litter to the bedrock],
  [Horizon], [a layer of the soil profile distinguishable from the layers above and below it],
  [Leaching], [the downward washing of soluble material through the soil],
  [Podzolisation], [the downward movement of iron and aluminium from the surface horizons],
  [Laterisation], [the concentration of iron oxides at the surface of a tropical soil],
  [Soil texture], [the proportions of sand, silt and clay in the fine earth],
  [Soil structure], [the arrangement of soil particles into aggregates or crumbs],
  [Loam], [a soil with a balanced mixture of sand, silt and clay],
  [Humus], [the dark, decomposed organic matter of the soil],
  [Field capacity], [the water a soil holds after the excess has drained away],
  [Permanent wilting point], [the moisture level below which a plant can no longer draw water],
  [Soil pH], [the measure of the acidity or alkalinity of the soil solution],
  [Cation exchange capacity], [the ability of a soil to hold exchangeable cations],
  [Macronutrient], [an element needed by a plant in large amounts],
  [Micronutrient], [an element needed by a plant only in traces],
  [Deficiency symptom], [the visible sign on a plant of a shortage of a nutrient],
  [Manure], [animal dung and bedding, or plant waste, used to enrich the soil],
  [Compost], [humus made by rotting plant and household waste in a heap or pit],
  [Fertiliser], [a material supplying nutrients in a concentrated, measured form],
  [Straight fertiliser], [a fertiliser carrying mainly one nutrient],
  [Compound fertiliser], [a fertiliser carrying two or more nutrients in a stated ratio],
  [Top dressing], [the application of fertiliser beside a growing crop],
  [Green manure], [a crop grown and ploughed in to improve the soil],
  [Land clearing], [the removal of the existing vegetation before tillage],
  [Tillage], [the mechanical working of the soil to prepare a seedbed],
  [Ploughing], [the inversion of the topsoil to a depth of about 20 cm],
  [Harrowing], [the breaking of clods and levelling of the surface],
  [Ridging], [the heaping of soil into ridges for planting or drainage],
  [Tilth], [the physical condition of a prepared seedbed],
  [Broadcasting], [the scattering of seed over the surface by hand],
  [Drilling], [the sowing of seed in furrows at a set depth and spacing],
  [Dibbling], [the placing of seed in holes made with a stick or dibber],
  [Transplanting], [the moving of a seedling from the nursery to the field],
  [Thinning], [the removal of excess seedlings to leave the recommended stand],
  [Pruning], [the cutting away of unwanted branches or shoots],
  [Staking], [the supporting of a plant with a stick or trellis],
  [Earthing up], [the drawing of soil around the base of a plant],
  [Mulching], [the covering of the soil surface with plant material or plastic],
  [Plant population], [the number of plants standing on a unit area of field],
  [Seed viability], [the proportion of seeds in a lot that are alive and able to germinate],
  [Seed vigour], [the strength with which a seed germinates and establishes],
  [Dormancy], [the state in which a viable seed will not germinate though conditions are suitable],
  [Germination], [the resumption of growth of the embryo and its emergence as a seedling],
  [Hypogeal germination], [germination in which the cotyledons stay below the soil],
  [Epigeal germination], [germination in which the cotyledons are lifted above the soil],
  [Asexual propagation], [the production of a new plant from a part of the parent without seed],
  [Cutting], [a piece of stem, leaf or root planted to form a new plant],
  [Grafting], [the joining of a scion to a rootstock so that they grow as one plant],
  [Budding], [the grafting of a single bud onto a rootstock],
  [Layering], [the rooting of a stem while it is still attached to the parent],
  [Sucker], [a shoot arising from the base or root of the parent plant],
  [Tissue culture], [the multiplication of plants from cells or meristems in sterile culture],
  [Pest], [an organism that damages crops, livestock or stored produce],
  [Disease], [an abnormal condition of the plant caused by a pathogen or a disorder],
  [Pathogen], [an organism that causes disease — a fungus, bacterium, virus or nematode],
  [Vector], [an organism that carries a pathogen from plant to plant],
  [Weed], [a plant growing where it is not wanted],
  [Parasitic weed], [a weed that draws its food from the crop it grows on],
  [Herbicide], [a chemical that kills plants],
  [Insecticide], [a chemical that kills insects],
  [Fungicide], [a chemical that kills or inhibits fungi],
  [Nematicide], [a chemical that kills nematodes],
  [Integrated pest management], [the combination of cultural, biological, genetic and chemical control, with the chemical last],
  [Economic threshold], [the pest population at which the cost of control equals the loss it prevents],
  [Maturity index], [the sign by which a crop is judged ready for harvest],
  [Winnowing], [the separation of chaff from grain by wind],
  [Threshing], [the separation of grain from the ear or pod],
  [Primary processing], [the first treatment of a crop after harvest to make it saleable],
  [Secondary processing], [the conversion of a primary product into a food or industrial product],
  [Aflatoxin], [a poison produced by moulds on damp groundnut and maize],
  [Grading], [the sorting of produce into uniform classes by size and quality],
  [Marketing margin], [the difference between the farm-gate price and the retail price],
  [Cooperative], [a voluntary association of farmers who pool resources for a common benefit],
  [Farm record], [a written account of the activities, inputs and money of a farm],
  [Annual], [a plant that completes its life cycle within one year],
  [Biennial], [a plant that completes its life cycle in two years],
  [Perennial], [a plant that lives for more than two years],
  [Stover], [the dry stalk and leaves left after a cereal harvest],
  [Bush fallow], [the period during which land is rested under natural vegetation],
  [Cover crop], [a crop grown to protect the soil surface rather than to be harvested],
  [Catch crop], [a quick crop grown between two main crops],
  [Nurse crop], [a crop grown to shade or protect a slower crop],
  [Roguing], [the removal of diseased or off-type plants from a field],
  [Seed bed], [the prepared surface in which seed is sown],
  [Hardening off], [the gradual exposure of nursery seedlings to field conditions],
  [Pricking out], [the transplanting of seedlings within the nursery],
  [Seed dressing], [the coating of seed with a fungicide or insecticide before sowing],
)

#pagebreak(weak: true)


#pagebreak(weak: true)

