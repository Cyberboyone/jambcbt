#import "template.typ": *

#current-chapter.update("Chapter 5: Atomic Physics")

#pagebreak()

#chapter-opener(
  5,
  "Atomic Physics and the Photoelectric Effect",
  subtitle: "The Electron, Energy Levels and Line Spectra, the Photoelectric Effect and Einstein's Equation, X-rays, and Wave–Particle Duality",
  syllabus-ref: "Sec. D • Modern Physics 1",
  utme-weight: "4 Qs every year",
  running: "Atomic Physics",
)

#focus-radar(
  objectives: (
    "Describe the evidence for the electron and for the nuclear atom.",
    "Explain energy levels and the production of line spectra.",
    "State the photoelectric effect and use Einstein's equation $h f = W + 1\/2 m v^2$.",
    "Explain the existence of a threshold frequency and the effect of intensity.",
    "Describe the production and properties of X-rays.",
    "State the evidence for wave–particle duality.",
  ),
  hotspots: (
    "“Light of frequency 6.0 × 10¹⁴ Hz falls on a metal of work function 2.0 eV. The maximum kinetic energy of the photoelectrons is …” — 0.48 eV, once $h f$ is converted.",
    "“Increasing the intensity of light below the threshold frequency produces …” — no photoelectrons at all, however bright.",
    "“The energy of a photon of wavelength 400 nm is …” — 5.0 × 10⁻¹⁹ J.",
    "“In the photoelectric effect, doubling the intensity doubles …” — the *number* of photoelectrons, not their maximum energy.",
    "“Line spectra are evidence for …” — discrete energy levels in the atom.",
  ),
  trap-summary: "Three slips. (1) Using the intensity to explain the kinetic energy: intensity sets how many electrons leave, and frequency sets how fast they leave. (2) Mixing electron-volts and joules: $h f$ comes out in joules, and a work function quoted in eV must be converted, or both sides put in eV. (3) Forgetting the threshold: a photon below $f_0$ does nothing at all, no matter how many arrive.",
)

// ============================================================================
== 5.1 The Electron and the Nuclear Atom

The electron was discovered by J.J. Thomson in 1897 while he was studying cathode rays. He showed that the rays were streams of particles with a definite charge-to-mass ratio, and that the same particles came out of every metal he tried. Millikan's oil-drop experiment then measured the charge on a single electron, and the mass followed from Thomson's ratio.

#concept-box("What the experiments established")[
  + The electron carries a charge of $e = 1.6 times 10^(-19)$ C and has a mass of $9.1 times 10^(-31)$ kg — about $1\/1836$ of the mass of a hydrogen atom.
  + Because the atom is neutral, the positive charge must be concentrated in a very small *nucleus*: Rutherford's alpha-particle scattering showed that most of the atom is empty space, with almost all the mass and all the positive charge at the centre.
  + The electrons occupy the space round the nucleus, and they can only carry certain amounts of energy — the *energy levels* of section 5.2.

  The nucleus is about $10^(-14)$ m across and the atom about $10^(-10)$ m, so the atom is some ten thousand times wider than its nucleus.
]

// ============================================================================
== 5.2 Energy Levels and Line Spectra

An atom cannot hold an arbitrary amount of energy. Its electrons occupy *discrete energy levels*, and an electron may only jump from one level to another — never sit between them. That single restriction explains the whole of line spectra.

#formula-box("Energy levels and photons")[
  + *A jump down* emits a photon whose energy is exactly the difference between the two levels: $h f = E_2 - E_1$, so $f = (E_2 - E_1)\/h$ and $lambda = h c \/(E_2 - E_1)$.
  + *A jump up* absorbs exactly the same energy — which is why an atom only absorbs light at the frequencies it can emit.
  + *Hydrogen:* $E_n = -(13.6)\/n^2$ eV, so the ground state is −13.6 eV and the ionisation energy is 13.6 eV.

  The jumps to $n = 2$ give the visible Balmer series; jumps to $n = 1$ give the ultraviolet Lyman series. The larger the drop, the greater the frequency and the shorter the wavelength.
]

#diagram-fig("diagrams/ch05_levels.svg",
  "Energy levels and the spectrum they produce. Each downward jump emits a photon of one exact energy, so the spectrum is a set of sharp lines rather than a continuous band — and the pattern of lines is a fingerprint of the element.", width: 100%)

