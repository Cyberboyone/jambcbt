"""Chapter 5 paper bank — gas laws and the kinetic theory."""

PAPER_5 = [
    ("Boyle's law states that, for a fixed mass of gas at constant temperature,",
     ["pressure is proportional to volume", "pressure is inversely proportional to volume", "volume is proportional to temperature", "pressure is constant"], 1,
     "$p V = $ constant at constant temperature, so $p$ and $V$ vary inversely."),

    ("Charles' law states that, for a fixed mass of gas at constant pressure,",
     ["volume is proportional to absolute temperature", "volume is proportional to pressure", "pressure varies inversely with volume", "volume is constant"], 0,
     "$V \/ T = $ constant, with $T$ in kelvin — not degrees Celsius."),

    ("The pressure law states that, for a fixed mass of gas at constant volume,",
     ["pressure is proportional to absolute temperature", "pressure is proportional to volume", "pressure falls as temperature rises", "pressure is constant"], 0,
     "$p \/ T = $ constant provided $T$ is in kelvin."),

    ("A gas occupies 200 cm³ at 2.0 × 10⁵ Pa. At constant temperature, its volume at 4.0 × 10⁵ Pa is",
     ["50 cm³", "100 cm³", "400 cm³", "800 cm³"], 1,
     "$p_1 V_1 = p_2 V_2$ gives $V_2 = 2.0 times 10^5 times 200 \/ 4.0 times 10^5 = 100$ cm³."),

    ("A gas at 27 °C occupies 300 cm³ at constant pressure. Its volume at 127 °C is",
     ["about 400 cm³", "about 300 cm³", "about 1411 cm³", "about 200 cm³"], 0,
     "$V_2 = 300 times 400 \/ 300 = 400$ cm³ — kelvin throughout."),

    ("A gas at 27 °C and 1.0 × 10⁵ Pa is heated at constant volume to 327 °C. The new pressure is",
     ["about 1.2 × 10⁵ Pa", "about 2.0 × 10⁵ Pa", "about 1.0 × 10⁵ Pa", "about 1.2 × 10⁶ Pa"], 1,
     "$600 \/ 300 = 2$, so the pressure doubles."),

    ("Using degrees Celsius instead of kelvin in Charles' law will",
     ["give the right answer", "give a wrong answer", "make no difference at 0 °C", "only affect pressure"], 1,
     "The proportionalities hold on the absolute scale only, because the gas laws extrapolate to zero volume at 0 K, not 0 °C."),

    ("The temperature at which a gas would have zero volume at constant pressure, on the Celsius scale, is",
     ["0 °C", "−100 °C", "−273 °C", "273 °C"], 2,
     "The extrapolation meets the axis at −273 °C, which is 0 K."),

    ("The general gas equation for a fixed mass of gas is",
     ["$p V = n R T$", "$p_1 V_1 \/ T_1 = p_2 V_2 \/ T_2$", "$p V = $ constant", "$V \/ T = $ constant"], 1,
     "Combining the three laws gives $p V \/ T = $ constant for a fixed mass, hence the two-state form."),

    ("The ideal gas equation in terms of the number of moles is",
     ["$p V = n R T$", "$p V = m R T$", "$p V = n R \/ T$", "$p \/ V = n R T$"], 0,
     "$p V = n R T$, with $R = 8.31$ J mol⁻¹ K⁻¹ and $T$ in kelvin."),

    ("The value of the molar gas constant is",
     ["8.31 J K⁻¹", "8.31 J mol⁻¹ K⁻¹", "1.38 × 10⁻²³ J K⁻¹", "6.02 × 10²³ mol⁻¹"], 1,
     "8.31 J mol⁻¹ K⁻¹; the others are Boltzmann's constant and Avogadro's number."),

    ("Boltzmann's constant is equal to",
     ["$R N_A$", "$R \/ N_A$", "$N_A \/ R$", "$R T$"], 1,
     "The gas constant per molecule, $k = R \/ N_A = 1.38 times 10^(-23)$ J K⁻¹."),

    ("2.0 mol of a gas occupy 24.0 dm³ at 27 °C. Taking $R = 8.31$ J mol⁻¹ K⁻¹, the pressure is about",
     ["2.1 × 10⁴ Pa", "2.1 × 10⁵ Pa", "1.0 × 10⁵ Pa", "2.1 × 10⁶ Pa"], 1,
     "$p = n R T \/ V = 2.0 times 8.31 times 300 \/ 0.0240 = 2.08 times 10^5$ Pa."),

    ("The volume occupied by 1.0 mol of an ideal gas at s.t.p. is about",
     ["2.24 dm³", "22.4 dm³", "224 dm³", "24.0 dm³"], 1,
     "22.4 dm³ at 273 K and 1.01 × 10⁵ Pa."),

    ("The number of molecules in 1.0 cm³ of a gas at s.t.p. is about",
     ["2.7 × 10¹⁹", "2.7 × 10²²", "6.0 × 10²³", "2.7 × 10²⁵"], 0,
     "22.4 dm³ holds 6.02 × 10²³ molecules, so 1.0 cm³ holds $6.02 times 10^23 \/ 22\,400 approx 2.7 times 10^19$."),

    ("The pressure of a gas on its container walls is due to",
     ["the weight of the gas", "the rate of change of momentum of molecules striking the walls", "attraction between molecules", "the temperature of the walls"], 1,
     "Each impact reverses a molecule's momentum; the total rate of change of momentum, per unit area, is the pressure."),

    ("The kinetic theory result for pressure is",
     ["$p V = 1\/3 N m c^2$", "$p V = N m c^2$", "$p V = 3 N m c^2$", "$p V = 1\/2 N m c^2$"], 0,
     "For $N$ molecules each of mass $m$ and mean square speed $c^2$, $p V = 1\/3 N m c^2$."),

    ("The mean kinetic energy of a gas molecule is",
     ["$3\/2 k T$", "$1\/2 k T$", "$k T$", "$3 k T$"], 0,
     "Translational energy averaged over the three directions gives $1\/2 m c^2 = 3\/2 k T$."),

    ("The mean kinetic energy of gas molecules depends on",
     ["the nature of the gas", "temperature only", "pressure only", "volume only"], 1,
     "At a given temperature all gases share the same mean translational kinetic energy, whatever their masses."),

    ("The root-mean-square speed of oxygen molecules at 300 K is about",
     ["48 m s⁻¹", "484 m s⁻¹", "1500 m s⁻¹", "4.8 × 10⁵ m s⁻¹"], 1,
     '$c_"rms" = sqrt(3 R T \/ M) = sqrt(3 times 8.31 times 300 \/ 0.032) approx 484$ m s⁻¹.'),

    ("At the same temperature, hydrogen molecules move faster than oxygen molecules because hydrogen",
     ["has a smaller molar mass", "has a larger molar mass", "is at a higher pressure", "has larger molecules"], 0,
     '$c_"rms" prop 1 \/ sqrt(M)$, so the lighter gas is faster at the same temperature.'),

    ("If the absolute temperature of a gas is quadrupled, the r.m.s. speed of its molecules",
     ["doubles", "quadruples", "halves", "stays the same"], 0,
     '$c_"rms" prop sqrt(T)$, and $sqrt(4) = 2$.'),

    ("The mean kinetic energy of a molecule at 27 °C is about",
     ["6.2 × 10⁻²¹ J", "1.2 × 10⁻²⁰ J", "4.1 × 10⁻²¹ J", "6.2 × 10⁻²³ J"], 0,
     "$3\/2 k T = 1.5 times 1.38 times 10^(-23) times 300 = 6.21 times 10^(-21)$ J."),

    ("The internal energy of an ideal gas consists of",
     ["its potential energy only", "the kinetic energy of its molecules", "the chemical energy of its bonds", "the energy of its container"], 1,
     "Ideal-gas molecules have no potential energy of interaction, so the internal energy is purely kinetic."),

    ("The internal energy of a fixed mass of ideal gas depends on",
     ["pressure and volume separately", "temperature only", "volume only", "the shape of the container"], 1,
     "Since the kinetic energy follows $T$, the internal energy of an ideal gas is a function of temperature alone."),

    ("Avogadro's law states that equal volumes of all gases at the same temperature and pressure contain",
     ["equal masses", "equal numbers of molecules", "equal numbers of atoms", "equal densities"], 1,
     "It follows directly from $p V = n R T$: the number of moles depends on $p$, $V$ and $T$ only."),

    ("A gas is compressed slowly at constant temperature. The molecules",
     ["move faster", "move with unchanged average speed but strike the walls more often", "become larger", "lose energy"], 1,
     "Constant temperature means constant mean speed; the pressure rises because the same molecules hit a smaller wall more often."),

    ("A real gas deviates most from ideal behaviour at",
     ["low pressure and high temperature", "high pressure and low temperature", "low pressure and low temperature", "high pressure and high temperature"], 1,
     "There the molecules are close together and moving slowly, so their own volume and their attractions matter."),

    ("The assumption that gas molecules have negligible volume fails when",
     ["the pressure is very low", "the gas is very dense", "the temperature is very high", "the gas is monatomic"], 1,
     "In a dense gas the molecules' own volume is no longer small compared with the container."),

    ("An ideal gas is one in which",
     ["intermolecular forces are zero and the molecules have negligible volume", "intermolecular forces are very strong", "the molecules are at rest", "the molecules all move at the same speed"], 0,
     "Those two assumptions turn the kinetic model into the simple law $p V = n R T$."),

    ("Smoke particles in air move at random. This is evidence for",
     ["the kinetic theory of matter", "the wave nature of light", "the existence of a vacuum", "Boyle's law only"], 0,
     "Brownian motion shows that invisible particles are in continuous random motion and collide with the smoke."),

    ("A fixed mass of gas has pressure 1.0 × 10⁵ Pa, volume 300 cm³ and temperature 300 K. Its pressure when the volume is 200 cm³ and the temperature is 400 K is",
     ["1.5 × 10⁵ Pa", "2.0 × 10⁵ Pa", "1.0 × 10⁵ Pa", "3.0 × 10⁵ Pa"], 1,
     "$p_2 = p_1 (V_1 \/ V_2)(T_2 \/ T_1) = 1.0 times 10^5 times 1.5 times 1.333 approx 2.0 times 10^5$ Pa."),

    ("The density of a gas at constant pressure",
     ["increases as the temperature rises", "decreases as the temperature rises", "does not change with temperature", "is independent of pressure"], 1,
     "At constant pressure the volume rises with temperature, so the same mass fills more space and the density falls."),

    ("Two gases at the same temperature and pressure are mixed without reaction. The volume of the mixture is",
     ["the sum of the volumes", "the difference of the volumes", "the larger volume", "half the sum"], 0,
     "By Avogadro's law the number of moles adds, and at fixed $p$ and $T$ the volume follows the number of moles."),

    ("The pressure of a gas is doubled at constant volume while the temperature is held constant. This is impossible because",
     ["the gas would condense", "at fixed $V$ and $T$ the pressure is fixed by $p V = n R T$", "the container would burst", "the molecules would slow down"], 1,
     "For a fixed mass at fixed volume and temperature, the pressure has a single value; only adding more gas could raise it."),

    ("A balloon rises through the atmosphere, where both the pressure and the temperature fall. Its volume",
     ["must fall", "must rise", "could rise or fall, depending on which change dominates", "stays the same"], 2,
     "$V prop T \/ p$: the falling pressure tends to expand it and the falling temperature tends to shrink it, so the outcome depends on the rates."),

    ("The pressure exerted by a gas in a sealed rigid container rises when the container is warmed because the molecules",
     ["become heavier", "strike the walls harder and more often", "attract each other more", "occupy more volume"], 1,
     "Faster molecules deliver more momentum per impact and arrive more frequently, both of which raise the pressure."),

    ("Which graph of $p$ against $V$ for a fixed mass of gas at constant temperature is correct?",
     ["a straight line through the origin", "a straight line with a negative intercept", "a rectangular hyperbola", "a parabola through the origin"], 2,
     "$p V = $ constant is the equation of a rectangular hyperbola."),

    ("A gas cylinder contains 4.0 kg of gas at 2.0 × 10⁵ Pa. Gas is released until 1.0 kg remains, at constant temperature. The final pressure is",
     ["5.0 × 10⁴ Pa", "1.0 × 10⁵ Pa", "4.0 × 10⁵ Pa", "8.0 × 10⁵ Pa"], 0,
     "At fixed $V$ and $T$, $p prop n$: a quarter of the gas gives a quarter of the pressure."),

    ("A fixed mass of gas is taken from 100 cm³ at 2.0 × 10⁵ Pa through a process to 250 cm³ at 1.2 × 10⁵ Pa. Its temperature",
     ["has risen", "has fallen", "is unchanged", "cannot be related to these values"], 0,
     "$p V$ goes from $2.0 times 10^7$ to $3.0 times 10^7$ in the same units, so $T prop p V$ has risen by 50 %."),
]
