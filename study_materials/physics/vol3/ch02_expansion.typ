#import "template.typ": *

#current-chapter.update("Chapter 2: Expansion of Solids, Liquids and Gases")

#pagebreak()

#chapter-opener(
  2,
  "Expansion of Solids, Liquids and Gases",
  subtitle: "Linear, Superficial and Cubic Expansivity, Expansion of Liquids — Real and Apparent, the Anomalous Expansion of Water, and the Expansion of Gases",
  syllabus-ref: "Sec. B • Heat 2",
  utme-weight: "3 Qs every year",
  running: "Expansion of Solids, Liquids and Gases",
)

#focus-radar(
  objectives: (
    "Define linear, superficial and cubic expansivity, and give the unit of each.",
    "Use $L = L_0(1 + alpha Delta theta)$ and the 2α and 3α relationships.",
    "Explain real and apparent expansion of a liquid, and the relation between them.",
    "Describe the anomalous expansion of water and two consequences of it.",
    "State the expansion behaviour of a gas and its coefficient, 1/273 K⁻¹.",
    "Explain three applications and two problems of thermal expansion.",
  ),
  hotspots: (
    "“The coefficient of superficial expansion of a solid is …” — twice the linear coefficient.",
    "“A steel rail 20 m long expands by …” — $20 times 1.2 times 10^(-5) times Delta theta$ metres.",
    "“Water is densest at …” — 4 °C, and that is why ice forms on the surface of a pond.",
    "“A bimetallic strip bends because …” — the two metals have different expansivities.",
    "“The apparent expansion of a liquid is less than the real expansion because …” — the vessel expands too.",
  ),
  trap-summary: "Three slips. (1) Using degrees Celsius in a formula that needs a *change* of temperature and then converting: the change is the same on both scales, so $Delta theta$ is used directly and the 273 never appears. (2) Confusing apparent with real expansion: the liquid appears to expand less than it really does because the container grows as well, so $gamma_\"real\" = gamma_\"app\" + 3 alpha_\"vessel\"$. (3) Forgetting that water contracts between 0 °C and 4 °C: it is the one liquid in the syllabus whose density does not fall steadily as it warms.",
)

// ============================================================================
== 2.1 Linear Expansivity

Almost every solid expands when it is heated, and for the temperature ranges in the syllabus the expansion is proportional to the original length and to the rise in temperature. The constant of proportionality is the *linear expansivity*.

#concept-box("Linear expansivity")[
  The *linear expansivity* $alpha$ of a solid is the fractional increase in its length per kelvin rise in temperature. Its unit is K⁻¹ (equivalently °C⁻¹, since the sizes of the two degrees are the same).
]

#formula-box("Three coefficients, one constant")[
  + *Length, and the change in it:* $L = L_0 (1 + alpha Delta theta)$, so $Delta L = alpha L_0 Delta theta$.

  + *Linear* — $alpha$: the change in one dimension.
  + *Superficial (area)* — $2 alpha$: a plate grows in two directions at once.
  + *Cubic (volume)* — $3 alpha$: a solid grows in all three directions.

  The factors 2 and 3 are counting directions, which is why they are exact for small expansions and only approximate for large ones.
]

#diagram-fig("diagrams/ch02_expansion.svg",
  "One rule in three shapes: a rod, a plate and a cube all obey $Delta L = alpha L_0 Delta theta$, with the coefficient doubled for area and tripled for volume.", width: 100%)

A steel rail is 20 m long and $alpha = 1.2 times 10^(-5)$ K⁻¹, so a 40 K rise in temperature lengthens it by $1.2 times 10^(-5) times 20 times 40 = 9.6$ mm. Ten millimetres does not sound like much until the rail is welded to the next one and the whole line is a kilometre long. Then it is half a metre, and something has to give.

#trap-box("The gaps in a railway line are not sloppy workmanship")[
  Rails are laid with expansion gaps, or on rollers at the joints of a bridge, because the metal will lengthen on a hot day and shorten again at night. A rail that is clamped at both ends with no gap buckles sideways instead of lengthening, which is why a track can distort in a heatwave. The same argument explains the rollers under a bridge deck, the corrugated shape of a metal roof, and the loop deliberately put in a long pipeline every few hundred metres.
]

