#import "template.typ": *

#current-chapter.update("Chapter 1: The Variety of Living Things")
#pagebreak()

#chapter-opener(
  1,
  "The Variety of Living Things",
  subtitle: "The Seven Characteristics of Life, Why We Classify, the Five Kingdoms, the Virus Question, and Writing a Scientific Name",
  syllabus-ref: "Sec. A • Topic 1",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "List and explain the seven characteristics shared by all living things.",
    "State why classification is necessary and name the taxonomic ranks in order.",
    "Place an organism in one of the five kingdoms and give the reason in one line.",
    "Justify both sides of the virus debate: living or non-living.",
    "Write a binomial name correctly, in print and in handwriting.",
  ),
  hotspots: (
    "\"Which of these is *not* a characteristic of living things?\" — the odd one out is always a physical process: crystallisation, evaporation, dissolving.",
    "\"An organism with no true nucleus belongs to …\" — Monera, every time.",
    "\"The correct binomial name is …\" — the capital letter on the genus and the italics are the whole question.",
    "\"Viruses are regarded as non-living because …\" — they have no cytoplasm, no organelles and no independent metabolism.",
    "\"Which kingdom contains organisms with chitin in the cell wall?\" — Fungi.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Treating *growth* as anything that gets bigger — a crystal grows, but it does not grow by cell division, so it is not alive. (2) Confusing *excretion* with *egestion*: undigested food leaving the gut is not a metabolic waste. (3) Writing a binomial name with a capital on the species — *Homo sapiens*, never *Homo Sapiens*.",
)

// ============================================================================
// SECTION 1.1
// ============================================================================
== 1.1 What Makes Something Alive

Biology is the study of living things, so the first question the examiner can ask is the simplest one: *what makes a thing alive?* Every living organism — from the bacterium in a gutter to the student reading this page — shows all seven of the characteristics below. A thing that lacks even one of them is not alive in the biological sense.

#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[The seven characteristics — remembered as MRS GREN]
]

#table(
  columns: (auto, 1.15fr, 2.0fr, 1.5fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Letter],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Characteristic],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Example],
  ),

  [*M*], [Movement], [A change of position or posture; in plants it is a growth movement towards or away from a stimulus.], [A seedling bending towards light],
  [*R*], [Respiration], [The chemical breakdown of food to release energy inside cells.], [Glucose + oxygen → carbon dioxide + water + energy],
  [*S*], [Sensitivity], [Detecting and responding to a stimulus such as light, heat, touch or chemicals.], [The eye narrowing its pupil in bright light],
  [*G*], [Growth], [A permanent increase in size or mass, brought about by cell division and cell enlargement.], [A child gaining height],
  [*R*], [Reproduction], [Producing new individuals of the same kind, sexually or asexually.], [A maize plant producing seeds],
  [*E*], [Excretion], [Removing metabolic waste — substances made inside the body that must not accumulate.], [Carbon dioxide through the lungs; urea through the kidneys],
  [*N*], [Nutrition], [Taking in and using food substances for energy, growth and repair.], [A goat eating grass; a leaf making glucose],
)

#v(6pt)

#concept-box("Living, dead and non-living are three different things")[
  A *living* thing shows all seven characteristics. A *dead* thing once showed them and has stopped. A *non-living* thing never showed them at all. A wooden chair is dead wood; a stone is non-living. The examiner exploits this distinction by offering "a dead leaf" and "a stone" as options to a question about non-living things.
]

#worked-example(
  1,
  "Distinguishing growth from swelling",
  tier: "FOUNDATION",
  [A crystal of copper(II) sulphate placed in a saturated solution becomes larger over several days. Explain why this is *not* biological growth.],
  [
    Biological growth is a *permanent increase in size or mass produced by cell division and cell enlargement*. It requires cells, and it requires the organism to take in and assimilate food.

    A crystal has no cells, so it cannot divide. It grows by *deposition* of more solute onto its surface — material is added from outside, not made by the crystal itself. Remove the crystal from the solution and it stops growing, and it will dissolve back if the solution is diluted.

    *Answer:* the crystal has no cells and does not assimilate food; its increase in size is deposition, not growth.
  ],
)

