"""Paper bank for Chapter 6 — radioactivity and nuclear physics."""

PAPER_6 = [
    ("The nucleus of an atom contains 6 protons and 7 neutrons. Its mass number is",
     ["6", "7", "13", "14"], 2,
     "The mass number counts all the nucleons: $6 + 7 = 13$, which is the carbon-13 nucleus."),

    ("An atom has an atomic number of 26 and a mass number of 56. Its nucleus contains",
     ["26 protons and 30 neutrons", "30 protons and 26 neutrons", "26 protons and 56 neutrons", "56 protons and 26 neutrons"], 0,
     "The atomic number gives 26 protons and the mass number gives 56 nucleons, so there are $56 - 26 = 30$ neutrons."),

    ("Isotopes of an element differ in the number of",
     ["protons", "neutrons", "electrons in the neutral atom", "energy levels"], 1,
     "Same proton number, different neutron number — which changes the mass but not the chemistry."),

    ("An alpha particle is identical to",
     ["a proton", "an electron", "a helium nucleus", "a photon"], 2,
     "Two protons and two neutrons bound together, written $attach(upright(\"He\"), tl: 4, bl: 2)$."),

    ("A beta particle is",
     ["a helium nucleus", "an electron emitted from the nucleus", "a positron", "a neutron"], 1,
     "It is created when a neutron in the nucleus changes into a proton, and it is ejected at high speed."),

    ("Gamma radiation is",
     ["a stream of electrons", "a stream of helium nuclei", "electromagnetic radiation of very short wavelength", "a stream of neutrons"], 2,
     "A gamma ray is a high-energy photon, emitted when an excited nucleus drops to a lower energy state."),

    ("The radiation with the greatest ionising power is",
     ["alpha", "beta", "gamma", "they are equal"], 0,
     "Alpha particles are heavy, doubly charged and slow, so they interact with almost every atom they pass — and are stopped by paper."),

    ("The radiation with the greatest penetrating power is",
     ["alpha", "beta", "gamma", "they are equal"], 2,
     "Gamma rays are uncharged and pass through the gaps in matter, so only several centimetres of lead reduce them appreciably."),

    ("Alpha particles are deflected towards the negative plate because they",
     ["are heavy", "carry a positive charge", "move quickly", "have no charge"], 1,
     "A positive charge is attracted to the negative plate, and the deflection of an alpha particle is small because it is heavy."),

    ("In the electric field of a cloud chamber, gamma radiation",
     ["bends towards the positive plate", "bends towards the negative plate", "goes straight on", "is stopped"], 2,
     "Gamma rays carry no charge, so an electric field has no effect on their path."),

    ("After emitting an alpha particle, a nucleus of $attach(upright(\"U\"), tl: 238, bl: 92)$ becomes",
     ["$attach(upright(\"Th\"), tl: 234, bl: 90)$", "$attach(upright(\"U\"), tl: 234, bl: 92)$", "$attach(upright(\"Th\"), tl: 238, bl: 90)$", "$attach(upright(\"Pu\"), tl: 242, bl: 94)$"], 0,
     "Alpha decay takes 4 off the mass number and 2 off the atomic number."),

    ("After emitting a beta particle, a nucleus of $attach(upright(\"P\"), tl: 32, bl: 15)$ becomes",
     ["$attach(upright(\"S\"), tl: 32, bl: 16)$", "$attach(upright(\"Si\"), tl: 32, bl: 14)$", "$attach(upright(\"Al\"), tl: 28, bl: 13)$", "$attach(upright(\"P\"), tl: 32, bl: 15)$"], 0,
     "The mass number is unchanged and the atomic number rises by one."),

    ("A nucleus emits a gamma ray. Its mass number and atomic number",
     ["both change", "both stay the same", "only the mass number changes", "only the atomic number changes"], 1,
     "A gamma ray carries energy only, so the nucleus stays the same isotope — merely in a lower energy state."),

    ("The half-life of a nuclide is",
     ["half the time it takes to decay completely", "the time for half of the nuclei present to decay", "the time for the mass to halve by evaporation", "the time for the activity to double"], 1,
     "It is a fixed fraction per unit time, which is why the decay curve never quite reaches zero."),

    ("A sample of 4.0 × 10²¹ atoms has a half-life of 3.0 days. After 12 days the number remaining is",
     ["2.5 × 10²⁰", "5.0 × 10²⁰", "1.0 × 10²¹", "2.5 × 10²¹"], 0,
     "12 days is four half-lives, and $2^4 = 16$, so $4.0 times 10^21 \/ 16 = 2.5 times 10^20$."),

    ("A source has a half-life of 6.0 hours. What fraction of it remains after 24 hours?",
     ["1/2", "1/4", "1/8", "1/16"], 3,
     "24 hours is four half-lives, so $(1\/2)^4 = 1\/16$ remains."),

    ("The count rate from a source falls from 400 to 50 counts per minute in 45 minutes. The half-life is",
     ["5.0 min", "9.0 min", "15 min", "22 min"], 2,
     "A factor of 8 means three half-lives, so each is $45\/3 = 15$ minutes."),

    ("The activity of a source is quoted in becquerels, where one becquerel is",
     ["one decay per minute", "one decay per second", "one joule per second", "one count per hour"], 1,
     "The becquerel is the SI unit of activity: one disintegration per second."),

    ("A Geiger–Müller tube is used to",
     ["photograph a nucleus", "detect and count ionising radiation", "split the nucleus", "measure mass"], 1,
     "Each ionising particle or photon that enters the tube produces a pulse of current, and the pulses are counted."),

    ("Background radiation must be subtracted from a count rate because",
     ["the source is weak", "the detector also counts radiation from rocks, cosmic rays and medical sources", "the tube is faulty", "the source decays too fast"], 1,
     "Even with no source present the tube counts something, and that figure must be taken off before any calculation."),

    ("The rate of decay of a radioactive sample can be changed by",
     ["heating it", "cooling it", "combining it chemically", "nothing — it is fixed by the nucleus"], 3,
     "Half-life is a property of the nucleus. Temperature, pressure and chemical state change nothing measurable."),

    ("The mass defect of a nucleus is",
     ["the mass of its electrons", "the difference between its mass and the total mass of its separate nucleons", "the mass lost in beta decay", "the mass of a neutron"], 1,
     "The missing mass has been converted into binding energy when the nucleus formed, according to $E = m c^2$."),

    ("The binding energy of a nucleus is the energy needed to",
     ["ionise the atom", "remove an electron", "separate the nucleus into its individual nucleons", "excite the nucleus"], 2,
     "It is exactly the energy equivalent of the mass defect."),

    ("Fission is the",
     ["joining of two light nuclei", "splitting of a heavy nucleus", "emission of a gamma ray", "decay of a proton"], 1,
     "A heavy nucleus such as uranium-235 splits into two lighter fragments, releasing energy and further neutrons."),

    ("Fusion is the",
     ["splitting of a heavy nucleus", "joining of light nuclei", "emission of an alpha particle", "capture of an electron"], 1,
     "Light nuclei combine to form a more tightly bound nucleus, which is how the Sun produces helium from hydrogen."),

    ("The energy released in the fission of one uranium-235 nucleus is about",
     ["200 eV", "2.0 MeV", "200 MeV", "200 GeV"], 2,
     "About 200 MeV per fission, which is roughly a hundred million times the energy of a typical chemical reaction."),

    ("In a nuclear reactor the moderator is used to",
     ["absorb neutrons", "slow down neutrons so they are more easily captured", "cool the reactor", "shield the operators"], 1,
     "Graphite or water slows the fission neutrons, and slow neutrons are far more likely to be captured by uranium-235."),

    ("The control rods in a reactor are made of a material that",
     ["slows neutrons", "absorbs neutrons", "emits neutrons", "reflects light"], 1,
     "Boron or cadmium absorbs neutrons; lowering the rods into the core reduces the number available and slows the chain reaction."),

    ("A chain reaction is described as controlled when, on average,",
     ["every fission causes two more", "one neutron from each fission causes one more fission", "no neutrons are released", "the fuel is removed"], 1,
     "One-for-one keeps the power steady; more than one and the reaction grows, less than one and it dies out."),

    ("The mass number of a nucleus is unchanged by",
     ["alpha emission", "beta emission", "gamma emission", "both beta and gamma emission"], 3,
     "Beta emission swaps a neutron for a proton and gamma emission changes nothing, so neither alters the mass number. Only alpha emission does."),

    ("Which of these is a use of radioactivity?",
     ["generating light in a bulb", "tracing the path of a fertiliser through a plant", "cooling a reactor", "charging a battery"], 1,
     "A small amount of a gamma-emitting tracer can be followed through a plant, a pipe or a patient without surgery."),

    ("Carbon-14 dating can be used on",
     ["rocks older than the Earth", "once-living material up to about 50 000 years old", "metals only", "anything at all"], 1,
     "The half-life of 5730 years sets the useful range; beyond about ten half-lives there is too little left to measure."),

    ("Two samples of the same isotope have different masses. After one half-life,",
     ["both have lost the same mass", "each has lost half of its own mass", "the heavier one decays faster", "the lighter one decays faster"], 1,
     "Decay removes a fixed *fraction*, not a fixed amount, so the heavier sample loses the larger mass."),

    ("A nucleus of $attach(upright(\"Ra\"), tl: 226, bl: 88)$ emits an alpha particle. The atomic number of the new nucleus is",
     ["84", "86", "88", "90"], 1,
     "$88 - 2 = 86$, which is radon. Alpha decay always moves the element two places down the periodic table."),

    ("A nucleus of $attach(upright(\"C\"), tl: 14, bl: 6)$ emits a beta particle. The new nucleus has",
     ["6 protons and 8 neutrons", "7 protons and 7 neutrons", "8 protons and 6 neutrons", "6 protons and 7 neutrons"], 1,
     "One neutron has become a proton, so nitrogen-14 has 7 protons and $14 - 7 = 7$ neutrons."),

    ("The radiation that is stopped by a sheet of paper is",
     ["alpha", "beta", "gamma", "X-rays"], 0,
     "An alpha particle loses its energy in a few centimetres of air, so paper stops it — but it is the most dangerous if inhaled."),

    ("A radioactive source is handled with tongs and kept at arm's length because",
     ["the source is hot", "the intensity falls rapidly with distance", "the source is heavy", "tongs prevent chemical reactions"], 1,
     "The radiation spreads out in all directions, so doubling the distance quarters the dose — a cheap and effective shield."),

    ("The energy released in a nuclear reaction appears as",
     ["mass", "kinetic energy of the products and radiation", "electric charge", "magnetic field"], 1,
     "The mass defect reappears as the kinetic energy of the fragments and as gamma radiation."),

    ("Which of the following statements about gamma rays is *false*?",
     ["they have no charge", "they travel at the speed of light", "they are deflected by a magnetic field", "they can damage living cells"], 2,
     "Being uncharged, gamma rays are not deflected by electric or magnetic fields — which is one way to distinguish them from alpha and beta."),

    ("A source of half-life 4.0 days has an activity of 1600 counts per minute. After 16 days the activity is",
     ["100 min⁻¹", "200 min⁻¹", "400 min⁻¹", "800 min⁻¹"], 0,
     "Sixteen days is four half-lives, so $1600 \/ 2^4 = 100$ counts per minute."),
]
