#import "template.typ": *

#current-chapter.update("Appendix E: The Oral Forms Map")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Oral Forms Map]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Oral Forms Map]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The forty-four sounds in one table, twelve stress rules in one column, and the five shapes the oral-form questions take.
  ]
]

#v(5pt)

== E.1 The Sounds, in One Table

#table(
  columns: (1.5fr, 3.2fr, 1.5fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Group],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Sounds, with one example each],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Chapter],
  ),
  [Pure vowels], [/i:/ seat · /ɪ/ sit · /e/ bed · /æ/ bad · /ɑ:/ car · /ɒ/ hot], [5],
  [ ], [/ɔ:/ saw · /ʊ/ book · /u:/ food · /ʌ/ cup · /ɜ:/ bird · /ə/ about], [5],
  [Glides], [/eɪ/ day · /aɪ/ my · /ɔɪ/ boy · /aʊ/ now · /əʊ/ go · /ɪə/ here · /eə/ hair · /ʊə/ tour], [5],
  [Voiceless stops], [/p/ pin · /t/ tin · /k/ coat], [5],
  [Voiced stops], [/b/ bin · /d/ din · /g/ goat], [5],
  [Voiceless fricatives], [/f/ fan · /θ/ thin · /s/ sip · /ʃ/ shoe], [5],
  [Voiced fricatives], [/v/ van · /ð/ then · /z/ zip · /ʒ/ vision], [5],
  [Affricates], [/tʃ/ chin · /dʒ/ gin], [5],
  [Nasals], [/m/ man · /n/ no · /ŋ/ sing], [5],
  [Others], [/l/ leg · /r/ red · /j/ yes · /w/ wet · /h/ hat], [5],
)

#v(3pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[Twenty-four consonants and twenty vowels make forty-four sounds against twenty-six letters. The paper never asks you to write a symbol; it asks which word contains the sound, which is a listening question with a symbol attached.]

== E.2 Twelve Stress Rules

#table(
  columns: (0.5fr, 2.6fr, 1.9fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The rule],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Example],
  ),
  [1], [-tion, -sion, -cian: stress the syllable before], [eDUcation, deCIsion],
  [2], [-ic, -ical, -ically: stress the syllable before], [ecoNOmic, poLItical],
  [3], [-ity, -ify, -ogy: stress three from the end], [aBIlity, biOLogy],
  [4], [-ee, -eer, -ese, -ette: stress the last], [refuGEE, ChiNESE],
  [5], [Two syllables, noun or adjective: first], [TAble, HAPpy],
  [6], [Two syllables, verb: second], [beGIN, deCIDE],
  [7], [Noun and verb of one spelling: stress moves with the job], [REcord / reCORD],
  [8], [Compound nouns: first element], [BLACKbird, GREENhouse],
  [9], [Adjective + noun: both, with the noun stronger], [black BIRD],
  [10], [Prefixes are usually unstressed], [unHAPpy, reWRITE],
  [11], [Words ending in -graphy, -logy, -metry: the syllable before], [phoTOgraphy, geOmetry],
  [12], [The unstressed vowel reduces to /ə/], [about, sofa, support],
)

#v(3pt)

== E.3 The Five Shapes of an Oral-Form Question

#table(
  columns: (1.8fr, 2.0fr, 1.8fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The question],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What you do],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The trap],
  ),
  [“Which word contains the same vowel sound as X?”], [say X, hold the vowel, test each option], [the spelling of the vowel],
  [“Which word contains the sound /θ/?”], [test voicing at the throat], [the two th sounds treated as one],
  [“Which syllable is stressed?”], [read backwards from the ending], [counting from the front],
  [“The intonation of … is”], [decide whether it wants yes/no or information], [punctuation mistaken for tune],
  [“Which word rhymes with X?”], [compare from the stressed vowel to the end], [the last letter of each word],
)
