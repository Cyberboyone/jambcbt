#import "template.typ": *

#current-chapter.update("Appendix E: A Glossary of Criticism")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: A Glossary of Criticism]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[A Glossary of Criticism]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Forty-eight terms, alphabetical, each in one sentence. The definitions are the ones
    this book uses, which are the ones a mark scheme will accept: short, functional, and
    phrased so that they can be dropped into an answer without rewriting.
  ]
]

#v(5pt)

#[
  #set text(size: 7.9pt)
  #set par(leading: 0.6em, spacing: 0.62em)
#table(
  columns: (1.25fr, 2.95fr),
  inset: (x: 5pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Definition],
  ),
  [*Allegory*], [a narrative whose figures and events stand for a second, unstated order of meaning],
  [*Antagonist*], [the force that obstructs the protagonist's want, which need not be a villain],
  [*Arc*], [the change in what a character is willing to do or lose],
  [*Aside*], [a remark spoken for the audience and not heard by the company on stage],
  [*Bank (a text bank)*], [a table of units recording who is present, what changes and the words to quote],
  [*Catharsis*], [the audience's purging of pity and fear at the close of a tragedy],
  [*Chorus*], [the figure or body that speaks the world's judgement or frames the action],
  [*Claim*], [a sentence about a text that can be disputed and defended],
  [*Climax*], [the point at which the central want can no longer be avoided],
  [*Comic relief*], [a release of tension that sharpens the surrounding seriousness by contrast],
  [*Confidant*], [the figure who receives speech the protagonist cannot make public],
  [*Counter-evidence*], [the moment in a text that resists your claim and must be answered],
  [*Criterion*], [the standard by which “more effective” is judged],
  [*Denouement*], [the unknotting that follows the reversal],
  [*Dialogue as action*], [speech understood as something done rather than something reported],
  [*Diction*], [the choice of words, and the register those choices establish],
  [*Dramatic irony*], [a gap between what the audience knows and what a character knows],
  [*Foil*], [a near-parallel whose difference makes the protagonist legible],
  [*Free indirect discourse*], [third-person narration that carries a character's idiom and knowledge],
  [*Function*], [what a character, scene or device does for the whole text],
  [*Hamartia*], [the error of judgement that begins a tragic fall],
  [*Hubris*], [the pride that refuses the limits the text has established],
  [*Image*], [a concrete detail that carries meaning beyond its literal sense],
  [*In medias res*], [beginning inside the action, before any explanation],
  [*Irony*], [a gap between statement and meaning, or between expectation and outcome],
  [*Ledger (a theme ledger)*], [a four-column table of claim, units, evidence and counter-evidence],
  [*Mechanism*], [the relation between words or events that produces an effect],
  [*Metaphor*], [a comparison that asserts identity rather than resemblance],
  [*Monologue*], [a long speech delivered in the presence of others],
  [*Motif*], [a recurring image or phrase that gathers meaning as it recurs],
  [*Narrator*], [the constructed teller of a prose text, distinct from the author],
  [*Peripeteia*], [the reversal of a protagonist's fortune],
  [*Persona*], [the voice a text constructs, which is not the author],
  [*Presented as*], [a stem asking for method rather than summary],
  [*Protagonist*], [the figure whose want organises the text],
  [*Setting*], [place, time and social world understood as pressure on the characters],
  [*Soliloquy*], [a speech delivered alone, revealing inward thought],
  [*Stage direction*], [the playwright's control of what is seen and heard beyond dialogue],
  [*Structure*], [the arrangement of a text's parts and the order in which knowledge is given],
  [*Subtext*], [what the words imply rather than state],
  [*Symbol*], [a concrete thing carrying an unstated abstract meaning],
  [*Tableau*], [a still grouping arranged to make a picture of a relationship],
  [*Theme*], [what a text says about its subject, phrased as an arguable claim],
  [*Tone*], [the attitude a text takes towards its subject],
  [*Tragic flaw*], [the quality in a tragic protagonist that makes the catastrophe possible],
  [*Turn*], [what has changed by the last line of a unit],
  [*Verdict*], [the judgement a comparison reaches after both texts have been tested],
  [*Witness*], [the figure who sees, reports, and is changed by reporting],
)

]
