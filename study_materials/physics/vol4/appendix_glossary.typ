#import "template.typ": *

#current-chapter.update("Appendix F: Glossary")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Glossary]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Glossary]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The words an examiner uses with a precise meaning, defined in a line each. When a question turns on the difference between two of these, the difference is usually the answer.]
]

#v(5pt)

#table(
  columns: (1.45fr, 2.95fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
  ),
  [alpha particle], [a helium nucleus, two protons and two neutrons, emitted by a heavy nucleus; charge +2e, mass number 4],
  [ammeter], [an instrument for measuring current, connected in series and of very low resistance],
  [ampere], [the unit of current: one coulomb of charge passing a point each second],
  [beta particle], [a fast electron created and emitted when a neutron in a nucleus turns into a proton],
  [capacitance], [the charge a capacitor holds per volt of p.d. across it, $C = Q\/V$, measured in farads],
  [charge], [the property of matter that causes electrostatic force; measured in coulombs, quantised in units of $e$],
  [commutator], [the split-ring contact that reverses the current in a motor coil every half turn],
  [conductor], [a material in which charge is free to move, so that charge resides on its outside and the field inside is zero],
  [Coulomb's law], [the force between two point charges is proportional to the product of the charges and inversely proportional to the square of their separation],
  [current], [the rate of flow of charge, $I = Q\/t$, measured in amperes],
  [decay constant], [the probability per unit time that a given nucleus will decay; it fixes the half-life],
  [depletion layer], [the region either side of a p–n junction from which free carriers have been cleared, leaving a barrier p.d.],
  [diode], [a p–n junction that conducts in one direction only, used for rectification],
  [doping], [the deliberate addition of a small amount of impurity to a semiconductor to supply electrons or holes],
  [e.m.f.], [the energy supplied by a source per unit charge driven round the circuit; measured in volts],
  [eddy current], [a circulating current induced in a bulk conductor by a changing magnetic flux, which wastes energy as heat],
  [electric field intensity], [the force per unit positive charge at a point, $E = F\/q$, in N C⁻¹ or V m⁻¹],
  [electromagnetic induction], [the production of an e.m.f. in a conductor by a changing magnetic flux through it],
  [electron volt], [the energy gained by an electron accelerated through 1 V; $1.6 times 10^(-19)$ J],
  [electroscope], [a device with a gold leaf that indicates the presence and sign of charge],
  [Faraday's law], [the induced e.m.f. is proportional to the rate of change of magnetic flux linkage],
  [fission], [the splitting of a heavy nucleus into two lighter ones, releasing energy and neutrons],
  [flux density], [the magnetic flux per unit area perpendicular to the field, $B$; measured in teslas],
  [fusion], [the joining of two light nuclei to form a heavier one, releasing the difference in binding energy],
  [gamma ray], [a photon of very short wavelength emitted by an excited nucleus; no charge and no mass],
  [half-life], [the time taken for half the nuclei in a sample to decay],
  [hole], [a vacancy in the bonding of a semiconductor that behaves as a positive charge carrier],
  [induction, charging by], [giving a conductor a net charge by bringing a charged body near it and earthing it temporarily],
  [internal resistance], [the resistance of the source itself, which makes the terminal p.d. fall as the current rises],
  [isotopes], [nuclei with the same number of protons but different numbers of neutrons],
  [kilowatt-hour], [the energy used by a 1 kW appliance in 1 hour; $3.6 times 10^6$ J],
  [Lenz's law], [an induced current flows in the direction that opposes the change producing it],
  [logic gate], [a circuit with one output whose state is fixed by the combination of its digital inputs],
  [mass defect], [the difference between the mass of a nucleus and the total mass of its separate nucleons],
  [moderator], [a material in a reactor that slows neutrons so that they are more easily captured by uranium-235],
  [momentum], [mass multiplied by velocity; the quantity that sets a particle's de Broglie wavelength],
  [neutral point], [a point in a field where the resultant field or force is zero],
  [nucleon], [a proton or a neutron — the particles that make up a nucleus],
  [ohmic conductor], [a conductor whose resistance is constant, so that current is proportional to p.d.],
  [parallel], [components connected across the same p.d.; currents add, and the combined resistance is smaller than any of them],
  [photoelectric effect], [the emission of electrons from a surface when light of sufficiently high frequency falls on it],
  [photon], [a quantum of electromagnetic energy, of energy $h f$],
  [p–n junction], [the boundary between p-type and n-type semiconductor, which conducts in one direction only],
  [potential difference], [the energy converted from electrical to other forms per unit charge between two points],
  [power], [the rate of transfer of energy, $P = I V = I^2 R = V^2\/R$, in watts],
  [rectification], [the conversion of alternating current into direct current using diodes],
  [resistivity], [the resistance of a sample of unit length and unit cross-section, $rho = R A \/ l$, in $Omega$ m],
  [series], [components connected one after another, so the same current passes through each; p.d.s add],
  [solenoid], [a coil of wire whose field is that of a bar magnet when it carries a current],
  [stopping potential], [the reverse p.d. that just prevents the fastest photoelectrons from reaching the anode],
  [thermionic emission], [the escape of electrons from a hot metal surface],
  [transformer], [two coils sharing a magnetic core, used to change an alternating voltage],
  [transistor], [a three-terminal semiconductor device in which a small base current controls a large collector current],
  [work function], [the minimum energy needed to remove an electron from the surface of a metal],
)