*Emission and absorption.* A hot gas *emits* bright lines at the frequencies it can produce. The same gas, cool and in front of a hot continuous source, *absorbs* those same frequencies and leaves dark lines in the continuous spectrum. The two patterns are exact complements, and either one identifies the element — which is how the helium in the Sun was found before it was found on Earth.

#worked-example(
  1,
  "The photon from a hydrogen transition",
  [An electron in a hydrogen atom falls from the $n = 3$ level to the $n = 2$ level. Taking $E_n = -(13.6)\/n^2$ eV and $h = 6.6 times 10^(-34)$ J s, find (a) the energy of the emitted photon in eV and in joules, and (b) its frequency.],
  [
    *(a)* $E_3 = -13.6\/9 = -1.51$ eV and $E_2 = -13.6\/4 = -3.40$ eV.

    $Delta E = 3.40 - 1.51 = 1.89$ eV $= 1.89 times 1.6 times 10^(-19) = 3.0 times 10^(-19)$ J.

    *(b)* $f = (Delta E)\/h = (3.0 times 10^(-19))\/(6.6 times 10^(-34)) = 4.6 times 10^14$ Hz.

    *Check.* That frequency corresponds to a wavelength of about 650 nm — red light, and the familiar red line of hydrogen at 656 nm. The small difference is because the constants have been rounded to two figures. A drop to $n = 1$ from the same level would be five times larger, putting it in the ultraviolet.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The energy of a photon from its wavelength",
  [Light of wavelength 500 nm falls on a metal surface. Taking $h = 6.6 times 10^(-34)$ J s, $c = 3.0 times 10^8$ m s⁻¹ and $e = 1.6 times 10^(-19)$ C, find the energy of one photon in joules and in electron-volts.],
  [
    $E = (h c)\/lambda = (6.6 times 10^(-34) times 3.0 times 10^8) \/ (5.0 times 10^(-7))$.

    $E = 3.96 times 10^(-19)$ J, which is $3.96 times 10^(-19) \/ 1.6 times 10^(-19) = 2.5$ eV.

    *Check.* 500 nm is green light, and 2.5 eV is a typical photon energy for the visible region — the whole visible spectrum runs from about 1.8 eV (red) to 3.1 eV (violet). A metal with a work function below 2.5 eV, such as caesium at 2.1 eV, will emit electrons in green light; zinc, at 4.3 eV, will not, however bright the light is.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 5.3 The Photoelectric Effect

Shine ultraviolet light on a clean zinc plate and electrons come off it. That is the *photoelectric effect*, and the details of it broke the wave theory of light completely.

#concept-box("What is observed")[
  + Electrons are emitted only if the frequency of the light is above a *threshold frequency* $f_0$, which depends on the metal.
  + Below $f_0$ there is no emission at all, however intense the light and however long it is left on.
  + Above $f_0$, emission is *instantaneous*, even in very dim light.
  + Increasing the intensity increases the *number* of electrons per second, not their maximum kinetic energy.
  + Increasing the frequency increases the maximum kinetic energy of the electrons.
]

None of those facts can be explained by a wave. A wave of sufficient intensity should eventually supply enough energy to any electron, so dim red light would work after a delay, and the threshold frequency would not exist. Einstein's explanation (1905) was that light arrives in packets, or *photons*, each carrying energy $h f$ — and one photon interacts with one electron in a single event.

#formula-box("Einstein's photoelectric equation")[
  $h f = W + 1\/2 m v^2$

  + $h f$ — the energy of the incoming photon,
  + $W$ — the *work function* of the metal, the least energy needed to remove an electron,
  + $1\/2 m v^2$ — the maximum kinetic energy of the emitted electron.

  At the threshold, $h f_0 = W$. The equation also gives the *stopping potential*: the reverse p.d. $V_s$ just able to stop the fastest electrons satisfies $e V_s = 1\/2 m v^2$.
]

#diagram-fig("diagrams/ch05_photoelectric.svg",
  "Two graphs that settle the argument. Brighter light gives a larger current but the same stopping potential, so intensity does not change the energy of the electrons. Maximum kinetic energy against frequency is a straight line that begins at the threshold frequency, and its gradient is Planck's constant.", width: 100%)

