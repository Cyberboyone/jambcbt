#import "template.typ": *

#current-chapter.update("Chapter 1: Acids, Bases and Salts")
#pagebreak()

#chapter-opener(
  1,
  "Acids, Bases and Salts",
  subtitle: "Arrhenius and Brønsted–Lowry Definitions, Strong and Weak Acids, the pH Scale, Indicators and Titration, Salt Preparation, Solubility Rules and the Hydrolysis of Salts",
  syllabus-ref: "Sec. B • Topic 1",
  utme-weight: "5 Qs every year",
)

#focus-radar(
  objectives: (
    "Define an acid and a base by the Arrhenius and Brønsted–Lowry definitions, and name the conjugate pair.",
    "Distinguish a strong acid from a concentrated one, and a weak acid from a dilute one.",
    "Calculate the pH of a strong acid and of a strong base, and convert between pH, pOH and [H⁺].",
    "Choose an indicator from the shape of a titration curve.",
    "Calculate the concentration of an acid or base from titration data, using the mole ratio.",
    "Prepare a soluble salt, an insoluble salt and a salt by direct combination.",
    "State the solubility rules and write the formula of a salt from the charges.",
    "Explain why a solution of a salt may be acidic, basic or neutral (hydrolysis).",
  ),
  hotspots: (
    "\\\"The pH of 0.01 M HCl is …\\\" — the answer is 2, because a strong acid ionises completely. The same concentration of ethanoic acid gives about 3.4.",
    "\\\"Which indicator for a weak acid and a strong base?\\\" — phenolphthalein, because the equivalence point is above pH 7.",
    "\\\"25 cm³ of 0.1 M NaOH neutralised 20 cm³ of H₂SO₄ …\\\" — the ratio is 2 : 1 in the *base*, so the answer is 0.0625 M, not 0.125 M.",
    "\\\"A salt that dissolves to give a basic solution\\\" — sodium carbonate or sodium ethanoate, because the anion hydrolyses.",
    "\\\"The gas evolved when dilute acid is added to a carbonate\\\" — carbon dioxide, which turns limewater milky.",
  ),
  trap-summary: "Three slips cost the marks in this chapter. (1) Calling a weak acid *dilute*: strength is the degree of ionisation and never changes with concentration, so 0.001 M HCl is still a strong acid even though its pH is 3. (2) Forgetting the mole ratio in a titration: sodium hydroxide and sulphuric acid react 2 : 1, and the candidate who assumes 1 : 1 doubles the answer. (3) Writing that a salt solution is neutral because it is a salt: sodium carbonate is strongly basic, ammonium chloride is acidic, and the reason is always *which ion hydrolyses*.",
)

// ============================================================================
// SECTION 1.1
// ============================================================================
== 1.1 What an Acid and a Base Are

The syllabus defines acids and bases twice, and the examination uses both definitions. The first names the ion; the second names the proton.

#table(
  columns: (1.15fr, 2.15fr, 2.15fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Definition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Acid],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Base],
  ),

  [*Arrhenius* (in water)], [a substance that produces hydrogen ions, $op("H")^+$, when dissolved in water], [a substance that produces hydroxide ions, $op("OH")^-$, when dissolved in water],
  [*Brønsted–Lowry* (proton)], [a proton (H⁺) donor], [a proton (H⁺) acceptor],
  [*Lewis* (electron pair)], [an electron-pair acceptor], [an electron-pair donor],
)

The Brønsted–Lowry definition is the one that explains everything in this volume, because it works without water. When ammonia gas meets hydrogen chloride gas, white ammonium chloride fume forms with no water present at all: the HCl molecule donates its proton and the NH₃ molecule accepts it.

#formula-box("The conjugate pair")[
  Every acid has a *conjugate base* — what is left after it has donated its proton. Every base has a *conjugate acid* — what it becomes after it has accepted one.

  #v(2pt)
  $underbrace("HCl + H"_2 "O", "acid  +  base") -> underbrace("H"_3 "O"^+ + "Cl"^-, "conjugate acid  +  conjugate base")$
  #v(2pt)

  The pairs are HCl / Cl⁻ and H₂O / H₃O⁺. In every conjugate pair, the acid has *one more proton* than its base. That single sentence answers half the multiple-choice questions on this topic.
]

