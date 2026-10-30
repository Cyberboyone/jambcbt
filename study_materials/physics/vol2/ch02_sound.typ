#import "template.typ": *

#current-chapter.update("Chapter 2: Sound")

#pagebreak()

#chapter-opener(
  2,
  "Sound",
  subtitle: "Sound as a Longitudinal Wave, Speed in Solids, Liquids and Gases, Pitch, Loudness and Quality, Echoes and Reverberation, Resonance, Beats, and the Doppler Effect",
  syllabus-ref: "Sec. B • Topic 2",
  utme-weight: "4 Qs every year",
  running: "Sound",
)

#focus-radar(
  objectives: (
    "Explain that sound is a longitudinal mechanical wave and needs a material medium.",
    "State the order of the speed of sound in solids, liquids and gases, and use $d = v t \/ 2$ for an echo.",
    "Distinguish pitch, loudness and quality, and relate each to a property of the wave.",
    "Find the speed of sound with a resonance tube, and use $f_1 = v\/4L$.",
    "Explain beats and calculate the beat frequency.",
    "Explain the Doppler effect for a moving source.",
  ),
  hotspots: (
    "“Sound cannot travel through …” — a vacuum, because it is a mechanical wave.",
    "“The pitch of a note depends on …” — its frequency, not its amplitude.",
    "“Two tuning forks of 256 Hz and 260 Hz are sounded together. The beat frequency is …” — 4 Hz.",
    "“An echo returns after 0.6 s from a cliff. The cliff is …” — 102 m away, because the sound travels there and back.",
    "“As an ambulance approaches, the pitch …” — rises, because the wavefronts are crowded together.",
  ),
  trap-summary: "Three slips. (1) Forgetting that an echo travels *twice* the distance — and so dividing by two when finding the distance, not when finding the speed. (2) Saying the pitch rises because the source emits a higher frequency: it does not; the source is unchanged, and it is the *received* frequency that rises because the waves are crowded. (3) Using $L = lambda\/4$ for a pipe open at both ends. An open pipe has an antinode at each end and sounds at $f = v\/2L$, the same as a string.",
)

// ============================================================================
== 2.1 Sound Is a Mechanical Wave

Sound is produced by a vibrating source — a string, a membrane, a column of air — which pushes on the air next to it, and the push travels outwards as a wave of compressions and rarefactions. The particles of the air vibrate *along* the direction of travel, so sound is a *longitudinal* wave.

Because the wave is carried by the particles of a medium, sound cannot cross a vacuum. A ringing bell inside a jar that is being pumped out fades to silence while the hammer can still be seen striking it; the bell is still ringing, but there is nothing left to carry the sound to the glass.

#diagram-fig("diagrams/ch02_sound_media.svg",
  "Sound needs a medium, and travels fastest where the medium is stiff and light. The figures are typical values at room temperature.", width: 100%)

#table(
  columns: (1.3fr, 1.3fr, 1.9fr),
  inset: 5.5pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Medium],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Speed of sound],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why],
  ),
  [air, 20 °C], [340 m s⁻¹], [a gas: easy to compress, so the push passes slowly],
  [water], [1500 m s⁻¹], [a liquid: much stiffer, so the push passes faster],
  [steel], [5000 m s⁻¹], [a solid: stiffest of all — sound travels furthest along a rail],
  [vacuum], [none], [no particles to carry the disturbance],
)

*The speed rises with stiffness and falls with density.* For a solid the speed is roughly $sqrt(E \/ rho)$, and for a gas $sqrt(gamma p \/ rho)$. That is why sound travels faster in steel than in air by a factor of about fifteen, and why a distant train is heard through the rails long before it is heard through the air.

#concept-box("Why sound is a mechanical wave")[
  A mechanical wave needs particles to push on. Sound is one; light is not. That is why a bell in a vacuum jar is silent but the Sun is visible — the light crosses 150 million kilometres of empty space, the sound of a rocket launch does not cross the first hundred metres of it.
]

