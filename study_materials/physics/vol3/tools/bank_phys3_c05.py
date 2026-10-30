"""Chapter 5 drill bank — the gas laws and the kinetic theory."""

DRILL_5 = [
    ("Boyle's law states that for a fixed mass of gas at constant temperature",
     ["pV is constant", "V/T is constant", "p/T is constant", "p + V is constant"], 0,
     "Boyle: at constant temperature, $p V$ is constant. Charles holds pressure and gives $V\/T$ constant; the pressure law holds volume and gives $p\/T$ constant."),

    ("Charles' law states that for a fixed mass of gas at constant pressure",
     ["pV is constant", "V/T is constant", "p/T is constant", "pV/T is constant"], 1,
     "At constant pressure the volume is directly proportional to the absolute temperature: $V\/T$ is constant."),

    ("The pressure law for a fixed mass of gas at constant volume states that",
     ["pV is constant", "V/T is constant", "p/T is constant", "pT is constant"], 2,
     "At constant volume the pressure is directly proportional to the absolute temperature: $p\/T$ is constant."),

    ("A gas occupies 200 cm³ at $1.0 times 10^5$ Pa. At the same temperature, its volume at $4.0 times 10^5$ Pa is",
     ["25 cm³", "50 cm³", "100 cm³", "800 cm³"], 1,
     "Boyle's law: quadrupling the pressure quarters the volume, so $200\/4 = 50$ cm³."),

    ("A gas at 27 °C is heated at constant volume to 327 °C. Its pressure becomes",
     ["half", "the same", "twice", "four times"], 2,
     "27 °C = 300 K and 327 °C = 600 K. At constant volume $p prop T$, so doubling the kelvin temperature doubles the pressure."),

    ("A gas at 27 °C is heated at constant pressure to 127 °C. Its volume becomes",
     ["one third of its original value", "the same", "4/3 of its original value", "4 times its original value"], 2,
     "300 K → 400 K, so at constant pressure the volume rises in the ratio 400/300 = 4/3."),

    ("Which quantity must always be in kelvin in the gas laws?",
     ["the pressure", "the volume", "the temperature", "the mass"], 2,
     "Only the temperature needs converting, because the gas laws are proportional to *absolute* temperature. Pressure and volume may be left in any consistent unit."),

    ("The absolute temperature of a gas is doubled at constant volume. The average kinetic energy of its molecules",
     ["halves", "stays the same", "doubles", "quadruples"], 2,
     "The average kinetic energy is proportional to the kelvin temperature, $1\/2 m c^2 = 3\/2 k T$, so doubling $T$ doubles the energy."),

    ("The rms speed of the molecules of a gas at constant volume is doubled. The pressure becomes",
     ["half", "the same", "twice", "four times"], 3,
     "$p = 1\/3 rho c^2$ at constant volume, so doubling $c$ multiplies the pressure by $2^2 = 4$."),

    ("A gas has a pressure of $1.0 times 10^5$ Pa, a volume of 200 cm³ and a temperature of 27 °C. It is compressed to 100 cm³ while being heated to 127 °C. The new pressure is",
     ["$1.3 times 10^5$ Pa", "$2.0 times 10^5$ Pa", "$2.7 times 10^5$ Pa", "$4.0 times 10^5$ Pa"], 2,
     "$p_2 = p_1 (V_1\/V_2)(T_2\/T_1) = 1.0 times 10^5 times 2 times (400\/300) = 2.7 times 10^5$ Pa."),

    ("The general gas equation for a fixed mass of gas is",
     ["$p_1 V_1 T_1 = p_2 V_2 T_2$", "$(p_1 V_1)\/T_1 = (p_2 V_2)\/T_2$", "$p_1 T_1 \/ V_1 = p_2 T_2 \/ V_2$", "$p_1 V_1 = p_2 V_2$"], 1,
     "$p V \/ T$ is constant for a fixed mass of gas. The other forms invert one of the quantities and give wrong answers."),

    ("The ideal gas equation is",
     ["$p V = n R T$", "$p V = m R T$", "$p V = n R \/ T$", "$p\/V = n R T$"], 0,
     "$p V = n R T$, with $n$ in moles and $T$ in kelvin. The symbol $m$ would be mass, and $R$ is the molar gas constant, not a per-kilogram constant."),

    ("The value of the molar gas constant is",
     ["8.31 J mol⁻¹ K⁻¹", "0.082 J mol⁻¹ K⁻¹", "1.38 J mol⁻¹ K⁻¹", "6.02 J mol⁻¹ K⁻¹"], 0,
     "$R = 8.31$ J mol⁻¹ K⁻¹. The 1.38 × 10⁻²³ figure is Boltzmann's constant $k$, and 6.02 × 10²³ is Avogadro's number."),

    ("One mole of any gas at s.t.p. occupies",
     ["2.24 dm³", "22.4 dm³", "224 dm³", "22.4 m³"], 1,
     "22.4 dm³ = 0.0224 m³ at 273 K and $1.01 times 10^5$ Pa. It is the same for every gas, which is the point."),

    ("0.50 mol of a gas at 27 °C and $1.0 times 10^5$ Pa occupies",
     ["6.2 dm³", "12.5 dm³", "22.4 dm³", "25 dm³"], 1,
     "$V = n R T \/ p = (0.50 times 8.31 times 300)\/(1.0 times 10^5) = 1.25 times 10^(-2)$ m³ = 12.5 dm³."),

    ("The pressure of a fixed mass of gas is halved at constant temperature. Its volume",
     ["halves", "stays the same", "doubles", "quadruples"], 2,
     "Boyle's law: $p V$ is constant, so halving $p$ doubles $V$."),

    ("Which of these is *not* an assumption of the kinetic theory of gases?",
     ["the molecules are in constant random motion", "collisions between molecules are elastic", "the molecules attract one another strongly at all distances", "the volume of the molecules is negligible compared with the container"], 2,
     "The kinetic theory assumes *no* forces between molecules except during a collision. Strong attraction would make the gas behave as a liquid, not as an ideal gas."),

    ("In the kinetic theory, gas pressure is caused by",
     ["the weight of the molecules", "molecules colliding with the walls of the container", "the attraction between molecules", "the molecules expanding when heated"], 1,
     "Each collision reverses the momentum of a molecule, and the rate of change of momentum over the wall is the force — and force per unit area is the pressure."),

    ("The result of the kinetic theory for a gas is",
     ["$p V = N m c^2$", "$p V = 1/3 N m c^2$", "$p V = 1/2 N m c^2$", "$p V = 3 N m c^2$"], 1,
     "$p V = 1/3 N m c^2$, where $c^2$ is the mean square speed. The factor 1/3 comes from the three dimensions."),

    ("The average kinetic energy of a molecule of an ideal gas depends on",
     ["its mass only", "the kelvin temperature only", "the pressure only", "its mass and the temperature"], 1,
     "$1\/2 m c^2 = 3\/2 k T$. At a given temperature all gases have the same average kinetic energy, whatever their molecules weigh."),

    ("At the same temperature, hydrogen molecules move faster than oxygen molecules because",
     ["hydrogen is at a higher pressure", "hydrogen molecules have the smaller mass", "hydrogen molecules have more energy", "oxygen is a liquid"], 1,
     "The average kinetic *energy* is the same for both. Since $1\/2 m c^2$ is fixed, the lighter molecule must have the larger speed."),

    ("The root-mean-square speed of oxygen molecules at 300 K, taking $M = 0.032$ kg mol⁻¹, is about",
     ["48 m s⁻¹", "190 m s⁻¹", "480 m s⁻¹", "1900 m s⁻¹"], 2,
     "$c = sqrt(3 R T \/ M) = sqrt(3 times 8.31 times 300 \/ 0.032) = sqrt(2.34 times 10^5) approx 484$ m s⁻¹."),

    ("The average kinetic energy of a molecule at 300 K is about",
     ["$6.2 times 10^(-21)$ J", "$6.2 times 10^(-23)$ J", "$4.1 times 10^(-21)$ J", "$1.4 times 10^(-20)$ J"], 0,
     "$3\/2 k T = 1.5 times 1.38 times 10^(-23) times 300 = 6.2 times 10^(-21)$ J."),

    ("Brownian motion is best described as",
     ["the steady drift of smoke in a draught", "the random zig-zag motion of small particles suspended in a fluid", "the expansion of a gas when heated", "the diffusion of one gas through another"], 1,
     "It is random and ceaseless, and it is caused by unequal molecular impacts on the particle. It is the best direct evidence of molecular motion."),

    ("Brownian motion provides evidence that",
     ["molecules are at rest", "molecules of a fluid are in constant random motion", "gases are lighter than liquids", "heat is a form of energy"], 1,
     "The particle is jostled because the fluid molecules around it are moving randomly and hitting it unevenly."),

    ("Diffusion is fastest in",
     ["solids", "liquids", "gases", "the same in all three"], 2,
     "Gas molecules have the most freedom of movement and the largest spaces between them, so they mix fastest."),

    ("A gas diffuses more quickly through another when",
     ["it is heavier", "it is lighter", "it is colder", "its pressure is higher only"], 1,
     "At the same temperature the lighter molecules have the greater speed, so they spread faster."),

    ("The rate of diffusion of a gas increases with temperature because",
     ["the molecules become lighter", "the molecules move faster", "the container expands", "the pressure falls"], 1,
     "Higher temperature means higher average kinetic energy, hence higher speed, hence faster spreading."),

    ("A gas is enclosed in a cylinder with a movable piston. The piston is pushed in slowly at constant temperature. The pressure of the gas",
     ["falls", "rises", "stays the same", "becomes zero"], 1,
     "Boyle's law: reducing the volume at constant temperature raises the pressure as $p V$ stays constant."),

    ("A sealed rigid container of gas is warmed. Which quantity changes?",
     ["the volume", "the mass", "the pressure", "the number of molecules"], 2,
     "The container is rigid, so the volume is fixed and the mass cannot change. The pressure rises with the kelvin temperature."),

    ("At 0 °C a gas has a volume of 273 cm³. At constant pressure and 273 °C its volume is",
     ["136.5 cm³", "273 cm³", "546 cm³", "819 cm³"], 2,
     "0 °C = 273 K and 273 °C = 546 K, so the kelvin temperature doubles and the volume doubles: 546 cm³."),

    ("Which graph of $p$ against $V$ for a gas at constant temperature is a straight line?",
     ["$p$ against $V$", "$p$ against $1\/V$", "$p$ against $V^2$", "$p$ against $1\/V^2$"], 1,
     "$p$ times $V$ is constant, so plotting $p$ against $1\/V$ gives a straight line through the origin. The $p$–$V$ graph is a hyperbola."),

    ("The kelvin temperature of a gas is a measure of",
     ["the total kinetic energy of all its molecules", "the average kinetic energy of its molecules", "the average speed of its molecules", "the volume of its molecules"], 1,
     "It is the *average* kinetic energy per molecule. The total kinetic energy depends on how many molecules there are as well."),

    ("A real gas behaves most like an ideal gas at",
     ["low temperature and high pressure", "high temperature and low pressure", "low temperature and low pressure", "high temperature and high pressure"], 1,
     "High temperature and low pressure keep the molecules far apart and moving fast, which is exactly the ideal model's assumption."),

    ("Two gases are at the same temperature and pressure. Equal volumes contain",
     ["equal masses", "equal numbers of molecules", "equal numbers of atoms always", "equal densities"], 1,
     "Avogadro's law: equal volumes of gas at the same temperature and pressure contain equal numbers of molecules. Their masses differ because their molecules differ."),

    ("A gas at $2.0 times 10^5$ Pa and 300 K occupies 0.10 m³. Its volume at $1.0 times 10^5$ Pa and 400 K is",
     ["0.067 m³", "0.15 m³", "0.27 m³", "0.60 m³"], 2,
     "$V_2 = V_1 (p_1\/p_2)(T_2\/T_1) = 0.10 times 2 times (400\/300) = 0.27$ m³."),

    ("The pressure of a gas in a rigid container falls when it is cooled because",
     ["the molecules become smaller", "the molecules hit the walls less often and with less momentum", "the number of molecules falls", "the container contracts"], 1,
     "Cooling slows the molecules, so each collision transfers less momentum and collisions are less frequent. The pressure falls; the number of molecules is unchanged."),

    ("The constant $k$ in $1\/2 m c^2 = 3\/2 k T$ is",
     ["the molar gas constant", "Boltzmann's constant", "Avogadro's number", "the spring constant"], 1,
     "$k = 1.38 times 10^(-23)$ J K⁻¹ is Boltzmann's constant, the gas constant per molecule. $R = N_A k$."),

    ("If the temperature of a gas is raised from 300 K to 600 K at constant volume, the average speed of its molecules changes by a factor of",
     ["1.4", "2", "4", "16"], 0,
     "The average kinetic energy doubles, so the speed, which goes as the square root of the energy, rises by $sqrt(2) approx 1.41$."),

    ("The pressure of a gas is doubled at constant volume and the volume is then doubled at constant pressure. The final temperature, compared with the original, is",
     ["one quarter", "one half", "twice", "four times"], 3,
     "$p\/T$ constant doubles $T$ when $p$ doubles (300 K → 600 K); then $V\/T$ constant doubles it again when $V$ doubles (600 K → 1200 K). The final temperature is four times the original."),
]
