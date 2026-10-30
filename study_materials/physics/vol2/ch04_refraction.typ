#import "template.typ": *

#current-chapter.update("Chapter 4: Refraction and Total Internal Reflection")

#pagebreak()

#chapter-opener(
  4,
  "Refraction and Total Internal Reflection",
  subtitle: "Refraction at a Plane Surface, Snell's Law, the Refractive Index, Real and Apparent Depth, the Critical Angle, Total Internal Reflection and the Prism",
  syllabus-ref: "Sec. B • Topic 4",
  utme-weight: "4 Qs every year",
  running: "Refraction and TIR",
)

#focus-radar(
  objectives: (
    "Explain refraction as a change of speed at a boundary, and state the two laws that govern it.",
    "Use Snell's law, $n = sin i \/ sin r$, and the equivalents $n = v_1\/v_2 = lambda_1\/lambda_2$.",
    "Find the real or apparent depth of an object under water.",
    "Define the critical angle and calculate it from $sin c = 1\/n$.",
    "Explain total internal reflection and give three of its uses.",
    "Describe the passage of light through a prism, including dispersion and the deviation.",
  ),
  hotspots: (
    "“A ray passes from air into glass at 45°. If $n = 1.5$, the angle of refraction is …” — about 28°.",
    "“The critical angle for a glass of refractive index 1.5 is …” — 42°.",
    "“Total internal reflection can occur only when light travels …” — from a denser to a less dense medium.",
    "“A pool 2.0 m deep appears … to a diver looking straight down” — 1.5 m deep.",
    "“The refractive index of glass is 1.5. The speed of light in the glass is …” — $2.0 times 10^8$ m s⁻¹.",
  ),
  trap-summary: "Three slips. (1) Using the angle to the surface instead of the angle to the normal in Snell's law. (2) Believing total internal reflection can happen going from air into glass — it needs the *dense* medium on the side the light starts from. (3) Writing $n = sin r \/ sin i$ and getting an answer below 1, which no refractive index can be; if the number comes out less than one, the ratio is upside down.",
)

// ============================================================================
== 4.1 Refraction and Snell's Law

When light crosses from one transparent medium into another it changes speed. If it strikes the boundary at an angle, the change of speed bends its path. This bending is *refraction*, and it is why a straw looks broken at the waterline and why a pool looks shallower than it is.

#diagram-fig("diagrams/ch04_refraction.svg",
  "Refraction at a plane boundary. Entering a denser medium the ray bends towards the normal, its speed falls and its wavelength shortens — but its frequency is unchanged.", width: 100%)

#concept-box("The two laws of refraction")[
  + The incident ray, the refracted ray and the normal at the point of incidence all lie in the same plane.
  + For two given media, the ratio of the sine of the angle of incidence to the sine of the angle of refraction is constant: $sin i \/ sin r = n$, the refractive index.
]

#formula-box("The refractive index, three ways")[
  $ n = sin i \/ sin r = v_1 \/ v_2 = lambda_1 \/ lambda_2 $
  where $v_1$ and $lambda_1$ refer to the first medium (usually air) and $v_2$, $lambda_2$ to the second. Because light in air is almost as fast as in a vacuum, the refractive index of a material is quoted relative to air, and $n$ is always greater than 1.
]

*What actually happens at the boundary.* The light is slowed on entering a denser medium, so the crests pile up and the wavefronts turn — that is the bend. The frequency of the light is set by the source and does not change, so $v = f lambda$ forces the wavelength to shorten by the same factor that the speed falls.

#table(
  columns: (1.4fr, 1.1fr, 1.6fr),
  inset: 5.5pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Medium],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Refractive index],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Speed of light in it],
  ),
  [air], [1.00], [$3.0 times 10^8$ m s⁻¹],
  [water], [1.33], [$2.3 times 10^8$ m s⁻¹],
  [glass (crown)], [1.50], [$2.0 times 10^8$ m s⁻¹],
  [diamond], [2.42], [$1.2 times 10^8$ m s⁻¹],
)

#worked-example(
  1,
  "A ray into a glass block",
  [A ray of light in air strikes a glass block of refractive index 1.50 at an angle of incidence of 40°. Find (a) the angle of refraction, (b) the speed of the light in the glass, and (c) the wavelength in the glass if the wavelength in air is 600 nm.],
  [
    *(a)* $sin r = sin i \/ n = sin 40° \/ 1.50 = 0.643 \/ 1.50 = 0.429$, so $r = 25.4°$ — the ray bends towards the normal.

    *(b)* $v = c \/ n = (3.0 times 10^8) \/ 1.50 = 2.0 times 10^8$ m s⁻¹.

    *(c)* $lambda = 600 \/ 1.50 = 400$ nm.

    *Check.* The angle and the speed both fell by the same factor, which is what the single number $n$ means. And $v = f lambda$ holds in the glass: the frequency is unchanged at $5.0 times 10^14$ Hz, and $5.0 times 10^14 times 400 times 10^(-9) = 2.0 times 10^8$ m s⁻¹. Everything is consistent because everything came from the same one number.
  ],
  tier: "FOUNDATION",
)

