"""Chapter 1 drill bank — wave motion.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
The solution names the concept and shows the working, so that a wrong answer
can be traced to a section of the chapter rather than to "carelessness".
"""

DRILL_1 = [
    ("A wave has a frequency of 50 Hz and a wavelength of 4.0 m. Its speed is",
     ["12.5 m s⁻¹", "54 m s⁻¹", "200 m s⁻¹", "2000 m s⁻¹"], 2,
     "$v = f lambda = 50 times 4.0 = 200$ m s⁻¹. The wave equation multiplies frequency by wavelength; dividing instead of multiplying is the commonest slip here."),

    ("The period of a wave of frequency 250 Hz is",
     ["0.004 s", "0.025 s", "0.25 s", "4.0 s"], 0,
     "$T = 1\/f = 1\/250 = 0.004$ s $= 4$ ms. Period and frequency are reciprocals, so their product must be 1."),

    ("A sound wave of speed 340 m s⁻¹ has a frequency of 170 Hz. Its wavelength is",
     ["0.5 m", "2.0 m", "5.9 m", "510 m"], 1,
     "$lambda = v\/f = 340\/170 = 2.0$ m. Rearranging before substituting keeps the units honest: metres per second divided by per second gives metres."),

    ("A water wave passes from deep water into shallow water, where its speed is halved. Which statement is correct?",
     ["the frequency halves and the wavelength is unchanged",
      "the frequency is unchanged and the wavelength halves",
      "both the frequency and the wavelength halve",
      "the frequency doubles and the wavelength is unchanged"], 1,
     "The frequency is fixed by the source and cannot change at a boundary, so $lambda = v\/f$ must halve when $v$ halves. Only the speed and the wavelength change across a boundary."),

    ("The distance between two neighbouring nodes on a stationary wave is",
     ["one wavelength", "half a wavelength", "a quarter of a wavelength", "two wavelengths"], 1,
     "A node is a point of zero displacement, and the pattern repeats every half wavelength, so nodes are $lambda\/2$ apart. Adjacent antinodes are also $lambda\/2$ apart, and a node and its nearest antinode are $lambda\/4$ apart."),

    ("A string of length 1.2 m is stretched between two fixed ends and vibrates in its fundamental mode with a speed of 240 m s⁻¹. The frequency is",
     ["100 Hz", "200 Hz", "240 Hz", "400 Hz"], 0,
     "The fundamental fits one half wavelength: $lambda = 2L = 2.4$ m, so $f = v\/lambda = 240\/2.4 = 100$ Hz. Equivalently $f_1 = v\/(2L)$."),

    ("A pipe closed at one end has a fundamental frequency of 85 Hz. The frequency of its next allowed harmonic is",
     ["170 Hz", "255 Hz", "340 Hz", "425 Hz"], 1,
     "A closed pipe sounds at odd harmonics only: $f_1, 3f_1, 5f_1$. The next is $3 times 85 = 255$ Hz — not 170 Hz, which is the second harmonic of an open pipe and is not available here."),

    ("Which of these waves is longitudinal?",
     ["light", "a wave on a string", "sound in air", "a water wave on the surface"], 2,
     "Sound is a compression wave: the air particles vibrate along the direction of travel. Light is transverse, and a wave on a string or on water vibrates across the direction of travel."),

    ("A wave of frequency 0.50 Hz travels along a rope at 2.0 m s⁻¹. The wavelength is",
     ["0.25 m", "1.0 m", "2.5 m", "4.0 m"], 3,
     "$lambda = v\/f = 2.0\/0.50 = 4.0$ m. A frequency below 1 Hz gives a wavelength longer than the speed in metres per second, which is the quick sanity check."),

    ("In a stationary wave, energy",
     ["is transferred at the wave speed", "is not transferred along the wave",
      "is transferred at twice the wave speed", "travels only in one direction"], 1,
     "A stationary wave is the superposition of two identical waves travelling in opposite directions. The energy is trapped between the nodes and does not travel, which is what distinguishes it from a progressive wave."),

    ("A wave crest passes a point at $t = 0$ and the next crest at $t = 0.25$ s. If the wavelength is 1.5 m, the speed is",
     ["0.375 m s⁻¹", "1.5 m s⁻¹", "6.0 m s⁻¹", "0.167 m s⁻¹"], 2,
     "The time between successive crests is the period, so $f = 1\/0.25 = 4$ Hz and $v = f lambda = 4 times 1.5 = 6.0$ m s⁻¹."),

    ("The amplitude of a wave is",
     ["the distance between two crests",
      "the maximum displacement from the rest position",
      "the distance from a crest to a trough",
      "the number of oscillations per second"], 1,
     "Amplitude is measured from the rest line to a crest (or to a trough), not between two features of the wave. Crest-to-trough is twice the amplitude, and crest-to-crest is a wavelength."),

    ("A wave of wavelength 0.80 m and frequency 25 Hz travels for 4.0 s. The distance covered is",
     ["20 m", "40 m", "80 m", "800 m"], 2,
     "$v = f lambda = 25 times 0.80 = 20$ m s⁻¹, so $s = v t = 20 times 4.0 = 80$ m — four seconds at 20 metres each."),

    ("Two waves of the same frequency and amplitude travel in opposite directions in the same medium. The result is",
     ["a progressive wave of double amplitude", "a stationary wave",
      "a wave of half the frequency", "no wave at all"], 1,
     "Waves travelling in opposite directions superpose to give a stationary pattern of fixed nodes and antinodes. The frequency of the pattern is that of the two waves, and the antinodes reach twice the amplitude."),

    ("The frequency of a wave is 400 Hz and its wavelength is 85 cm. The speed is",
     ["3.4 m s⁻¹", "34 m s⁻¹", "340 m s⁻¹", "3400 m s⁻¹"], 2,
     "Convert first: $0.85$ m. Then $v = 400 times 0.85 = 340$ m s⁻¹. Leaving the wavelength in centimetres gives 34 000, which is a plausible-looking number and a wrong answer."),

    ("A string fixed at both ends vibrates in three loops. The wavelength is",
     ["$3L$", "$2L\/3$", "$L\/2$", "$L\/3$"], 1,
     "Each loop is half a wavelength, so three loops are $3 lambda\/2 = L$, giving $lambda = 2L\/3$. Three loops is the third harmonic, whose frequency is $3v\/(2L)$."),

    ("The speed of a wave on a stretched string is doubled. If the frequency is unchanged, the wavelength",
     ["is halved", "is unchanged", "is doubled", "is quadrupled"], 2,
     "$lambda = v\/f$, so at fixed frequency the wavelength follows the speed. Doubling the tension raises the speed and stretches every wavelength by the same factor."),

    ("Which quantity is *not* needed to calculate the speed of a wave?",
     ["its frequency", "its wavelength", "its amplitude", "the medium it travels in"], 2,
     "The wave equation $v = f lambda$ contains no amplitude. Amplitude carries the energy of the wave, not its speed."),

    ("A radio station transmits at 100 MHz. The wavelength of the signal is",
     ["0.33 m", "3.0 m", "30 m", "3.0 km"], 1,
     "$lambda = c\/f = (3.0 times 10^8)\/(100 times 10^6) = 3.0$ m. A megahertz is $10^6$ Hz, and losing that factor of a million moves the answer by six places."),

    ("A wave of period 0.020 s travels 6.0 m in 0.30 s. Its wavelength is",
     ["0.30 m", "0.40 m", "0.60 m", "1.2 m"], 1,
     "The speed is $6.0\/0.30 = 20$ m s⁻¹, and the frequency is $1\/0.020 = 50$ Hz, so $lambda = 20\/50 = 0.40$ m."),

    ("The diagram of a wave shows four complete waves in 8.0 m. The wavelength is",
     ["0.50 m", "2.0 m", "4.0 m", "8.0 m"], 1,
     "Four wavelengths occupy 8.0 m, so one is $8.0\/4 = 2.0$ m. Counting the waves is a division, not a guess at the scale."),

    ("A sound wave passes from air into water. Which quantity is unchanged?",
     ["speed", "wavelength", "frequency", "direction"], 2,
     "The source still vibrates at the same rate, so the frequency is unchanged. The speed rises from about 340 to about 1500 m s⁻¹, so the wavelength rises by the same factor."),

    ("An open pipe sounds at 200 Hz in its fundamental. Its third harmonic is",
     ["200 Hz", "400 Hz", "600 Hz", "1000 Hz"], 2,
     "An open pipe sounds at every harmonic, so the third is $3 times 200 = 600$ Hz. Compare the closed pipe, where the third harmonic does not exist at all."),

    ("The number of complete oscillations made by a 25 Hz source in 8.0 s is",
     ["3.1", "25", "200", "2000"], 2,
     "$N = f t = 25 times 8.0 = 200$ oscillations. Frequency is oscillations per second, so multiplying by seconds gives oscillations."),

    ("Which statement about a progressive wave is true?",
     ["the particles of the medium travel with the wave",
      "energy travels with the wave but the particles only oscillate",
      "the particles travel and the energy stays still",
      "neither the particles nor the energy travel"], 1,
     "In a wave the disturbance travels, not the medium. A cork on water bobs up and down while the pattern moves past it — the fact that separates a wave from a current."),

    ("A wave has a speed of 12 m s⁻¹ and a period of 0.040 s. Its wavelength is",
     ["0.33 m", "0.48 m", "3.0 m", "4.8 m"], 1,
     "$f = 1\/0.040 = 25$ Hz, so $lambda = 12\/25 = 0.48$ m. Using the period directly, $lambda = v T = 12 times 0.040 = 0.48$ m."),

    ("A string of length 0.60 m sounds at 300 Hz in its fundamental. The speed of the wave on the string is",
     ["90 m s⁻¹", "180 m s⁻¹", "360 m s⁻¹", "720 m s⁻¹"], 2,
     "The fundamental has $lambda = 2L = 1.2$ m, so $v = f lambda = 300 times 1.2 = 360$ m s⁻¹."),

    ("In a stationary wave on a string, the points that never move are called",
     ["antinodes", "nodes", "crests", "troughs"], 1,
     "Nodes are points of permanently zero displacement; antinodes are the points of maximum displacement. A crest is a feature of a progressive wave, not a fixed point of a stationary one."),

    ("A closed pipe of length 0.50 m sounds with a speed of 340 m s⁻¹. Its fundamental frequency is",
     ["85 Hz", "170 Hz", "340 Hz", "680 Hz"], 1,
     "$f_1 = v\/(4L) = 340\/(4 times 0.50) = 170$ Hz. A closed pipe of the same length as an open pipe sounds an octave lower, because it holds a quarter wave instead of a half."),

    ("The speed of a wave is 330 m s⁻¹ and its frequency is 660 Hz. The distance between two successive compressions is",
     ["0.25 m", "0.50 m", "1.0 m", "2.0 m"], 1,
     "Successive compressions are one wavelength apart, and $lambda = 330\/660 = 0.50$ m. The same question about a transverse wave would ask for crest-to-crest distance."),

    ("Which change increases the speed of a wave on a stretched string?",
     ["increasing the tension", "increasing the amplitude",
      "decreasing the length only", "plucking it harder"], 0,
     "The speed on a string is set by the tension and the mass per unit length: $v = sqrt(T\/mu)$. Length and amplitude do not appear, so plucking harder changes the loudness, not the speed."),

    ("A wave travels 1.8 km in 6.0 s. Its speed is",
     ["30 m s⁻¹", "108 m s⁻¹", "300 m s⁻¹", "1080 m s⁻¹"], 2,
     "$1.8$ km is 1800 m, so $v = 1800\/6.0 = 300$ m s⁻¹. Converting the distance before dividing is the only difficulty in the question."),

    ("The frequency of a wave is doubled and the wavelength is halved. The speed",
     ["is unchanged", "is halved", "is doubled", "is quadrupled"], 0,
     "$v = f lambda$, so doubling one factor and halving the other leaves the product unchanged. In practice, changing the frequency of a wave in a fixed medium does not change the speed either."),

    ("An open pipe and a closed pipe have the same length. The ratio of their fundamental frequencies is",
     ["1 : 1", "1 : 2", "2 : 1", "4 : 1"], 2,
     "The open pipe sounds at $v\/(2L)$ and the closed one at $v\/(4L)$, so the open pipe is twice as high: $2:1$. The closed pipe sounds the lower note of the two."),

    ("A wave on a rope has an amplitude of 10 cm and a wavelength of 2.0 m. Its crest-to-trough height is",
     ["5 cm", "10 cm", "20 cm", "2.0 m"], 2,
     "The crest is 10 cm above the rest line and the trough 10 cm below it, so the vertical distance between them is 20 cm — twice the amplitude."),

    ("A source of frequency 512 Hz produces waves of speed 340 m s⁻¹. In 2.0 s the number of waves produced is",
     ["170", "512", "1024", "2048"], 2,
     "The source makes 512 waves every second, so in 2.0 s it makes $512 times 2 = 1024$. The speed does not enter: frequency is already a rate per second."),

    ("Which of the following is *not* a property of a wave?",
     ["it transfers energy", "it can be reflected",
      "it transfers matter from place to place", "it can be refracted"], 2,
     "A wave carries energy and can be reflected, refracted, diffracted and polarised, but it does not carry the medium with it. A water wave moves the shape, not the water, across the ocean."),

    ("The second harmonic of a string of length 0.80 m has a frequency of 150 Hz. The speed of the wave on the string is",
     ["60 m s⁻¹", "120 m s⁻¹", "240 m s⁻¹", "480 m s⁻¹"], 1,
     "The second harmonic has two loops, so $lambda = L = 0.80$ m and $v = f lambda = 150 times 0.80 = 120$ m s⁻¹. Alternatively the fundamental is 75 Hz with $lambda = 1.6$ m, giving the same speed."),
    ("A wave travels along a string at 40 m s⁻¹ with a frequency of 80 Hz. Its wavelength is",
     ["0.50 m", "2.0 m", "3.2 m", "3200 m"], 0,
     "$lambda = v\/f = 40\/80 = 0.50$ m. A wavelength shorter than a metre is normal for a high-frequency vibration on a short string."),

    ("The time taken for a wave of speed 1500 m s⁻¹ to travel 6.0 km is",
     ["0.25 s", "2.5 s", "4.0 s", "9.0 s"], 2,
     "$t = d\/v = 6000\/1500 = 4.0$ s. The distance must be in metres: 6.0 km is 6000 m, not 6."),
]
