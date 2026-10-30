"""Chapter 5 drill bank — lenses and optical instruments.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
"""

DRILL_5 = [
    ("A converging lens is",
     ["thick in the middle and brings parallel rays to a focus",
      "thin in the middle and spreads parallel rays",
      "flat on both sides", "always made of glass"], 0,
     "The converging — convex — lens is thicker at the centre, and its principal focus is the point where a parallel beam meets on the far side."),

    ("A diverging lens always forms an image that is",
     ["real and inverted", "real and magnified", "virtual, upright and diminished", "virtual and magnified"], 2,
     "A diverging lens spreads the light, so the image is always virtual, upright and smaller than the object, whatever the object distance."),

    ("The focal length of a converging lens is taken as",
     ["positive", "negative", "zero", "infinite"], 0,
     "Converging lenses are positive, diverging lenses negative. The sign carries the physics: it says which way the lens bends the light."),

    ("An object is 30 cm from a converging lens of focal length 10 cm. The image distance is",
     ["7.5 cm", "15 cm", "20 cm", "30 cm"], 1,
     "$1\/v = 1\/10 - 1\/30 = 2\/30$, so $v = 15$ cm. The image is real, inverted and between F and 2F."),

    ("An object is 20 cm from a converging lens of focal length 20 cm. The image is formed",
     ["at 20 cm on the same side", "at infinity", "at 10 cm", "at 40 cm"], 1,
     "The object is at the focus, so $1\/v = 1\/20 - 1\/20 = 0$ and $v$ is infinite: the rays leave the lens parallel and never meet."),

    ("An object is 10 cm from a converging lens of focal length 20 cm. The image is",
     ["real and 20 cm away", "virtual and 20 cm from the lens on the same side",
      "virtual and 10 cm away", "at infinity"], 1,
     "$1\/v = 1\/20 - 1\/10 = -1\/20$, so $v = -20$ cm: virtual, on the same side as the object, and twice the size. This is the magnifying glass."),

    ("The magnification of a lens is given by",
     ["$u\/v$", "$v\/u$", "$f\/u$", "$u\/f$"], 1,
     "$m = v\/u$, the image distance over the object distance — the same ratio of heights. Magnification has no unit."),

    ("The power of a lens of focal length 50 cm is",
     ["0.5 D", "2.0 D", "5.0 D", "50 D"], 1,
     "$P = 1\/f$ with $f = 0.50$ m, so $P = +2.0$ dioptres. Leaving the focal length in centimetres gives 0.02 D, which no prescription would use."),

    ("The focal length of a lens of power $+4.0$ D is",
     ["4.0 cm", "25 cm", "40 cm", "250 cm"], 1,
     "$f = 1\/P = 1\/4.0 = 0.25$ m $= 25$ cm. The power is large because the focal length is short."),

    ("Two thin lenses of powers $+3.0$ D and $-1.0$ D are placed in contact. The power of the combination is",
     ["$+2.0$ D", "$+3.0$ D", "$+4.0$ D", "$-4.0$ D"], 0,
     "Powers in contact add algebraically: $3.0 - 1.0 = +2.0$ D. The diverging lens weakens the combination without reversing it."),

    ("A lens of power $-2.5$ D is",
     ["converging with $f = 40$ cm", "diverging with $f = 40$ cm",
      "converging with $f = 25$ cm", "diverging with $f = 25$ cm"], 1,
     "A negative power means a diverging lens, and $f = 1\/2.5 = 0.40$ m $= 40$ cm. The sign carries the type, the size carries the strength."),

    ("Short sight is corrected with a",
     ["converging lens", "diverging lens", "cylindrical lens", "plane mirror"], 1,
     "A short-sighted eye brings distant objects to a focus in front of the retina, so it needs a diverging lens to push the image back. That lens has a negative power."),

    ("Long sight is corrected with a",
     ["converging lens", "diverging lens", "cylindrical lens", "prism"], 0,
     "A long-sighted eye cannot focus near objects, and a converging lens brings the rays in sooner. The prescription is positive."),

    ("The near point of a normal eye is about",
     ["2.5 cm", "25 cm", "2.5 m", "infinity"], 1,
     "The near point is 25 cm — the closest distance at which the eye can focus comfortably. The far point of a normal eye is at infinity."),

    ("The image formed on the retina of the eye is",
     ["virtual and upright", "real and inverted", "real and upright", "virtual and inverted"], 1,
     "The cornea and lens form a real image on the retina, and a real image from a single converging system is inverted. It is the brain that flips it."),

    ("The part of the eye that controls the amount of light entering is the",
     ["retina", "cornea", "iris", "optic nerve"], 2,
     "The iris adjusts the pupil, exactly as the aperture of a camera does. The cornea does most of the refraction and the retina receives the image."),

    ("A camera and the eye both",
     ["form a virtual image", "form a real inverted image", "use a diverging lens", "have a fixed focus"], 1,
     "Both form a real, inverted image on a sensitive surface. They differ in how they focus: the camera moves its lens, the eye changes its shape."),

    ("The magnification of an astronomical telescope is given by",
     ["$f_e \/ f_0$", "$f_0 \/ f_e$", "$f_0 times f_e$", "$f_0 + f_e$"], 1,
     "$M = f_0\/f_e$: a long objective and a short eyepiece give a large magnification. The separation of the lenses for a relaxed eye is $f_0 + f_e$."),

    ("A telescope has an objective of focal length 90 cm and an eyepiece of 3.0 cm. Its magnification is",
     ["3", "30", "93", "270"], 1,
     "$M = 90\/3.0 = 30$. The magnification is a bare ratio, so it carries no unit."),

    ("The lenses of a telescope focused for a relaxed eye are separated by",
     ["$f_0 - f_e$", "$f_0 + f_e$", "$f_0$", "$f_e$"], 1,
     "A parallel beam from the objective must leave the eyepiece parallel too, and that happens when the distance is the sum of the focal lengths."),

    ("A compound microscope uses an objective of",
     ["long focal length and a long eyepiece", "short focal length and a short eyepiece",
      "long focal length and a short eyepiece", "short focal length and a long eyepiece"], 1,
     "Both lenses are short-focus: the objective makes a magnified real image of a tiny object, and the eyepiece magnifies that image again as a virtual one."),

    ("The image seen through a magnifying glass held close to a stamp is",
     ["real, inverted and magnified", "virtual, upright and magnified",
      "virtual, upright and diminished", "real, upright and magnified"], 1,
     "The stamp is inside the focus, so the image is virtual, upright and magnified — the only case in which a converging lens gives a virtual image."),

    ("A real image formed by a converging lens is always",
     ["upright and on the same side as the object", "inverted and on the opposite side to the object",
      "upright and diminished", "virtual"], 1,
     "Real images from a single lens are inverted and form on the far side. Upright images are virtual and form on the object's side."),

    ("An object 4.0 cm high is 12 cm from a converging lens of focal length 8.0 cm. The height of the image is",
     ["2.0 cm", "4.0 cm", "8.0 cm", "12 cm"], 2,
     "$1\/v = 1\/8 - 1\/12 = 1\/24$, so $v = 24$ cm and $m = 24\/12 = 2$; the image is $2 times 4.0 = 8.0$ cm high."),

    ("The principal focus of a converging lens is the point where",
     ["rays through the centre meet", "a beam parallel to the axis is brought to a point",
      "the object is always placed", "the image is always formed"], 1,
     "That is the definition, and it fixes the focal length. The focus of a diverging lens is where the spread beam appears to come from, on the same side as the incoming light."),

    ("A ray through the optical centre of a thin lens",
     ["passes through the far focus", "emerges parallel to the axis", "passes straight on undeviated", "is totally reflected"], 2,
     "The centre of a thin lens acts like a thin parallel-sided slab, so the ray goes straight through. It is the third of the three construction rays."),

    ("A short-sighted person has a far point of 50 cm. The focal length of the correcting lens is",
     ["$-50$ cm", "$+50$ cm", "$-25$ cm", "$+100$ cm"], 0,
     "The lens must take a distant object ($u$ infinite) and form a virtual image at the far point, so $f = -50$ cm. The negative sign says diverging, which is what short sight needs."),

    ("A long-sighted person has a near point of 50 cm. To read at 25 cm, the lens needed has focal length",
     ["25 cm", "37.5 cm", "50 cm", "75 cm"], 2,
     "$1\/f = 1\/25 - 1\/50 = 1\/50$, so $f = 50$ cm. The virtual image is at the near point, hence the minus sign on $v$."),

    ("The power of the lens in the previous question is",
     ["$+0.5$ D", "$+2.0$ D", "$+2.5$ D", "$+4.0$ D"], 1,
     "$P = 1\/f = 1\/0.50 = +2.0$ D. A focal length of half a metre is a power of two dioptres — the reciprocal must be taken in metres."),

    ("Which defect of the eye is corrected by a cylindrical lens?",
     ["short sight", "long sight", "astigmatism", "presbyopia"], 2,
     "An astigmatic cornea is curved differently in different directions, so a cylindrical lens — curved in one plane only — is needed to compensate."),

    ("In a camera, the amount of light reaching the film is controlled by",
     ["the focal length", "the aperture", "the shutter only", "the film speed"], 1,
     "The aperture sets how much light gets through, and the shutter sets how long it falls. The focal length sets the size of the image."),

    ("A converging lens of focal length 15 cm forms a real image at 30 cm. The object distance is",
     ["10 cm", "15 cm", "30 cm", "45 cm"], 2,
     "$1\/u = 1\/15 - 1\/30 = 1\/30$, so $u = 30$ cm. The object and image are both at 2F, which is the only position where the image is the same size as the object."),

    ("Which of the following is *not* an optical instrument that forms a real image?",
     ["camera", "projector", "magnifying glass", "compound microscope objective"], 2,
     "A magnifying glass forms a virtual image — the object sits inside its focus. The camera, the projector and the microscope objective all form real images."),

    ("The image formed by a diverging lens is always on",
     ["the opposite side from the object", "the same side as the object",
      "the principal axis only", "the focal plane"], 1,
     "A virtual image is always on the same side as the object, because the rays only appear to diverge from there. Both diverging lenses and converging lenses with the object inside F behave this way."),

    ("A projector uses a converging lens with the slide placed",
     ["inside the focus", "between F and 2F", "at 2F", "beyond 2F"], 1,
     "Between F and 2F the image is real, inverted and magnified, which is what a projector throws onto a screen. Beyond 2F the image would be diminished."),

    ("The total magnification of a compound microscope is the product of",
     ["the two focal lengths", "the two magnifications", "the two powers", "the two separations"], 1,
     "Each lens magnifies, and the two magnifications multiply: $M = m_0 times m_e$. That is why a microscope reaches magnifications a single lens cannot."),

    ("A lens of focal length 20 cm is used as a magnifying glass. The image is largest when the object is",
     ["at the focus", "just inside the focus", "at 2F", "far beyond 2F"], 1,
     "Just inside the focus the image is at the near point, where the eye can see it as large as possible. At the focus itself the image is at infinity and the eye sees it relaxed but not larger."),

    ("A diverging lens is placed in contact with a converging lens of focal length 20 cm. If the combination has a focal length of 30 cm, the focal length of the diverging lens is",
     ["$-12$ cm", "$-60$ cm", "$-20$ cm", "$-30$ cm"], 1,
     "$P = 1\/0.30 = 3.33$ D and $P_1 = 5.0$ D, so $P_2 = -1.67$ D and $f_2 = -0.60$ m $= -60$ cm."),

    ("The image on the retina and the image on a camera sensor are both",
     ["virtual and upright", "real and inverted", "real and upright", "virtual and inverted"], 1,
     "Both are formed by a converging system on a receiving surface, so both are real and inverted. Neither can be upright: upright images are virtual."),
    ("An object is placed at 2F of a converging lens. The magnification is",
     ["0.5", "1", "2", "infinite"], 1,
     "At 2F the image forms at 2F on the other side, so $u = v$ and $m = v\/u = 1$: the image is the same size as the object, real and inverted."),
]
