#import "template.typ": *

#current-chapter.update("Chapter 5: Sulphur and the Halogens")
#pagebreak()

#chapter-opener(
  5,
  "Sulphur and the Halogens",
  subtitle: "Allotropes and Uses of Sulphur, Sulphur(IV) Oxide, the Contact Process and Sulphuric Acid, the Physical and Chemical Trends of Group 17, Disproportionation and the Identification of Halides",
  syllabus-ref: "Sec. C • Topic 5",
  utme-weight: "4 Qs every year",
)

#focus-radar(
  objectives: (
    "Describe the occurrence, allotropes and uses of sulphur, and the Frasch process for its extraction.",
    "Describe the preparation and properties of sulphur(IV) oxide, including its behaviour as a reducing and bleaching agent.",
    "Write the equations of the Contact process, with the catalyst and the conditions, and explain why sulphur trioxide is not absorbed in water.",
    "Describe the properties and uses of dilute, concentrated and hot concentrated sulphuric acid.",
    "Describe the trend in physical properties and reactivity down Group 17, and explain it in terms of atomic size and shielding.",
    "Write equations for the reaction of chlorine with water and with cold and hot alkali, and explain disproportionation.",
    "Predict the outcome of a halogen displacement, and identify a halide from its silver salt.",
  ),
  hotspots: (
    "“The catalyst in the Contact process is …” — vanadium(V) oxide, V₂O₅, at 450 °C and 1–2 atm.",
    "“Sulphur trioxide is absorbed in …” — 98 % sulphuric acid, not water, because the mist of acid formed in water is impossible to collect.",
    "“Chlorine water is added to potassium bromide; the colour is …” — orange, from the bromine displaced.",
    "“A cream precipitate soluble in concentrated ammonia is …” — silver bromide, AgBr.",
    "“The reaction of chlorine with cold dilute sodium hydroxide gives …” — sodium chloride and sodium chlorate(I).",
    "“The bleaching action of sulphur(IV) oxide is …” — by reduction, and it is temporary.",
  ),
  trap-summary: "Three slips. (1) Writing “SO₃ + H₂O → H₂SO₄” as the absorption step: in the Contact process the absorption is in concentrated acid, and the water addition comes later, when the oleum is diluted. (2) Mixing up the two chlorine–alkali reactions: cold *dilute* alkali gives chlorate(I); hot *concentrated* alkali gives chlorate(V). (3) Assuming that the silver halides are all soluble in ammonia: silver chloride dissolves in dilute ammonia, silver bromide only in concentrated ammonia, and silver iodide not at all.",
)

// ============================================================================
== 5.1 Sulphur

Sulphur occurs free in volcanic regions and combined as sulphides — iron pyrites, FeS₂; galena, PbS; zinc blende, ZnS — and as sulphates, of which gypsum, CaSO₄·2H₂O, is the commonest. It is a yellow, brittle, non-metallic solid that does not conduct electricity and is insoluble in water.

In the *Frasch process* sulphur is melted underground. Three concentric pipes are driven into the deposit: superheated water at about 165 °C is forced down the outer pipe and melts the sulphur; compressed air is forced down the inner pipe, and the froth of molten sulphur and air is pushed up the middle pipe to the surface. The sulphur that emerges is about 99.5 % pure.

#table(
  columns: (1.35fr, 1.55fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Allotrope],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formed below or above 96 °C],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Structure],
  ),

  [rhombic sulphur], [below 96 °C; the stable form at room temperature], [S₈ rings packed in a rhombic lattice; yellow crystals],
  [monoclinic sulphur], [above 96 °C; stable only when hot], [the same S₈ rings in a different lattice; long needle crystals],
  [plastic sulphur], [by pouring molten sulphur into cold water], [long chains, stretched and rubbery; unstable],
)

#concept-box("Why sulphur has allotropes")[
  An *allotrope* is one of two or more structural forms of the same element in the same physical state. Sulphur forms S₈ rings — eight atoms joined in a puckered crown — and those rings can pack in two different ways, giving rhombic and monoclinic sulphur. Both melt to the same liquid and both burn to the same sulphur dioxide; only the arrangement differs. Carbon (diamond and graphite) and phosphorus (white and red) are the other two the syllabus expects.
]

// ============================================================================
== 5.2 Sulphur(IV) Oxide

Sulphur burns in air with a blue flame to give sulphur(IV) oxide, SO₂, a colourless, pungent gas that is denser than air and very soluble in water, giving *sulphurous acid*.

$op("S") + op("O")_2 -> op("SO")_2$