#worked-example(
  1,
  "An echo from a cliff",
  [A boy claps his hands and hears the echo from a cliff 1.2 s later. Taking the speed of sound in air as 340 m s⁻¹, find (a) the distance to the cliff, and (b) how long the echo would take if the air were warmer and the speed 360 m s⁻¹.],
  [
    *(a)* The sound travels to the cliff and back, so $2d = v t$:
    $d = v t \/ 2 = 340 times 1.2 \/ 2 = 204$ m.

    *(b)* $t = 2d \/ v = (2 times 204) \/ 360 = 1.13$ s.

    *Check.* The distance does not change, only the speed. A shorter time with a higher speed is the right way round, and the ratio of the times $(1.2 \/ 1.13 = 1.06)$ is the ratio of the speeds $(360 \/ 340 = 1.06)$ — which it must be, since $t$ is inversely proportional to $v$ at fixed distance.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 2.2 Pitch, Loudness and Quality

Three words describe every note you hear, and each is a property of the wave rather than of the ear.

#table(
  columns: (0.95fr, 1.15fr, 1.9fr, 1.3fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Depends on],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Measured in],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What changes it],
  ),
  [pitch], [frequency], [hertz, Hz], [a longer string, a tighter drum, a shorter pipe],
  [loudness], [amplitude (and intensity)], [decibel, dB], [a harder strike, a louder amplifier],
  [quality or timbre], [the mixture of overtones], [—], [the material and shape of the instrument],
)

A piano and a violin played at the same pitch and loudness still sound different, and the difference is *quality*: the same fundamental with a different set of overtones on top. The examiner rarely asks for more than that sentence, but it is worth being able to give an example.

*The audible range* for a young healthy ear is roughly 20 Hz to 20 000 Hz. Below that is infrasound, which elephants and earthquakes use; above it is ultrasound, which bats use and which medical scanners borrow. The range narrows with age, starting at the high-frequency end — a fact worth knowing when a question asks why an older person cannot hear a mosquito alarm.

#worked-example(
  2,
  "A note and its octave",
  [A guitar string sounds a note of 220 Hz. Find (a) the frequency of the note one octave higher, (b) the frequency of the note one octave lower, and (c) the wavelength of the 220 Hz note in air, taking $v = 340$ m s⁻¹.],
  [
    *(a)* One octave up doubles the frequency: 440 Hz.

    *(b)* One octave down halves it: 110 Hz.

    *(c)* $lambda = v \/ f = 340 \/ 220 = 1.55$ m.

    *Check.* The octave matters because doubling the frequency halves the wavelength at fixed speed, and the ear hears that halving as “the same note, higher”. The wavelength of the lower octave is 3.1 m — twice as long — which is exactly what “an octave down” means in the air.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 2.3 Resonance and the Resonance Tube

Every object has natural frequencies at which it vibrates most easily. Drive it at one of those frequencies and a small push produces a large vibration: that is *resonance*. A glass cracks at the note that matches its own, a bridge sways at the frequency of marching feet, and a column of air sings back at you when its length is right.

The standard laboratory method uses a tube closed at one end by a water surface. raise and lower the tube while a tuning fork sounds above its open end; at certain lengths the note suddenly becomes much louder. Those lengths are the resonances.

#diagram-fig("diagrams/ch02_resonance.svg",
  "The resonance tube. The first resonance puts a quarter of a wavelength in the tube, the second three quarters, and the half-wavelength between them removes the end correction.", width: 100%)

#formula-box("The resonance tube")[
  + First resonance: $l_1 = lambda \/ 4$ — a quarter of a wavelength above the water.
  + Second resonance: $l_2 = 3 lambda \/ 4$ — three quarters.
  + Therefore $l_2 - l_1 = lambda \/ 2$, so $lambda = 2(l_2 - l_1)$, and $v = f lambda$.
  + A pipe closed at one end sounds only the *odd* harmonics: $f_1, 3 f_1, 5 f_1 dots$
  + A pipe open at both ends has antinodes at both ends, so it sounds *all* the harmonics, starting at $f_1 = v \/ 2L$.
]

The subtraction is the clever part. A real tube's open end has a small *end correction* $e$ — the air just outside the tube vibrates too — so $l_1 + e = lambda \/ 4$ and $l_2 + e = 3 lambda \/ 4$. Subtracting removes $e$ entirely, which is why the method gives a better answer than a single measurement.

#worked-example(
  3,
  "Measuring the speed of sound",
  [A tuning fork of frequency 512 Hz gives its first resonance at 16.0 cm and its second at 49.0 cm. Find (a) the wavelength, (b) the speed of sound, and (c) the end correction.],
  [
    *(a)* $lambda = 2(l_2 - l_1) = 2(0.490 - 0.160) = 2 times 0.330 = 0.66$ m.

    *(b)* $v = f lambda = 512 times 0.66 = 338$ m s⁻¹.

    *(c)* $l_1 + e = lambda \/ 4 = 0.165$ m, so $e = 0.165 - 0.160 = 0.005$ m, which is 5 mm — about $0.3$ of the tube diameter, which is the rule of thumb.

    *Check.* The same $e$ must come out of the second resonance: $l_2 + e = 3 lambda \/ 4 = 0.495$ m gives $e = 0.005$ m again. A method that gives the same correction twice is a method you can trust in the hall.
  ],
  tier: "UTME STANDARD",
)

