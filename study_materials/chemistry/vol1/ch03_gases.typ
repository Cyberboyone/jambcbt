#import "template.typ": *

#current-chapter.update("Chapter 3: Gases and Kinetic Theory")
#pagebreak()

#chapter-opener(
  3,
  "Gases and Kinetic Theory",
  subtitle: "Boyle's, Charles' and the Pressure Law, the Combined and Ideal Gas Equations, Molar Volume, Dalton's Law of Partial Pressures, Diffusion and Graham's Law, and the Kinetic Theory of Gases",
  syllabus-ref: "Sec. A • Topic 3",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "State Boyle's law, Charles' law and the pressure law, and write each as an equation.",
    "Use the combined gas equation to change the conditions of a fixed mass of gas.",
    "Use $P V = n R T$ and the molar volume at s.t.p. and r.t.p.",
    "State Dalton's law of partial pressures and allow for water vapour.",
    "State Graham's law of diffusion and use it to compare two gases.",
    "State the assumptions of the kinetic theory and use them to explain pressure and temperature.",
  ),
  hotspots: (
    "“A gas occupies 300 cm³ at 2 atm …” — $P_1 V_1 = P_2 V_2$ at constant temperature.",
    "“The temperature is raised from 27 °C to 127 °C …” — convert *both* to kelvin before dividing.",
    "“One mole of a gas at s.t.p. occupies …” — 22.4 dm³. At r.t.p. it is 24 dm³.",
    "“Which gas diffuses fastest?” — the lightest one, since rate is proportional to $1 div sqrt(M_r)$.",
    "“The total pressure of a mixture …” — add the partial pressures.",
  ),
  trap-summary: "Two traps carry almost every mark in this chapter. (1) *Celsius in a gas-law ratio.* Charles' law only works with absolute temperature, so 27 °C is 300 K, not 27 — and doubling 27 °C to 54 °C certainly does not double the volume. (2) *Mixing up which law applies.* If the question fixes the temperature, use $P_1 V_1 = P_2 V_2$; if it fixes the pressure, use $V_1 div T_1 = V_2 div T_2$; if it fixes the volume, use $P_1 div T_1 = P_2 div T_2$; if nothing is fixed, use $P_1 V_1 div T_1 = P_2 V_2 div T_2$.",
)

// ============================================================================
// SECTION 3.1
// ============================================================================
== 3.1 The Three Gas Laws

A fixed mass of gas has three measurable quantities — pressure, volume and temperature — and every gas law describes what happens when one of them is held constant.

#concept-box("The three laws in one place")[
  *Boyle's law* (T constant): the volume of a fixed mass of gas is inversely proportional to its pressure. \
  $P_1 V_1 = P_2 V_2$ — halve the volume and the pressure doubles. \
  *Charles' law* (P constant): the volume is directly proportional to the absolute temperature. \
  $V_1 div T_1 = V_2 div T_2$ — double the kelvin temperature and the volume doubles. \
  *Pressure law* (V constant): the pressure is directly proportional to the absolute temperature. \
  $P_1 div T_1 = P_2 div T_2$ — heat a sealed can and the pressure rises.
]

#diagram-fig("diagrams/ch03_gaslaws.svg",
  "The two laws that are examined as graphs. Boyle's law is a hyperbola because the product $P V$ stays constant; Charles' law is a straight line through the origin only when the temperature axis is in kelvin.")

*Absolute temperature* is temperature measured from absolute zero, and the unit is the kelvin. Convert with $T("K") = theta("°C") + 273$. At 0 K (−273 °C) the particles of a gas would have no kinetic energy at all, which is why the volume extrapolates to zero there — and why a volume cannot be divided by a Celsius temperature.

#worked-example(
  1,
  "Boyle's law, then the combined equation",
  tier: "UTME STANDARD",
  [(a) A gas occupies 300 cm³ at a pressure of 2 atm. What is its volume at 3 atm, the temperature staying constant? (b) A gas occupies 300 cm³ at 27 °C and 750 mmHg. What volume does it occupy at s.t.p.?],
  [
    *(a)* Temperature constant, so $P_1 V_1 = P_2 V_2$. \
    $V_2 = (P_1 V_1) div P_2 = (2 times 300) div 3 = 200$ cm³. The pressure rose by a factor of 1.5, so the volume fell by 1.5.

    *(b)* Three quantities change, so use $P_1 V_1 div T_1 = P_2 V_2 div T_2$. \
    $T_1 = 27 + 273 = 300$ K, $T_2 = 273$ K, $P_1 = 750$ mmHg, $P_2 = 760$ mmHg. \
    $V_2 = V_1 times (P_1 div P_2) times (T_2 div T_1) = 300 times (750 div 760) times (273 div 300) = 269.4$ cm³.

    *Why the answer is smaller:* the pressure rises slightly, which shrinks the gas, and the gas is cooled, which shrinks it again. A quick look at the direction of each change catches most slips before the arithmetic does.
  ],
)

// ============================================================================
// SECTION 3.2
// ============================================================================
== 3.2 Molar Volume, the Ideal Gas Equation and Dalton's Law