#concept-box("Acid, base, or neither?")[
  *Acid* — hydrochloric, sulphuric, nitric, ethanoic, carbonic, phosphoric. \
  *Base* — sodium hydroxide, potassium hydroxide, ammonia, calcium oxide, sodium carbonate. \
  *Salt* — the product of an acid–base reaction: sodium chloride, copper(II) sulphate, ammonium nitrate. \
  A base that dissolves in water is called an *alkali*: all the Group I hydroxides, calcium hydroxide (sparingly) and ammonia. Every alkali is a base, but not every base is an alkali — copper(II) oxide is a base and it is insoluble.
]

#trap-box("Ammonia: base without a hydroxide")[
  Ammonia contains no hydroxide ion, yet a solution of ammonia turns red litmus blue. It is a base because it *accepts* a proton from water, leaving hydroxide behind:

  $"NH"_3 + "H"_2 "O" <=> "NH"_4^+ + "OH"^-$

  Write that equation, not “ammonia contains OH⁻”. The same argument explains why sodium carbonate solution is basic: the carbonate ion accepts a proton from water.
]

// ============================================================================
// SECTION 1.2
// ============================================================================
== 1.2 Strong and Weak, Concentrated and Dilute

*Strength* is how completely an acid ionises in water. *Concentration* is how much acid is dissolved in a given volume. They are independent, and the examiner tests the difference.

#table(
  columns: (1.35fr, 1.95fr, 1.95fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Strong acid],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Weak acid],
  ),

  [*Ionisation*], [complete — every molecule breaks up], [partial — only a small fraction breaks up, and an equilibrium is set up],
  [*Examples*], [HCl, HNO₃, H₂SO₄], [CH₃COOH, H₂CO₃, H₃PO₄, HCN],
  [*Conjugate base*], [very weak (Cl⁻ has no wish to take the proton back)], [strong enough to reverse the reaction (CH₃COO⁻ takes it back)],
  [*pH at 0.1 M*], [1.0], [about 2.9],
  [*Conductivity*], [high — many ions in solution], [low — few ions in solution],
  [*Reaction rate with magnesium*], [fast], [slow],
)

#concept-box("Four words, four meanings")[
  *Strong acid* — ionises completely. \
  *Weak acid* — ionises only partly. \
  *Concentrated* — a large amount of acid per dm³. \
  *Dilute* — a small amount of acid per dm³.

  So “concentrated weak acid” and “dilute strong acid” are both perfectly possible, and neither is a contradiction.
]

== 1.3 The pH Scale

The pH scale compresses a very wide range of hydrogen-ion concentration into the numbers 0 to 14.

#formula-box("The three equations that do the work")[
  $op("pH") = -log_10 [op("H")^+] quad "and" quad [op("H")^+] = 10^(-op("pH"))$

  $op("pH") + op("pOH") = 14 quad "(at 25 °C)"$

  $K_w = [op("H")^+][op("OH")^-] = 1 times 10^(-14) quad "(at 25 °C)"$
]

#diagram-fig("diagrams/ch01_phscale.svg",
  "The pH scale with the universal-indicator colours and seven reference points. Each whole step is a tenfold change in hydrogen-ion concentration, not a tenfold change in acidity in the everyday sense.")

A change of one pH unit is a change by a factor of ten in $[op("H")^+]$. That single fact answers most of the “how many times more acidic” questions.

