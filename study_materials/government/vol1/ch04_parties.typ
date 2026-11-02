#import "template.typ": *

#current-chapter.update("Chapter 4: Parties, Pressure Groups and Elections")

#pagebreak()

#chapter-opener(
  4,
  "Political Parties, Pressure Groups and Elections",
  subtitle: "What a Party Does, Cadre and Mass Parties, One- and Multi-Party Systems, Pressure Groups and Their Methods, the Electoral Systems, INEC and the Free-and-Fair Test",
  syllabus-ref: "Part I • Parties, Groups, Elections",
  utme-weight: "4 Qs a year",
  running: "Parties, Groups and Elections",
)

#focus-radar(
  objectives: (
    "Define a political party and state its functions.",
    "Distinguish a cadre party from a mass party.",
    "Compare the one-party, two-party and multi-party systems.",
    "Define a pressure group, classify it and state its methods.",
    "Distinguish a pressure group from a political party — the distinction the paper asks every year.",
    "Compare the first-past-the-post and proportional systems, and say what makes an election free and fair.",
  ),
  hotspots: (
    "“Which of the following is a function of a political party?” — to contest elections and form a government. *To influence legislation without seeking office* is the pressure group's function, and it is the option written to catch you.",
    "“A pressure group differs from a political party because it …” — does not seek to form a government. Both try to influence policy; only the party contests power.",
    "“In a two-party system …” — two major parties alternate in office, and a third party may exist without winning. The option *only two parties may legally exist* describes a one-party system.",
    "“A system in which the candidate with the highest number of votes wins, even without a majority, is …” — first past the post. The option *proportional representation* is its opposite.",
    "“The body responsible for conducting federal elections in Nigeria is …” — INEC, the Independent National Electoral Commission, established by the 1999 Constitution and the Electoral Act.",
  ),
  trap-summary: "Three slips. (1) Giving a pressure group the party's ambition of forming a government. (2) Calling Nigeria's 1999–2015 party arrangement a two-party system when the Constitution allows any number of parties — it was a two-party *practice*, not a legal limit. (3) Confusing the franchise (who may vote) with the electoral system (how votes become seats).",
)

// ============================================================================
== 4.1 Political Parties and What They Do

A political party is an organised group of people who share a broad set of political
beliefs and who seek to win power, or to share in it, by contesting elections. Three parts
of that definition do the work: *organised*, because a crowd is not a party; *beliefs*,
because a party without a programme is a machine for winning office; and *contesting
elections*, because that is what separates a party from every other association.

#diagram-fig("diagrams/gov_ch04_parties.svg",
  "The six functions of a party. Every one of them is performed by a party in government and by a party in opposition, which is why a democracy needs both.", width: 100%)

#rule-box("The functions, in the examiner's order")[
  + *Interest aggregation.* A party turns the demands of many groups into one programme, which is how a country of many interests gets a government.
  + *Political recruitment.* It selects candidates, trains leaders, and provides the people who will run the state.
  + *Contesting elections.* It nominates candidates, campaigns and mobilises voters — the function that defines it.
  + *Political education.* It explains issues, publishes a manifesto and conducts rallies, and in doing so teaches the electorate what is at stake.
  + *Linking government and governed.* It carries complaints upward and explains decisions downward.
  + *Stabilising the system.* It absorbs dissent into argument, so that a grievance becomes a policy proposal rather than a riot.
]

#concept-box("Cadre and mass parties")[
  *A cadre party* is small, elite-led and financed by a few wealthy supporters; it fights
  elections on the reputation of its leaders rather than on a large membership. The old
  Nigerian parties were of this kind: the Action Group and the Northern People's Congress were
  built around Awolowo and Ahmadu Bello.

  *A mass party* has a large paid-up membership, a branch in every ward, a permanent
  bureaucracy and a manifesto that members help to write. European socialist and social
  democratic parties are the classic case, and the modern Nigerian parties — APC, PDP, Labour —
  aspire to the mass form because the law requires a membership register.
]

