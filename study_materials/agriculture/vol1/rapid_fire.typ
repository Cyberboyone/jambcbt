#import "template.typ": *

#current-chapter.update("Appendix A: 60 Rapid-Fire Recall Pairs")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix A: 60 Rapid-Fire Recall Pairs]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[60 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    Cover the right-hand column with a card. Say the answer aloud before you look, and mark every
    miss with a dot in the margin; on the second pass, read only the dotted rows. Three passes in
    the last week are worth more than a fourth reading of the chapters.
  ]
]

#v(6pt)

== A.1 Twenty Definitions

#table(
  columns: (1.35fr, 2.6fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Answer],
  ),
  [Agriculture], [the production of crops and animals, and the processing and marketing of what they yield],
  [Agronomy], [the science of field crops and the soil that carries them],
  [Horticulture], [the science of fruits, vegetables and ornamental plants],
  [Pedology], [the study of the formation, classification and mapping of soils],
  [Edaphology], [the study of the soil as a medium for plant growth],
  [Weathering], [the breakdown of rock in place by physical, chemical or biological means],
  [Soil profile], [the vertical section of the soil from the surface to the bedrock],
  [Leaching], [the downward washing of soluble material through the soil],
  [Loam], [a soil with a balanced mixture of sand, silt and clay],
  [Field capacity], [the water a soil holds after the excess has drained away],
  [Wilting point], [the moisture level below which a plant can no longer draw water],
  [Soil pH], [the measure of the acidity or alkalinity of the soil solution],
  [Macronutrient], [an element needed by the plant in large amounts — N, P, K, Ca, Mg, S],
  [Micronutrient], [an element needed only in traces — Fe, Zn, B, Mn, Cu, Mo],
  [Manure], [animal dung and bedding, or plant waste, used to enrich the soil],
  [Compost], [humus made by rotting plant and household waste in a heap or pit],
  [Fertiliser], [a material supplying plant nutrients in a concentrated, measured form],
  [Tilth], [the physical condition of a prepared seedbed],
  [Plant population], [the number of plants standing on a unit area of field],
  [Seed viability], [the proportion of seeds in a lot that are alive and able to germinate],
)

== A.2 Twenty Numbers

#table(
  columns: (1.5fr, 2.45fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Figure],
  ),
  [Neutral pH], [7.0],
  [Acid range for most Nigerian soils], [pH 4.5 – 6.0],
  [Urea nitrogen content], [46 per cent],
  [Single superphosphate P₂O₅], [16 – 20 per cent],
  [Muriate of potash K₂O], [60 per cent],
  [NPK 20:10:10 in a 50 kg bag], [10 kg N, 5 kg P₂O₅, 5 kg K₂O],
  [Area of one hectare], [10 000 m²],
  [Plant population formula], [10 000 ÷ (row spacing × within-row spacing, in metres)],
  [Seed rate allowance], [recommendation ÷ germination fraction],
  [Product needed], [nutrient required ÷ percentage in the bag],
  [Germination percentage], [seeds germinated ÷ seeds sown × 100],
  [Profit], [revenue − cost],
  [Yield per hectare], [total yield ÷ area in hectares],
  [Moisture for safe grain storage], [about 12 – 13 per cent],
  [Field capacity of a loam], [about 25 per cent by volume],
  [Maize maturity], [90 – 120 days],
  [Cassava maturity], [9 – 12 months],
  [Oil palm first harvest], [3 – 4 years after planting],
  [Cocoa first harvest], [3 – 5 years after planting],
  [UTME paper allowance], [about 45 seconds per question],
)

== A.3 Twenty Pairings

#table(
  columns: (1.5fr, 2.45fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Belongs to],
  ),
  [granite], [igneous rock, the parent of most Nigerian upland soils],
  [limestone], [sedimentary rock, the parent of the black cotton soils],
  [slate], [metamorphic rock formed from shale],
  [laterite], [the red iron-rich soil of the humid tropics],
  [hydromorphic soil], [waterlogged valley bottom, suited to rice and sugar cane],
  [black pod], [a fungal disease of cocoa],
  [swollen shoot], [a virus disease of cocoa spread by mealybugs],
  [rosette], [a virus disease of groundnut spread by aphids],
  [streak], [a virus disease of maize spread by leafhoppers],
  [damping-off], [a fungal disease of nursery seedlings],
  [*Striga*], [a parasitic weed of sorghum and millet],
  [spear grass], [a rhizomatous weed of the savanna],
  [water hyacinth], [a floating weed of creeks and dams],
  [gari], [fermented and fried cassava],
  [elubo], [cassava flour for the yam-flour meal],
  [palm oil], [the mesocarp of the oil palm fruit],
  [palm kernel oil], [the kernel inside the nut],
  [cocoa], [fermented and dried beans for export],
  [cotton], [lint for the mill and seed for oil and cake],
  [groundnut], [pods that ripen underground],
)

#pagebreak(weak: true)
