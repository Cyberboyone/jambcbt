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

== A.1 The Novel, Fact by Fact

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.35fr, 1.85fr),
  inset: (x: 6pt, y: 5.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Bepo's school], [Stardom Schools, Lekki],
  [Bepo's post], [principal — the headmaster of the title],
  [The managing director], [Mrs Ibidun Gloss],
  [The vice principal], [Mrs Grace Apeh],
  [The chairman of the board], [Chief Mrs Solape Bayo],
  [The founder of the school], [Chief David Aje],
  [Bepo's wife], [Seri],
  [Bepo's daughters], [Nike and Kike],
  [Seri's work abroad], [nursing, in the United Kingdom],
  [Bepo's salary at Stardom], [₦400,000 a month],
  [The UK post's pay], [about £3,600 a month],
  [Seri's pay abroad], [about £10,000 a month],
  [The cooperative's purse], [about ₦95 million],
  [The cap on any one loan], [₦250,000],
  [The teacher who left with a loan], [Mr Nku — ₦2 million],
  [The English teacher], [Mr Fafore],
  [The teacher who dismisses the assembly], [Mr Justus Anabel],
  [The school counsellor], [Mrs Beke Egbin],
  [The school nurse], [Mrs Titi],
  [Bepo's landlord], [Mr Ogunwale, who drives a Honda Pilot],
)
]

#pagebreak()

== A.2 The Paper, Rule by Rule

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.35fr, 1.85fr),
  inset: (x: 6pt, y: 5.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Chapter 1], [*Dusk*],
  [Chapter 12], [*…Dawn*],
  [Chapter 5], [*Snake in the Roof*],
  [Chapter 6], [*Ade as Well as Jide COMES vs. COME*],
  [Chapter 9], [*Laughing Waterfalls*],
  [Chapter 10], [*Passport Pains*],
  [The number of the enslaved in Bepo's dream], [seven million],
  [The museum at Badagry], [the Black Heritage Museum],
  [The site of departure at Badagry], [the Point of No Return],
  [The origin of the name *Badagry*], [*Agbadarigi*],
  [The narration], [third person, limited to Bepo],
  [Time for the ten reading-text questions], [about four minutes],
  [Questions in the Use of English paper], [sixty],
  [Time for the paper], [about forty minutes],
  [Seconds a question allows], [forty],
  [What a blank answer costs], [a quarter of a mark],
  [The two words that turn a question inside out], [EXCEPT and NOT],
  [The block to answer first], [the reading text],
  [The consonant in *those*], [/ð/ — voiced],
  [The stress in *photographer*], [the second syllable],
)
]

#v(4pt)

#shortcut-box("How to use the pairs")[
  + Three passes on the first day: all forty, then the ones you missed, then the ones you missed twice.
  + On every later day, read only the missed column — but read it *aloud*, because the voice is what the exam will ask you to mark.
  + A pair you answer in under five seconds is finished; strike it out so that the list shrinks as the examination approaches.
]