#worked-example(
  1,
  "The defining function",
  [The most important function of a political party in a democracy is to

    A. influence the making of legislation \\
    B. contest elections and form a government \\
    C. provide welfare for its members \\
    D. organise industrial action],
  [
    *Step 1 — recall the definition.* A party is defined by its ambition to win power through elections.

    *Step 2 — test each option against that definition.* Influencing legislation is what any group may do — it is the pressure group's function. Welfare and industrial action belong to unions and clubs.

    *Step 3 — choose.* Contesting elections and forming a government is the only function that no other organisation performs, and the only one that the definition names.

    *Check.* If an organisation never contests an election, it is not a party, whatever it calls itself. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

== 4.2 The Party Systems

A party system is the pattern formed by the parties in a country: how many compete
seriously, how they relate to each other, and whether power alternates.

#diagram-fig("diagrams/gov_ch04_systems.svg",
  "Three party systems drawn as seats. The pattern matters less than what it does to accountability and to representation.", width: 100%)

#table(
  columns: (1.1fr, 1.8fr, 1.6fr, 1.4fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Merits],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Demerits],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Nigerian example],
  ),
  [*One-party*], [stability; discipline; no expensive campaigns], [no choice; no opposition; absolute power corrupts], [the military's planned transition; the 1989 two-party decree became a one-party experiment],
  [*Two-party*], [clear majority; clear opposition; voters can throw a government out], [ignores smaller interests; polarises the country], [PDP and APC alternated in 2015 and 2023; Nigeria has never had a legal two-party limit in the Fourth Republic],
  [*Multi-party*], [represents minorities and many interests], [coalitions; instability; weak governments], [the 1979–83 five parties; the 2023 ballot with eighteen parties],
)

#shortcut-box("Reading a party-system question in one line")[
  + *How many parties can win?* If only one, the system is one-party. If two, two-party — however many are registered. If several, multi-party.
  + *Does power alternate?* An alternation in fact is what makes a system competitive, and the paper offers *dominant-party system* for a case where many compete but one always wins.
  + *Is the limit legal or practical?* A legal ban on other parties is a one-party system; a practical inability to win is a dominant-party system. Nigeria has never banned parties in the Fourth Republic.
]

#worked-example(
  2,
  "Reading a result",
  [In an election, Party A wins 60 per cent of the seats, Party B 25 per cent and four smaller parties share the rest. This indicates

    A. a one-party system \\
    B. a dominant-party system \\
    C. a two-party system with a hung parliament \\
    D. the absence of a party system],
  [
    *Step 1 — count the parties that won seats.* Six won seats, so the legal system is multi-party.

    *Step 2 — ask who governs.* Party A has 60 per cent, an absolute majority, and can govern alone. It has won repeatedly in this pattern, which is what “dominant” means.

    *Step 3 — eliminate.* A one-party system would leave the others without seats; a hung parliament would leave no party with a majority; the absence of a party system would mean no parties at all.

    *Check.* Many parties, one winner, election after election — the answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

== 4.3 Pressure Groups

A pressure group is an organised group that seeks to influence public policy without
seeking to form a government. The union that lobbies for a minimum wage, the bar
association that campaigns for judicial reform and the students' body that protests a fee
rise are all pressure groups.

#rule-box("The types, and the methods")[
  + *Sectional (interest) groups* protect the interests of their members: the Nigeria Labour Congress, the Nigerian Bar Association, the Manufacturers' Association, the Academic Staff Union of Universities.
  + *Promotional (cause) groups* promote a cause that their members may not personally benefit from: human-rights organisations, environmental campaigns, anti-corruption groups.
  + *Insider methods:* lobbying legislators, giving evidence to committees, drafting bills, seconding officials, funding campaigns.
  + *Outsider methods:* petitions, press campaigns, strikes, demonstrations, boycotts, litigation and civil disobedience.
]

#table(
  columns: (1.6fr, 2.4fr, 2.4fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Political party],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Pressure group],
  ),
  [*Aim*], [to win power and form a government], [to influence policy without taking power],
  [*Method*], [nominates candidates; contests elections], [lobbies, petitions, strikes, litigation],
  [*Scope*], [a broad programme across many issues], [narrow — one interest or one cause],
  [*Accountability*], [answerable to the electorate at the next election], [answerable to its members only],
  [*Membership*], [open to all who accept the programme], [often restricted to an occupation or a cause],
)