#worked-example(
  2,
  "Excretion is not egestion",
  tier: "UTME STANDARD",
  [State, with one example each, the difference between excretion and egestion.],
  [
    *Excretion* is the removal of waste products of metabolism — substances formed *inside* the cells by chemical reactions. Carbon dioxide from respiration and urea from the breakdown of excess amino acids are excretory products.

    *Egestion* is the removal of undigested food material from the alimentary canal — material that was never absorbed into the cells, and so was never part of metabolism. The faeces of a mammal are egested, not excreted.

    One-line test: *was it made inside the body?* If yes, removing it is excretion. If it merely passed through the gut, it is egestion.
  ],
)

// ============================================================================
// SECTION 1.2
// ============================================================================
== 1.2 Why We Classify, and How

There are millions of kinds of organisms. No one can study them one at a time, so biologists group them by shared features. Classification does three jobs at once:

+ it *identifies* an organism — what is it?;
+ it *organises* organisms into groups of increasing similarity;
+ it gives each organism a *name* that every biologist in the world understands.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The taxonomic ranks, in order]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 11pt, weight: "bold", fill: jamb-navy)[
    Kingdom → Phylum (Division in plants) → Class → Order → Family → Genus → Species
  ]
  #v(3pt)
  #text(size: 9.6pt)[
    The higher the rank, the fewer features the members share and the more kinds it contains. A kingdom holds every organism of a broad type; a species holds only organisms that can breed with one another.
  ]
]

#concept-box("The definition of a species")[
  A *species* is a group of organisms with similar structure and function that can interbreed to produce *fertile* offspring. A horse and a donkey can mate, but the mule they produce is sterile — so the horse and the donkey remain two species. This one definition produces a predictable exam question every year.
]

#worked-example(
  3,
  "Putting the ranks in order",
  tier: "FOUNDATION",
  [Arrange these ranks from the largest group to the smallest: genus, order, class, species, family, phylum, kingdom.],
  [
    Kingdom → Phylum → Class → Order → Family → Genus → Species.

    A quick check: the species is the *smallest* group, so it must come last; the kingdom contains everything else, so it comes first. The three in the middle — class, order, family — always appear in that order, never shuffled.
  ],
  source: "Common UTME format",
)

// ============================================================================
// SECTION 1.3
// ============================================================================
== 1.3 The Five Kingdoms

Modern classification uses five kingdoms. The differences between them rest on three questions: *does the cell have a true nucleus? does it have a cell wall, and of what? and how does the organism obtain food?*

#diagram-fig("diagrams/ch01_kingdoms.svg",
  "The five kingdoms, with a typical member and the one feature that fixes the identification.")

#table(
  columns: (0.9fr, 1.15fr, 1.6fr, 1.35fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Kingdom],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Cell type],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Distinguishing features],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Examples],
  ),

  [*Monera*], [Prokaryotic — no true nucleus, no membrane-bound organelles], [Single-celled; circular DNA; cell wall of peptidoglycan (not cellulose); nutrition autotrophic or heterotrophic], [Bacteria, cyanobacteria (*Anabaena*, *Oscillatoria*)],
  [*Protista*], [Eukaryotic], [Mostly single-celled; nucleus present; some have cilia or flagella; plant-like, animal-like or fungus-like], [*Amoeba*, *Paramecium*, *Euglena*, *Plasmodium*, *Chlamydomonas*],
  [*Fungi*], [Eukaryotic], [Cell wall of chitin; no chlorophyll; heterotrophic by saprophytism or parasitism; reproduce by spores], [*Rhizopus* (bread mould), yeast, mushrooms, *Penicillium*],
  [*Plantae*], [Eukaryotic], [Multicellular; cellulose cell wall; chlorophyll; autotrophic by photosynthesis; store starch], [Mosses, ferns, maize, mango, *Spirogyra*],
  [*Animalia*], [Eukaryotic], [Multicellular; no cell wall; heterotrophic by ingestion; most are motile; store glycogen], [Sponges, insects, fish, birds, mammals including humans],
)

