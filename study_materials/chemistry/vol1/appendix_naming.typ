#import "template.typ": *

#current-chapter.update("Appendix H: Writing Formulae and Equations")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: Writing Formulae and Equations]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Writing Formulae and Equations]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Half the marks in a calculation are lost before the calculation begins — in a wrong formula or an unbalanced equation. This appendix is the repair kit.]
]

#v(4pt)

== H.1 From Name to Formula, in Four Moves

#concept-box("The four moves")[
  1. Write the symbol of the metal (or of the ammonium ion) first, and the non-metal (or the polyatomic ion) second. \
  2. Put the charge of each ion above it — Group I is $1+$, Group II is $2+$, aluminium is $3+$, chloride is $1-$, oxide is $2-$, sulphate is $2-$. \
  3. Cross the numbers: the charge on one ion becomes the subscript on the other. \
  4. Cancel down if both subscripts share a factor, and never write a subscript of 1.
]

#table(
  columns: (1.2fr, 1fr, 1fr, 1.4fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ions],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why],
  ),
  [sodium oxide], [Na⁺, O²⁻], [$"Na"_2"O"$], [two sodiums balance one oxygen],
  [magnesium chloride], [Mg²⁺, Cl⁻], [$"MgCl"_2$], [one magnesium balances two chlorines],
  [aluminium oxide], [Al³⁺, O²⁻], [$"Al"_2"O"_3$], [cross 3 and 2; no common factor],
  [calcium nitrate], [Ca²⁺, NO₃⁻], [$"Ca"("NO"_3)_2$], [the bracket keeps the ion intact],
  [ammonium sulphate], [NH₄⁺, SO₄²⁻], [$("NH"_4)_2"SO"_4$], [cross 1 and 2],
  [iron(III) chloride], [Fe³⁺, Cl⁻], [$"FeCl"_3$], [the Roman numeral gives the charge],
  [copper(II) sulphate], [Cu²⁺, SO₄²⁻], [$"CuSO"_4$], [charges already balance],
)

== H.2 Balancing an Equation in Three Passes

#concept-box("The method that never fails")[
  *Pass 1 — metals and complex ions.* Balance the metal atoms (or the polyatomic ions that stay intact) first. \
  *Pass 2 — non-metals.* Balance the non-metal atoms other than hydrogen and oxygen. \
  *Pass 3 — hydrogen, then oxygen, last.* Leave hydrogen and oxygen until the end; they usually look after themselves. \
  Then check every element on both sides, and check that the charges balance if the equation is ionic.
]

#table(
  columns: (1.5fr, 1.5fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Balanced equation],
  ),
  [magnesium + oxygen], [$2"Mg" + "O"_2 -> 2"MgO"$],
  [sodium + water], [$2"Na" + 2"H"_2"O" -> 2"NaOH" + "H"_2$],
  [calcium carbonate + hydrochloric acid], [$"CaCO"_3 + 2"HCl" -> "CaCl"_2 + "H"_2"O" + "CO"_2$],
  [hydrogen + oxygen], [$2"H"_2 + "O"_2 -> 2"H"_2"O"$],
  [methane + oxygen], [$"CH"_4 + 2"O"_2 -> "CO"_2 + 2"H"_2"O"$],
  [nitrogen + hydrogen], [$"N"_2 + 3"H"_2 -> 2"NH"_3$],
  [chlorine + potassium bromide], [$"Cl"_2 + 2"KBr" -> 2"KCl" + "Br"_2$],
  [aluminium + oxygen], [$4"Al" + 3"O"_2 -> 2"Al"_2"O"_3$],
  [sodium hydroxide + sulphuric acid], [$2"NaOH" + "H"_2"SO"_4 -> "Na"_2"SO"_4 + 2"H"_2"O"$],
  [zinc + hydrochloric acid], [$"Zn" + 2"HCl" -> "ZnCl"_2 + "H"_2$],
)

#trap-box("The two errors that lose the most marks")[
  (1) *Changing a subscript to balance an equation.* $"H"_2"O"$ is water; $"H"_2"O"_2$ is hydrogen peroxide, a different compound entirely. Only the coefficients in front of a formula may be changed. \
  (2) *Forgetting the state symbols.* (s), (l), (g) and (aq) are part of the answer in ionic equations, and “(aq)” is the reason an ionic compound conducts.
]

== H.3 Naming Compounds from their Formulae

#table(
  columns: (1.6fr, 1.4fr, 1.6fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Note],
  ),
  [$"NaCl"$], [sodium chloride], [no prefix needed for a 1 : 1 ionic compound],
  [$"SO"_2$], [sulphur(IV) oxide], [the Roman numeral gives the oxidation state],
  [$"SO"_3$], [sulphur(VI) oxide], [compare with the previous line],
  [$"NO"$], [nitrogen(II) oxide], [a covalent oxide, so the numeral is needed],
  [$"N"_2"O"$], [dinitrogen oxide], [the prefix “di” counts the atoms],
  [$"FeCl"_2$], [iron(II) chloride], [the numeral distinguishes it from $"FeCl"_3$],
  [$"CuO"$], [copper(II) oxide], [copper can also be copper(I)],
  [$"H"_2"SO"_4$], [sulphuric acid], [the “-ic” ending belongs to the higher oxidation state],
  [$"HNO"_3$], [nitric acid], [one of the three acids the syllabus names],
  [$"KMnO"_4$], [potassium manganate(VII)], [a purple oxidising agent],
)

== H.4 Ionic Equations

An ionic equation shows only the particles that actually change. Spectator ions — the ones that stay in solution unchanged — are left out.

#worked-example(
  1,
  "Writing an ionic equation from the full equation",
  tier: "UTME STANDARD",
  [Write the ionic equation for the reaction between silver nitrate solution and sodium chloride solution, and identify the spectator ions.],
  [
    *Full equation:* $"AgNO"_3"(aq)" + "NaCl""(aq)" -> "AgCl""(s)" + "NaNO"_3"(aq)"$.

    *Break the soluble compounds into ions:* \
    $"Ag"^+ + "NO"_3^- + "Na"^+ + "Cl"^- -> "AgCl""(s)" + "Na"^+ + "NO"_3^-$.

    *Cancel the ions that appear on both sides:* $"Na"^+$ and $"NO"_3^-$ are spectators.

    *Ionic equation:* $"Ag"^+"(aq)" + "Cl"^-"(aq)" -> "AgCl""(s)"$.

    *The mark scheme's phrase:* the spectator ions are unchanged on both sides, so they are omitted.
  ],
)

#shortcut-box("Checklist before you move on")[
  Does the formula have the right charges? Is the equation balanced element by element? Are the state symbols present? Have you cancelled the spectator ions? Four yeses, and the calculation that follows is safe.
]