#worked-example(
  3,
  "The maximum kinetic energy of a photoelectron",
  [Light of frequency $6.0 times 10^14$ Hz falls on a metal surface whose work function is 2.0 eV. Taking $h = 6.6 times 10^(-34)$ J s and $e = 1.6 times 10^(-19)$ C, find (a) the energy of the photon in eV and (b) the maximum kinetic energy of the emitted electrons.],
  [
    *(a)* $E = h f = 6.6 times 10^(-34) times 6.0 times 10^14 = 3.96 times 10^(-19)$ J.

    In electron-volts: $3.96 times 10^(-19) \/ (1.6 times 10^(-19)) = 2.48$ eV.

    *(b)* $1\/2 m v^2 = h f - W = 2.48 - 2.0 = 0.48$ eV $= 7.7 times 10^(-20)$ J.

    *Check.* The photon energy is comfortably above the work function, so emission happens; if the frequency had been lower than $f_0 = W\/h = 2.0 times 1.6 times 10^(-19) \/ 6.6 times 10^(-34) = 4.8 times 10^14$ Hz there would have been no emission at all. Note that the answer is a *maximum* — electrons deeper in the metal lose more energy on the way out and emerge more slowly.
  ],
  tier: "UTME STANDARD",
)

#trap-box("Intensity is not energy")[
  The most common error in this topic is to think that brighter light gives faster electrons. It does not. Intensity is the number of photons arriving per second, so doubling it doubles the number of photoelectrons; the energy of each photon, and therefore the maximum kinetic energy of the electrons, depends only on the *frequency*. A question that says "the intensity is doubled" and then asks about the kinetic energy is testing exactly this sentence.
]

// ============================================================================
== 5.4 X-Rays

X-rays are produced when fast electrons are stopped by a heavy metal target — the reverse of the photoelectric effect. Electrons accelerated through tens of kilovolts strike a tungsten target, lose their kinetic energy in collisions, and the energy appears as electromagnetic radiation of very short wavelength.

#diagram-fig("diagrams/ch05_xray.svg",
  "The X-ray tube. Electrons boiled off the cathode are accelerated by a high p.d. and stopped in a tungsten target; the spectrum has a continuous part from the deceleration and sharp peaks from electron transitions inside the target atoms.", width: 100%)

The shortest wavelength produced corresponds to an electron giving up *all* its energy in one collision, so $e V = h c \/ lambda_min$. X-rays have a wavelength of the order of $10^(-10)$ m — comparable with the spacing of atoms in a crystal — which is why they penetrate flesh but are stopped by bone, and why they can be diffracted by a crystal lattice.

#worked-example(
  4,
  "The shortest wavelength from an X-ray tube",
  [An X-ray tube is operated at 40 kV. Taking $h = 6.6 times 10^(-34)$ J s, $c = 3.0 times 10^8$ m s⁻¹ and $e = 1.6 times 10^(-19)$ C, find the shortest wavelength of X-ray the tube can produce.],
  [
    An electron giving up all its energy in one collision satisfies $e V = (h c)/(lambda_min)$.

    $lambda_min = (h c)\/(e V) = (6.6 times 10^(-34) times 3.0 times 10^8) \/ (1.6 times 10^(-19) times 4.0 times 10^4)$

    $lambda_min = (1.98 times 10^(-25)) \/ (6.4 times 10^(-15)) = 3.1 times 10^(-11)$ m, about 0.031 nm.

    *Check.* That is smaller than the spacing between atoms in a crystal (about 0.2 nm), which is exactly why X-rays can be diffracted by a crystal and why they pass through flesh. Raising the tube voltage increases the electron energy and *shortens* the minimum wavelength, giving harder, more penetrating X-rays.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 5.5 Wave–Particle Duality

Light behaves as a wave in interference and diffraction, and as a particle in the photoelectric effect. The resolution is not that one view is right: light is neither a classical wave nor a classical particle, and the experiment you choose decides which behaviour you see.

#concept-box("Duality, both ways")[
  + *Light* has a particle nature: photons of energy $h f$, with the photoelectric effect as the evidence.
  + *Matter* has a wave nature: a particle of momentum $p$ has a de Broglie wavelength $lambda = h \/ p$, and electron beams diffract through a thin crystal exactly as light diffracts through a grating.
  + The two are linked by $p = h \/ lambda$ and $E = h f$, which apply to photons and to electrons alike.

  The de Broglie wavelength of an everyday object is far too small to detect — a cricket ball's is about $10^(-34)$ m — which is why only electrons, neutrons and small atoms show measurable diffraction.
]

