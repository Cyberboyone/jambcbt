#import "template.typ": *

#current-chapter.update("Chapter 5: Chemical Equilibrium")
#pagebreak()

#chapter-opener(
  5,
  "Chemical Equilibrium",
  subtitle: "Reversible Reactions, Dynamic Equilibrium, Le Chatelier's Principle, the Equilibrium Constant and the Industrial Compromises of the Haber and Contact Processes",
  syllabus-ref: "Sec. B • Topic 5",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Explain what is meant by a reversible reaction and by dynamic equilibrium.",
    "State the characteristics of a system at equilibrium.",
    "Apply Le Chatelier's principle to changes in concentration, pressure and temperature.",
    "Write the equilibrium constant for a given equation and state its units where required.",
    "State what does and does not change the value of $K_c$.",
    "Explain the operating conditions of the Haber and contact processes as compromises.",
    "Distinguish the effect of a catalyst on rate from its effect on position.",
    "Predict the effect of a change on the yield of an industrial product.",
  ),
  hotspots: (
    "\\\"At equilibrium …\\\" — the forward and reverse rates are equal and the concentrations are constant, but the reactions have not stopped.",
    "\\\"Increasing the pressure shifts the equilibrium …\\\" — toward the side with fewer gas molecules; count the moles, do not guess.",
    "\\\"Raising the temperature shifts the equilibrium …\\\" — in the endothermic direction, whichever side that is.",
    "\\\"The Haber process uses 450 °C and 200 atm because …\\\" — higher pressure favours ammonia, and 450 °C is a compromise between yield and speed.",
    "\\\"Adding a catalyst to an equilibrium mixture …\\\" — changes the rate, not the position and not the yield.",
  ),
  trap-summary: "Three slips. (1) Saying that the reactions *stop* at equilibrium. They do not: both continue at the same rate, which is the whole meaning of the word *dynamic*. (2) Counting the moles on only one side when a pressure change is applied — count the total moles of *gas* on each side, and remember that a solid does not count. (3) Believing that a catalyst raises the yield. It shortens the time taken to reach equilibrium and leaves the yield exactly where it was.",
)

// ============================================================================
== 5.1 Reversible Reactions

A *reversible reaction* can proceed in both directions. The forward reaction is written with a rightward arrow and the reverse with a leftward one; together they are written with the equilibrium symbol $<=>$.

#concept-box("Some reactions you have already met")[
  $"N"_2 "(g)" + 3"H"_2 "(g)" <=> 2"NH"_3 "(g)"$ quad (the Haber process) \\
  $"H"_2 "(g)" + "I"_2 "(g)" <=> 2"HI" "(g)"$ \\
  $2"SO"_2 (g) + "O"_2 (g) <=> 2"SO"_3 (g)$ quad (the contact process) \\
  $"CH"_3 "COOH" "(aq)" + "C"_2 "H"_5 "OH" "(aq)" <=> "CH"_3 "COOC"_2 "H"_5 " (aq)" + "H"_2 "O" "(l)"$ quad (esterification) \\
  $"NH"_3 " (aq)" + "H"_2 "O" "(l)" <=> "NH"_4^+ " (aq)" + "OH"^- " (aq)"$ quad (the weak base)
]

== 5.2 Dynamic Equilibrium

When a reversible reaction is left in a closed system, the forward rate falls as the reactants are used up, and the reverse rate rises as products accumulate. Eventually the two rates become equal.

#concept-box("The five statements that define equilibrium")[
  + The *forward and reverse rates are equal*.
  + The *concentrations* of reactants and products remain *constant* — not equal, constant.
  + Both reactions *continue*; the equilibrium is *dynamic*.
  + The equilibrium can be reached from *either* side.
  + The equilibrium position is changed only by a change in *temperature* (or by adding or removing a substance); a catalyst changes only how quickly it is reached.
]

#diagram-fig("diagrams/ch05_equilibrium.svg",
  "Concentration against time for a reversible reaction. The two curves flatten at different heights, which is what “constant” means: the concentrations stop changing while both reactions carry on at equal rates.")

#trap-box("Constant is not equal")[
  At equilibrium the concentrations are *constant*, and they are almost never *equal* to each other. The graph shows [A] settling at 0.40 and [B] at 0.60 mol dm⁻³; both are constant, and neither equals the other. A question that offers “the concentrations of reactants and products are equal” as a definition of equilibrium is offering a wrong answer.
]

// ============================================================================
== 5.3 Le Chatelier's Principle

*Le Chatelier's principle:* when a system at equilibrium is disturbed, the system responds in the direction that opposes the disturbance.

#diagram-fig("diagrams/ch05_lechatelier.svg",
  "The four common stresses and the direction each one pushes an equilibrium. The system always moves to reduce the effect of the change that was made.")

