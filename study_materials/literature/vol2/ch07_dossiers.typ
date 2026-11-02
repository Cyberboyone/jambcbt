#import "template.typ": *

#current-chapter.update("Chapter 7: The Three African Texts")

#pagebreak()

#chapter-opener(
  7,
  "The Three African Texts: Dossiers",
  subtitle: "Harvest of Corruption · Faceless · Lonely Days — World, Spine, Cast, Five Moments, Three Claims, Likely Questions",
  syllabus-ref: "Sections 1–2 • Drama and Prose",
  utme-weight: "8 Qs a year",
  running: "The Three African Texts",
)

#focus-radar(
  objectives: (
    "Hold each dossier's world, spine and cast without rereading the text.",
    "Name five moments per text that can carry almost any question.",
    "State three defensible claims per text.",
    "Prepare a text you have read once, quickly, without pretending to have read it twice.",
    "Move between the three texts without confusing their characters.",
    "Take a set of questions that mixes all three.",
  ),
  hotspots: (
    "A dossier is not a summary: it is a *retrieval structure* — world, spine, cast, moments, claims.",
    "*Harvest of Corruption* is a play about a system, and Aloho is the system's receipt.",
    "*Faceless* is an investigation novel: the plot is a search, and the search is the theme.",
    "*Lonely Days* is a novel of a single consciousness against a village, and the village is not a villain but a procedure.",
    "Names travel badly between texts. Keep the three casts on separate pages and test yourself across them.",
  ),
  trap-summary: "Two failures. (1) Using a dossier as a substitute for reading the text — it is a retrieval structure, and it only works on material that is already there. (2) Mixing the three casts, which the exam exploits by asking about a minor figure whose name appears in only one text.",
)

// ============================================================================
== 7.1 What a Dossier Is

#diagram-fig("diagrams/ch07_dossier.svg",
  "The five parts of a dossier. World and spine get you orientated; cast, moments and claims are what answers are made of.", width: 100%)

#table(
  columns: (1.05fr, 2.1fr, 1.7fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it gives you],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[How to use it],
  ),
  [*World*], [the setting, the institutions, the rules], [answers about context and pressure],
  [*Spine*], [the story in six beats, each a change], [answers about structure and turning points],
  [*Cast*], [wants, obstacles, functions], [answers about character],
  [*Moments*], [five scenes that carry several questions], [evidence, when you cannot recall a line],
  [*Claims*], [three arguable sentences], [the opening of any essay-shaped answer],
)

#concept-box("The honest dossier")[
  A dossier built before reading is worthless; one built after a single reading is worth a great deal.
  The rule is: read once, then build. From then on your revision is the dossier, not the text — and the
  moments list tells you exactly which pages to reopen when a claim needs checking.
]

// ============================================================================
== 7.2 *Harvest of Corruption* — Frank Ogodo Ogbeche

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[WORLD]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[Jacassa — a fictional Nigerian city whose institutions are all for sale. The Ministry of External Relations in Maisama, the police headquarters at Darkin, Madam Hoha's Akpara Hotel, Ogeyi's small apartment in Pannya, and the courtroom. Every location is a place where a public function has a private price.]
]

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[SPINE]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[(1) Aloho, a jobless graduate, meets Ochuole, an old classmate now a senior officer at the Ministry. (2) Ochuole recruits her as a “protocol officer” for the Minister, Chief Ade Haladu-Amaka. (3) Aloho is used as a courier and arrested abroad with drugs in her luggage. (4) The Chief buys the case and she is released — then finds she is pregnant by him. (5) She dies in childbirth, and the investigation led by ACP Yakubu brings the network down. (6) The sentences are handed out: the Chief, the judge, the Commissioner, Ochuole, Madam Hoha, and the clerk who sold the documents.]
]

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[CAST]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[*Aloho* — wants a job and a life; obstructed by her own naivety and by a system that sells both. Function: the receipt the system issues. *Ogeyi* — wants her friend safe; the play's conscience and its only successful witness. *Chief Ade Haladu-Amaka* — wants everything; the Minister in whom public trust and private appetite are the same appetite. *Ochuole* — wants advancement; the recruiter, and the play's proof that the system recruits its own victims as its agents. *Madam Hoha* — wants the hotel full; the venue that makes corruption look like hospitality. *ACP Yakubu* — wants the case; the one official whose function is not for sale.]
]

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[MOMENTS]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[the job offer at the Ministry; the package handed over at the hotel; the airport arrest; the release, and the pregnancy discovered after it; the sentencing, where each sentence is a *harvest* in the title's sense.]
]

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[CLAIMS]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[(1) The play argues that corruption is not an exception in Jacassa but the ordinary medium in which careers are made. (2) Aloho's death is not the punishment of a criminal but the cost of a system that consumes the vulnerable first. (3) Justice in the play arrives only through an individual's incorruptibility, which is the play's optimism and its warning at once.]
]

