#import "template.typ": *

#current-chapter.update("Chapter 1: Wave Motion")

#pagebreak()

#chapter-opener(
  1,
  "Wave Motion",
  subtitle: "Waves and Their Properties, the Wave Equation, Transverse and Longitudinal Waves, Reflection, Refraction, Diffraction and Interference, and Stationary Waves",
  syllabus-ref: "Sec. B • Topic 1",
  utme-weight: "3 Qs every year",
  running: "Wave Motion",
)

#focus-radar(
  objectives: (
    "Define a wave and the terms amplitude, wavelength, frequency, period and speed.",
    "Use $v = f lambda$, and explain what happens to each quantity when a wave enters a new medium.",
    "Distinguish transverse from longitudinal waves, with an example of each.",
    "Describe reflection, refraction, diffraction and interference, and the conditions for each.",
    "Explain superposition, and how two identical waves in opposite directions make a stationary wave.",
    "Relate the length of a vibrating string to the wavelength of its harmonics.",
  ),
  hotspots: (
    "“The frequency of a wave passing from air into glass …” — does not change; the speed and the wavelength do.",
    "“A wave of frequency 50 Hz has a wavelength of 4 m. Its speed is …” — 200 m s⁻¹.",
    "“Which is a longitudinal wave?” — sound. Light and water waves are transverse.",
    "“Diffraction is greatest when …” — the gap is about the same size as the wavelength.",
    "“The distance between two successive nodes on a stationary wave is …” — half a wavelength.",
  ),
  trap-summary: "Three slips. (1) Thinking the frequency changes when a wave crosses a boundary: the source sets the frequency, so $f$ is fixed, and only $v$ and $lambda$ change. (2) Multiplying the wavelength in centimetres by the frequency in hertz and reporting the answer in m s⁻¹ — convert to metres first. (3) Confusing a *stationary* wave with a *progressive* wave: in a stationary wave there is no net transfer of energy, every point has its own fixed amplitude, and neighbouring nodes are $lambda \/ 2$ apart, not $lambda$.",
)

// ============================================================================
== 1.1 What a Wave Is

A *wave* is a disturbance that travels through a medium — or through a vacuum, in the case of light — transferring *energy* from one place to another without transferring matter. The particles of the medium oscillate about fixed positions; the pattern of the disturbance moves on.

#concept-box("The definition the examiner wants")[
  A wave is a periodic disturbance that transfers energy from one point to another without the transfer of matter. The particles of the medium vibrate about their equilibrium positions while the wave passes through.
]

This is the whole difference between a wave and a thrown stone. The stone moves from your hand to the water; the wave moves from the splash to the shore while the water itself only bobs up and down. A cork floating on the sea rises and falls as the waves pass under it but drifts nowhere.

#formula-box("The five quantities of every wave")[
  + *Amplitude* $A$ — the greatest displacement from the rest position, in metres. It fixes the energy the wave carries.
  + *Wavelength* $lambda$ — the distance between two successive points in step, crest to crest, in metres.
  + *Frequency* $f$ — the number of complete oscillations each second, in hertz.
  + *Period* $T$ — the time for one complete oscillation, in seconds, so $f = 1\/T$.
  + *Speed* $v$ — the distance the pattern travels each second, in m s⁻¹.
]

#diagram-fig("diagrams/ch01_wave_terms.svg",
  "The anatomy of a wave. Amplitude is measured from the rest line to a crest; wavelength is one complete cycle, crest to crest; the period is the time one cycle takes.", width: 100%)

#worked-example(
  1,
  "Reading a wave off its graph",
  [A water wave has a wavelength of 2.5 m and a frequency of 0.80 Hz. Find (a) its speed, (b) its period, and (c) the distance the wave travels in 5.0 s.],
  [
    *(a)* $v = f lambda = 0.80 times 2.5 = 2.0$ m s⁻¹.

    *(b)* $T = 1 \/ f = 1 \/ 0.80 = 1.25$ s.

    *(c)* $s = v t = 2.0 times 5.0 = 10$ m — which is four complete wavelengths, since $10 \/ 2.5 = 4$.

    *Check.* Four wavelengths in 5.0 s means four oscillations, and at $0.80$ Hz that takes $4 \/ 0.80 = 5.0$ s. Both routes agree, which is the point of keeping $f$ and $lambda$ in the same sentence.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 1.2 The Wave Equation

Everything in this chapter is a consequence of one relation. A crest passes a point once every period, and in one period the pattern moves forward by exactly one wavelength:

#formula-box("The wave equation")[
  $v = f lambda$   —   and, since $f = 1\/T$, also $v = lambda \/ T$.
  The speed is a property of the *medium*; the frequency is a property of the *source*; the wavelength is whatever the two together allow.
]

