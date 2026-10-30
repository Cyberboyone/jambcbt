#import "template.typ": *

#current-chapter.update("Chapter 6: Thermodynamics and Heat Engines")

#pagebreak()

#chapter-opener(
  6,
  "Thermodynamics and Heat Engines",
  subtitle: "Internal Energy, the First Law, the Four Processes on a pV Diagram, Work Done by a Gas, Heat Engines and Efficiency, the Second Law, and Refrigerators",
  syllabus-ref: "Sec. B • Heat 6",
  utme-weight: "3 Qs every year",
  running: "Thermodynamics and Heat Engines",
)

#focus-radar(
  objectives: (
    "Define internal energy and state the first law of thermodynamics.",
    "Use $Delta U = Q - W$ with the correct signs.",
    "Recognise isothermal, adiabatic, isobaric and isochoric processes, and compute the work in each.",
    "Read a pV diagram, and find the work done as the area under the curve.",
    "Compute the efficiency of a heat engine from $eta = W\/Q_1$.",
    "State the second law and explain what a refrigerator does.",
  ),
  hotspots: (
    "“The first law is …” — $Delta U = Q - W$, with $W$ the work done *by* the gas.",
    "“In an isothermal process …” — the temperature does not change, so $Delta U = 0$ and $Q = W$.",
    "“In an adiabatic process …” — no heat enters or leaves, so $Q = 0$ and $Delta U = -W$.",
    "“Work done at constant pressure is …” — $p Delta V$, the area of a rectangle on the pV diagram.",
    "“The efficiency of an engine that takes in 500 J and rejects 300 J …” — 40 %.",
  ),
  trap-summary: "Three slips. (1) Reversing the sign of $W$: the first law in this book is written $Delta U = Q - W$ with $W$ the work done *by* the gas, so a gas that expands and does work loses internal energy. (2) Thinking that an isothermal process involves no work: it involves no *change of internal energy*, and $Q = W$ can be large. (3) Believing that a more efficient engine could reach 100 %: the second law forbids it, whatever the engineering.",
)

// ============================================================================
== 6.1 Internal Energy and the First Law

Every gas has internal energy — the sum of the kinetic and potential energies of all its molecules. You cannot measure it directly, but you can always tell whether it has changed, because a change shows up as a change in temperature.

#concept-box("Internal energy")[
  The *internal energy* $U$ of a body is the total kinetic and potential energy of all its molecules. For an ideal gas there are no forces between the molecules, so the internal energy is entirely kinetic and depends only on the temperature.
]

Heat can change the internal energy, and work can change it too — a bicycle pump gets hot when you compress the air inside it, although no flame has come near. The first law is the accounting rule that covers both.

#formula-box("The first law of thermodynamics")[
  + *The law itself:* $Delta U = Q - W$.

  + $Q$ — heat added *to* the gas (positive when heat goes in),
  + $W$ — work done *by* the gas (positive when the gas expands),
  + $Delta U$ — the resulting change in internal energy.

  In words: heat in raises the internal energy, work out lowers it. A gas that expands without being heated does work at the expense of its own internal energy, and cools.
]

#concept-box("Work done by a gas")[
  At constant pressure, $ W = p Delta V $. On a pV diagram, the work is the *area under the curve* between the initial and final states — whatever the shape of the path.
]

#worked-example(
  1,
  "Heat in, work out",
  [A gas absorbs 800 J of heat and does 300 J of work on its surroundings. (a) What is the change in its internal energy? (b) If it had absorbed 800 J and done 900 J of work, what would have happened to its temperature?],
  [
    *(a)* $Delta U = Q - W = 800 - 300 = +500$ J. The internal energy rises by 500 J, so the gas warms.

    *(b)* $Delta U = 800 - 900 = -100$ J. The internal energy falls, so the gas *cools*, even though heat was flowing in — it did more work than the heat supplied, and the difference came out of its own internal energy.

    *Check.* Part (b) is the point of the sign convention: a gas can be warmed and still cool. Any answer that treats heat in as automatically meaning a temperature rise has missed the work term, and the bicycle pump is the everyday version — compress quickly and the air warms because the work is going in faster than the heat can escape.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 6.2 The Four Processes on a pV Diagram

A gas changing state traces a path on a pressure–volume diagram, and the four named paths are the ones the syllabus asks about.

#diagram-fig("diagrams/ch06_pv.svg",
  "The four paths on a pV diagram. The area under each curve is the work done by the gas along that path — different paths between the same two states do different amounts of work.", width: 100%)

#formula-box("The four processes, and what is zero in each")[
  + *Isothermal* — temperature constant, so $Delta U = 0$ and $Q = W$. The curve is a hyperbola, $p V = "constant"$.
  + *Adiabatic* — no heat enters or leaves, so $Q = 0$ and $Delta U = -W$. The gas cools as it expands, and the curve is steeper than the isothermal.
  + *Isobaric* (constant pressure) — $W = p Delta V$, and $Q = Delta U + p Delta V$.
  + *Isochoric* (constant volume) — $W = 0$, so $Q = Delta U$: all the heat goes into internal energy.
]