#trap-box("The trap in this text")[
  Candidates write that the play “shows corruption in Nigeria” and stop. The play is more specific: it shows
  a *pipeline* — a graduate is recruited, transported, protected and discarded — and the specificity is what
  earns marks. Name the ministry, the hotel, the courier's job title.
]

#worked-example(
  1,
  "A claim for *Harvest of Corruption*",
  [Which sentence would make the best opening claim for an answer on *Harvest of Corruption*?

    A. The play is about corruption in Africa. \\
    B. In the play, corruption works like an employment agency: it recruits the people it will later consume. \\
    C. Aloho is a very unfortunate girl. \\
    D. The play has many characters and a court scene.],
  [
    *Step 1 — apply the verb test.* A and C use *is*; D lists features. Only B has a verb — *recruits* — that names a mechanism.

    *Step 2 — test the claim against the text.* Ochuole recruits Aloho; the Ministry employs her; the network protects her and then abandons her. B predicts all three.

    *Step 3 — check the essay it opens.* B commits you to discussing Ochuole, the job, the arrest and the release. That is an essay.

    *Check.* Could a marker disagree with B? Yes — that disagreement is the essay. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 7.3 *Faceless* — Amma Darko

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[WORLD]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[Accra, and specifically the slum called Sodom and Gomorrah beside the Agbogbloshie market. Two worlds share the novel: Kabria's household, with a car nicknamed Creamy and three children in school, and the market, where children sleep under stalls. MUTE, an NGO that documents what the city would rather not record, is the bridge.]
]

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[SPINE]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[(1) Fofo, fourteen and living on the street, learns that her sister Baby T's body has been found behind a kiosk. (2) She is caught stealing Kabria's purse at the market and is rescued by her instead of beaten. (3) MUTE takes her into protection and begins to investigate. (4) The story of Baby T is assembled: abuse by her mother's lover Kpakpo, rape by the neighbour Onko, sale into prostitution by way of Madam Abidjan and Maami Broni, and finally the killing. (5) Poison, the street lord, and Onko are implicated; the investigation makes the traffic in children visible. (6) Fofo is given a future — school, and a room — and the novel ends with a promise that is personal rather than systemic.]
]

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[CAST]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[*Fofo* — wants her sister's death to matter; obstructed by the silence of everyone who profits from it. Function: the witness who is also a child. *Baby T* — the girl whose face the city refused to recognise; her function is to be the absence the plot circles. *Maa Tsuru* — wants to survive and to keep a man; the mother whose helplessness is the novel's hardest case. *Kpakpo* — wants money and access; the domestic predator. *Onko* — wants to be unaccountable; the neighbour whose respectability is the mask. *Poison* — wants the street; the lord of the only economy that will employ the children. *Kabria* — wants to understand; the investigator whose own family is the foil to Fofo's. *Dina* — wants MUTE to matter; the institutional conscience.]
]

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[MOMENTS]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[the discovery at the kiosk; the theft and the rescue at the market; Fofo's account of Baby T's sale; the confrontation with Poison's territory; the ending, where Fofo is given a school uniform and the novel's title is answered.]
]

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[CLAIMS]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[(1) The novel argues that a child becomes “faceless” not when she dies but when no institution is required to record her. (2) Kabria's household is not a refuge from the novel's argument but its measuring instrument: it shows what Fofo would have needed. (3) The ending is deliberately modest — one child saved — because the novel has shown that the system cannot be saved in a chapter.]
]

#concept-box("The title, read twice")[
  *Faceless* means two things at once: the murdered girl whose face the city never learned, and the
  condition of every street child who has no document, no address and no one obliged to look. An answer
  that gives only the first reading has read the plot; one that gives both has read the novel.
]

