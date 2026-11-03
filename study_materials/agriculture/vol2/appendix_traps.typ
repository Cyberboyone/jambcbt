#import "template.typ": *

#current-chapter.update("Appendix J: The Trap File")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix J: The Trap File]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Trap File]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    Twenty-four ways the examiner builds a distractor. Each row is a wrong answer that looks
    right: read the trap, cover the correction, and say why it fails.
  ]
]

#v(6pt)

== J.1 Twenty-Four Traps

#table(
  columns: (0.38fr, 1.55fr, 1.60fr, 1.85fr),
  inset: (x: 5pt, y: 2.7pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[What it looks like],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Why it fails],
  ),
  [1], [the near-miss figure], ["gestation of the ewe: 150 days"], [150 is the doe; the ewe is 148],
  [2], [the adjacent chamber], ["the chamber that absorbs water: rumen"], [the omasum absorbs; the rumen ferments],
  [3], [the wrong vector], ["babesiosis is spread by the tsetse fly"], [the tsetse carries trypanosomiasis; the tick carries babesia],
  [4], [the antibiotic for a virus], ["Newcastle disease is treated with oxytetracycline"], [an antibiotic has no effect on a virus],
  [5], [the species swap], [*Ovis aries* is the goat], [*Ovis* is sheep; the goat is *Capra hircus*],
  [6], [the unit slip], ["0.2 AU means 0.2 kg"], [AU is a fraction of a 450 kg cow, not a weight in kilograms],
  [7], [the ratio reversed], ["Pearson square gives 9 parts maize to 36 of cake"], [the parts belong opposite their own value],
  [8], [the fixed cost counted twice], ["the gross margin is ₦100 000, so profit is ₦100 000"], [net profit subtracts the fixed cost as well],
  [9], [the yield as profit], ["revenue of ₦600 000 is a profit of ₦600 000"], [profit is what is left after cost],
  [10], [the date off by a programme], ["marketing boards were dissolved in 1976"], [1976 is Operation Feed the Nation; the boards went in 1986],
  [11], [the name of the wrong programme], ["Anchor Borrowers began in 2011"], [2011 is the Agricultural Transformation Agenda; Anchor Borrowers is 2015],
  [12], [the cooperative principle], ["a cooperative shares its surplus by shares held"], [a cooperative shares by patronage; a company shares by shares],
  [13], [the vector called the host], ["the cow is the vector of trypanosomiasis"], [the cow is the host; the tsetse is the vector],
  [14], [the deficiency called a disease], ["rickets is an infectious disease of chicks"], [rickets is a calcium, phosphorus and vitamin D deficiency],
  [15], [the disease that is not zoonotic], ["coccidiosis is a zoonosis"], [the zoonoses are anthrax, brucellosis, TB and rabies],
  [16], [the wrong stock density], ["deep litter carries 25 birds per square metre"], [25 is the brooder figure; deep litter is about 10],
  [17], [the brooding arithmetic], ["the brooder falls 5 °C a week"], [it falls 3 °C a week from 32 – 35 °C],
  [18], [the pond before the lime], ["stock the pond the day the lime is spread"], [wait for the water to settle and colour],
  [19], [the surface gasping read as hunger], ["fish at the surface are asking for more feed"], [they are short of oxygen; feeding makes it worse],
  [20], [the wrong product for a limed pond], ["lime is added to fertilise the pond"], [lime corrects pH; manure fertilises],
  [21], [the castrated female], ["a barrow is a young female pig"], [a barrow is a castrated male; a gilt is the young female],
  [22], [the record that is not financial], ["an egg collection sheet is a financial record"], [it is a production record; it records no money],
  [23], [the land that depreciates], ["land is depreciated over twenty years"], [land is not depreciated; it does not wear out],
  [24], [the extension that runs one way], ["extension is the passing of research to the farmer"], [it is two-way; the problem travels back],
)

== J.2 The Examiner's Three Favourite Words

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + trap-red, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: trap-red)[FIRST: "MAINLY"]
  #v(3pt)
  #text(size: 9.6pt)[
    "The main reason a farmer keeps a goat is" — four of the five options may be true, and the
    mark is for the one that is the *main* reason. Ask which answer the other answers depend on.
  ]
]

#v(4pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + trap-red, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: trap-red)[SECOND: "EXCEPT"]
  #v(3pt)
  #text(size: 9.6pt)[
    Four options belong together and one does not. Read the stem as "which one is not", cover
    each option in turn and ask whether it belongs with the other four. Underline EXCEPT the
    moment you see it; candidates who miss it lose a mark they knew.
  ]
]

#v(4pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + trap-red, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: trap-red)[THIRD: "BEST"]
  #v(3pt)
  #text(size: 9.6pt)[
    "The best method of controlling ticks is" — two options work, and one works better, cheaper
    or more safely. The best answer is the one that solves the problem at the point where the
    problem lives: a tick on the skin is killed on the skin.
  ]
]

#v(5pt)

#text(size: 9.3pt)[
  A last piece of arithmetic for the hall: forty questions in forty-five minutes is a little over
  a minute each. Every trap in this file is a thirty-second decision, and a candidate who reads
  the stem twice spends it well.
]

#pagebreak(weak: true)
