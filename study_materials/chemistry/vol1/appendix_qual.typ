#import "template.typ": *

#current-chapter.update("Appendix E: Qualitative Analysis and Gas Tests")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: Qualitative Analysis and Gas Tests]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Qualitative Analysis and Gas Tests]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every test the examiner can ask for, in the order you would actually carry them out. Learn the tables as shapes rather than sentences: white precipitate soluble in excess, green precipitate insoluble — each has a single answer.]
]

#v(4pt)

== E.1 Flame Tests

#table(
  columns: (1.2fr, 1.4fr, 1.2fr, 1.4fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ion],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Flame colour],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ion],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Flame colour],
  ),
  [Na⁺], [golden yellow], [Ca²⁺], [brick red],
  [K⁺], [lilac (pale purple)], [Ba²⁺], [apple green],
  [Li⁺], [crimson red], [Cu²⁺], [blue-green],
)

#shortcut-box("How to read a flame test")[
  Sodium's yellow is so intense that it masks every other colour. If a flame looks yellow, the answer is sodium unless a cobalt-blue glass shows lilac underneath — the standard trick for spotting potassium in a mixture.
]

== E.2 Tests with Sodium Hydroxide Solution

#table(
  columns: (1fr, 1.75fr, 1.4fr, 1.4fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ion],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Precipitate with NaOH],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[In excess NaOH],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[In excess NH₃],
  ),
  [NH₄⁺], [none; ammonia gas on warming], [—], [—],
  [Cu²⁺], [pale blue], [insoluble], [dissolves to a deep blue solution],
  [Fe²⁺], [dirty green], [insoluble], [insoluble],
  [Fe³⁺], [reddish brown], [insoluble], [insoluble],
  [Zn²⁺], [white], [soluble], [soluble],
  [Al³⁺], [white], [soluble], [insoluble],
  [Pb²⁺], [white], [soluble], [insoluble],
  [Ca²⁺], [white], [insoluble], [insoluble],
  [Mg²⁺], [white], [insoluble], [insoluble],
)

#concept-box("The three white precipitates, told apart in one line each")[
  *Zinc* dissolves in excess of *both* NaOH and ammonia. \
  *Aluminium* dissolves in excess NaOH but *not* in excess ammonia. \
  *Calcium* and *magnesium* dissolve in neither — and are separated by the flame test (Ca brick red, Mg no colour).
]

== E.3 Tests for Anions

#table(
  columns: (1fr, 1.5fr, 1.5fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ion],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reagent],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Observation],
  ),
  [CO₃²⁻], [dilute acid], [effervescence; the gas turns limewater milky],
  [HCO₃⁻], [dilute acid], [effervescence as above, but on gentle warming only],
  [SO₄²⁻], [BaCl₂ solution acidified with dilute HCl], [white precipitate, insoluble in the acid],
  [SO₃²⁻], [BaCl₂ solution then dilute HCl], [white precipitate that *dissolves* in the acid],
  [Cl⁻], [AgNO₃ solution acidified with dilute HNO₃], [white precipitate, soluble in ammonia solution],
  [Br⁻], [AgNO₃ solution acidified with dilute HNO₃], [cream precipitate, soluble in concentrated ammonia],
  [I⁻], [AgNO₃ solution acidified with dilute HNO₃], [yellow precipitate, insoluble in ammonia],
  [NO₃⁻], [iron(II) sulphate and concentrated H₂SO₄], [a brown ring forms where the liquids meet],
)

== E.4 Gas Tests

#table(
  columns: (1.2fr, 2.7fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Gas],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Test and result],
  ),
  [oxygen], [relights a glowing splint],
  [hydrogen], [burns with a squeaky “pop” when a lighted splint is applied],
  [carbon dioxide], [turns limewater milky; the milkiness clears on passing excess gas],
  [ammonia], [turns damp red litmus paper blue; pungent smell],
  [chlorine], [bleaches damp litmus paper; greenish-yellow colour],
  [sulphur dioxide], [decolourises acidified potassium manganate(VII) solution],
  [hydrogen chloride], [white fumes with ammonia gas; turns damp blue litmus red],
  [water vapour], [turns anhydrous copper(II) sulphate from white to blue; cobalt chloride paper pink],
)

#worked-example(
  1,
  "Identifying an unknown salt from its tests",
  tier: "UTME STANDARD",
  [A white solid $X$ dissolves in water. With sodium hydroxide solution it gives a white precipitate that does not dissolve in excess. Its flame test gives a brick-red colour, and with barium chloride solution acidified with dilute hydrochloric acid it gives a white precipitate that does not dissolve. Identify $X$ and write the two equations for the precipitation tests.],
  [
    *Cation.* White precipitate insoluble in excess NaOH, with a brick-red flame test: the cation is $"Ca"^(2+)$.

    *Anion.* A white precipitate with acidified barium chloride that does not dissolve in acid is barium sulphate, so the anion is $"SO"_4^(2-)$.

    *The solid* is therefore calcium sulphate, $"CaSO"_4$.

    *Equations.* $"Ca"^(2+) "(aq)" + 2"OH"^- "(aq)" -> "Ca(OH)"_2 "(s)"$ and $"Ba"^(2+) "(aq)" + "SO"_4^(2-) "(aq)" -> "BaSO"_4 "(s)"$.

    *Why the acid matters:* barium sulphite and barium carbonate also give white precipitates, but both dissolve in dilute acid; only barium sulphate survives, which is what makes the test specific.
  ],
)

== E.5 Two Procedures Worth Knowing by Heart

#concept-box("A titration, in seven steps")[
  1. Rinse the burette with the solution it will contain, and the pipette with the solution it will deliver. \
  2. Fill the burette, run a little through the tap to fill the jet, and record the initial reading at eye level. \
  3. Pipette 25.0 cm³ of the alkali into a conical flask and add two drops of indicator. \
  4. Run the acid in, swirling, until the colour changes persist for a few seconds. \
  5. Record the final reading; the difference is the titre. \
  6. Repeat until two titres agree to within 0.10 cm³. \
  7. Average the agreeing titres and calculate, using $c_1 V_1 div n_1 = c_2 V_2 div n_2$.
]

#concept-box("Preparing a standard solution")[
  Weigh the solute accurately, dissolve it in a small volume of distilled water in a beaker, transfer it to a volumetric flask through a funnel, rinse the beaker and funnel into the flask, then add distilled water until the bottom of the meniscus sits on the graduation mark. Stopper and invert several times. The concentration is known because both the mass and the final volume are known.
]

#trap-box("Read the meniscus, not the glass")[
  The reading is taken at the *bottom* of the meniscus with the eye level with it. Reading the top of the curve, or reading from above, is the commonest practical error and it is examined as a question in its own right.
]