#trap-box("Open pipe and closed pipe are different questions")[
  A pipe *closed at one end* sounds at $v\/4L$ and its odd harmonics only. A pipe *open at both ends* sounds at $v\/2L$ and all of them. Read which pipe the question describes before you reach for a formula — the two answers differ by a factor of two, and both are always on the option list.
]

// ============================================================================
== 2.4 Beats

When two notes of slightly different frequency sound together, the loudness rises and falls at a steady rate. The two waves drift in and out of step: in step they reinforce, a moment later one has advanced half a cycle and they cancel. The result is a slow pulsing we call *beats*.

#diagram-fig("diagrams/ch02_beats.svg",
  "Beats between 440 Hz and 448 Hz. The two waves slip in and out of step once every eighth of a second, so the combined sound pulses eight times each second.", width: 100%)

#formula-box("The beat frequency")[
  $f_"beat" = f_1 - f_2$ — the *difference* of the two frequencies, not the average.
  Two forks of 256 Hz and 260 Hz beat four times a second. Two of 440 Hz and 441 Hz beat once a second — a slow throb.
]

Beats are how a piano is tuned. The tuner sounds the string against a reference fork and adjusts until the beats slow to nothing: at zero beats the frequencies are equal. A tuner who hears the beats speeding up is turning the peg the wrong way, which is why the skill is in the listening rather than in the arithmetic.

#worked-example(
  4,
  "Tuning with beats",
  [A piano string and a 256 Hz fork sounded together give 5 beats per second. When the string is tightened slightly, the beat rate falls to 2 per second. Find (a) the original frequency of the string, and (b) its frequency after tightening.],
  [
    *(a)* The string is either 251 Hz or 261 Hz, since the difference is 5. Tightening raises the frequency. If the string were 251 Hz, tightening would move it towards 256 and the beat rate would *fall* — which is what happens, from 5 to 2. So the original frequency is 251 Hz.

    *(b)* The new frequency is $256 - 2 = 254$ Hz.

    *Check.* The reasoning, not the arithmetic, is the answer: the fall in the beat rate tells you which side of the fork the string was on. If the beat rate had *risen* to 7, the string would have been the 261 Hz one — the same subtraction, the opposite conclusion.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 2.5 The Doppler Effect

When a source of sound moves towards you, the waves in front of it are crowded together: a shorter wavelength means a higher frequency, so the pitch rises. Behind it the waves are stretched, so the pitch falls. This is the *Doppler effect*, and it is why an ambulance changes pitch the instant it passes you.

#diagram-fig("diagrams/ch02_doppler.svg",
  "The Doppler effect for a moving source. The source catches up with its own wavefronts ahead of it and leaves them behind, so the wavelength is shortened in front and lengthened behind.", width: 100%)

#formula-box("The received frequency")[
  $f' = f v \/ (v - v_s)$ as the source approaches, and $f' = f v \/ (v + v_s)$ as it recedes,
  where $v$ is the speed of sound and $v_s$ the speed of the source. An observer moving instead of the source changes the numerator: $f' = f (v plus.minus v_o) \/ v$.
]

*Two consequences worth remembering.* First, the effect is much larger for light than the arithmetic suggests, because the speed of light is so large — the shift is tiny but measurable, and it is how astronomers know that distant galaxies are moving away from us (the *red shift*). Second, the Doppler effect is used deliberately: speed cameras bounce radar off a car and measure the shift, and ultrasound scanners measure the shift of echoes from blood to find its speed.

#trap-box("The source does not change its note")[
  A common wrong answer says the siren “emits a higher frequency as it approaches”. It does not — the driver hears the same note throughout. What changes is the frequency *received* by a stationary listener, because the moving source changes the number of wavefronts arriving each second. In an exam, write “the observed frequency increases”, not “the frequency increases”.
]