// ============================================================================
== 7.4 *Lonely Days* — Bayo Adebowale

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[WORLD]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[Kufi, a village that runs on custom and on the fear of being spoken about. The economy is taffeta dyeing and farming; the calendar is the cap-picking ceremony, at which a widow chooses a new husband from the caps presented to her. The village is not a villain — it is a procedure, and procedures do not need villains.]
]

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[SPINE]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[(1) Ajumobi, Yaremi's husband and a celebrated hunter, dies of typhoid. (2) Yaremi mourns, works her dyeing and her farm, and is accused by his relatives of causing the death. (3) The elders require her to choose a new husband at the cap-picking; she refuses all three caps. (4) Her daughter Segi takes Woye away to school, and her only son Alani returns after ten years in Ibadan — for a few hours, with two loaves of bread. (5) The village ostracises her and confiscates her husband's property. (6) She refuses to leave, declaring that only her corpse will go into exile.]
]

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[CAST]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[*Yaremi* — wants to keep her husband's name and her own house; obstructed by custom, by her son, and by her own grief. Function: the single consciousness the novel is built to defend. *Ajumobi* — present only in memory; the measure of what she has lost. *Alani* — wants the city; the son who is the novel's second betrayal. *Segi* — wants her son educated; her kindness takes away the last company. *Wura* — the married daughter at Apon, a destination rather than a presence. *Woye* — the grandson whose work and departure mark time. *Uncle Deyo* — wants to keep faith with his dead friend; the novel's one reliable elder. *Dedewe, Fayoyin, Radeke* — widows who show Yaremi her future before it arrives. *Olonade, Ayanwale, Lanwa* — the three caps, and the three versions of a second marriage.]
]

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[MOMENTS]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[the night of Ajumobi's death and the falling star; the cap-picking, and the refusal of the three caps; Segi's visit and Woye's departure; Alani's visit and the bread; the elders' sentence and the tearing of the widow's cloth.]
]

#block(width: 100%, above: 10pt, below: 0pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[CLAIMS]
]
#block(width: 100%, above: 1pt)[
  #set par(leading: 0.62em, spacing: 0.7em)
  #text(size: 9.6pt)[(1) The novel argues that widowhood in Kufi is not a grief but an administrative status, and that the administration is the cruelty. (2) Yaremi's refusal is not conservatism but ownership: she keeps the name that the village wants to reassign. (3) The novel's loneliness is double — the loneliness of loss and the loneliness of being spoken about — and Yaremi ends inside both.]
]

#trap-box("The trap in this text")[
  It is easy to write *Lonely Days* as a protest against “African tradition”, which is both imprecise and
  unhelpful. The novel is specific: the cap-picking, the confiscation, the accusation of murder, the
  tearing of the cloth. Naming the custom is what shows you have read the book; generalising about
  tradition is what shows you have not.
]

#worked-example(
  2,
  "Two texts, one question",
  [A question asks: “How does the text present a community's treatment of a vulnerable person?” Which answer plan fits *Lonely Days* best?

    A. Describe Yaremi's character, then say the village is cruel. \\
    B. Take three scenes — the accusation, the cap-picking, the confiscation — and show that each converts a private grief into a public procedure. \\
    C. Summarise the plot and mention Alani. \\
    D. Say that tradition is bad in Africa.],
  [
    *Step 1 — answer the actual stem.* It asks about *presentation of treatment*, so the answer must show the community acting, in scenes, and say what the scenes make of it.

    *Step 2 — test B.* Three scenes, one mechanism (“converts a private grief into a public procedure”) — that is a plan.

    *Step 3 — reject.* A and C are description; D is a generalisation with no text in it.

    *Check.* Could the same plan be adapted to *Faceless*? Yes — the market, the sale, the silence. That is how a good plan travels. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 7.5 The Three Texts on One Page

#table(
  columns: (1.15fr, 1.7fr, 1.7fr, 1.7fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[*Harvest*],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[*Faceless*],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[*Lonely Days*],
  ),
  [Who is the victim?], [Aloho, and the public that paid for the ministry], [Baby T, and every child without a document], [Yaremi, and the widows before her],
  [Who profits?], [the network, from Minister to clerk], [the adults who sell, and the street that buys], [the village, in property and in precedence],
  [What is the instrument?], [the job offer], [the market], [the cap-picking],
  [What does the ending give?], [sentences, and a dead girl], [a school uniform, and a dead girl], [a refusal, and a confiscated farm],
  [The sentence to learn], [corruption recruits what it will consume], [a child with no record is a child with no face], [the village is a procedure, not a villain],
)

