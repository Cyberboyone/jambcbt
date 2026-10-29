#import "template.typ": *

#current-chapter.update("Chapter 2: Cell Structure and Organisation")
#pagebreak()

#chapter-opener(
  2,
  "Cell Structure and Organisation",
  subtitle: "The Cell Theory, Every Organelle and Its Job, Plant versus Animal Cells, the Bacterial Cell, and the Levels of Organisation",
  syllabus-ref: "Sec. B • Topic 1",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "State the cell theory in three sentences.",
    "Name each organelle and give its function in one line the examiner will accept.",
    "Compare plant, animal and bacterial cells feature by feature.",
    "Explain how the structure of a specialised cell suits its function.",
    "Arrange cell, tissue, organ, system and organism in order, with an example of each.",
  ),
  hotspots: (
    "\"The organelle responsible for releasing energy is …\" — the mitochondrion, not the nucleus and not the ribosome.",
    "\"Which structure is present in a plant cell but absent from an animal cell?\" — cell wall, chloroplast, large vacuole.",
    "\"The site of protein synthesis is …\" — the ribosome.",
    "\"A bacterium differs from a plant cell because it lacks …\" — a true nucleus and membrane-bound organelles.",
    "\"The level of organisation between organ and organism is …\" — the system.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Saying the nucleus *makes* energy — it controls the cell; the mitochondrion releases energy. (2) Forgetting that the cell *wall* is fully permeable while the cell *membrane* is partially permeable. (3) Calling a bacterium “a simple plant cell” — a prokaryote has no nucleus at all, and nothing membrane-bound inside it.",
)

// ============================================================================
// SECTION 2.1
// ============================================================================
== 2.1 The Cell as the Unit of Life

Every living thing is made of cells. Some organisms are a single cell (*Amoeba*, a bacterium); others are made of billions. The *cell theory* states three things:

+ all living organisms are made of cells;
+ the cell is the *basic structural and functional unit* of life;
+ new cells arise only from existing cells, by cell division.

#concept-box("The two questions behind every cell question")[
  When the examiner shows an unfamiliar cell, two questions decide the answer: *is there a true nucleus?* (prokaryote or eukaryote) and *is there a cell wall, and what is it made of?* (plant, fungus or animal). Learn those two, and the rest of the detail is decoration.
]

// ============================================================================
// SECTION 2.2
// ============================================================================
== 2.2 The Organelles and What They Do

#diagram-fig("diagrams/ch02_animal_cell.svg",
  "A typical animal cell. Every label is a possible question: the examiner names the organelle and asks for the function, or names the function and asks for the organelle.")

#table(
  columns: (1.05fr, 2.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Organelle],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Function — learn this wording],
  ),

  [*Cell membrane*], [A thin, *partially (selectively) permeable* layer that controls what enters and leaves the cell.],
  [*Cell wall*], [A rigid layer outside the membrane; gives support and shape, and is *fully permeable*. Cellulose in plants, chitin in fungi, peptidoglycan in bacteria. Absent in animal cells.],
  [*Nucleus*], [Contains the *chromosomes* (DNA) and so controls all activities of the cell. Bounded by a nuclear membrane with pores; contains the nucleolus, which makes ribosomes.],
  [*Cytoplasm*], [The jelly-like material in which the organelles sit and most chemical reactions of the cell occur.],
  [*Mitochondrion*], [Site of *aerobic respiration*: releases energy from glucose. The inner membrane is folded into cristae to increase surface area.],
  [*Chloroplast*], [Contains *chlorophyll*; site of *photosynthesis*. Found in plant cells only.],
  [*Ribosome*], [Site of *protein synthesis*. Free in the cytoplasm or attached to the rough endoplasmic reticulum.],
  [*Endoplasmic reticulum*], [A network of membranes that transports substances through the cell; rough ER carries ribosomes, smooth ER makes lipids.],
  [*Golgi apparatus*], [Modifies, *packages and secretes* proteins and other substances from the cell.],
  [*Lysosome*], [Contains *digestive enzymes*; digests worn-out organelles and material taken into the cell. Common in animal cells.],
  [*Vacuole*], [A fluid-filled space. In plants one *large central vacuole* holds cell sap and maintains turgor; animal cells have small, temporary vacuoles.],
  [*Centriole*], [Forms the *spindle fibres* during cell division. Present in animal cells, absent in higher plant cells.],
)

