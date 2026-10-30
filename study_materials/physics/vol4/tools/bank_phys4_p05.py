"""Paper bank for Chapter 5 — atomic physics and the photoelectric effect."""

PAPER_5 = [
    ("The nucleus of an atom was discovered by",
     ["Thomson", "Rutherford", "Millikan", "Einstein"], 1,
     "The alpha-particle scattering experiment showed that the positive charge and almost all the mass sit in a tiny central nucleus."),

    ("The charge-to-mass ratio of the electron was first measured by",
     ["Rutherford", "J.J. Thomson", "Millikan", "Planck"], 1,
     "Thomson's cathode-ray experiments gave $e\/m$; Millikan's oil-drop experiment later gave $e$ on its own, and hence $m$."),

    ("An atom of hydrogen has one proton and",
     ["one neutron", "no neutron", "two neutrons", "one electron and one neutron"], 1,
     "The common isotope is a single proton with a single electron; the isotope deuterium adds one neutron."),

    ("Energy levels in an atom are said to be quantised because",
     ["they are very large", "only certain values are allowed", "they change continuously", "they depend on temperature"], 1,
     "An electron can occupy only particular energies, and the gaps between them are what produce line spectra."),

    ("When an electron falls from a higher to a lower energy level, the atom",
     ["absorbs a photon", "emits a photon", "gains an electron", "loses a proton"], 1,
     "The energy difference leaves as a photon of energy $h f = E_2 - E_1$."),

    ("An electron in a hydrogen atom falls from $n = 3$ to $n = 2$. The photon energy is",
     ["1.9 eV", "3.4 eV", "10.2 eV", "12.1 eV"], 0,
     "$E_3 = -1.51$ eV and $E_2 = -3.40$ eV, so the difference is 1.89 eV — the red line of the Balmer series."),

    ("The ionisation energy of hydrogen is",
     ["1.5 eV", "3.4 eV", "13.6 eV", "27.2 eV"], 2,
     "The electron must go from −13.6 eV to 0 eV, so 13.6 eV is required — the energy of the ground state measured from the ionised state."),

    ("The wavelengths of the Lyman series of hydrogen lie in the",
     ["infrared", "visible", "ultraviolet", "X-ray region"], 2,
     "The Lyman series comes from jumps to $n = 1$, and the energy gaps are large enough to put the lines beyond the violet."),

    ("The dark lines of the Sun's spectrum are produced when",
     ["hot gas emits light", "cooler gas absorbs selected wavelengths from a continuous spectrum", "dust blocks all light", "the Sun's core cools"], 1,
     "The cooler outer layers absorb exactly the frequencies the elements there can absorb, leaving dark lines at those wavelengths."),

    ("The energy of a photon of wavelength 600 nm is about",
     ["3.3 × 10⁻¹⁹ J", "6.6 × 10⁻¹⁹ J", "1.1 × 10⁻²⁷ J", "2.0 × 10⁻¹⁹ J"], 0,
     "$E = h c\/lambda = 6.6 times 10^(-34) times 3.0 times 10^8 \/ 6.0 times 10^(-7) = 3.3 times 10^(-19)$ J."),

    ("The frequency of a photon of energy 4.0 × 10⁻¹⁹ J is about",
     ["2.6 × 10¹⁴ Hz", "6.1 × 10¹⁴ Hz", "2.4 × 10¹⁵ Hz", "1.6 × 10⁻¹⁵ Hz"], 1,
     "$f = E\/h = 4.0 times 10^(-19) \/ 6.6 times 10^(-34) = 6.1 times 10^14$ Hz, in the orange part of the spectrum."),

    ("The number of photons emitted per second by a 1.0 mW source of 500 nm light is about",
     ["2.5 × 10¹⁵ s⁻¹", "2.5 × 10¹⁸ s⁻¹", "4.0 × 10⁻¹⁸ s⁻¹", "1.0 × 10³ s⁻¹"], 0,
     "Each photon carries $3.96 times 10^(-19)$ J, so $10^(-3) \/ 3.96 times 10^(-19) = 2.5 times 10^15$ photons per second."),

    ("The photoelectric effect cannot be explained by the wave theory of light because",
     ["light is too fast", "there is a threshold frequency and emission is instantaneous", "metals are conductors", "photons have no mass"], 1,
     "A wave would gradually supply energy to any electron, so dim light would work after a delay and there would be no threshold."),

    ("The work function of a metal is 3.0 eV. Light of frequency 1.0 × 10¹⁵ Hz falls on it. The maximum kinetic energy of the photoelectrons is",
     ["1.1 eV", "3.0 eV", "4.1 eV", "no emission"], 0,
     "$h f = 6.6 times 10^(-19)$ J $= 4.1$ eV, so $1\/2 m v^2 = 4.1 - 3.0 = 1.1$ eV."),

    ("Light of 2.0 × 10¹⁵ Hz falls on a metal of work function 4.0 eV. The maximum kinetic energy is about",
     ["4.3 eV", "8.3 eV", "0 eV", "12.3 eV"], 0,
     "$h f = 6.6 times 10^(-34) times 2.0 times 10^15 = 1.32 times 10^(-18)$ J $= 8.3$ eV, so the excess is 4.3 eV."),

    ("The threshold wavelength of a metal of work function 2.0 eV is about",
     ["620 nm", "310 nm", "1240 nm", "155 nm"], 0,
     "$lambda_0 = h c \/ W = (6.6 times 10^(-34) times 3.0 times 10^8)\/(2.0 times 1.6 times 10^(-19)) = 6.2 times 10^(-7)$ m."),

    ("Doubling the intensity of light above the threshold frequency doubles",
     ["the maximum kinetic energy", "the number of photoelectrons per second", "the stopping potential", "the work function"], 1,
     "Intensity is photons per second, and one photon frees one electron, so the current doubles while the energy of each electron stays the same."),

    ("The stopping potential in a photoelectric experiment is 1.5 V. The maximum kinetic energy of the electrons is",
     ["1.5 J", "1.5 eV", "0.75 eV", "2.4 × 10⁻¹⁹ eV"], 1,
     "$e V_s = 1\/2 m v^2$, so a stopping potential of 1.5 V means a maximum kinetic energy of 1.5 eV."),

    ("A graph of stopping potential against frequency for two different metals gives",
     ["the same gradient and the same intercept", "the same gradient but different intercepts", "different gradients and the same intercept", "no straight line"], 1,
     "The gradient is $h\/e$, a universal constant; the intercept on the frequency axis is the threshold frequency, which is different for each metal."),

    ("X-rays differ from visible light mainly in having",
     ["a larger amplitude", "a much shorter wavelength", "a much longer wavelength", "no energy"], 1,
     "X-ray wavelengths are about $10^(-10)$ m — a thousand times shorter than visible light, and comparable with atomic spacings."),

    ("In an X-ray tube, increasing the tube voltage",
     ["increases the wavelength of the X-rays", "decreases the minimum wavelength", "has no effect on the spectrum", "stops the emission"], 1,
     "$lambda_min = h c \/(e V)$, so a higher voltage gives a shorter minimum wavelength and harder X-rays."),

    ("An X-ray tube operates at 50 kV. The shortest wavelength produced is about",
     ["0.025 nm", "0.25 nm", "2.5 nm", "25 nm"], 0,
     "$lambda_min = h c\/(e V) = 1.98 times 10^(-25) \/ 8.0 times 10^(-15) = 2.5 times 10^(-11)$ m $= 0.025$ nm."),

    ("X-rays are stopped more strongly by bone than by flesh because bone",
     ["is a conductor", "is denser and contains calcium, a heavier element", "is colder", "is magnetic"], 1,
     "Absorption rises steeply with density and with atomic number, so calcium absorbs far more than the light elements of soft tissue."),

    ("The de Broglie wavelength of a particle is inversely proportional to its",
     ["mass only", "charge", "momentum", "energy squared"], 2,
     "$lambda = h\/p$: the faster and heavier the particle, the shorter its wavelength and the harder it is to observe diffraction."),

    ("An electron of mass 9.1 × 10⁻³¹ kg moves at 2.0 × 10⁶ m s⁻¹. Its de Broglie wavelength is about",
     ["3.6 × 10⁻¹⁰ m", "3.6 × 10⁻¹³ m", "1.8 × 10⁻¹⁰ m", "7.3 × 10⁻¹⁰ m"], 0,
     "$p = 1.82 times 10^(-24)$ kg m s⁻¹, so $lambda = 6.6 times 10^(-34) \/ 1.82 times 10^(-24) = 3.6 times 10^(-10)$ m."),

    ("Electron diffraction through a thin metal film is evidence for",
     ["the particle nature of light", "the wave nature of matter", "the charge of the electron", "the existence of the nucleus"], 1,
     "Only a wave produces a diffraction pattern, and the pattern is built up spot by spot as individual electrons arrive."),

    ("The photoelectric effect is evidence for",
     ["the wave nature of light", "the particle nature of light", "the wave nature of matter", "the charge of the photon"], 1,
     "A threshold frequency and instantaneous emission follow from light arriving in packets of energy $h f$."),

    ("Planck's constant can be measured from a photoelectric experiment by finding the",
     ["intercept on the frequency axis", "gradient of the maximum kinetic energy against frequency graph", "area under the graph", "height of the stopping potential"], 1,
     "The graph is $1\/2 m v^2 = h f - W$, so its gradient is $h$ and it is the same for every metal."),

    ("Which photon has the greatest energy?",
     ["infrared", "red", "violet", "ultraviolet"], 3,
     "Energy rises with frequency, and of these four ultraviolet has the highest frequency and therefore the shortest wavelength."),

    ("The energy of the $n = 2$ level of hydrogen is",
     ["−13.6 eV", "−6.8 eV", "−3.4 eV", "−1.5 eV"], 2,
     "$E_n = -13.6\/n^2$, so $E_2 = -13.6\/4 = -3.4$ eV."),

    ("An atom emits a photon of energy 2.55 eV. The wavelength of the radiation is about",
     ["490 nm", "250 nm", "980 nm", "1200 nm"], 0,
     "$lambda = h c \/ E = (1.98 times 10^(-25))\/(2.55 times 1.6 times 10^(-19)) = 4.9 times 10^(-7)$ m — the blue-green line of hydrogen."),

    ("In a discharge tube, hydrogen glows with a few sharp colours rather than a continuous rainbow because",
     ["the gas is hot", "the atoms have discrete energy levels", "the glass filters the light", "the current is direct"], 1,
     "Only photons matching the gaps between levels are emitted, so the spectrum is a set of lines, one per allowed transition."),

    ("The photoelectric current is *zero* when",
     ["the light is too dim", "the frequency is below the threshold", "the metal is too thick", "the light is polarised"], 1,
     "Below the threshold frequency no single photon can free an electron, however many arrive — brightness changes nothing."),

    ("The work function of a metal is 4.0 eV. Light of wavelength 200 nm falls on it. The maximum kinetic energy is about",
     ["2.2 eV", "6.2 eV", "4.0 eV", "0.2 eV"], 0,
     "$E = h c\/lambda = 9.9 times 10^(-19)$ J $= 6.2$ eV, so the excess is 2.2 eV."),

    ("The kinetic energy of photoelectrons is measured by",
     ["a thermometer", "the stopping potential", "an ammeter in the light beam", "the colour of the light"], 1,
     "A reverse p.d. just able to stop the fastest electrons satisfies $e V_s = 1\/2 m v^2_max$."),

    ("Which statement about photons is correct?",
     ["they have mass and charge", "they have energy and momentum but no rest mass", "they are electrons without charge", "they travel slower than light"], 1,
     "A photon carries $E = h f$ and $p = h\/lambda$, but its rest mass is zero and it always travels at $c$ in a vacuum."),

    ("The energy of an electron in the $n = 4$ level of hydrogen is",
     ["−3.4 eV", "−1.5 eV", "−0.85 eV", "−0.34 eV"], 2,
     "$E_4 = -13.6\/16 = -0.85$ eV. The levels crowd together as $n$ increases."),

    ("Increasing the frequency of light while keeping the intensity constant",
     ["increases the number of photons per second", "decreases the number of photons per second", "leaves the number unchanged", "stops the emission"], 1,
     "The intensity is the total energy per second; if each photon carries more energy, fewer photons are needed to deliver the same power."),

    ("A photocell is used in a burglar alarm because",
     ["its resistance changes with light", "it emits light when warm", "it stores charge", "it amplifies sound"], 0,
     "Light falling on the cell produces a current; interrupting the beam changes the current and trips the circuit."),

    ("The line spectrum of an element is best described as",
     ["a continuous band of colours", "a set of sharp bright lines on a dark background", "a set of dark bands on a bright background only", "a single line"], 1,
     "Emission lines are bright on dark; absorption lines are dark on a continuous background. The positions are identical, and they identify the element."),
]