*What changes at a boundary.* When a wave crosses into a new medium its speed changes — sound is faster in water than in air, light is slower in glass than in air. The frequency is set by the source and cannot change, so the wavelength must adjust:

$ lambda_"new" = v_"new" \/ f. $

A 500 Hz note in air ($v = 340$ m s⁻¹) has a wavelength of 0.68 m. In water ($v = 1500$ m s⁻¹) the same 500 Hz note has a wavelength of 3.0 m. The pitch the diver hears is the same; the wave is simply longer.

#trap-box("The frequency does not change at a boundary")[
  The commonest wrong answer in the whole of Section B is “the frequency increases when the wave enters the denser medium”. It cannot: the source is still vibrating at the same rate, and every crest that leaves it must arrive somewhere. What changes is the speed (and therefore the wavelength), not the number of crests per second.
]

#worked-example(
  2,
  "A radio wave and a sound wave",
  [A radio station broadcasts at 98.5 MHz. Taking the speed of light as $3.0 times 10^8$ m s⁻¹, find (a) the wavelength of the signal, and (b) the time it takes to reach a receiver 60 km away.],
  [
    *(a)* $lambda = v \/ f = (3.0 times 10^8) \/ (98.5 times 10^6) = 3.05$ m.

    *(b)* $t = d \/ v = (60 times 10^3) \/ (3.0 times 10^8) = 2.0 times 10^(-4)$ s.

    *Check.* The wavelength is about three metres, which is the length of the car aerial — a dipole receives best when its length is about half a wavelength, so a 1.5 m rod is the right size for this station. The time is a fifth of a millisecond, which is why the voice on the radio and the voice in the studio appear simultaneous.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 1.3 Transverse and Longitudinal Waves

Waves are classified by the direction in which the particles of the medium vibrate.

#diagram-fig("diagrams/ch01_wave_types.svg",
  "Transverse and longitudinal waves. In a transverse wave the particles vibrate at right angles to the direction of travel; in a longitudinal wave they vibrate along it.", width: 100%)

#table(
  columns: (1.15fr, 1.85fr, 1.85fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[ ],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Transverse],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Longitudinal],
  ),
  [Direction of vibration], [at right angles to the travel], [along the direction of travel],
  [Shape of the wave], [crests and troughs], [compressions and rarefactions],
  [Can it be polarised?], [yes — which is how we know light is transverse], [no],
  [Travels through a vacuum?], [yes, if it is electromagnetic], [no — a medium is essential],
  [Examples], [light, all electromagnetic waves, water surface waves, waves on a string], [sound in air and water, a pushed spring, seismic P waves],
)

*A note on the third row.* Polarisation is the one test that separates the two families without ambiguity. If a wave can be polarised, it is transverse. Light can; sound cannot. That is the whole argument, and it is worth remembering because the examiner uses it as a one-line question.

#worked-example(
  3,
  "Counting the compressions",
  [A loudspeaker emits a note of frequency 170 Hz in air where the speed of sound is 340 m s⁻¹. Find (a) the wavelength and (b) the number of complete compressions that pass a point in 2.0 s.],
  [
    *(a)* $lambda = v \/ f = 340 \/ 170 = 2.0$ m.

    *(b)* The number of compressions passing in a time $t$ is $f t = 170 times 2.0 = 340$.

    *Check.* The same answer comes from the distance: in 2.0 s the wave travels $340 times 2.0 = 680$ m, and at 2.0 m per compression that is 340 compressions. Frequency is simply the rate at which crests (or compressions) arrive.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 1.4 Reflection, Refraction, Diffraction, Interference

Any wave, whatever its kind, does the same four things when it meets a boundary, an obstacle or another wave. Learn them as a list, because the examiner often asks which one a given observation illustrates.

#table(
  columns: (1.0fr, 2.1fr, 1.6fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Behaviour],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where you meet it],
  ),
  [Reflection], [the wave bounces back from a surface, with the angle of incidence equal to the angle of reflection], [echoes, mirrors, a ripple tank wall],
  [Refraction], [the wave changes speed and direction on entering a new medium, and its wavelength changes with it], [a straw that looks bent in water, sound bending at dusk],
  [Diffraction], [the wave spreads out after passing an obstacle or a gap; greatest when the gap is comparable with the wavelength], [hearing round a corner, radio reaching a valley],
  [Interference], [two waves meet and add — reinforcement where they are in step, cancellation where they are not], [soap-film colours, noise-cancelling headphones, Young's slits],
)

