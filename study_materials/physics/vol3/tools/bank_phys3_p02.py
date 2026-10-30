"""Chapter 2 paper bank — expansion of solids, liquids and gases."""

PAPER_2 = [
    ("The linear expansivity of a solid is",
     ["the increase in length per kelvin", "the fractional increase in length per kelvin", "the increase in area per kelvin", "the increase in volume per kelvin"], 1,
     "It is the *fractional* increase in length per kelvin, in K⁻¹ — a length divided by a length and by a temperature."),

    ("The superficial expansivity of a solid is",
     ["$alpha$", "$2 alpha$", "$3 alpha$", "$alpha^2$"], 1,
     "A surface grows in two directions, so its coefficient is twice the linear one."),

    ("The cubic expansivity of a solid is",
     ["$alpha$", "$2 alpha$", "$3 alpha$", "$6 alpha$"], 2,
     "A volume grows in three directions: $3 alpha$. Counting dimensions, not squaring or cubing the coefficient."),

    ("A brass rod 2.0 m long is heated through 80 K. Taking $alpha = 1.9 times 10^(-5)$ K⁻¹, the increase in length is",
     ["1.5 mm", "3.0 mm", "15 mm", "30 mm"], 1,
     "$Delta L = 1.9 times 10^(-5) times 2.0 times 80 = 3.04 times 10^(-3)$ m $approx 3.0$ mm."),

    ("A steel rail is 25 m long at 15 °C. Taking $alpha = 1.2 times 10^(-5)$ K⁻¹, how much does it lengthen at 55 °C?",
     ["6 mm", "12 mm", "24 mm", "48 mm"], 1,
     "$Delta L = 1.2 times 10^(-5) times 25 times 40 = 1.2 times 10^(-2)$ m = 12 mm."),

    ("A plate of area 500 cm² is heated through 40 K. If $alpha = 2.0 times 10^(-5)$ K⁻¹, the increase in area is",
     ["0.20 cm²", "0.40 cm²", "0.80 cm²", "4.0 cm²"], 2,
     "$Delta A = 2 alpha A_0 Delta theta = 2 times 2.0 times 10^(-5) times 500 times 40 = 0.80$ cm²."),

    ("A metal cube of side 5.0 cm is heated through 100 K. If $alpha = 3.0 times 10^(-5)$ K⁻¹, the increase in volume is",
     ["0.11 cm³", "0.38 cm³", "1.1 cm³", "3.4 cm³"], 2,
     "$V_0 = 125$ cm³, so $Delta V = 3 alpha V_0 Delta theta = 3 times 3.0 times 10^(-5) times 125 times 100 = 1.1$ cm³."),

    ("Gaps are left between railway rails because",
     ["the rails expand when heated", "the rails contract when heated", "the rails are easier to lift", "the gaps reduce noise"], 0,
     "A clamped rail with no room to expand buckles. The gap is sized from $alpha L Delta theta$ for the hottest day."),

    ("The unit of cubic expansivity is",
     ["m³ K⁻¹", "m K⁻¹", "K⁻¹", "m³"], 2,
     "Expansivity is always a fractional change per kelvin, so the unit is K⁻¹ whatever the dimension."),

    ("Water is densest at",
     ["0 °C", "4 °C", "10 °C", "100 °C"], 1,
     "The anomalous expansion makes 4 °C the density maximum."),

    ("Ice floats on water because",
     ["ice is denser than water", "ice is less dense than water", "ice is colder", "ice has a lower specific heat capacity"], 1,
     "Water expands as it freezes, so a given mass of ice occupies more volume than the water it came from."),

    ("A pond freezes from the top because",
     ["cold water is denser than warm water at every temperature", "below 4 °C water becomes less dense, so the coldest layer stays on top", "ice conducts heat well", "water at 0 °C is densest"], 1,
     "From 4 °C downwards the water becomes lighter as it cools, so the coldest water floats and freezes first."),

    ("A bottle filled with water at 0 °C and warmed to 4 °C",
     ["overflows", "shows a fall in level", "shows no change", "bursts"], 1,
     "Water contracts between 0 °C and 4 °C, so the level falls below the brim."),

    ("The real expansivity of a liquid is",
     ["less than the apparent expansivity", "equal to the apparent expansivity", "greater than the apparent expansivity", "unrelated to the container"], 2,
     "$gamma_\"real\" = gamma_\"app\" + 3 alpha_\"vessel\"$: the vessel grows too, so the stem under-reads."),

    ("A glass vessel has linear expansivity $8.0 times 10^(-6)$ K⁻¹. Its cubic expansivity is",
     ["$2.7 times 10^(-5)$ K⁻¹", "$8.0 times 10^(-6)$ K⁻¹", "$2.4 times 10^(-5)$ K⁻¹", "$6.4 times 10^(-5)$ K⁻¹"], 2,
     "$3 alpha = 2.4 times 10^(-5)$ K⁻¹."),

    ("A liquid in a glass vessel has an apparent expansivity of $1.5 times 10^(-4)$ K⁻¹. If $3 alpha$ for the glass is $2.7 times 10^(-5)$ K⁻¹, the real expansivity is",
     ["$1.2 times 10^(-4)$ K⁻¹", "$1.5 times 10^(-4)$ K⁻¹", "$1.8 times 10^(-4)$ K⁻¹", "$2.7 times 10^(-5)$ K⁻¹"], 2,
     "$gamma_\"real\" = 1.5 times 10^(-4) + 2.7 times 10^(-5) = 1.77 times 10^(-4)$ K⁻¹, about $1.8 times 10^(-4)$."),

    ("The level of a liquid in a flask is seen to fall at first as the flask is warmed. This is because",
     ["the liquid contracts on heating", "the glass warms and expands before the whole liquid does", "the liquid evaporates", "the thermometer expands"], 1,
     "The glass conducts heat to itself first, so the container grows before the bulk of the liquid is warm."),

    ("A bimetallic strip bends on heating because",
     ["the two metals have different expansivities", "the two metals have different masses", "one metal melts", "the strip is magnetic"], 0,
     "The metal with the larger expansivity becomes the longer, outer side of the curve."),

    ("In a bimetallic strip of brass and iron heated, the brass forms",
     ["the outer side of the curve", "the inner side of the curve", "neither side", "the same side as the iron"], 0,
     "Brass has the larger expansivity, so it must be longer — which means the outside of the bend."),

    ("A thermostat uses a bimetallic strip because the strip",
     ["melts at a fixed temperature", "bends by a predictable amount at a chosen temperature", "is a good conductor", "is cheap"], 1,
     "The curvature is a function of temperature only, so the strip can open or close a contact at a set point."),

    ("All gases at constant pressure expand by the same fraction of their volume per kelvin, equal to",
     ["1/100 K⁻¹", "1/273 K⁻¹", "1/373 K⁻¹", "1/2730 K⁻¹"], 1,
     "$1\/273$ K⁻¹ — the reciprocal of the kelvin offset, which is why every gas line meets the axis at −273 °C."),

    ("A gas occupies 250 cm³ at 27 °C. At constant pressure and 327 °C its volume is",
     ["125 cm³", "250 cm³", "500 cm³", "750 cm³"], 2,
     "300 K → 600 K, so the volume doubles at constant pressure: 500 cm³."),

    ("A gas at 0 °C has a volume of 100 cm³. At constant pressure and 273 °C the volume is",
     ["50 cm³", "100 cm³", "150 cm³", "200 cm³"], 3,
     "273 K → 546 K, so the volume doubles: 200 cm³."),

    ("The volume–temperature graph of a gas at constant pressure, plotted in °C, cuts the temperature axis at",
     ["0 °C", "−100 °C", "−273 °C", "273 °C"], 2,
     "The extrapolation reaches zero volume at −273 °C, which is the experimental route to absolute zero."),

    ("A metal lid stuck on a glass jar is loosened by pouring hot water on the lid because",
     ["the metal expands more than the glass", "the glass expands more than the metal", "the water lubricates the thread", "the lid contracts"], 0,
     "The metal's larger expansivity frees it from the glass."),

    ("Which of these has the largest expansion for the same rise in temperature?",
     ["a steel rod", "a brass rod", "a glass rod", "an iron rod of the same length"], 1,
     "Brass has the largest linear expansivity of the four, at about $1.9 times 10^(-5)$ K⁻¹."),

    ("A steel tape is correct at 20 °C. When used at 45 °C to measure 30 m, the tape reads",
     ["slightly more than the true length", "slightly less than the true length", "exactly the true length", "zero"], 0,
     "The tape has grown, so each division is longer than it should be and the measured length is too large. The error is $alpha L Delta theta$, about 9 mm."),

    ("A glass jar is heated strongly and then cooled quickly. It may crack because",
     ["the outside cools and contracts while the inside is still hot", "glass expands on cooling", "the glass absorbs water", "the jar is too thin"], 0,
     "The temperature gradient sets up different contractions in different layers, and the resulting stress cracks the glass."),

    ("A liquid thermometer with a narrow bore is preferred because",
     ["a narrow bore increases the range", "a narrow bore increases the sensitivity", "narrow bores are cheaper", "the liquid expands more in a narrow bore"], 1,
     "The same volume change moves the thread further in a narrow tube, so each degree is easier to read."),

    ("A concrete pavement is laid in sections with gaps because",
     ["concrete expands with temperature", "concrete shrinks permanently", "the gaps let water drain", "the sections are easier to make"], 0,
     "Like a rail, a pavement lengthens in the heat; without gaps the slabs crack or buckle."),

    ("Two rods, one of copper and one of steel, are the same length at 20 °C. At 120 °C",
     ["the copper rod is longer", "the steel rod is longer", "they are still equal", "the copper rod is shorter"], 0,
     "Copper has the larger expansivity (about $1.7 times 10^(-5)$ against steel's $1.2 times 10^(-5)$), so it lengthens more."),

    ("A liquid with a real expansivity equal to the cubic expansivity of a glass vessel would",
     ["overflow at once", "show no change of level in the stem", "freeze", "contract"], 1,
     "The apparent expansivity would be zero: the liquid's growth is exactly taken up by the vessel."),

    ("The density of a liquid changes with temperature because",
     ["its mass changes", "its volume changes while its mass stays the same", "its weight changes", "its specific heat changes"], 1,
     "$rho = m\/V$; expansion changes $V$ and leaves $m$ alone, so the density falls."),

    ("Which expansion is used to explain why hot-air balloons rise?",
     ["linear expansion of the fabric", "the expansion of the heated air making it less dense", "the expansion of the basket", "the anomalous expansion of water"], 1,
     "Heated air expands at constant pressure, so its density falls below that of the surrounding air and it is buoyed up."),

    ("A rod of length 4.0 m expands by 2.4 mm when heated through 50 K. Its linear expansivity is",
     ["$1.2 times 10^(-5)$ K⁻¹", "$2.4 times 10^(-5)$ K⁻¹", "$6.0 times 10^(-5)$ K⁻¹", "$1.2 times 10^(-4)$ K⁻¹"], 0,
     "$alpha = Delta L\/(L_0 Delta theta) = 2.4 times 10^(-3)\/(4.0 times 50) = 1.2 times 10^(-5)$ K⁻¹."),

    ("A gas at constant pressure is warmed from 27 °C to 127 °C. Its volume",
     ["falls by a third", "rises by a quarter", "rises by a third", "doubles"], 2,
     "300 K → 400 K, so the volume rises by 100/300 = a third."),

    ("The expansion of a solid on heating is best explained by",
     ["an increase in the number of atoms", "the increased amplitude of atomic vibration increasing the mean separation", "the atoms becoming heavier", "a change in the atomic charge"], 1,
     "The atoms vibrate about fixed positions; the vibration amplitude grows and the mean separation increases, so the solid lengthens."),

    ("Water at 4 °C is",
     ["the densest water there is", "less dense than ice", "the same density as at 0 °C", "solid"], 0,
     "4 °C is the temperature of maximum density — the turning point of the anomalous expansion."),

    ("A brass rod is 1.000 m long at 0 °C. Taking $alpha = 1.9 times 10^(-5)$ K⁻¹, its length at 100 °C is",
     ["0.9981 m", "1.0019 m", "1.019 m", "1.19 m"], 1,
     "$Delta L = 1.9 times 10^(-5) times 1.000 times 100 = 1.9 times 10^(-3)$ m, so the new length is 1.0019 m."),

    ("A copper rod and a steel rod of equal length are riveted together and heated. The pair bends with",
     ["copper on the outside", "steel on the outside", "no bend", "both straight"], 0,
     "Copper expands more than steel, so the copper side becomes the longer, outer arc of the curve."),
]
