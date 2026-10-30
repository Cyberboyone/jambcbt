#import "template.typ": *

#current-chapter.update("Appendix E: The Reaction Map")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Reaction Map]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Reaction Map]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Inorganic chemistry is a map, not a list. Start at any substance you are given and there are only a handful of moves available. This appendix lays the moves out once, in the order a question is likely to ask for them.]
]

#v(4pt)

== E.1 The Four Things a Metal Can Meet

A metal in a test tube can be asked about four reagents, and the reactivity series answers all four at once: oxygen and heat, cold water, steam, and dilute acid. Learn the answer for each *band* of the series, not for each metal.

#table(
  columns: (1.25fr, 1.15fr, 1.2fr, 1.15fr, 1.15fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Band],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Oxygen],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Cold water],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Steam],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Dilute acid],
  ),
  [K, Na, Ca], [tarnishes instantly], [hydroxide + H₂, violent], [—], [salt + H₂, violent],
  [Mg], [white MgO, bright flame], [very slow], [MgO + H₂, fast], [salt + H₂, brisk],
  [Al], [protective Al₂O₃ coat], [none], [Al₂O₃ + H₂, slow], [salt + H₂, slow to start],
  [Zn, Fe], [oxide scale], [none], [oxide + H₂], [salt + H₂, steady],
  [Sn, Pb], [oxide scale], [none], [none at this temperature], [salt + H₂, very slow with lead],
  [Cu], [black CuO], [none], [none], [none with dilute acid],
  [Ag, Au], [none], [none], [none], [none],
)

#trap-box("The two questions this table is really answering")[
  *“Which metal reacts with cold water but not with steam?”* is a nonsense question: anything that reacts with cold water also reacts with steam. The examiner's real question is the opposite — *which metal reacts with steam but not with cold water* — and the answer is the zinc-to-iron band, with aluminium in it only when the oxide coat has been removed. *“Which metal will not react with dilute hydrochloric acid?”* is answered by position, not by memory: every metal below hydrogen — copper, silver, gold — refuses, and every metal above it reacts.
]

== E.2 The Oxides, Sorted by Behaviour

#table(
  columns: (1.1fr, 2.15fr, 2.15fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Members],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Behaviour that earns the mark],
  ),
  [basic], [Na₂O, K₂O, MgO, CaO, BaO, CuO, FeO], [react with acids to give a salt and water only; they do not react with alkalis],
  [acidic], [CO₂, SO₂, SO₃, NO₂, P₄O₁₀, SiO₂], [react with alkalis to give a salt and water; SO₂ also bleaches],
  [amphoteric], [Al₂O₃, ZnO, PbO, Cr₂O₃], [react with acid *and* with alkali — the only oxides that do],
  [neutral], [CO, NO, H₂O, N₂O], [react with neither acid nor alkali],
  [peroxide], [Na₂O₂, H₂O₂], [give hydrogen peroxide, and therefore oxygen, on treatment],
)

#shortcut-box("The amphoteric test that settles a whole question")[
  Add sodium hydroxide solution to the salt solution. A white precipitate that *dissolves in excess* means aluminium or zinc — the two amphoteric hydroxides. A white precipitate that stays means magnesium, calcium or lead. Nothing at all means the metal is in the first column of the series, because its hydroxide is soluble and never precipitates.
]

== E.3 Displacement, in One Sentence

A more reactive metal displaces a less reactive one from a solution of its salt; the less reactive metal cannot displace the more reactive one; and the pattern of displacement is exactly the reactivity series read downwards.

#table(
  columns: (1.55fr, 1.35fr, 1.5fr, 1.25fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Metal added],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[To a solution of],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Observation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
  ),
  [zinc], [copper(II) sulphate], [blue fades; red-brown copper deposits], [Zn + CuSO₄ → ZnSO₄ + Cu],
  [iron], [copper(II) sulphate], [blue fades; pink copper deposits], [Fe + CuSO₄ → FeSO₄ + Cu],
  [copper], [silver nitrate], [silvery crystals form; solution turns blue], [Cu + 2AgNO₃ → Cu(NO₃)₂ + 2Ag],
  [copper], [zinc sulphate], [no reaction: copper is below zinc], [—],
  [silver], [copper(II) sulphate], [no reaction], [—],
  [chlorine], [potassium bromide], [solution turns orange], [Cl₂ + 2KBr → 2KCl + Br₂],
  [bromine], [potassium iodide], [solution turns brown], [Br₂ + 2KI → 2KBr + I₂],
  [iodine], [potassium chloride], [no reaction], [—],
)

== E.4 The Ten Precipitates Worth Knowing