#worked-example(
  3,
  "Two readings of a title",
  [“*Faceless* is titled for the murdered girl.” Which comment is the stronger reading?

    A. It is true, because Baby T is dead. \\
    B. It is half the reading: the title also names the condition of every child the city has no obligation to record. \\
    C. It is false, because Fofo is the main character. \\
    D. The title has no meaning.],
  [
    *Step 1 — test the literal reading.* A is accurate and stops where the novel begins, which is the definition of a half-reading.

    *Step 2 — test the extension.* B keeps the literal sense and adds the structural one, which the novel supports through MUTE's documentation work and through Fofo's lack of any record.

    *Step 3 — reject.* C confuses protagonist with title; D is not an answer.

    *Check.* Does B give you two paragraphs? Yes: one on Baby T, one on the system that failed to record her. The answer is *B*.
  ],
  tier: "HARD",
)

// ============================================================================
== 7.6 The Two-Minute Set

#mcq(1, [In *Harvest of Corruption*, Aloho is recruited through], [a newspaper advertisement], [a church group], [her village elders], [an old classmate who works at the Ministry])

#mcq(2, [*Faceless* is structured as], [an investigation], [a romance], [a courtroom drama], [a travelogue])

#mcq(3, [In *Lonely Days*, the cap-picking ceremony requires Yaremi to], [sell her farm], [leave the village], [choose a new husband], [give up her dyeing])

#mcq(4, [The character who returns after ten years in *Lonely Days* is], [Woye], [Alani], [Uncle Deyo], [Olonade])

#mcq(5, [The one official who is not for sale in *Harvest of Corruption* is], [Justice Odili], [the Commissioner of Police], [ACP Yakubu], [the clerk Ayo])

#answer-key-grid(("D", "A", "C", "B", "C"))

#answer-notes((
  ("B", [Ochuole is the classmate and the recruiter, and the pipeline runs through her.]),
  ("B", [Fofo's search and MUTE's inquiry are the plot; the novel is an investigation with a child at its centre.]),
  ("A", [The three caps are three men; refusing them is refusing a second husband.]),
  ("C", [Alani, the only son, comes back for a few hours with bread and leaves again.]),
  ("C", [Yakubu investigates against his Commissioner's instruction; every other official in the play has a price.]),
))

#diagram-fig("diagrams/recap_ch07.svg",
  "Chapter 7 recap card: five dossier parts, three texts, three sentences to learn.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A dossier has five parts — world, spine, cast, moments, claims — and it is built after a first reading, never instead of one. *Harvest of Corruption* sets a graduate inside a pipeline: Ochuole recruits Aloho, the Ministry employs her, the network protects her with a bribe and then consumes her, and the sentences at the end are the title's harvest. Its claim is that corruption is the ordinary medium of Jacassa rather than an exception in it, and that the vulnerable are consumed first. *Faceless* is an investigation: Fofo's search and MUTE's inquiry assemble the story of Baby T, sold into prostitution and killed, and the novel's title carries two meanings — the girl no one recognised and the condition of every child with no record. *Lonely Days* is a single consciousness against a procedure: the accusation, the cap-picking, the confiscation, each converting a private grief into a public act, and Yaremi refusing to leave a village that has already left her. Keep the three casts apart, and learn one sentence per text.
  ]
]

#chapter-checklist("Before you leave Chapter 7", (
  [Write the spine of each text in six beats, from memory.],
  [Name five characters per text and one function for each.],
  [Mark the five moments for one text in your copy.],
  [Write one claim per text that a marker could disagree with.],
  [Answer three questions that mix the three texts without confusing a name.]
))

#concept-box("Carry this into Chapter 8")[
  The paper sometimes asks you to hold two texts at once. Chapter 8 is about comparison: how to build a
  shared grid, how to answer when only one text is prescribed for the question, and how to survive the
  exam hall when the clock is the real examiner.
]

#include "drill_ch07.typ"