#worked-example(
  5,
  "An approaching siren",
  [An ambulance sounding a 700 Hz siren approaches a stationary observer at 34 m s⁻¹. Taking the speed of sound as 340 m s⁻¹, find (a) the frequency heard as it approaches, (b) the frequency heard after it has passed, and (c) the change in pitch.],
  [
    *(a)* $f' = f v \/ (v - v_s) = 700 times 340 \/ (340 - 34) = 700 times 340 \/ 306 = 778$ Hz.

    *(b)* $f' = 700 times 340 \/ (340 + 34) = 700 times 340 \/ 374 = 636$ Hz.

    *(c)* The drop is $778 - 636 = 142$ Hz, which is more than a whole tone — a very obvious change, and the reason you can hear the moment of passing without looking.

    *Check.* As $v_s$ approaches $v$, the denominator of the first expression approaches zero and the received frequency approaches infinity — the sonic boom, in the limit. As $v_s$ approaches zero, both expressions approach $f$. A formula that behaves correctly at both ends is a formula you can trust under pressure.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 2.6 Ultrasound and Echo Sounding

Frequencies above 20 kHz are inaudible to us but behave exactly like audible sound: they reflect, refract and diffract by the same laws. Because a short wavelength reflects from small objects, ultrasound is the tool of choice for seeing inside things.

#table(
  columns: (1.4fr, 2.0fr, 1.3fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why it is used],
  ),
  [echo sounding], [a pulse is sent down and the echo timed], [charts the sea bed from a ship],
  [medical scan], [pulses reflect from tissue boundaries], [no ionising radiation, unlike X-rays],
  [cleaning], [high-frequency vibration shakes dirt off], [reaches places a brush cannot],
  [bats], [echolocation by reflected squeaks], [navigating in total darkness],
)

#formula-box("Echo sounding")[
  $d = v t \/ 2$, where $t$ is the time between the pulse and its echo. In water $v$ is about 1500 m s⁻¹.
]

// ============================================================================
#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: sound.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Sound is Chapter 1's wave made audible: a longitudinal disturbance of compression and rarefaction, carried by a medium, and therefore unable to cross a vacuum. Its speed rises with stiffness and falls with density, so it is fastest in solids and slowest in gases — 340 m s⁻¹ in air, 1500 in water, 5000 in steel — and an echo travels there and back, which is why $d = v t \/ 2$. The three words that describe a note are pitch (frequency), loudness (amplitude) and quality (the mixture of overtones). Resonance is the reason a tube of the right length sings back, and the resonance tube measures the speed of sound with a tuning fork, a water level and the subtraction $lambda = 2(l_2 - l_1)$ that removes the end correction. Two notes close in pitch beat at their difference, which is how a piano is tuned; a source moving towards you crowds its wavefronts and raises the pitch you hear, which is the Doppler effect, the principle of the speed camera and the ultrasound scan.
  ]
]

== 2.7 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [Sound cannot travel through], [a solid], [a liquid], [a gas], [a vacuum])
#mcq(2, [A man claps and hears the echo from a wall 0.8 s later. If sound travels at 340 m s⁻¹, the wall is], [136 m away], [272 m away], [425 m away], [544 m away])
#mcq(3, [Two tuning forks of 512 Hz and 516 Hz are sounded together. The number of beats per second is], [1], [2], [4], [8])
#mcq(4, [As a source of sound moves towards a stationary observer, the observer hears], [a lower frequency and a longer wavelength], [a higher frequency and a shorter wavelength], [a higher frequency and a longer wavelength], [the same frequency])

#answer-key-grid(("D", "A", "C", "B"))

#answer-notes((
  ("D", [sound is a mechanical wave and needs particles to carry it; a vacuum has none.]),
  ("A", [the sound goes to the wall and back, so $d = v t \/ 2 = 340 times 0.8 \/ 2 = 136$ m.]),
  ("C", [the beat frequency is the difference: $516 - 512 = 4$ Hz.]),
  ("B", [the wavefronts ahead of the source are crowded together, so the wavelength is shorter and the frequency higher.]),
))

#chapter-checklist("Before you leave Chapter 2", (
  [Explain why sound needs a medium, and rank solids, liquids and gases by speed.],
  [Use $v = 2d\/t$ and $d = v t \/ 2$ without mixing up the doubling.],
  [Distinguish pitch, loudness and quality, and name the property behind each.],
  [Describe the resonance tube and calculate a wavelength from two resonances.],
  [Find the end correction and explain why two resonances are better than one.],
  [Calculate a beat frequency and say what it sounds like.],
  [Apply the Doppler expressions for an approaching and a receding source.],
  [Explain why an approaching source sounds higher without emitting a higher frequency.],
))

#concept-box("Carry this into Chapter 3")[
  Sound reflects, and so does light — but with light you can draw the reflection. The next chapter takes the single sentence “the angle of incidence equals the angle of reflection” and turns it into an instrument: a plane mirror that reverses a room, a concave mirror that focuses the Sun, and a convex mirror that shows a driver everything behind. The arithmetic of images begins there.
]

#include "drill_ch02.typ"