#worked-example(
  1,
  "pH of a strong acid and of a strong base",
  tier: "FOUNDATION",
  [Calculate the pH of (a) 0.010 M hydrochloric acid, (b) 0.010 M sodium hydroxide, (c) 0.0050 M sulphuric acid, assuming complete ionisation.],
  [
    *(a)* Hydrochloric acid is monobasic, so one mole gives one mole of H⁺.

    $[op("H")^+] = 0.010 = 10^(-2) "mol dm"^(-3) quad therefore quad op("pH") = 2.00$

    *(b)* Sodium hydroxide gives one mole of OH⁻ per mole.

    $[op("OH")^-] = 0.010 = 10^(-2) quad therefore quad op("pOH") = 2.00 quad therefore quad op("pH") = 14 - 2 = 12.00$

    *(c)* Sulphuric acid is dibasic: each molecule can release *two* protons, so the hydrogen-ion concentration is twice the acid concentration.

    $[op("H")^+] = 2 times 0.0050 = 0.010 "mol dm"^(-3) quad therefore quad op("pH") = 2.00$

    The wording that earns the marks: name the number of protons the acid can release *before* you compute the pH. Sulphuric acid is the one that catches candidates out.
  ],
)

#worked-example(
  2,
  "From pH back to concentration",
  tier: "UTME STANDARD",
  [A solution has pH 3.70. Calculate the hydrogen-ion concentration and the hydroxide-ion concentration, and state whether the solution is acidic, basic or neutral.],
  [
    *Reverse the logarithm.*
    $[op("H")^+] = 10^(-3.70) = 2.0 times 10^(-4) "mol dm"^(-3)$

    *Use $K_w$ for the hydroxide.*
    $[op("OH")^-] = (1 times 10^(-14)) div (2.0 times 10^(-4)) = 5.0 times 10^(-11) "mol dm"^(-3)$

    *Decide.* pH 3.70 is below 7, so the solution is acidic — as it must be, since the hydrogen-ion concentration exceeds $10^(-7)$.

    Check by pOH: $14 - 3.70 = 10.30$, and $10^(-10.30) = 5.0 times 10^(-11)$. The two routes must agree.
  ],
)

#trap-box("pH 7 is neutral only at 25 °C")[
  Neutrality means $[op("H")^+] = [op("OH")^-]$, not “pH 7”. At 25 °C that happens at pH 7 because $K_w = 10^(-14)$. At 100 °C, $K_w$ rises to about $10^(-12)$, so pure water has pH 6 — and it is still neutral. JAMB asks the 25 °C version, but a question that says “at 60 °C” is testing exactly this point.
]

#worked-example(
  3,
  "The weak acid, done properly",
  tier: "JAMB CHALLENGE",
  [Ethanoic acid has $K_a = 1.8 times 10^(-5)$ mol dm⁻³. Calculate the pH of a 0.10 M solution.],
  [
    *Set up the equilibrium.* Only a small fraction ionises, so let that fraction give $x$ mol dm⁻³ of H⁺:

    $"CH"_3 "COOH" <=> "CH"_3 "COO"^- + op("H")^+$

    *Assume $x$ is small compared with 0.10*, so that $0.10 - x approx 0.10$:

    $K_a = (x^2) div 0.10 quad therefore quad x^2 = 1.8 times 10^(-6) quad therefore quad x = 1.34 times 10^(-3)$

    $op("pH") = -log_10 (1.34 times 10^(-3)) = 2.87$

    *Comment on the comparison.* A 0.10 M strong acid has pH 1.00; the weak acid at the same concentration has pH 2.87. That is the whole meaning of “weak”: the acid is there, but most of it is still intact.
  ],
)

#shortcut-box("The pH questions, sorted by type")[
  *“pH of a strong acid”* → pH = −log(concentration × number of protons). \
  *“pH of a strong base”* → pOH = −log(concentration × number of OH⁻), then pH = 14 − pOH. \
  *“pH of a weak acid”* → $op("pH") = 1/2 (p K_a - log c)$ when the approximation holds. \
  *“How many times more acidic?”* → subtract the pH values and raise 10 to that power. \
  *“Dilute tenfold”* → add 1 to the pH.
]

// ============================================================================
// SECTION 1.4
// ============================================================================
== 1.4 Indicators and Titration

An indicator is a weak acid whose colour depends on the pH of the solution. It does not tell you the pH exactly; it tells you when the pH has passed through a narrow range.

#table(
  columns: (1.4fr, 1.2fr, 1.6fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Indicator],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Range],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Acid colour → alkali colour],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use it for],
  ),

  [*Methyl orange*], [3.1 – 4.4], [red → yellow], [strong acid + weak base],
  [*Bromothymol blue*], [6.0 – 7.6], [yellow → blue], [strong acid + strong base],
  [*Litmus*], [5.0 – 8.0], [red → blue], [qualitative tests only],
  [*Phenolphthalein*], [8.3 – 10.0], [colourless → pink], [weak acid + strong base],
)

