#import "template.typ": *

#current-chapter.update("Chapter 2: Harvest of Corruption")

#pagebreak()

#chapter-opener(
  2,
  "Harvest of Corruption",
  subtitle: "Frank Ogodo Ogbeche — Plot, Characters, Themes and the Stagecraft of a Nigerian Corruption Play",
  syllabus-ref: "Section 2 • Prescribed Drama",
  utme-weight: "3 Qs a year",
  running: "Harvest of Corruption",
)

#focus-radar(
  objectives: (
    "Place the play: its fictional setting, its institutions and its social argument.",
    "Tell the story in order, from the ministry corridor to the High Court.",
    "Hold the nine characters apart, and say what each one is for.",
    "Give five themes, each with the scenes that prove it.",
    "Read the stagecraft: the hotel, the courtroom, the reported scene and the madman.",
    "Answer the questions the paper asks most often about this play.",
  ),
  hotspots: (
    "The country is *Jacassa* and the capital is *Jabu*. Questions that offer Nigeria, Ghana or “an unnamed African country” are testing whether you know the fictional setting.",
    "Aloho is arrested at the airport carrying cocaine she did not know she was carrying. The drugs were placed in her luggage by Chief's arrangement; she is a courier, not a dealer.",
    "The acquittal is the play's turn: she is released not because she is innocent but because the system is bought, and the shock of it is what makes her leave.",
    "Ogeyi is the friend who warns and then acts; ACP Yakubu is the honest officer. Neither is the protagonist, and the paper offers both as “the person who brought Chief down”.",
    "The sentences are graded, and the grades carry marks: twenty-five years for Chief, twenty for Justice Odili and the Commissioner, ten for Ochuole and Madam Hoha, five for Ayo.",
  ),
  trap-summary: "Three slips. (1) Making Aloho a knowing drug courier. (2) Giving the arrest to the wrong institution — she is caught by customs officers at the airport, not by the police at the hotel. (3) Treating the play as a morality tale about one wicked man, when its argument is that the ministry, the police and the bench are the same corruption in three uniforms.",
)

// ============================================================================
== 2.1 The World of the Play

*Harvest of Corruption* is set in *Jacassa*, a fictional West African state, in its
capital *Jabu*. The institutions are named with deliberate flatness — the Ministry of
External Relations, the Akpara Hotel, and a courtroom — because the play wants
you to recognise them rather than admire them. Nothing in the setting is exotic.
This is a country with ministries, protocols, vouchers and a police force, and the
question the play asks is what happens when all four are for sale.

#rule-box("Three settings, three kinds of pressure")[
  + *The ministry.* A place where a title is a licence. Chief's office issues protocol officers, foreign trips and documents, and every one of those is an instrument of the plot.
  + *The Akpara Hotel.* Owned by Madam Hoha, and the place where the ministry does its real business: recruitment, seduction and the handover of the drug package. A hotel is private property used for public crime.
  + *The courtroom.* The play's last scene converts private crime into public judgment, and the audience is invited to count the sentences.
]

#text(size: 9.4pt)[The movement between the three settings *is* the plot. Aloho travels from the ministry (hope) to the hotel (compromise) to the airport (arrest) to the court (justice, but too late for her). A question about setting is usually a question about that movement, and the answer is usually the word *exposure*.]

#diagram-fig("diagrams/ch02_harvest_map.svg",
  "The web around Chief Haladu Ade-Amaka. Two figures stand outside it, and between them they bring it down.", width: 100%)

// ============================================================================
== 2.2 The Plot in Order

