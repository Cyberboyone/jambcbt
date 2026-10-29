#import "template.typ": *

#current-chapter.update("Chapter 6: Redox and Electrochemistry")
#pagebreak()

#chapter-opener(
  6,
  "Redox and Electrochemistry",
  subtitle: "Oxidation Numbers, Oxidising and Reducing Agents, Electrolysis and Electrode Products, Galvanic Cells and EMF, Corrosion and Electroplating",
  syllabus-ref: "Sec. B • Topic 6",
  utme-weight: "4 Qs every year",
)

#focus-radar(
  objectives: (
    "Define oxidation and reduction in terms of electrons, and in terms of oxidation number.",
    "Assign oxidation numbers to the atoms in a formula, an ion and a compound.",
    "Identify the oxidising agent and the reducing agent in a reaction.",
    "Describe the conduction of electricity through an electrolyte and through a metal.",
    "Predict the products of the electrolysis of a named electrolyte with named electrodes.",
    "Write the electrode half-equations and the overall cell equation.",
    "Describe a galvanic cell and use the electrochemical series to find the cathode and the cell EMF.",
    "Explain rusting and how it is prevented, and describe electroplating.",
  ),
  hotspots: (
    "\\\"The oxidation number of chromium in K₂Cr₂O₇ is …\\\" — +6, from the potassium and oxygen.",
    "\\\"The products of the electrolysis of concentrated brine are …\\\" — chlorine at the anode, hydrogen at the cathode, sodium hydroxide left in solution.",
    "\\\"In the zinc–copper cell, the anode is …\\\" — zinc, which is oxidised and has the more negative potential.",
    "\\\"The EMF of a Zn/Cu cell is …\\\" — $E^degree$cathode − $E^degree$anode = 0.34 − (−0.76) = 1.10 V.",
    "\\\"Rusting requires …\\\" — both water and oxygen; dry air or a vacuum does not rust iron.",
  ),
  trap-summary: "Three slips. (1) Remembering anode and cathode by position instead of by reaction: in *every* cell the *anode* is where *oxidation* happens, and it is the *negative* electrode in a galvanic cell but the *positive* electrode in an electrolytic cell. Learn the reaction, not the sign. (2) Forgetting that hydrogen is produced at the cathode in the electrolysis of aqueous solutions, not sodium or potassium — the metal is never discharged from water when hydrogen is easier to reduce. (3) Writing an electrode half-equation with the electrons on the wrong side: oxidation releases electrons, so they belong on the *right*.",
)

// ============================================================================
== 6.1 Oxidation and Reduction

The modern definitions are about electrons, and they never fail.

#formula-box("Two definitions, one reaction")[
  *Oxidation* is the *loss* of electrons. It may also be described as the gain of oxygen, the loss of hydrogen, or an increase in oxidation number.

  *Reduction* is the *gain* of electrons — with oxygen lost, hydrogen gained, or the oxidation number falling.

  *OIL RIG*: *O*xidation *I*s *L*oss; *R*eduction *I*s *G*ain. \\
  *LEO GER*: *L*ose *E*lectrons *O*xidation; *G*ain *E*lectrons *R*eduction.
]

#table(
  columns: (1.5fr, 2.0fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Usual wording],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[In a reaction],
  ),

  [*Oxidising agent*], [the substance that *oxidises* something else, and is itself reduced], [gains electrons: KMnO₄, K₂Cr₂O₇, Cl₂, HNO₃, O₂],
  [*Reducing agent*], [the substance that *reduces* something else, and is itself oxidised], [loses electrons: H₂, CO, C, metals such as Zn and Mg],
  [*Disproportionation*], [one element is simultaneously oxidised and reduced], [Cl₂ + 2NaOH → NaCl + NaOCl + H₂O],
)

#concept-box("Why the agent is always the other one")[
  An oxidising agent is *reduced* when it works. That inversion of words is the single most confusing thing in the topic, and it is worth memorising as a sentence: *the oxidising agent is the one that takes the electrons, so it must be the one that is reduced.*

  In $"Zn" + "Cu"^(2+) -> "Zn"^(2+) + "Cu"$, zinc is oxidised (it loses electrons) and is therefore the *reducing agent*; the copper ion is reduced and is the *oxidising agent*.
]

// ============================================================================
== 6.2 Oxidation Numbers

An *oxidation number* is the charge an atom would carry if the bonds in its compound were entirely ionic. There are six rules, and with them every example in the syllabus can be assigned.