#worked-example(
  3,
  "The difference, in one sentence",
  [The main difference between a political party and a pressure group is that a pressure group

    A. has no interest in politics \\
    B. does not seek to form a government \\
    C. is always illegal \\
    D. has no members],
  [
    *Step 1 — recall the definitions.* Both seek influence; only the party seeks office.

    *Step 2 — test each option.* A pressure group is intensely interested in politics. Nothing makes it illegal — the Constitution protects freedom of association. And it exists precisely because it has members to speak for.

    *Step 3 — choose.* Not seeking to form a government is the single defining difference, and it is the sentence the examiner wants.

    *Check.* Ask what the group would do if it won an election. A party would govern; a pressure group would not stand. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

== 4.4 Elections, the Franchise and the Electoral Systems

An election is the process by which the adult population chooses the people who will hold
public office. *The franchise* is the right to vote; *the electoral system* is the set of
rules that turns votes into seats. The paper tests them separately.

#concept-box("Who may vote, and who may not")[
  In Nigeria, section 77 of the Constitution and the Electoral Act give the vote to every
  citizen who has reached eighteen and is registered. Disqualifications are narrow: a
  person of unsound mind, a person under a sentence of death, and a person found guilty of
  electoral malpractice.

  The historic milestones: the elective principle in 1922, but only for men with a property
  qualification in Lagos and Calabar; universal adult suffrage in 1979; and the secret ballot,
  which is what makes a vote free.
]

#diagram-fig("diagrams/gov_ch04_elections.svg",
  "Two electoral systems. The same votes produce a majority of seats under one rule and a spread of seats under the other.", width: 100%)

#table(
  columns: (1.35fr, 2.3fr, 2.3fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Effect],
  ),
  [*First past the post*], [one member per constituency; the highest vote wins], [stable majorities; many wasted votes; used in Nigeria, Britain, the USA],
  [*Proportional representation*], [seats shared in proportion to votes, by party list or the single transferable vote], [fair to small parties; coalitions; used in Germany, Israel, South Africa],
  [*Second ballot*], [a run-off if no candidate wins an absolute majority], [majority legitimacy; two rounds of cost; used in France],
  [*Mixed member*], [constituency seats plus a proportional top-up], [combines the two; used in Germany and New Zealand],
)

#rule-box("What makes an election free and fair")[
  + *An independent commission.* INEC is established by the Constitution, funded from the Consolidated Revenue Fund, and its members may be removed only for misconduct.
  + *A current register.* Every eligible citizen appears once, and only once.
  + *A secret ballot.* No one can tell how a voter voted, so no one can punish them for it.
  + *An impartial count.* Results are counted at the polling unit, in public, and announced there before they are transmitted.
  + *A level field.* All parties have access to the media and to security; no candidate uses state resources.
  + *An independent tribunal.* Disputes go to election tribunals, then to the courts.
]

#trap-box("The malpractice list, and the name the paper wants")[
  *Rigging* is the general name for interference with a result: ballot-box snatching, stuffing,
  altering figures, preventing opponents from voting, buying votes, and using security agents
  against a candidate. *Gerrymandering* is drawing constituency boundaries to favour a party.
  *Disenfranchisement* is denying the vote to people entitled to it. The paper offers all three
  and expects you to match the definition.
]

#worked-example(
  4,
  "Naming the system",
  [A country divides itself into constituencies and declares elected the candidate with the highest number of votes in each, whether or not that candidate has a majority. The system is

    A. proportional representation \\
    B. the single transferable vote \\
    C. first past the post \\
    D. the second ballot],
  [
    *Step 1 — find the diagnostic phrase.* “Highest number of votes … whether or not a majority” — a plurality, not a majority.

    *Step 2 — match the systems.* Proportional representation allocates seats by share of the vote. The single transferable vote is a preferential system. The second ballot requires a run-off when no one has a majority.

    *Step 3 — choose.* A plurality in single-member constituencies is first past the post.

    *Check.* If a second round were required, the stem would say so. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

== 4.5 Public Opinion and the Mass Media

Public opinion is the sum of the views held by the adult population on a public question —
not the view of the loudest group, and not the result of an election, but the climate of
opinion that a government governs in. It matters because a government that loses it loses
legitimacy, and because an election is the moment at which it is measured.

The *agents* that form and express it are the family, the school, the church and mosque, the
workplace, the parties, the pressure groups and — above all, in a modern state — the mass
media. The *media* perform three functions the paper names: they inform, they educate and
they provide a platform for debate; and a fourth, less comfortable one, they can distort.
That is why every democratic constitution protects press freedom and why every dictatorship
controls the press first.

#concept-box("Measuring opinion, and the two words that go with it")[
  *The opinion poll* samples a population and infers the whole from the sample. Its accuracy
  depends on the sample being random and large enough, and its danger is that a published
  poll can change the opinion it claims to measure.

  *The mandate* is the claim a government makes that its election victory authorises its
  programme. A government with a large majority but a low turnout claims a mandate; its
  opponents deny it. The paper asks what the word means, not who is right.
]

