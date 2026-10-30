#import "template.typ": *

#current-chapter.update("Chapter 6: Radioactivity and Nuclear Physics")

#pagebreak()

#chapter-opener(
  6,
  "Radioactivity and Nuclear Physics",
  subtitle: "The Nucleus, Alpha Beta and Gamma Emission, Decay Equations, Half-Life, Fission and Fusion, and the Energy in a Nucleus",
  syllabus-ref: "Sec. D • Modern Physics 2",
  utme-weight: "4 Qs every year",
  running: "Radioactivity",
)

#focus-radar(
  objectives: (
    "Describe the composition of the nucleus and the meaning of isotopes.",
    "Compare alpha, beta and gamma radiation in charge, mass, speed, ionising power and penetration.",
    "Write and balance nuclear decay equations.",
    "Use the half-life to find the fraction, mass or activity remaining.",
    "Explain fission and fusion, and the origin of the energy released.",
    "Describe the uses and the hazards of radioactivity, and how a source is handled safely.",
  ),
  hotspots: (
    "“A nucleus $attach(upright(\"U\"), tl: 238, bl: 92)$ emits an alpha particle. The resulting nucleus has …” — mass number 234, atomic number 90.",
    "“A source has a half-life of 8 days. What fraction remains after 32 days?” — 1/16, because 32 days is four half-lives.",
    "“Which radiation is deflected most in a magnetic field?” — beta, because it is light and singly charged.",
    "“The count rate falls from 600 to 75 in 90 minutes. The half-life is …” — 30 minutes, since a factor of 8 means three half-lives.",
    "“In beta decay the atomic number …” — increases by one, while the mass number does not change.",
  ),
  trap-summary: "Three slips. (1) Balancing the mass numbers but forgetting the atomic numbers — a decay equation must match on both lines. (2) Counting half-lives by dividing the time by the half-life and stopping there, instead of raising $1\/2$ to that power. (3) Assuming that temperature, pressure or chemical combination can speed up or slow down decay; nothing outside the nucleus changes the rate.",
)

// ============================================================================
== 6.1 The Nucleus and the Three Radiations

Every atom has a nucleus of protons and neutrons, held together by the strong nuclear force, with electrons somewhere outside it. The *proton number* $Z$ fixes the element; the *mass number* $A$ counts all the nucleons, so the number of neutrons is $A - Z$. Nuclei with the same $Z$ but different $A$ are *isotopes*: chemically identical, physically distinguishable by mass.

#concept-box("Why some nuclei break up")[
  + The strong force holds nucleons together but only over a very short range, while the electrostatic repulsion between protons acts over the whole nucleus. In a heavy nucleus the repulsion nearly wins.
  + A nucleus that is not quite stable will eventually eject something, and the three ways it does so are alpha, beta and gamma emission.
  + The decay is *spontaneous* and *random*: nothing outside the nucleus can start it, speed it up or slow it down.
]

#formula-box("The three, in one line each")[
  + *Alpha* — a helium nucleus, charge $+2e$, mass number 4.
  + *Beta* — a fast electron from the nucleus, charge $-1e$, mass number 0.
  + *Gamma* — a photon of very short wavelength: no charge and no mass.

  They differ enormously in what they do to matter, and section 6.4 sorts them by penetrating power and ionising power.
]

// ============================================================================
== 6.2 Writing Decay Equations

A nuclear equation must balance on both lines — mass numbers at the top, atomic numbers at the bottom — because nothing is created or destroyed, only rearranged.

#formula-box("The three changes")[
  + *Alpha decay:* $A$ falls by 4 and $Z$ falls by 2, as in $attach(upright("U"), tl: 238, bl: 92) -> attach(upright("Th"), tl: 234, bl: 90) + attach(upright("He"), tl: 4, bl: 2)$.
  + *Beta decay:* $A$ is unchanged and $Z$ rises by 1, because a neutron has turned into a proton and an electron: $attach(upright("C"), tl: 14, bl: 6) -> attach(upright("N"), tl: 14, bl: 7) + attach(upright("e"), tl: 0, bl: -1)$.
  + *Gamma emission:* neither number changes. The nucleus merely drops to a lower energy state, so only the energy is carried away.

  In every case, check the totals on both sides. A beta particle is written $attach(upright("e"), tl: 0, bl: -1)$: mass number 0, charge −1.
]