#worked-example(
  5,
  "The de Broglie wavelength of an electron",
  [An electron is accelerated through a p.d. of 100 V. Taking $m = 9.1 times 10^(-31)$ kg and $h = 6.6 times 10^(-34)$ J s, find its de Broglie wavelength.],
  [
    First the speed, from the energy: $1\/2 m v^2 = e V = 1.6 times 10^(-19) times 100 = 1.6 times 10^(-17)$ J.

    $v = sqrt((2 times 1.6 times 10^(-17))\/(9.1 times 10^(-31))) = 5.9 times 10^6$ m s⁻¹.

    Then $p = m v = 9.1 times 10^(-31) times 5.9 times 10^6 = 5.4 times 10^(-24)$ kg m s⁻¹.

    $lambda = h \/ p = (6.6 times 10^(-34))\/(5.4 times 10^(-24)) = 1.2 times 10^(-10)$ m.

    *Check.* That is about the size of an atom, and the same order as the spacing in a crystal — which is exactly why a beam of 100 V electrons can be diffracted by a thin metal film, and why the experiment is a standard school demonstration. A 100 V electron has a wavelength comparable with X-rays of the same energy.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: atomic physics.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    An atom is a small dense nucleus inside a cloud of electrons, and those electrons may only hold certain energies — the energy levels. When an electron drops from one level to a lower one it emits a photon of exactly the difference, $h f = E_2 - E_1$, and the set of allowed drops produces the sharp lines of the element's spectrum: bright lines in emission, dark lines in absorption. Shine light on a metal and electrons come off, but only if each photon carries enough energy to pay the work function, $h f = W + 1\/2 m v^2$; below the threshold frequency nothing happens however bright the light, which no wave theory can explain. Intensity sets how *many* electrons leave, frequency sets how fast they leave. Stop the electrons with a small reverse p.d. and you measure their maximum energy. X-rays are the same physics reversed — electrons stopped in a heavy target — and their short wavelength makes them penetrate. And the traffic runs both ways: photons behave as particles here, while electrons diffract as waves with $lambda = h\/p$.
  ]
]

// ============================================================================
== 5.6 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [The energy of a photon of frequency $5.0 × 10^14$ Hz is ($h = 6.6 × 10^-34$ J s)], [3.3 × 10⁻¹⁹ J], [1.3 × 10⁻¹⁹ J], [6.6 × 10⁻¹⁹ J], [1.3 × 10⁻¹⁸ J])
#mcq(2, [In the photoelectric effect, increasing the intensity of the incident light above the threshold increases], [the maximum kinetic energy of the electrons], [the number of electrons emitted per second], [the threshold frequency], [the work function of the metal])
#mcq(3, [Line spectra are evidence that], [atoms are indivisible], [electrons have a negative charge], [energy levels in atoms are discrete], [light is a wave])
#mcq(4, [An electron falls from $n = 4$ to $n = 2$ in a hydrogen atom. The emitted radiation lies in the], [ultraviolet], [infrared], [X-ray region], [visible])

#answer-key-grid(("A", "B", "C", "D"))

#answer-notes((
  ("A", [$E = h f = 6.6 times 10^(-34) times 5.0 times 10^14 = 3.3 times 10^(-19)$ J.]),
  ("B", [intensity is photons per second, so more photons means more electrons; the energy of each electron is set by the frequency alone.]),
  ("C", [a line spectrum can only come from a set of discrete energies, so the levels inside the atom must be discrete.]),
  ("D", [$E_4 - E_2 = 0.85 - 3.40$ gives 2.55 eV, which is a wavelength of about 486 nm — the blue-green line of the Balmer series, in the visible.]),
))

#chapter-checklist("Before you leave Chapter 5", (
  [State the charge and mass of the electron, and the evidence for a nuclear atom.],
  [Explain why line spectra are discrete, and use $h f = E_2 - E_1$.],
  [State the five observations of the photoelectric effect.],
  [Use $h f = W + 1\/2 m v^2$ and find the threshold frequency.],
  [Describe how X-rays are produced and one use of their short wavelength.],
  [Explain wave–particle duality and use $lambda = h\/p$.],
))

#concept-box("Carry this into Chapter 6")[
  Energy levels are stable because the nucleus is stable — but not all nuclei are. Some break up spontaneously, emitting alpha particles, beta particles or gamma rays, and the rate at which they do it is fixed by the nucleus and by nothing else. Chapter 6 is the account of that decay, and of the energy it releases.
]

#include "drill_ch05.typ"
