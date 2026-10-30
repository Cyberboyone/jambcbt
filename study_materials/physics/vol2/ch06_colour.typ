#import "template.typ": *

#current-chapter.update("Chapter 6: Colour and the Electromagnetic Spectrum")

#pagebreak()

#chapter-opener(
  6,
  "Colour and the Electromagnetic Spectrum",
  subtitle: "Dispersion and the Spectrum, Colour Mixing, Filters, the Electromagnetic Spectrum, Photometry, Interference, Diffraction and Polarisation",
  syllabus-ref: "Sec. B • Topic 6",
  utme-weight: "3 Qs every year",
  running: "Colour and the Spectrum",
)

#focus-radar(
  objectives: (
    "Explain dispersion as the variation of refractive index with colour.",
    "State the order of the spectrum and the deviation of each end of it.",
    "Distinguish the additive from the subtractive primary colours, and predict the colour of an object in coloured light.",
    "Name the members of the electromagnetic spectrum in order, with one use of each.",
    "Use $E = I\/d^2$ for illuminance.",
    "Describe interference, diffraction and polarisation, and say what each proves about light.",
  ),
  hotspots: (
    "“A red object is viewed in green light. It appears …” — black, because there is no red in the light to reflect.",
    "“Which colour is deviated most by a prism?” — violet.",
    "“The arrangement of the electromagnetic spectrum in order of increasing wavelength is …” — gamma, X-ray, ultraviolet, visible, infrared, microwave, radio.",
    "“Two sources produce interference only if they are …” — coherent: same frequency and a constant phase difference.",
    "“Polarisation shows that light is …” — a transverse wave.",
  ),
  trap-summary: "Three slips. (1) Mixing up the two sets of primaries: for *light* they are red, green and blue (additive), for *pigment* cyan, magenta and yellow (subtractive). (2) Saying an object “has the colour red in it” — an object has no colour of its own; it reflects whatever its surface reflects, and in light that contains none of that colour it looks black. (3) Forgetting that the whole electromagnetic spectrum travels at the same speed in a vacuum, so a gamma ray and a radio wave cross the hall in the same time — they differ only in frequency and wavelength.",
)

// ============================================================================
== 6.1 Dispersion

The refractive index of glass is not quite one number. It is slightly larger for blue light than for red — by about one per cent — and one per cent is enough. A prism therefore bends blue more than red, and a beam of white light entering it leaves as a fan of colours. This is *dispersion*.

#diagram-fig("diagrams/ch06_dispersion.svg",
  "Dispersion by a prism. White light separates into the spectrum because the refractive index rises with frequency, so violet is deviated most and red least.", width: 100%)

#formula-box("Dispersion")[
  $ n_"violet" > n_"blue" > n_"green" > n_"yellow" > n_"red" $
  and since $v = c\/n$, the violet travels slowest in the glass. The frequency is unchanged by the glass, so the colour that leaves the prism is the colour that entered it — a prism sorts light, it does not create it.
]

The order of the spectrum, from least to most deviated, is *red, orange, yellow, green, blue, indigo, violet* — remembered as the seven colours in order of decreasing wavelength. Red has the longest wavelength in the visible band, about 700 nm; violet the shortest, about 400 nm.

#trap-box("A prism does not colour the light")[
  The prism separates colours that are already there. Pass the spectrum through a second, inverted prism and the colours recombine into a white patch on the screen — Newton's original experiment, and the proof that white light is a mixture. A single prism gives a spectrum because the eye can distinguish the colours in it; it does not manufacture them.
]

*The rainbow* is the same physics on a larger scale. Sunlight entering a raindrop is refracted, totally internally reflected once at the back of the drop and refracted again as it leaves, so the drop disperses light as a prism does. The red arc lies outside the violet one, about 42° from the antisolar direction; two internal reflections give the fainter secondary bow, with the colours reversed.

// ============================================================================
== 6.2 Colour

Colour is a sensation produced by the eye, not a property of an object. A surface looks red because it reflects red light and absorbs the rest; shine a green light on it and there is nothing for it to reflect, so it looks black.

#diagram-fig("diagrams/ch06_colour.svg",
  "The two sets of primary colours. Adding red, green and blue light gives white; mixing cyan, magenta and yellow pigments subtracts light until nothing is left.", width: 100%)

#table(
  columns: (1.1fr, 1.5fr, 1.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Primaries],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it works],
  ),
  [additive — light], [red, green, blue], [all three together give white; red + green gives yellow; the screen of a phone works this way],
  [subtractive — pigment], [cyan, magenta, yellow], [each pigment absorbs its complementary colour, so all three together give black; a printed page works this way],
)

*Filters.* A filter transmits its own colour and absorbs the rest. A red filter in white light passes red only; put a green filter behind it and nothing gets through, because the red filter has already removed the green. This is why stacking coloured filters gives a darker and darker image and eventually black.