#v(5pt)

#trap-box("The two features that decide almost every kingdom question")[
  *Monera* is the only kingdom with *no true nucleus* — if the question says "no nucleus" or "prokaryotic", the answer is Monera and nothing else.

  *Fungi* is the only heterotrophic kingdom with a *cell wall*, and that wall is made of *chitin*, not cellulose. A mould has a wall like a plant but cannot photosynthesise like a plant; that combination is unique to Fungi.
]

#worked-example(
  4,
  "Identifying a kingdom from a description",
  tier: "UTME STANDARD",
  [An organism is single-celled, has a nucleus, a cell wall made of chitin, no chlorophyll, and feeds on dead bread. State its kingdom and give one reason.],
  [
    Work through the clues in order.

    *Single-celled with a nucleus* — eukaryotic, so it cannot be Monera. *Cell wall of chitin* — that wall material belongs to Fungi alone; plants use cellulose and bacteria use peptidoglycan. *No chlorophyll, feeds on dead matter* — heterotrophic by saprophytism, which is exactly how a mould feeds.

    *Answer:* Kingdom Fungi — it has a chitin cell wall and feeds saprophytically, which no other kingdom does.
  ],
  source: "JAMB 2019 style",
)

// ============================================================================
// SECTION 1.4
// ============================================================================
== 1.4 Viruses: Living or Not?

Viruses sit outside the five kingdoms because they do not fit any of them. A virus is not a cell at all: it has no cytoplasm, no nucleus, no organelles and no cell membrane of the usual kind. It has only two essential parts — a *nucleic acid core* (DNA or RNA) and a *protein coat* called the capsid.

#diagram-fig("diagrams/ch01_virus.svg",
  "A bacteriophage. The head contains the nucleic acid; the tail and fibres attach to the host. Only the nucleic acid enters the host cell.")

#table(
  columns: (1.1fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Evidence that viruses are living],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Evidence that they are not],
  ),

  [They possess genetic material (DNA or RNA).], [They have no cytoplasm, nucleus or organelles — they are not cells.],
  [They reproduce, but only inside a living host cell.], [They have no metabolism of their own: no respiration, no nutrition.],
  [They can mutate, and so evolve.], [They do not grow; the parts are assembled.],
  [They are specific to a host and cause disease in it.], [Outside a host they are inert and can be crystallised like a chemical.],
)

#v(5pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The answer the examiner wants]
  #v(3pt)
  #text(size: 10pt)[
    Viruses are *not classified as living organisms*: they are *obligate intracellular parasites*, inert outside a host and dependent on the host's machinery for every process. If a question asks "why are viruses not placed in any of the five kingdoms?", the marks are for "no cellular organisation" and "no independent metabolism".
  ]
]

#table(
  columns: (1.25fr, 1.25fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Human viral diseases],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Plant viral diseases],
  ),

  [AIDS (HIV), poliomyelitis, measles, rabies, influenza, yellow fever, Ebola, COVID-19, hepatitis B], [Tobacco mosaic disease, cassava mosaic disease, cocoa swollen shoot disease],
)

#trap-box("“Virus” is not a synonym for “bacterium”")[
  Bacteria are *cells* and are treated with antibiotics. Viruses are *not cells*, so antibiotics do not act on them — a point that appears in biology papers as well as in health questions. If an option says "viruses are killed by antibiotics", it is wrong.
]

// ============================================================================
// SECTION 1.5
// ============================================================================
== 1.5 Writing a Scientific Name