#worked-example(
  5,
  "What public opinion is not",
  [Public opinion is best defined as

    A. the view held by most citizens on an issue of public concern \\
    B. the position taken by the newspapers in their editorials \\
    C. the opinion of the political elite on a policy \\
    D. the result of the most recent election],
  [
    *Step 1 — take the three parts of the definition.* Whose view? Most citizens. About what? A matter of public concern. Held how? Openly enough to be known.

    *Step 2 — test the wrong options against the parts.* Editorial positions belong to editors, not to most citizens. Elite opinion is the view of a few. An election result measures preferences at one moment, on many questions at once, and is an instrument rather than the opinion itself.

    *Step 3 — keep the option that satisfies all three parts.* A majority view on a public question is the definition.

    *Check.* The media and elections both *shape* and *measure* opinion. Neither is opinion, and questions that offer them rely on that confusion. The answer is *A*.
  ],
  tier: "FOUNDATION",
)

== 4.6 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [Which of the following is a function of a political party?], [Contesting elections and forming a government], [Regulating the money supply], [Settling disputes between citizens], [Conducting the census])

#mcq(2, [A pressure group differs from a political party in that a pressure group], [contests elections], [seeks to influence policy without seeking office], [must be registered by INEC], [has no members])

#mcq(3, [The electoral system in which the candidate with the highest number of votes wins is called], [proportional representation], [the second ballot], [first past the post], [the single transferable vote])

#mcq(4, [The independence of INEC is protected mainly by], [its funding from the Consolidated Revenue Fund and the security of tenure of its members], [the President's power to appoint its chairman], [its control by the National Assembly], [the fact that it is chaired by a judge])

#answer-key-grid(("A", "B", "C", "A"))

#answer-notes((
  ("A", [Contesting elections and forming a government is the defining function. Regulating money is the central bank, settling disputes is the judiciary, and the census is a statistical exercise.]),
  ("B", [The pressure group wants influence, not office. A party contests elections and must be registered; a pressure group needs neither, and its whole reason for existing is that it has members with a shared interest.]),
  ("C", [A plurality in single-member constituencies is first past the post. Proportional representation shares seats by vote, the second ballot adds a run-off, and the single transferable vote is a preferential system.]),
  ("A", [Independence rests on money that cannot be withheld and tenure that cannot be ended at will. Appointment by the President and control by the National Assembly are the opposite of independence; the chair need not be a judge.]),
))

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: parties, groups, elections and opinion.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A political party is an organised group that seeks power by contesting elections, and it performs six functions: aggregating interests, recruiting leaders, contesting elections, educating the electorate, linking government to the governed and stabilising the system. A cadre party is small and elite-led; a mass party has branches, members and a written programme. Party systems are counted by how many parties can win — one, two or several — and a dominant-party system is the case where many compete and one always wins, which is the honest description of much of Nigeria's Fourth Republic. A pressure group seeks influence without office, and that single sentence is the distinction the paper tests most often; sectional groups protect members, promotional groups promote a cause, and both use insider lobbying and outsider protest. Elections turn votes into seats by rules: first past the post, which Nigeria uses, rewards majorities and wastes votes; proportional representation is fairer to small parties and produces coalitions; the second ballot adds a run-off. INEC conducts the poll, its independence rests on money and tenure, and an election is free and fair when the register is current, the ballot is secret, the count is public and the tribunals are independent. Behind all of it sits public opinion, formed by family, school, religion, work and the media, and claimed by every government as a mandate.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [Define a political party and give six functions.],
  [Distinguish a cadre party from a mass party with one example of each.],
  [Compare the one-, two- and multi-party systems on merits and demerits.],
  [Distinguish a pressure group from a party in one sentence, and name two of each in Nigeria.],
  [Compare first past the post with proportional representation, and say which Nigeria uses.],
  [State the conditions for a free and fair election and name the body that conducts it.],
))

#concept-box("Carry this into Chapter 5")[
  The people who vote are citizens, and the machinery that serves them is the public
  service. The next chapter takes the two apart: how citizenship is acquired and lost, what
  rights a citizen may claim against the state, and how the civil service and local government
  actually work.
]

#include "drill_ch04.typ"