#worked-example(
  1,
  "Balancing an alpha decay",
  [A nucleus of radium-226, $attach(upright("Ra"), tl: 226, bl: 88)$, decays by emitting an alpha particle. Write the equation and identify the new element.],
  [
    Mass number: $226 - 4 = 222$. Atomic number: $88 - 2 = 86$.

    So $attach(upright("Ra"), tl: 226, bl: 88) -> attach(upright("Rn"), tl: 222, bl: 86) + attach(upright("He"), tl: 4, bl: 2)$.

    *Check.* Element 86 is radon, and the totals balance: 226 on both sides at the top, 88 on both at the bottom. Alpha decay always moves the nucleus two places to the left in the periodic table.

    This is the first step of the uranium series that ends at lead, and it is why radon — a gas — collects in the basements of buildings above granite.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "A beta decay and the antineutrino",
  [Carbon-14 decays to nitrogen-14. Write the equation and say what happens to the neutron that changes.],
  [
    $attach(upright("C"), tl: 14, bl: 6) -> attach(upright("N"), tl: 14, bl: 7) + attach(upright("e"), tl: 0, bl: -1)$

    A neutron in the nucleus turns into a proton, and the electron is created and ejected at the moment of decay — it is not one of the atom's orbital electrons.

    *Check.* Top line: $14 = 14 + 0$. Bottom line: $6 = 7 + (-1)$. Both balance. A beta particle is emitted with an antineutrino, which carries away some energy and momentum but is not needed for the bookkeeping in the exam.

    Because the atomic number rises, beta decay moves the nucleus one place to the *right* — the opposite direction to alpha decay.
  ],
  tier: "FOUNDATION",
)

#trap-box("Two lines, both balanced")[
  Most lost marks in this topic come from a half-balanced equation: the mass numbers have been checked and the atomic numbers have not. Write the two rows out separately, add each column, and then move on. An equation that balances at the top but not at the bottom is not a small slip — it is a wrong element.
]

// ============================================================================
== 6.3 Half-Life and the Decay Law

No one can say which nucleus in a sample will decay next, but a large sample obeys a law of remarkable precision: in any fixed interval, a fixed *fraction* of the nuclei present will decay.

#formula-box("Half-life")[
  + The *half-life* $t_(1\/2)$ is the time for half the nuclei present to decay.
  + After $n$ half-lives the fraction remaining is $(1\/2)^n$, so the number left is $N_0 \/ 2^n$.
  + The activity (count rate, or decays per second) follows the same law, because it is proportional to the number of nuclei present.
  + The half-life cannot be changed by heating, cooling, compressing or combining the element chemically — it is set by the nucleus alone.
]

#diagram-fig("diagrams/ch06_decay.svg",
  "Half-life is a fraction, not a number. Every half-life removes half of whatever is left, so the count rate falls 800 → 400 → 200 → 100 and never quite reaches zero.", width: 100%)