The adiabatic curve being steeper than the isothermal one is a fact worth remembering in words: an expansion always cools a gas, but an *adiabatic* expansion cools it more, because no heat can flow in to make up the difference. That is why a compressed gas cools so sharply when it is released — the spray from an aerosol can, or the cold of a deodorant on the skin.

#trap-box("Isothermal does not mean no work")[
  An isothermal process keeps the temperature constant, which means the internal energy does not change — it does *not* mean nothing is happening. A gas expanding isothermally does work and absorbs exactly the same amount of heat, so $Q = W$, and both can be large. The wrong answer in a multiple-choice question is usually “no heat is exchanged”, which is the definition of the *adiabatic* process.
]

#worked-example(
  2,
  "Work done at constant pressure",
  [A gas at a pressure of $1.0 times 10^5$ Pa expands from 200 cm³ to 500 cm³ at constant pressure. Find (a) the work done by the gas, and (b) the heat supplied if the internal energy rises by 60 J.],
  [
    *(a)* $Delta V = (500 - 200)$ cm³ $= 300 times 10^(-6)$ m³ $= 3.0 times 10^(-4)$ m³.

    $W = p Delta V = 1.0 times 10^5 times 3.0 times 10^(-4) = 30$ J.

    *(b)* $Q = Delta U + W = 60 + 30 = 90$ J.

    *Check.* The heat supplied must be larger than the rise in internal energy, because the gas did work as well — 90 J in, 60 J stored and 30 J spent. The units are the check that matters here: 300 cm³ is $3.0 times 10^(-4)$ m³, not $3.0 times 10^(-2)$, and a candidate who forgets to convert gets 3000 J, which is a hundred times too big.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 6.3 Heat Engines and Efficiency

A heat engine is a device that takes heat from a hot source, converts some of it into work, and rejects the rest to a cold sink. Every engine in the syllabus — the steam engine, the petrol engine, the diesel engine — is the same diagram with different working substances.

#diagram-fig("diagrams/ch06_engine.svg",
  "A heat engine in one picture: Q₁ in from the hot source, W out as work, Q₂ out to the cold sink. The first law says W = Q₁ − Q₂, and the efficiency says how much of Q₁ that is.", width: 100%)

#formula-box("Efficiency, and why it is never 100 %")[
  + *Efficiency:* $eta = W \/ Q_1 = (Q_1 - Q_2) \/ Q_1 = 1 - Q_2 \/ Q_1$.

  An engine that takes in 500 J and rejects 300 J does 200 J of work and is 40 % efficient. The rejected 300 J is not a fault in the design — the second law requires it.
]

#concept-box("The second law of thermodynamics")[
  Heat flows spontaneously from a hotter body to a colder one, never the other way on its own. No engine can convert all the heat it receives into work: some must always be rejected to a colder place. A engine with a cold sink at absolute zero would be the only one that could reach 100 %, and absolute zero cannot be reached.
]

#worked-example(
  3,
  "An engine's books",
  [A heat engine takes in 2000 J from a hot source and rejects 1500 J to a cold sink in each cycle. Find (a) the work done per cycle and (b) the efficiency. (c) If the engine runs at 10 cycles per second, what is its power output?],
  [
    *(a)* $W = Q_1 - Q_2 = 2000 - 1500 = 500$ J.

    *(b)* $eta = W \/ Q_1 = 500\/2000 = 0.25$, or 25 %.

    *(c)* $P = W times f = 500 times 10 = 5000$ W = 5.0 kW.

    *Check.* The efficiency must be less than 1 and the work must be less than the heat in — both are. And the power checks against the sizes: 5 kW from a fuel input of 20 kW is about right for a small generator. A candidate who divides 2000 by 500 and reports 400 % has inverted the fraction, which is the commonest error in efficiency questions.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 6.4 Refrigerators and the Reversal

Run a heat engine backwards and you have a refrigerator: work is supplied to move heat from a cold place to a hot one, against its natural direction.

#diagram-fig("diagrams/ch06_fridge.svg",
  "The refrigerator in one picture: work is supplied to move heat from a cold cabinet to a warm room, against its natural direction. The room receives Q₂ + W, which is why an open fridge door warms the kitchen.", width: 92%)

#concept-box("The refrigerator")[
  A *refrigerator* removes heat $Q_2$ from a cold region, uses work $W$ from a compressor, and rejects heat $Q_1 = Q_2 + W$ to the room. Its performance is measured by the *coefficient of performance*, $Q_2 \/ W$, which can be greater than 1 — the fridge moves more heat than the work it is given, because it is moving heat, not creating it.
]

That is why an open refrigerator door does not cool a kitchen: the fridge takes heat out of its own cabinet and dumps it, plus the compressor's work, into the room. The net effect is to warm the room.

#trap-box("A refrigerator is not an engine run on nothing")[
  The compressor must be driven — by mains electricity, in practice. The heat delivered to the room is always larger than the heat taken from the food, by exactly the work supplied, and the first law is the reason. An answer that claims a fridge can cool a room by being left open has the arrows pointing both ways.
]