Avogadro's law states that equal volumes of all gases at the same temperature and pressure contain the same number of molecules. It follows that one mole of any gas occupies the same volume under the same conditions.

#table(
  columns: (1fr, 1fr, 1.1fr, 1.4fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Temperature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Pressure],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Volume of 1 mol],
  ),
  [s.t.p.], [273 K (0 °C)], [760 mmHg (1 atm)], [22.4 dm³],
  [r.t.p.], [298 K (25 °C)], [760 mmHg (1 atm)], [24.0 dm³],
)

The *ideal gas equation* is the same statement in one line: $P V = n R T$, with $P$ in pascals, $V$ in m³, $T$ in kelvin and $R = 8.31$ J K⁻¹ mol⁻¹. Because $n = m div M_r$, it can also be written $P V = (m div M_r) R T$, which turns it into a way of finding a relative molecular mass.

*Dalton's law of partial pressures*: in a mixture of gases that do not react, the total pressure is the sum of the pressures each gas would exert alone — $P_"total" = P_1 + P_2 + dots$. This matters most when a gas is collected over water, because the collected gas is wet: $P_"gas" = P_"atmospheric" - P_"water vapour"$.

#worked-example(
  2,
  "Molar mass from a gas volume, and a wet gas",
  tier: "UTME STANDARD",
  [(a) 0.32 g of a gas occupies 224 cm³ at s.t.p. Find its relative molecular mass. (b) Hydrogen is collected over water at 25 °C, where the vapour pressure of water is 24 mmHg, and the total pressure is 760 mmHg. What is the partial pressure of the hydrogen? (c) What volume would 1.6 g of the gas in (a) occupy at 27 °C and 1 atm?],
  [
    *(a)* At s.t.p. one mole occupies 22.4 dm³, so $n = 0.224 div 22.4 = 0.01$ mol. \
    $M_r = m div n = 0.32 div 0.01 = 32$ — the gas is oxygen, O₂.

    *(b)* $P("H"_2) = 760 - 24 = 736$ mmHg. The gas is *saturated* with water vapour, and the water contributes its own share of the total pressure.

    *(c)* $n = 1.6 div 32 = 0.05$ mol; $T = 300$ K; $P = 101 325$ Pa. \
    $V = n R T div P = (0.05 times 8.31 times 300) div 101 325 = 1.23 times 10^(-3)$ m³ $= 1.23$ dm³.
  ],
)

#trap-box("Three unit traps")[
  *cm³ and dm³* — 1 dm³ = 1000 cm³, so 250 cm³ = 0.25 dm³. Mixing the two in one calculation changes the answer by a factor of 1000. \
  *mmHg and atm* — 760 mmHg = 1 atm. A ratio such as $750 div 760$ is safe only if both pressures are in the same unit, which is why the gas laws are written as ratios. \
  *°C and K* — only kelvin may enter a gas-law equation. This is the single commonest error in the whole chapter.
]

// ============================================================================
// SECTION 3.3
// ============================================================================
== 3.3 Diffusion and Graham's Law

*Diffusion* is the spreading of the particles of one substance through another, from a region of higher concentration to one of lower concentration, as a result of their random motion. A drop of bromine vapour in a gas jar fills the whole jar without stirring; the smell of ammonia travels across a laboratory.

#concept-box("Graham's law of diffusion")[
  At the same temperature and pressure, the rate of diffusion of a gas is inversely proportional to the square root of its relative molecular mass. \
  $r_1 div r_2 = sqrt(M_2 div M_1)$ \
  So the lighter gas is always the faster one: hydrogen ($M_r$ 2) diffuses about four times as fast as oxygen ($M_r$ 32), because $sqrt(32 div 2) approx 4$.
]

#table(
  columns: (1.2fr, 1.6fr, 1.9fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Depends on],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Exam phrase],
  ),
  [rate of diffusion], [molar mass and temperature], [“lighter and hotter gases diffuse faster”],
  [kinetic energy], [temperature only], [“at the same temperature all gases have the same mean kinetic energy”],
  [average speed], [molar mass and temperature], [“hydrogen is the fastest gas at any given temperature”],
  [pressure], [number of molecules and their speed], [“more collisions per unit area per second”],
)

#worked-example(
  3,
  "Graham's law in both directions",
  tier: "UTME STANDARD",
  [(a) A gas diffuses at one quarter of the rate of hydrogen. Find its relative molecular mass. (b) Compare the rates of diffusion of sulphur dioxide ($M_r$ 64) and methane ($M_r$ 16).],
  [
    *(a)* $r_"gas" div r_("H"_2) = 1 div 4 = sqrt(2 div M)$, so $2 div M = 1 div 16$ and $M = 32$. The gas is oxygen.

    *(b)* $r_("SO"_2) div r_("CH"_4) = sqrt(16 div 64) = sqrt(0.25) = 0.5$. \
    Methane diffuses twice as fast as sulphur dioxide. Note the order: the ratio $M_2 div M_1$ takes the *other* gas on top, so writing it the wrong way round inverts the answer.

    *Checking the direction is always worth a mark:* the heavier gas is the slower one, so any answer in which SO₂ outruns CH₄ is wrong before the arithmetic begins.
  ],
)