#table(
  columns: (0.4fr, 2.2fr, 2.3fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The rule],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),

  [1], [an uncombined element has oxidation number *zero*], [in Na, Cl₂, O₂, Fe, the number is 0],
  [2], [a monatomic ion has the number equal to its *charge*], [Na⁺ is +1, Ca²⁺ is +2, Cl⁻ is −1],
  [3], [oxygen is *−2*, except in peroxides (−1) and OF₂ (+2)], [in H₂O, O is −2; in H₂O₂, O is −1],
  [4], [hydrogen is *+1*, except in metal hydrides (−1)], [in HCl, H is +1; in NaH, H is −1],
  [5], [the numbers *add up to the overall charge*], [0 in a neutral compound; the ion's charge in an ion],
  [6], [the more electronegative element takes the negative number], [in NCl₃, N is +3 and Cl is −1],
)

#worked-example(
  1,
  "Finding an oxidation number",
  tier: "FOUNDATION",
  [Find the oxidation number of chromium in potassium dichromate, K₂Cr₂O₇, and of manganese in KMnO₄.],
  [
    *K₂Cr₂O₇.* Potassium is +1 (Group I) and oxygen is −2. Let chromium be $x$. The compound is neutral, so:

    $2(+1) + 2x + 7(-2) = 0$
    $2 + 2x - 14 = 0$
    $2x = 12 quad therefore quad x = +6$

    *KMnO₄.* Again K is +1 and O is −2:

    $+1 + x + 4(-2) = 0$
    $x = +7$

    *The sentence to write:* “Chromium is +6 in the dichromate ion, because the sum of the oxidation numbers of two chromium atoms with two potassium and seven oxygen atoms must be zero.”
  ],
)

#worked-example(
  2,
  "The ion, where the sum is not zero",
  tier: "UTME STANDARD",
  [Find the oxidation number of sulphur in the sulphate ion, $"SO"_4^(2-)$, and in the thiosulphate ion, $"S"_2 "O"_3^(2-)$, where the two sulphur atoms are not equivalent — give the average.],
  [
    *Sulphate.* Let sulphur be $x$ and oxygen −2:
    $x + 4(-2) = -2 quad therefore quad x - 8 = -2 quad therefore quad x = +6$

    *Thiosulphate, by average.*
    $2x + 3(-2) = -2 quad therefore quad 2x = +4 quad therefore quad x = +2$

    The average is +2, which tells you the two sulphur atoms are +5 and −1 in reality — one of the signs that the ion has a sulphur–sulphur bond. For the examination, the average is what is asked, and the working is what is marked.
  ],
)

#trap-box("Brackets in a formula change the answer")[
  $"Ca"("OH")_2$: there are *two* hydroxide ions, each with charge −1, so the sum of the oxygen and hydrogen numbers is $2 times ( -2 + 1 ) = -2$, and calcium is +2.

  $"Al"_2 ("SO"_4)_3$: three sulphate ions. Sulphur stays +6 and oxygen −2 inside the brackets; aluminium is +3. Multiply the bracket by its subscript when you sum — $3 times ( "one S" + "four O" )$ — or the equation will not balance.

  This is the same bracket rule you learned in Chapter 1, used in reverse.
]

// ============================================================================
== 6.3 Electrolysis

*Electrolysis* is the decomposition of an electrolyte by the passage of a direct current. It is the *forced* version of a redox reaction: a power supply pushes electrons through the external circuit in the direction that the cell would not send them.

#table(
  columns: (1.35fr, 1.85fr, 2.0fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[In an electrolytic cell],
  ),

  [*Anode*], [the electrode where *oxidation* happens — anions give up electrons], [positive electrode, attracts anions],
  [*Cathode*], [the electrode where *reduction* happens — cations gain electrons], [negative electrode, attracts cations],
  [*Electrolyte*], [a molten or dissolved ionic compound, which conducts by the movement of *ions*], [the solution or melt between the electrodes],
  [*Electrode*], [a conductor that carries the current into or out of the electrolyte], [graphite or platinum, which are inert],
)

#diagram-fig("diagrams/ch06_electrolysis.svg",
  "Electrolysis of concentrated brine. Chloride ions are oxidised at the anode, water is reduced at the cathode, and sodium hydroxide solution accumulates around the cathode.")

#table(
  columns: (1.5fr, 1.55fr, 1.55fr, 1.0fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Electrolyte],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[At the cathode (−)],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[At the anode (+)], text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Note],
  ),

  [molten NaCl], [sodium metal], [chlorine gas], [no water, so no hydrogen is possible],
  [concentrated NaCl(aq)], [hydrogen], [chlorine], [NaOH remains in solution — the industrial chlor-alkali process],
  [dilute H₂SO₄], [hydrogen], [oxygen], [water is oxidised: $2"H"_2 "O" -> "O"_2 + 4"H"^+ + 4e^-$],
  [CuSO₄(aq), inert electrodes], [copper metal is deposited], [oxygen], [the blue colour fades as Cu²⁺ is removed],
  [CuSO₄(aq), copper electrodes], [copper is deposited], [the anode dissolves], [this is *electrorefining* — the anode loses mass, the cathode gains it],
  [molten PbBr₂], [lead metal], [bromine vapour], [the same pattern as molten NaCl],
)