#v(5pt)

#trap-box("Membrane versus wall — the permeability trap")[
  The *cell membrane* is partially permeable: it lets some substances through and not others. The *cell wall* is fully permeable: water and dissolved substances pass through it freely. A question that asks "which structure controls what enters the cell?" wants the *membrane*; one that asks "which structure prevents the cell from bursting?" wants the *wall* (in plants) or the membrane's own limit (in animals).
]

#worked-example(
  1,
  "From function to organelle",
  tier: "FOUNDATION",
  [Name the organelle responsible for each of the following: (a) releasing energy from glucose; (b) making proteins; (c) packaging and secreting substances; (d) digesting worn-out organelles.],
  [
    (a) *Mitochondrion* — aerobic respiration, releasing energy.

    (b) *Ribosome* — protein synthesis; free in the cytoplasm or on the rough ER.

    (c) *Golgi apparatus* — modifies, packages and secretes.

    (d) *Lysosome* — contains digestive enzymes.

    Notice that none of the four answers is the nucleus. The nucleus *controls* the cell; it does not carry out these jobs itself. That distinction is worth a mark on its own.
  ],
)

#worked-example(
  2,
  "Why a plant cell does not burst",
  tier: "UTME STANDARD",
  [A plant cell and an animal cell are each placed in pure water. Explain what happens to each, and why the outcomes differ.],
  [
    Pure water has a higher water potential than the cell contents, so water enters both cells by *osmosis*.

    In the *animal cell* there is no wall. Water continues to enter, the membrane stretches, and the cell eventually *bursts* (haemolysis, in the case of a red blood cell).

    In the *plant cell* the incoming water presses the cytoplasm and membrane against the rigid *cellulose cell wall*. The wall resists further expansion, the cell becomes *turgid*, and it does not burst. The wall is the whole difference.
  ],
)

// ============================================================================
// SECTION 2.3
// ============================================================================
== 2.3 Plant Cells and Animal Cells

#diagram-fig("diagrams/ch02_plant_cell.svg",
  "A typical plant cell. The large central vacuole and the chloroplasts are the two features an examiner looks for first.")

#table(
  columns: (1fr, 1.35fr, 1.35fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Plant cell],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Animal cell],
  ),

  [Cell wall], [Present — cellulose], [Absent],
  [Shape], [Fixed, regular], [Irregular, variable],
  [Chloroplasts], [Present in green parts], [Absent],
  [Vacuole], [One large central vacuole], [Small, temporary vacuoles],
  [Centrioles], [Absent in higher plants], [Present],
  [Lysosomes], [Rarely present], [Present],
  [Food storage], [Starch], [Glycogen],
  [Nutrition], [Autotrophic (photosynthesis)], [Heterotrophic],
)

#v(4pt)

#shortcut-box("The four-feature answer")[
  If a question asks for *differences* between plant and animal cells and gives you four marks, write exactly four: *cell wall, chloroplasts, large central vacuole, centrioles*. Two marks are usually awarded for the first two, and the other two cover the rest.
]

// ============================================================================
// SECTION 2.4
// ============================================================================
== 2.4 The Bacterial Cell

A bacterium is a *prokaryote*: it has no true nucleus and no membrane-bound organelles. Its DNA lies free in the cytoplasm as a single circular molecule in a region called the nucleoid, and it often carries extra small rings of DNA called *plasmids*.

#diagram-fig("diagrams/ch02_bacterium.svg",
  "A bacterium. The absence of a nucleus and of membrane-bound organelles is the whole of the prokaryote story.")

#table(
  columns: (1fr, 1.3fr, 1.3fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Prokaryotic (bacterium)],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Eukaryotic (plant or animal)],
  ),

  [Nucleus], [None — DNA free in the cytoplasm], [True nucleus with a nuclear membrane],
  [DNA form], [One circular chromosome, plus plasmids], [Several linear chromosomes with protein],
  [Membrane-bound organelles], [None], [Mitochondria, ER, Golgi, lysosomes],
  [Ribosomes], [Present, but smaller], [Present, larger],
  [Cell wall], [Peptidoglycan], [Cellulose (plant) or none (animal)],
  [Size], [About 1 – 10 µm], [About 10 – 100 µm],
)

