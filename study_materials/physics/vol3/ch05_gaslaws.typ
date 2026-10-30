#import "template.typ": *

#current-chapter.update("Chapter 5: The Gas Laws and the Kinetic Theory")

#pagebreak()

#chapter-opener(
  5,
  "The Gas Laws and the Kinetic Theory",
  subtitle: "Boyle's Law, Charles' Law, the Pressure Law, the General Gas Equation, the Ideal Gas Law, the Kinetic Theory of Gases, Brownian Motion and Diffusion",
  syllabus-ref: "Sec. B • Heat 5",
  utme-weight: "4 Qs every year",
  running: "The Gas Laws and the Kinetic Theory",
)

#focus-radar(
  objectives: (
    "State and use Boyle's law, Charles' law and the pressure law.",
    "Convert every temperature to kelvin before substituting — every time.",
    "Combine the three into $p_1 V_1 \/ T_1 = p_2 V_2 \/ T_2$ and into $p V = n R T$.",
    "Quote the assumptions of the kinetic theory and use $p V = 1/3 N m c^2$.",
    "Relate temperature to the average kinetic energy, $1/2 m c^2 = 3/2 k T$.",
    "Explain Brownian motion and diffusion as evidence for molecular motion.",
  ),
  hotspots: (
    "“A gas at 27 °C is heated to 327 °C at constant pressure. Its volume becomes …” — twice, because 300 K doubles to 600 K.",
    "“pV = constant” is Boyle's law, at constant *temperature*, not constant volume.",
    "“The average kinetic energy of gas molecules depends only on …” — the kelvin temperature.",
    "“One mole of any gas at s.t.p. occupies …” — 22.4 dm³.",
    "“Brownian motion is evidence that …” — molecules of the fluid are in constant random motion.",
  ),
  trap-summary: "Three slips. (1) Putting 27 into $V \/ T$ instead of 300: the gas laws are written in kelvin, and a Celsius temperature gives an answer that is wrong by a factor, not by a few per cent. (2) Using the general gas equation with the volumes in different units — cm³ and dm³ in the same equation cancel only if they are the same unit, so keep one unit throughout. (3) Saying that the pressure of a gas rises because the molecules get bigger: the molecules are the same size, but they move faster and hit the walls harder and more often.",
)

// ============================================================================
== 5.1 Boyle's Law

Squeeze a sealed syringe and the gas inside gets harder to push — the pressure rises as the volume falls. Robert Boyle measured the relationship in 1662 and found it beautifully simple.

#concept-box("Boyle's law")[
  For a fixed mass of gas at *constant temperature*, the pressure is inversely proportional to the volume — $p V = "constant"$, or, between two states, $p_1 V_1 = p_2 V_2$.
]

#diagram-fig("diagrams/ch05_boyle.svg",
  "Boyle's law drawn twice: pressure against volume is a hyperbola, and pressure against 1/volume is a straight line through the origin. The second graph is the one that proves the law.", width: 100%)

The straight-line version matters. A curve through experimental points can be fitted by many equations, but a straight line through the origin is a much stronger claim — it says the relationship is exactly inverse, and it is the graph an examiner expects you to describe when asked how Boyle's law can be verified.

*Why the temperature must be constant.* If the gas warms as it is compressed, the pressure rises for two reasons at once and the inverse relation disappears. That is why the real experiment is done in a tube surrounded by water at room temperature, and why the phrase “at constant temperature” is part of the law, not a decoration.

#trap-box("Boyle is the constant-temperature law")[
  Three laws, three quantities held fixed: Boyle holds temperature, Charles holds pressure, and the pressure law holds volume. Candidates who remember “pV = constant” but not *when* will apply it to a gas being heated at constant pressure and be wrong. In the general equation the constant is the one that is not mentioned.
]

