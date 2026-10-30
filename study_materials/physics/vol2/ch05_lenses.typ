#import "template.typ": *

#current-chapter.update("Chapter 5: Lenses and Optical Instruments")

#pagebreak()

#chapter-opener(
  5,
  "Lenses and Optical Instruments",
  subtitle: "Converging and Diverging Lenses, Ray Diagrams, the Lens Formula, Magnification and Power, the Eye and Its Defects, the Camera, the Microscope and the Telescope",
  syllabus-ref: "Sec. B • Topic 5",
  utme-weight: "4 Qs every year",
  running: "Lenses and Instruments",
)

#focus-radar(
  objectives: (
    "Distinguish a converging from a diverging lens, and name the point each concentrates light towards.",
    "Draw a ray diagram to locate the image formed by a thin lens.",
    "Use $1\/f = 1\/u + 1\/v$, $m = v\/u$ and $P = 1\/f$ with the correct signs.",
    "Describe the eye, explain short and long sight, and choose the correcting lens.",
    "Compare the camera, the microscope and the telescope.",
  ),
  hotspots: (
    "“An object is 30 cm from a converging lens of focal length 10 cm. The image is …” — 15 cm on the far side, real and inverted.",
    "“The power of a lens of focal length 50 cm is …” — 2.0 dioptres.",
    "“A diverging lens always forms an image that is …” — virtual, upright and diminished.",
    "“Short sight is corrected with a … lens” — diverging, negative power.",
    "“The magnification of a telescope is …” — $f_0 \/ f_e$.",
  ),
  trap-summary: "Three slips. (1) Mixing the conventions: for a converging lens $f$ is positive, for a diverging lens negative, and a virtual image has a negative $v$. (2) Putting the object distance in metres and the focal length in centimetres — every length in one formula must be in the same unit, and the safest is centimetres throughout. (3) Confusing *power in dioptres* (a number for a spectacle prescription) with *magnification* (a bare ratio). A lens of power $+2.0$ D has a focal length of 0.50 m, not a magnification of 2.",
)

// ============================================================================
== 5.1 The Two Lenses

A lens is a piece of transparent material with two curved surfaces. Each surface refracts the light, and the two refractions together bring a beam to a point — or spread it out — depending on the shape.

#diagram-fig("diagrams/ch05_lens_types.svg",
  "Converging and diverging lenses. The converging lens is thick in the middle and brings a parallel beam to its principal focus; the diverging lens is thin in the middle and spreads the beam as though it came from a focus behind it.", width: 100%)

#table(
  columns: (1.0fr, 1.4fr, 1.4fr, 1.6fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Lens],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Sign of f],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Images it can form],
  ),
  [converging (convex)], [thick in the middle], [positive], [real or virtual, depending on where the object is],
  [diverging (concave)], [thin in the middle], [negative], [virtual, upright, diminished — always],
)

*The focal length* is the distance from the optical centre to the principal focus, the point on the axis where a beam parallel to the axis is brought to a point. A strongly curved lens has a short focal length and bends the light harder.

#formula-box("The lens formula and the power")[
  $1\/f = 1\/u + 1\/v$   ·   $m = v\/u$   ·   $P = 1\/f$
  with $f$ in metres for the power, so a lens of $f = 50$ cm has $P = +2.0$ dioptres. Powers add: two thin lenses in contact have $P = P_1 + P_2$.
]

#trap-box("Where the image is depends on where the object is")[
  For a converging lens the answer changes as the object moves in from infinity: real and diminished far away, same size at 2F, real and magnified between F and 2F, and — as soon as the object comes inside F — virtual, upright and magnified. That last case is the magnifying glass, and it is the only case in which a converging lens gives a virtual image.
]

// ============================================================================
== 5.2 Ray Diagrams

Three rays again, and the same three ideas as for the mirror, with the focus on the far side.

#diagram-fig("diagrams/ch05_lens_rays.svg",
  "A converging lens. The ray parallel to the axis passes through F₂, the ray through the centre goes straight on, and the ray through F₁ emerges parallel; all three meet at the image.", width: 100%)

#concept-box("The three useful rays for a lens")[
  + A ray parallel to the principal axis is refracted *through the far focus* F₂.
  + A ray through the *optical centre* passes straight on, undeviated.
  + A ray through the near focus F₁ emerges *parallel to the axis*.
]

