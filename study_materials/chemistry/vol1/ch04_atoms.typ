#import "template.typ": *

#current-chapter.update("Chapter 4: Atomic Structure and Isotopes")
#pagebreak()

#chapter-opener(
  4,
  "Atomic Structure and Isotopes",
  subtitle: "Protons, Neutrons and Electrons, Atomic and Mass Numbers, Isotopes and Relative Atomic Mass, Electronic Configuration in Shells and Subshells, and the Evidence That Produced the Nuclear Atom",
  syllabus-ref: "Sec. A • Topic 4",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Describe the structure of the atom and the properties of the three sub-atomic particles.",
    "Use atomic number and mass number to count protons, neutrons and electrons in atoms and ions.",
    "Define isotope and explain why isotopes have identical chemical properties.",
    "Calculate relative atomic mass from isotopic abundances.",
    "Write electronic configurations in shells and in subshell notation.",
    "Relate the outer-shell configuration to the group and the period.",
  ),
  hotspots: (
    "“The number of neutrons in an atom of mass number A and atomic number Z is …” — $A - Z$. Always subtract; never read the mass number as a neutron count.",
    "“An ion of iron-56 has 26 protons and 26 electrons” — false: Fe²⁺ has 24 electrons.",
    "“Isotopes of an element differ in …” — the number of neutrons, and therefore in mass number.",
    "“The relative atomic mass of chlorine is 35.5 because …” — the weighted mean of 35 and 37, not an average of whole numbers of atoms.",
    "“The electron configuration of $Z = 19$ is …” — 2, 8, 8, 1 — the fourth shell begins before the third is full.",
  ),
  trap-summary: "Three slips decide this chapter. (1) *Confusing mass number with neutron number.* an atom of chlorine-35 has 17 protons, 18 neutrons and 35 nucleons — subtract. (2) *Forgetting that ions have a different electron count while the nucleus is unchanged.* Electrons equal protons only in a neutral atom. (3) *Writing the fourth shell before the third is full without explanation.* Potassium is 2, 8, 8, 1 because the 4s level lies below 3d, and candidates who write 2, 8, 9 lose the mark.",
)

// ============================================================================
// SECTION 4.1
// ============================================================================
== 4.1 The Particles Inside the Atom

The nuclear model of the atom came from Rutherford's gold-foil experiment, in which a beam of alpha particles was fired at a very thin gold foil.

#diagram-fig("diagrams/ch04_atom.svg",
  "Almost every alpha particle passed straight through, a few were deflected, and a very few bounced back. The only explanation is a small, dense, positive nucleus surrounded by mostly empty space.")

#table(
  columns: (1fr, 1.1fr, 1.1fr, 1.5fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Particle],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Relative charge],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Relative mass],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where it is],
  ),
  [proton], [+1], [1], [in the nucleus],
  [neutron], [0], [1], [in the nucleus],
  [electron], [−1], [$1 div 1840$], [in shells round the nucleus],
)

Two numbers describe every nuclide.

#concept-box("Atomic number and mass number")[
  *Atomic number, $Z$* — the number of protons in the nucleus. It is the identity card of the element: every atom with $Z = 17$ is chlorine, whatever else it carries. \
  *Mass number, $A$* — the total number of protons *and* neutrons in the nucleus. \
  *Neutrons* $= A - Z$. \
  The nuclide is written $""^A_Z X$: $""^35_17 "Cl"$ has 17 protons, 18 neutrons and — because it is neutral — 17 electrons.
]

#worked-example(
  1,
  "Counting particles in atoms and ions",
  tier: "UTME STANDARD",
  [Give the number of protons, neutrons and electrons in (a) $""^23_11 "Na"$, (b) $""^23_11 "Na"^+$ and (c) $""^35_17 "Cl"^-$.],
  [
    #table(
      columns: (1.1fr, 1fr, 1fr, 1fr),
      inset: 4pt,
      align: (left + horizon, center + horizon, center + horizon, center + horizon),
      stroke: 0.4pt + jamb-border,
      fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
      table.header(
        text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Species],
        text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[protons],
        text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[neutrons],
        text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[electrons],
      ),
      [$""^23_11 "Na"$], [11], [12], [11],
      [$""^23_11 "Na"^+$], [11], [12], [10],
      [$""^35_17 "Cl"^-$], [17], [18], [18],
    )

    *The rule in one line:* an ion is made by losing or gaining *electrons* only — the nucleus never changes during ionisation. A positive ion has fewer electrons than protons; a negative ion has more.
  ],
)