#worked-example(
  1,
  "Compressing a gas at constant temperature",
  [A gas at a pressure of $2.0 times 10^5$ Pa occupies 300 cm³. It is compressed to 100 cm³ at constant temperature. Find the new pressure.],
  [
    Boyle's law: $p_1 V_1 = p_2 V_2$.

    $p_2 = p_1 V_1 \/ V_2 = (2.0 times 10^5 times 300) \/ 100 = 6.0 times 10^5$ Pa.

    *Check.* The volume has been divided by three, so the pressure should be multiplied by three: $3 times 2.0 times 10^5 = 6.0 times 10^5$ Pa. In an inverse relationship, whatever happens to one quantity happens the opposite way to the other — and the units of volume cancel, which is why cm³ can be left as cm³ as long as both volumes are in the same unit.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 5.2 Charles' Law and the Pressure Law

Warm a balloon and it swells; heat a sealed can and it bursts. The first is Charles' law and the second is the pressure law, and both of them only behave simply if the temperature is measured in kelvin.

#concept-box("Charles' law and the pressure law")[
  *Charles' law:* for a fixed mass of gas at *constant pressure*, the volume is directly proportional to the absolute temperature: $V \/ T = "constant"$.

  *Pressure law (Gay-Lussac):* for a fixed mass of gas at *constant volume*, the pressure is directly proportional to the absolute temperature: $p \/ T = "constant"$.
]

#diagram-fig("diagrams/ch05_charles.svg",
  "The volume of a fixed mass of gas at constant pressure, against Celsius temperature. The line is straight, and every gas line — whatever the gas — meets the axis at −273 °C.", width: 92%)

The fact that the line meets the temperature axis at −273 °C is the reason the kelvin scale exists. On the Kelvin scale the same data gives a line through the origin, and a line through the origin is the statement “$V$ is proportional to $T$”. In Celsius the line is straight but it does not pass through the origin, and the constant of proportionality has an awkward offset of 273.

#formula-box("The three laws and their combined form")[
  + Boyle (constant $T$): $p V = "constant"$
  + Charles (constant $p$): $V \/ T = "constant"$
  + Pressure law (constant $V$): $p \/ T = "constant"$
  + *Combined law* (none held fixed): $(p_1 V_1) \/ T_1 = (p_2 V_2) \/ T_2$

  Every gas-law question in the syllabus is one of these four lines with numbers in it. Decide which quantity is held fixed, then use the line that does not contain it.
]

#worked-example(
  2,
  "Heating a gas at constant pressure",
  [A gas occupies 300 cm³ at 27 °C. It is heated to 127 °C at constant pressure. Find its new volume.],
  [
    Temperatures in kelvin: $T_1 = 300$ K, $T_2 = 400$ K.

    Charles' law: $V_2 = V_1 T_2 \/ T_1 = 300 times 400 \/ 300 = 400$ cm³.

    *Check.* The kelvin temperature has gone up by a third, so the volume should go up by a third: $300 times 4\/3 = 400$ cm³. Notice how different the answer would be if the Celsius temperatures had been used: $300 times 127\/27 = 1411$ cm³, which is not merely a little wrong but absurd — the gas cannot quadruple its volume for a hundred-degree rise at constant pressure. The sanity check is the size of the answer.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 5.3 The General Gas Equation and the Ideal Gas Law

Real questions rarely hold one quantity fixed for the whole process. The general gas equation handles all three at once, and if the amount of gas is known as well, the ideal gas law gives the answer in moles.

#formula-box("The two equations that cover the chapter")[
  + *General gas equation* (fixed mass): $(p_1 V_1) \/ T_1 = (p_2 V_2) \/ T_2$ — all three quantities may change.
  + *Ideal gas law* (a known number of moles): $p V = n R T$.

  Here $n$ is in moles, $T$ in kelvin, and $R = 8.31$ J mol⁻¹ K⁻¹. At s.t.p. (273 K and $1.01 times 10^5$ Pa) one mole of any gas occupies 22.4 dm³.
]

#concept-box("The ideal gas")[
  An *ideal gas* is one that obeys $p V = n R T$ exactly at every temperature and pressure. Its molecules are treated as point masses with no forces between them except during collisions, and the collisions are perfectly elastic. Real gases approach this behaviour at low pressure and high temperature, and depart from it when the molecules are close enough to attract each other or to take up a noticeable fraction of the volume.
]