#table(
  columns: (1.5fr, 1.2fr, 1.3fr, 1.4fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Object position (converging)],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Image],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Nature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Instrument],
  ),
  [beyond 2F], [between F and 2F], [real, inverted, diminished], [camera, eye, telescope objective],
  [at 2F], [at 2F], [real, inverted, same size], [photocopier],
  [between F and 2F], [beyond 2F], [real, inverted, magnified], [projector, microscope objective],
  [at F], [at infinity], [—], [collimator],
  [inside F], [same side as the object], [virtual, upright, magnified], [magnifying glass],
)

#worked-example(
  1,
  "An object beyond 2F",
  [An object stands 30 cm from a converging lens of focal length 10 cm. Find (a) the image distance, (b) the magnification, and (c) the nature of the image.],
  [
    *(a)* $1\/v = 1\/f - 1\/u = 1\/10 - 1\/30 = 2\/30$, so $v = 15$ cm.

    *(b)* $m = v\/u = 15\/30 = 0.50$.

    *(c)* $v$ is positive, so the image is *real*; $m$ is less than one, so it is *diminished*; and a real image from a single lens is *inverted*.

    *Check.* The image lies between F (10 cm) and 2F (20 cm), which is exactly where the ray diagram puts an object beyond 2F. And the magnification is the ratio of the two distances, so it must be less than one when the image is closer than the object.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "A magnifying glass",
  [A converging lens of focal length 12 cm is used to examine a stamp held 8.0 cm from it. Find (a) the image distance, (b) the magnification, and (c) explain the sign of the answer.],
  [
    *(a)* $1\/v = 1\/12 - 1\/8.0 = (2 - 3)\/24 = -1\/24$, so $v = -24$ cm.

    *(b)* $m = |v|\/u = 24\/8.0 = 3.0$.

    *(c)* The negative sign of $v$ puts the image on the *same side* as the object: it is virtual, upright and three times the size. That is the magnifying-glass arrangement, and the reason the stamp can be at 8 cm while the lens has a 12 cm focal length.

    *Check.* The lens equation gave a negative $v$ because the object is inside F — the arithmetic knows what the diagram knows. If the stamp were moved out to 24 cm, $v$ would come out at $+24$ cm and the image would be real and could be caught on a screen.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 5.3 The Eye

The eye is a converging system: the cornea does most of the refraction, the lens fine-tunes it, the iris controls how much light enters, and the retina receives a real, inverted image. The brain turns it the right way up — which is a fact about the brain, not about the optics.

#concept-box("The parts of the eye and their jobs")[
  + *Cornea* — the curved front surface, which does about two thirds of the bending.
  + *Iris and pupil* — the adjustable aperture that controls how much light gets in.
  + *Lens* — a flexible converging lens that changes shape to focus on near or distant objects.
  + *Retina* — the light-sensitive surface at the back, on which the real image falls.
  + *Optic nerve* — carries the signal to the brain, which interprets and rights the image.
]

*Accommodation* is the eye's way of focusing at different distances: the ciliary muscles change the curvature of the lens, making it fatter for near objects and flatter for distant ones. A camera does the same job by moving its lens along the axis instead, which is why a camera has a focusing ring and an eye does not.

#diagram-fig("diagrams/ch05_eye.svg",
  "The eye and its two common defects. Short sight is corrected with a diverging lens and long sight with a converging one.", width: 100%)

#table(
  columns: (1.2fr, 1.7fr, 1.6fr, 1.2fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Defect],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What goes wrong],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symptom],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Correction],
  ),
  [short sight (myopia)], [the image falls short of the retina], [distant objects blur], [diverging lens],
  [long sight (hypermetropia)], [the image would fall behind the retina], [near objects blur], [converging lens],
  [presbyopia], [the lens loses its elasticity with age], [the near point recedes], [converging lens for reading],
  [astigmatism], [the cornea is not spherical], [lines blur in one direction], [cylindrical lens],
)

*The near point and the far point.* A normal eye can focus from about 25 cm (the near point) out to infinity (the far point). A short-sighted eye has a far point at a finite distance, often a metre or less; the correcting lens must take a distant object and form a virtual image at that far point, which is why