#table(
  columns: (0.45fr, 2.9fr, 1.95fr),
  inset: (x: 4.5pt, y: 3.8pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it sets up],
  ),
  [1], [Aloho, a graduate with no job, meets Ochuole at the ministry complex and is offered help], [the offer that the rest of the play tests],
  [2], [Ogeyi warns her that Ochuole's reputation makes the offer dangerous], [the voice of reason, ignored],
  [3], [Ochuole takes her to Chief Haladu Ade-Amaka at the Akpara Hotel; he appoints her a protocol officer], [the job as a cover],
  [4], [She is sent to the United States with documents, and a package she does not examine], [the drug run],
  [5], [Customs officers arrest her at the airport with cocaine in her luggage], [the trap closes],
  [6], [Chief buys the case: Justice Odili and the Commissioner of Police see to it that it is struck out], [the system revealed],
  [7], [Aloho is discharged, and is more frightened by the acquittal than by the arrest; she resigns], [her awakening],
  [8], [She discovers she is pregnant by Chief, and considers an abortion], [the private cost],
  [9], [She refuses the abortion, goes home, and dies in childbirth], [the harvest, taken in person],
  [10], [Ogeyi reports Chief to ACP Yakubu, an officer known to be unbribable], [the counter-move],
  [11], [Ayo, a clerical assistant, supplies photocopies of vouchers showing 1.2 billion naira embezzled], [the documentary case],
  [12], [Chief, Odili, the Commissioner, Ochuole, Madam Hoha and Ayo are tried, and the sentences are read out], [the public accounting],
  [13], [Sentence: 25 years and a refund for Chief; 20 each for Odili and the Commissioner; 10 each for Ochuole and Madam Hoha; 5 for Ayo], [the harvest],
)

#text(size: 9.4pt)[The order above is worth learning as a *single line of causation* rather than thirteen separate facts. Unemployment produces the offer; the offer produces the job; the job produces the trip; the trip produces the arrest; the arrest produces the acquittal; the acquittal produces the resignation; and the resignation produces the pregnancy, because she is no longer protected by the office and no longer able to pretend.]

#diagram-fig("diagrams/ch02_harvest_chain.svg",
  "The chain from a degree to a grave. Each link is a scene, and each scene is a question waiting to be asked.", width: 100%)

// ============================================================================
== 2.3 The Characters