#trap-box("The angle is always from the normal")[
  The commonest error in refraction questions is not the arithmetic but the angle. A ray that makes 50° with the *surface* of a block makes 40° with the normal, and it is the 40° that goes into Snell's law. If the question gives the angle to the surface, subtract it from 90° before you do anything else — and draw the normal on the diagram so the mistake is impossible.
]

// ============================================================================
== 4.2 Real and Apparent Depth

An object under water appears nearer the surface than it is, because the rays from it bend away from the normal as they leave the water and the eye projects them back along straight lines.

#formula-box("Real and apparent depth")[
  $ n = ("real depth")\/("apparent depth") $
  For a slab of thickness $t$ the apparent shift is $t(1 - 1\/n)$.
]

A pool 2.0 m deep looks 1.5 m deep to someone looking straight down, because $2.0 \/ 1.33 = 1.5$. A coin at the bottom of a beaker appears lifted, which is why you can sometimes see a coin over the rim of a mug that you could not see before the water was poured in.

#worked-example(
  2,
  "A coin at the bottom of a beaker",
  [A coin lies at the bottom of a beaker of water 8.0 cm deep. Taking the refractive index of water as 1.33, find (a) the apparent depth of the coin, and (b) how far the coin appears to be raised.],
  [
    *(a)* The apparent depth is the real depth divided by $n$: $8.0 \/ 1.33 = 6.0$ cm.

    *(b)* The coin appears raised by $8.0 - 6.0 = 2.0$ cm.

    *Check.* The shift is $t(1 - 1\/n) = 8.0 times (1 - 0.752) = 2.0$ cm, which is the same answer by the other formula — the two expressions are algebraically identical, and it is worth seeing that once so that the second one never has to be memorised.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 4.3 The Critical Angle

When light travels from a dense medium into a less dense one it bends *away* from the normal. As the angle of incidence grows, the refracted ray swings further and further from the normal, until at one particular angle it runs along the surface itself. That angle is the *critical angle* $c$.

#diagram-fig("diagrams/ch04_tir.svg",
  "Total internal reflection. Below the critical angle some light escapes; at the critical angle it skims the surface; beyond it, none gets out at all and the ray reflects back into the dense medium.", width: 100%)

#formula-box("The critical angle")[
  $ sin c = 1 \/ n $
  For glass of $n = 1.50$, $c = 42°$; for water of $n = 1.33$, $c = 49°$; for diamond of $n = 2.42$, $c = 24°$ — which is why a cut diamond sparkles so brightly.
]

*Beyond the critical angle* none of the light crosses the boundary: it is all reflected back into the dense medium, obeying the ordinary law of reflection. This is *total internal reflection*, and it has three conditions that must all hold:

#concept-box("When total internal reflection happens")[
  + The light must be travelling from a *dense* medium into a *less dense* one.
  + The angle of incidence must be *greater* than the critical angle.
  + The boundary must be smooth, so that the reflection is regular.
]

#trap-box("It cannot happen going into a denser medium")[
  A ray going from air into glass bends *towards* the normal however large the angle of incidence, and never reaches 90° of refraction. Total internal reflection is impossible in that direction — there is no critical angle for air-to-glass. The exam option that offers it is always wrong.
]

#table(
  columns: (1.4fr, 1.5fr, 1.8fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Application],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where the reflection happens],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why it matters],
  ),
  [optical fibre], [inside the core, at the cladding], [the light is trapped and follows the fibre round bends],
  [endoscope], [a bundle of fibres], [a doctor sees inside the body without surgery],
  [diamond sparkle], [at the lower facets], [light bounces several times before leaving through the top],
  [mirage], [in a layer of hot air near the ground], [the light curves up to the eye and looks like water],
  [prism periscope], [at the two 45° faces], [total reflection is brighter than a silvered mirror],
)

#worked-example(
  3,
  "The critical angle of a glass block",
  [A ray of light is incident on the inside face of a glass block of refractive index 1.50. Find (a) the critical angle, and (b) whether the ray escapes if the angle of incidence inside the glass is 45°.],
  [
    *(a)* $sin c = 1\/n = 1\/1.50 = 0.667$, so $c = 42°$.

    *(b)* $45° > 42°$, so the ray cannot escape: it is totally internally reflected back into the glass at 45°.

    *Check.* The same question can be settled without the sine table. If $sin 45° = 0.707$ and $sin c = 0.667$, then since the sine rises with the angle, 45° is the larger angle, and total internal reflection follows. A candidate who has forgotten the arcsine can still get the mark with that comparison.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 4.4 The Prism

A prism is a block of glass with two non-parallel faces. Light entering one face is refracted, crosses the glass, and is refracted again at the second face; the two bends add, so a prism deviates a ray far more than a parallel-sided block, which bends the ray back to its original direction.

#diagram-fig("diagrams/ch04_prism.svg",
  "A prism deviates the ray at each surface and, because the refractive index depends slightly on colour, spreads white light into a spectrum.", width: 100%)

