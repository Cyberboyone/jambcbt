"""Chapter 6 drill bank — radioactivity and nuclear energy."""

DRILL_6 = [
    ("The nucleus of an atom contains",
     ["protons and electrons", "protons and neutrons", "electrons and neutrons", "only protons"], 1,
     "Protons and neutrons are the nucleons; the electrons occupy the space around the nucleus. The proton number fixes the element."),

    ("The atomic number of an element is the number of",
     ["nucleons", "protons", "neutrons", "electrons in the outer shell"], 1,
     "The atomic number, or proton number, fixes the element. The mass number is the number of nucleons, protons plus neutrons."),

    ("Isotopes of an element have",
     ["the same number of neutrons but different protons", "the same number of protons but different neutrons", "different numbers of electrons", "the same mass number"], 1,
     "Isotopes share the proton number but differ in the number of neutrons, so they have different mass numbers but identical chemistry."),

    ("An alpha particle is",
     ["a helium nucleus, $attach(upright(\"He\"), tl: 4, bl: 2)$", "an electron", "a photon", "a neutron"], 0,
     "An alpha particle is two protons and two neutrons bound together — a helium nucleus with charge +2e and mass number 4."),

    ("A beta particle is",
     ["a helium nucleus", "a fast electron emitted from the nucleus", "a photon", "a proton"], 1,
     "A beta particle is a fast electron created when a neutron in the nucleus turns into a proton. Its mass number is 0 and its charge is −1."),

    ("Gamma radiation is",
     ["a stream of electrons", "a stream of helium nuclei", "high-frequency electromagnetic radiation", "a stream of neutrons"], 2,
     "A gamma ray is a photon of very high frequency emitted when a nucleus drops from an excited state to a lower one. It has no charge and no mass."),

    ("Which radiation has the greatest penetrating power?",
     ["alpha", "beta", "gamma", "they are equal"], 2,
     "Gamma rays penetrate several centimetres of lead; beta particles are stopped by a few millimetres of aluminium, and alpha particles by a sheet of paper."),

    ("Which radiation is deflected most in an electric field?",
     ["alpha", "beta", "gamma", "none is deflected"], 1,
     "A beta particle is light and carries a single charge, so it is deflected far more than the heavy, doubly charged alpha particle. Gamma rays are undeflected."),

    ("In alpha decay, the mass number of the nucleus",
     ["increases by 4", "decreases by 4", "decreases by 2", "is unchanged"], 1,
     "An alpha particle carries off two protons and two neutrons, so the mass number falls by 4 and the atomic number by 2."),

    ("In beta decay, the atomic number of the nucleus",
     ["increases by 1", "decreases by 1", "decreases by 2", "is unchanged"], 0,
     "A neutron turns into a proton, so the proton number rises by one while the mass number stays the same."),

    ("A nucleus $attach(upright(\"U\"), tl: 238, bl: 92)$ emits an alpha particle. The resulting nucleus has",
     ["mass number 234, atomic number 90", "mass number 238, atomic number 90", "mass number 234, atomic number 94", "mass number 236, atomic number 92"], 0,
     "Alpha decay removes 4 from the mass number and 2 from the atomic number: $attach(upright(\"Th\"), tl: 234, bl: 90)$."),

    ("A nucleus $attach(upright(\"C\"), tl: 14, bl: 6)$ emits a beta particle. The resulting nucleus is",
     ["$attach(upright(\"N\"), tl: 14, bl: 7)$", "$attach(upright(\"B\"), tl: 14, bl: 5)$", "$attach(upright(\"Be\"), tl: 10, bl: 4)$", "$attach(upright(\"C\"), tl: 14, bl: 6)$"], 0,
     "Beta decay raises the atomic number by 1 and leaves the mass number unchanged, so carbon-14 becomes nitrogen-14."),

    ("The half-life of a radioactive isotope is the time taken for",
     ["all the nuclei to decay", "half the nuclei present to decay", "half the mass to evaporate", "the activity to double"], 1,
     "After one half-life half the nuclei remain, after two a quarter, and so on. Nothing about the sample's chemistry, temperature or pressure changes the rate."),

    ("A sample contains 8.0 × 10²⁰ atoms of a nuclide of half-life 5.0 days. After 15 days the number remaining is",
     ["1.0 × 10²⁰", "2.0 × 10²⁰", "4.0 × 10²⁰", "0"], 0,
     "15 days is three half-lives, so the number falls by $2^3 = 8$: $8.0 times 10^20 \/ 8 = 1.0 times 10^20$."),

    ("The activity of a source falls from 800 counts per minute to 100 counts per minute in 30 minutes. Its half-life is",
     ["5 minutes", "10 minutes", "15 minutes", "20 minutes"], 1,
     "A fall by a factor of 8 means three half-lives, so each is $30\/3 = 10$ minutes."),

    ("Radioactive decay is described as random because",
     ["the half-life changes", "it is impossible to predict which nucleus will decay next", "the activity is constant", "only some isotopes decay"], 1,
     "Each nucleus has a fixed probability of decaying per unit time, but no individual decay can be predicted — which is why large samples follow the half-life law so precisely."),

    ("The rate of decay of a radioactive sample is *not* affected by",
     ["the number of nuclei present", "temperature", "the isotope", "pressure"], 1,
     "Half-life is a property of the nucleus alone. Heating, cooling, compressing or chemically combining a nuclide changes its decay rate not at all."),

    ("In the equation $attach(upright(\"Ra\"), tl: 226, bl: 88) -> \"X\" + attach(upright(\"He\"), tl: 4, bl: 2)$, X is",
     ["$attach(upright(\"Rn\"), tl: 222, bl: 86)$", "$attach(upright(\"Ra\"), tl: 222, bl: 88)$", "$attach(upright(\"Rn\"), tl: 226, bl: 86)$", "$attach(upright(\"Rn\"), tl: 224, bl: 86)$"], 0,
     "Mass number $226 - 4 = 222$ and atomic number $88 - 2 = 86$, which is radon."),

    ("In the equation $attach(upright(\"Th\"), tl: 234, bl: 90) -> \"X\" + attach(upright(\"e\"), tl: 0, bl: -1)$, X is",
     ["$attach(upright(\"Pa\"), tl: 234, bl: 91)$", "$attach(upright(\"Ac\"), tl: 234, bl: 89)$", "$attach(upright(\"Ra\"), tl: 230, bl: 88)$", "$attach(upright(\"Th\"), tl: 234, bl: 90)$"], 0,
     "Beta decay leaves the mass number alone and raises the atomic number by one: protactinium-234."),

    ("Gamma emission",
     ["changes the mass number but not the atomic number", "changes neither the mass number nor the atomic number", "changes the atomic number but not the mass number", "changes both"], 1,
     "A gamma ray is pure energy, so the nucleus stays the same element and the same isotope — it is only left in a lower energy state."),

    ("The mass defect of a nucleus is the difference between",
     ["its mass and the sum of the masses of its separate nucleons", "its mass and its charge", "its mass and its energy", "its mass and the electron mass"], 0,
     "The missing mass has been converted into binding energy according to $E = m c^2$, which is why a nucleus weighs less than its parts."),

    ("The energy released in a nuclear reaction is given by",
     ["E = m c²", "E = h f", "E = 1/2 m v²", "E = I V t"], 0,
     "Einstein's relation converts the mass difference into energy; $c^2$ is so large that a tiny mass defect gives a huge energy."),

    ("The binding energy of a nucleus is the energy needed to",
     ["ionise the atom", "split the nucleus into its separate nucleons", "remove an electron", "excite the nucleus"], 1,
     "It is exactly the energy equivalent of the mass defect, and it is what makes a heavy nucleus release energy when it splits."),

    ("Nuclear fission is the",
     ["joining of two light nuclei", "splitting of a heavy nucleus into two lighter ones", "emission of a gamma ray", "capture of an electron"], 1,
     "Uranium-235 absorbing a neutron and splitting is the standard example; the reaction releases energy and two or three more neutrons."),

    ("Nuclear fusion is the",
     ["splitting of a heavy nucleus", "joining of light nuclei to form a heavier one", "emission of alpha particles", "decay of a neutron"], 1,
     "Fusion is the reaction that powers the Sun: hydrogen nuclei combine to form helium, releasing energy because the helium nucleus is more tightly bound."),

    ("A controlled chain reaction in a nuclear reactor is maintained by",
     ["increasing the moderator", "keeping the number of neutrons released per fission that go on to cause another fission equal to one", "removing all the control rods", "cooling the reactor to 0 K"], 1,
     "If each fission leads on average to exactly one more, the reaction is steady; above one it grows, below one it dies out."),

    ("The control rods in a nuclear reactor are made of a material that",
     ["slows the neutrons", "absorbs neutrons", "reflects neutrons", "produces neutrons"], 1,
     "Rods of boron or cadmium absorb neutrons, so lowering them into the core reduces the number available and slows the reaction."),

    ("The moderator in a reactor is used to",
     ["absorb neutrons", "slow fast neutrons to thermal energies", "generate electricity", "shield the operators"], 1,
     "Slow neutrons are far more likely to be captured by uranium-235, so a moderator of graphite or water improves the efficiency of the chain reaction."),

    ("Background radiation comes from",
     ["only man-made sources", "cosmic rays, rocks and radon gas, and medical sources", "the Sun only", "nuclear reactors only"], 1,
     "Background is the natural and medical exposure that exists everywhere. Radon gas from rocks is usually the largest single contributor."),

    ("Which type of radiation is stopped by a sheet of paper?",
     ["alpha", "beta", "gamma", "X-rays"], 0,
     "An alpha particle is heavy and doubly charged, so it loses its energy in a few centimetres of air or a single sheet of paper — which also makes it the most dangerous if inhaled."),

    ("The count rate measured by a detector is corrected for background by",
     ["adding the background", "subtracting the background", "multiplying by the background", "dividing by the background"], 1,
     "The detector counts background as well as the source, so the source's true count rate is the measured rate minus the background rate."),

    ("An isotope has a half-life of 20 minutes. What fraction of a sample remains after 1 hour?",
     ["1/2", "1/4", "1/8", "1/16"], 2,
     "One hour is three half-lives, so the fraction remaining is $(1\/2)^3 = 1\/8$."),

    ("The activity of a radioactive source is measured in",
     ["joules", "becquerels", "coulombs", "teslas"], 1,
     "One becquerel is one decay per second. The count rate from a detector is usually quoted in counts per minute."),

    ("When an alpha particle is emitted from a nucleus, the nucleus's charge",
     ["increases by 2e", "decreases by 2e", "decreases by e", "is unchanged"], 1,
     "The alpha carries away a charge of +2e, so the nucleus loses 2e of positive charge and its atomic number falls by two."),

    ("Which statement about a neutron is correct?",
     ["it has charge +e", "it has charge −e", "it is uncharged and has about the same mass as a proton", "it has no mass"], 2,
     "A neutron is neutral, which is why a beam of neutrons is not deflected by electric or magnetic fields and why neutrons can penetrate matter so deeply."),

    ("The nucleus $attach(upright(\"U\"), tl: 235, bl: 92)$ contains",
     ["92 protons and 143 neutrons", "92 neutrons and 143 protons", "235 protons", "92 protons and 235 neutrons"], 0,
     "The atomic number gives 92 protons and the mass number gives 235 nucleons, so there are $235 - 92 = 143$ neutrons."),

    ("Carbon-14 dating works because",
     ["carbon-14 decays with a known half-life and living things keep replacing it", "carbon-14 is stable", "all carbon is radioactive", "the half-life is one year"], 0,
     "While an organism is alive its carbon-14 is replenished; after death it decays with a half-life of about 5730 years, so the remaining fraction dates the sample."),

    ("The energy released in a nuclear reaction is much larger than in a chemical reaction because",
     ["nuclear reactions involve more atoms", "the mass defect is a larger fraction of the total mass", "nuclear fuels are heavier", "nuclear reactions run hotter"], 1,
     "Chemical reactions rearrange electrons and move a mass of the order of $10^(-9)$ of the total; nuclear reactions move of the order of $10^(-3)$, so a million times more energy per atom."),

    ("A radioactive source is placed in a magnetic field. The alpha and beta emissions are deflected",
     ["in the same direction", "in opposite directions", "not at all", "along the field"], 1,
     "Alpha particles are positive and beta particles negative, so they are deflected in opposite directions. Gamma rays are undeflected."),

    ("Two samples of the same isotope contain different numbers of atoms. After one half-life,",
     ["both lose the same number of atoms", "both lose half of their own atoms", "the larger sample decays faster", "the smaller sample decays faster"], 1,
     "Half-life is a fraction, not a number: each sample loses half of whatever it starts with."),
]