#table(
  columns: (1.35fr, 2.45fr, 1.35fr),
  inset: (x: 4.5pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The one line that defines them],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Function],
  ),
  [*Aloho*], [a graduate whose hope is her weakness; she takes the offer because she has nothing else], [protagonist; the cost of corruption],
  [*Ogeyi Ogar*], [the friend who warns, is ignored, and then acts], [conscience and catalyst],
  [*Ochuole Odeh*], [the Chief Administrative Officer who recruits women for her boss], [the funnel; corruption with a friendly face],
  [*Chief Haladu Ade-Amaka*], [Minister of External Relations; he treats the ministry as a business and women as a perk], [antagonist; corruption in office],
  [*Madam Hoha*], [proprietress of the Akpara Hotel, where the ministry's real business is done], [the venue; complicity for profit],
  [*Justice Odili*], [the Chief Judge who takes the money and strikes out the case], [corruption on the bench],
  [*The Commissioner of Police*], [the officer who buries the file], [corruption in uniform],
  [*ACP Yakubu*], [the honest officer who investigates anyway], [the exception that proves the rule],
  [*Inspector Inaku*], [the detective who gathers the evidence], [the machinery of justice],
  [*Mr Ayo*], [the clerical assistant who keeps photocopies of the vouchers], [the documentary turn],
  [*Doctor Okpotu*], [Aloho's brother, who appears when it is too late], [the family that cannot save her],
  [*The madman*], [a figure whose ravings on public life are saner than the officials' conduct], [the satiric chorus],
)

#concept-box("Ochuole is the play's most important minor character")[
  Every tragedy needs a door, and Ochuole is the door. She does not invent the
  corruption; she *translates* it into an opportunity a desperate graduate can
  accept. Remove her and Aloho is merely unlucky; keep her and Aloho is complicit,
  which is what makes the play a tragedy rather than a lecture.
]

// ============================================================================
== 2.4 The Themes

#table(
  columns: (1.2fr, 2.15fr, 1.8fr),
  inset: (x: 4.5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Theme],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The claim the play makes],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The scenes that prove it],
  ),
  [*Corruption*], [it is a system, not a vice: the minister, the judge and the commissioner are the same practice in different uniforms], [the struck-out case; the vouchers; the graded sentences],
  [*Unemployment*], [a graduate with no income will accept an offer she can see is dangerous], [the opening scene; the resignation; Okpotu's helplessness],
  [*Retribution*], [what is sown is reaped, and the reaping is public], [the trial; the sentences; Aloho's death as the private harvest],
  [*Betrayal*], [the people who should protect her are the people who use her], [Ochuole's recruitment; Chief's package; the court that frees her],
  [*Moral decadence*], [the society has stopped distinguishing between office and opportunity], [the hotel as a ministry annexe; Ayo's bribe; the madman],
  [*Gender and power*], [a woman's body is treated as part of the remuneration of office], [the protocol post; the pregnancy; Madam Hoha's trade],
  [*Justice*], [it arrives, but only through individuals who refuse to be bought, and never in time], [Yakubu's investigation; Ogeyi's testimony; the verdict after Aloho's death],
)

#text(size: 9.4pt)[A theme answer is stronger when it names the *cost*. "Corruption" is a topic; "corruption is cheaper to run than honesty and is paid for by the people who have least" is a theme, and it can be supported from three scenes without repeating yourself.]

// ============================================================================
== 2.5 Technique

#table(
  columns: (1.15fr, 2.3fr, 1.7fr),
  inset: (x: 4.5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Device],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[How Ogbeche uses it],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it achieves],
  ),
  [*Setting as argument*], [ministry, hotel and courtroom in that order], [the crime is public, private, then judged],
  [*The reported scene*], [arrests, abortion attempts and the trial are narrated by characters as well as shown], [the play covers years without many sets],
  [*Contrast of pairs*], [Ogeyi against Ochuole; Yakubu against the Commissioner; Aloho's home against the hotel], [each institution is judged by its exception],
  [*The satiric figure*], [the madman whose public commentary is more rational than the officials'], [the audience laughs, then stops],
  [*The courtroom close*], [the last scene is a trial with graded sentences], [the play ends in accounting, not in mourning],
  [*Names*], [*Haladu*, *Ochuole*, *Ogeyi* — the naming is local and specific], [the fiction stays close to a real polity],
)

#trap-box("The four traps this text sets")[
  *“Aloho is a drug baron.”* She is a courier, and an unwitting one. The play's pathos depends on it.

  *“The police arrest her.”* Customs officers do, at the airport. The police arrive later, on Chief's payroll.

  *“Ogeyi is the protagonist.”* She is the conscience and the catalyst. Aloho is the protagonist.

  *“Chief is punished by the judge.”* He is punished by a court in which Odili — himself corrupt — is also a defendant. The bench is not clean; the *case* is.
]

// ============================================================================
== 2.6 Four Worked Questions

#worked-example(
  1,
  "The arrest",
  [Aloho is arrested because

    A. she is found with the Minister's documents \\
    B. cocaine is found in luggage she agreed to carry without examining it \\
    C. Ogeyi reports her to the police \\
    D. she attempts to abort a pregnancy],
  [
    *Step 1 — locate.* The arrest is at the airport, on the first assignment, before the pregnancy and before Ogeyi goes to Yakubu.

    *Step 2 — identify the charge.* The customs officers find hard drugs; the documents are legitimate cover.

    *Step 3 — eliminate.* Ogeyi never informs on Aloho — she reports Chief, and only after Aloho's death. The abortion is considered later and is not a crime in the play's terms.

    *Check.* The arrest is the drug run, and the drug run is the job. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The acquittal",
  [Aloho's discharge by the court is best described as

    A. a vindication of her innocence \\
    B. a demonstration that the judiciary is independent \\
    C. a purchase, which shows her that the system is corrupt and frightens her into resigning \\
    D. a mistake by the prosecution],
  [
    *Step 1 — locate the scene.* The case is struck out “for want of evidence” after Chief's intervention with Justice Odili and the Commissioner.

    *Step 2 — read Aloho's reaction.* She is shocked, not relieved; the play gives her fear rather than gratitude, which tells the audience how to read the verdict.

    *Step 3 — test the options.* A and B read the verdict at face value and are exactly what the play refuses; D ignores the play's explicit account of the bribe.

    *Check.* The acquittal is the moment she understands the system. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The sentences",
  [Which pairing of character and sentence is correct?

    A. Ochuole — twenty-five years \\
    B. Madam Hoha — ten years, and the hotel sealed \\
    C. Ayo — no sentence, because he co-operated \\
    D. Justice Odili — ten years],
  [
    *Step 1 — recall the scale.* Chief gets the heaviest sentence, the two senior officials next, the two middle figures next, and the clerk least.

    *Step 2 — allocate.* Twenty-five for Chief; twenty each for Odili and the Commissioner; ten each for Ochuole and Madam Hoha; five for Ayo.

    *Step 3 — eliminate.* A gives Chief's sentence to Ochuole; C is wrong because Ayo is jailed for five years despite the vouchers; D gives Ochuole's sentence to the judge.

    *Check.* Only one pairing matches the scale. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "The playwright's method",
  [The play's final scene is a courtroom trial rather than a deathbed. The structural effect is to

    A. give the audience a happy ending \\
    B. convert private grief into a public accounting, so that the play ends on the system rather than on the victim \\
    C. introduce a new character \\
    D. satisfy the conventions of comedy],
  [
    *Step 1 — locate the ending.* Aloho has already died; the trial is the last movement, and it concerns the living.

    *Step 2 — ask what the choice of scene does.* A deathbed would close the play on Aloho's body. A courtroom closes it on the state's ledger — sentences, years and a refund.

    *Step 3 — rule out the near-misses.* Nothing is restored (A); no major character is introduced (C); the ending is not comic (D).

    *Check.* The structure moves the audience's attention from the victim to the institution. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 2.7 Two-Minute Set

#mcq(1, [The play is set in], [Lagos], [Jabu, capital of Jacassa], [Accra], [Kufi])

#mcq(2, [Aloho is employed as], [a clerical assistant], [a protocol officer], [a customs officer], [a teacher])

#mcq(3, [The officer who investigates Chief is], [the Commissioner of Police], [ACP Yakubu], [Inspector Odili], [Mr Ayo])

#mcq(4, [Chief's sentence is], [ten years], [twenty years], [twenty-five years with a refund], [five years])

#answer-key-grid(("B", "B", "B", "C"))

#answer-notes((
  ("B", [Jacassa is the fictional state and Jabu its capital. Lagos and Accra are real cities, and Kufi is the village of *Lonely Days*.]),
  ("B", [She is appointed a protocol officer — the title that gives her the airport access the plot needs. Ayo is the clerical assistant, and the customs and police officers belong to other institutions.]),
  ("B", [ACP Yakubu is the honest officer, assisted by Inspector Inaku. The Commissioner is one of the accused, and Odili is the judge.]),
  ("C", [Twenty-five years with hard labour and an order to refund the 1.2 billion naira. Twenty is the sentence for Odili and the Commissioner; ten for Ochuole and Madam Hoha.]),
))

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the spine, the system, the witnesses and the verdict.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Ogbeche's play is set in Jacassa, in the capital Jabu, and moves between three rooms — the ministry, the Akpara Hotel and a courtroom — which is also the movement of its argument from hope to compromise to judgment. Aloho, a graduate with no job, meets Ochuole, an old schoolmate with a reputation, and is appointed a protocol officer to Chief Haladu Ade-Amaka, the Minister of External Relations. Her first assignment carries cocaine to the United States; customs officers arrest her at the airport; Chief buys Justice Odili and the Commissioner of Police, and the case is struck out. The acquittal, not the arrest, is the play's turn: Aloho sees the system for what it is, resigns, discovers she is pregnant, refuses an abortion, goes home and dies in childbirth. Ogeyi reports Chief to ACP Yakubu, Inspector Inaku gathers the evidence, Ayo supplies the vouchers for 1.2 billion naira, and the play ends in a courtroom where the sentences are graded — twenty-five years for Chief, twenty each for the judge and the commissioner, ten each for Ochuole and Madam Hoha, five for the clerk. The themes are corruption as a system, unemployment as the door, retribution as the harvest, betrayal as the method, and justice as something that arrives, through individuals, too late for the victim.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [Name the fictional country, the capital and the three main settings.],
  [Tell the plot in one line of causation, not thirteen facts.],
  [Say what Ochuole does that no other character does.],
  [Give the charge against Aloho, who arrests her, and why she is released.],
  [Rank the six sentences in order of severity.],
  [Name the honest officer, the witness and the clerk, and say what each contributes.],
  [Explain why the play ends in a courtroom rather than at a deathbed.]
))

#concept-box("Carry this into Chapter 3")[
  Ogbeche shows corruption from the outside, through institutions. Shakespeare shows
  it from the inside, through a single mind being talked into a decision. Chapter 3
  is the same method turned on the most quoted play in the syllabus — and the one
  where a single prop carries more plot than any character's speech.
]

#include "drill_ch02.typ"