*Diffraction explains a fact you already know.* You can hear a person round a corner but you cannot see them. Sound has a wavelength of about a metre, comparable with a doorway, so it spreads through the opening; light has a wavelength of about half a micrometre, so its diffraction round a door is far too small to notice. The same physics, two different wavelengths.

*Interference explains why two loudspeakers can make a quiet spot.* Where the compressions of one arrive with the compressions of the other, the sound is loud (constructive interference); where a compression meets a rarefaction, they cancel (destructive interference). It works for light too, which is how a soap film shows colours: some thicknesses reinforce one colour and cancel another.

#concept-box("Coherence — the condition for steady interference")[
  Two sources interfere steadily only if they are *coherent*: the same frequency, and a constant phase difference. Two separate lamps are not coherent, which is why they do not make a visible interference pattern; one source split into two paths — as in Young's experiment, or a soap film — is.
]

#worked-example(
  4,
  "Diffraction at a gap",
  [A water wave of wavelength 6.0 cm meets a gap in a barrier. State, with a reason, how the diffraction pattern changes when (a) the gap is widened from 6 cm to 30 cm, and (b) the wavelength is increased to 12 cm with the gap unchanged at 6 cm.],
  [
    *(a)* The spreading becomes less marked. Diffraction is greatest when the gap is about one wavelength; at 30 cm the gap is five wavelengths wide, so the wave travels through almost in a straight line.

    *(b)* The spreading becomes more marked. Now the gap is half a wavelength, smaller than the wavelength itself, and the wave spreads outwards in nearly semicircles.

    *Check.* The rule to quote is “diffraction is appreciable when the gap is of the same order as the wavelength”. Notice that the frequency, and therefore the wavelength, is set before the wave ever reaches the gap — the gap changes only how much the wave spreads, never what it is.
  ],
  tier: "UTME STANDARD",
)

#trap-box("Diffraction is not refraction")[
  A wave that *bends after passing an edge* has been diffracted; a wave that *bends on entering a new medium* has been refracted. The giveaway is what is on the far side of the boundary: in refraction there is a new medium and a change of speed; in diffraction the medium is the same and only the direction of travel spreads out.
]

// ============================================================================
== 1.5 Superposition and Stationary Waves

When two waves pass through the same point, the displacement there is the sum of the two displacements. This is the *principle of superposition*, and it is the whole of interference.

If two identical waves travel in *opposite* directions through the same medium, the sum is no longer a travelling wave but a *stationary wave*: a pattern of fixed points that never move (nodes) separated by points that move most (antinodes).

#concept-box("What makes a stationary wave")[
  + Two waves of the same frequency and amplitude travel in opposite directions through the same medium.
  + The result is a fixed pattern of nodes and antinodes, and no energy is carried along it.
  + Neighbouring nodes are half a wavelength apart; a node and the next antinode are a quarter of a wavelength apart.
  + Every point of the medium oscillates at the same frequency, but with its own amplitude — zero at a node, maximum at an antinode.
]

A stationary wave is set up whenever a wave is reflected back on itself: a string fixed at both ends, a column of air in a pipe, the surface of a drum. The reflected wave interferes with the incoming one and the two lock together into a pattern that stands still while the medium oscillates through it. That is why the string of a guitar can look blurred in the middle and sharp at the ends — the ends are nodes and the middle is an antinode.

#diagram-fig("diagrams/ch01_stationary.svg",
  "Stationary waves on a string fixed at both ends. The fundamental has one loop, the second harmonic two, and the third three; each additional loop is another half wavelength.", width: 100%)

#formula-box("String fixed at both ends")[
  $L = n lambda \/ 2$   so   $lambda = 2L \/ n$,   and   $f_n = n v \/ (2 L)$, with $n = 1, 2, 3 dots$
  $f_1 = v \/ 2L$ is the fundamental; the rest are its harmonics, and *all* of them are present.
]