#worked-example(
  1,
  "A rail on a hot day",
  [A steel rail is 20.0 m long at 20 °C. Take $alpha = 1.2 times 10^(-5)$ K⁻¹ and find its length at 60 °C.],
  [
    The rise is $Delta theta = 60 - 20 = 40$ K.

    $Delta L = alpha L_0 Delta theta = 1.2 times 10^(-5) times 20.0 times 40 = 9.6 times 10^(-3)$ m.

    So the new length is $L = 20.0 + 0.0096 = 20.0096$ m, an increase of 9.6 mm.

    *Check.* The fractional change is $alpha Delta theta = 1.2 times 10^(-5) times 40 = 4.8 times 10^(-4)$, and $4.8 times 10^(-4) times 20.0$ m $= 9.6$ mm. Written as a fraction first, the arithmetic is small enough to do in your head — and a sanity check of “about a centimetre in twenty metres” catches the decimal-point slips that ruin the answer.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "A plate, not a rod",
  [A brass plate measures 20.0 cm by 10.0 cm at 20 °C. Take $alpha = 1.9 times 10^(-5)$ K⁻¹ and find its area at 120 °C.],
  [
    The original area is $A_0 = 20.0 times 10.0 = 200$ cm², and the rise is 100 K.

    $Delta A = 2 alpha A_0 Delta theta = 2 times 1.9 times 10^(-5) times 200 times 100 = 0.76$ cm².

    So $A = 200 + 0.76 = 200.76$ cm².

    *Check.* Each side grows by $alpha Delta theta = 1.9 times 10^(-3)$, about two parts in a thousand: 20.0 cm becomes 20.038 cm and 10.0 cm becomes 10.019 cm, and their product is 200.76 cm². Growing the two sides separately and multiplying gives the same answer as $2 alpha$ — which is exactly why the coefficient for area is twice the linear one and not, say, four times.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 2.2 Expansion of Liquids: Real and Apparent

A liquid has no length of its own, so only its volume matters, and its *cubic expansivity* $gamma$ is usually far larger than that of a solid — about ten times larger for water and about fifty times larger for alcohol. But there is a complication that the examiner likes: the vessel holding the liquid expands too.

#concept-box("Real and apparent expansion")[
  *Real expansion* is the true increase in the volume of the liquid. *Apparent expansion* is what you actually see — the rise of the liquid up the stem — which is the real expansion *minus* the increase in the volume of the vessel.

  + *The relation:* $gamma_"real" = gamma_"apparent" + 3 alpha_"vessel"$.
]

The sign in that relation is the whole idea. If the flask grows, the liquid has to fill the extra space before it can climb the stem, so the stem under-reads the liquid's true expansion. The apparent value is always smaller than the real one, and the gap is the expansion of the container.

#formula-box("The two expansions, in one line each")[
  + Real: $Delta V = gamma_"real" V_0 Delta theta$ — how much the liquid itself has grown.
  + Apparent: $Delta V = gamma_"apparent" V_0 Delta theta$ — how much climbs the stem.
  + Link: $gamma_"real" = gamma_"apparent" + 3 alpha_"vessel"$.

  A liquid that wets the glass and is transparent cannot be read directly, which is why alcohol is dyed and why mercury, which does not wet glass, is preferred where it can be used.
]

#trap-box("The flask is part of the measurement")[
  A glass bottle filled to the brim with water and warmed will overflow, and a candidate who uses only the liquid's expansivity will predict too much overflow. Subtract the growth of the bottle: the overflow is $V_0 (gamma_"liquid" - 3 alpha_"glass") Delta theta$, which is the same relation as above with the apparent coefficient replaced by the difference. If the sign comes out negative, the level would have *fallen* — which happens with a liquid whose expansion is smaller than that of its container.
]

#worked-example(
  3,
  "Real against apparent",
  [A glass vessel is filled with a liquid at 15 °C. The apparent expansivity of the liquid is $1.2 times 10^(-4)$ K⁻¹ and the linear expansivity of the glass is $9.0 times 10^(-6)$ K⁻¹. Find the real expansivity of the liquid.],
  [
    $3 alpha_"glass" = 3 times 9.0 times 10^(-6) = 2.7 times 10^(-5)$ K⁻¹.

    $gamma_"real" = 1.2 times 10^(-4) + 2.7 times 10^(-5) = 1.47 times 10^(-4)$ K⁻¹, about $1.5 times 10^(-4)$ K⁻¹.

    *Check.* The real value must be larger than the apparent one, and it is — by the 2.7 in 12, or roughly a quarter. That ratio is a useful sanity test: for a glass vessel the correction is always a substantial fraction of the apparent value, never a negligible one, which is why the examiner asks for it.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Petrol in a steel tank",
  [A steel tank holds 2000 L of petrol at 20 °C. The temperature rises to 40 °C. Take $gamma_"petrol" = 9.5 times 10^(-4)$ K⁻¹ and $alpha_"steel" = 1.2 times 10^(-5)$ K⁻¹, and find the volume of petrol that spills.],
  [
    The petrol grows by $Delta V = 2000 times 9.5 times 10^(-4) times 20 = 38$ L.

    The tank grows by $Delta V = 2000 times 3(1.2 times 10^(-5)) times 20 = 1.44$ L.

    The spill is the difference: $38 - 1.44 = 36.6$ L, about 1.8 % of the tank.

    *Check.* The petrol's coefficient is nearly eighty times the tank's, so the spill is almost the whole of the petrol's expansion — the tank's growth removes only about four per cent of it. Note also that the spill is *volume*, not mass: the mass of petrol is unchanged, and it is the density that has fallen. That distinction is the next paragraph.
  ],
  tier: "UTME STANDARD",
)

