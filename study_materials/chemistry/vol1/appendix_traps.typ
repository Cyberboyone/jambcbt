#import "template.typ": *

#current-chapter.update("Appendix J: The Twelve Traps, Worked")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix J: The Twelve Traps, Worked]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Twelve Traps, Worked]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Each trap is set out the same way: the tempting answer, the reason it tempts, the correct answer, and the sentence that earns the mark. Read one a night in the final fortnight.]
]

#v(4pt)

#block(width: 100%, fill: trap-bg, stroke: 1pt + trap-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[TRAP 1 · The mass of one mole of oxygen]
  #v(3pt)
  #text(size: 9.8pt)[
    *Tempting answer:* 16 g, because the relative atomic mass of oxygen is 16. \
    *Why it tempts:* the periodic table prints 16 next to O, and candidates read it straight off. \
    *Correct answer:* 32 g. Oxygen exists as $"O"_2$, so $M_r = 2 times 16 = 32$. \
    *Sentence for the exam:* “The molar mass is the mass of the formula as written; O₂ has two atoms.”
  ]
]

#block(width: 100%, fill: trap-bg, stroke: 1pt + trap-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[TRAP 2 · Celsius in a gas-law ratio]
  #v(3pt)
  #text(size: 9.8pt)[
    *Tempting answer:* 27 °C doubled is 54 °C, so the volume doubles. \
    *Why it tempts:* the question gives Celsius and the numbers look friendly. \
    *Correct answer:* convert first. 27 °C is 300 K, so doubling the volume needs 600 K, which is 327 °C — a very different number. \
    *Sentence for the exam:* “Charles' law needs absolute temperature, so both values must be in kelvin.”
  ]
]

#block(width: 100%, fill: trap-bg, stroke: 1pt + trap-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[TRAP 3 · The impurity that raises the melting point]
  #v(3pt)
  #text(size: 9.8pt)[
    *Tempting answer:* an impurity raises the melting point, since it “adds something”. \
    *Why it tempts:* adding anything feels like adding strength. \
    *Correct answer:* an impurity *lowers* the melting point and broadens it. It *raises* the boiling point of a liquid. \
    *Sentence for the exam:* “The impurity disrupts the lattice, so the solid melts earlier and over a range.”
  ]
]

#block(width: 100%, fill: trap-bg, stroke: 1pt + trap-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[TRAP 4 · Mass number read as neutrons]
  #v(3pt)
  #text(size: 9.8pt)[
    *Tempting answer:* chlorine-35 has 35 neutrons. \
    *Why it tempts:* the big number sits beside the symbol and looks like the neutron count. \
    *Correct answer:* 35 is the mass number, so neutrons $= 35 - 17 = 18$. \
    *Sentence for the exam:* “Neutrons are the mass number minus the atomic number.”
  ]
]

#block(width: 100%, fill: trap-bg, stroke: 1pt + trap-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[TRAP 5 · Ions with the wrong electron count]
  #v(3pt)
  #text(size: 9.8pt)[
    *Tempting answer:* an $"Fe"^(2+)$ ion has 26 electrons, because iron has 26 protons. \
    *Why it tempts:* the two are equal in a neutral atom, so the habit carries over. \
    *Correct answer:* 24 electrons. Ionisation changes electrons only. \
    *Sentence for the exam:* “A 2+ ion has lost two electrons; the nucleus is unchanged.”
  ]
]

#block(width: 100%, fill: trap-bg, stroke: 1pt + trap-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[TRAP 6 · 2, 8, 9 instead of 2, 8, 8, 1]
  #v(3pt)
  #text(size: 9.8pt)[
    *Tempting answer:* fill the third shell to nine electrons before starting the fourth. \
    *Why it tempts:* the shell pattern 2, 8, 8 looks like a rule to be beaten. \
    *Correct answer:* 4s lies below 3d, so potassium is 2, 8, 8, 1. \
    *Sentence for the exam:* “The fourth shell begins before the third is full because 4s is lower in energy than 3d.”
  ]
]