#worked-example(
  3,
  "How much is left after four half-lives",
  [A sample contains $6.4 times 10^20$ atoms of a nuclide whose half-life is 5.0 days. How many atoms remain after 20 days?],
  [
    Twenty days is $20 \/ 5.0 = 4$ half-lives.

    Fraction left $= (1\/2)^4 = 1\/16$.

    $N = 6.4 times 10^20 \/ 16 = 4.0 times 10^19$ atoms.

    *Check.* The answer is a fraction of the original, not a fixed number of atoms, which is why a large sample and a small one of the same nuclide lose the same *proportion* in the same time. Also note that "after 20 days" means exactly four half-lives have passed — if the question said 22 days, the arithmetic above would not apply.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Finding a half-life from a count rate",
  [The count rate from a source falls from 960 counts per minute to 60 counts per minute in 24 hours. Find the half-life of the source.],
  [
    Each halving divides the rate by two. Count the halvings: $960 -> 480 -> 240 -> 120 -> 60$, which is 4 halvings.

    So 24 hours is 4 half-lives, and $t_(1\/2) = 24 \/ 4 = 6.0$ hours.

    *Check.* A factor of $960\/60 = 16 = 2^4$ confirms four half-lives directly, and that is the faster method: if the ratio is a power of two, the index is the number of half-lives. Had the ratio been 8, the answer would have been three half-lives, or 8 hours.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 6.4 Penetrating Power, Ionising Power and Safe Handling

Every one of the three radiations damages matter in the same way — it knocks electrons out of atoms, which is what *ionisation* means — but they do it at very different rates, and that single fact decides how each one is shielded against.

#diagram-fig("diagrams/ch06_penetration.svg",
  "The same three radiations against the same three barriers. Alpha particles are stopped by paper because they are heavy and doubly charged; beta particles need a few millimetres of aluminium; gamma rays need centimetres of lead.", width: 100%)

#formula-box("Penetration against ionising power")[
  + *Alpha:* stopped by paper or a few centimetres of air; strongly ionising, because it is heavy, doubly charged and slow enough to interact with almost every atom it passes.
  + *Beta:* stopped by a few millimetres of aluminium; moderately ionising, and it can be deflected by a magnetic field because it is charged and light.
  + *Gamma:* reduced but not stopped by several centimetres of lead; weakly ionising, because it has no charge and passes through the empty space of most atoms.

  *The more a radiation ionises, the less it penetrates.* Energy deposited in the air is energy that never reaches the detector — which is why the source that is most dangerous *inside the body* is the one that is easiest to stop outside it.
]

#concept-box("Using a source, and living with one")[
  + *Detection:* a Geiger–Müller tube counts the ionisation a radiation produces, and the count rate is corrected by subtracting the background.
  + *Background radiation* comes from cosmic rays, from radioactive rocks and the radon gas they release, and from medical exposures. It is present everywhere and must be measured before any experiment.
  + *Handling:* keep the source at a distance with tongs, keep the time short, and put lead between you and it. The dose falls sharply with distance, because the radiation spreads out in all directions.
  + *Uses:* tracers in medicine, sterilising instruments, dating rocks and once-living material, and thickness gauges in factories — each chosen for the penetration the job needs.
]

== 6.5 Nuclear Energy: Fission, Fusion and the Mass Defect

A nucleus weighs *less* than the particles that make it up. The missing mass — the *mass defect* — was converted into binding energy when the nucleus formed, and $E = m c^2$ says how much.

#concept-box("Where the energy comes from")[
  + *Binding energy* is the energy needed to pull a nucleus apart into separate nucleons. The more tightly bound a nucleus is, the larger the energy released when it forms.
  + Binding energy per nucleon rises steeply for light nuclei, peaks near iron, and then falls slowly for heavy nuclei.
  + So energy is released by *fusion* of light nuclei (moving up towards the peak) and by *fission* of heavy nuclei (also moving towards the peak). Both directions lead to the same place.
]

#diagram-fig("diagrams/ch06_split.svg",
  "Fission and fusion are the same story told in opposite directions: both take a nucleus towards the most tightly bound region, and both pay out the difference in binding energy as kinetic energy of the products.", width: 100%)

#concept-box("Fission in a reactor")[
  + A slow neutron is captured by $attach(upright("U"), tl: 235, bl: 92)$, which splits into two unequal fragments plus two or three neutrons — and releases about 200 MeV.
  + Those neutrons can split further nuclei, which is a *chain reaction*. A *moderator* (graphite or water) slows them, because slow neutrons are far more likely to be captured.
  + *Control rods* of boron or cadmium absorb neutrons. Lowered in, the reaction slows; raised, it speeds up. A steady reactor has exactly one of each fission's neutrons causing the next fission.
  + Fusion powers the Sun but is hard to run on Earth, because the nuclei repel each other and need enormous temperature and pressure to get close enough to fuse.
]