#formula-box("Pipe closed at one end")[
  $L = (2n - 1) lambda \/ 4$   so   $f_n = (2n - 1) v \/ (4 L)$ — that is $f_1, 3f_1, 5f_1 dots$

  Only the *odd* harmonics sound, because there must be a node at the closed end and an antinode at the open one.
]

*Why the pipe is different.* A string fixed at both ends has a node at each end, so a whole number of half-wavelengths fits. A pipe closed at one end has a node at the closed end but an *antinode* at the open one, so only an odd number of quarter-wavelengths fits. That single sentence is the answer to a recurring question.

#worked-example(
  5,
  "A string and its harmonics",
  [A string of length 0.80 m is stretched so that waves travel along it at 240 m s⁻¹. Find (a) the frequency of the fundamental, (b) the frequency of the third harmonic, and (c) the wavelength of the third harmonic.],
  [
    *(a)* $f_1 = v \/ (2L) = 240 \/ (2 times 0.80) = 150$ Hz.

    *(b)* $f_3 = 3 f_1 = 450$ Hz.

    *(c)* $lambda_3 = 2L \/ 3 = 1.6 \/ 3 = 0.53$ m.

    *Check.* Three half-wavelengths fit on the string: $3 times 0.53 = 1.6$ m $= 2L$, and $v = f lambda = 450 times 0.53 = 240$ m s⁻¹, which is the speed the string was given. Every route back to the same three numbers is a route the examiner can take.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: wave motion.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A wave carries energy without carrying matter, and every wave — light, sound, a ripple, a shaken rope — obeys the same single relation, $v = f lambda$. The medium fixes the speed and the source fixes the frequency, so when a wave crosses into a new medium the wavelength has to give; the frequency never does. Transverse waves vibrate across the direction of travel and can be polarised, longitudinal waves vibrate along it and cannot, which is why sound cannot be polarised and light can. At a boundary every wave reflects, refracts, diffracts and interferes, and diffraction is only noticeable when the gap or obstacle is about one wavelength — hence sound round a corner and no light round the same corner. Superposition explains both the loud and the quiet: two waves in step reinforce, two out of step cancel, and two identical waves travelling in opposite directions make a stationary wave of nodes and antinodes, with a string sounding at $n v\/2L$ and a pipe closed at one end only at the odd multiples.
  ]
]

== 1.6 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [A wave of frequency 25 Hz has a wavelength of 4.0 m. Its speed is], [0.16 m s⁻¹], [6.3 m s⁻¹], [29 m s⁻¹], [100 m s⁻¹])
#mcq(2, [A sound wave passes from air into water. Which quantity does not change?], [its speed], [its wavelength], [its frequency], [its amplitude])
#mcq(3, [Which of the following is a longitudinal wave?], [light], [sound], [a water wave], [a wave on a string])
#mcq(4, [The distance between two successive nodes on a stationary wave is], [one wavelength], [half a wavelength], [a quarter of a wavelength], [two wavelengths])

#answer-key-grid(("D", "C", "B", "B"))

#answer-notes((
  ("D", [$v = f lambda = 25 times 4.0 = 100$ m s⁻¹.]),
  ("C", [the source still vibrates at the same rate, so the frequency is fixed; the speed rises and the wavelength rises with it.]),
  ("B", [the air vibrates along the direction the sound travels. Light and water waves are transverse.]),
  ("B", [neighbouring nodes are half a wavelength apart — which is why a string of length $L$ carrying $n$ loops has $L = n lambda\/2$.]),
))

#chapter-checklist("Before you leave Chapter 1", (
  [State the five quantities that describe a wave and give the unit of each.],
  [Use $v = f lambda$ in either direction, with the wavelength in metres.],
  [Say what changes and what does not when a wave crosses a boundary.],
  [Distinguish transverse from longitudinal with an example of each.],
  [Name the four wave behaviours and give one everyday example of each.],
  [Draw a stationary wave on a string and mark its nodes and antinodes.],
))

#concept-box("Carry this into Chapter 2")[
  Sound is the wave of Chapter 1 made audible. Everything here — the wave equation, the difference between transverse and longitudinal, reflection, diffraction and superposition — reappears in the next chapter, but with a medium you can feel and a speed you can measure with two hands and a stopwatch. What is new is *resonance*: the reason a tube of air of the right length sings back at you.
]

#include "drill_ch01.typ"
