#import "template.typ": *

#current-chapter.update("Appendix F: Eight Essay Plans")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Eight Essay Plans]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Eight Essay Plans]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Eight questions of the kind the paper asks, each planned on one page: a claim, three
    units with the evidence you need, a concession and a verdict. Learn the *shape*, not
    the wording — the same five moves work for any question in the syllabus.
  ]
]

#v(5pt)

#let plan(n, question, claim, units, concession, verdict) = block(
  width: 100%,
  breakable: false,
  above: 8pt,
  below: 8pt,
  fill: white,
  stroke: 0.8pt + jamb-border,
  radius: 7pt,
  inset: 11pt,
)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-bright)[PLAN #n]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 10.4pt, weight: "bold", fill: jamb-navy)[#question]
  #v(4pt)
  #set text(size: 9.5pt)
  #grid(
    columns: (0.78fr, 3.42fr),
    column-gutter: 8pt,
    row-gutter: 3pt,
    align: (left + top, left + top),
    [*Claim*], [#claim],
    [*Units*], [#units],
    [*Concession*], [#concession],
    [*Verdict*], [#verdict],
  )
]

#plan(
  1,
  [“Othello is destroyed by Iago, not by himself.” How far do you agree?],
  [The play makes the destruction possible by giving Othello a demand for proof and giving Iago the supply of it.],
  [(i) 1.3 — Othello's eloquence wins the Duke, establishing that a story counts as evidence. (ii) 3.3 — “*Chaos is come again*”: he accepts Iago's premise before any proof exists. (iii) 5.2 — he kills on a handkerchief and a story, and defends himself in the same eloquence that once saved him.],
  [Iago could do nothing with a man who refused to test his wife — the play shows that resistance is possible in Cassio's case and absent in Othello's.],
  [Iago supplies the method; Othello supplies the willingness. Responsibility is shared, and the tragedy is that the sharing is invisible to Othello himself.],
)

#plan(
  2,
  [“Desdemona is a passive victim.” How far does the play support this?],
  [She is obedient in action and decisive in speech, and the play's tragedy is that her speech is not treated as evidence.],
  [(i) 1.3 — she chooses her husband in public against her father. (ii) 3.4 and 4.2 — she answers every charge plainly and is not heard. (iii) 5.2 — “*Nobody; I myself*” takes the blame for her own killing.],
  [She never resists physically, and her obedience to Othello's commands is real, so “passive” is not simply false.],
  [The passivity is in the world's response to her, not in her character. She is active in speech and powerless in evidence, and the play makes the difference the tragedy.],
)

#plan(
  3,
  [“In *Native Son*, Bigger's violence is the product of his environment.” Discuss.],
  [The novel explains the violence structurally and refuses to let the explanation function as an excuse.],
  [(i) Book One — the rat, the kitchenette, the relief office. (ii) Book Two — the furnace and the press manufacturing a story. (iii) Book Three — Max's explanation, and the court's inability to hear it.],
  [Bessie's killing is deliberate and chosen, and the novel does not hide the choice behind the structure.],
  [The environment produces the possibility; the choices remain Bigger's. The novel holds both, which is why neither “victim” nor “monster” will do.],
)

#plan(
  4,
  [“The Daltons are more dangerous than Buckley.” How far do you agree?],
  [The Daltons are dangerous because their kindness is the system's public face; Buckley is dangerous because he is its instrument.],
  [(i) Book One — the house, the blind mother, the job arranged by relief. (ii) Book Two — the rent that Bigger's mother pays to the same family. (iii) Book Three — Buckley's interrogation and the trial.],
  [Buckley actually kills Bigger, and the Daltons neither intend harm nor know what their money does.],
  [Intent is not the measure of danger in this novel. The Daltons make the world that Buckley administers, and the novel's anger is aimed at the making.],
)

#plan(
  5,
  [“In *Harvest of Corruption*, Aloho is as guilty as the Minister.” Discuss.],
  [The play distributes guilt unevenly: Aloho consents to a job she does not understand, and the Minister manufactures the trap she falls into.],
  [(i) the Ministry — the post created for her. (ii) the Akpara Hotel — the package handed over as a duty. (iii) the airport — the arrest, and the release bought by the Minister.],
  [She is ambitious and ignores Ogeyi's warnings, which is a real moral failure and not a trivial one.],
  [The failure is credulity; the crime is design. The play's tragedy is that the law can only see the courier.],
)

#plan(
  6,
  [“*Faceless* is a novel about a murder.” How far do you agree?],
  [The murder is the plot's occasion, not its subject: the novel is about the conditions that made a child unrecordable.],
  [(i) the market — a body left where nobody is obliged to look. (ii) Fofo's account — the sale arranged inside the family. (iii) the ending — one child saved where the system remains.],
  [The murder does drive every scene, and without it no investigation would exist.],
  [The plot is a murder; the argument is a system. The title names the second, and the ending refuses to pretend the first has been solved by it.],
)

#plan(
  7,
  [“Yaremi's refusal to remarry is an act of selfishness.” Discuss.],
  [The refusal is an assertion of ownership over a name and a house that custom has already begun to reassign.],
  [(i) the cap-picking — three caps refused in public. (ii) Segi's visit and Woye's departure — the cost is borne by others too. (iii) the elders' sentence and the tearing of the cloth.],
  [Her refusal does cost Woye his company and Segi her peace, so the charge is not baseless.],
  [Selfishness assumes she had a choice that cost her nothing. The novel shows her choosing the only act of ownership available, and paying for it in full.],
)

#plan(
  8,
  [Compare the treatment of a vulnerable young person in *Faceless* and *Harvest of Corruption*.],
  [Both texts make the vulnerable young person a currency, but where the novel recovers a witness, the play only recovers a body.],
  [(i) *Faceless* — Fofo is taken into protection and given a future. (ii) *Harvest* — Aloho is recruited, used and killed in childbirth. (iii) both — the institution (MUTE, the Ministry) decides whether the person is recorded or consumed.],
  [Both texts also show adults who try to help — Kabria and Ogeyi — so the difference is not simply optimism versus pessimism.],
  [The difference is what the institution does with the helper. MUTE employs Kabria's conscience; the Ministry employs Ochuole's ambition. That is the comparison's verdict.],
)

#concept-box("How to use a plan under time")[
  In the exam you will not write the plan out. Learn the five moves — claim, three units,
  concession, verdict — and let them order the sentences as you write. A candidate who
  knows the moves can plan in fifteen seconds; a candidate who does not will write four
  paragraphs and discover the argument in the last one.
]