#worked-example(
  1,
  "A shirt in coloured light",
  [A shirt looks red in white light. State the colour it appears (a) in red light, (b) in green light, and (c) in yellow light.],
  [
    *(a)* Red — the light contains red, and the shirt reflects it.

    *(b)* Black. The shirt reflects only red, and green light contains no red, so everything is absorbed.

    *(c)* Red. Yellow light is a mixture of red and green, and the shirt reflects the red part of it, so it still looks red — but darker than in white light, because the green half of the yellow is absorbed.

    *Check.* The reasoning runs on one question only: *what colours are in the light, and which of them does the object reflect?* A candidate who instead asks “what colour is the shirt?” gets every part of this question wrong.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 6.3 The Electromagnetic Spectrum

Light is one member of a family of waves that all travel at the same speed in a vacuum, $3.0 times 10^8$ m s⁻¹, and differ only in frequency and wavelength. They are transverse, they need no medium, and they carry energy.

#diagram-fig("diagrams/ch06_spectrum.svg",
  "The electromagnetic spectrum. Frequency and energy increase to the right, wavelength to the left, and every member travels at the same speed in a vacuum.", width: 100%)

#table(
  columns: (1.15fr, 1.35fr, 1.35fr, 1.55fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Band],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Wavelength],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Frequency],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[One use or effect],
  ),
  [radio], [> 0.1 m], [below $3 times 10^9$ Hz], [broadcasting, television],
  [microwave], [0.1 m – 1 mm], [$3 times 10^9$ – $3 times 10^11$ Hz], [radar, mobile phones, microwave ovens],
  [infrared], [1 mm – 700 nm], [$3 times 10^11$ – $4 times 10^14$ Hz], [heating, remote controls, night vision],
  [visible], [700 – 400 nm], [$4$ – $7.5 times 10^14$ Hz], [sight, photography, photosynthesis],
  [ultraviolet], [400 – 10 nm], [$7.5 times 10^14$ – $3 times 10^16$ Hz], [sterilising, vitamin D, fluorescence],
  [X-ray], [10 – 0.01 nm], [$3 times 10^16$ – $3 times 10^19$ Hz], [medical imaging, crystal structure],
  [gamma], [< 0.01 nm], [above $3 times 10^19$ Hz], [cancer treatment, sterilising],
)

#formula-box("One speed, two variables")[
  $ c = f lambda = 3.0 times 10^8 "m s"^(-1) $
  so the longest waves have the lowest frequency. A radio station on 100 MHz has a wavelength of 3.0 m; a hospital X-ray of wavelength 0.10 nm has a frequency of $3.0 times 10^18$ Hz.
]

#worked-example(
  2,
  "The wavelength of a broadcast",
  [A radio station broadcasts at 98.5 MHz. Find (a) the wavelength of the signal and (b) the frequency of a signal of wavelength 30 m.],
  [
    *(a)* $lambda = c\/f = (3.0 times 10^8) \/ (98.5 times 10^6) = 3.05$ m.

    *(b)* $f = c\/lambda = (3.0 times 10^8) \/ 30 = 1.0 times 10^7$ Hz $= 10$ MHz.

    *Check.* All electromagnetic waves obey the same relation, so a radio wave and a light wave are handled by identical arithmetic — the only difference is the size of the numbers. Frequency in hertz means $10^6$ for megahertz and $10^9$ for gigahertz; most lost marks here are lost in that conversion, not in the physics.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 6.4 Photometry: How Bright, and How Far

Light spreads out from a point source in every direction, so the same power is spread over a sphere of area $4 pi d^2$. The illuminance — the light falling on a unit area — therefore falls as the square of the distance.

#formula-box("Illuminance")[
  $ E = I \/ d^2 $
  where $I$ is the luminous intensity of the source in candela and $d$ the distance in metres, giving $E$ in lux. Doubling the distance quarters the illuminance; trebling it reduces it to one ninth.
]

#worked-example(
  3,
  "A lamp over a bench",
  [A lamp of luminous intensity 200 cd hangs 2.0 m above a bench. Find (a) the illuminance on the bench directly below, and (b) the height at which the illuminance would be 100 lux.],
  [
    *(a)* $E = I\/d^2 = 200 \/ 2.0^2 = 50$ lux.

    *(b)* $d^2 = I\/E = 200\/100 = 2.0$, so $d = 1.4$ m.

    *Check.* To double the illuminance from 50 to 100 lux the lamp had to come closer by a factor of $sqrt(2)$ — from 2.0 m to 1.4 m — and not by a factor of 2. That square root is the whole content of the inverse-square law, and it is what the examiner tests.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 6.5 Wave Optics: Interference, Diffraction and Polarisation

Three experiments settled the argument about what light is. Each of them is a wave effect, and each is on the syllabus by name.

#concept-box("The three wave effects")[
  + *Interference* — two coherent beams cross and produce alternate bright and dark fringes. It needs a single source split into two, because two separate lamps are never coherent.
  + *Diffraction* — light spreads round the edge of an obstacle and through a narrow gap. It is appreciable only when the gap is comparable with the wavelength.
  + *Polarisation* — the vibrations of light can be restricted to one plane. Only a transverse wave can be polarised, so this is the proof that light is transverse.
]