#diagram-fig("diagrams/ch01_titration_curve.svg",
  "Titration curves for a strong acid and for a weak acid, both against sodium hydroxide. Both curves are steepest at the equivalence point; the weak acid's equivalence point lies above pH 7, which is why the indicator must change in the basic range.")

#concept-box("Choosing the indicator: one rule")[
  The indicator must change colour on the *steep part* of the curve, because that is where one drop of titrant changes the pH by several units.

  *Strong acid + strong base* — the jump runs from about pH 3 to pH 10, so any of the three main indicators will do; bromothymol blue or phenolphthalein are the usual choices. \
  *Weak acid + strong base* — the jump starts above pH 7 and the equivalence point is basic (about pH 9 for ethanoic acid), so use *phenolphthalein*. \
  *Strong acid + weak base* — the equivalence point is acidic (about pH 5), so use *methyl orange*. \
  *Weak acid + weak base* — no steep part at all, so no indicator works; the titration is not done.
]

#diagram-fig("diagrams/ch01_titration.svg",
  "The titration apparatus. Cooling is not involved: what matters is reading the burette at the bottom of the meniscus, at eye level, and taking two concordant titres.")

#worked-example(
  4,
  "A titration calculation with a 2 : 1 ratio",
  tier: "UTME STANDARD",
  [25.0 cm³ of 0.100 M sodium hydroxide solution is exactly neutralised by 20.0 cm³ of dilute sulphuric acid. Calculate the concentration of the acid in mol dm⁻³.],
  [
    *Write the equation and the ratio.*
    $"H"_2 "SO"_4 + 2"NaOH" -> "Na"_2 "SO"_4 + 2"H"_2 "O"$

    One mole of acid reacts with two moles of sodium hydroxide, so $n_a div n_b = 1 div 2$.

    *Moles of base.*
    $n_b = c V = 0.100 times 25.0 div 1000 = 2.50 times 10^(-3) "mol"$

    *Moles of acid, from the ratio.*
    $n_a = n_b div 2 = 1.25 times 10^(-3) "mol"$

    *Concentration.*
    $c_a = n_a div V_a = 1.25 times 10^(-3) div 0.0200 = 0.0625 "mol dm"^(-3)$

    *The one-line version* used by candidates who are confident:
    $c_a = (c_b V_b n_a) div (V_a n_b) = (0.100 times 25.0 times 1) div (20.0 times 2) = 0.0625$
    — and note the $div 2$, which is the step that most candidates lose.
  ],
)

#trap-box("cm³ are not dm³")[
  Thirty per cent of the wrong answers in a titration question come from leaving the volume in cm³. Convert *before* you divide: $25.0 "cm"^3 = 0.0250 "dm"^3$. In the $c_1 V_1$ form of the calculation the units cancel, which is why it is the safer formula under examination pressure.

  $c_1 V_1 div n_1 = c_2 V_2 div n_2$ — volumes in any *consistent* unit, concentrations in mol dm⁻³.
]

// ============================================================================
// SECTION 1.5
// ============================================================================
== 1.5 Salts and How to Prepare Them

A *salt* is the compound formed when the hydrogen of an acid is replaced by a metal or by the ammonium ion. Every salt has a name made of two parts: the *cation* first, then the *anion* with its ending changed.

#table(
  columns: (1.5fr, 1.3fr, 2.0fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Acid],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Anion],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Name of a salt made from it],
  ),

  [hydrochloric], [Cl⁻ chloride], [sodium chloride, ammonium chloride],
  [sulphuric], [$"SO"_4^(2-)$ sulphate], [copper(II) sulphate, zinc sulphate],
  [nitric], [$"NO"_3^-$ nitrate], [potassium nitrate, lead(II) nitrate],
  [ethanoic], [$"CH"_3"COO"^-$ ethanoate], [sodium ethanoate],
  [carbonic], [$"CO"_3^(2-)$ carbonate], [calcium carbonate, sodium carbonate],
  [phosphoric], [$"PO"_4^(3-)$ phosphate], [calcium phosphate],
)