#formula-box("The prism")[
  $ A = r_1 + r_2, quad d = i_1 + i_2 - A $

  where $A$ is the angle of the prism, $d$ the total deviation, and $i_1, i_2$ the angles of incidence and emergence.
  The *minimum* deviation occurs when the ray passes symmetrically, so $r_1 = r_2 = A\/2$ and $i_1 = i_2$; then $n = sin((A + d_min)\/2) \/ sin(A\/2)$.
]

*Dispersion.* The refractive index is largest for violet, which therefore bends most, and smallest for red. White light is a mixture, so a prism sorts it into the spectrum; a second, inverted prism puts it back together — Newton's demonstration that white is not a colour but all of them.

#worked-example(
  4,
  "Through a 60° prism",
  [A ray passes through a glass prism of angle 60° and refractive index 1.50. It enters at 40°, and the first refraction inside the glass gives $r_1 = 25°$. Find (a) the angle of emergence, and (b) the total deviation.],
  [
    *(a)* The prism geometry fixes the second internal angle: $r_2 = A - r_1 = 60° - 25° = 35°$.

    At the second face the light leaves the glass, so $sin i_2 = n sin r_2 = 1.50 times sin 35° = 1.50 times 0.574 = 0.861$, giving $i_2 = 59.5°$.

    *(b)* $d = i_1 + i_2 - A = 40° + 59.5° - 60° = 39.5°$.

    *Check.* A parallel-sided block would return the ray to its original direction — a deviation of zero. A prism deviates it by nearly 40°, which is why a prism is used when a large deviation is wanted. Had the ray passed symmetrically, the deviation would have been at its minimum, a little below the 39.5° found here.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
#concept-box("Which way does the ray bend?")[
  Going into a *denser* medium the ray bends *towards* the normal and the angle of refraction is smaller than the angle of incidence. Going into a *less dense* medium it bends *away*. The speed falls in the first case and rises in the second, and the wavelength follows the speed while the frequency stays put.
]

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: refraction of light.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Light bends at a boundary because it changes speed, and the one number that describes the change is the refractive index: $n = sin i \/ sin r = v_1 \/ v_2$. Into a denser medium the ray bends towards the normal, slows down and shortens its wavelength, and the frequency never changes. Going the other way the ray bends away from the normal until, at the critical angle, it runs along the surface; past that angle none of it escapes. A prism bends the ray twice, so it deviates far more than a slab, and because $n$ varies with colour it also splits white light into the spectrum.
  ]
]

== 4.5 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [A ray passes from air into water of refractive index 1.33. Which quantity does not change?], [speed], [wavelength], [frequency], [direction])
#mcq(2, [The critical angle for a medium of refractive index 2.0 is], [30°], [45°], [60°], [90°])
#mcq(3, [A pool is 3.0 m deep. To an observer looking straight down, it appears (n = 1.5)], [1.5 m deep], [2.0 m deep], [3.0 m deep], [4.5 m deep])
#mcq(4, [Total internal reflection can occur when light travels from], [air to glass at any angle], [glass to air beyond the critical angle], [air to water at a small angle], [glass to diamond])

#answer-key-grid(("C", "A", "B", "B"))

#answer-notes((
  ("C", [the frequency is set by the source; the speed and the wavelength both fall by the factor $n$, and only the direction changes because of the bend.]),
  ("A", [$sin c = 1\/2.0 = 0.50$, so $c = 30°$.] ),
  ("B", [the apparent depth is the real depth divided by $n$: $3.0 \/ 1.5 = 2.0$ m.]),
  ("B", [the light must start in the denser medium and strike the boundary beyond the critical angle; going into a denser medium it can never escape by total reflection.]),
))

#chapter-checklist("Before you leave Chapter 4", (
  [State both laws of refraction and use $n = sin i \/ sin r$.],
  [Convert between $n$, the speed and the wavelength in a medium.],
  [Say which quantities change at a boundary and which do not.],
  [Find a real or an apparent depth from the ratio of the two depths.],
  [Define the critical angle and calculate it from $sin c = 1\/n$.],
  [Use the prism relations $A = r_1 + r_2$ and $d = i_1 + i_2 - A$.],
))

#concept-box("Carry this into Chapter 5")[
  A single curved surface bends a ray once; two curved surfaces, back to back, bend a whole bundle of rays so that they meet at a point. That is a lens — the same refraction of this chapter, organised into an instrument. Everything you have just learned about $n$, the bend towards the normal and the critical angle reappears in the lens, the eye and the microscope.
]

#include "drill_ch04.typ"
