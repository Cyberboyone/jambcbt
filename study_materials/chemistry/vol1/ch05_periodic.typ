#import "template.typ": *

#current-chapter.update("Chapter 5: The Periodic Table and Periodicity")
#pagebreak()

#chapter-opener(
  5,
  "The Periodic Table and Periodicity",
  subtitle: "Groups and Periods, the Blocks of the Table, the Chemistry of Groups I, II, VII and 0, and the Trends in Radius, Ionisation Energy and Metallic Character",
  syllabus-ref: "Sec. A • Topic 5",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Describe the arrangement of the periodic table into groups, periods and blocks.",
    "Relate the position of an element to its electronic configuration.",
    "Describe the properties and trends of Groups I, II, VII and 0.",
    "Explain the trends in atomic radius, ionisation energy and metallic character across a period and down a group.",
    "Predict the type of oxide or chloride formed by an element from its position.",
    "Explain the diagonal relationship and the transition-metal block at a simple level.",
  ),
  hotspots: (
    "“An element has configuration 2, 8, 7. It is in …” — Period 3, Group VII. Two numbers, one mark.",
    "“Why does ionisation energy decrease down a group?” — the outer electron is further from the nucleus and shielded by more inner shells.",
    "“Which is the most reactive metal?” — caesium, at the foot of Group I.",
    "“Chlorine displaces bromine from potassium bromide …” — because chlorine is the more reactive halogen, higher in Group VII.",
    "“The oxide of a Group I metal is …” — basic; the oxide of a Group VII element is acidic.",
  ),
  trap-summary: "Three slips decide this chapter. (1) *Reading a group from the mass number or the period number.* The group is the number of outer-shell electrons and the period is the number of shells used — nothing else. (2) *Forgetting the noble gases.* They are Group 0 (or VIII) and are unreactive because their outer shells are full, which is not the same as having two electrons (helium is the special case). (3) *Thinking reactivity falls down every group.* Metals become more reactive down a group; non-metals become less reactive. Reverse one of those two and the halogen displacement questions all go wrong.",
)

// ============================================================================
// SECTION 5.1
// ============================================================================
== 5.1 How the Table Is Built

The modern periodic table lists the elements in order of *increasing atomic number*, and the table is periodic because the outer-shell configuration repeats.

#concept-box("The grammar of the table")[
  *Period* — a horizontal row. All the elements in it fill the same principal shell, so the period number is the number of shells occupied. \
  *Group* — a vertical column. All the elements in it have the same number of outer-shell electrons, which is why they have similar chemistry. \
  *Block* — the part of the table being filled: the $s$-block (Groups I and II), the $p$-block (Groups III to 0), the $d$-block (the transition metals) and the $f$-block (the lanthanides and actinides).
]

History matters for one exam line. Mendeleev arranged the elements by *relative atomic mass* and left gaps for elements not yet discovered, predicting their properties. The modern table uses *atomic number* instead, because that removes the anomalies — argon and potassium fall into the right places only when protons, not masses, are counted.

#diagram-fig("diagrams/ch05_groups.svg",
  "The main groups of the periodic table. Metals sit to the left and below, non-metals to the right and above, and the noble gases occupy the whole of the last column.")

#table(
  columns: (1fr, 1.3fr, 1.5fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Group],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What they are like],
  ),
  [I], [alkali metals], [soft, one outer electron, react vigorously with water to give an alkaline solution and hydrogen],
  [II], [alkaline earth metals], [two outer electrons, harder than Group I, form $2+$ ions],
  [VII], [halogens], [seven outer electrons, coloured non-metals, form $1-$ ions and diatomic molecules],
  [0], [noble gases], [full outer shell, monatomic, almost completely unreactive],
  [$d$-block], [transition metals], [variable oxidation states, coloured compounds, catalysts],
)

// ============================================================================
// SECTION 5.2
// ============================================================================
== 5.2 Group Chemistry

