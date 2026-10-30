#import "template.typ": *

#current-chapter.update("Chapter 3: Reflection at Plane and Curved Mirrors")

#pagebreak()

#chapter-opener(
  3,
  "Reflection at Plane and Curved Mirrors",
  subtitle: "The Laws of Reflection, Images in a Plane Mirror, Concave and Convex Mirrors, Ray Construction, the Mirror Formula, Magnification and Uses",
  syllabus-ref: "Sec. B • Topic 3",
  utme-weight: "3 Qs every year",
  running: "Reflection and Mirrors",
)

#focus-radar(
  objectives: (
    "State the two laws of reflection and apply them to a plane mirror.",
    "Describe the image formed by a plane mirror and explain why it is virtual.",
    "Distinguish concave from convex mirrors, and locate their pole, centre of curvature and focus.",
    "Draw a ray diagram to locate the image formed by a curved mirror.",
    "Use $1\/f = 1\/u + 1\/v$ and $m = v\/u$, with the correct signs.",
    "Match each kind of mirror to the job it does.",
  ),
  hotspots: (
    "“The image formed by a plane mirror is …” — virtual, upright, same size, laterally inverted, as far behind as the object is in front.",
    "“A concave mirror has a focal length of 10 cm. An object 30 cm in front gives an image at …” — 15 cm, real and inverted.",
    "“A convex mirror always forms …” — a virtual, erect, diminished image, whatever the object distance.",
    "“The focal length of a mirror of radius 24 cm is …” — 12 cm, because $f = r\/2$.",
  ),
  trap-summary: "Three slips. (1) Measuring the angle of incidence from the mirror instead of from the *normal* — every angle in optics is from the normal. (2) Using the converging-lens sign convention without thinking: for a concave mirror $f$ is positive, for a convex mirror it is *negative*, and an answer with the wrong sign gives an image on the wrong side. (3) Believing a convex mirror can form a real image because it “focuses” light — it never can, which is exactly why it is safe as a driving mirror.",
)

// ============================================================================
== 3.1 The Laws of Reflection

Light travels in straight lines in a uniform medium, so a ray can be drawn as an arrow. When the ray meets a polished surface it is reflected, and two laws govern what it does.

#concept-box("The two laws of reflection")[
  + The incident ray, the reflected ray and the *normal* at the point of incidence all lie in the same plane.
  + The angle of incidence equals the angle of reflection: $i = r$, both measured from the normal.
]

The normal is the line perpendicular to the surface at the point where the ray strikes it. Measuring from the normal rather than from the surface is not a pedantry: a ray that strikes a mirror at 30° *to the surface* has an angle of incidence of 60°, and the two give completely different answers.

#diagram-fig("diagrams/ch03_plane_mirror.svg",
  "A plane mirror. The image sits as far behind the mirror as the object is in front, and the reflected rays diverge as though they came from it.", width: 100%)

*Regular and diffuse reflection.* A polished mirror reflects a parallel beam as a parallel beam — *regular* reflection, which is what makes an image. A sheet of paper reflects the same beam in every direction — *diffuse* reflection — which is why you can read it from any angle but cannot see your face in it. The laws are the same in both cases; the difference is that the surface of paper is rough on the scale of the wavelength.

// ============================================================================
== 3.2 The Image in a Plane Mirror

A plane mirror forms an image with five properties, and the examiner usually asks for three of them.

#table(
  columns: (1.1fr, 2.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why],
  ),
  [virtual], [the rays only *appear* to come from behind the mirror; no light really reaches there, so the image cannot be caught on a screen],
  [same size as the object], [the magnification is exactly 1, because $u = v$],
  [as far behind as the object is in front], [$v = u$],
  [upright], [the top of the object stays the top of the image],
  [laterally inverted], [left and right are swapped — which is why a clock in a mirror reads backwards],
)

The last point is often mis-stated as “inverted”. A plane mirror does *not* turn you upside down; it swaps your left hand for your right. The test is a page of writing held up to the mirror: the letters are the right way up but back to front.

#formula-box("Plane mirror")[
  $u = v$ and $m = 1$.

  The image is *virtual*, so $v$ is taken as negative in the sign convention and the formula gives $v = -u$; the size and the distance are what the question asks for, and both are equal to the object's.
]

