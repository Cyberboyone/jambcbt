"""Chapter 3 drill bank — reflection at plane and curved mirrors.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
"""

DRILL_3 = [
    ("The angle of incidence is measured between the incident ray and",
     ["the mirror surface", "the normal", "the reflected ray", "the principal axis"], 1,
     "Every angle in optics is measured from the normal. A ray striking a mirror at 30° to its surface has an angle of incidence of 60°, not 30°."),

    ("A ray strikes a plane mirror normally. The angle of reflection is",
     ["0°", "45°", "90°", "180°"], 0,
     "The ray travels along the normal, so the angle of incidence is 0° and the angle of reflection is 0°: the ray returns along its own path."),

    ("A ray strikes a plane mirror at 40° to the surface. The angle of reflection is",
     ["40°", "50°", "80°", "90°"], 1,
     "The angle of incidence is $90° - 40° = 50°$ from the normal, and the reflected angle equals it. The 40° belongs to the surface, not to the normal."),

    ("The image formed by a plane mirror is",
     ["real, inverted and magnified", "virtual, upright and the same size",
      "real, upright and diminished", "virtual, inverted and diminished"], 1,
     "The reflected rays only appear to come from behind the mirror, so the image is virtual; it is upright, the same size, and as far behind as the object is in front."),

    ("A man stands 2.0 m in front of a plane mirror. The distance between him and his image is",
     ["1.0 m", "2.0 m", "4.0 m", "8.0 m"], 2,
     "The image is 2.0 m behind the mirror and the man is 2.0 m in front, so the separation is 4.0 m. The image distance always equals the object distance."),

    ("A plane mirror turns through 15°. The reflected ray turns through",
     ["7.5°", "15°", "30°", "45°"], 2,
     "Turning the mirror through $theta$ turns the reflected ray through $2 theta$. That doubling is the optical lever used in mirror galvanometers."),

    ("Which of these is *not* a property of the image in a plane mirror?",
     ["it is laterally inverted", "it is the same size as the object",
      "it can be caught on a screen", "it is as far behind as the object is in front"], 2,
     "A virtual image cannot be caught on a screen, because no light actually reaches the place where it appears to be. Every other property listed belongs to a plane mirror image."),

    ("The focal length of a concave mirror of radius of curvature 24 cm is",
     ["6.0 cm", "12 cm", "24 cm", "48 cm"], 1,
     "$f = r\/2 = 24\/2 = 12$ cm. The focus lies halfway between the pole and the centre of curvature."),

    ("For a concave mirror, the focal length is taken as",
     ["positive", "negative", "zero", "infinite"], 0,
     "A concave mirror converges light, so it has a positive focal length. A convex mirror diverges light and its focal length is negative in the same convention."),

    ("An object is placed at the centre of curvature of a concave mirror. The image is",
     ["at the focus, real and diminished", "at the centre of curvature, real and the same size",
      "behind the mirror, virtual and magnified", "at infinity"], 1,
     "$u = 2f$ gives $1\/v = 1\/f - 1\/(2f) = 1\/(2f)$, so $v = 2f$: the image is at C, real, inverted and the same size."),

    ("An object 10 cm from a concave mirror of focal length 15 cm gives an image that is",
     ["real and inverted", "virtual, upright and magnified",
      "virtual, upright and diminished", "real and diminished"], 1,
     "The object is inside the focus, so the mirror behaves as a shaving mirror: $1\/v = 1\/15 - 1\/10 = -1\/30$ gives $v = -30$ cm, a virtual image three times the size."),

    ("An object 30 cm from a concave mirror of focal length 10 cm gives an image at",
     ["7.5 cm", "15 cm", "20 cm", "30 cm"], 1,
     "$1\/v = 1\/10 - 1\/30 = 2\/30$, so $v = 15$ cm — real, inverted and between F and C."),

    ("A convex mirror always forms an image that is",
     ["real and magnified", "real and diminished", "virtual and diminished", "virtual and magnified"], 2,
     "A convex mirror diverges the light, so the image is always virtual and upright, and it is always diminished because $|v| < u$ for every object position."),

    ("A convex mirror of focal length 20 cm has an object 60 cm in front of it. The image is",
     ["15 cm behind the mirror", "15 cm in front of the mirror",
      "30 cm behind the mirror", "30 cm in front of the mirror"], 0,
     "$1\/v = -1\/20 - 1\/60 = -4\/60$, so $v = -15$ cm: 15 cm behind the mirror, virtual. The negative sign carries the position."),

    ("The magnification produced by a mirror is given by",
     ["$u\/v$", "$v\/u$", "$f\/u$", "$u\/f$"], 1,
     "$m = v\/u$ — image distance over object distance, which is also image height over object height. A magnification greater than 1 means the image is larger than the object."),

    ("A concave mirror forms a real image four times the size of the object. If the object is 15 cm from the mirror, the image distance is",
     ["3.75 cm", "19 cm", "60 cm", "75 cm"], 2,
     "$m = v\/u = 4$, so $v = 4u = 60$ cm. A real image of a concave mirror lies in front of it, so $v$ is positive."),

    ("The mirror used as a driving mirror is convex because it",
     ["magnifies the traffic behind", "gives a wide field of view",
      "forms a real image", "has a long focal length"], 1,
     "A convex mirror squeezes a wide field into a small image, so the driver sees more road. The price is that everything looks smaller and therefore further away than it is."),

    ("The mirror used in a torch to produce a parallel beam is",
     ["plane", "convex", "concave", "cylindrical"], 2,
     "A bulb at the focus of a concave mirror sends its light out as a parallel beam. The same arrangement, reversed, is the reflecting telescope."),

    ("An object is placed at the focus of a concave mirror. The image is formed",
     ["at the focus", "at the centre of curvature", "at infinity", "behind the mirror"], 2,
     "Rays from the focus reflect parallel to the axis, so they never meet: the image is at infinity. This is the reverse of the torch arrangement."),

    ("A ray parallel to the principal axis of a concave mirror, after reflection, passes through",
     ["the pole", "the centre of curvature", "the principal focus", "the middle of the mirror"], 2,
     "That is the definition of the principal focus. The converse is equally useful: a ray through the focus reflects parallel to the axis."),

    ("A ray passing through the centre of curvature of a concave mirror is reflected",
     ["parallel to the axis", "through the focus", "along its own path", "at 90° to its path"], 2,
     "The ray strikes the mirror along the normal, so it retraces its path. That is the third of the three construction rays."),

    ("A concave mirror of focal length 12 cm forms a real image at 24 cm. The object distance is",
     ["8.0 cm", "12 cm", "24 cm", "36 cm"], 2,
     "$1\/u = 1\/12 - 1\/24 = 1\/24$, so $u = 24$ cm. The object and image coincide only at the centre of curvature, which is 24 cm from the pole."),

    ("Which mirror gives an upright image of a distant object?",
     ["concave, object beyond C", "concave, object between F and C",
      "convex", "concave, object at F"], 2,
     "A convex mirror gives an upright, virtual image of every object. A concave mirror with the object beyond F gives an inverted, real image."),

    ("The radius of curvature of a concave mirror is 30 cm. Its focal length is",
     ["7.5 cm", "15 cm", "30 cm", "60 cm"], 1,
     "$f = r\/2 = 15$ cm. Doubling the focal length to get the radius is the reverse of the same rule."),

    ("An object 4.0 cm high stands 20 cm from a concave mirror of focal length 12 cm. The height of the image is",
     ["2.4 cm", "4.0 cm", "6.0 cm", "10 cm"], 2,
     "$1\/v = 1\/12 - 1\/20 = 2\/60$, so $v = 30$ cm and $m = 30\/20 = 1.5$; the image is $1.5 times 4.0 = 6.0$ cm high."),

    ("A plane mirror is used in a periscope because it",
     ["magnifies the image", "changes the direction of light without changing its size",
      "shortens the wavelength", "focuses the light"], 1,
     "Two plane mirrors at 45° steer the light round a corner, and the image stays the right size and the right way up — with one mirror there would be a lateral inversion."),

    ("Total deviation of a ray striking a plane mirror at 30° to the surface is",
     ["30°", "60°", "120°", "150°"], 1,
     "The deviation is $180° - 2i$ with $i = 60°$ from the normal, giving $180° - 120° = 60°$ — the same as twice the angle the ray makes with the surface."),

    ("Which statement about a virtual image is true?",
     ["it is formed where light actually converges", "it cannot be projected on a screen",
      "it is always inverted", "it can only be formed by a plane mirror"], 1,
     "A virtual image is where light only *appears* to come from, so no screen can catch it. It is upright, and it can be formed by plane mirrors, convex mirrors and by lenses and concave mirrors too."),

    ("A concave mirror has a focal length of 10 cm. An object 25 cm away gives a magnification of",
     ["0.67", "1.5", "2.5", "4.0"], 0,
     "$1\/v = 1\/10 - 1\/25 = 3\/50$, so $v = 16.7$ cm and $m = 16.7\/25 = 0.67$ — a real, diminished image."),

    ("Which mirror would be used to see a wide view of a shop?",
     ["concave", "convex", "plane", "parabolic"], 1,
     "A convex mirror shows a wide field with an upright, diminished image, which is exactly what a security mirror needs."),

    ("Light reflected from a rough surface is",
     ["regularly reflected", "diffusely reflected", "totally internally reflected", "polarised only"], 1,
     "Each part of a rough surface has a different normal, so a parallel beam leaves in every direction. The laws of reflection still hold at every point; only the normals differ."),

    ("An object is 5.0 cm from a concave mirror of focal length 15 cm. The image is",
     ["real and 7.5 cm from the mirror", "virtual and 7.5 cm behind the mirror",
      "virtual and 15 cm behind the mirror", "real and 30 cm from the mirror"], 1,
     "$1\/v = 1\/15 - 1\/5 = -2\/15$, so $v = -7.5$ cm: a virtual image 7.5 cm behind the mirror, three times the size."),

    ("The distance from the pole of a mirror to its centre of curvature is",
     ["the focal length", "the radius of curvature", "the aperture", "the principal axis"], 1,
     "The radius of curvature runs from the pole to C, and the focus lies halfway along it, so $r = 2f$."),

    ("A concave mirror produces an image of the same size as the object when the object is at",
     ["F", "C", "between F and C", "beyond C"], 1,
     "At C the object and image are both at $2f$, so $m = 1$. At F the image is at infinity, and elsewhere the size differs or the image is virtual."),

    ("Which of the following can form a real image?",
     ["a plane mirror", "a convex mirror", "a concave mirror", "a plane glass sheet"], 2,
     "Only a converging optical element can form a real image, and among these only the concave mirror converges light."),

    ("A convex mirror has a radius of curvature of 40 cm. An object 30 cm in front of it gives an image at",
     ["12 cm behind the mirror", "12 cm in front of the mirror",
      "20 cm behind the mirror", "60 cm behind the mirror"], 0,
     "$f = -20$ cm, and $1\/v = -1\/20 - 1\/30 = -5\/60$, so $v = -12$ cm: 12 cm behind the mirror."),

    ("A ray is incident at 45° on a plane mirror and the mirror is rotated through 20°. The reflected ray rotates through",
     ["10°", "20°", "40°", "80°"], 2,
     "The rotation of the reflected ray is twice that of the mirror: $2 times 20° = 40°$. The same doubling appeared in the earlier question about a 15° turn."),

    ("A real image formed by a concave mirror is always",
     ["upright", "inverted", "the same size as the object", "virtual"], 1,
     "Every real image formed by a single mirror or lens is inverted. Upright images are virtual, in every case met at this level."),
    ("The image of an object at infinity formed by a concave mirror is",
     ["at the pole", "at the focus", "at the centre of curvature", "at infinity"], 1,
     "Rays from a distant object arrive parallel to the axis, and a concave mirror brings them to the principal focus. That is why the sun can be focused to a burning point with a shaving mirror."),

    ("A dentist uses a small concave mirror close to a tooth because it gives",
     ["a real, inverted image", "a virtual, magnified, upright image",
      "a virtual, diminished image", "a parallel beam"], 1,
     "With the tooth inside the focal length the mirror acts as a magnifier: virtual, upright and enlarged. Moving the mirror further away would give an inverted real image, which is no use for inspection."),
]
