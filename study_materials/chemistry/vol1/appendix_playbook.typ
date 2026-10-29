#import "template.typ": *

#current-chapter.update("Appendix K: The Exam-Day Playbook")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix K: The Exam-Day Playbook]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Exam-Day Playbook]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Fifty facts to read the night before, then the four minutes before you start, then the last ten minutes before you submit. Nothing new is learned in the final week — only kept.]
]

#v(4pt)

== K.1 Fifty Facts for the Last Night

#[
  #set text(size: 8.8pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 14pt,
    row-gutter: 3.2pt,
    [
      #set text(size: 8.8pt)
      • A mole is $6.02 times 10^23$ particles. \
      • Molar mass in grams equals $M_r$. \
      • 22.4 dm³ per mole at s.t.p.; 24 dm³ at r.t.p. \
      • $n = m div M_r = V div 22.4 = c times V$. \
      • Empirical = simplest ratio; molecular = empirical × n. \
      • Balance the equation before you use the ratio. \
      • The limiting reagent decides the yield. \
      • Boyle: $P_1 V_1 = P_2 V_2$ at constant $T$. \
      • Charles: $V_1 div T_1 = V_2 div T_2$ at constant $P$. \
      • Pressure law: $P_1 div T_1 = P_2 div T_2$ at constant $V$. \
      • Kelvin = Celsius + 273. Always. \
      • $P V = n R T$ with $R = 8.31$. \
      • Dalton: partial pressures add. \
      • Graham: rate ∝ $1 div sqrt(M_r)$. \
      • Pressure comes from collisions per unit area. \
      • Mean kinetic energy depends only on temperature. \
      • Real gases deviate at high pressure, low temperature. \
      • $Z$ = protons; $A$ = protons + neutrons. \
      • Neutrons $= A - Z$. \
      • Isotopes: same $Z$, different $A$. \
      • Ions differ only in electrons. \
      • Electron mass is about $1 div 1840$ u. \
      • Configuration order: 1s 2s 2p 3s 3p 4s 3d. \
      • 4s fills before 3d. \
      • Two electrons per orbital, opposite spins. \
      • Hund: single occupancy first. \
      • Group = outer electrons; period = shells used. \
      • Ionisation energy needs *gaseous* atoms. \
    ],
    [
      #set text(size: 8.8pt)
      • Radius falls across a period, rises down a group. \
      • Ionisation energy rises across, falls down. \
      • Metallic character rises down, falls across. \
      • Group I: one outer electron, reactivity rises down. \
      • Group VII: seven outer electrons, reactivity falls down. \
      • Group 0: full shell, unreactive, monatomic. \
      • Oxides: metal basic, non-metal acidic, Al amphoteric. \
      • Transition metals: variable oxidation states, coloured, catalytic. \
      • Ionic: metal + non-metal, lattice, high m.p. \
      • Covalent: sharing, simple or giant. \
      • Metallic: ions in a sea of electrons. \
      • Ionic solids conduct only when molten or dissolved. \
      • Metals conduct when solid. \
      • Diamond: giant covalent, hardest, no conduction. \
      • Graphite: layers, conducts, lubricates. \
      • Co-ordinate bond: both electrons from one atom. \
      • Hydrogen bonds need N, O or F. \
      • Ice is less dense than water. \
      • Four pairs: tetrahedral, 109.5°. \
      • One lone pair: 107°. Two: 104.5°. \
      • $"CO"_2$ linear, $"BF"_3$ trigonal planar. \
      • Water conducts? Only with dissolved ions. \
      • Halogen colours deepen down the group. \
      • Flame tests: Na yellow, K lilac, Ca brick red, Cu blue-green. \
      • $"BaCl"_2$ + sulphate gives a white precipitate insoluble in acid. \
      • $"AgNO"_3$ + chloride gives a white precipitate soluble in ammonia. \
      • Limewater milky identifies carbon dioxide. \
      • Read the meniscus at the bottom, eye level. \
    ],
  )
]

== K.2 The Four Minutes Before You Start

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #set text(size: 9.8pt)
  *1.* Read the instructions on the screen once, slowly. Confirm the number of questions and the time. \
  *2.* Write the constants you always forget on your rough sheet: 22.4, 24, 8.31, 6.02 × 10²³, 273. \
  *3.* Plan the first pass: answer every question you can do in under a minute before touching a calculation that needs two steps. \
  *4.* Breathe out once. The paper is the same paper you have practised six times.
]

== K.3 The Last Ten Minutes

#table(
  columns: (1.4fr, 2.6fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Check],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you are looking for],
  ),
  [blanks], [every question has an answer — there is no negative marking, so a guess beats a gap],
  [units], [mol, g, dm³, mol dm⁻³, kJ mol⁻¹ — a bare number is half an answer],
  [powers of ten], [did you divide by 1000 for cm³, and add 273 for °C?],
  [the question asked], [mass or moles? volume at s.t.p. or r.t.p.? formula or name?],
  [flagged questions], [return to them only after the first pass is complete],
  [the submit button], [press it once, with time to spare, and not in the last thirty seconds],
)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-navy)[A last word] \
  #v(3pt)
  #text(size: 9.9pt)[
    Chemistry rewards the candidate who knows which relationship applies, not the one who remembers the most numbers. If a question looks unfamiliar, ask three questions in order: *what kind of substance is this?* — element, compound, ion, gas; *what quantity is given, and in what unit?*; *which relationship connects it to what is asked?* Nine questions in ten are answered by that sequence alone.
  ]
]