#worked-example(
  1,
  "Two mirrors at right angles",
  [A ray of light strikes a plane mirror at 35° to its surface. (a) What is the angle of reflection? (b) Through what total angle is the ray deviated? (c) If the mirror were turned through 10°, through what angle would the reflected ray turn?],
  [
    *(a)* The angle of incidence is measured from the normal: $i = 90° - 35° = 55°$, so $r = 55°$.

    *(b)* The ray is turned through $180° - 2i = 180° - 110° = 70°$ — or, equivalently, twice the angle between the ray and the surface, $2 times 35° = 70°$.

    *(c)* Through 20°. Turning a mirror through $theta$ turns the reflected ray through $2 theta$, which is the principle of the optical lever used in a moving-coil galvanometer.

    *Check.* Part (b) can be checked with a sketch: the incoming ray makes 35° with the surface, the outgoing one makes 35° on the other side, so the direction has changed by $2 times 35° = 70°$. Part (c) follows from the same sketch — the doubling is in the geometry, not in the arithmetic.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 3.3 Concave and Convex Mirrors

A curved mirror is a section of a sphere. Three points describe it: the *pole* P at its centre, the *centre of curvature* C at the centre of the sphere, and the *principal focus* F, halfway between them. The distance PF is the focal length $f$, and PC is the radius of curvature $r$, so

$ f = r \/ 2. $

#concept-box("The three points that describe a curved mirror")[
  + The *pole* P is the centre of the mirror's surface — the point on the principal axis.
  + The *centre of curvature* C is the centre of the sphere of which the mirror is a part, at a distance $r$ from P.
  + The *principal focus* F is the point halfway between P and C, at a distance $f = r\/2$, and it is where a beam parallel to the axis is brought to a point (or appears to come from).
]

The *principal axis* is the line through P and C, and the *aperture* is the width of the mirror across its face. A mirror with a small aperture compared with its radius behaves as the formulae in this chapter assume; a wide, deeply curved mirror suffers from a defect called spherical aberration, in which the outer rays focus nearer the mirror than the inner ones — which is why a good telescope mirror is either very shallow or parabolically shaped.

#diagram-fig("diagrams/ch03_mirror_types.svg",
  "The two kinds of curved mirror. A concave mirror converges a parallel beam to its focus; a convex mirror diverges it as though it came from a focus behind the mirror.", width: 100%)

#table(
  columns: (1.0fr, 1.5fr, 1.4fr, 1.5fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Mirror],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Effect on a parallel beam],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Sign of f],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where it is used],
  ),
  [concave], [converges it to the focus in front], [positive], [torch and headlamp reflector, shaving mirror, telescope],
  [convex], [diverges it, as if from a focus behind], [negative], [driving mirror, shop security mirror, road bend],
  [plane], [reflects it unchanged], [$f$ infinite], [looking-glass, periscope, galvanometer],
)

*A concave mirror is not only a magnifier.* An object between F and the mirror gives an upright, magnified, virtual image — the shaving mirror. An object beyond F gives a real, inverted image — the one a reflecting telescope focuses onto a screen, and the one the dentist uses (a small concave mirror held close to the tooth gives the magnified virtual image instead).

#trap-box("Why a driving mirror is convex")[
  A convex mirror always gives an *upright*, *diminished*, virtual image, but it covers a wide field of view. The diminution is the point: everything behind the car is squeezed into the mirror, so the driver sees more road. The warning notice “objects in the mirror are closer than they appear” exists because the image is diminished — the eye reads a small image as a distant object.
]

// ============================================================================
== 3.4 Ray Construction and the Mirror Formula

Three rays are enough to locate any image. Learn them once and they serve for every mirror and every lens.

#diagram-fig("diagrams/ch03_mirror_rays.svg",
  "Three rays locate the image in a concave mirror, and the mirror formula confirms it. The object beyond C gives a real, inverted, diminished image between C and F.", width: 100%)

#concept-box("The three useful rays")[
  + A ray parallel to the principal axis reflects *through the focus* F.
  + A ray through the focus reflects *parallel to the axis*.
  + A ray through the centre of curvature C strikes the mirror along the normal and returns *along its own path*.
]

The formula that does the same work arithmetically is written with the distances measured from the pole:

#formula-box("The mirror formula")[
  $1\/f = 1\/u + 1\/v$   and   $m = ("image height")\/("object height") = v \/ u$

  $u$ is positive for a real object. $f$ is positive for a concave mirror, negative for a convex one. $v$ is positive for a real image (in front of the mirror) and negative for a virtual one (behind it).
]

#table(
  columns: (1.5fr, 1.3fr, 1.2fr, 1.4fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Object position (concave)],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Image],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Nature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use],
  ),
  [beyond C], [between C and F], [real, inverted, diminished], [reflecting telescope],
  [at C], [at C], [real, inverted, same size], [optical testing],
  [between C and F], [beyond C], [real, inverted, magnified], [projector],
  [at F], [at infinity], [—], [searchlight source],
  [between F and P], [behind the mirror], [virtual, upright, magnified], [shaving mirror],
)