#block(width: 100%, fill: trap-bg, stroke: 1pt + trap-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[TRAP 7 · Reactivity that runs the wrong way]
  #v(3pt)
  #text(size: 9.8pt)[
    *Tempting answer:* reactivity falls down Group I and rises down Group VII. \
    *Why it tempts:* it is exactly reversed, and reversal is the commonest memory error in the syllabus. \
    *Correct answer:* metals become *more* reactive downwards; non-metals become *less* reactive downwards. \
    *Sentence for the exam:* “Caesium is the most reactive Group I metal; fluorine is the most reactive halogen.”
  ]
]

#block(width: 100%, fill: trap-bg, stroke: 1pt + trap-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[TRAP 8 · Aluminium oxide called acidic]
  #v(3pt)
  #text(size: 9.8pt)[
    *Tempting answer:* acidic, because aluminium is on the right-hand side of the metals. \
    *Why it tempts:* the oxide does dissolve in alkali, so half the evidence points that way. \
    *Correct answer:* amphoteric — it reacts with acids *and* alkalis. \
    *Sentence for the exam:* “Aluminium oxide is amphoteric: it forms a salt with both hydrochloric acid and sodium hydroxide.”
  ]
]

#block(width: 100%, fill: trap-bg, stroke: 1pt + trap-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[TRAP 9 · Molecules of sodium chloride]
  #v(3pt)
  #text(size: 9.8pt)[
    *Tempting answer:* sodium chloride is made of NaCl molecules. \
    *Why it tempts:* every other formula the candidate meets behaves that way. \
    *Correct answer:* it is a lattice of $"Na"^+$ and $"Cl"^-$ ions, in the ratio 1 : 1, with no discrete molecules. \
    *Sentence for the exam:* “The formula of an ionic compound gives the ratio of ions in the lattice, not a molecule.”
  ]
]

#block(width: 100%, fill: trap-bg, stroke: 1pt + trap-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[TRAP 10 · Conduction blamed on electrons in an ionic melt]
  #v(3pt)
  #text(size: 9.8pt)[
    *Tempting answer:* molten sodium chloride conducts because its electrons are free. \
    *Why it tempts:* conduction is usually electrons, and that is true for metals. \
    *Correct answer:* molten sodium chloride conducts because its *ions* are free to move. \
    *Sentence for the exam:* “The mobile charge carriers in an ionic melt are the ions themselves.”
  ]
]

#block(width: 100%, fill: trap-bg, stroke: 1pt + trap-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[TRAP 11 · A covalent substance assumed to be a gas]
  #v(3pt)
  #text(size: 9.8pt)[
    *Tempting answer:* diamond is covalent, so it must have a low melting point. \
    *Why it tempts:* the covalent substances met first are gases and liquids. \
    *Correct answer:* diamond is a giant covalent network; every bond must be broken to melt it, so its melting point is extremely high. \
    *Sentence for the exam:* “Covalent bonding gives a low melting point only when the substance is simple molecular.”
  ]
]

#block(width: 100%, fill: trap-bg, stroke: 1pt + trap-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[TRAP 12 · Tetrahedral angles for every four-pair molecule]
  #v(3pt)
  #text(size: 9.8pt)[
    *Tempting answer:* ammonia has an H–N–H angle of 109.5°, because it has four pairs. \
    *Why it tempts:* the arrangement is based on a tetrahedron, so the textbook number is close. \
    *Correct answer:* 107°, because one lone pair repels more strongly than a bond pair. Water, with two lone pairs, is 104.5°. \
    *Sentence for the exam:* “Count the pairs, then subtract about 2.5° for every lone pair.”
  ]
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[The pattern behind all twelve] \
  #v(3pt)
  #text(size: 9.9pt)[
    Every trap in this appendix is a *plausible habit* applied in the wrong place: the atomic mass used for a molecular substance, the Celsius number used as a kelvin temperature, the electron count of a neutral atom used for an ion, the trend in one group borrowed for another. In the exam hall, the defence is always the same question — *what kind of substance, and which quantity, am I actually being asked about?*
  ]
]
