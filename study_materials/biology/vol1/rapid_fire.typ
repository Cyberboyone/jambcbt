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
    [An organism that manufactures its own food from simple inorganic substances is described as], [autotrophic],
    [Cilia on the cells lining the trachea function to], [sweep mucus with trapped dust and bacteria away from the lungs],
    [Vegetative propagation in plants produces offspring that are], [genetically identical to the parent],
    [In the starch test, a leaf is first boiled in water and then in ethanol. The ethanol step is needed because], [chlorophyll must be removed before iodine can show the colour change],
    [Which of these is a deficiency disease caused by lack of protein in children?], [Kwashiorkor],
    [Root pressure is shown most clearly when], [transpiration is low, for example at night in humid air],
    [Compared with arteries, veins], [have thinner walls, wider lumen and valves],
    [Aerobic respiration may be summarised as], [glucose + oxygen → carbon dioxide + water + energy],
    [Which kidney function would fail first in a patient with a damaged glomerulus?], [Filtration of blood],
    [The bones of the pelvis are important in movement because they], [transmit the weight of the body to the legs and give attachment to leg muscles],
    [A dichotomous key identifies an organism by], [a series of paired choices, each with two alternatives],
    [An image of a specimen measures 20 mm while the specimen itself is 0.05 mm long. The magnification is], [×400],
    [Which feature is found in prophase I of meiosis but not in prophase of mitosis?], [Pairing of homologous chromosomes],
    [Guard cells open a stoma when they], [take in water and become turgid],
    [Glucose is carried from the gut to the liver by the], [hepatic portal vein],
    [A plant wilts in a solution of high salt concentration because], [the external solution is more concentrated than the cell sap, so water leaves by osmosis],
    [During exercise, cardiac output rises mainly because], [the heart rate increases],
    [Which of these is an advantage of the counter-current system in fish gills?], [It extracts a high proportion of the oxygen from the water],
    [On a cold day, less water is lost in sweat, so the volume of urine], [increases and the urine becomes more dilute],
    [Ligaments differ from tendons because ligaments], [join bone to bone],
    [Which pair of organisms belongs to the same genus?], [*Panthera leo* and *Panthera pardus*],
    [Lysosomes are organelles that], [contain hydrolytic enzymes that digest waste and worn-out organelles],
    [The nuclear membrane begins to re-form around the two groups of chromosomes during], [telophase],
    [The oxygen released during photosynthesis comes from the], [photolysis of water],
    [Hydrochloric acid in gastric juice is important because it], [kills bacteria and provides the acidic pH for pepsin],
    [The stomata close at night in many plants because], [carbon dioxide is not needed for photosynthesis and closing reduces water loss],
    [Blood clotting is important because it], [prevents excessive loss of blood and the entry of pathogens],
    [During vigorous exercise, lactic acid is carried in the blood to the], [liver, where it is reconverted to glucose],
    [Negative feedback works by], [making a change trigger a response that reverses the change],
    [Muscle cells release energy for contraction by], [respiring glucose],
    [Members of one species are, by definition, able to], [interbreed and produce fertile offspring],
    [Which cell would contain the greatest number of mitochondria?], [A heart muscle cell],
    [A gamete formed by mitosis instead of meiosis would be a disaster for the species because], [the chromosome number would double at every generation],
    [The light-dependent stage of photosynthesis produces], [ATP, reduced NADP and oxygen],
    [Emulsion test — shaking a food sample with ethanol and then adding water — is used for], [fat],
    [Transpiration is the], [loss of water vapour from the aerial parts of a plant, mainly through the leaves],
    [Anaemia is a condition in which], [there is too little haemoglobin, so oxygen transport is poor],
    [The product of anaerobic respiration in a human muscle cell that causes stiffness after exercise is], [lactic acid],
    [In a transplant, a kidney from a donor is most likely to be rejected by the], [white blood cells of the recipient's immune system],
    [The biceps contract and the triceps relax when the elbow], [flexes],
    [The organism that causes malaria, *Plasmodium*, belongs to the kingdom], [Protista],
    [A cell is viewed through a ×10 eyepiece and a ×40 objective. The total magnification is], [×400],
    [The product of the first meiotic division in a human male cell is], [two haploid cells, each chromosome still in two chromatids],
    [The waxy cuticle of a leaf is an adaptation that], [reduces water loss by evaporation],
    [A patient with the gall bladder removed is advised to avoid fatty meals because], [bile cannot be stored and released in a concentrated dose to emulsify fat],
    [Wilting of a plant on a hot day is caused by], [loss of water from cells faster than it is replaced, so cells lose turgor],
    [Haemoglobin combines with oxygen to form], [oxyhaemoglobin],
    [The intercostal muscles assist breathing by], [moving the rib cage up and out during inspiration],
    [Which of these is *not* a function of the kidney?], [Producing bile],
    [A vertebral column with a series of separate vertebrae rather than one rod allows], [flexibility while still protecting the spinal cord],
    [Cyanobacteria differ from most other bacteria because they], [contain chlorophyll and photosynthesise],
    [A mature mammalian red blood cell has no mitochondria, so it], [respires anaerobically and does not use the oxygen it carries],
    [Which statement about meiosis is correct?], [It halves the chromosome number and produces four cells],
    [A green leaf that has been in sunlight gives a blue-black colour with iodine solution. This shows that], [starch has been made by photosynthesis],
    [Which food test uses Biuret solution?], [The test for protein],
    [Guttation is], [the appearance of water droplets at the edges of leaves, forced out by root pressure],
    [A patient whose spleen is removed may be more prone to infection because the spleen], [helps to filter blood and produce lymphocytes],
    [Which equation correctly represents anaerobic respiration in a mammal?], [Glucose → lactic acid + energy],
    [Which of these is a metabolic waste that must be excreted?], [Carbon dioxide],
    [Fracture of a long bone heals by], [production of new bone tissue by cells of the periosteum],
  )
]

