#import "template.typ": *

#current-chapter.update("Appendix A: 60 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 60 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[60 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Sixty one-line questions with the answer beside each. Cover the right-hand column with a sheet of paper and work down the list — twenty seconds a line. Anything you cannot answer in twenty seconds is a chapter to reread tonight.]
]

#v(5pt)

== A.1 Questions and Answers

#[
  #set text(size: 8.9pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 3.2pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [Tetrads are formed during], [prophase I of meiosis],
    [If two events are independent, the probability that both occur is found by], [multiplying their probabilities],
    [A reduction in the gene pool of a small population is dangerous because], [there is less variation for natural selection],
    [Which is *not* evidence for evolution?], [The colour of a rainbow],
    [If a quadrat of 0.5 m² contains 8 plants, the estimated density is], [16 per m²],
    [An organism that is eaten by a lizard and eats grasshoppers is at the], [third trophic level],
    [Nitrogen is needed by plants to make], [proteins and nucleic acids],
    [Which of these is *not* a conservation measure?], [Encouraging the bush meat trade],
    [Integrated pest management means], [combining cultural, biological and chemical methods],
    [To avoid parallax error when reading a thermometer you should], [keep the eye level with the top of the liquid column],
    [Translation takes place on the], [ribosome],
    [A person of blood group AB can receive blood from], [any group],
    [Which statement about advantageous mutations is correct?], [They arise at random and are then selected],
    [Which of these is an example of observed natural selection?], [The peppered moth],
    [Abiotic factors that affect a river community include], [current speed and dissolved oxygen],
    [The energy in a food chain ultimately comes from], [the sun],
    [The montane biome of Nigeria is found on], [the Jos and Mambilla plateaus],
    [An indicator of clean, well-oxygenated water is], [mayfly nymphs and stoneflies],
    [Which of these is a *cultural* method of pest control?], [Crop rotation],
    [Which of these would make a drawing unacceptable?], [Shading to show texture],
    [Colour blindness is more common in males because], [males have only one X chromosome],
    [Which statement about sex-linked inheritance is correct?], [A father passes an X-linked allele to all his daughters],
    [A population of bacteria is exposed to an antibiotic for the first time. The few survivors], [already carried a resistance mutation],
    [A species is best defined as a group of organisms that], [can interbreed to produce fertile offspring],
    [The main advantage of the capture–recapture method is that it], [does not harm or need to catch every animal],
    [A food web with many links is described as], [stable],
    [The pioneer stage in a lithosere is important because it], [begins to form soil from rock],
    [The greenhouse effect is caused by gases that], [absorb and re-emit infrared radiation],
    [Stem borers damage maize by], [tunnelling inside the stem],
    [A food giving a purple colour with Biuret and a brick-red colour with Benedict's contains], [protein and reducing sugar],
    [A characteristic controlled by a gene on the X chromosome is described as], [sex-linked],
    [The number of gamete types produced by an organism of genotype AaBbCc, with the genes unlinked, is], [8],
    [A mutation that changes an amino acid in an enzyme is most likely to], [alter or destroy the enzyme's activity],
    [Speciation requires, in order,], [isolation, divergence, reproductive isolation],
    [Which of these is an example of a limiting factor becoming more severe as a population grows?], [Less food per animal],
    [The trophic level of a hawk that eats a snake is the], [fourth],
    [Which micro-organisms convert nitrate to nitrogen gas?], [Denitrifying bacteria],
    [Which is a reason to conserve biodiversity?], [It provides medicines and future breeding stock],
    [Which of these is a post-harvest loss?], [Grain eaten by weevils in the store],
    [Benedict's test must be carried out], [with heat, in a water bath],
    [A gene that has more than two alleles in the population shows], [multiple alleles],
    [The genotype of a person of blood group O is], [ii],
    [A species of moth becomes darker in an industrial area. This is an example of], [natural selection in action],
    [The best evidence that all living things share a common origin is], [that they share the same genetic code and many identical proteins],
    [The density of a population of 500 insects in a 25 m² area is], [20 per m²],
    [Decomposers return which of the following to the soil?], [Mineral salts and humus],
    [Excess nitrate in a lake leads to], [eutrophication],
    [Sewage in a river increases which of the following first?], [Bacterial numbers],
    [A footbath at the entrance to a poultry house is used to], [disinfect boots and prevent disease spread],
    [A biological drawing must be], [large and in the centre of the page],
    [A diploid organism with genotype AaBb is selfed. The expected phenotypic ratio with independent assortment is], [9 : 3 : 3 : 1],
    [A dihybrid test cross (AaBb × aabb) produces offspring in the ratio 1 : 1 : 1 : 1 only if], [the genes are unlinked],
    [Which feature of the cactus is *not* an adaptation to drought?], [Large flat leaves],
    [Transitional fossils are important because they], [show a link between two groups],
    [Competition between members of the same species is called], [intraspecific competition],
    [If the producers in a habitat contain 50 000 kJ, the secondary consumers contain about], [500 kJ],
    [Decomposition is fastest in], [warm moist conditions],
    [The main greenhouse gas produced by cattle and rice fields is], [methane],
    [Anthrax carcasses must never be opened because], [the bacteria form spores that survive in soil for years],
    [The line of best fit should], [follow the trend and ignore anomalous points],
  )
]

