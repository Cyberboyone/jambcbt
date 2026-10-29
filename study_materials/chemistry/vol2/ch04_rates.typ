#import "template.typ": *

#current-chapter.update("Chapter 4: Rates of Reaction")
#pagebreak()

#chapter-opener(
  4,
  "Rates of Reaction",
  subtitle: "Rate Measurement, Collision Theory, Concentration, Temperature, Surface Area and Pressure, Catalysts and Catalytic Action, and the Energy Profile of a Catalysed Reaction",
  syllabus-ref: "Sec. B • Topic 4",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Define the rate of a reaction and state its units.",
    "Measure the rate from the gradient of a concentration–time graph or a gas-volume graph.",
    "State the collision theory in full: collisions, sufficient energy, correct orientation.",
    "Explain the effect of concentration, pressure, surface area and temperature on the rate.",
    "Distinguish homogeneous from heterogeneous catalysis and give examples of each.",
    "Explain how a catalyst increases the rate without being used up.",
    "Sketch and label the energy profiles with and without a catalyst.",
    "Name the factors that do *not* change the rate, and say why.",
  ),
  hotspots: (
    "\\\"The rate is greatest at …\\\" — the steepest part of the graph, which is always the beginning.",
    "\\\"Why does powdered calcium carbonate react faster than a chip?\\\" — larger surface area, more collisions.",
    "\\\"The rate doubles for every 10 °C rise because …\\\" — far more molecules exceed $E_a$; the collision frequency alone would rise by only about 2 %.",
    "\\\"Which of these is a heterogeneous catalyst?\\\" — iron in the Haber process, platinum in a catalytic converter, manganese(IV) oxide in the decomposition of hydrogen peroxide.",
    "\\\"A catalyst does not change …\\\" — ΔH, the position of equilibrium, or the yield.",
  ),
  trap-summary: "Three slips. (1) Saying that a catalyst “shifts the equilibrium to the right”. It does not: it makes equilibrium arrive sooner and changes nothing about where it settles. (2) Saying that raising the temperature “lowers the activation energy”. It does not — it gives more molecules enough energy to clear an unchanged barrier. (3) Giving the rate no units, or the wrong ones: for a reaction in solution the rate is mol dm⁻³ s⁻¹, and for a gas collected over water it may be cm³ s⁻¹.",
)

// ============================================================================
== 4.1 What Rate Means

The *rate of reaction* is the change in concentration of a reactant or product per unit time. It always falls as the reaction proceeds, because the reactants are being used up.

#formula-box("Two ways to express the rate")[
  $"rate" = ("change in concentration") div ("time") quad "units: mol dm"^(-3) "s"^(-1)$
  #v(4pt)
  $"rate" = ("change in volume of gas") div ("time") quad "units: cm"^3 "s"^(-1)$
]

#concept-box("Reading a rate from a graph")[
  On a graph of concentration (or gas volume, or mass loss) against time:

  + the *rate at any instant* is the gradient of the tangent at that point;
  + the *average rate* between two times is the gradient of the chord;
  + the rate is *greatest at the start*, when the concentration is highest;
  + the rate is *zero* when the graph has flattened, because the reaction has finished.

  The single most common graph question is “at which point is the rate greatest?” — and the answer is always the beginning of the curve, where the tangent is steepest.
]

#diagram-fig("diagrams/ch04_rates.svg",
  "On the left, the volume of gas collected against time for three acid concentrations: the more concentrated the acid, the steeper the start, but all three finish at the same volume, because the same mass of carbonate was used. On the right, the rate itself against time falls steeply as the reactants are used up.")

// ============================================================================
== 4.2 Collision Theory

A reaction happens when particles collide. Not every collision produces a reaction, and the collision theory states the three conditions that must all hold.

#concept-box("The three conditions")[
  + The particles must *collide*.
  + They must collide with *enough energy* — at least the *activation energy*, $E_a$.
  + They must collide in the *right orientation*, so that the bond that must break is presented to the partner.
]

#diagram-fig("diagrams/ch04_maxwell.svg",
  "The Maxwell–Boltzmann distribution. Only molecules to the right of the activation energy can react on collision, and that area grows sharply as the temperature rises — which is why a modest warming speeds a reaction so much.")

#trap-box("“More collisions” is only half a mark")[
  A question asking *why* a change speeds up a reaction wants the whole chain: the change increases the *frequency* of collisions (or the *fraction* of collisions with enough energy), so more *effective* collisions occur per second, so the rate rises.

  Concentration, pressure and surface area change the *frequency*. Temperature changes the *energy*. A catalyst changes the *activation energy*. Naming which of the three it changes is what separates a full-mark answer from a half-mark one.
]