// ============================================================================
// SECTION 3.4
// ============================================================================
== 3.4 The Kinetic Theory of Gases

The kinetic theory explains the gas laws from the behaviour of particles.

#diagram-fig("diagrams/ch03_kinetic.svg",
  "The model behind every gas law: pressure is the force of countless collisions with the walls, so squeezing the gas or heating it raises the pressure.")

#concept-box("The five assumptions of an ideal gas")[
  1. A gas is made of tiny particles in constant, random, straight-line motion. \
  2. The volume of the particles themselves is negligible compared with the volume of the container. \
  3. There are no forces of attraction or repulsion between the particles (except during a collision). \
  4. All collisions — between particles, and between particles and the walls — are perfectly elastic. \
  5. The average kinetic energy of the particles is directly proportional to the absolute temperature.
]

#table(
  columns: (1.35fr, 2.5fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Law],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the model says],
  ),
  [Boyle's law], [compress the gas and the same particles strike the walls more often in each second, so the pressure rises],
  [Charles' law], [heat the gas and the particles move faster, hit harder and push the walls outwards, so the volume rises at constant pressure],
  [Pressure law], [heat a sealed container and the harder collisions raise the pressure because the volume cannot change],
  [Dalton's law], [each gas collides independently, so each contributes its own pressure to the total],
  [Graham's law], [at the same temperature all gases have the same mean kinetic energy, so the lighter molecules must move faster],
)

#trap-box("Real gases")[
  No gas is ideal. At *high pressure* the particles are forced close together, their own volume is no longer negligible, and the attractive forces between them matter, so the measured pressure is lower than $P V = n R T$ predicts. At *low temperature* the particles move slowly enough for those attractions to hold them together, and the gas may condense. The ideal model is accurate at low pressure and high temperature — which is exactly where the JAMB questions place it.
]

// ============================================================================
// SECTION 3.5 — CHECKLIST
// ============================================================================
== 3.5 Chapter 3 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + state Boyle's, Charles' and the pressure law, and identify which one a question needs;
  + convert °C to K and cm³ to dm³ without prompting;
  + use $P_1 V_1 = P_2 V_2$ and $P_1 V_1 div T_1 = P_2 V_2 div T_2$;
  + state the molar volume at s.t.p. and at r.t.p.;
  + use $P V = n R T$ to find a volume, a number of moles or a molar mass;
  + state and use Dalton's law of partial pressures, including a gas collected over water;
  + state Graham's law and compare the rates of two gases;
  + state the assumptions of the kinetic theory;
  + use the theory to explain each of the gas laws;
  + say why real gases deviate from ideal behaviour.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Three laws, one idea: at a fixed temperature pressure times volume is constant; at a fixed pressure volume is proportional to kelvin temperature; at a fixed volume pressure is proportional to kelvin temperature. Put them together and you have $P_1 V_1 div T_1 = P_2 V_2 div T_2$, and with Avogadro's law you get $P V = n R T$, where one mole of any gas occupies 22.4 dm³ at s.t.p. and 24 dm³ at r.t.p. Partial pressures add, and a gas collected over water is wet, so subtract the water-vapour pressure. Graham's law makes the lighter gas the faster one, because at a given temperature every gas has the same mean kinetic energy. The kinetic theory explains all of it: pressure is collisions per unit area, and temperature is the average kinetic energy of the particles.
  ]
]

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the gas laws, molar volume, kinetic theory and Graham's law.", width: 100%)

// ============================================================================
// SECTION 3.6 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 3.6 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [A gas occupies 200 cm³ at 1 atm. At constant temperature, its volume at 2 atm is], [400 cm³], [100 cm³], [200 cm³], [50 cm³])
#mcq(2, [Charles' law is written correctly as], [$V_1 div T_1 = V_2 div T_2$, with $T$ in °C], [$V_1 div T_1 = V_2 div T_2$, with $T$ in K], [$P_1 V_1 = P_2 V_2$], [$P_1 div T_1 = V_2 div T_2$])
#mcq(3, [The volume occupied by 0.5 mol of a gas at s.t.p. is], [11.2 dm³], [22.4 dm³], [44.8 dm³], [2.24 dm³])
#mcq(4, [Which gas diffuses fastest at the same temperature and pressure?], [Oxygen, $M_r$ 32], [Carbon dioxide, $M_r$ 44], [Methane, $M_r$ 16], [Sulphur dioxide, $M_r$ 64])

#answer-key-grid(("B", "B", "A", "C"))

#answer-notes((
  ("B", [doubling the pressure halves the volume at constant temperature: $200 div 2 = 100$ cm³.]),
  ("B", [Charles' law needs absolute temperature, so both temperatures must be in kelvin.]),
  ("A", [$0.5 times 22.4 = 11.2$ dm³ at s.t.p.]),
  ("C", [the lightest gas diffuses fastest, and methane has the smallest $M_r$ of the four.]),
))

#include "drill_ch03.typ"