#trap-box("The mass number is not the neutron number")[
  $""^23_11 "Na"$ has 12 neutrons, not 23. Candidates who read the mass number straight across as the neutron count lose this mark every year. Subtract, every time, and check that protons plus neutrons gives back the mass number.
]

// ============================================================================
// SECTION 4.2
// ============================================================================
== 4.2 Isotopes and Relative Atomic Mass

*Isotopes* are atoms of the same element with the same number of protons but different numbers of neutrons. They occupy the same place in the periodic table, hence the name, and they are chemically almost identical because chemistry is decided by the electrons — and isotopes have the same electron arrangement.

#table(
  columns: (1.15fr, 1fr, 1fr, 1fr, 1.35fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Element],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Protons],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Neutrons],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Mass number],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Abundance note],
  ),
  [chlorine-35], [17], [18], [35], [about three-quarters of all chlorine atoms],
  [chlorine-37], [17], [20], [37], [about one-quarter],
  [carbon-12], [6], [6], [12], [the mass standard; 98.9 % of carbon],
  [carbon-14], [6], [8], [14], [radioactive; used for dating],
  [hydrogen-1], [1], [0], [1], [protium, 99.98 %],
  [hydrogen-3], [1], [2], [3], [tritium, radioactive],
)

#concept-box("Relative atomic mass is a weighted mean")[
  $A_r = (("abundance" times "mass number")) div 100$ summed over every isotope. \
  Chlorine is 75 % chlorine-35 and 25 % chlorine-37, so \
  $A_r = (75 times 35 + 25 times 37) div 100 = (2625 + 925) div 100 = 35.5$. \
  That is why the periodic table prints 35.5 for chlorine and never a whole number — it is the average mass of a real mixture of atoms.
]

// ============================================================================
// SECTION 4.3
// ============================================================================
== 4.3 Electronic Configuration

Electrons occupy *shells* of increasing energy, and each shell is divided into *subshells* — $s$, $p$, $d$ and $f$ — which contain *orbitals*. An orbital holds at most two electrons, of opposite spin.

#diagram-fig("diagrams/ch04_config.svg",
  "Left: the shell picture for chlorine, 2, 8, 7. Right: the subshell picture for sodium, with the orbital boxes filled lowest-energy first.")

#concept-box("Three rules and one order")[
  *Aufbau* — electrons fill the lowest available energy level first. \
  *Pauli exclusion principle* — no orbital holds more than two electrons, and those two must have opposite spins. \
  *Hund's rule* — orbitals of equal energy fill singly, with parallel spins, before any of them is paired. \
  *Filling order:* 1s → 2s → 2p → 3s → 3p → 4s → 3d → 4p. Note that *4s comes before 3d* — which is exactly why potassium is 2, 8, 8, 1.
]

#table(
  columns: (1fr, 1.6fr, 1.4fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Element],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Subshell notation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Shell notation],
  ),
  [sodium, $Z = 11$], [$1s^2 2s^2 2p^6 3s^1$], [2, 8, 1],
  [chlorine, $Z = 17$], [$1s^2 2s^2 2p^6 3s^2 3p^5$], [2, 8, 7],
  [calcium, $Z = 20$], [$1s^2 2s^2 2p^6 3s^2 3p^6 4s^2$], [2, 8, 8, 2],
  [iron, $Z = 26$], [$1s^2 2s^2 2p^6 3s^2 3p^6 4s^2 3d^6$], [2, 8, 14, 2],
)

#worked-example(
  2,
  "Configuration, then group and period",
  tier: "UTME STANDARD",
  [(a) Write the electronic configuration of iron ($Z = 26$) in subshell notation. (b) How many unpaired electrons does a chlorine atom ($Z = 17$) have? (c) State the group and period of calcium ($Z = 20$).],
  [
    *(a)* $1s^2 2s^2 2p^6 3s^2 3p^6 4s^2 3d^6$ — eighteen in the argon core, then 4s², then six in 3d. In shell notation iron is 2, 8, 14, 2.

    *(b)* Chlorine is $1s^2 2s^2 2p^6 3s^2 3p^5$. The 3p subshell has three orbitals; the fifth electron fills the first orbital's second place, so *one* electron is unpaired — which is why chlorine forms one bond and exists as $"Cl"_2$.

    *(c)* Calcium ends in $4s^2$: two electrons in the outer shell means Group 2, and the highest shell used is the fourth, so it is in Period 4.
  ],
)

