"""Chapter 1 drill bank — measurement, units and dimensions.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
The solution names the concept and shows the working, so that a wrong answer
can be traced to a section of the chapter rather than to "carelessness".
"""

DRILL_1 = [
    ("Which of the following is *not* an SI base unit?",
     ["ampere", "kelvin", "newton", "mole"], 2,
     "The newton is a derived unit: $1$ N $= 1$ kg m s⁻². The seven base units are the metre, kilogram, second, ampere, kelvin, mole and candela."),

    ("The length 0.000 042 m, written in standard form, is",
     ["$4.2 times 10^(-5)$ m", "$42 times 10^(-6)$ m", "$4.2 times 10^(5)$ m", "$0.42 times 10^(-4)$ m"], 0,
     "Move the decimal point five places to the right and multiply by $10^(-5)$: standard form keeps one digit before the point, so $42 times 10^(-6)$ is not standard form."),

    ("A car travels at 90 km h⁻¹. Its speed in m s⁻¹ is",
     ["9.0", "25", "32", "250"], 1,
     "$90$ km h⁻¹ $= 90 times 1000 \/ 3600 = 25$ m s⁻¹. The conversion factor is $1000\/3600 = 5\/18$."),

    ("The dimensions of pressure are",
     ["$M L^(-1) T^(-2)$", "$M L T^(-2)$", "$M L^2 T^(-2)$", "$M L^(-3)$"], 0,
     "Pressure is force per area: $(M L T^(-2)) \/ L^2 = M L^(-1) T^(-2)$."),

    ("Which of these quantities is dimensionless?",
     ["strain", "stress", "force", "power"], 0,
     "Strain is an extension divided by a length, so both sides cancel. Stress is a pressure and force and power are derived from the base units."),

    ("The main scale of a vernier caliper reads 3.2 cm and the fourth vernier division coincides with a main-scale division. If the least count is 0.01 cm, the reading is",
     ["3.24 cm", "3.40 cm", "3.14 cm", "3.204 cm"], 0,
     "Reading $=$ main scale $+$ (vernier division $times$ least count) $= 3.2 + 4 times 0.01 = 3.24$ cm."),

    ("A vernier caliper has a zero error of $+0.03$ cm. A reading of 2.45 cm is taken with it. The correct length is",
     ["2.48 cm", "2.42 cm", "2.45 cm", "2.15 cm"], 1,
     "A positive zero error is *subtracted*: $2.45 - 0.03 = 2.42$ cm. A negative zero error would be added."),

    ("The reading of a micrometer screw gauge is 5.5 mm on the sleeve and 23 divisions on the thimble. If the least count is 0.01 mm, the diameter is",
     ["5.73 mm", "5.23 mm", "7.8 mm", "5.523 mm"], 0,
     "5.5 mm $+ 23 times 0.01$ mm $= 5.5 + 0.23 = 5.73$ mm."),

    ("The diameter of a thin wire is best measured with",
     ["a metre rule", "a vernier caliper", "a micrometer screw gauge", "a tape measure"], 2,
     "The micrometer has the smallest least count (0.01 mm) and its jaws close on the wire from both sides, which removes the parallax of a rule."),

    ("A density of 2.70 g cm⁻³, expressed in SI units, is",
     ["2.70 kg m⁻³", "27.0 kg m⁻³", "270 kg m⁻³", "2700 kg m⁻³"], 3,
     "$1$ g cm⁻³ $= 1000$ kg m⁻³, so multiply by $10^3$: $2.70 times 10^3$ kg m⁻³."),

    ("The prefix nano stands for",
     ["$10^(-6)$", "$10^(-9)$", "$10^(-12)$", "$10^9$"], 1,
     "nano $= 10^(-9)$ (micro is $10^(-6)$, pico $10^(-12)$). A nanometre is a thousandth of a micrometre."),

    ("One megawatt is",
     ["$10^3$ W", "$10^6$ W", "$10^(-6)$ W", "$10^9$ W"], 1,
     "Mega $= 10^6$, so 1 MW $= 10^6$ W $= 1$ MJ s⁻¹."),

    ("Which of the following is a vector quantity?",
     ["mass", "displacement", "speed", "energy"], 1,
     "Displacement has both magnitude and direction. Mass, speed and energy are scalars — speed is the magnitude of velocity, which is why it has no sign."),

    ("Two forces of 3 N and 4 N act at right angles to each other. Their resultant is",
     ["1 N", "5 N", "7 N", "12 N"], 1,
     "$R = sqrt(3^2 + 4^2) = sqrt(25) = 5$ N — the 3–4–5 triangle."),

    ("Two forces of 10 N each act at 60° to each other. Their resultant is",
     ["10.0 N", "14.1 N", "17.3 N", "20.0 N"], 2,
     "$R = sqrt(10^2 + 10^2 + 2(10)(10) cos 60 degree) = sqrt(100 + 100 + 100) = 17.3$ N."),

    ("A force of 20 N acts at 30° above the horizontal. Its horizontal component is",
     ["10.0 N", "17.3 N", "20.0 N", "34.6 N"], 1,
     "$F_x = F cos theta = 20 cos 30 degree = 20 times 0.866 = 17.3$ N; the vertical component is $20 sin 30 degree = 10$ N."),

    ("A 5.0 kg block rests on a smooth plane inclined at 30° to the horizontal. The component of its weight down the plane is",
     ["25 N", "43 N", "50 N", "87 N"], 0,
     "$W sin theta = 50 sin 30 degree = 25$ N. The normal reaction is $W cos theta = 43$ N."),

    ("The product of a scalar and a vector is",
     ["always a scalar", "always a vector", "a vector only if the scalar is positive", "sometimes a scalar"], 1,
     "Multiplying a vector by a scalar changes its magnitude (and reverses it if the scalar is negative) but never removes its direction, so the product is a vector."),

    ("Which of the following is a *random* error?",
     ["a zero error in a micrometer", "a wrongly calibrated metre rule", "small variations in repeated readings", "using the wrong unit"], 2,
     "Random errors scatter about the true value and are reduced by taking a mean of repeated readings. The other three are systematic and repeat in the same direction."),

    ("A stopwatch reads 2.35 s where the true time is 2.40 s. The percentage error is about",
     ["0.05 %", "2 %", "5 %", "20 %"], 1,
     "Error $= 0.05 \/ 2.40 times 100 = 2.1$ %, quoted as 2 %."),

    ("The number 0.00340 has",
     ["two significant figures", "three significant figures", "four significant figures", "five significant figures"], 1,
     "Leading zeros are not significant; 3, 4 and the trailing 0 after a decimal are, so the count is three."),

    ("2.456 rounded to two decimal places is",
     ["2.45", "2.46", "2.4", "2.50"], 1,
     "The third decimal is 6, so round up: 2.46."),

    ("A body of mass 60 g occupies 20 cm³. Its density in SI units is",
     ["300 kg m⁻³", "1200 kg m⁻³", "3000 kg m⁻³", "30 000 kg m⁻³"], 2,
     "$rho = 60\/20 = 3.0$ g cm⁻³ $= 3.0 times 10^3$ kg m⁻³."),

    ("A quantity is measured as 12.0 ± 0.2 m. The percentage uncertainty is",
     ["0.2 %", "1.7 %", "2.0 %", "12 %"], 1,
     "$0.2 \/ 12.0 times 100 = 1.7$ %."),

    ("The dimensions of work are",
     ["$M L T^(-2)$", "$M L^2 T^(-2)$", "$M L^2 T^(-3)$", "$M L^(-1) T^(-2)$"], 1,
     "Work $=$ force $times$ distance $= (M L T^(-2))(L) = M L^2 T^(-2)$; power is that divided by $T$, so $M L^2 T^(-3)$."),

    ("Which pair contains two *base* quantities?",
     ["force and time", "mass and time", "velocity and mass", "energy and power"], 1,
     "Mass, length, time, current, temperature, amount of substance and luminous intensity are base; everything else is derived from them."),

    ("One micrometre is",
     ["$10^(-3)$ m", "$10^(-6)$ m", "$10^(-9)$ m", "$10^(6)$ m"], 1,
     "micro $= 10^(-6)$; a micrometre is a thousandth of a millimetre."),

    ("36 km h⁻¹ expressed in m s⁻¹ is",
     ["3.6", "10", "36", "100"], 1,
     "$36 times 1000 \/ 3600 = 10$ m s⁻¹."),

    ("A metre rule is graduated in millimetres. Its least count is",
     ["0.1 mm", "1 mm", "0.5 mm", "10 mm"], 1,
     "The smallest division is 1 mm, and the reading uncertainty is usually taken as half of it."),

    ("The internal diameter of a test tube is best found with",
     ["a metre rule", "the internal jaws of a vernier caliper", "a micrometer screw gauge", "a burette"], 1,
     "The micrometer cannot enter the tube, and a rule measures only the outside; the vernier's upper jaws are made for internal diameters."),

    ("A length is measured as 9.8 cm where the true value is 10.0 cm. The percentage error is",
     ["0.2 %", "2 %", "5 %", "20 %"], 1,
     "$0.2 \/ 10.0 times 100 = 2$ %."),

    ("Twenty oscillations of a pendulum take 40.0 s, timed with a stopwatch reading to 0.1 s. The uncertainty in one period is about",
     ["0.005 s", "0.05 s", "0.1 s", "1.0 s"], 0,
     "One period is 2.00 s; the 0.1 s uncertainty is spread over twenty oscillations, so it is $0.1\/20 = 0.005$ s."),

    ("Forces of 6 N and 8 N act at 60° to each other. Their resultant is",
     ["10.0 N", "12.2 N", "14.0 N", "18.4 N"], 1,
     "$R = sqrt(36 + 64 + 2(6)(8)(0.5)) = sqrt(148) = 12.2$ N."),

    ("A force of 50 N acts at 60° to the horizontal. Its horizontal component is",
     ["25 N", "43 N", "50 N", "87 N"], 0,
     "$50 cos 60 degree = 25$ N; the vertical component is $50 sin 60 degree = 43$ N."),

    ("A vector has two perpendicular components of equal magnitude. The angle it makes with either component is",
     ["30°", "45°", "60°", "90°"], 1,
     "Equal components mean $tan theta = 1$, so $theta = 45$°."),

    ("The unit N m⁻¹ belongs to",
     ["the spring constant", "the Young modulus", "pressure", "work"], 0,
     "A spring constant is force per extension: N m⁻¹. The Young modulus is N m⁻² and work is N m."),

    ("Using $v = u + a t$, the SI unit of $a$ must be",
     ["m s⁻¹", "m s⁻²", "m", "s⁻¹"], 1,
     "Every term in a physical equation carries the same unit: $v$ is m s⁻¹, so $a t$ must be too, and with $t$ in seconds $a$ is m s⁻²."),

    ("Which of the following is a derived unit?",
     ["kilogram", "second", "joule", "kelvin"], 2,
     "The joule is kg m² s⁻², built from base units; the kilogram, second and kelvin are base units."),

    ("A vernier caliper reads 4.12 cm but has a zero error of $-0.02$ cm. The correct reading is",
     ["4.10 cm", "4.12 cm", "4.14 cm", "4.24 cm"], 2,
     "A negative zero error is *added*: $4.12 + 0.02 = 4.14$ cm. The rule is the opposite of the one for a positive zero error."),

    ("A rectangular plate measures 4.0 cm by 5.0 cm. Its area, to the correct number of significant figures, is",
     ["20 cm²", "20.0 cm²", "2.0 × 10¹ cm²", "200 mm²"], 0,
     "Both sides are given to two significant figures, so the area is 20 cm² — quoting 20.0 cm² would claim a precision the measurement does not have."),
]