#worked-example(
  5,
  "The energy released by a mass defect",
  [In one fission of uranium-235 the total mass of the products is 0.20 u less than the mass of the reactants. Taking 1 u $= 1.66 times 10^(-27)$ kg and $c = 3.0 times 10^8$ m s⁻¹, find the energy released, in joules and in MeV.],
  [
    $Delta m = 0.20 times 1.66 times 10^(-27) = 3.3 times 10^(-28)$ kg.

    $E = Delta m c^2 = 3.3 times 10^(-28) times (3.0 times 10^8)^2 = 3.0 times 10^(-11)$ J.

    In MeV: $3.0 times 10^(-11) \/ 1.6 times 10^(-13) = 190$ MeV, which is the familiar figure of about 200 MeV per fission.

    *Check.* Compare that with a chemical reaction, where a molecule releases a few electron-volts: one fission gives roughly a hundred million times as much. That ratio — not any special property of uranium — is why a kilogram of nuclear fuel goes so much further than a kilogram of coal.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: radioactivity and nuclear physics.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A nucleus is $Z$ protons and $A - Z$ neutrons, and the mass number and atomic number are the two lines every decay equation must balance. Alpha emission takes 4 off the top and 2 off the bottom; beta emission leaves the top alone and adds 1 to the bottom, because a neutron becomes a proton and an electron; gamma emission changes neither, only the energy. The three radiations sort themselves by the same rule — the more strongly a radiation ionises, the less it penetrates — so alpha stops at paper, beta at aluminium and gamma only at lead. Decay is random per nucleus but exact per sample: every half-life halves what is left, so after $n$ half-lives the fraction is $(1\/2)^n$, and no change of temperature, pressure or chemistry alters it. Splitting a heavy nucleus or joining two light ones both release energy, because the products are more tightly bound than the reactants and the missing mass appears as energy through $E = m c^2$ — 200 MeV for a fission, 26.7 MeV for the fusion of four protons into helium.
  ]
]

// ============================================================================
== 6.6 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [A nucleus $attach(upright("U"), tl: 238, bl: 92)$ emits an alpha particle. The mass number and atomic number of the new nucleus are], [234 and 90], [234 and 94], [238 and 90], [236 and 92])
#mcq(2, [A radioactive source has a half-life of 8 days. The fraction of the original sample remaining after 32 days is], [1/2], [1/4], [1/8], [1/16])
#mcq(3, [Which of the following is *not* affected by the emission of a gamma ray from a nucleus?], [its energy], [its mass number and its atomic number], [its charge], [its stability])
#mcq(4, [In a nuclear reactor, the control rods are used to], [slow down the neutrons], [absorb neutrons and so control the rate of fission], [increase the number of neutrons], [cool the core])

#answer-key-grid(("A", "D", "B", "B"))

#answer-notes((
  ("A", [an alpha particle carries off 4 units of mass and 2 units of charge, so $238 - 4 = 234$ and $92 - 2 = 90$.]),
  ("D", [32 days is four half-lives of 8 days, so the fraction left is $(1\/2)^4 = 1\/16$.]),
  ("B", [a gamma ray carries energy and no mass or charge, so the nucleus keeps the same $A$ and $Z$ — it is left in a lower energy state.]),
  ("B", [boron or cadmium rods absorb neutrons; lowering them into the core reduces the number available and slows the chain reaction. Slowing the neutrons is the moderator's job.]),
))

#chapter-checklist("Before you leave Chapter 6", (
  [State the composition of the nucleus and define isotopes.],
  [Compare alpha, beta and gamma in charge, mass, ionising power and penetration.],
  [Balance alpha and beta decay equations, both lines.],
  [Use $(1\/2)^n$ to find the fraction, mass or activity remaining.],
  [Explain the mass defect and use $E = Delta m c^2$.],
  [Describe fission, fusion and the role of moderator and control rods.],
))

#concept-box("Carry this into the mock papers")[
  Everything in this volume now fits together: charges make fields, fields drive currents, currents make magnetic fields, and changing magnetic flux drives generators. The electron explained the valve and the transistor, the photon explained the photoelectric effect, and the nucleus explains the energy of the stars. The two mock papers that follow mix all six chapters in the proportion the CBT engine uses, so a chapter you have not revised will show up as a run of four wrong answers rather than a single slip.
]

#include "drill_ch06.typ"