The route depends on whether the salt is soluble in water and on what the starting materials are. There are exactly three, and the examination names the salt and asks which route you would use.

#table(
  columns: (1.35fr, 2.05fr, 2.0fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Route],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use it for],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method in one line],
  ),

  [*Acid + excess insoluble base or carbonate*], [a soluble salt whose metal is not Na, K or NH₄ — e.g. copper(II) sulphate], [add the solid to warm acid until no more dissolves, filter off the excess, evaporate to the point of crystallisation, cool, filter and dry],
  [*Titration*], [a soluble salt of Na, K or NH₄ — e.g. sodium chloride], [titre the acid against the base to find the exact volume, then repeat with both solutions *without* indicator and evaporate],
  [*Precipitation*], [an insoluble salt — e.g. barium sulphate, silver chloride, lead(II) iodide], [mix two solutions that contain the required ions, filter, wash with distilled water and dry],
)

#concept-box("The precipitation reactions you must recognise")[
  $"AgNO"_3 "(aq)" + "NaCl" "(aq)" -> "AgCl" "(s)" + "NaNO"_3 "(aq)"$ — white precipitate. \
  $"BaCl"_2 "(aq)" + "Na"_2 "SO"_4 "(aq)" -> "BaSO"_4 "(s)" + 2"NaCl" "(aq)"$ — white precipitate. \
  $"Pb"("NO"_3)_2 "(aq)" + 2"KI" "(aq)" -> "PbI"_2 "(s)" + 2"KNO"_3 "(aq)"$ — yellow precipitate.

  Each one is a *double decomposition*: the ions swap partners, and the precipitate is the pair that cannot stay in solution. In an ionic equation only the ions that change are written.
]

#trap-box("Direct combination is a fourth route, and it is the answer for one salt")[
  A few salts cannot be made from an acid because no acid contains the right anion or because the metal reacts violently with water. *Ammonium chloride* in the laboratory is made by direct combination:

  $"NH"_3 "(g)" + "HCl" "(g)" -> "NH"_4 "Cl" "(s)"$

  — the white fume seen when the two gases meet. *Iron(II) chloride* is made by passing dry chlorine over heated iron, because iron(II) would be oxidised to iron(III) in aqueous acid.

  If a question says “by direct combination”, it means the elements or the two gases, not a solution.
]

== 1.6 Solubility Rules

You cannot choose a route without knowing whether the salt dissolves. These six rules cover every salt in the syllabus.

#table(
  columns: (1.55fr, 3.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Class of salt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Solubility in water],
  ),

  [All sodium, potassium and ammonium salts], [soluble — no exceptions],
  [All nitrates], [soluble — no exceptions],
  [Chlorides], [soluble, *except* silver chloride and lead(II) chloride],
  [Sulphates], [soluble, *except* barium sulphate and lead(II) sulphate; calcium sulphate is slightly soluble],
  [Carbonates], [insoluble, *except* those of sodium, potassium and ammonium],
  [Hydroxides], [insoluble, *except* sodium, potassium and ammonium hydroxides; calcium hydroxide is slightly soluble and barium hydroxide is soluble],
)

#shortcut-box("Reading a solubility question")[
  “Which pair gives a precipitate?” — look for one insoluble combination. \
  “Which salt can be made by precipitation?” — the one in the *insoluble* list. \
  “Which salt cannot be made by adding the metal to acid?” — a salt of a metal that reacts with water (Na, K) or a salt whose acid does not exist as a stable solution (carbonates). \
  “Which salt is prepared by titration?” — the sodium, potassium or ammonium salt of a soluble acid.
]