#worked-example(
  3,
  "Writing the electrode equations",
  tier: "UTME STANDARD",
  [For the electrolysis of concentrated sodium chloride solution using inert electrodes, write the half-equation at each electrode, the overall equation, and name the three products.],
  [
    *Cathode (−), reduction.* Two possible cations: Na⁺ and H⁺ from water. Hydrogen is far easier to reduce, so:
    $2"H"_2 "O" + 2e^- -> "H"_2 + 2"OH"^-$

    *Anode (+), oxidation.* Two possible anions: Cl⁻ and OH⁻. In *concentrated* brine the chloride is in the great majority, so chlorine is discharged:
    $2"Cl"^- -> "Cl"_2 + 2e^-$

    *Overall.*
    $2"NaCl" + 2"H"_2 "O" -> "H"_2 + "Cl"_2 + 2"NaOH"$

    *The three products* are hydrogen, chlorine and sodium hydroxide. The hydroxide is not discharged — it stays in solution and is the third product, which is why the process is called the chlor-alkali industry.

    In *dilute* brine the hydroxide ion is proportionally more plentiful and oxygen is evolved at the anode instead. Concentration is what decides, and a full-mark answer says so.
  ],
)

#trap-box("Which electrode is which — decide by the reaction, not the sign")[
  In an *electrolytic* cell the anode is the *positive* electrode, because the power supply pulls electrons away from it. In a *galvanic* cell the anode is the *negative* electrode, because the metal there is losing electrons of its own accord.

  The one thing that never changes: *anode = oxidation*, *cathode = reduction*. Learn those two words and the signs follow.
]

// ============================================================================
== 6.4 Galvanic Cells and EMF

A *galvanic* (or voltaic) cell produces electricity from a spontaneous redox reaction. Two metals in their own salt solutions, joined by a wire and a salt bridge, make one.

#diagram-fig("diagrams/ch06_cell.svg",
  "The zinc–copper cell. Zinc is oxidised and is the negative electrode; copper ions are reduced at the positive electrode; the salt bridge lets ions pass so that the circuit is complete.")

#formula-box("The cell EMF")[
  $E^degree_"cell" = E^degree ("cathode") - E^degree ("anode")$

  A *positive* $E^degree_"cell"$ means the reaction as written is spontaneous. The cathode is the electrode with the *more positive* (or less negative) standard potential.
]

#diagram-fig("diagrams/ch06_emf.svg",
  "The electrochemical series. Metals at the top lose electrons most readily and are the strongest reducing agents; metals at the bottom gain them most readily and are the strongest oxidising agents.")

#worked-example(
  4,
  "The Zn/Cu cell, end to end",
  tier: "UTME STANDARD",
  [A cell is made from a zinc electrode in zinc sulphate solution and a copper electrode in copper(II) sulphate solution. Given $E^degree$(Zn²⁺/Zn) = −0.76 V and $E^degree$(Cu²⁺/Cu) = +0.34 V, identify the anode and the cathode, write both half-equations and the overall equation, and calculate the EMF.],
  [
    *Identify.* Copper has the more positive potential, so copper is the *cathode* (reduction) and zinc is the *anode* (oxidation).

    *Half-equations.*
    $"Zn" -> "Zn"^(2+) + 2e^- quad "(anode, oxidation)"$
    $"Cu"^(2+) + 2e^- -> "Cu" quad "(cathode, reduction)"$

    *Overall.*
    $"Zn" + "Cu"^(2+) -> "Zn"^(2+) + "Cu"$

    *EMF.*
    $E^degree_"cell" = 0.34 - (-0.76) = 1.10 "V"$

    *The direction of the electrons* is from zinc, through the wire, to copper. In the solution, the salt bridge carries ions to keep both beakers electrically neutral, and the more reactive metal is always the one that dissolves.
  ],
)

#concept-box("Conduction, compared")[
  *Metals* conduct by the movement of *delocalised electrons*, and conduction improves as the temperature falls.
  *Electrolytes* conduct by the movement of *ions*, and conduction improves as the temperature rises (the ions move faster) — and a solid ionic compound does not conduct at all, because its ions are locked in the lattice.
]

// ============================================================================
== 6.5 Corrosion and Its Prevention

*Rusting* is the oxidation of iron in the presence of both water and oxygen. The product is hydrated iron(III) oxide, approximately $"Fe"_2 "O"_3$·$x"H"_2 "O"$.