$ f = -("far point"). $

A long-sighted eye has a near point further away than 25 cm; the correcting lens takes an object at 25 cm and forms a virtual image at the actual near point.

#worked-example(
  3,
  "The power of a reading lens",
  [A long-sighted person has a near point of 75 cm. Find the focal length and the power of the lens needed to read a book held at 25 cm.],
  [
    The lens must take the book at $u = 25$ cm and form a virtual image at the near point, $v = -75$ cm.

    $1\/f = 1\/25 + 1\/(-75) = (3 - 1)\/75 = 2\/75$, so $f = 37.5$ cm $= 0.375$ m.

    $P = 1\/f = 1\/0.375 = +2.7$ dioptres.

    *Check.* The power is positive because the lens is converging, as it must be for long sight. A shorter near point would need less power: for a near point of 50 cm, $1\/f = 1\/25 - 1\/50 = 1\/50$, so $f = 50$ cm and $P = +2.0$ D. The worse the sight, the greater the power, which is the right way round.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 5.4 Optical Instruments

Every optical instrument is a way of using a lens to put an image where the eye can see it well.

#diagram-fig("diagrams/ch05_instruments.svg",
  "The compound microscope and the astronomical telescope. Both use a real image from the objective and a virtual image from the eyepiece.", width: 100%)

#table(
  columns: (1.1fr, 1.5fr, 1.3fr, 1.5fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Instrument],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Lenses],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Magnification],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The image it leaves],
  ),
  [camera], [one converging lens], [$m = v\/u$], [real and inverted, on the film or sensor],
  [magnifying glass], [one converging lens], [$m = D\/f$ roughly], [virtual, upright, enlarged],
  [compound microscope], [short $f_0$, short $f_e$], [$M = m_0 times m_e$], [virtual and much enlarged, but inverted],
  [astronomical telescope], [long $f_0$, short $f_e$], [$M = f_0 \/ f_e$], [virtual and enlarged, inverted],
  [terrestrial telescope], [an extra inverting lens], [$M = f_0 \/ f_e$], [as a telescope, but upright],
)

*Why the telescope needs a long objective and the microscope a short one.* A telescope looks at something effectively at infinity, so the objective's image sits at its focus and a long focal length gives a big image to work with. A microscope looks at something just outside its objective's focus, and the object is tiny, so a short focal length is what magnifies it.

#worked-example(
  4,
  "A telescope",
  [An astronomical telescope has an objective of focal length 100 cm and an eyepiece of focal length 5.0 cm. Find (a) its magnifying power, (b) the separation of the lenses when focused for a relaxed eye, and (c) the effect of swapping in an eyepiece of focal length 2.5 cm.],
  [
    *(a)* $M = f_0 \/ f_e = 100 \/ 5.0 = 20$.

    *(b)* For a relaxed eye the image is at infinity, so the lenses are separated by $f_0 + f_e = 105$ cm.

    *(c)* $M = 100 \/ 2.5 = 40$ — double the magnification, but the field of view narrows and the image is dimmer, because the same light is spread over four times the area.

    *Check.* The magnification is a *ratio* of two lengths, so it is a bare number with no unit. A candidate who reports “20 cm” has answered a different question; and the separation of 105 cm is greater than either focal length, which is what “the tube is about a metre long” means for a telescope of this size.
  ],
  tier: "UTME STANDARD",
)

#trap-box("Power and magnification are not the same number")[
  Power is measured in dioptres and describes how strongly a lens bends light: $P = 1\/f$ with $f$ in metres. Magnification is a bare ratio, $m = v\/u$. A lens of power 4 D has $f = 0.25$ m; its magnification depends entirely on where the object is placed. The two are related only through the lens equation, and a question that mixes them is testing whether you know which is which.
]