*Expansion and density.* If a fixed mass of liquid occupies a larger volume when warm, its density must fall. Writing $rho = m\/V$ and using $V = V_0(1 + gamma Delta theta)$ gives $rho = rho_0\/(1 + gamma Delta theta) approx rho_0(1 - gamma Delta theta)$ for small changes. This is the reason a hot-air balloon rises, the reason the sea is warm on the surface, and the reason a hydrometer reads lower in warm liquid than in cold.

// ============================================================================
== 2.3 The Anomalous Expansion of Water

Every liquid in the syllabus expands steadily as it warms, with one exception, and the exception is the liquid that matters most.

#concept-box("The anomalous expansion of water")[
  Between 0 °C and 4 °C water *contracts* as it is heated, reaching its maximum density at 4 °C (about 1000 kg m⁻³). Above 4 °C it expands normally. Ice is less dense than water — about 917 kg m⁻³ at 0 °C — so ice floats.
]

#diagram-fig("diagrams/ch02_water.svg",
  "The density of water against temperature. It peaks at 4 °C rather than falling steadily from the melting point, which is what makes a lake freeze from the top down.", width: 92%)

Two consequences, and both are examinable.

+ *A pond freezes from the top.* As the surface cools towards 4 °C it becomes denser and sinks, so the whole pond circulates and cools together. Once the surface reaches 4 °C, further cooling makes it *less* dense, so it stays on top — and it is the top that freezes. The ice then insulates the water below, and fish survive the winter in water that stays near 4 °C.
+ *Water pipes burst in a frost.* Water trapped in a pipe expands as it freezes, and the ice is about nine per cent less dense than the water it came from. The pressure is enough to split metal, which is why pipes are lagged and why an outdoor tap is drained before winter.

#trap-box("Water at 0 °C is not the densest — and 4 °C is the answer to a whole family of questions")[
  Questions of the form “at what temperature is water densest”, “why does a lake freeze from the top”, “why does ice float” and “why does a pond not freeze solid” all have the same answer: the maximum density is at 4 °C. The number to remember is 4, not 0 — 0 °C is where ice and water coexist, which is a different fact.
]

// ============================================================================
== 2.4 Expansion of Gases

Gases expand far more than solids or liquids, and — remarkably — every gas expands by the same fraction for the same rise in temperature, provided the pressure is kept constant. That fraction is $1\/273$ of its volume at 0 °C per kelvin.

#formula-box("The gas result that fixes the kelvin scale")[
  At constant pressure: $ V = V_0 (1 + Delta theta \/ 273) $, so a gas at 0 °C gains 1/273 of its volume for every degree it is warmed.

  At constant volume: $ p = p_0 (1 + Delta theta \/ 273) $, with the same coefficient.

  Written in kelvin, both become simple proportions: $V prop T$ and $p prop T$. That is Chapter 5, and it is the reason every gas law in this book is written in kelvin.
]

The 1/273 is not a coincidence of the gases chosen; it is the reciprocal of the kelvin offset. A gas cooled from 0 °C would lose its volume entirely at −273 °C if the behaviour continued, and every gas reaches zero volume — in the idealised model — at the same temperature. That is the experimental origin of absolute zero, and it is worth saying in an answer: the kelvin scale is not a convention laid on top of the Celsius scale, it is the scale on which all gases agree.