#worked-example(
  5,
  "Which route, and why",
  tier: "UTME STANDARD",
  [Describe how you would prepare pure, dry crystals of (a) copper(II) sulphate, (b) barium sulphate, (c) sodium chloride.],
  [
    *(a) Copper(II) sulphate — soluble salt of an insoluble base.* Warm dilute sulphuric acid, add copper(II) oxide a little at a time until no more dissolves, filter off the excess oxide, evaporate the filtrate to the point of crystallisation, cool to crystallise, filter, wash and dry between filter papers.

    *(b) Barium sulphate — insoluble salt, so precipitation.* Mix barium chloride solution with sodium sulphate solution; a white precipitate forms at once. Filter, wash the residue with distilled water to remove the sodium chloride, and dry.

    *(c) Sodium chloride — soluble salt of a soluble base.* Titrate hydrochloric acid against sodium hydroxide using phenolphthalein to find the exact volume, then repeat the mixing with the calculated volumes *without* indicator and evaporate the solution to crystallisation. If indicator were left in, the crystals would be contaminated.

    The examiner's mark in each part is the *reason* for the route, not the description. Say “copper(II) oxide is insoluble, so excess can be filtered off” and the mark is secured.
  ],
)

== 1.7 Water of Crystallisation

Many salts crystallise with water built into the crystal lattice. The water is written after a dot and is called the *water of crystallisation*.

#formula-box("Hydrated and anhydrous")[
  $"CuSO"_4$·$5"H"_2 "O"$ — blue hydrated copper(II) sulphate crystals \
  $"CuSO"_4$ — white anhydrous copper(II) sulphate powder \
  $"Na"_2 "CO"_3$·$10"H"_2 "O"$, $"MgSO"_4$·$7"H"_2 "O"$, $"CaSO"_4$·$2"H"_2 "O"$ (gypsum)

  Heating drives the water off and the colour changes: the hydrated salt is *efflorescent*. Adding water to the anhydrous salt reverses it and releases heat — the test for water.
]

#worked-example(
  6,
  "Finding the formula from the masses",
  tier: "JAMB CHALLENGE",
  [2.50 g of hydrated copper(II) sulphate, $op("CuSO")_4$·$x op("H")_2 op("O")$, is heated to constant mass. The anhydrous salt left weighs 1.60 g. Find $x$.],
  [
    *Mass of water driven off.*
    $2.50 - 1.60 = 0.90 "g"$

    *Moles of anhydrous salt.*
    $n = 1.60 div 160 = 0.0100 "mol"$

    *Moles of water.*
    $n = 0.90 div 18 = 0.0500 "mol"$

    *Ratio.*
    $x = 0.0500 div 0.0100 = 5$

    The salt is $op("CuSO")_4$·$5 op("H")_2 op("O")$ — and the colour change from blue to white on heating, and back to blue on adding water, is the confirmation the examiner expects you to mention.
  ],
)

// ============================================================================
// SECTION 1.8 — HYDROLYSIS
// ============================================================================
== 1.8 Why a Salt Solution Is Not Always Neutral

A salt solution contains four ions — the cation of the base and the anion of the acid — and one of them may react with water. That reaction is called *hydrolysis*, and it decides the pH.

#table(
  columns: (1.45fr, 1.5fr, 1.6fr, 0.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Salt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Made from],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Which ion hydrolyses, and how],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[pH],
  ),

  [NaCl], [strong acid + strong base], [neither — both ions are spectators], [7],
  [$"NH"_4 "Cl"$], [strong acid + weak base], [$"NH"_4^+$ donates a proton to water, leaving H₃O⁺], [< 7],
  [$"CH"_3 "COONa"$], [weak acid + strong base], [$"CH"_3 "COO"^-$ accepts a proton from water, leaving OH⁻], [> 7],
  [$"Na"_2 "CO"_3$], [weak acid + strong base], [$"CO"_3^(2-)$ accepts a proton, leaving OH⁻], [> 7],
  [$"NH"_4 "CH"_3 "COO"$], [weak acid + weak base], [both hydrolyse, roughly equally], [≈ 7],
)

#concept-box("The rule in one line")[
  *Strong + strong → neutral. Strong acid + weak base → acidic. Weak acid + strong base → basic.*

  The reasons are always the same two equations:
  $"NH"_4^+ + "H"_2 "O" <=> "NH"_3 + "H"_3 "O"^+$ — the solution turns acidic because H₃O⁺ is produced. \
  $"CH"_3 "COO"^- + "H"_2 "O" <=> "CH"_3 "COOH" + "OH"^-$ — the solution turns basic because OH⁻ is produced.
]

