"""Chapter 5 drill bank — atomic physics and the photoelectric effect."""

DRILL_5 = [
    ("The charge on an electron is",
     ["1.6 × 10⁻¹⁹ C", "1.6 × 10⁻²⁷ C", "9.1 × 10⁻³¹ C", "6.6 × 10⁻³⁴ C"], 0,
     "The electronic charge is $1.6 times 10^(-19)$ C, and every charge in nature is a whole multiple of it."),

    ("The mass of an electron is about",
     ["9.1 × 10⁻³¹ kg", "1.6 × 10⁻¹⁹ kg", "1.7 × 10⁻²⁷ kg", "6.6 × 10⁻³⁴ kg"], 0,
     "The electron mass is $9.1 times 10^(-31)$ kg, about $1\/1836$ of the mass of a hydrogen atom. $1.7 times 10^(-27)$ kg is the mass of a proton."),

    ("Rutherford's alpha-particle scattering experiment showed that",
     ["the atom is a solid sphere", "most of the atom is empty space with a small dense nucleus", "electrons orbit in shells", "the atom has no charge"], 1,
     "Most alpha particles passed straight through and a few were deflected through large angles, which can only happen if almost all the mass and positive charge sit in a tiny nucleus."),

    ("The nucleus of an atom is about 10⁻¹⁴ m across. The atom as a whole is about",
     ["10⁻¹² m", "10⁻¹⁰ m", "10⁻⁸ m", "10⁻⁶ m"], 1,
     "An atom is roughly $10^(-10)$ m across, so it is some ten thousand times wider than its nucleus — the atom is mostly empty space."),

    ("Energy levels in an atom are",
     ["continuous", "discrete", "always negative", "the same for every element"], 1,
     "An electron may only occupy certain allowed energies; that discreteness is what produces sharp line spectra."),

    ("A photon is emitted when an electron",
     ["moves to a higher energy level", "moves to a lower energy level", "stays in the same level", "leaves the atom"], 1,
     "The energy difference between the levels is carried away as a photon of energy $h f = E_2 - E_1$."),

    ("The energy of the ground state of a hydrogen atom is",
     ["−13.6 eV", "−3.4 eV", "0 eV", "+13.6 eV"], 0,
     "$E_n = -(13.6)\/n^2$ gives −13.6 eV for $n = 1$. The ionisation energy is therefore 13.6 eV."),

    ("The energy needed to ionise a hydrogen atom from its ground state is",
     ["3.4 eV", "10.2 eV", "13.6 eV", "27.2 eV"], 2,
     "The electron must be raised from −13.6 eV to 0 eV, so 13.6 eV is needed. That is the ionisation energy."),

    ("An electron in hydrogen falls from $n = 2$ to $n = 1$. The energy of the emitted photon is",
     ["1.9 eV", "3.4 eV", "10.2 eV", "13.6 eV"], 2,
     "$Delta E = 13.6 - 3.4 = 10.2$ eV, which is in the ultraviolet — the Lyman series."),

    ("Line spectra are evidence that",
     ["atoms are indivisible", "electrons are negative", "energy levels in atoms are discrete", "light is a wave"], 2,
     "Only a set of discrete energies can produce a set of sharp wavelengths. A continuous range of energies would give a continuous spectrum."),

    ("An absorption spectrum consists of",
     ["bright lines on a dark background", "dark lines on a continuous bright background", "a continuous band only", "no lines at all"], 1,
     "A cool gas in front of a hot source absorbs exactly the frequencies it can emit, leaving dark lines in the same positions as its emission lines."),

    ("The energy of a photon of frequency 5.0 × 10¹⁴ Hz is ($h = 6.6 × 10⁻³⁴$ J s)",
     ["1.3 × 10⁻¹⁹ J", "3.3 × 10⁻¹⁹ J", "6.6 × 10⁻¹⁹ J", "1.3 × 10⁻¹⁸ J"], 1,
     "$E = h f = 6.6 times 10^(-34) times 5.0 times 10^14 = 3.3 times 10^(-19)$ J, about 2.1 eV."),

    ("A photon of wavelength 400 nm has an energy of about ($h = 6.6 × 10⁻³⁴$ J s, $c = 3.0 × 10⁸$ m s⁻¹)",
     ["5.0 × 10⁻¹⁹ J", "5.0 × 10⁻²⁸ J", "1.7 × 10⁻¹⁹ J", "8.3 × 10⁻¹⁴ J"], 0,
     "$E = h c \/ lambda = 6.6 times 10^(-34) times 3.0 times 10^8 \/ 4.0 times 10^(-7) = 4.95 times 10^(-19)$ J."),

    ("The photoelectric effect is the emission of electrons from a metal surface when",
     ["it is heated", "light of a suitable frequency falls on it", "it is placed in a magnetic field", "it is connected to a battery"], 1,
     "Each photon gives its energy to one electron; if that energy exceeds the work function the electron escapes."),

    ("Below the threshold frequency, increasing the intensity of the light",
     ["increases the number of electrons emitted", "increases the energy of the electrons", "produces no photoelectrons at all", "lowers the work function"], 2,
     "A photon below the threshold carries too little energy to free an electron, and one photon interacts with one electron — more photons of the wrong energy change nothing."),

    ("Above the threshold frequency, increasing the intensity of the light increases",
     ["the maximum kinetic energy of the electrons", "the number of electrons emitted per second", "the threshold frequency", "the work function"], 1,
     "Intensity is photons per second, so more photons means more electrons. The energy of each electron is fixed by the frequency."),

    ("The work function of a metal is the",
     ["energy needed to ionise an atom", "minimum energy needed to remove an electron from the surface", "energy of a photon", "kinetic energy of an electron"], 1,
     "It is the least energy that will free an electron, and it is the reason each metal has its own threshold frequency $f_0 = W\/h$."),

    ("Light of frequency 6.0 × 10¹⁴ Hz falls on a metal of work function 2.0 eV. The maximum kinetic energy of the photoelectrons is",
     ["0.48 eV", "1.52 eV", "2.0 eV", "2.5 eV"], 0,
     "$h f = 3.96 times 10^(-19)$ J $= 2.48$ eV, so $1\/2 m v^2 = 2.48 - 2.0 = 0.48$ eV."),

    ("A metal has a work function of 2.0 eV. Its threshold frequency is about",
     ["3.0 × 10¹⁴ Hz", "4.8 × 10¹⁴ Hz", "6.0 × 10¹⁴ Hz", "9.6 × 10¹⁴ Hz"], 1,
     "$f_0 = W\/h = 2.0 times 1.6 times 10^(-19) \/ 6.6 times 10^(-34) = 4.8 times 10^14$ Hz."),

    ("The photoelectric effect is strong evidence that light",
     ["is a wave", "travels at 3.0 × 10⁸ m s⁻¹", "behaves as a stream of particles", "has no energy"], 2,
     "The existence of a threshold frequency and the instantaneous emission cannot be explained by a wave, but follow directly from photons of energy $h f$."),

    ("The stopping potential in a photoelectric experiment is the reverse p.d. that",
     ["doubles the photocurrent", "just stops the fastest photoelectrons", "stops all light", "increases the work function"], 1,
     "The most energetic electrons are just turned back, so $e V_s = 1\/2 m v^2_max$, which is how the maximum kinetic energy is measured."),

    ("For a given metal, a graph of maximum kinetic energy against frequency is",
     ["a straight line through the origin", "a straight line cutting the frequency axis", "a curve", "a horizontal line"], 1,
     "Einstein's equation rearranges to $1\/2 m v^2 = h f - W$, a straight line of gradient $h$ that intercepts the axis at $f_0 = W\/h$."),

    ("The gradient of the graph of maximum kinetic energy against frequency gives",
     ["the work function", "Planck's constant", "the threshold frequency", "the charge on the electron"], 1,
     "The equation is $y = h f - W$, so the gradient is $h$ and the intercept on the frequency axis is $f_0$. The gradient is the same for every metal."),

    ("X-rays are produced when",
     ["light strikes a metal", "fast electrons are stopped by a heavy target", "a gas is ionised", "a magnet is moved near a coil"], 1,
     "Electrons accelerated through tens of kilovolts give up their energy in a tungsten target, and the radiation has a wavelength of the order of $10^(-10)$ m."),

    ("The shortest wavelength in an X-ray spectrum corresponds to an electron that",
     ["gives up all its kinetic energy in one collision", "is deflected without losing energy", "is absorbed by the nucleus", "knocks out another electron"], 0,
     "Then $e V = h c \/ lambda_min$, so the high-voltage limit of the tube sets the hardest X-ray it can produce."),

    ("X-rays penetrate flesh but are stopped by bone because",
     ["bone is magnetic", "bone is denser and contains heavier atoms that absorb more", "flesh is a vacuum", "X-rays are charged"], 1,
     "The absorption depends strongly on the density and atomic number of the material, so calcium in bone absorbs far more than the light elements of soft tissue."),

    ("Wave–particle duality means that",
     ["light is a wave and electrons are particles", "both light and matter show wave and particle behaviour", "waves are more fundamental than particles", "particles are more fundamental than waves"], 1,
     "Interference shows light's wave nature and the photoelectric effect its particle nature; electron diffraction shows that matter has a wave nature too."),

    ("A particle of momentum p has a de Broglie wavelength given by",
     ["lambda = h p", "lambda = h \/ p", "lambda = p \/ h", "lambda = h p^2"], 1,
     "$lambda = h\/p$, which for a photon reduces to $lambda = c\/f$ once $p = h\/lambda$ is used."),

    ("An electron accelerated through 100 V has a de Broglie wavelength of about",
     ["1.2 × 10⁻¹⁰ m", "1.2 × 10⁻⁶ m", "1.2 × 10⁻¹⁴ m", "1.2 × 10⁻³ m"], 0,
     "The speed is about $5.9 times 10^6$ m s⁻¹, so $p = 5.4 times 10^(-24)$ kg m s⁻¹ and $lambda = h\/p = 1.2 times 10^(-10)$ m — about the size of an atom."),

    ("Electron diffraction through a thin crystal is evidence that",
     ["electrons are waves", "electrons are particles", "electrons have no mass", "crystals are magnetic"], 0,
     "The electrons form a diffraction pattern, which only a wave can produce — but the same electrons arrive one at a time and make a single spot, which is the particle side."),

    ("The Balmer series of hydrogen consists of transitions that end at",
     ["n = 1", "n = 2", "n = 3", "n = 4"], 1,
     "Jumps to $n = 2$ give the visible lines of hydrogen; jumps to $n = 1$ (the Lyman series) are in the ultraviolet."),

    ("A transition from $n = 4$ to $n = 2$ in hydrogen produces radiation in the",
     ["ultraviolet", "visible", "infrared", "X-ray region"], 1,
     "$Delta E = 3.40 - 0.85 = 2.55$ eV corresponds to about 486 nm, which is the blue-green line of the Balmer series."),

    ("Doubling the frequency of the incident light in a photoelectric experiment",
     ["doubles the number of electrons", "increases the maximum kinetic energy of the electrons", "halves the work function", "has no effect"], 1,
     "The photon energy doubles, so the excess over the work function — which is the kinetic energy — increases."),

    ("The energy of a photon is directly proportional to its",
     ["wavelength", "frequency", "speed", "amplitude"], 1,
     "$E = h f$: double the frequency and you double the energy. Wavelength is inversely proportional, so a longer wavelength means a less energetic photon."),

    ("Which photon carries the most energy?",
     ["infrared", "visible light", "ultraviolet", "radio waves"], 2,
     "Energy rises with frequency, so ultraviolet — the highest frequency of the four — carries the most."),

    ("A metal emits photoelectrons only when the light is ultraviolet, not when it is visible. This is because visible light",
     ["is too intense", "has too low a frequency to exceed the work function", "travels too slowly", "is polarised"], 1,
     "Below the threshold frequency no single photon carries enough energy, however many arrive. Ultraviolet photons have higher frequency and therefore more energy."),

    ("The idea that light is emitted in discrete packets was proposed by",
     ["Newton", "Einstein", "Rutherford", "Faraday"], 1,
     "Einstein's 1905 paper on the photoelectric effect introduced the photon, $E = h f$, and explained the threshold frequency in one line."),

    ("The energy of an electron in the second energy level of hydrogen is",
     ["−13.6 eV", "−3.4 eV", "−1.5 eV", "−0.85 eV"], 1,
     "$E_2 = -13.6\/4 = -3.4$ eV. The energies get closer together as $n$ increases, converging on zero."),

    ("An atom in an excited state returns to the ground state by",
     ["absorbing a photon", "emitting a photon", "gaining an electron", "losing a proton"], 1,
     "The excess energy is carried away by a photon whose energy equals the difference between the two levels."),

    ("Planck's constant has the unit",
     ["J s", "J s⁻¹", "J", "W"], 0,
     "$E = h f$ gives $h = E\/f$ in joule-seconds. It is also the unit of angular momentum."),
]
