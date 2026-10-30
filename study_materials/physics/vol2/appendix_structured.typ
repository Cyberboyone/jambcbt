#import "template.typ": *

#current-chapter.update("Appendix I: Structured Questions with Model Answers")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: Structured Questions with Model Answers]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Structured Questions with Model Answers]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Six long questions in the style of the theory paper, with the model answer laid out beneath each. The answer is written the way it earns marks: the relation first, the substitution second, the answer with its unit third.]
]

#v(4pt)

== I.1 A Wave on a String

*Question.* A string of length 1.2 m is stretched between two fixed points and vibrates in its fundamental mode at 150 Hz. (a) Find the wavelength and the speed of the wave on the string. (b) Find the frequency of the third harmonic. (c) The tension is quadrupled. State the effect on the fundamental frequency and calculate it.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* The fundamental fits half a wavelength on the string: $lambda = 2L = 2.4$ m, so $v = f lambda = 150 times 2.4 = 360$ m s⁻¹. \
  *(b)* The third harmonic is three times the fundamental: $f_3 = 3 times 150 = 450$ Hz. \
  *(c)* The speed goes as $sqrt(T)$, so quadrupling the tension doubles the speed and therefore doubles the fundamental: $f_1 = 300$ Hz.
]

== I.2 An Echo and a Resonance Tube

*Question.* A student claps and hears the echo from a wall 170 m away after 1.0 s. (a) Calculate the speed of sound. (b) The same sound is used with a resonance tube closed at one end, which resonates first at 16.0 cm and again at 50.0 cm. Find the wavelength, the frequency and the end correction.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* The sound travels there and back: $v = 2d\/t = 340\/1.0 = 340$ m s⁻¹. \
  *(b)* $lambda\/2 = 50.0 - 16.0 = 34.0$ cm, so $lambda = 0.68$ m. Then $f = v\/lambda = 340\/0.68 = 500$ Hz. The end correction is $e = lambda\/4 - l_1 = 17.0 - 16.0 = 1.0$ cm, and the second resonance confirms it: $3lambda\/4 - l_2 = 51.0 - 50.0 = 1.0$ cm.
]

== I.3 A Mirror and a Screen

*Question.* An object 4.0 cm high is placed 30 cm in front of a concave mirror of focal length 10 cm. (a) Find the image distance. (b) Calculate the height of the image. (c) State two properties of the image. (d) Where must the object be placed to give an image twice as far from the mirror as the object?

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* $1\/v = 1\/10 - 1\/30 = 2\/30$, so $v = 15$ cm. \
  *(b)* $m = v\/u = 0.50$, so the image is $0.50 times 4.0 = 2.0$ cm high. \
  *(c)* It is real and inverted (and diminished). \
  *(d)* $v = 2u$ with $1\/10 = 1\/u + 1\/(2u) = 3\/(2u)$, so $u = 15$ cm — between F and C.
]

== I.4 A Ray Through a Glass Block

*Question.* A ray of light strikes a glass block of refractive index 1.50 at 50° to the normal. (a) Find the angle of refraction. (b) Find the speed and the wavelength of the light in the glass if its wavelength in air is 600 nm. (c) Find the critical angle of the glass and state whether the ray would escape if it met the second face at 45°.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* $sin r = sin 50°\/1.50 = 0.511$, so $r = 31°$. \
  *(b)* $v = c\/n = 2.0 times 10^8$ m s⁻¹ and $lambda = 600\/1.5 = 400$ nm. \
  *(c)* $sin c = 1\/1.5 = 0.667$, so $c = 42°$. Since 45° is greater than 42°, the ray is totally internally reflected and does not escape.
]

== I.5 A Lens and a Reading Test

*Question.* A long-sighted student has a near point of 60 cm and wishes to read at 25 cm. (a) Find the focal length of the lens required. (b) Find its power. (c) State the nature of the image the lens forms of the page. (d) Explain why the same student cannot use the lens to see a distant object sharply.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* The lens must take the page at 25 cm and form a virtual image at the near point: $1\/f = 1\/25 - 1\/60 = 7\/300$, so $f = 43$ cm. \
  *(b)* $P = 1\/0.43 = +2.3$ D. \
  *(c)* The image is virtual, upright and on the same side as the page. \
  *(d)* The lens is converging and adds its power to the eye's; for a distant object it would bring the rays to a focus before the retina, so the student would see a blur.
]

== I.6 A Prism and Its Spectrum

*Question.* A ray of white light enters a prism of angle 60° and refractive index 1.50 at 45°. (a) Show that the angle of emergence is about 52°. (b) Find the total deviation. (c) Explain, in terms of the refractive index, why the emergent light is spread into a spectrum.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* $sin r_1 = sin 45°\/1.50 = 0.471$, so $r_1 = 28.1°$ and $r_2 = 60° - 28.1° = 31.9°$. Then $sin i_2 = 1.50 sin 31.9° = 0.793$, so $i_2 = 52°$, which is the value the question asks you to show — the method is what carries the marks. \
  *(b)* $d = i_1 + i_2 - A = 45 + 52 - 60 = 37°$ — about a third of a right angle. \
  *(c)* The refractive index is slightly larger for violet than for red, so violet is deviated more at each face and the colours leave along slightly different directions.
]

#concept-box("How the marks are given")[
  A structured answer earns marks in three places: the *relation* written before any numbers (one mark), the *substitution* with the units shown (one mark), and the *answer with its unit and a sensible size* (one mark). A bare number earns the first two only if the working is shown; a correct relation with no substitution earns the first alone. Write the relation first, every time.
]

== I.7 The Mark Scheme at a Glance

#table(
  columns: (1.3fr, 3.1fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part of the answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it earns, and how to show it],
  ),
  [the relation], [the formula written before any numbers — the examiner is looking for the physics, not the arithmetic],
  [the substitution], [the numbers put in with their units, on their own line, so the method is visible],
  [the answer], [a value with a unit and a sensible size; an answer of 0.68 m for a sound wavelength is checkable at a glance],
  [the statement], [one sentence of interpretation — “the image is real and inverted” — where the question asks for it],
  [the check], [a second route to the same answer, or a sentence saying why the answer is the right way round],
  [the diagram], [where the question says “sketch” or “show on a diagram”, a labelled sketch with the normal, the ray and the angle marked],
)

#v(4pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Two habits that add marks in a theory paper]
  #v(3pt)
  #text(size: 9.6pt)[Write the relation on the left of the page and the substitution beneath it, not across the line: a marker who can follow the working gives the method marks even when the arithmetic slips. And answer every part of a multi-part question, even with a sentence, because a blank part earns nothing while a sentence explaining the method often earns one mark. A structured paper is marked part by part, so the score is built in small pieces: a candidate who writes one sentence for every part of every question rarely scores below half marks, whatever the arithmetic does.]
]