#table(
  columns: (0.95fr, 1.55fr, 1.55fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Group],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Down the group],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Evidence you should be able to quote],
  ),
  [I], [reactivity *increases*: the outer electron is further from the nucleus and easier to lose], [potassium reacts more violently with water than sodium, and rubidium more violently still],
  [II], [reactivity *increases* down the group, for the same reason], [barium reacts with cold water, magnesium only with steam],
  [VII], [reactivity *decreases*: the outer shell is further out and the incoming electron is less strongly attracted], [chlorine displaces bromine from bromide solution; bromine displaces iodine],
  [0], [reactivity is negligible throughout — the shell is already full], [no compounds of helium or neon; xenon forms only a few, with fluorine and oxygen],
)

#concept-box("The displacement reactions of Group VII")[
  A more reactive halogen displaces a less reactive one from a solution of its salt: \
  $"Cl"_2 + 2"KBr" -> 2"KCl" + "Br"_2$ \
  The solution turns from colourless to orange-brown as bromine is set free. The reverse reaction does not happen, because bromine cannot displace chlorine. \
  This one reaction is the standard proof that chlorine is above bromine in Group VII, and it is examined in some form almost every year.
]

#worked-example(
  1,
  "Position, oxide and displacement",
  tier: "UTME STANDARD",
  [An element $X$ has the electronic configuration 2, 8, 7. (a) State its group and period. (b) Write the formula of its oxide and of its hydride. (c) Explain what happens when chlorine gas is bubbled through potassium bromide solution, and write the equation.],
  [
    *(a)* Seven outer electrons means Group VII; three shells means Period 3. $X$ is chlorine.

    *(b)* Chlorine is in oxidation state −1 in its compounds and +7 in its highest oxide, so the hydride is $"HCl"$ and the highest oxide is $"Cl"_2"O"_7$.

    *(c)* Chlorine is more reactive than bromine, so it displaces bromine from the bromide: \
    $"Cl"_2 + 2"KBr" -> 2"KCl" + "Br"_2$ \
    The solution turns orange-brown. This reaction shows that reactivity falls down Group VII.

    *The reasoning, not the colour, carries the mark:* the displacement happens because the more reactive halogen takes the place of the less reactive one.
  ],
)

// ============================================================================
// SECTION 5.3
// ============================================================================
== 5.3 Periodicity: The Three Trends

*Periodicity* is the repetition of properties at regular intervals as atomic number increases. Three trends carry almost every mark.

#diagram-fig("diagrams/ch05_periodic_trends.svg",
  "Two trends across Period 3. Radius falls because the nuclear charge grows while the shell stays the same; ionisation energy rises for the same reason, with dips at aluminium and sulphur caused by subshell and pairing effects.")

#concept-box("The trends and their reasons")[
  *Atomic radius* — falls across a period (more protons pull the same shell closer) and rises down a group (a new shell is added). \
  *First ionisation energy* — rises across a period (the outer electron is held more tightly) and falls down a group (the outer electron is further out and shielded). \
  *Metallic character* — falls across a period and rises down a group, exactly opposite to ionisation energy, because a metal is an element that loses electrons easily. \
  *Electronegativity* — rises across a period and falls down a group: the same tug-of-war, measured by how strongly an atom attracts a shared pair of electrons.
]

#table(
  columns: (1.3fr, 1.25fr, 1.25fr, 1.9fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Across a period],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Down a group],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Dominant cause],
  ),
  [atomic radius], [decreases], [increases], [shells added down a group; charge rises across],
  [ionisation energy], [increases], [decreases], [distance and shielding against nuclear charge],
  [electronegativity], [increases], [decreases], [the same tug-of-war on a shared pair],
  [metallic character], [decreases], [increases], [ease of losing the outer electron],
)

#worked-example(
  2,
  "Explaining two comparisons",
  tier: "UTME STANDARD",
  [(a) Why is the first ionisation energy of magnesium (738 kJ mol⁻¹) greater than that of sodium (496 kJ mol⁻¹)? (b) Why is the first ionisation energy of potassium (419 kJ mol⁻¹) smaller than that of sodium?],
  [
    *(a)* Both are in Period 3, so the outer electron is in the same shell. Magnesium has one more proton, so the nuclear charge is greater, while the shielding from the inner shells is the same. The outer electron is therefore pulled in more tightly and needs more energy to remove — and the radius is smaller for the same reason.

    *(b)* Potassium is one period below sodium, so its outer electron occupies the fourth shell, further from the nucleus and shielded by an extra complete shell of electrons. The attraction is weaker, so less energy is needed — even though potassium has more protons.

    *The pattern to recite:* across a period, *charge wins* because the shell does not change; down a group, *distance and shielding win*.
  ],
)