#table(
  columns: (1.45fr, 2.15fr, 1.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Evidence],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Consequence],
  ),

  [acidic oxide], [$op("SO")_2 + op("H")_2 op("O") -> op("H")_2 op("SO")_3$], [turns damp blue litmus red],
  [reducing agent], [decolourises acidified KMnO₄ and K₂Cr₂O₇], [used to test for SO₂ and to preserve wine],
  [bleaching by reduction], [bleaches damp litmus, and the colour returns on warming], [temporary, unlike chlorine bleaching],
  [reducing in the Contact process], [$2 op("SO")_2 + op("O")_2 -> 2 op("SO")_3$], [the oxidation that makes sulphuric acid],
)

#trap-box("Two bleaches, two mechanisms")[
  Chlorine bleaches by *oxidation*: it destroys the coloured chromophore permanently. Sulphur(IV) oxide bleaches by *reduction*: it converts the coloured compound into a colourless one that can be oxidised back by the air, which is why a sulphur-bleached straw hat yellows again in sunlight. The examination asks which bleach is permanent, and the answer is chlorine.
]

// ============================================================================
== 5.3 Sulphuric Acid and the Contact Process

Sulphuric acid is the most manufactured chemical in the world, and almost all of it is made by the Contact process: sulphur is burnt to sulphur(IV) oxide, the oxide is oxidised to sulphur(VI) oxide over a vanadium(V) oxide catalyst, and the trioxide is absorbed in concentrated acid.

#diagram-fig("diagrams/ch05_contact.svg",
  "The Contact process in five stages. The reversible oxidation in the converter is the step that fixes the conditions; everything before it prepares a clean gas stream, and everything after it collects the product without losing it as a mist.", width: 100%)

#formula-box("The three equations of the Contact process")[
  $"S" + "O"_2 -> "SO"_2 quad "(burn the sulphur in dry air)"$
  #v(3pt)
  $"2SO"_2 + "O"_2 <=> 2 "SO"_3$
  #v(-4pt)
  #align(center)[#text(size: 9pt, fill: jamb-slate)[over V₂O₅ at 450 °C and 1–2 atm]]
  #v(3pt)
  $"SO"_3 + "H"_2 "SO"_4 -> "H"_2 "S"_2 "O"_7 quad "(oleum)"$
  #v(3pt)
  $"H"_2 "S"_2 "O"_7 + "H"_2 "O" -> 2 "H"_2 "SO"_4 quad "(diluting the oleum)"$
]

#table(
  columns: (1.3fr, 1.35fr, 2.2fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why],
  ),

  [catalyst], [vanadium(V) oxide, V₂O₅], [cheaper than platinum and not poisoned by arsenic, provided the gas is purified first],
  [temperature], [about 450 °C], [as low as gives a workable rate; the forward reaction is exothermic, so a high temperature lowers the yield],
  [pressure], [1–2 atm, only slightly above atmospheric], [three moles become two, so pressure helps the yield, but the gain is small and the plant is expensive],
  [purification], [dust and arsenic removed], [arsenic poisons the catalyst],
  [absorption], [SO₃ in 98 % H₂SO₄], [absorption in water makes a fine acid mist that cannot be collected],
)

#worked-example(
  1,
  "Sulphur to sulphuric acid",
  tier: "UTME STANDARD",
  [Calculate the mass of sulphur needed to produce 1.00 tonne of sulphuric acid, assuming the process is quantitative. $A_r$: S = 32, H = 1, O = 16.],
  [
    *Molar mass of the acid.* $M_r(op("H")_2 op("SO")_4) = 2 + 32 + 64 = 98$.

    *Moles of acid.*
    $n = 1.00 times 10^6 div 98 = 1.02 times 10^4 "mol"$

    *Mole ratio.* Each molecule of acid contains one atom of sulphur, so the moles of sulphur equal the moles of acid.

    *Mass of sulphur.*
    $m = 1.02 times 10^4 times 32 = 3.27 times 10^5 "g" = 0.327 "t"$

    *Check.* Sulphur is $32 div 98 = 32.7$ % of sulphuric acid by mass, so 1 tonne of acid needs 0.327 tonne of sulphur. The other 67 % comes from oxygen (from the air) and hydrogen (from water).
  ],
)

#concept-box("Concentrated sulphuric acid is a different chemical from dilute")[
  Dilute sulphuric acid is simply a strong acid: it provides H⁺ and reacts with metals, bases and carbonates in the ordinary way. Concentrated sulphuric acid is a *dehydrating* agent, because it has a great affinity for water, and a hot *oxidising* agent, because the sulphate ion can be reduced to sulphur dioxide. That is why sugar turns black in it, why it is used to dry gases, and why copper — which does not react with the dilute acid — dissolves in the hot concentrated acid.
]