Every species has one internationally agreed name, made of two Latin words: the *genus* and the *specific epithet*. This is the binomial system, introduced by Carl Linnaeus.

#diagram-fig("diagrams/ch01_nomenclature.svg",
  "The binomial system: genus capitalised, species in small letters, the pair in italics — and six names worth memorising.")

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The five rules]
  #v(4pt)
  #grid(
    columns: (auto, 1fr),
    row-gutter: 4pt,
    column-gutter: 8pt,
    [#text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-navy)[1]], [Two words only: genus then species.],
    [#text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-navy)[2]], [The genus begins with a capital letter; the species never does.],
    [#text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-navy)[3]], [Both words are italic in print, and underlined separately in handwriting.],
    [#text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-navy)[4]], [After the full name has been given once, the genus may be abbreviated: *H. sapiens*.],
    [#text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-navy)[5]], [The name is Latin and is never translated or given a capital on the species.],
  )
]

#worked-example(
  5,
  "Spot the mistake in a written name",
  tier: "UTME STANDARD",
  [A student writes the name of the lion as *Panthera Leo*, and the name of maize as *Zea Mays*. State what is wrong in each case and write the names correctly.],
  [
    In both names the *species* word has been given a capital letter. The genus takes the capital; the specific epithet never does.

    Correct forms: *Panthera leo* (lion) and *Zea mays* (maize). In handwriting both are underlined rather than italicised: #underline[*Panthera leo*] and #underline[*Zea mays*].

    If the question also asks for the genus, the answer is *Panthera* and *Zea* respectively — the first word alone.
  ],
)

#worked-example(
  6,
  "Which characteristic is being tested?",
  tier: "JAMB CHALLENGE",
  [A seedling on a windowsill bends towards the light. Name the characteristic shown, and explain why it is not "movement" in the ordinary sense.],
  [
    The bending is a *growth movement* in response to light — a *phototropic* response. It belongs under *sensitivity*, because the plant has detected a stimulus and responded to it.

    It is not movement in the sense of locomotion: the plant does not travel from one place to another. The bend is produced by cells on the shaded side elongating faster than those on the lit side, so the stem curves towards the light.

    *Answer:* sensitivity (phototropism); the response is a growth movement, not locomotion.
  ],
)

// ============================================================================
// SECTION 1.6 — CHECKLIST
// ============================================================================
== 1.6 Chapter 1 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + list all seven characteristics of living things, in order, without the book;
  + explain the difference between growth and swelling, and between excretion and egestion;
  + state why classification is necessary and name the seven taxonomic ranks in order;
  + define a species and explain why the mule does not create a new species;
  + name the five kingdoms and give the distinguishing feature of each;
  + explain why viruses are not placed in any kingdom, giving two reasons on each side;
  + write a binomial name correctly, and spot the error in a wrongly written one.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Seven characteristics separate the living from the non-living; five kingdoms separate the living from one another; and two Latin words name each species. The virus stands outside all five kingdoms because it is not a cell.
  ]
]

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: the seven characteristics, the five kingdoms, the virus and the binomial name.", width: 100%)

// ============================================================================
// SECTION 1.7 — TWO-MINUTE SET
// ============================================================================
== 1.7 Chapter 1 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#block(breakable: false)[
#mcq(1, [Organisms whose cells lack a true nucleus belong to the kingdom], [Protista], [Monera], [Fungi], [Plantae])
#mcq(2, [Which of the following is *not* a characteristic of living things?], [Excretion], [Respiration], [Crystallisation], [Irritability])
#mcq(3, [The correct way to write the scientific name of maize is], [*Zea Mays*], [*zea mays*], [*Zea mays*], [*ZEA MAYS*])
#mcq(4, [Viruses are best described as], [prokaryotic cells], [obligate intracellular parasites], [unicellular fungi], [bacteria without cell walls])

#answer-key-grid(("B", "C", "C", "B"))
]


#include "drill_ch01.typ"