#table(
  columns: (1.15fr, 1.6fr, 1.35fr, 1.6fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Precipitate],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Made from],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Colour],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Solubility that identifies it],
  ),
  [AgCl], [Ag⁺ and Cl⁻], [white], [dissolves easily in ammonia],
  [AgBr], [Ag⁺ and Br⁻], [cream], [dissolves only in concentrated ammonia],
  [AgI], [Ag⁺ and I⁻], [yellow], [insoluble in ammonia],
  [BaSO₄], [Ba²⁺ and SO₄²⁻], [white], [insoluble in dilute hydrochloric acid],
  [CaCO₃], [Ca²⁺ and CO₃²⁻], [white], [dissolves with effervescence in acid],
  [PbI₂], [Pb²⁺ and I⁻], [yellow], [dissolves in hot water, recrystallises on cooling],
  [Cu(OH)₂], [Cu²⁺ and OH⁻], [pale blue], [insoluble in excess sodium hydroxide],
  [Fe(OH)₂], [Fe²⁺ and OH⁻], [dirty green], [oxidises to red-brown in air],
  [Fe(OH)₃], [Fe³⁺ and OH⁻], [red-brown], [insoluble in excess],
  [Al(OH)₃], [Al³⁺ and OH⁻], [white], [dissolves in excess to give a clear solution],
)

== E.5 The Gases: Preparation, Drying and Collection

#table(
  columns: (0.95fr, 1.6fr, 1.2fr, 1.15fr, 1.2fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Gas],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Laboratory preparation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Dried with],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Collected by],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why],
  ),
  [H₂], [Zn + dilute HCl], [CaO or conc. H₂SO₄], [upward delivery or over water], [lighter than air; insoluble],
  [O₂], [H₂O₂ + MnO₂], [conc. H₂SO₄], [over water], [slightly soluble; denser than air],
  [CO₂], [CaCO₃ + dilute HCl], [conc. H₂SO₄], [downward delivery], [denser than air; soluble],
  [SO₂], [Na₂SO₃ + dilute HCl], [conc. H₂SO₄], [downward delivery], [denser than air; very soluble],
  [NH₃], [NH₄Cl + Ca(OH)₂, warmed], [CaO], [upward delivery], [lighter than air; extremely soluble],
  [Cl₂], [MnO₂ + conc. HCl, warmed], [conc. H₂SO₄], [downward delivery], [denser than air; soluble],
  [HCl], [NaCl + conc. H₂SO₄], [conc. H₂SO₄], [upward delivery], [denser than air; extremely soluble],
  [NO], [Cu + dilute HNO₃], [—], [over water only], [reacts at once with air],
  [NO₂], [Cu + conc. HNO₃], [—], [downward delivery], [denser than air; reacts with water],
)

#trap-box("Why ammonia is dried with calcium oxide")[
  Ammonia is a base. Concentrated sulphuric acid would neutralise it to ammonium sulphate and calcium chloride would form a complex with it, so neither of the two common drying agents can be used. Calcium oxide is itself basic, so it removes water without touching the ammonia. An examiner who offers you “dried with concentrated sulphuric acid” is testing exactly this point.
]

== E.6 Six Reactions That Are Always Worth a Mark

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #set par(leading: 0.72em)
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[THE EQUATIONS THAT COME UP EVERY YEAR]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 9.1pt)[
    + *The thermite reaction:* $"2Al" + "Fe"_2 "O"_3 -> "Al"_2 "O"_3 + "2Fe"$, so hot that the iron runs out as a liquid.
    + *The blast furnace:* $"Fe"_2 "O"_3 + "3CO" -> "2Fe" + "3CO"_2$, with the carbon monoxide made at the tuyères.
    + *The Contact process:* $"2SO"_2 + "O"_2 <=> "2SO"_3$ over V₂O₅ at 450 °C.
    + *The Haber process:* $"N"_2 + "3H"_2 <=> "2NH"_3$ over iron at 450 °C and 200 atm.
    + *Chlorine in cold alkali:* $"Cl"_2 + "2NaOH" -> "NaCl" + "NaClO" + "H"_2 "O"$, a disproportionation.
    + *The limewater test:* $"CO"_2 + "Ca(OH)"_2 -> "CaCO"_3 + "H"_2 "O"$, and the milkiness clears in excess gas.
  ]
]

#concept-box("How to revise from a map")[
  A list is revised by reading it again; a map is revised by *walking it*. Take an empty sheet and write iron in the middle. Then draw every arrow you can: iron to iron(II) chloride with acid, iron to iron(II) sulphate by displacement, iron to Fe₃O₄ with steam, iron to rust with air and water, iron to steel in the converter. Whatever arrow you cannot draw is the section you reread tonight. Doing this for six metals covers the whole of this volume faster than rereading the six chapters.
]
