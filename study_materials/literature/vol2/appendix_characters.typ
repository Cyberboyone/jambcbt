#import "template.typ": *

#current-chapter.update("Appendix D: Character Index")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: Character Index]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Character Index]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every named character you can be asked about, grouped by text, with the one action
    that fixes each name in memory. If a question names a character you cannot place,
    this is the page to have open.
  ]
]

#v(5pt)

#trap-box("Three names that decide the whole appendix")[
  *Lanwa* is the kinsman, *Ayanwale* the drummer, *Olonade* the boaster.

  *Odili* is the bought judge, *Yakubu* the honest officer, *Inaku* the investigator.

  *Britten* finds, *Buckley* charges, *Max* explains.
]

== D.1 Harvest of Corruption

#table(
  columns: (1.15fr, 2.0fr, 1.9fr),
  inset: (x: 4.8pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who they are],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The action that fixes the name],
  ),
  [*Aloho*], [a graduate with no job], [accepts the appointment and carries the drugs],
  [*Ogeyi*], [her friend], [warns her, then reports the Minister],
  [*Ochuole Odeh*], [Chief Administrative Officer], [introduces Aloho to the Minister],
  [*Chief Haladu Ade-Amaka*], [Minister of External Relations], [appoints her and sends her abroad],
  [*Madam Hoha*], [owner of the Akpara Hotel], [provides the room and the cover],
  [*Justice Odili*], [the judge], [strikes out the case for want of evidence],
  [*The Commissioner of Police*], [head of the police], [arranges the acquittal],
  [*ACP Yakubu*], [senior police officer], [receives Ogeyi's report],
  [*Inspector Inaku*], [investigating officer], [gathers the evidence for the second case],
  [*Mr Ayo*], [clerical assistant], [supplies the vouchers for 1.2 billion naira],
  [*Doctor Okpotu*], [Aloho's brother, a doctor], [treats her, and cannot protect her],
)

== D.2 Othello

#table(
  columns: (1.15fr, 2.0fr, 1.9fr),
  inset: (x: 4.8pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who they are],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The action that fixes the name],
  ),
  [*Othello*], [the Moor, a Venetian general], [kills Desdemona and then himself],
  [*Desdemona*], [Brabantio's daughter, Othello's wife], [pleads for Cassio, and dies defending her husband],
  [*Iago*], [Othello's ancient, or ensign], [plants the handkerchief and kills Emilia],
  [*Emilia*], [Iago's wife, Desdemona's attendant], [confesses the handkerchief and is stabbed],
  [*Cassio*], [Othello's lieutenant], [is demoted for brawling, and governs Cyprus at the end],
  [*Roderigo*], [a Venetian gentleman in love with Desdemona], [pays Iago, and is killed by him],
  [*Brabantio*], [a Venetian senator, Desdemona's father], [accuses Othello, and dies of grief],
  [*The Duke of Venice*], [head of the Senate], [sends Othello to Cyprus],
  [*Montano*], [governor of Cyprus before Othello], [is wounded in the brawl],
  [*Lodovico*], [a Venetian messenger], [brings the orders and witnesses the blow],
  [*Gratiano*], [Brabantio's brother], [reports Brabantio's death and catches the falling Othello],
  [*Bianca*], [a courtesan in Cyprus, Cassio's mistress], [is given the handkerchief to copy],
)

== D.3 Faceless

#table(
  columns: (1.15fr, 2.0fr, 1.9fr),
  inset: (x: 4.8pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who they are],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The action that fixes the name],
  ),
  [*Fofo*], [fourteen, disguised as a boy], [asks MUTE for help and survives],
  [*Baby T*], [her sister], [is the body behind the kiosk],
  [*Maa Tsuru*], [their mother], [loses both daughters to the street],
  [*Kwei*], [Maa Tsuru's husband], [abandons the family],
  [*Kpakpo*], [Maa Tsuru's lover], [abuses and sells Baby T],
  [*Onko*], [a co-tenant], [kills Baby T and commits suicide],
  [*Poison*], [a street lord], [takes what the children earn],
  [*Maami Broni*], [a brothel keeper], [telephones the radio station and disappears],
  [*Odarley*], [Fofo's friend], [is left on the street at the end],
  [*Dina*], [head of MUTE], [sets the limits of Kabria's intervention],
  [*Kabria*], [programme officer at MUTE], [insists the dead child has a name],
  [*Vickie*], [Kabria's colleague], [shares the office and the argument],
  [*Aggie*], [Kabria's colleague], [completes the office's range of responses],
  [*Sylv Po*], [radio presenter at Harvest FM], [broadcasts the story and takes Maami Broni's call],
)

== D.4 Lonely Days

#table(
  columns: (1.15fr, 2.0fr, 1.9fr),
  inset: (x: 4.8pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who they are],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The action that fixes the name],
  ),
  [*Yaremi*], [a widow, a taffeta dyer], [refuses the cap and removes the widow's garment],
  [*Ajumobi*], [her husband, a hunter], [dies before the novel opens, and is addressed throughout],
  [*Segi*], [her daughter, married to Wande at Olode], [mother of Woye],
  [*Wura*], [her daughter, married to Sokoti at Apon], [is the blacksmith's wife],
  [*Alani*], [her son, a carpenter in Ibadan], [does not come home],
  [*Woye*], [Segi's son], [pounds taffeta with Yaremi, then leaves for school],
  [*Dedewe*], [a widow of Kufi], [confesses to sins she did not commit],
  [*Fayoyin*], [a widow of Kufi], [licks the libation],
  [*Radeke*], [a widow of Kufi], [is accused of singing a lying dirge],
  [*Ayanwale*], [a drummer and wood-carver], [courts Yaremi as a performance],
  [*Olonade*], [a suitor], [boasts of what he can provide],
  [*Lanwa*], [Ajumobi's half-brother], [claims the widow as an inheritance],
  [*Uncle Deyo*], [Ajumobi's friend], [repairs the leaking roof],
)

== D.5 Native Son

#[
  #set text(size: 9.1pt)
#table(
  columns: (1.15fr, 2.0fr, 1.9fr),
  inset: (x: 4.8pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who they are],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The action that fixes the name],
  ),
  [*Bigger Thomas*], [twenty, unemployed], [kills Mary by accident and Bessie on purpose],
  [*Mrs Thomas*], [his mother], [urges him to take the relief job],
  [*Buddy*], [his brother], [shares the one-room flat],
  [*Vera*], [his sister], [wants respectability and is ashamed of the room],
  [*Gus, Jack, G.H., Doc*], [his pool-hall friends], [plan the Blum robbery they never attempt],
  [*Mr Dalton*], [the landlord and philanthropist], [owns the tenements his family rents],
  [*Mrs Dalton*], [his blind wife], [enters Mary's room and forces the killing],
  [*Mary Dalton*], [their daughter], [is smothered and burned in the furnace],
  [*Jan Erlone*], [Mary's boyfriend, a Communist], [is suspected first, and speaks for Bigger later],
  [*Bessie Mears*], [Bigger's girlfriend], [is struck with a brick and thrown down an airshaft],
  [*Britten*], [a private investigator], [sorts the household by race],
  [*Buckley*], [the State's Attorney], [prosecutes and demands death],
  [*Max*], [the defence lawyer], [explains Bigger in a speech the court ignores],
)
]