// ============================================================================
// SECTION 5.4
// ============================================================================
== 5.4 Oxides and Chlorides Across a Period

The character of the oxide changes from basic to acidic as you move from left to right — the single most useful application of periodicity in the exam.

#table(
  columns: (1fr, 1.2fr, 1.9fr, 1.4fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Element],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Oxide],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[With water],
  ),
  [Na], [$"Na"_2"O"$], [strongly basic], [gives $"NaOH"$, a strong alkali],
  [Mg], [$"MgO"$], [basic], [almost insoluble; dissolves in acid],
  [Al], [$"Al"_2"O"_3$], [amphoteric], [reacts with both acids and alkalis],
  [Si], [$"SiO"_2$], [weakly acidic], [insoluble — a giant covalent solid],
  [P], [$"P"_4"O"_10$], [acidic], [gives phosphoric acid],
  [S], [$"SO"_2$], [acidic], [gives sulphurous acid],
  [Cl], [$"Cl"_2"O"_7$], [strongly acidic], [gives perchloric acid],
)

#trap-box("Amphoteric is not acidic")[
  Aluminium oxide reacts with acids *and* with alkalis, and that behaviour has its own name: amphoteric. An answer of “acidic” for aluminium oxide loses the mark, and so does “basic”, because both are only half the truth. The same applies to zinc oxide and lead(II) oxide, which the syllabus also treats as amphoteric.
]

// ============================================================================
// SECTION 5.5 — CHECKLIST
// ============================================================================
== 5.5 Chapter 5 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + state what a group, a period and a block are;
  + give the group and period of an element from its configuration, and the other way round;
  + name Groups I, II, VII and 0 and give two properties of each;
  + state the trend in reactivity down Groups I and VII, with the reason;
  + write a halogen displacement equation;
  + explain the trend in atomic radius across and down;
  + explain the trend in first ionisation energy across and down;
  + explain the trend in metallic character;
  + classify an oxide as basic, acidic or amphoteric;
  + say why the transition metals are coloured and catalytic.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The table lists the elements by atomic number, in rows called periods and columns called groups; the group is the outer-shell count and the period is the number of shells. Group I metals lose one electron and become more reactive downwards, Group VII non-metals gain one electron and become less reactive downwards, and Group 0 is unreactive because its shell is full. Across a period the nuclear charge grows within the same shell, so radius falls, ionisation energy and electronegativity rise, and metallic character falls; down a group a new shell is added, so all of those reverse. Oxides run from basic on the left through amphoteric to acidic on the right, and that single sequence answers most of the “predict the property” questions.
  ]
]

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: layout, trends and the groups to know.", width: 100%)

// ============================================================================
// SECTION 5.6 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 5.6 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [An element with electronic configuration 2, 8, 8, 1 belongs to], [Group I, Period 4], [Group 4, Period 1], [Group VIII, Period 4], [Group I, Period 3])
#mcq(2, [Which of the following is the most reactive halogen?], [iodine], [bromine], [chlorine], [fluorine])
#mcq(3, [Across Period 3 from sodium to chlorine, the atomic radius], [increases], [decreases], [stays constant], [first increases then decreases])
#mcq(4, [Aluminium oxide is best described as], [basic], [acidic], [amphoteric], [neutral])

#answer-key-grid(("A", "D", "B", "C"))

#answer-notes((
  ("A", [one outer electron means Group I; four shells means Period 4 — it is potassium.]),
  ("D", [reactivity falls down Group VII, so the top element, fluorine, is the most reactive.]),
  ("B", [the nuclear charge rises while the shell stays the same, so the atoms are pulled in and shrink.]),
  ("C", [it reacts with both acids and alkalis, which is the definition of amphoteric.]),
))

#include "drill_ch05.typ"