#worked-example(
  5,
  "Finding a temperature from a length",
  [A metal rod is exactly 1.0000 m long at 0 °C and 1.0024 m long at 200 °C. (a) Find its linear expansivity. (b) At what temperature is it 1.0018 m long?],
  [
    *(a)* $alpha = Delta L \/ (L_0 Delta theta) = 0.0024 \/ (1.0000 times 200) = 1.2 times 10^(-5)$ K⁻¹.

    *(b)* $Delta theta = Delta L \/ (alpha L_0) = 0.0018 \/ (1.2 times 10^(-5) times 1.0000) = 150$ K, so the temperature is 150 °C.

    *Check.* Part (b) asks for three-quarters of the extension of part (a), so it should be three-quarters of the temperature rise: $0.75 times 200 = 150$. It is — because the expansion is linear in temperature, which is the assumption the whole chapter rests on. A rod that doubled its length over 200 K would not be linear, and the formula would not apply.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
#diagram-fig("diagrams/ch02_bimetallic.svg",
  "The bimetallic strip. Brass expands about twice as much as iron, so on heating the pair must curve — and the same curve, reversed on cooling, is what switches a thermostat.", width: 92%)

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: expansion of solids, liquids and gases.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Heat almost anything and it grows: a solid by $alpha L_0 Delta theta$ in one direction, twice that in area and three times that in volume, and a liquid by $gamma V_0 Delta theta$, where the real figure is larger than the one you read off the stem because the vessel is growing too. That single correction — $gamma_"real" = gamma_"apparent" + 3 alpha_"vessel"$ — is the whole of the liquid part of the chapter, and the petrol-tank question is its standard form. Water is the exception that examiners love: it contracts between 0 °C and 4 °C, is densest at 4 °C, and its ice floats, which is why a pond freezes from the top and why a pipe bursts in a frost. Gases behave alike: every one gains 1/273 of its volume per kelvin at constant pressure, and that shared number is what makes absolute zero real rather than conventional. Expansion is useful in a bimetallic strip and a thermostat, and dangerous in a rail, a bridge and a pipeline — the same physics, with a gap left for it.
  ]
]

== 2.5 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [A metal rod 1.0 m long is heated from 20 °C to 120 °C. If $alpha = 2.0 times 10^(-5)$ K⁻¹, its increase in length is], [0.02 mm], [0.20 mm], [2.0 mm], [20 mm])
#mcq(2, [The coefficient of superficial expansion of a solid whose linear expansivity is $alpha$ is], [$alpha$], [$2 alpha$], [$3 alpha$], [$6 alpha$])
#mcq(3, [Water has its greatest density at], [0 °C], [2 °C], [4 °C], [10 °C])
#mcq(4, [A bimetallic strip of brass and iron is heated. It bends because], [brass expands more than iron and becomes the outer curve], [iron expands more than brass and becomes the outer curve], [the two metals contract on heating], [the strip loses heat faster on one side])

#answer-key-grid(("C", "B", "C", "A"))

#answer-notes((
  ("C", [$Delta L = alpha L_0 Delta theta = 2.0 times 10^(-5) times 1.0 times 100 = 2.0 times 10^(-3)$ m $= 2.0$ mm. Convert the answer to millimetres only at the end.]),
  ("B", [a plate grows in two perpendicular directions, so its area coefficient is $2 alpha$; the volume coefficient is $3 alpha$.]),
  ("C", [$4$ °C. Water contracts from 0 °C to 4 °C and expands above it, so the density peaks at the bottom of that window.]),
  ("A", [brass has the larger expansivity, so the brass side becomes longer and forms the outside of the curve. On cooling it bends the other way, which is what makes it a thermostat.]),
))

#chapter-checklist("Before you leave Chapter 2", (
  [Define $alpha$ and give its unit, then state the area and volume coefficients.],
  [Use $Delta L = alpha L_0 Delta theta$ with $Delta theta$ in kelvin or degrees — and say why either works.],
  [Explain why a rail needs a gap and a bridge needs a roller.],
  [Distinguish real from apparent expansion and write the relation between them.],
  [State the density maximum of water and give two consequences of it.],
  [Quote the gas coefficient, 1/273 K⁻¹, and say what it implies about absolute zero.],
))

#concept-box("Carry this into Chapter 3")[
  Expansion is what a body does when heat reaches it — but this chapter has said nothing about *how* the heat gets there. Chapter 3 is the three routes: conduction through a solid, convection in a moving fluid, and radiation across empty space. The coefficients here will come back as a reason: metals expand more than glass, which is why a metal lid unscrews from a glass jar under a hot tap, and why a vacuum flask can be sealed with a cork instead of a screw thread.
]

#include "drill_ch02.typ"