#trap-box("“It is a salt, so it is neutral”")[
  This is the most expensive sentence in the chapter. Sodium carbonate solution is *strongly* basic (pH about 11 for 0.1 M), and ammonium chloride solution is acidic (pH about 5). Only salts of a strong acid with a strong base are neutral, and only because neither ion reacts with water at all.
]

#concept-box("Buffer, in one paragraph")[
  A *buffer* is a solution that resists a change in pH when a little acid or alkali is added. It is made from a weak acid and its salt (ethanoic acid and sodium ethanoate), or a weak base and its salt (ammonia and ammonium chloride). The weak acid mops up added OH⁻; its conjugate base mops up added H⁺. Blood is buffered at pH 7.4, and the titration curve of a weak acid has a flat buffer region before the steep part.
]

// ============================================================================
// SECTION 1.9 — CHECKLIST
// ============================================================================
== 1.9 Chapter 1 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + define an acid and a base by both the Arrhenius and the Brønsted–Lowry definitions;
  + name the conjugate base of a given acid;
  + distinguish strong from concentrated, and weak from dilute;
  + calculate the pH of a strong acid, a strong base and a weak acid;
  + convert between pH, pOH and hydrogen-ion concentration;
  + state the range and colours of the four common indicators;
  + choose an indicator from the type of titration;
  + calculate a concentration from titration data, including a 2 : 1 ratio;
  + name the three routes to a salt and say which salt each route suits;
  + state the solubility rules and predict a precipitate;
  + calculate the water of crystallisation from masses;
  + explain why a named salt solution is acidic, basic or neutral.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    An acid is a proton donor and a base is a proton acceptor; in water the acid gives H⁺ and the base gives OH⁻. A strong acid ionises completely and a weak one only partly, and that is a different question from whether the solution is concentrated. pH is the negative logarithm of the hydrogen-ion concentration, one unit is a factor of ten, and pH + pOH = 14 at 25 °C. A titration is calculated from the mole ratio, not from the volumes alone, and the indicator must change on the steep part of the curve: phenolphthalein for a weak acid against a strong base, methyl orange for the reverse. A salt is prepared by adding an excess of an insoluble base to an acid, by titration when both reagents are soluble, or by precipitation when the salt is insoluble; and the solution it gives may be acidic, basic or neutral according to which of its ions hydrolyses — ammonium salts acidic, carbonates and ethanoates basic, sodium chloride neutral.
  ]
]

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: definitions, pH, titration and salts.", width: 100%)

// ============================================================================
// SECTION 1.10 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 1.10 Chapter 1 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [The pH of a 0.001 M solution of a strong monobasic acid is], [1], [3], [11], [0.001])
#mcq(2, [Which indicator is most suitable for a titration of ethanoic acid with sodium hydroxide?], [methyl orange], [phenolphthalein], [litmus], [universal indicator])
#mcq(3, [25.0 cm³ of 0.100 M NaOH neutralises 20.0 cm³ of sulphuric acid. The concentration of the acid is], [0.125 M], [0.0625 M], [0.250 M], [0.0800 M])
#mcq(4, [An aqueous solution of ammonium chloride is], [neutral], [acidic], [basic], [amphoteric])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [a strong monobasic acid ionises completely, so $[op("H")^+] = 10^(-3)$ and $op("pH") = 3$.]),
  ("B", [the salt of a weak acid and a strong base hydrolyses to give a basic solution, so the equivalence point is above pH 7 and phenolphthalein (8.3–10.0) is the correct indicator.]),
  ("B", [$"H"_2 "SO"_4 + 2"NaOH" -> "Na"_2 "SO"_4 + 2"H"_2 "O"$, so $c_a = (0.100 times 25.0 times 1) div (20.0 times 2) = 0.0625$ M.]),
  ("B", [the ammonium ion donates a proton to water, producing $op("H")_3 op("O")^+$, so the solution is acidic — about pH 5.]),
))

#include "drill_ch01.typ"