#worked-example(
  4,
  "A refrigerator's coefficient of performance",
  [A refrigerator extracts 600 J of heat from its cabinet per cycle, using 200 J of electrical work. Find (a) the heat rejected to the room and (b) the coefficient of performance.],
  [
    *(a)* $Q_1 = Q_2 + W = 600 + 200 = 800$ J.

    *(b)* Coefficient of performance $= Q_2 \/ W = 600\/200 = 3.0$.

    *Check.* The heat rejected must exceed the heat extracted, by exactly the work — and it does, 800 against 600. The performance figure of 3.0 is typical of a domestic fridge, and it is larger than 1 because the machine is moving energy, not manufacturing it. That is why “efficiency” is not the right word here, and why examiners use coefficient of performance.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "A complete cycle",
  [A gas is taken through a cycle in which it absorbs 900 J at constant volume, then expands at constant pressure doing 400 J of work, then is cooled at constant volume, and finally is compressed at constant pressure with 100 J of work done *on* it. Find (a) the net work done per cycle, (b) the net heat absorbed per cycle, and (c) the efficiency.],
  [
    For a complete cycle the internal energy returns to its starting value, so $Delta U = 0$ and therefore $Q = W$.

    *(a)* Net work = work done by the gas − work done on it = $400 - 100 = 300$ J.

    *(b)* Net heat absorbed must equal the net work: 300 J (the heat absorbed is 900 J, so the heat rejected is 600 J).

    *(c)* $eta = W_"net" \/ Q_"in" = 300\/900 = 0.33$, or 33 %.

    *Check.* The engine takes in heat in one part of the cycle and rejects it in another; the efficiency compares the *net* work with the heat supplied in the parts where heat goes in, never with the net heat. That distinction — $Q_1$ is the heat absorbed, not the net heat — is what separates the full-mark answer from the arithmetic that happens to work.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: thermodynamics and heat engines.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Thermodynamics is bookkeeping. A gas holds internal energy — for an ideal gas, just the kinetic energy of its molecules, so a function of temperature alone — and the first law says that energy changes only by heat going in or work going out: $Delta U = Q - W$. On a pV diagram the work is the area under the path, which is why the same two states reached by different routes cost different amounts of heat: heat and work are path-dependent, internal energy is not. Four paths are named and each has something set to zero — isothermal: $Delta U = 0$; adiabatic: $Q = 0$; isobaric: $W = p Delta V$; isochoric: $W = 0$ — and every gas question is one of them. A heat engine takes $Q_1$ from a hot source, does work, and rejects $Q_2$ to a cold sink, with $W = Q_1 - Q_2$ and efficiency $1 - Q_2\/Q_1$; it can never be 100 %, because the second law insists that some heat is always rejected. Run the machine backwards and you have a refrigerator, which is why a fridge needs a compressor and why an open fridge door warms the kitchen rather than cooling it.
  ]
]

== 6.5 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [The first law of thermodynamics may be written as], [$Delta U = Q + W$], [$Delta U = Q - W$], [$Q = Delta U + T$], [$W = Delta U + Q$])
#mcq(2, [In an isothermal expansion of an ideal gas], [the internal energy rises], [the heat absorbed equals the work done], [no heat is exchanged], [the pressure stays constant])
#mcq(3, [A heat engine takes in 800 J and rejects 600 J per cycle. Its efficiency is], [20 %], [25 %], [33 %], [75 %])
#mcq(4, [The second law of thermodynamics implies that], [an engine can convert all its heat into work], [some heat must always be rejected to a colder body], [heat can flow from cold to hot on its own], [efficiency depends only on the fuel])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [$Delta U = Q - W$, with $W$ the work done *by* the gas. The sign convention must be stated, because some textbooks write $Q + W$ with $W$ defined as work done on the gas.]),
  ("B", [an isothermal process has $Delta U = 0$, so the first law gives $Q = W$: the heat absorbed is entirely converted into work.]),
  ("B", [$W = 800 - 600 = 200$ J and $eta = 200\/800 = 0.25$, so 25 %. Dividing by the rejected heat gives 33 %, which is the trap.]),
  ("B", [no engine is 100 % efficient; some heat must always be rejected to a colder place, which is the practical content of the second law.]),
))

#chapter-checklist("Before you leave Chapter 6", (
  [Define internal energy and state the first law with the sign convention you are using.],
  [Say what is zero in each of the four named processes.],
  [Compute the work done at constant pressure, and find work as the area under a pV path.],
  [Compute the efficiency of an engine from the heat taken in and the heat rejected.],
  [State the second law, and say why 100 % efficiency is impossible.],
  [Explain why an open refrigerator door warms a kitchen.],
))

#concept-box("That is the volume")[
  Six chapters have followed heat from a thermometer to a turbine. Temperature gave the scale and the instrument; expansion gave the first measurable consequence; conduction, convection and radiation carried the energy from place to place; calorimetry and latent heat measured how much it takes to warm, melt and boil; the gas laws tied pressure, volume and temperature together; and thermodynamics turned the whole account into work. Everything in the back of the book — the two mocks, the 120-question bank, the twelve traps and the formula map — is built out of these six chapters, and the six-week plan in Appendix G is built out of them too.
]

#include "drill_ch06.typ"