#worked-example(
  3,
  "All three quantities changing",
  [A gas has a pressure of $1.0 times 10^5$ Pa, a volume of 200 cm³ and a temperature of 27 °C. It is compressed to 100 cm³ while being heated to 127 °C. Find its new pressure.],
  [
    $T_1 = 300$ K and $T_2 = 400$ K.

    From the combined equation, $p_2 = p_1 V_1 T_2 \/ (V_2 T_1) = (1.0 times 10^5 times 200 times 400) \/ (100 times 300)$.

    $p_2 = 1.0 times 10^5 times 2 times 4\/3 = 2.67 times 10^5$ Pa.

    *Check.* Two effects push the pressure in the same direction: halving the volume doubles it, and raising the kelvin temperature by a third multiplies it by 4/3 again, so $2 times 4\/3 = 2.67$ times the original. Working out the two factors separately is the safest way to set up the combined equation, and it catches the slip of putting $V_1$ and $V_2$ the wrong way up.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "How many moles, and how many litres",
  [A cylinder contains 0.50 mol of a gas at 27 °C and a pressure of $1.0 times 10^5$ Pa. Find (a) the volume of the gas, and (b) the volume it would occupy at s.t.p.],
  [
    *(a)* $V = n R T \/ p = (0.50 times 8.31 times 300) \/ (1.0 times 10^5) = 1246.5 \/ 10^5 = 1.25 times 10^(-2)$ m³ $= 12.5$ dm³.

    *(b)* At s.t.p. one mole occupies 22.4 dm³, so half a mole occupies 11.2 dm³.

    *Check.* Part (b) should be *smaller* than part (a), because s.t.p. is 273 K and the gas was at 300 K — cooling at constant pressure shrinks it, and the ratio $11.2\/12.5 = 0.896$ is close to $273\/300 = 0.91$. The small difference comes from using the rounded molar volume 22.4 rather than computing $R T \/ p$ exactly. Both routes are accepted; the check is that the two answers are consistent to two significant figures.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 5.4 The Kinetic Theory

The gas laws describe *what* a gas does. The kinetic theory explains *why* — by treating the gas as a very large number of very small particles in rapid random motion.

#concept-box("The assumptions of the kinetic theory")[
  + A gas consists of a very large number of identical molecules, small compared with the distances between them.
  + The molecules are in constant, rapid, random motion, moving in straight lines until they collide.
  + Collisions between molecules, and with the walls, are perfectly *elastic*: no kinetic energy is lost.
  + There are no forces between the molecules except during the instant of a collision.
  + The volume of the molecules themselves is negligible compared with the volume of the container.
  + The time spent in a collision is negligible compared with the time between collisions.
]

Those six assumptions are what turns a swarm of molecules into an equation. The derivation that follows is short enough to reproduce in an examination, and examiners do ask for it.

#formula-box("The result of the kinetic theory")[
  + From the collisions: $p V = 1/3 N m c^2$, where $c^2$ is the mean square speed.
  + Comparing that with the ideal gas law: $1/2 m c^2 = 3/2 k T$, with $k = 1.38 times 10^(-23)$ J K⁻¹.

  So the temperature of a gas *is* a measure of the average kinetic energy of its molecules, and the average depends only on the kelvin temperature — not on what the gas is.
]

#diagram-fig("diagrams/ch05_kinetic.svg",
  "Pressure is molecules hitting a wall. Each collision reverses a molecule's momentum, and the rate of change of momentum over the whole wall is the force — hence the one-line derivation of $p V = 1\/3 N m c^2$.", width: 100%)


*Why the pressure rises when a gas is heated at constant volume.* The molecules move faster, so each one arrives at the wall with more momentum and reverses more of it, *and* it arrives more often. Both effects increase the force on the wall, and the pressure is that force per unit area. Nothing about the size of the molecules has changed.