#table(
  columns: (1.35fr, 1.6fr, 2.15fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Change],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The system shifts],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why],
  ),

  [Increase concentration of a reactant], [to the *forward* side], [the extra reactant is used up by the forward reaction],
  [Remove a product], [to the *forward* side], [the forward reaction replaces what was removed],
  [Increase the pressure], [to the side with *fewer gas molecules*], [fewer molecules exert less pressure],
  [Decrease the pressure], [to the side with *more gas molecules*], [the reaction that produces more molecules restores the pressure],
  [Increase the temperature], [in the *endothermic* direction], [the system absorbs the extra heat],
  [Decrease the temperature], [in the *exothermic* direction], [the system releases heat to warm itself],
  [Add a catalyst], [no shift at all], [forward and reverse rates rise equally],
)

#worked-example(
  1,
  "Ammonia, stress by stress",
  tier: "UTME STANDARD",
  [For $"N"_2 "(g)" + 3"H"_2 "(g)" <=> 2"NH"_3 "(g)"$, $Delta H = -92$ kJ mol⁻¹, predict the effect on the equilibrium yield of ammonia of (a) increasing the pressure, (b) increasing the temperature, (c) adding an iron catalyst, (d) removing ammonia as it forms.],
  [
    *(a) Increasing the pressure shifts the equilibrium to the right*, because the left side has four moles of gas and the right side has two. The yield of ammonia rises.

    *(b) Increasing the temperature shifts the equilibrium to the left*, because the forward reaction is exothermic and the system opposes the rise by absorbing heat — that is, by running the endothermic reverse reaction. The yield falls.

    *(c) The catalyst has no effect on the yield.* It lowers the activation energy of both directions equally, so equilibrium is reached sooner but at the same position.

    *(d) Removing ammonia shifts the equilibrium to the right*, because the forward reaction replaces the ammonia that was taken away. In industry the ammonia is liquefied out of the mixture continuously, which keeps pulling the reaction forward.

    *The counting rule:* in (a) count only the *moles of gas*. Writing the coefficients 1 + 3 on the left and 2 on the right, and comparing 4 with 2, is the whole of the argument.
  ],
)

#trap-box("Solids do not count in a pressure change")[
  When the number of gas molecules is counted, a solid or a liquid is ignored — it has no partial pressure.

  $"CaCO"_3 "(s)" <=> "CaO" "(s)" + "CO"_2 "(g)"$

  On the left there are *zero* moles of gas and on the right there is *one*, so an increase in pressure shifts the equilibrium to the left. Candidates who count the “moles of substance” and see one on each side conclude, wrongly, that pressure has no effect.
]

// ============================================================================
== 5.4 The Equilibrium Constant

For a general reversible reaction at equilibrium,

$a op("A") + b op("B") <=> c op("C") + d op("D")$

the equilibrium constant is written with the products on top, each raised to its coefficient.

#formula-box("The equilibrium constant")[
  $K_c = ([op("C")]^c [op("D")]^d) div ([op("A")]^a [op("B")]^b)$

  The square brackets mean “concentration at equilibrium, in mol dm⁻³”. Solids and pure liquids do not appear — their concentration is constant.
]

#worked-example(
  2,
  "Writing and using $K_c$",
  tier: "FOUNDATION",
  [For $"H"_2 "(g)" + "I"_2 "(g)" <=> 2"HI" "(g)"$, write the expression for $K_c$. At equilibrium a mixture contains [H₂] = 0.20, [I₂] = 0.20 and [HI] = 1.60 mol dm⁻³. Calculate $K_c$.],
  [
    *The expression.*
    $K_c = (["HI"]^2) div (["H"_2]["I"_2])$

    The product concentration is squared because the coefficient of HI in the balanced equation is 2, and the exponents are the coefficients — always.

    *Substitution.*
    $K_c = (1.60)^2 div (0.20 times 0.20) = 2.56 div 0.040 = 64$

    *Units.* They cancel here, because there are two concentration terms on top and two underneath. When they do not cancel, give them: for $K_c$ the units are $(op("mol dm")^(-3))^(Delta n)$ where $Delta n$ is the change in the number of moles of gas.
  ],
)

#concept-box("Three facts about $K_c$")[
  + A large $K_c$ means the equilibrium lies to the *right* — the products are favoured.
  + A small $K_c$ means the equilibrium lies to the *left*.
  + *Only a change of temperature changes $K_c$.* Changing the concentration, the pressure or adding a catalyst leaves the value untouched: the system shifts until the same number is restored.
]

#shortcut-box("Which way does it go? Count, then decide")[
  + Write the equation, and *count the moles of gas* on each side.
  + More pressure → the side with *fewer* moles wins.
  + Less pressure → the side with *more* moles wins.
  + More heat → the *endothermic* direction wins.
  + Less heat → the *exothermic* direction wins.
  + Then check the sign of ΔH for the forward reaction, and remember that “exothermic” means heat on the right-hand side, as if it were a product.
]

// ============================================================================
== 5.5 Two Industrial Compromises

The Haber process and the contact process are the two equilibrium systems the syllabus names, and both are taught as *compromises*: the conditions that maximise the yield are not the conditions that make the reaction fast enough to be economic.

