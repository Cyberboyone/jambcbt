#import "template.typ": *

#current-chapter.update("Appendix A: 40 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 40 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[40 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty one-line questions with the answer beside each. Cover the right-hand column with a sheet of paper and work down the list — twenty seconds a line. Anything you cannot answer in twenty seconds is a chapter to reread tonight.]
]

#v(5pt)

== A.1 The First Twenty

#[
  #set text(size: 8.4pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 5.60pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [A magnetic field line is a line along which], [a small north pole would point],
    [In a p-type semiconductor the majority carriers are], [holes],
    [The stopping potential in a photoelectric experiment is 1.5 V. The maximum kinetic energy of the electrons is], [1.5 eV],
    [A chain reaction is described as controlled when, on average,], [one neutron from each fission causes one more fission],
    [The electric field inside a charged hollow conductor is], [zero],
    [Two resistors in parallel have a combined resistance of 3.0 Ω. One of them is 12 Ω. The other is], [4.0 Ω],
    [A soft-iron core is placed inside a solenoid. The field inside the solenoid], [is greatly increased],
    [The resistance of a thermistor with a negative temperature coefficient], [falls as it warms],
    [An electron in a hydrogen atom falls from $n = 3$ to $n = 2$. The photon energy is], [1.9 eV],
    [The control rods in a reactor are made of a material that], [absorbs neutrons],
    [A charged body attracts a neutral insulator because the insulator], [becomes polarised],
    [A galvanometer of resistance 5.0 Ω reads full scale at 10 mA. To use it as a voltmeter reading 5.0 V, it needs a series resistor of], [495 Ω],
    [The pattern of the magnetic field around a long straight wire consists of], [circles centred on the wire],
    [A transistor with no base current and a collector supply connected is], [off, with almost no collector current],
    [The photoelectric current is *zero* when], [the frequency is below the threshold],
    [After emitting a beta particle, a nucleus of $attach(upright("P"), tl: 32, bl: 15)$ becomes], [$attach(upright("S"), tl: 32, bl: 16)$],
    [Which quantity is a scalar?], [electric potential],
    [A wire of resistance 8.0 Ω is stretched until its length is doubled, its volume staying the same. Its new resistance is], [32 Ω],
    [A charged particle moving parallel to a magnetic field feels], [no magnetic force],
    [A transistor has β = 150 and a base current of 20 µA. The collector current is], [3.0 mA],
  )
]

#pagebreak()

== A.2 The Second Twenty

Twenty more, in the same format. If a line takes longer than twenty seconds, the chapter to reread is the one printed in your head beside it — write the number down and treat the list as a revision order, not a score.

#[
  #set text(size: 8.4pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 5.60pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [The photoelectric effect is evidence for], [the particle nature of light],
    [A source has a half-life of 6.0 hours. What fraction of it remains after 24 hours?], [1/16],
    [Electrostatic precipitators clean chimney smoke because], [charged dust particles are attracted to earthed plates],
    [The terminal p.d. of a cell falls as the current drawn rises because], [the cell has internal resistance],
    [The device that uses electromagnetic induction to charge a car battery from the engine is the], [alternator],
    [In an n-type semiconductor the majority carriers are], [electrons],
    [A graph of stopping potential against frequency for two different metals gives], [the same gradient but different intercepts],
    [An alpha particle is identical to], [a helium nucleus],
    [Two charges of 3.0 µC each are 0.30 m apart. The force between them is], [0.90 N, repulsive],
    [The current through a filament lamp is plotted against p.d. The graph curves because], [the resistance rises as the filament heats],
    [Two parallel wires carry currents in opposite directions. The force between them is], [repulsive],
    [The barrier p.d. of a silicon p–n junction is about], [0.7 V],
    [Light of 2.0 × 10¹⁵ Hz falls on a metal of work function 4.0 eV. The maximum kinetic energy is about], [4.3 eV],
    [Two samples of the same isotope have different masses. After one half-life,], [each has lost half of its own mass],
    [The electric field between two parallel plates is uniform, so the force on a charge placed between them], [is the same everywhere between the plates],
    [A cell of e.m.f. 4.5 V and internal resistance 0.50 Ω delivers 1.0 A. The terminal p.d. is], [4.0 V],
    [Increasing the number of turns on an electromagnet], [strengthens the field],
    [The time base of an oscilloscope is applied to], [the horizontal plates],
    [The photoelectric effect cannot be explained by the wave theory of light because], [there is a threshold frequency and emission is instantaneous],
    [The count rate from a source falls from 400 to 50 counts per minute in 45 minutes. The half-life is], [15 min],
  )
]


Three lines that are worth more than a fourth reading of the list: an answer you had to work out is not yet an answer you know; the chapter beside the line is where to go, not the page; and a line you miss twice in a fortnight is a gap in the *chapter*, not in your memory of the list.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[THE TWENTY-SECOND RULE]
  #v(4pt)
  #text(size: 10.1pt)[
    Twenty seconds is chosen because it is roughly the time a CBT question gives you. If a line here takes longer, you will not have it in the hall either — not because you never learned it, but because it is not yet automatic. Read the chapter, redo the drill question on that line, then come back to the list and time yourself again on the same line only.
  ]
]