#shortcut-box("Read the group and the period straight off the configuration")[
  *Period* = the number of the highest shell occupied. *Group* = the number of electrons in the outer shell, with two exceptions: helium (2 electrons, but Group 0, not Group 2) and the transition metals (where the group is read from the $d$ electrons as well). \
  So 2, 8, 7 is Period 3, Group 7; 2, 8, 8, 2 is Period 4, Group 2.
]

// ============================================================================
// SECTION 4.4
// ============================================================================
== 4.4 The Evidence for Shells, and the Uses of Isotopes

The shell model is not a guess: two measurements prove it.

#table(
  columns: (1.25fr, 2.5fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Evidence],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it shows],
  ),
  [successive ionisation energies], [the energy needed to remove the second electron is far greater than for the first, and there are large jumps whenever a shell is emptied — so electrons really are arranged in groups at different distances],
  [line (emission) spectra], [a heated gas emits light at a few sharp wavelengths only, which means electrons can occupy only certain fixed energy levels and give out the difference as a photon when they fall back],
)

#concept-box("Ionisation energy, defined exactly")[
  The first ionisation energy is the energy needed to remove *one mole of electrons* from *one mole of gaseous atoms* to form one mole of gaseous singly positive ions. \
  $X(g) -> X^+(g) + e^-$ \
  It increases across a period (the nucleus holds the outer electrons more tightly) and decreases down a group (the outer electrons are further away and shielded). Chapter 5 uses this as one of the periodic trends.
]

Isotopes are not merely exam material; they are tools.

#table(
  columns: (1.2fr, 1.5fr, 1.5fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Isotope],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why it works],
  ),
  [carbon-14], [radio-carbon dating of once-living material], [it decays at a known rate, so the fraction left measures the age],
  [cobalt-60], [sterilising equipment and radiotherapy], [intense gamma radiation kills cells and microbes],
  [iodine-131], [tracing and treating the thyroid gland], [the thyroid absorbs iodine selectively],
  [uranium-235], [fuel for nuclear power], [its nucleus splits when struck by a slow neutron, releasing energy],
)

// ============================================================================
// SECTION 4.5 — CHECKLIST
// ============================================================================
== 4.5 Chapter 4 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + describe the proton, neutron and electron and where each is found;
  + use $""^A_Z X$ notation and calculate neutrons as $A - Z$;
  + count electrons in positive and negative ions;
  + define isotope and give two examples;
  + explain why isotopes are chemically identical;
  + calculate a relative atomic mass from percentage abundances;
  + write configurations in both shell and subshell notation;
  + state the aufbau principle, the Pauli exclusion principle and Hund's rule;
  + explain why 4s fills before 3d;
  + read the group and period from a configuration;
  + define first ionisation energy and cite two pieces of evidence for shells;
  + name a use of two different isotopes.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The atom is a tiny positive nucleus of protons and neutrons, surrounded by electrons in shells. $Z$ counts protons and fixes the element; $A$ counts protons plus neutrons, so neutrons are $A - Z$; ions differ only in electrons. Isotopes share $Z$ and differ in $A$, so they are chemically identical but have different masses, and the relative atomic mass is the abundance-weighted mean of their mass numbers. Electrons fill 1s, 2s, 2p, 3s, 3p, 4s, 3d in that order, two per orbital with opposite spins, singly in degenerate orbitals first. The outer-shell count gives the group and the highest shell gives the period, and the jumps in successive ionisation energies plus the sharp line spectra prove that the shells are real.
  ]
]

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: particles, $Z$ and $A$, isotopes and configurations.", width: 100%)

// ============================================================================
// SECTION 4.6 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 4.6 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [The number of neutrons in $""^39_19 "K"$ is], [19], [39], [20], [58])
#mcq(2, [Isotopes of an element have the same], [mass number], [number of neutrons], [number of protons], [relative atomic mass])
#mcq(3, [The electronic configuration of $""^35_17 "Cl"$ is], [2, 8, 7], [2, 8, 8], [2, 8, 5], [2, 7, 8])
#mcq(4, [The relative atomic mass of chlorine, from 75 % $""^35"Cl"$ and 25 % $""^37"Cl"$, is], [36.0], [35.5], [35.0], [37.0])

#answer-key-grid(("C", "C", "A", "B"))

#answer-notes((
  ("C", [$A - Z = 39 - 19 = 20$ neutrons.]),
  ("C", [same atomic number, so the same protons and the same chemistry; the neutrons differ.]),
  ("A", [$1s^2 2s^2 2p^6 3s^2 3p^5$ is 2, 8, 7 in shell notation.]),
  ("B", [$(75 times 35 + 25 times 37) div 100 = 35.5$.]),
))

#include "drill_ch04.typ"