#concept-box("What rusting needs")[
  Both *water* and *oxygen*. Iron in dry air does not rust; iron under boiled, distilled water, with no dissolved oxygen, does not rust either. Salt *accelerates* rusting because the chloride ion makes the water a better electrolyte — which is why cars rust fastest at the coast.
]

#table(
  columns: (1.4fr, 2.1fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),

  [*Barrier*], [coats the iron so that water and oxygen cannot reach it], [paint, grease, plastic, tin plating],
  [*Sacrificial protection*], [a more reactive metal is attached and corrodes instead], [galvanising (zinc), magnesium blocks on pipelines, zinc on ship hulls],
  [*Alloying*], [changes the metal so that the oxide layer is protective], [stainless steel contains chromium],
  [*Cathodic protection*], [the iron is made the cathode of a cell, so it cannot be oxidised], [an impressed current from a d.c. supply],
)

#concept-box("Why zinc protects iron even when the coating is broken")[
  Zinc is *above* iron in the electrochemical series, so it is oxidised in preference to iron. Even when the zinc layer is scratched, the iron at the scratch is protected until all the neighbouring zinc has gone.

  Tin is the opposite: it is *below* iron, so once a tin coating is broken the iron corrodes *faster*, because the iron becomes the anode of a small cell with the tin as cathode.
]

== 6.6 Electroplating

*Electroplating* deposits a thin layer of one metal onto another by making the article the cathode of an electrolytic cell.

#concept-box("The four conditions of a good plate")[
  + The article to be plated is the *cathode* — reduction happens there, so the metal is deposited on it.
  + The anode is made of the *plating metal*, so the electrolyte is replenished as it dissolves.
  + The electrolyte is a solution of a *salt of the plating metal* — silver nitrate to silver-plate.
  + The current is *low* and the article is *clean*: too high a current gives a rough, powdery deposit rather than a smooth one.
]

== 6.7 Chapter 6 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + define oxidation and reduction by electrons, by oxygen and by oxidation number;
  + name the oxidising agent and the reducing agent in a given reaction;
  + assign oxidation numbers using the six rules, including inside brackets;
  + describe how metals and electrolytes conduct;
  + predict the products of electrolysis for the six electrolytes in the table;
  + write both electrode half-equations and the overall equation;
  + state which electrode is the anode in each type of cell, and why;
  + use $E^degree_"cell" = E^degree ("cathode") - E^degree ("anode")$;
  + state the two requirements for rusting and name four methods of prevention;
  + explain why zinc protects iron even when scratched, and why tin does not.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Oxidation is the loss of electrons and reduction is the gain, and an oxidation number counts those electrons as if the bonds were ionic: elements are zero, oxygen is −2, hydrogen is +1, and the numbers in a formula sum to the charge. The substance that takes the electrons is the oxidising agent and is itself reduced. In electrolysis a power supply forces the reaction: anions give up electrons at the anode, cations gain them at the cathode, and the products depend on which ion is easiest to discharge — chlorine from concentrated brine, oxygen from dilute solutions, hydrogen at the cathode whenever water is present, and the metal itself from a molten salt. A galvanic cell runs the same chemistry backwards and produces electricity instead: the more reactive metal is the anode, the cell EMF is $E^degree$cathode − $E^degree$anode, and the electrons flow through the wire from the more reactive metal to the less. Rusting needs both water and oxygen, and every method of preventing it either blocks them out or puts a more reactive metal in the way.
  ]
]

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: redox, cells, electrolysis and EMF.", width: 100%)

#pagebreak()
== 6.8 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [The oxidation number of chromium in K₂Cr₂O₇ is], [+3], [+6], [+7], [−2])
#mcq(2, [In the reaction Zn + Cu²⁺ → Zn²⁺ + Cu, the reducing agent is], [Zn], [Cu²⁺], [Zn²⁺], [Cu])
#mcq(3, [In the electrolysis of concentrated sodium chloride solution, the gas produced at the anode is], [hydrogen], [chlorine], [oxygen], [carbon dioxide])
#mcq(4, [In a zinc–copper galvanic cell, the electrons in the external circuit flow], [from copper to zinc], [from zinc to copper], [in both directions], [not at all])

#answer-key-grid(("B", "A", "B", "B"))

#answer-notes((
  ("B", [$2(+1) + 2x + 7(-2) = 0$, so $2x = 12$ and $x = +6$.]),
  ("A", [zinc loses electrons and is oxidised, so it is the reducing agent; the copper ion gains them and is the oxidising agent.]),
  ("B", [chloride ions are oxidised at the anode to chlorine; hydrogen is produced at the cathode.]),
  ("B", [zinc is the more reactive metal and is oxidised, releasing electrons that travel through the wire towards copper.]),
))

#include "drill_ch06.typ"