#trap-box("The average kinetic energy depends on temperature alone — but the average speed does not")[
  At the same temperature, a hydrogen molecule and an oxygen molecule have the same average kinetic energy. Since $1/2 m c^2$ is the same, the lighter molecule must have the larger speed — and it does, by a factor of four, because oxygen is sixteen times heavier. This is why hydrogen escapes from the top of the atmosphere and oxygen does not, and why a light gas leaks out of a container faster than a heavy one.
]

#worked-example(
  5,
  "The speed of an oxygen molecule",
  [Find (a) the root-mean-square speed of oxygen molecules at 300 K, taking the molar mass of oxygen as 0.032 kg mol⁻¹, and (b) the average kinetic energy of one molecule at that temperature. Use $R = 8.31$ J mol⁻¹ K⁻¹ and $k = 1.38 times 10^(-23)$ J K⁻¹.],
  [
    *(a)* For one mole, $p V = R T$ and $p V = 1/3 N_A m c^2$, so $c_"rms" = sqrt(3 R T \/ M)$.

    $c_"rms" = sqrt((3 times 8.31 times 300) \/ 0.032) = sqrt(2.34 times 10^5) = 484$ m s⁻¹.

    *(b)* $1/2 m c^2 = 3\/2 k T = 1.5 times 1.38 times 10^(-23) times 300 = 6.21 times 10^(-21)$ J.

    *Check.* 484 m s⁻¹ is faster than the speed of sound in air (about 340 m s⁻¹), and the molecules of air are indeed moving faster than the sound they carry — sound is the disturbance passing through them, not the molecules themselves. For (b), check against (a): $1/2 m c^2$ with $m = 0.032\/6.02 times 10^23 = 5.3 times 10^(-26)$ kg gives $0.5 times 5.3 times 10^(-26) times 484^2 = 6.2 times 10^(-21)$ J, exactly as the temperature formula says. Two routes, one number.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 5.5 Evidence: Brownian Motion and Diffusion

The kinetic theory would be a tidy piece of mathematics if nothing could be seen. Two observations make it a description of something real.

#concept-box("Brownian motion and diffusion")[
  *Brownian motion* is the ceaseless, random, zig-zag movement of small particles (smoke grains, pollen) suspended in a fluid. It is caused by the unequal, random impacts of the fluid's molecules on the particle — and it is the most direct evidence that molecules themselves are in continuous random motion.

  *Diffusion* is the spreading of one substance through another, from a region of higher concentration to one of lower concentration, as a result of the random motion of the particles.
]

Smoke in a sealed cell is the classic demonstration: the grains jump this way and that, never settling, and the smaller the grain the livelier the motion. A grain a micrometre across is hit by millions of molecules a second, and the imbalance between the hits on its two sides is what moves it.

*Diffusion in gases and in liquids.* Open a bottle of perfume at one end of a room and the smell arrives at the other, slowly, without any draught. The molecules have spread by random motion. The rate of diffusion is faster for lighter molecules and faster at higher temperature, because both mean faster molecules — which is the same fact as the kinetic-energy result above, seen from the outside.

#formula-box("What diffusion tells you")[
  + It happens in solids, liquids and gases, but fastest in gases, because the molecules have the most freedom to move.
  + It is faster at higher temperature, because the molecules move faster.
  + Lighter molecules diffuse faster than heavier ones at the same temperature, because at the same kinetic energy the lighter one has the greater speed.
]

*How the two pieces of evidence are examined.* Brownian motion is asked as "what does it show?" — the answer is that the *fluid's* molecules are in continuous random motion, not the smoke's. Diffusion is asked as "why is it faster when warm?" — the answer is that the molecules move faster, so the same random walk covers ground more quickly. Both questions are one sentence each, and both are worth remembering word for word.

#shortcut-box("Two answers worth learning by heart")[
  + *Brownian motion shows* that the molecules of the fluid are in constant random motion, and that they are small enough to be knocked about by individual molecular impacts.
  + *Diffusion shows* the same thing from outside: a substance spreads from where it is concentrated to where it is not, without stirring and without a draught, because its own molecules move at random.
]