#diagram-fig("diagrams/ch05_sulphuric.svg",
  "One acid, three jobs. Dilute sulphuric acid behaves as an ordinary strong acid; the concentrated acid dehydrates a carbohydrate to carbon; the hot concentrated acid oxidises copper, which the dilute acid cannot touch. The difference is the concentration, not the formula.", width: 96%)


// ============================================================================
== 5.4 The Halogens

The Group 17 elements — fluorine, chlorine, bromine, iodine and astatine — have seven electrons in their outer shell and need one more to complete it. They are the most reactive non-metals, and their reactivity *falls* as you go down the group, because the incoming electron is further from the nucleus and better shielded.

#diagram-fig("diagrams/ch05_halogen_strip.svg",
  "The four halogens as a colour-and-data strip. Colour deepens, density rises and melting and boiling points rise as you go down the group — the reverse of Group 1, for the same underlying reason.", width: 100%)

#diagram-fig("diagrams/ch05_halogen_bp.svg",
  "Boiling points of the halogens from real data. The molecules get bigger down the group, so the van der Waals forces between them get stronger and more energy is needed to separate them.", width: 88%)

#concept-box("Why the trend is the opposite of Group 1")[
  Down Group 1 the atom *loses* an electron, so a bigger atom loses it more easily and reactivity rises. Down Group 17 the atom *gains* an electron, so a bigger atom attracts the incoming electron less strongly and reactivity falls. The same increase in size explains both trends; only the direction of the electron transfer is reversed. That contrast is a favourite examination sentence, and it is worth writing out until it is automatic.
]

#table(
  columns: (1.2fr, 1.5fr, 1.5fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Down the group],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reason],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Exception],
  ),

  [colour], [deepens: pale yellow → green → red-brown → purple-black], [larger molecules absorb more visible light], [iodine is a solid that sublimes to a violet vapour],
  [melting and boiling point], [rise], [stronger van der Waals forces between larger molecules], [—],
  [reactivity], [falls], [the incoming electron is further from the nucleus], [fluorine reacts with almost everything],
  [oxidising power], [falls], [a smaller atom pulls electrons more strongly], [F₂ oxidises water],
  [solubility in water], [falls], [the molecules are less polarisable and less able to hydrogen-bond], [chlorine water is the usual reagent],
)

// ============================================================================
== 5.5 The Reactions of the Halogens

#table(
  columns: (1.35fr, 1.95fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Observation],
  ),

  [with a metal], [$2 op("Na") + op("Cl")_2 -> 2 op("NaCl")$], [vigorous; white solid],
  [with hydrogen], [$op("H")_2 + op("Cl")_2 -> 2 op("HCl")$], [explosive in sunlight; steady in diffuse light],
  [with water], [$op("Cl")_2 + op("H")_2 op("O") <=> op("HCl") + op("HClO")$], [pale green solution; acidic and bleaching],
  [with cold dilute alkali], [$op("Cl")_2 + 2 op("NaOH") -> op("NaCl") + op("NaClO") + op("H")_2 op("O")$], [bleach and disinfectant],
  [with hot concentrated alkali], [$3 op("Cl")_2 + 6 op("NaOH") -> 5 op("NaCl") + op("NaClO")_3 + 3 op("H")_2 op("O")$], [sodium chlorate(V) for matches],
  [displacement], [$op("Cl")_2 + 2 op("KBr") -> 2 op("KCl") + op("Br")_2$], [solution turns orange],
  [with starch], [$op("I")_2 + "starch" -> "blue-black complex"$], [the test for iodine],
)

#diagram-fig("diagrams/ch05_displacement.svg",
  "Four test tubes: the more reactive halogen takes the halide's electron and the colour of the displaced halogen appears. The last tube is the control — iodine cannot displace bromine, so nothing happens.", width: 100%)

#concept-box("Disproportionation, in one example")[
  In $op("Cl")_2 + 2 op("NaOH") -> op("NaCl") + op("NaClO") + op("H")_2 op("O")$ the chlorine starts at oxidation number 0 and finishes at −1 in the chloride and +1 in the chlorate(I). One element is simultaneously oxidised and reduced: that is *disproportionation*. The reaction with hot concentrated alkali goes further, to +5 in the chlorate(V). Both reactions are used industrially, and the examination asks you to identify the oxidation numbers rather than to memorise the names.
]

// ============================================================================
== 5.6 Identifying the Halides

#diagram-fig("diagrams/ch05_silver_halides.svg",
  "The silver nitrate test. Acidify with dilute nitric acid first, then add silver nitrate: the colour of the precipitate, and its behaviour in ammonia, identify the halide.", width: 100%)