// ============================================================================
== 4.3 The Five Factors

#table(
  columns: (1.25fr, 2.1fr, 1.75fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Factor],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The sentence to write],
  ),

  [*Concentration*], [more particles in the same volume, so they meet more often], [“the frequency of collisions increases”],
  [*Pressure* (gases)], [the gas is compressed, so its particles are closer and collide more often], [“the particles are closer together, so collisions are more frequent”],
  [*Surface area*], [a powder exposes far more particles than a single lump], [“more particles are exposed to attack, so collisions are more frequent”],
  [*Temperature*], [the particles move faster and a much larger fraction exceeds $E_a$], [“more collisions have energy greater than the activation energy”],
  [*Catalyst*], [the reaction follows an alternative path with a lower $E_a$], [“a larger fraction of collisions is now effective”],
)

#concept-box("Why 10 °C doubles the rate")[
  A 10 °C rise raises the average speed — and therefore the collision frequency — by only about 2 %. But it raises the *fraction of molecules with energy above $E_a$* by a factor of about two, because that fraction depends exponentially on temperature.

  So the honest answer to “why does warming speed up a reaction?” is *not* “the particles collide more often”. It is “a much larger fraction of the collisions now carries enough energy to react”.
]

#worked-example(
  1,
  "Explaining a rate difference",
  tier: "UTME STANDARD",
  [Equal masses of calcium carbonate, one as a single lump and one as a powder, are added to equal volumes of the same dilute hydrochloric acid. Explain which reacts faster, and state one thing that is the same for both.],
  [
    *The powder reacts faster.* Powdering the carbonate exposes a much larger surface area, so many more carbonate particles are in contact with the acid at any instant, and collisions between acid particles and carbonate particles are far more frequent.

    *What is the same for both* is the *total volume of gas evolved* and the *final mass of gas*, because the same mass of calcium carbonate reacts in each case. Only the *rate* changes, not the *yield*.

    That second sentence is where marks are lost: the examiner is testing whether you know the difference between *how fast* and *how much*.
  ],
)

#worked-example(
  2,
  "The graph question, done properly",
  tier: "JAMB CHALLENGE",
  [A reaction produces 120 cm³ of gas, and the volume collected is 60 cm³ after 30 s and 90 cm³ after 60 s. Calculate (a) the average rate over the first 30 s, (b) the average rate between 30 s and 60 s, and (c) explain the difference.],
  [
    *(a)*
    $"rate" = 60 div 30 = 2.0 "cm"^3 "s"^(-1)$

    *(b)*
    $"rate" = (90 - 60) div 30 = 1.0 "cm"^3 "s"^(-1)$

    *(c) The rate has halved*, because in the second interval the reactants are less concentrated — a large fraction of them has already been used up — so collisions between reactant particles are less frequent. The rate continues to fall until the limiting reactant is exhausted, at which point the curve becomes horizontal and the rate is zero.

    Note that the *rate* falls while the *total volume* keeps rising: the graph is still going up, just less steeply.
  ],
)

// ============================================================================
== 4.4 Catalysts

A *catalyst* increases the rate of a reaction and is not used up in it. It works by providing an alternative route with a lower activation energy.

#table(
  columns: (1.35fr, 2.0fr, 1.85fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Examples],
  ),

  [*Homogeneous*], [the catalyst is in the *same phase* as the reactants], [aqueous acid catalysing esterification; chlorine radicals in the destruction of ozone],
  [*Heterogeneous*], [the catalyst is in a *different phase*, usually a solid with gaseous or liquid reactants], [iron in the Haber process; platinum in a catalytic converter; MnO₂ with hydrogen peroxide; vanadium(V) oxide in the contact process],
  [*Enzyme*], [a biological catalyst, highly specific], [amylase, catalase, pepsin],
)

#diagram-fig("diagrams/ch04_catalyst.svg",
  "A catalyst lowers the hump but not the levels. The activation energy falls on the catalysed route, so more collisions are effective; ΔH, which depends only on the start and finish, is unchanged.")

#concept-box("What a catalyst does NOT do")[
  + It does *not* change $Delta H$ — the reactants and products are the same, so the energy gap is the same.
  + It does *not* change the *position* of an equilibrium, or the *yield*.
  + It does *not* start a reaction that could not happen at all.
  + It is *not* used up, although it may be poisoned or physically changed.
]