// ============================================================================
#diagram-fig("diagrams/ch05_maxwell.svg",
  "The Maxwell–Boltzmann distribution of molecular speeds. Raising the temperature does not simply shift the curve — it widens it, so a few molecules always have enough energy to escape, evaporate or react.", width: 92%)

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: the gas laws and the kinetic theory.", width: 94%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Three experiments, three laws, one equation. Hold the temperature and $p V$ is constant (Boyle); hold the pressure and $V \/ T$ is constant (Charles); hold the volume and $p \/ T$ is constant (the pressure law). Every one of them is written in kelvin, because the graphs only pass through the origin on the absolute scale — and every gas line, extended backwards, meets the axis at −273 °C, which is how absolute zero was found in the first place. Put the three together and you get $(p_1 V_1)\/T_1 = (p_2 V_2)\/T_2$, and if you know how much gas there is you get $p V = n R T$, with one mole occupying 22.4 dm³ at s.t.p. The kinetic theory then explains the whole thing: a gas is a swarm of molecules in random motion, pressure is their bombardment of the walls, and $p V = ⅓ N m c^2$ follows in three lines. Comparing that with $p V = n R T$ shows that temperature *is* the average kinetic energy, $½ m c^2 = 3/2 k T$ — which is why a hydrogen molecule and an oxygen molecule at the same temperature have the same energy but very different speeds. Brownian motion and diffusion are the visible proof that all of this is happening.
  ]
]

== 5.6 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [A gas occupies 200 cm³ at a pressure of $1.0 times 10^5$ Pa. At constant temperature, its volume at $2.0 times 10^5$ Pa is], [50 cm³], [100 cm³], [200 cm³], [400 cm³])
#mcq(2, [At constant pressure, the volume of a fixed mass of gas is directly proportional to], [its Celsius temperature], [its kelvin temperature], [the square of its temperature], [the pressure])
#mcq(3, [A gas at 27 °C is heated at constant volume to 327 °C. Its pressure becomes], [half its original value], [the same], [twice its original value], [four times its original value])
#mcq(4, [Which of the following is an assumption of the kinetic theory of gases?], [the molecules are at rest between collisions], [collisions between molecules are perfectly elastic], [the molecules attract one another strongly], [the volume of the molecules is a large fraction of the container])

#answer-key-grid(("B", "B", "C", "B"))

#answer-notes((
  ("B", [Boyle's law: doubling the pressure halves the volume, so 200 cm³ becomes 100 cm³.]),
  ("B", [the direct proportion holds only on the absolute scale, which is why the gas laws are written in kelvin.]),
  ("C", [27 °C is 300 K and 327 °C is 600 K; at constant volume the pressure is proportional to the kelvin temperature, so it doubles.]),
  ("B", [elastic collisions are one of the assumptions. The others listed — molecules at rest, strong attraction, large molecular volume — are all contrary to the model.]),
))

#chapter-checklist("Before you leave Chapter 5", (
  [State Boyle's, Charles' and the pressure law, each with the quantity it holds constant.],
  [Convert to kelvin before substituting, and say why the gas laws require it.],
  [Use $(p_1 V_1)\/T_1 = (p_2 V_2)\/T_2$ without being told the formula.],
  [Use $p V = n R T$ and quote the molar volume at s.t.p.],
  [List four assumptions of the kinetic theory and write $p V = 1/3 N m c^2$.],
  [State what Brownian motion and diffusion prove about molecules.],
))

#concept-box("Carry this into Chapter 6")[
  Everything so far has been about heat passing *in* or *out* — but a gas can also *do work* while it is being heated, by pushing a piston. Chapter 6 is the accounting: the first law says the heat you put in either raises the internal energy or leaves as work, and the pV diagram makes that visible as area. It is the chapter that explains why a car engine cannot turn all its fuel's heat into motion, and why a refrigerator has to be plugged in.
]

#include "drill_ch05.typ"
