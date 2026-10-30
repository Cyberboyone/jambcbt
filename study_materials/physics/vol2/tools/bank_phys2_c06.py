"""Chapter 6 drill bank — colour and the electromagnetic spectrum.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
"""

DRILL_6 = [
    ("Dispersion of white light by a prism occurs because",
     ["the prism absorbs some colours", "the refractive index depends on wavelength",
      "the prism is triangular", "light slows down in glass"], 1,
     "Different colours have slightly different refractive indices in glass, so they are deviated by different amounts. The triangular shape only makes the fan visible."),

    ("The colour deviated most by a glass prism is",
     ["red", "yellow", "green", "violet"], 3,
     "Violet has the shortest wavelength and the largest refractive index, so it is slowed and bent most. Red, at the other end, is bent least."),

    ("The correct order of the spectrum, from least deviated to most, is",
     ["violet, indigo, blue, green, yellow, orange, red",
      "red, orange, yellow, green, blue, indigo, violet",
      "red, yellow, green, blue, violet, indigo, orange",
      "green, red, yellow, blue, violet, indigo, orange"], 1,
     "Red is deviated least and violet most, so the spectrum reads red to violet across the fan. That is also the order of decreasing wavelength."),

    ("A second identical prism, inverted, placed after the first",
     ["makes the spectrum wider", "recombines the colours into white light",
      "absorbs the violet", "turns the light into heat"], 1,
     "The second prism deviates each colour by the same amount in the opposite direction, so the fan closes up and white light emerges — Newton's proof that white is a mixture."),

    ("The primary colours of light are",
     ["red, yellow and blue", "cyan, magenta and yellow", "red, green and blue", "red, blue and violet"], 2,
     "Red, green and blue are the additive primaries: all three together give white. Red, yellow and blue is the older artists' set, and is not what a physicist means."),

    ("Red light added to green light gives",
     ["white", "yellow", "magenta", "cyan"], 1,
     "Red and green light add to yellow. It is mixing *pigment* that turns red and green into a muddy brown, because pigments subtract rather than add."),

    ("The subtractive primary colours are",
     ["red, green and blue", "cyan, magenta and yellow", "red, yellow and blue", "black, white and grey"], 1,
     "Cyan, magenta and yellow pigments each absorb one of the additive primaries, so all three together absorb everything and give black."),

    ("A red object is viewed in green light. It appears",
     ["red", "green", "black", "yellow"], 2,
     "The object reflects red only, and green light contains no red, so all the light is absorbed: the object looks black. Its colour is a property of the light it reflects, not of the object."),

    ("A white object viewed in blue light appears",
     ["white", "blue", "black", "cyan"], 1,
     "White reflects every colour, so it reflects the blue light and looks blue. A blue object in blue light looks blue too — which is why colour questions are always settled by asking what the light contains."),

    ("A green filter is placed in white light. The light that emerges is",
     ["white", "green", "black", "red"], 1,
     "The filter transmits green and absorbs the rest. A green filter in red light would pass nothing, because there is no green to transmit."),

    ("A red filter is placed in front of a green filter in white light. The result is",
     ["yellow light", "white light", "no light", "green light"], 2,
     "The red filter has already removed the green, so the green filter has nothing to pass. Stacking filters subtracts twice and quickly gives black."),

    ("The band of the electromagnetic spectrum with the longest wavelength is",
     ["gamma rays", "X-rays", "ultraviolet", "radio waves"], 3,
     "Radio waves have wavelengths from about a metre to many kilometres. Gamma rays, at the other end, have wavelengths smaller than a tenth of a nanometre."),

    ("Which of these travels fastest in a vacuum?",
     ["radio waves", "visible light", "X-rays", "all travel at the same speed"], 3,
     "Every member of the electromagnetic spectrum travels at $3.0 times 10^8$ m s⁻¹ in a vacuum. They differ only in frequency and wavelength."),

    ("The correct order of the electromagnetic spectrum in order of increasing frequency is",
     ["gamma, X-ray, ultraviolet, visible, infrared, microwave, radio",
      "radio, microwave, infrared, visible, ultraviolet, X-ray, gamma",
      "radio, infrared, microwave, visible, X-ray, ultraviolet, gamma",
      "visible, radio, microwave, infrared, ultraviolet, X-ray, gamma"], 1,
     "Frequency rises from radio through microwave, infrared, visible, ultraviolet and X-ray to gamma. Wavelength falls in the same order."),

    ("The frequency of a radio wave of wavelength 300 m is",
     ["1.0 MHz", "10 MHz", "100 MHz", "1000 MHz"], 0,
     "$f = c\/lambda = (3.0 times 10^8)\/300 = 1.0 times 10^6$ Hz $= 1.0$ MHz. Long waves are low-frequency waves, and the arithmetic confirms it."),

    ("The wavelength of an X-ray of frequency $3.0 times 10^18$ Hz is",
     ["0.10 nm", "1.0 nm", "10 nm", "100 nm"], 0,
     "$lambda = c\/f = (3.0 times 10^8)\/(3.0 times 10^18) = 1.0 times 10^(-10)$ m $= 0.10$ nm. An X-ray wavelength is about the size of an atom."),

    ("Infrared radiation is used in",
     ["medical imaging of bones", "remote controls and night-vision equipment",
      "sterilising surgical instruments", "cancer radiotherapy"], 1,
     "Infrared is felt as heat and is emitted by warm objects, which is what a remote control and a night-vision camera rely on. Bones are imaged with X-rays and instruments sterilised with ultraviolet."),

    ("Ultraviolet light is used for",
     ["sterilising and producing vitamin D", "broadcasting", "cooking", "medical imaging of bones"], 0,
     "Ultraviolet kills micro-organisms and triggers vitamin D production in the skin. It is also the band that causes sunburn, which is the other side of the same coin."),

    ("The illuminance 2.0 m from a lamp of intensity 80 cd is",
     ["10 lux", "20 lux", "40 lux", "320 lux"], 1,
     "$E = I\/d^2 = 80\/4.0 = 20$ lux. The square of the distance, not the distance, divides the intensity."),

    ("If the distance from a lamp is tripled, the illuminance becomes",
     ["one third", "one sixth", "one ninth", "nine times"], 2,
     "The inverse-square law divides by 9 when the distance is multiplied by 3. Halving the distance multiplies the illuminance by 4, not by 2."),

    ("Two sources produce a steady interference pattern only if they are",
     ["of equal brightness", "coherent, with the same frequency and a constant phase difference",
      "at the same distance from the screen", "both white light"], 1,
     "Coherence is the condition. Two separate lamps drift in and out of step, so their fringes move too fast to see — the double slit works because one wavefront is divided in two."),

    ("In Young's double-slit experiment the fringe spacing increases when",
     ["the slit separation increases", "the wavelength decreases",
      "the screen is moved further away", "the light is made brighter"], 2,
     "$x = lambda d \/ a$: a larger distance to the screen widens the fringes, and a larger slit separation narrows them. Brightness changes the contrast, not the spacing."),

    ("In a double-slit experiment $a = 1.0$ mm, $d = 2.0$ m and the fringe spacing is 0.60 mm. The wavelength is",
     ["300 nm", "600 nm", "1200 nm", "0.30 m"], 0,
     "$lambda = a x \/ d = (1.0 times 10^(-3) times 0.60 times 10^(-3))\/2.0 = 3.0 times 10^(-7)$ m $= 300$ nm, in the ultraviolet. The units must all be in metres before multiplying."),

    ("Diffraction of light is most noticeable when the gap is",
     ["much larger than the wavelength", "about the same size as the wavelength",
      "much smaller than the wavelength", "of any size"], 1,
     "A gap comparable with the wavelength spreads the wave appreciably. For light, that means gaps of a fraction of a millimetre; for sound, gaps of a metre."),

    ("Polarisation of light shows that light is",
     ["longitudinal", "transverse", "a particle stream", "a sound wave"], 1,
     "Only a transverse wave can have its vibrations restricted to one plane, so polarisation settles the argument. Sound, being longitudinal, cannot be polarised."),

    ("Light reflected from a water surface is partly",
     ["diffracted", "polarised", "dispersed", "absorbed"], 1,
     "Reflection at a glancing angle polarises the light, which is why polarising sunglasses cut glare from a wet road. The filter passes one plane of vibration and blocks the other."),

    ("The blue colour of the sky is caused by",
     ["dispersion in the atmosphere", "scattering of short wavelengths by air molecules",
      "reflection from the sea", "the ozone layer"], 1,
     "Air molecules scatter short wavelengths far more strongly than long ones, so blue reaches the eye from every direction. At sunset the light has travelled far enough for the blue to be scattered away, leaving red."),

    ("A rainbow is formed by",
     ["dispersion and internal reflection in raindrops", "diffraction round raindrops",
      "polarisation by raindrops", "scattering by dust"], 0,
     "Each drop refracts the sunlight, reflects it once internally and refracts it again, spreading the colours as a prism does. The red arc lies outside the violet one."),

    ("White light passes through a red filter and then falls on a blue object. The object appears",
     ["red", "blue", "black", "white"], 2,
     "The filter has removed everything but red, and a blue object reflects only blue, so nothing is reflected: the object looks black."),

    ("The colour of an object depends on",
     ["only its own pigment", "only the light falling on it",
      "both its pigment and the light falling on it", "the distance from the observer"], 2,
     "The pigment decides which colours are reflected and the illumination decides which colours are available. Change either and the apparent colour changes."),

    ("Which statement about electromagnetic waves is *false*?",
     ["they are transverse", "they can travel through a vacuum",
      "they all have the same wavelength", "they carry energy"], 2,
     "They share a speed in a vacuum but differ in wavelength and frequency — that is the whole point of the spectrum. The other three statements are true of every member."),

    ("A light source of intensity 50 cd is 1.0 m above a table. At the table the illuminance is",
     ["5 lux", "25 lux", "50 lux", "100 lux"], 2,
     "$E = I\/d^2 = 50\/1.0 = 50$ lux. At 1 m the illuminance equals the intensity numerically, which is why the metre is a convenient unit in this formula."),

    ("Which colour of light has the highest frequency?",
     ["red", "green", "yellow", "violet"], 3,
     "Frequency rises as wavelength falls, so violet at about 400 nm is the highest in the visible band. Red at about 700 nm is the lowest."),

    ("Fringes are observed in a double-slit experiment. If the source is replaced by one of half the wavelength, the fringe spacing",
     ["is halved", "is unchanged", "is doubled", "disappears"], 0,
     "$x = lambda d \/ a$, so halving the wavelength halves the spacing. This is how the experiment measures wavelength in the first place."),

    ("The deviation produced by a prism is greatest for",
     ["red light", "yellow light", "green light", "violet light"], 3,
     "The deviation grows with the refractive index, which is greatest for violet. That is why the violet end of the spectrum is furthest from the original direction."),

    ("A body that reflects all wavelengths equally appears",
     ["black", "white", "coloured", "grey only in the dark"], 1,
     "Equal reflection of every wavelength is what the eye reads as white. A body that absorbs every wavelength appears black."),

    ("Which of the following is a use of gamma rays?",
     ["night vision", "treating cancer", "broadcasting", "cooking food by radiation"], 1,
     "Gamma rays have the highest energy and can destroy tissue, which is why they are used — carefully — in radiotherapy. Cooking by radiation uses microwaves."),

    ("The angle through which a prism deviates a ray depends on",
     ["only the angle of the prism", "the angle of the prism, the refractive index and the angle of incidence",
      "only the angle of incidence", "only the colour"], 1,
     "All three matter: the geometry sets the path, the index sets the bend at each face, and the angle of incidence sets where the ray enters. That is why the minimum deviation is a special, well-defined case."),

    ("A photograph taken through a polarising filter looks different from one taken without it because the filter",
     ["removes one plane of vibration", "changes the wavelength",
      "magnifies the image", "absorbs all the blue"], 0,
     "The filter passes vibrations in one plane only, which reduces glare from reflective surfaces and darkens the sky. The wavelengths themselves are untouched."),
    ("In Young's double-slit experiment, a dark fringe appears where the two waves",
     ["arrive in phase", "arrive exactly out of phase", "have different frequencies", "are polarised"], 1,
     "A dark fringe is destructive interference, which happens when the path difference is a half-integer number of wavelengths. Bright fringes appear where the waves arrive in step."),
]
