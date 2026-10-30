"""Mock-paper bank for Chapter 1 — measurement, units, dimensions, vectors.

These items never appear in the end-of-chapter drill; `tools/papers_phys1.py`
deals them into the two mock papers, the rapid-fire appendix and the master bank.
"""

PAPER_1 = [
    ("Which of the following is a fundamental quantity?",
     ["Area", "Force", "Length", "Velocity"], 2,
     "Mass, length, time, current, temperature, amount of substance and luminous intensity are the base quantities; area and force are derived from them."),

    ("The SI unit of electric current is the",
     ["coulomb", "ampere", "volt", "watt"], 1,
     "The ampere is one of the seven base units; the coulomb is a derived unit (A s)."),

    ("The dimensional formula of force is",
     ["$M L T^(-1)$", "$M L T^(-2)$", "$M L^2 T^(-2)$", "$M L^(-1) T^(-2)$"], 1,
     "$F = m a$ gives $M L T^(-2)$; multiply by a length and you have work, by a time and you have impulse."),

    ("The dimensional formula of work is",
     ["$M L T^(-2)$", "$M L^2 T^(-2)$", "$M L^2 T^(-3)$", "$M L^2 T^(-1)$"], 1,
     "Work is force times distance: $M L T^(-2) times L = M L^2 T^(-2)$, the same as energy."),

    ("Which pair of quantities has the same dimensions?",
     ["Work and power", "Work and energy", "Force and momentum", "Energy and power"], 1,
     "Work and energy are both $M L^2 T^(-2)$ — they are measured in the same unit, the joule."),

    ("A distance of 5.0 km expressed in metres is",
     ["5.0 m", "50 m", "500 m", "5000 m"], 3,
     "One kilometre is 1000 m, so $5.0 times 1000 = 5000$ m."),

    ("A speed of 72 km h⁻¹ expressed in m s⁻¹ is",
     ["7.2", "20", "26", "72"], 1,
     "Divide by 3.6: $72 \/ 3.6 = 20$ m s⁻¹."),

    ("A length of 0.05 m expressed in millimetres is",
     ["0.5 mm", "5 mm", "50 mm", "500 mm"], 2,
     "One metre is 1000 mm, so $0.05 times 1000 = 50$ mm."),

    ("The unit of density in base SI units is",
     ["g cm⁻³", "kg m⁻³", "kg m³", "N m⁻³"], 1,
     "Density is mass divided by volume, and the base units are the kilogram and the metre."),

    ("The number of significant figures in 0.00450 is",
     ["2", "3", "4", "5"], 1,
     "The leading zeros are not significant; the 4, the 5 and the trailing 0 are — three figures."),

    ("The instrument best suited to measuring the internal diameter of a test tube is the",
     ["metre rule", "vernier callipers", "micrometer screw gauge", "measuring tape"], 1,
     "The vernier callipers has internal jaws and reads to 0.1 mm; a micrometer is for thin wire, a rule cannot enter the tube."),

    ("A vernier scale has 10 divisions equal in length to 9 mm on the main scale. Its least count is",
     ["0.01 mm", "0.1 mm", "1 mm", "0.05 mm"], 1,
     "Least count $= 1$ mm $-$ 0.9 mm $= 0.1$ mm."),

    ("A micrometer screw gauge has a main-scale reading of 2.5 mm and a thimble reading of 34 divisions. Taking the least count as 0.01 mm, the diameter is",
     ["2.34 mm", "2.53 mm", "2.84 mm", "3.40 mm"], 2,
     "$2.5 + 34 times 0.01 = 2.84$ mm."),

    ("A micrometer has a zero error of $+0.03$ mm. A wire measures 1.28 mm on it. The true diameter is",
     ["1.25 mm", "1.28 mm", "1.31 mm", "0.03 mm"], 0,
     "A positive zero error is subtracted: $1.28 - 0.03 = 1.25$ mm."),

    ("A length is quoted as $(25.0 plus or minus 0.1)$ cm. The percentage error is",
     ["0.1 %", "0.4 %", "2.5 %", "4.0 %"], 1,
     "$(0.1 \/ 25.0) times 100 = 0.4$ %."),

    ("Which of the following is a scalar quantity?",
     ["Velocity", "Displacement", "Force", "Mass"], 3,
     "Mass has magnitude only; velocity, displacement and force all have a direction and obey the parallelogram law."),

    ("Two forces of 3 N and 4 N act at right angles to each other. Their resultant is",
     ["1 N", "5 N", "7 N", "25 N"], 1,
     "$R = sqrt(3^2 + 4^2) = 5$ N, because perpendicular components combine by Pythagoras."),

    ("Two forces of 10 N each act at 60° to each other. Their resultant is about",
     ["10 N", "17.3 N", "20 N", "200 N"], 1,
     "For two equal forces the resultant lies along the bisector: $R = 2 times 10 cos 30$° $= 17.3$ N."),

    ("A force of 10 N acts at 30° above the horizontal. Its vertical component is",
     ["5.0 N", "8.7 N", "10 N", "20 N"], 0,
     "$F_y = F sin theta = 10 sin 30$° $= 5.0$ N."),

    ("A velocity of 20 m s⁻¹ is directed 60° above the horizontal. Its horizontal component is",
     ["10 m s⁻¹", "17.3 m s⁻¹", "20 m s⁻¹", "40 m s⁻¹"], 0,
     "$v_x = v cos theta = 20 cos 60$° $= 10$ m s⁻¹."),

    ("A boy walks 3 km due east and then 4 km due north. His displacement from the start is",
     ["1 km", "5 km", "7 km", "12 km"], 1,
     "The two legs are perpendicular, so $sqrt(3^2 + 4^2) = 5$ km — not the 7 km he actually walked."),

    ("The prefix used for $10^(-9)$ is",
     ["micro", "nano", "pico", "milli"], 1,
     "nano $= 10^(-9)$; micro is $10^(-6)$, pico $10^(-12)$, milli $10^(-3)$."),

    ("A mass of $2.5 times 10^3$ g expressed in kilograms is",
     ["0.25 kg", "2.5 kg", "25 kg", "250 kg"], 1,
     "$2.5 times 10^3$ g $= 2500$ g $= 2.5$ kg."),

    ("The unit of pressure expressed in base SI units is",
     ["kg m s⁻²", "kg m⁻¹ s⁻²", "kg m⁻³ s⁻²", "N m²"], 1,
     "$p = F\/A$, so kg m s⁻² divided by m² gives kg m⁻¹ s⁻² — the pascal."),

    ("The dimensions of impulse are",
     ["$M L T^(-1)$", "$M L T^(-2)$", "$M L^2 T^(-2)$", "$M L^(-1) T^(-1)$"], 0,
     "Impulse is force times time, the same as momentum: $M L T^(-1)$."),

    ("The dimensions of power are",
     ["$M L^2 T^(-2)$", "$M L^2 T^(-3)$", "$M L T^(-3)$", "$M L^2 T^(-1)$"], 1,
     "Power is energy per time: $M L^2 T^(-2)$ divided by $T$ gives $M L^2 T^(-3)$."),

    ("A quantity has the unit kg m² s⁻³. It is a",
     ["force", "energy", "power", "pressure"], 2,
     "kg m² s⁻³ is the watt: energy (kg m² s⁻²) per second."),

    ("Random errors in a measurement are best reduced by",
     ["using a better instrument", "taking many readings and averaging", "correcting the zero error", "reading the scale more carefully"], 1,
     "Random errors scatter either side of the true value, so the average of many readings is closer than any single one."),

    ("A systematic error is caused by",
     ["unsteady hands", "a zero error in the instrument", "rounding the last figure", "a change of temperature during the readings"], 1,
     "A systematic error shifts every reading the same way, which is why a calibration check reveals it."),

    ("The area of a circle of radius 2.0 cm is about ($pi = 3.14$)",
     ["6.3 cm²", "12.6 cm²", "25 cm²", "50 cm²"], 1,
     "$A = pi r^2 = 3.14 times 4.0 = 12.6$ cm²."),

    ("The volume of a cube of side 0.020 m is",
     ["$8.0 times 10^(-6)$ m³", "$8.0 times 10^(-3)$ m³", "$2.0 times 10^(-4)$ m³", "$4.0 times 10^(-4)$ m³"], 0,
     "$V = (0.020)^3 = 8.0 times 10^(-6)$ m³."),

    ("A density of 800 kg m⁻³ expressed in g cm⁻³ is",
     ["0.080", "0.80", "8.0", "800"], 1,
     "Divide by 1000: $800$ kg m⁻³ $= 0.80$ g cm⁻³."),

    ("One hour expressed in seconds is",
     ["60", "600", "3600", "36 000"], 2,
     "$60 times 60 = 3600$ s."),

    ("Two lengths are $a = (3.0 plus or minus 0.1)$ cm and $b = (4.0 plus or minus 0.2)$ cm. Their sum is",
     ["$(7.0 plus or minus 0.1)$ cm", "$(7.0 plus or minus 0.2)$ cm", "$(7.0 plus or minus 0.3)$ cm", "$(7.0 plus or minus 0.4)$ cm"], 2,
     "For a sum the absolute errors add: $0.1 + 0.2 = 0.3$ cm."),

    ("Which of the following quantities is dimensionless?",
     ["Strain", "Stress", "Force", "Momentum"], 0,
     "Strain is an extension divided by a length, so the units cancel."),

    ("Two forces of 5 N each act at 120° to each other. Their resultant is",
     ["0", "5 N", "8.7 N", "10 N"], 1,
     "For equal forces $R = 2 F cos 60$° $= 2 times 5 times 0.5 = 5$ N — the resultant bisects the angle between them."),

    ("The number 0.000 42 written in standard form is",
     ["$4.2 times 10^(-3)$", "$4.2 times 10^(-4)$", "$42 times 10^(-5)$", "$4.2 times 10^4$"], 1,
     "The decimal point moves four places right, so the index is $-4$."),

    ("A scalar quantity is one that has",
     ["magnitude only", "direction only", "magnitude and direction", "neither magnitude nor direction"], 0,
     "That is the definition; a vector needs both, and it must obey the parallelogram law of addition."),

    ("The thickness of a sheet of paper is measured most accurately with a",
     ["metre rule", "vernier callipers", "micrometer screw gauge", "measuring cylinder"], 2,
     "The micrometer reads to 0.01 mm, which is the precision a few tenths of a millimetre demands."),

    ("The measurement 5.00 cm has",
     ["1 significant figure", "2 significant figures", "3 significant figures", "5 significant figures"], 2,
     "The trailing zeros after the decimal point are significant, so there are three."),
]
