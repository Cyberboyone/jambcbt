"""Chapter 2 drill bank — sound.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
"""

DRILL_2 = [
    ("Sound cannot travel through",
     ["steel", "water", "air", "a vacuum"], 3,
     "Sound is a mechanical wave: it needs particles to compress and rarefy. A vacuum has none, which is why a ringing bell in an evacuated jar cannot be heard."),

    ("The speed of sound is greatest in",
     ["gases", "liquids", "solids", "a vacuum"], 2,
     "Solids are the stiffest of the three, and the speed rises with stiffness and falls with density. The order is solids, then liquids, then gases — in steel about 5000 m s⁻¹ against 340 m s⁻¹ in air."),

    ("A gun is fired 680 m from a listener and the sound arrives 2.0 s later. The speed of sound is",
     ["136 m s⁻¹", "340 m s⁻¹", "680 m s⁻¹", "1360 m s⁻¹"], 1,
     "$v = d\/t = 680\/2.0 = 340$ m s⁻¹. There is no doubling here: the sound travels one way only."),

    ("A person claps and hears the echo from a cliff 165 m away. If the speed of sound is 330 m s⁻¹, the time taken is",
     ["0.25 s", "0.50 s", "1.0 s", "2.0 s"], 2,
     "The sound travels there and back, 330 m, so $t = 2d\/v = 330\/330 = 1.0$ s. Using $d\/v$ alone gives 0.5 s, the single most common echo error."),

    ("The pitch of a note depends on its",
     ["amplitude", "frequency", "quality", "speed"], 1,
     "Pitch is the ear's reading of frequency: a higher frequency is a higher note. Amplitude gives loudness and the mixture of overtones gives quality."),

    ("The loudness of a note depends mainly on its",
     ["frequency", "wavelength", "amplitude", "waveform"], 2,
     "A larger amplitude means a larger pressure variation and therefore a louder sound. Frequency fixes pitch, and the waveform fixes quality."),

    ("Two notes of the same pitch and loudness played on a piano and a violin differ in",
     ["frequency", "amplitude", "quality", "wavelength"], 2,
     "They differ in the number and strength of their overtones — that is quality, or timbre. The fundamental frequency, and therefore the pitch, is the same."),

    ("The frequency of a note is 256 Hz. A note an octave above it has a frequency of",
     ["128 Hz", "384 Hz", "512 Hz", "768 Hz"], 2,
     "An octave doubles the frequency: $2 times 256 = 512$ Hz. Adding 256 Hz gives a ratio of 3:2, which is a fifth, not an octave."),

    ("Beats are heard when two notes of slightly different frequency are sounded together. The beat frequency is",
     ["the sum of the two frequencies", "the difference of the two frequencies",
      "half the difference", "the average of the two frequencies"], 1,
     "The beat frequency is the difference, $f_1 - f_2$. Two forks of 512 Hz and 516 Hz beat at 4 Hz."),

    ("Two tuning forks of 512 Hz and 516 Hz are sounded together. The number of beats per second is",
     ["1", "2", "4", "8"], 2,
     "The beat frequency is the difference: $516 - 512 = 4$ beats per second."),

    ("A resonance tube closed at one end resonates first at 16 cm and then at 50 cm. The wavelength of the sound is",
     ["34 cm", "68 cm", "100 cm", "32 cm"], 1,
     "The difference between successive resonances is half a wavelength: $50 - 16 = 34$ cm $= lambda\/2$, so $lambda = 68$ cm. The subtraction also cancels the end correction."),

    ("The speed of sound in air is 340 m s⁻¹. If the resonances of a closed tube are at 17 cm and 51 cm, the frequency is",
     ["500 Hz", "1000 Hz", "2000 Hz", "2500 Hz"], 0,
     "$lambda\/2 = 51 - 17 = 34$ cm, so $lambda = 0.68$ m and $f = v\/lambda = 340\/0.68 = 500$ Hz."),

    ("A pipe closed at one end is 0.85 m long. The wavelength that resonates in it at its third resonance is",
     ["0.17 m", "0.34 m", "0.68 m", "1.70 m"], 2,
     "At the third resonance the tube holds $5lambda\/4$, so $lambda = 4L\/5 = (4 times 0.85)\/5 = 0.68$ m. The first resonance would need $lambda = 4L = 3.4$ m."),

    ("The Doppler effect is the apparent change in",
     ["loudness as a source passes", "frequency as a source moves relative to the observer",
      "speed of sound with temperature", "quality of a note in a hall"], 1,
     "The observed frequency rises as the source approaches and falls as it recedes; the frequency emitted by the source is unchanged. Loudness also changes, but that is not the Doppler effect."),

    ("A source of 500 Hz approaches a stationary observer at 34 m s⁻¹. If the speed of sound is 340 m s⁻¹, the observed frequency is",
     ["455 Hz", "500 Hz", "556 Hz", "5560 Hz"], 2,
     "$f' = f v\/(v - v_s) = 500 times 340\/(340 - 34) = 500 times 340\/306 = 556$ Hz. The denominator is smaller than the numerator, so the frequency must rise."),

    ("A source of 800 Hz recedes from a stationary observer at 40 m s⁻¹. The observed frequency is (v = 340 m s⁻¹)",
     ["716 Hz", "800 Hz", "850 Hz", "900 Hz"], 0,
     "$f' = f v\/(v + v_s) = 800 times 340\/380 = 716$ Hz. A receding source gives a lower note, so any answer above 800 Hz can be struck out first."),

    ("The apparent rise in pitch of an approaching siren is because",
     ["the source emits a higher frequency", "the wavefronts ahead are crowded together",
      "the speed of sound increases", "the wavelength ahead increases"], 1,
     "The source emits the same frequency throughout. Its motion crowds the wavefronts in front of it, so the observer meets more crests per second and hears a higher note."),

    ("Reverberation is",
     ["the reflection of sound back to its source",
      "the persistence of sound after the source stops, because of repeated reflections",
      "the bending of sound round an obstacle",
      "the change of pitch of a moving source"], 1,
     "Repeated reflection from walls, floor and ceiling keeps the sound alive for a moment after the source stops. Too much blurs speech; too little makes a hall sound dead."),

    ("An echo is heard 0.80 s after a shout, and the speed of sound is 340 m s⁻¹. The reflecting wall is",
     ["136 m away", "170 m away", "272 m away", "544 m away"], 0,
     "$d = v t \/ 2 = 340 times 0.80 \/ 2 = 136$ m. The journey is doubled, so the answer is halved."),

    ("A sonar pulse returns after 0.60 s from the sea bed, where the speed of sound is 1500 m s⁻¹. The depth is",
     ["450 m", "900 m", "1500 m", "2500 m"], 0,
     "$d = 1500 times 0.60 \/ 2 = 450$ m. The factor of two is the whole question."),

    ("The quality of a musical note is determined by",
     ["its fundamental frequency only", "the number and relative loudness of its overtones",
      "its amplitude only", "the speed of sound in the hall"], 1,
     "Two instruments playing the same note at the same loudness still sound different because their overtones differ in number and strength. That difference is what the ear reads as quality."),

    ("The frequency of the fundamental of a pipe open at both ends and 0.50 m long is (v = 340 m s⁻¹)",
     ["170 Hz", "340 Hz", "680 Hz", "85 Hz"], 1,
     "$f_1 = v\/(2L) = 340\/1.0 = 340$ Hz. An open pipe sounds an octave above a closed pipe of the same length."),

    ("Sound waves in air are",
     ["transverse", "longitudinal", "electromagnetic", "stationary"], 1,
     "The air particles vibrate along the direction of travel, forming compressions and rarefactions. That is the definition of a longitudinal wave."),

    ("A thunderclap is heard 5.0 s after a flash of lightning. If the speed of sound is 340 m s⁻¹, the storm is about",
     ["0.68 km away", "1.7 km away", "3.4 km away", "17 km away"], 1,
     "$d = v t = 340 times 5.0 = 1700$ m $= 1.7$ km. Light arrives almost instantly, so the delay measures the sound's journey only."),

    ("The end correction of a resonance tube",
     ["makes the tube sound sharper than its length suggests",
      "allows for the vibrating air just outside the open end",
      "is the error in the metre rule",
      "is the effect of the tube's diameter on the speed of sound"], 1,
     "The air beyond the open end vibrates too, so the effective length is slightly greater than the measured one. Using two resonances subtracts it out, which is why the method is preferred."),

    ("At 0 °C the speed of sound in air is about 331 m s⁻¹. At 20 °C it is nearer",
     ["331 m s⁻¹", "343 m s⁻¹", "380 m s⁻¹", "400 m s⁻¹"], 1,
     "The speed rises by about 0.6 m s⁻¹ for each degree, so 20 degrees add about 12 m s⁻¹: 343 m s⁻¹. The rule of thumb 340 m s⁻¹ is a round figure for room temperature."),

    ("An observer at rest hears a note of 440 Hz from a source at rest. If the source then moves away at 20 m s⁻¹, the observed frequency is (v = 340 m s⁻¹)",
     ["415 Hz", "440 Hz", "467 Hz", "480 Hz"], 0,
     "$f' = 440 times 340\/(340 + 20) = 440 times 340\/360 = 415$ Hz. Moving away lowers the note, so only an answer below 440 Hz can be right."),

    ("Which of these does *not* affect the speed of sound in air?",
     ["temperature", "humidity", "pressure at constant temperature", "the frequency of the note"], 3,
     "The speed is set by the medium and its state, not by the note. A high note and a low note travel at the same speed through the same air, which is why a band heard from a distance is in tune but quiet."),

    ("A string of a guitar is plucked and the note is 220 Hz. Pressing the string at its midpoint gives a fundamental of",
     ["110 Hz", "220 Hz", "440 Hz", "880 Hz"], 2,
     "Halving the length doubles the frequency: $2 times 220 = 440$ Hz. The pitch of a string goes as $1\/L$, which is why the fretboard shortens towards the bridge."),

    ("A resonance tube resonates first at 16.0 cm and again at 50.0 cm. The end correction is",
     ["0.5 cm", "1.0 cm", "1.7 cm", "2.0 cm"], 1,
     "$lambda\/2 = 50.0 - 16.0 = 34.0$ cm, so $lambda\/4 = 17.0$ cm. The end correction is $e = lambda\/4 - l_1 = 17.0 - 16.0 = 1.0$ cm, and the second resonance confirms it: $3lambda\/4 - l_2 = 51.0 - 50.0 = 1.0$ cm."),

    ("The pitch of a note from a moving source appears to change because",
     ["the medium changes the speed of sound", "the wavelength in the direction of motion changes",
      "the source changes its frequency", "the observer's ear adapts"], 1,
     "Motion changes the wavelength in front of and behind the source, and a changed wavelength at fixed wave speed is a changed frequency received."),

    ("Which is the correct order of speed of sound: air, water, steel?",
     ["air > water > steel", "steel > water > air", "water > steel > air", "steel > air > water"], 1,
     "Steel is about 5000 m s⁻¹, water about 1500 and air about 340. The stiffer the medium, the faster the sound."),

    ("A ship sends a pulse and receives the echo after 2.0 s. If the sea is 1500 m deep, the speed of sound in the water is",
     ["750 m s⁻¹", "1500 m s⁻¹", "3000 m s⁻¹", "6000 m s⁻¹"], 1,
     "$v = 2d\/t = (2 times 1500)\/2.0 = 1500$ m s⁻¹. The double journey is 3000 m in 2.0 s."),

    ("Two forks give 5 beats per second. One is known to be 256 Hz. The frequency of the other could be",
     ["251 Hz or 261 Hz", "256 Hz only", "251 Hz only", "261 Hz only"], 0,
     "The beat frequency is a difference, so the unknown could be either $256 - 5 = 251$ Hz or $256 + 5 = 261$ Hz. A second test — loading one fork with wax — is needed to say which."),

    ("A closed pipe has a fundamental of 100 Hz. The frequencies it can produce are",
     ["100, 200, 300 Hz", "100, 300, 500 Hz", "100, 150, 200 Hz", "100 Hz only"], 1,
     "A closed pipe sounds at odd harmonics only: $f_1, 3f_1, 5f_1$. The even harmonics need an antinode at both ends, which the closed end cannot give."),

    ("The frequency of a note is doubled. Its wavelength in the same medium",
     ["is unchanged", "is halved", "is doubled", "is quadrupled"], 1,
     "At fixed speed, $lambda = v\/f$, so doubling the frequency halves the wavelength. This is why a high note is a short wave."),

    ("Sound is refracted when it passes from warm air into cold air because",
     ["its frequency changes", "its speed changes",
      "it is absorbed", "it is polarised"], 1,
     "A change of speed at a boundary bends the wave — the same refraction as light at a glass surface. Sound is longitudinal, so it cannot be polarised."),

    ("The fundamental of a closed pipe is 128 Hz. The next resonance it can give is",
     ["192 Hz", "256 Hz", "384 Hz", "512 Hz"], 2,
     "The next allowed harmonic is the third: $3 times 128 = 384$ Hz. The second harmonic, 256 Hz, cannot exist in a closed pipe."),
    ("A source of 1000 Hz moves towards an observer at 20 m s⁻¹. The observed frequency is (v = 340 m s⁻¹)",
     ["943 Hz", "1000 Hz", "1063 Hz", "1120 Hz"], 2,
     "$f' = 1000 times 340\/(340 - 20) = 1000 times 340\/320 = 1063$ Hz. Approaching raises the frequency, so the answer must exceed 1000 Hz."),

    ("Two tuning forks give 3 beats per second. One fork has a frequency of 440 Hz. The other is",
     ["437 Hz or 443 Hz", "443 Hz only", "437 Hz only", "440 Hz"], 0,
     "The beat frequency is a difference, so the other fork is either 440 $-$ 3 or 440 $+$ 3. A second observation, such as filing one fork and seeing whether the beats speed up, settles which."),
]
