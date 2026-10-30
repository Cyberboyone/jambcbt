"""Chapter 4 drill bank — refraction and total internal reflection.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
"""

DRILL_4 = [
    ("Refraction occurs because light",
     ["changes frequency at a boundary", "changes speed at a boundary",
      "is absorbed at a boundary", "is polarised at a boundary"], 1,
     "A change of speed bends the ray, and the frequency is fixed by the source. The wavelength changes with the speed, but the frequency does not."),

    ("The refractive index of a medium is defined as",
     ["$sin r \/ sin i$", "$sin i \/ sin r$", "$v_2 \/ v_1$", "$lambda_2 \/ lambda_1$"], 1,
     "$n = sin i \/ sin r$ with both angles measured from the normal, and $n = v_1\/v_2$ with medium 1 the one the light comes from. The ratio is always greater than 1 for a denser medium."),

    ("A ray passes from air into glass at an angle of incidence of 30°. If $n = 1.5$, the angle of refraction is about",
     ["15°", "19°", "30°", "49°"], 1,
     "$sin r = sin 30°\/1.5 = 0.5\/1.5 = 0.333$, so $r = 19.5°$. The ray bends towards the normal, so the angle must be smaller than 30°."),

    ("A ray of light enters water of refractive index 1.33 at 50°. The angle of refraction is about",
     ["35°", "40°", "50°", "90°"], 0,
     "$sin r = sin 50°\/1.33 = 0.766\/1.33 = 0.576$, so $r = 35°$. Bending towards the normal again, and by less than in glass."),

    ("The speed of light in a medium of refractive index 1.5 is",
     ["$1.5 times 10^8$ m s⁻¹", "$2.0 times 10^8$ m s⁻¹", "$3.0 times 10^8$ m s⁻¹", "$4.5 times 10^8$ m s⁻¹"], 1,
     "$v = c\/n = (3.0 times 10^8)\/1.5 = 2.0 times 10^8$ m s⁻¹. Light is slower in a denser medium, never faster, so any answer above $3.0 times 10^8$ is impossible."),

    ("Light of wavelength 600 nm in air enters glass of refractive index 1.5. Its wavelength in the glass is",
     ["300 nm", "400 nm", "600 nm", "900 nm"], 1,
     "$lambda = 600\/1.5 = 400$ nm. The frequency is unchanged, so the wavelength falls by the same factor as the speed."),

    ("The quantity that does *not* change when light passes from air into glass is",
     ["speed", "wavelength", "frequency", "direction"], 2,
     "The frequency is set by the source; the speed, wavelength and direction all change at the boundary."),

    ("The critical angle for a medium of refractive index 1.5 is about",
     ["30°", "42°", "49°", "60°"], 1,
     "$sin c = 1\/1.5 = 0.667$, so $c = 41.8°$. The value 49° is the critical angle for water, and 30° is the critical angle for a medium of index 2."),

    ("The critical angle for a medium of refractive index 2.0 is",
     ["30°", "45°", "60°", "90°"], 0,
     "$sin c = 1\/2 = 0.50$, so $c = 30°$. The larger the refractive index, the smaller the critical angle."),

    ("Total internal reflection can occur only when light travels",
     ["from a less dense to a denser medium", "from a denser to a less dense medium at any angle",
      "from a denser to a less dense medium beyond the critical angle",
      "along the normal"], 2,
     "Both conditions are needed: the dense-to-rare direction *and* an angle greater than the critical angle. Going into a denser medium the ray bends towards the normal and can never be totally reflected."),

    ("The critical angle of a medium is 45°. Its refractive index is",
     ["1.41", "1.50", "1.73", "2.00"], 0,
     "$n = 1\/sin 45° = 1\/0.707 = 1.41$. A medium with a critical angle of 45° is a little less refractive than glass."),

    ("An optical fibre works on the principle of",
     ["dispersion", "total internal reflection", "diffraction", "polarisation"], 1,
     "The light strikes the boundary between the core and the cladding at an angle larger than the critical angle, so it is reflected back into the core and follows the fibre round a bend."),

    ("A pool of water 2.4 m deep has a refractive index of 1.33. To someone looking straight down it appears",
     ["1.8 m deep", "2.4 m deep", "3.2 m deep", "4.8 m deep"], 0,
     "The apparent depth is the real depth divided by $n$: $2.4\/1.33 = 1.8$ m. The pool looks shallower than it is, which is a warning worth remembering at the deep end."),

    ("A coin at the bottom of a beaker of water is seen to be raised. The apparent shift is",
     ["away from the eye", "towards the eye", "sideways", "zero"], 1,
     "Rays from the coin bend away from the normal as they leave the water, and the eye projects them back to a point nearer the surface — so the coin appears raised towards the eye."),

    ("A glass slab of refractive index 1.5 is 6.0 cm thick. An object seen through it appears to be",
     ["2.0 cm nearer", "4.0 cm nearer", "6.0 cm nearer", "2.0 cm further"], 0,
     "The apparent depth is $6.0\/1.5 = 4.0$ cm, so the shift is $6.0 - 4.0 = 2.0$ cm towards the observer."),

    ("When a ray of light passes from glass into air at an angle greater than the critical angle",
     ["it is refracted away from the normal", "it is totally reflected back into the glass",
      "it is absorbed by the air", "it travels along the boundary"], 1,
     "Beyond the critical angle no light crosses the boundary at all: it is all reflected back into the denser medium, obeying the ordinary law of reflection."),

    ("The angle of deviation of a ray passing through a parallel-sided glass block is",
     ["equal to the angle of incidence", "zero, because the emergent ray is parallel to the incident ray",
      "twice the angle of incidence", "the same as for a prism of the same glass"], 1,
     "The two faces are parallel, so the two refractions are equal and opposite: the emergent ray is displaced sideways but not deviated. A prism deviates the ray because its faces are not parallel."),

    ("A prism of angle 60° has internal angles of refraction of 28° and 32°. The value of $A$ is",
     ["28°", "32°", "60°", "90°"], 2,
     "$A = r_1 + r_2 = 28° + 32° = 60°$, which is the angle of the prism — a check on the geometry rather than a new measurement."),

    ("The colour deviated least by a prism is",
     ["red", "green", "blue", "violet"], 0,
     "Red has the longest wavelength and the smallest refractive index, so it is bent least. Violet, at the other end, is bent most."),

    ("Dispersion occurs because the refractive index of glass depends on",
     ["the angle of incidence", "the colour of the light", "the thickness of the glass", "the shape of the prism"], 1,
     "The index rises slightly with frequency, so violet is slowed and bent more than red. The angle of incidence and the shape set the size of the effect, but the cause is the colour dependence of $n$."),

    ("A ray strikes a water-air boundary at 60°. The critical angle for water is 49°. The ray",
     ["is refracted into the air at a larger angle", "travels along the surface",
      "is totally internally reflected", "is absorbed"], 2,
     "60° is greater than 49°, so no light escapes: the ray is totally internally reflected back into the water."),

    ("A diamond sparkles more than glass because it has",
     ["a larger critical angle", "a smaller critical angle", "a larger wavelength", "a smaller density"], 1,
     "With $n = 2.42$ the critical angle is only about 24°, so light entering the top of a cut stone is trapped and bounces several times before leaving — and each exit spreads the colours that give the fire."),

    ("A ray passes from water ($n = 1.33$) into glass ($n = 1.50$). It bends",
     ["towards the normal", "away from the normal", "not at all", "back into the water"], 0,
     "Glass is denser than water, so the ray bends towards the normal. Partial reflection also occurs, but the refracted ray is the one that crosses."),

    ("The apparent depth of a 12 cm layer of water ($n = 1.33$) is",
     ["6.0 cm", "9.0 cm", "12 cm", "16 cm"], 1,
     "$12\/1.33 = 9.0$ cm. The shift is 3.0 cm, and the apparent depth is always less than the real depth when looking down from a less dense medium."),

    ("Snell's law is obeyed when a ray passes from air into glass. If the angle of incidence is increased, the angle of refraction",
     ["decreases", "increases but stays smaller than the angle of incidence",
      "increases and becomes larger than the angle of incidence", "stays constant"], 1,
     "Both angles rise together, but their ratio is fixed at $n > 1$, so the refracted angle stays the smaller of the two."),

    ("A ray enters a glass block at 60° and leaves the opposite face. If $n = 1.5$, the angle inside the glass is about",
     ["25°", "35°", "42°", "60°"], 1,
     "$sin r = sin 60°\/1.5 = 0.866\/1.5 = 0.577$, so $r = 35.3°$."),

    ("The refractive index of a medium in which light travels at $2.0 times 10^8$ m s⁻¹ is",
     ["1.20", "1.33", "1.50", "2.00"], 2,
     "$n = c\/v = (3.0 times 10^8)\/(2.0 times 10^8) = 1.50$. The value 1.33 would mean a speed of $2.26 times 10^8$ m s⁻¹, which is water."),

    ("A ray passes from air into a medium and is refracted at 0°. The ray",
     ["was travelling along the normal", "was at the critical angle",
      "was totally internally reflected", "cannot have been refracted"], 0,
     "A ray along the normal enters perpendicular to the surface and goes straight on; the angle of refraction is zero because the angle of incidence is zero."),

    ("The mirage seen on a hot road is caused by",
     ["reflection from the road surface", "total internal reflection in hot air near the road",
      "dispersion in the air", "diffraction round the road"], 1,
     "The air near the road is hotter and less dense, so light from the sky bends upwards and is totally internally reflected towards the eye — which then sees a patch that looks like water."),

    ("Two parallel rays pass from air into glass. After refraction they",
     ["converge", "diverge", "remain parallel", "cross at the focus"], 2,
     "A plane boundary does not converge a beam: all rays are bent towards the normal by the same rule, so parallel rays stay parallel. It takes a curved surface — a lens — to make them meet."),

    ("A ray strikes the boundary of a denser medium at the critical angle. The refracted ray",
     ["is at 90° to the normal", "is at 0°", "does not exist", "is at 45°"], 0,
     "At the critical angle the refracted ray grazes the surface, so it makes 90° with the normal. Beyond it the ray does not leave the medium at all."),

    ("The refractive index of glass is 1.5 and of water 1.33. The speed of light is greater in",
     ["glass", "water", "neither, it is the same", "it depends on the colour"], 1,
     "The smaller refractive index means the smaller reduction from $c$, so light is faster in water. Speed falls as the index rises."),

    ("A prism is used instead of a plane mirror in some periscopes because",
     ["it is cheaper", "total internal reflection is brighter than silvering",
      "it inverts the image", "it magnifies"], 1,
     "A silvered surface absorbs a few per cent at every reflection, while total internal reflection loses nothing. The 45° face of a right-angled prism does the same job as a mirror, better."),

    ("In the relation between real and apparent depth, the ratio of real to apparent depth is greater than 1 when",
     ["looking from water into air", "looking from air into water",
      "the object is above the surface", "the medium is a vacuum"], 1,
     "Looking down into a denser medium from a less dense one, the object appears nearer, so the apparent depth is smaller and the ratio exceeds 1."),

    ("A ray of light in glass strikes the glass-air boundary at 30°. The critical angle is 42°. The ray",
     ["is totally internally reflected", "emerges into the air, bent away from the normal",
      "emerges along the surface", "is absorbed"], 1,
     "30° is less than 42°, so the ray escapes — and going into the less dense medium it bends away from the normal. Total internal reflection needs an angle *above* the critical value."),

    ("Which pair of colours would be separated most widely by a prism?",
     ["red and orange", "green and yellow", "violet and red", "blue and indigo"], 2,
     "The separation grows with the difference in frequency, and red and violet are at opposite ends of the visible band. That is why the ends of the spectrum are always the easiest to see."),

    ("The angle of incidence in a medium of refractive index 1.5 for which the refracted ray is at 90° is",
     ["about 42°", "about 49°", "about 30°", "about 60°"], 0,
     "That angle *is* the critical angle: $sin c = 1\/1.5 = 0.667$, so $c = 42°$. Water, with $n = 1.33$, gives 49° instead."),

    ("A fish looks up at the surface of water. The region of the sky it can see is limited because",
     ["water absorbs the light", "of total internal reflection beyond the critical angle",
      "the water is moving", "of dispersion in water"], 1,
     "The fish sees the whole sky compressed into a cone of half-angle 49°, and beyond that the surface acts as a mirror, showing the reflected depths instead."),

    ("Light travelling in air strikes a glass surface at 45°. The angle of refraction is",
     ["less than 45°", "equal to 45°", "greater than 45°", "90°"], 0,
     "Entering a denser medium the ray bends towards the normal, so the refracted angle is smaller than 45° — about 28° for glass of index 1.5."),
    ("A ray of light is incident at 90° to a glass surface. The angle of refraction is",
     ["0°", "45°", "90°", "the critical angle"], 0,
     "A ray along the normal is undeviated, so the refracted ray continues at 0° to the normal. There is refraction — the speed changes — but no bending, because there is no angle to bend."),
]