#worked-example(
  5,
  "Two lenses in contact",
  [A converging lens of focal length 20 cm is placed in contact with a diverging lens of focal length 50 cm. Find (a) the power of each, (b) the power of the combination and (c) its focal length.],
  [
    *(a)* $P_1 = 1\/0.20 = +5.0$ D and $P_2 = 1\/(-0.50) = -2.0$ D.

    *(b)* $P = P_1 + P_2 = +5.0 - 2.0 = +3.0$ D.

    *(c)* $f = 1\/P = 1\/3.0 = 0.33$ m $= 33$ cm.

    *Check.* The combination is weaker than the converging lens alone ($5.0$ D down to $3.0$ D), which is what putting a diverging lens next to it must do. And the focal length of 33 cm lies between the two individual focal lengths, which is a quick way to see that the arithmetic is not wildly wrong.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 5.5 The Camera and the Eye Compared

A camera is an eye that cannot focus itself. Both form a real, inverted image on a light-sensitive surface, and both control the amount of light entering — the camera with its aperture, the eye with its iris. The difference is in how they focus.

#table(
  columns: (1.3fr, 1.9fr, 1.9fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Camera],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Eye],
  ),
  [image formed], [real, inverted, on the sensor], [real, inverted, on the retina],
  [focused by], [moving the lens in or out], [changing the curvature of the lens],
  [light controlled by], [the aperture (f-number)], [the iris and pupil],
  [sensor], [film or detector], [rods and cones on the retina],
  [short sight], [fixed by a lens], [fixed by spectacles or contact lenses],
)

// ============================================================================
#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: lenses and optical instruments.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A lens is refraction organised into an instrument. A converging lens — thick in the middle, positive focal length — brings a parallel beam to a real focus, and the position and nature of the image it forms depend entirely on where the object sits: beyond 2F the image is real, inverted and diminished; between F and 2F it is real and magnified; inside F it is virtual, upright and magnified, which is the magnifying glass. A diverging lens can only ever form a virtual, upright, diminished image. Three rays locate any image and the formula $1\/f = 1\/u + 1\/v$ with $m = v\/u$ gives the same answer arithmetically, provided the signs are kept: $f$ positive for converging, $v$ negative for a virtual image. The power $P = 1\/f$ in dioptres is what an optician prescribes. The eye is a converging system that forms a real image on the retina; short sight needs a diverging lens and long sight a converging one. A camera uses one lens, a microscope a short objective and a short eyepiece, and a telescope a long objective and a short eyepiece, with $M = f_0\/f_e$.
  ]
]

== 5.6 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [An object is 20 cm from a converging lens of focal length 10 cm. The image is], [10 cm beyond the lens, real], [20 cm beyond the lens, real], [10 cm in front, virtual], [at infinity])
#mcq(2, [A diverging lens always forms an image that is], [real and inverted], [real and magnified], [virtual and diminished], [virtual and magnified])
#mcq(3, [The power of a converging lens of focal length 25 cm is], [0.25 D], [2.5 D], [4.0 D], [25 D])
#mcq(4, [A telescope has an objective of focal length 80 cm and an eyepiece of 4.0 cm. Its magnification is], [4], [20], [80], [320])

#answer-key-grid(("B", "C", "C", "B"))

#answer-notes((
  ("B", [$1\/v = 1\/10 - 1\/20 = 1\/20$, so $v = 20$ cm; a positive $v$ on the far side means a real image.]),
  ("C", [a diverging lens spreads the light, so no real image is possible; it gives a virtual, upright, diminished image.]),
  ("C", [$P = 1\/f$ with $f$ in metres: $1\/0.25 = 4.0$ D.]),
  ("B", [$M = f_0\/f_e = 80\/4.0 = 20$.]),
))

#chapter-checklist("Before you leave Chapter 5", (
  [Distinguish a converging lens from a diverging one by shape and by the sign of $f$.],
  [Draw three rays through a lens and locate the image they give.],
  [Say what kind of image a converging lens forms for each object position.],
  [Use $1\/f = 1\/u + 1\/v$ and $m = v\/u$ with the signs kept straight.],
  [Convert between focal length and power, with the focal length in metres.],
  [Explain short sight and long sight and match each to its correcting lens.],
))

#concept-box("Carry this into Chapter 6")[
  Every lens in this chapter assumed that light bends by an amount fixed by the material. It does — but not quite the same amount for every colour. That small difference, a fraction of a percent, is enough to separate white light into a rainbow, to make a diamond sparkle, and to make the sky blue. The last chapter of this volume follows that difference, then steps back to see the whole family of electromagnetic waves of which visible light is one small band.
]

#include "drill_ch05.typ"