#trap-box("Catalyst and equilibrium, once and for all")[
  A catalyst speeds up the forward *and* the reverse reaction *equally*. Both reach equilibrium sooner, and neither is favoured, so the equilibrium mixture is exactly the same as without the catalyst — it is simply reached in less time.

  The sentence to write: “A catalyst increases the rate at which equilibrium is attained but does not alter the position of equilibrium or the equilibrium yield.”
]

== 4.5 Measuring a Rate in the Laboratory

There are four standard ways to follow a reaction, and the choice depends on what changes.

#table(
  columns: (1.45fr, 2.05fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Follow],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Suitable for],
  ),

  [*Gas volume*], [collect the gas in a syringe or over water and read the volume against time], [metal + acid; carbonate + acid; peroxide decomposition],
  [*Mass loss*], [stand the flask on a balance and record the mass as the gas escapes], [carbonate + acid, where CO₂ leaves],
  [*Colour change*], [time how long a cross takes to disappear, or use a colorimeter], [sodium thiosulphate + acid (the “cross” experiment)],
  [*Titration*], [withdraw a sample at intervals, quench it, and titrate it], [iodine–propanone, or any slow reaction with a titratable species],
)

#concept-box("The clock method, with sodium thiosulphate")[
  Mix sodium thiosulphate solution with dilute hydrochloric acid over a black cross on white paper, and time how long the cross takes to vanish as the sulphur precipitate forms.

  $"Na"_2 "S"_2 "O"_3 "(aq)" + 2"HCl" "(aq)" -> 2"NaCl" "(aq)" + "S" "(s)" + "SO"_2 "(g)" + "H"_2 "O" "(l)"$

  $"rate" prop 1 div "time taken for the cross to disappear"$

  The experiment is repeated at different concentrations, and a graph of $1 div t$ against concentration is a straight line through the origin — the direct evidence that rate is proportional to concentration here.
]

// ============================================================================
== 4.6 Chapter 4 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + define the rate of reaction and give its units;
  + read a rate from the gradient of a tangent;
  + explain why the rate is greatest at the start;
  + state the three conditions of collision theory;
  + explain the effect of concentration, pressure, surface area and temperature correctly;
  + say why a 10 °C rise does more than double the collision frequency;
  + define a catalyst and distinguish homogeneous from heterogeneous catalysis;
  + sketch the catalysed and uncatalysed energy profiles on one diagram;
  + state three things a catalyst does *not* change;
  + name four laboratory methods of measuring a rate.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The rate of a reaction is the change in concentration per unit time, and it is read as the gradient of a concentration–time graph; it is greatest at the start and falls to zero as the reactants are used up. A reaction happens only when particles collide with at least the activation energy and in the right orientation. Increasing the concentration, the pressure or the surface area increases the *frequency* of collisions; raising the temperature increases the *fraction* of collisions with enough energy, which is why a 10 °C rise roughly doubles the rate although it barely changes how often molecules meet. A catalyst provides an alternative route of lower activation energy, so more collisions become effective; it does not change ΔH, does not shift an equilibrium, and is not used up. Rates are measured by gas volume, by mass loss, by a disappearing cross or by titration, and the method is chosen to match whatever changes as the reaction proceeds.
  ]
]

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: rate, collision theory, the four factors and catalysts.", width: 100%)

#pagebreak()
== 4.7 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [The rate of a reaction is greatest], [at the end], [at the start], [at the halfway point], [it is constant throughout])
#mcq(2, [Powdered calcium carbonate reacts faster than the same mass of marble chips with the same acid because the powder], [has a larger surface area], [is more concentrated], [has a lower activation energy], [is a catalyst])
#mcq(3, [A catalyst increases the rate of a reaction by], [raising the activation energy], [lowering the activation energy], [increasing ΔH], [shifting the equilibrium position])
#mcq(4, [Raising the temperature speeds up a reaction mainly because it], [lowers the activation energy], [increases the fraction of molecules with energy above the activation energy], [increases the concentration], [increases the collision frequency only])

#answer-key-grid(("B", "A", "B", "B"))

#answer-notes((
  ("B", [the concentration of the reactants is highest at the start, so collisions are most frequent there and the tangent is steepest.]),
  ("A", [powdering exposes a much larger surface area, so more particles are in contact with the acid and collisions are more frequent.]),
  ("B", [a catalyst offers an alternative pathway of lower activation energy, so more collisions become effective; ΔH and the equilibrium position are unchanged.]),
  ("B", [the temperature does not move $E_a$; it widens the energy distribution so that a far larger fraction of molecules exceeds it.]),
))

#include "drill_ch04.typ"