#table(
  columns: (1.3fr, 1.55fr, 1.55fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Process],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Conditions],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Catalyst],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why those conditions],
  ),

  [*Haber* — ammonia], [450 °C, 200 atm], [finely divided iron], [high pressure favours NH₃ (4 → 2 moles of gas); 450 °C is hot enough for a workable rate and cool enough for a fair yield; ammonia is removed by liquefaction],
  [*Contact* — sulphuric acid], [450 °C, 1–2 atm], [vanadium(V) oxide, V₂O₅], [2SO₂ + O₂ ⇌ 2SO₃ (3 → 2 moles, so pressure helps but the yield is already high); the temperature is chosen for the catalyst's activity],
)

#diagram-fig("diagrams/ch05_haber.svg",
  "The equilibrium yield of ammonia rises with pressure and falls with temperature. The industrial conditions of 450 °C and about 200 atm are chosen where the curve gives an economic yield at an acceptable rate.")

#concept-box("The compromise, said properly")[
  *Ammonia.* Low temperature gives the highest yield, but at a low temperature the rate is far too slow for a factory, so industry uses the highest temperature that still gives a workable yield — 450 °C. High pressure gives a higher yield *and* a faster rate, so the pressure is pushed as high as the plant can safely stand, about 200 atm. The catalyst is what makes 450 °C fast enough.

  *Sulphur trioxide.* The yield of SO₃ is already high at ordinary pressure, so the extra cost of high-pressure equipment is not justified. The temperature is a compromise between yield (which favours low) and the activity of the vanadium(V) oxide catalyst (which needs about 450 °C).
]

#trap-box("“The catalyst increases the yield” — never write it")[
  Every industrial process uses a catalyst for *speed*, not for *yield*. The yield is set by the equilibrium position, which depends on temperature and pressure alone.

  If an examiner asks why the catalyst is used, the answer is “to increase the rate at which equilibrium is reached, so that the process is economic at a temperature low enough to give a good yield”. Notice that the yield is produced by the *temperature*, and the catalyst is what makes that temperature affordable in time.
]

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: dynamic equilibrium, Le Chatelier, $K_c$ and the Haber compromise.", width: 100%)

#pagebreak()
== 5.6 Chapter 5 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + define a reversible reaction and give four examples;
  + state the five characteristics of dynamic equilibrium;
  + explain why “constant” does not mean “equal”;
  + state Le Chatelier's principle and apply it to all four stresses;
  + count moles of *gas*, ignoring solids and liquids;
  + write $K_c$ for a given equation, with the exponents equal to the coefficients;
  + state what changes the value of $K_c$ — temperature and nothing else;
  + explain the conditions of the Haber process as a compromise;
  + explain why the contact process does not use a high pressure;
  + state, in one sentence, what a catalyst does and does not do.
]


#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A reversible reaction settles into dynamic equilibrium when the forward and reverse rates become equal, so the concentrations stop changing while both reactions continue. Le Chatelier's principle says that a system answers a disturbance by opposing it: adding a reactant or removing a product shifts the equilibrium forward, raising the pressure shifts it toward the side with fewer gas molecules, and raising the temperature shifts it in the endothermic direction. The equilibrium constant puts the products over the reactants with the coefficients as powers, and only a temperature change alters its value. The Haber process is the syllabus's model of a compromise — 450 °C because a lower temperature would be too slow, 200 atm because pressure raises the yield, and an iron catalyst because the rate must be made economic — and the contact process makes the opposite pressure choice because its yield is already high without it.
  ]
]

== 5.7 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [At equilibrium, the concentrations of reactants and products], [are equal], [are constant], [are zero], [keep changing])
#mcq(2, [For N₂(g) + 3H₂(g) ⇌ 2NH₃(g), an increase in pressure shifts the equilibrium], [to the left], [to the right], [nowhere], [and stops the reaction])
#mcq(3, [For an exothermic reversible reaction, increasing the temperature shifts the equilibrium], [to the right], [to the left], [nowhere], [in both directions])
#mcq(4, [Adding a catalyst to a system at equilibrium], [increases the yield], [changes the position of equilibrium], [increases the rate of both reactions equally], [increases only the forward rate])

#answer-key-grid(("B", "B", "B", "C"))

#answer-notes((
  ("B", [at equilibrium both rates are equal, so the concentrations stay constant — they need not be equal to each other.]),
  ("B", [four moles of gas become two, so a rise in pressure favours the right-hand side, where there are fewer molecules.]),
  ("B", [an increase in temperature is opposed by the endothermic direction, which for an exothermic forward reaction is the reverse — to the left.]),
  ("C", [a catalyst lowers the activation energy of both directions by the same amount, so both rates rise and the position is unchanged.]),
))

#concept-box("Carry this into Chapter 6")[
  A metal dipped in a solution of its own ions is an equilibrium of the kind you have just met: atoms leaving the metal and ions returning to it at equal rates. The electrode potential of Chapter 6 is a measure of how far that equilibrium lies to one side, and every cell EMF is a difference between two such positions. Le Chatelier, in other words, is what makes a battery work — and what makes it go flat.
]

#include "drill_ch05.typ"