#worked-example(
  2,
  "An object in front of a concave mirror",
  [An object 6.0 cm high stands 30 cm in front of a concave mirror of focal length 10 cm. Find (a) the image distance, (b) the magnification, and (c) the nature of the image.],
  [
    *(a)* $1\/v = 1\/f - 1\/u = 1\/10 - 1\/30 = (3 - 1)\/30 = 2\/30$, so $v = 15$ cm.

    *(b)* $m = v\/u = 15\/30 = 0.50$, so the image is 3.0 cm high.

    *(c)* $v$ is positive, so the image is *real* and *inverted*, and $m < 1$ so it is *diminished* — the arrangement of a reflecting telescope with the object beyond C.

    *Check.* The image lies between C (20 cm) and F (10 cm) at 15 cm, exactly where the ray diagram puts it for an object beyond C. The magnification is less than one, which it must be for an object that is farther away than the image.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "A convex mirror on a car",
  [A convex mirror used as a driving mirror has a focal length of 20 cm. A car 5.0 m behind is reflected in it. Find (a) the image distance, (b) the magnification, and (c) explain the sign of the answer.],
  [
    *(a)* For a convex mirror $f = -20$ cm, and the object is real so $u = +500$ cm.
    $1\/v = 1\/f - 1\/u = -1\/20 - 1\/500 = -(25 + 1)\/500 = -26\/500$, so $v = -19.2$ cm.

    *(b)* $m = |v|\/u = 19.2\/500 = 0.038$ — the image is about 4 % of the size of the car.

    *(c)* The negative sign of $v$ means the image is *behind* the mirror and therefore *virtual*; it is upright and diminished, which is exactly what a convex mirror always does.

    *Check.* The image is 19.2 cm behind a mirror of focal length 20 cm — near the focus but not at it, which is what an object at 5 m must give: a very distant object would image exactly at the focus.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 3.5 Uses and the Two Mirror Equations in Practice

A mirror is chosen for what its image does, not for its shape. The list below is the one the examiner works from.

#table(
  columns: (1.5fr, 1.2fr, 2.0fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Mirror],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why that one],
  ),
  [driving or security mirror], [convex], [a wide field and an upright, diminished image — safety],
  [shaving or dentist's mirror], [concave], [an object inside F gives an upright, magnified image],
  [torch or searchlight reflector], [concave], [a bulb at the focus sends a parallel beam],
  [reflecting telescope], [concave], [a large mirror collects more light than a lens of the same size],
  [periscope], [two plane mirrors at 45°], [the image is upright and not reversed],
)

#concept-box("Real or virtual — the one test")[
  A *real* image is formed where light actually converges, so a screen placed there catches it; a *virtual* image is where light only *appears* to have come from, and a screen there catches nothing. Every image a convex mirror forms is virtual; a concave mirror forms a real image unless the object is closer than its focus.
]

#worked-example(
  4,
  "Finding the radius of curvature",
  [A concave mirror forms a real image three times the size of the object when the object is 20 cm from the mirror. Find (a) the image distance, (b) the focal length, and (c) the radius of curvature.],
  [
    *(a)* $m = v\/u = 3$, so $v = 3 u = 60$ cm, positive because a real image from a concave mirror is in front.

    *(b)* $1\/f = 1\/u + 1\/v = 1\/20 + 1\/60 = 4\/60$, so $f = 15$ cm.

    *(c)* $r = 2 f = 30$ cm.

    *Check.* The image is outside C (30 cm) at 60 cm, which is where a magnified real image belongs for an object between F (15 cm) and C (30 cm) — and 20 cm is indeed between them. The picture and the numbers agree, which is the fastest check there is.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: reflection of light.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The angle of incidence equals the angle of reflection, both measured from the normal, and a mirror turned through $theta$ turns the ray through $2 theta$. A plane mirror gives a virtual, upright, same-sized image as far behind as the object is in front. A concave mirror can form a real image; a convex one diverges the light and can only ever form a virtual, diminished, upright image — which is why it is the driving mirror. Three rays locate any image, and $1\/f = 1\/u + 1\/v$ with $m = v\/u$ does the same arithmetic with the signs doing the work.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [State both laws of reflection and measure the angles from the normal.],
  [List the five properties of the image in a plane mirror.],
  [Name the pole, the centre of curvature and the focus, and write $f = r\/2$.],
  [Draw the three construction rays for a concave mirror and use $1\/f = 1\/u + 1\/v$ with the signs correct.],
))

== 3.6 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [A ray strikes a plane mirror at 30° to the surface. The angle of reflection is], [30°], [60°], [90°], [120°])
#mcq(2, [The image formed by a plane mirror is], [real and inverted], [virtual and upright], [real and upright], [virtual and inverted])
#mcq(3, [A concave mirror of focal length 12 cm forms an image of an object 36 cm away at], [9 cm], [18 cm], [24 cm], [36 cm])
#mcq(4, [A convex mirror always forms an image that is], [real and magnified], [real and diminished], [virtual and magnified], [virtual and diminished])

#answer-key-grid(("B", "B", "B", "D"))

#answer-notes((
  ("B", [the angle of incidence is $90° - 30° = 60°$ from the normal, and the angle of reflection equals it.]),
  ("B", [the reflected rays only appear to come from behind the mirror, so the image is virtual, upright and the same size.]),
  ("B", [$1\/v = 1\/12 - 1\/36 = 2\/36$, so $v = 18$ cm — a real, inverted image between F and C.]),
  ("D", [a convex mirror diverges the light, so no real image is possible; the image is always virtual, upright and diminished.]),
))

#concept-box("Carry this into Chapter 4")[
  A mirror sends light back into the medium it came from. A transparent surface does something else: it lets the light through and changes its speed. The next chapter follows the ray across the boundary, where the bend obeys Snell's law and, at a large enough angle, the light stops getting out at all.
]

#include "drill_ch03.typ"