#formula-box("Young's double slit")[
  $ lambda = a x \/ d $
  where $a$ is the slit separation, $x$ the fringe spacing on the screen and $d$ the distance from the slits to the screen. The fringes are equally spaced, which is what makes the formula usable.
]

#worked-example(
  4,
  "Fringes from two slits",
  [In a Young's double-slit experiment the slits are 0.50 mm apart and the screen is 1.2 m away. The fringe spacing is 1.4 mm. Find (a) the wavelength of the light and (b) the colour.],
  [
    *(a)* $lambda = a x \/ d = (0.50 times 10^(-3) times 1.4 times 10^(-3)) \/ 1.2 = 5.8 times 10^(-7)$ m $= 580$ nm.

    *(b)* 580 nm lies between 400 nm and 700 nm, near the middle of the visible band: the light is yellow.

    *Check.* The units were converted before multiplying — millimetres to metres in both $a$ and $x$ — and the answer came out at $10^(-7)$ m, which is the size a visible wavelength must be. A candidate who forgets the conversion gets 0.58 mm and an answer that is visibly absurd for light.
  ],
  tier: "UTME STANDARD",
)

#trap-box("Coherence is the condition, not the apparatus")[
  Interference needs two sources of the *same frequency* with a *constant phase difference* — coherent sources. Two identical lamps side by side do not interfere visibly, because their phases drift independently. The double slit works because one wavefront is divided into two, so both halves come from the same original vibration and stay in step.
]

#worked-example(
  5,
  "Putting the three effects in order",
  [State which wave effect explains each observation: (a) a CD shows rainbow colours in white light, (b) the sky is blue, (c) light passing through a narrow slit spreads out, (d) a photograph of a scene looks different through a polarising filter.],
  [
    *(a)* Interference from the fine tracks of the disc, which act as a diffraction grating.

    *(b)* Scattering — the molecules of the air scatter the short blue wavelengths far more strongly than the long red ones, so blue reaches the eye from every direction of the sky.

    *(c)* Diffraction, and the narrower the slit the wider the spread.

    *(d)* Polarisation: light reflected from a surface is partly polarised, and the filter removes one plane of vibration.

    *Check.* Each answer names a wave property, not a colour. The discipline is to ask “what did the light *do* here?” — spread, cancel, or align — and the name of the effect follows from the verb.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: colour and the spectrum.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    White light is a mixture, and a prism proves it: the refractive index rises with frequency, so violet is deviated most and red least. Colour is a sensation, not a property — an object looks red because it reflects red and absorbs the rest, so in green light it looks black. Light is one member of the electromagnetic family, all of it travelling at $3.0 times 10^8$ m s⁻¹ in a vacuum and differing only in frequency. Illuminance falls as $1\/d^2$, and the three wave experiments are the evidence that light is transverse.
  ]
]

== 6.6 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [In dispersion by a prism, the colour deviated most is], [red], [yellow], [green], [violet])
#mcq(2, [A blue object is viewed in red light. It appears], [blue], [red], [black], [white])
#mcq(3, [Which of these travels fastest in a vacuum?], [radio waves], [visible light], [X-rays], [all travel at the same speed])
#mcq(4, [The illuminance 3.0 m from a lamp is 40 lux. At 6.0 m it is], [10 lux], [20 lux], [40 lux], [80 lux])

#answer-key-grid(("D", "C", "D", "A"))

#answer-notes((
  ("D", [the refractive index is greatest for the shortest wavelength, so violet is deviated most and red least.]),
  ("C", [a blue object reflects only blue; red light contains no blue, so all of it is absorbed and the object looks black.]),
  ("D", [every member of the electromagnetic spectrum travels at $3.0 times 10^8$ m s⁻¹ in a vacuum; only the frequency and wavelength differ.]),
  ("A", [doubling the distance quarters the illuminance: $40 \/ 4 = 10$ lux.]),
))

#chapter-checklist("Before you leave Chapter 6", (
  [Explain dispersion in terms of the refractive index.],
  [Give the order of the spectrum and say which end is deviated most.],
  [Distinguish the additive from the subtractive primaries.],
  [Predict the colour of an object in coloured light or through a filter.],
  [List the seven bands of the spectrum with one use of each.],
  [Use $c = f lambda$ for any electromagnetic wave.],
))

#concept-box("That is the volume")[
  Six chapters have followed light and sound from a single wave equation to the whole electromagnetic spectrum: the wave that carries the note, the echo that measures a cliff, the mirror that throws the image back, the boundary that bends the ray, the lens that gathers it to a point, and the prism that takes it apart. Every one of them is the same physics — a wave travelling, meeting something, and being changed by it. The appendices that follow collect the data, the formulae, the traps and the drills so that all of it can be revised in the last week before the examination.
]

#include "drill_ch06.typ"