#table(
  columns: (1.05fr, 1.35fr, 1.55fr, 1.75fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ion],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Precipitate],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[In dilute ammonia],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[In concentrated ammonia],
  ),

  [Cl⁻], [white AgCl], [dissolves], [dissolves],
  [Br⁻], [cream AgBr], [insoluble], [dissolves],
  [I⁻], [yellow AgI], [insoluble], [insoluble],
)

#shortcut-box("The three-line answer to a halide test")[
  “Add dilute nitric acid, then silver nitrate. A white precipitate soluble in dilute ammonia shows chloride; a cream precipitate soluble only in concentrated ammonia shows bromide; a yellow precipitate insoluble in ammonia shows iodide.” Learn it as those three lines and the qualitative analysis question is finished. The nitric acid is there to remove carbonate and sulphite, which would also give a white precipitate.
]

#table(
  columns: (0.95fr, 2.3fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Halogen],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why],
  ),

  [Cl₂], [water treatment, bleach, PVC, hydrochloric acid], [kills bacteria; the C–Cl bond is strong],
  [Br₂], [silver bromide in photography, flame retardants], [light decomposes AgBr to silver],
  [I₂], [antiseptic tincture, the starch test, thyroid function], [a mild oxidising agent that is safe on skin],
  [F₂], [fluoride in toothpaste; PTFE], [strengthens tooth enamel; C–F bonds resist heat and chemicals],
)

// ============================================================================
#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: the Contact process, sulphuric acid, the halogen trend and the three tests.", width: 100%)

#pagebreak()
== 5.7 Chapter 5 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + describe the Frasch process and the two allotropes of sulphur;
  + write the equation for the burning of sulphur and the preparation of SO₂ from a sulphite;
  + explain why SO₂ bleaches by reduction and chlorine by oxidation;
  + write the three Contact process equations with their conditions;
  + explain why SO₃ is absorbed in concentrated acid rather than water;
  + describe the action of dilute, concentrated and hot concentrated sulphuric acid on metals and on sugar;
  + give the physical trend down Group 17 and explain it;
  + write the reactions of chlorine with water, cold dilute alkali and hot concentrated alkali;
  + explain disproportionation with oxidation numbers;
  + predict the result of any halogen displacement;
  + identify Cl⁻, Br⁻ and I⁻ with silver nitrate and ammonia.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Sulphur is a yellow solid that occurs free and as sulphides, is melted underground by steam in the Frasch process, and burns to sulphur dioxide — an acidic, reducing gas that bleaches by reduction. Oxidise that dioxide over vanadium(V) oxide at 450 °C and 1–2 atm, absorb the trioxide in 98 % acid, and you have sulphuric acid, the most manufactured chemical in the world, whose concentrated form is a dehydrating and oxidising agent quite unlike the dilute acid. The halogens are the mirror image of Group 1: colour deepens, density and boiling point rise, and reactivity falls as the atoms grow, because the incoming electron is further from the nucleus. Chlorine disproportionates in water and in alkali, displaces bromine and iodine from their salts, and gives three silver salts — white, cream and yellow — whose solubility in ammonia is the standard identification of the halide ion.
  ]
]

== 5.8 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [The catalyst used in the Contact process is], [iron], [vanadium(V) oxide], [platinum], [manganese(IV) oxide])
#mcq(2, [Chlorine water is added to potassium bromide solution. The colour observed is], [pale yellow], [orange], [purple], [colourless])
#mcq(3, [A yellow precipitate insoluble in ammonia is formed when silver nitrate is added to a solution containing], [chloride ions], [bromide ions], [iodide ions], [sulphate ions])
#mcq(4, [The bleaching action of sulphur(IV) oxide is due to], [oxidation], [reduction], [hydrolysis], [neutralisation])

#answer-key-grid(("B", "B", "C", "B"))

#answer-notes((
  ("B", [vanadium(V) oxide catalyses the oxidation of SO₂ to SO₃ at about 450 °C; iron belongs to the Haber process and platinum to Ostwald.]),
  ("B", [chlorine is above bromine, so it displaces it and the solution turns orange from the bromine formed.]),
  ("C", [silver iodide is the yellow precipitate, and it does not dissolve in ammonia; the chloride is white and the bromide cream.]),
  ("B", [SO₂ reduces the coloured compound to a colourless one; the colour returns on exposure to air, which is why the bleach is temporary.]),
))

#concept-box("Carry this into Chapter 6")[
  You have now met every reaction the industries of the next chapter are built on: the reduction of an ore, the oxidation of sulphur dioxide, the fixation of nitrogen, the electrolysis of alumina. Chapter 6 does not introduce new chemistry — it shows where that chemistry is used in Nigeria, what it costs the environment, and how the waste is managed.
]

#include "drill_ch05.typ"