#worked-example(
  3,
  "Why a bacterium is not a “simple plant cell”",
  tier: "UTME STANDARD",
  [A student describes a bacterium as "a plant cell without chloroplasts". Give three reasons why this is wrong.],
  [
    First, a bacterium has *no true nucleus*: its DNA is not enclosed in a nuclear membrane, whereas a plant cell has a nucleus.

    Second, a bacterium has *no membrane-bound organelles at all* — no mitochondria, no endoplasmic reticulum, no Golgi body — while a plant cell has all of these.

    Third, the *cell wall is different*: bacterial walls are made of peptidoglycan, plant walls of cellulose.

    *Answer:* the student has confused two different grades of cell organisation — prokaryotic and eukaryotic — not two variations of the same plan.
  ],
)

// ============================================================================
// SECTION 2.5
// ============================================================================
== 2.5 Levels of Organisation

Cells do not work alone in a large organism. They are grouped into tissues, tissues into organs, organs into systems.

#diagram-fig("diagrams/ch02_levels.svg",
  "Cell → tissue → organ → system → organism, with a worked example of each level.")

#table(
  columns: (1fr, 2.0fr, 1.3fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Level],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Example],
  ),

  [*Cell*], [The smallest unit that can carry out all the processes of life.], [Muscle cell],
  [*Tissue*], [A group of similar cells performing the same function.], [Muscle tissue],
  [*Organ*], [Several tissues working together for one function.], [Stomach],
  [*System*], [Several organs working together for a major function.], [Digestive system],
  [*Organism*], [All the systems together — a complete living thing.], [The human body],
)

#worked-example(
  4,
  "Specialised cells suit their function",
  tier: "JAMB CHALLENGE",
  [A root hair cell absorbs water and mineral salts from the soil. State three ways in which its structure suits this function.],
  [
    It has a *long, thin extension* — the root hair — which greatly increases the surface area for absorption.

    It has *no chloroplasts*, which is correct for a cell underground that cannot photosynthesise; the space is used for absorption instead.

    It has a *large number of mitochondria*, because absorbing mineral salts by active transport needs energy, and a *thin cell wall* so that water crosses easily.

    The general rule: state the structural feature, then say what it makes possible. "Large surface area" alone is half a mark; "long extension gives a large surface area for faster absorption" is the whole mark.
  ],
)

// ============================================================================
// SECTION 2.6 — CHECKLIST
// ============================================================================
== 2.6 Chapter 2 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + state the three statements of the cell theory;
  + name every organelle in a labelled diagram and give its function in one line;
  + explain the difference between the cell membrane and the cell wall;
  + list four differences between a plant cell and an animal cell without hesitation;
  + explain the difference between a prokaryotic and a eukaryotic cell;
  + give three adaptations of a named specialised cell and link each to its function;
  + put cell, tissue, organ, system and organism in order with an example of each.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The cell is the unit of life; the nucleus is the control room; the mitochondrion is the power station; the ribosome is the factory; the Golgi body is the post office; the lysosome is the incinerator; the wall is the fence and the vacuole is the water tank. Prokaryotes have none of the membrane-bound rooms — only the fence.
  ]
]

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: prokaryote against eukaryote, plant against animal, organelle jobs and the levels of organisation.", width: 66%)

// ============================================================================
// SECTION 2.7 — TWO-MINUTE SET
// ============================================================================
== 2.7 Chapter 2 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [The site of aerobic respiration in a cell is the], [nucleus], [mitochondrion], [ribosome], [Golgi apparatus])
#mcq(2, [Which structure is found in a plant cell but not in an animal cell?], [Ribosome], [Chloroplast], [Mitochondrion], [Nucleus])
#mcq(3, [The organelle that packages and secretes proteins is the], [Golgi apparatus], [lysosome], [ribosome], [vacuole])
#mcq(4, [A prokaryotic cell lacks], [ribosomes], [a cell membrane], [membrane-bound organelles], [DNA])

#answer-key-grid(("B", "B", "A", "C"))
