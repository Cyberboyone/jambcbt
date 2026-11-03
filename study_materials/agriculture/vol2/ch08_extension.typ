#import "template.typ": *

#current-chapter.update("Chapter 8: Extension, Cooperatives and Policy")

#pagebreak()

#chapter-opener(
  8,
  "Extension, Cooperatives and Policy",
  subtitle: "How the Method Reaches the Farm, How the Farmer Reaches the Market, and What the State Pays For",
  syllabus-ref: "Part III • Extension and Agricultural Policy",
  utme-weight: "7 Qs a year",
  running: "Extension, Cooperatives and Policy",
)

#focus-radar(
  objectives: (
    "Define agricultural extension and state its objectives.",
    "Describe the individual, group and mass methods, and the teaching aids that go with them.",
    "Explain the principles and types of cooperative society and the problems they face.",
    "Name the marketing institutions that handle Nigerian farm produce.",
    "Identify the major agricultural policies and agencies and what each one did.",
  ),
  hotspots: (
    "“The most effective method of extension for a village is …” — the *result demonstration*, because the farmer sees the crop with his own eyes. The trap offers the *radio broadcast*, which reaches more people but convinces fewer.\n",
    "“A cooperative society distributes its surplus according to …” — *patronage*, the value of the member's trade, not the number of shares. The trap offers *shareholding*, which is how a company does it.\n",
    "“Operation Feed the Nation was launched in …” — 1976. The trap offers 1980, the year of the Green Revolution.\n",
    "“The Anchor Borrowers' Programme was designed mainly for …” — smallholder farmers of rice, wheat, maize and cotton, financed through the anchor processors. The trap offers *large commercial estates*.",
  ),
  trap-summary: "Three slips. (1) Confusing extension with research: research discovers, extension disseminates, and the two-way arrow is the point. (2) Treating a cooperative as a charity: its surplus comes back to the member as a dividend on patronage, not as a gift. (3) Mixing the policies: OFN 1976, Green Revolution 1980, DFRRI 1986, ADP 1975, ATA 2011, Anchor Borrowers 2015, and each has one signature idea.",
)

// ============================================================================
== 8.1 What Extension Is

#rule-box("The definition, complete")[
  Agricultural extension is the *two-way* service that carries improved knowledge and practices
  from the research station to the farmer, and carries the farmer's problems back to the research
  station. The arrow points both ways; a service that only lectures is not extension.
]

#v(3pt)

#table(
  columns: (1.05fr, 2.0fr, 1.85fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Objective],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What the agent does],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The visible result],
  ),
  [Teach a practice], [demonstrates the spacing, the fertiliser dose, the vaccine], [a farmer changes what he does],
  [Raise production], [shows the yield of the improved variety beside the local one], [a higher yield per hectare],
  [Solve a problem], [carries the pest or the disease back to the research station], [a control that works locally],
  [Build organisation], [forms and trains the farmer group or the cooperative], [a group that can buy and sell together],
  [Link to services], [introduces the credit source, the input dealer, the insurer], [the farmer reaches the service],
  [Raise the standard of living], [works on health, nutrition, the household and the school], [a better household, not only a better farm],
)

#v(3pt)

#text(size: 9.7pt)[
  The extension agent is judged by *adoption*, not by attendance. A meeting of forty farmers who
  return to their old practice is a failure; a demonstration plot beside the road, seen by twelve
  and copied by nine, is a success.
]

// ============================================================================
== 8.2 The Methods and the Aids

#table(
  columns: (1.0fr, 1.75fr, 1.4fr, 1.25fr),
  inset: (x: 5pt, y: 3.5pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Strength],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Weakness],
  ),
  [Farm visit], [the agent calls at the farm, one to one], [the problem is seen where it lives], [few farmers reached],
  [Office call], [the farmer comes to the agent], [cheap for the service], [only the already-motivated come],
  [Result demonstration], [a plot of the new practice beside the old], [seeing is believing; it convinces], [slow; one plot a season],
  [Method demonstration], [the agent performs the skill and the farmers copy], [the skill is learned by doing], [needs materials and a crowd],
  [Group meeting], [a meeting of the farmer group], [many farmers, one message], [the loud few dominate],
  [Field day], [a harvest-day visit to the demonstration], [the result is weighed in public], [once a season],
  [Radio and television], [mass broadcast in the local language], [reaches thousands at once], [no feedback; no tailoring],
  [Poster and leaflet], [printed and pictorial], [cheap and permanent], [only for the literate, unless pictorial],
  [Mobile phone and SMS], [messages and calls to farmers], [fast and personal], [needs network and a charged phone],
)

#v(4pt)

#table(
  columns: (1.1fr, 2.0fr, 1.8fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Teaching aid],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Best used for],
  ),
  [Real object], [the seed, the tool, the diseased leaf itself], [showing what the message is about],
  [Model], [a scaled copy of the sprayer or the pond], [what cannot be brought to the meeting],
  [Chart and poster], [a drawn diagram or a set of pictures], [a sequence — clear, plough, plant],
  [Flip chart], [a pad of large sheets turned as the talk proceeds], [a small group indoors],
  [Film and video], [a recorded demonstration], [a large audience, and repetition],
  [Demonstration plot], [the aid that is also the proof], [the result the farmer can walk to],
)

// ============================================================================
== 8.3 The Cooperative Society

#table(
  columns: (1.05fr, 2.15fr, 1.8fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Principle],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it means in practice],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it prevents],
  ),
  [Open membership], [any farmer who accepts the rules may join], [a closed clique],
  [One member, one vote], [the small farmer's voice equals the large one's], [control by the biggest shareholder],
  [Democratic control], [the members elect the committee at the general meeting], [a committee that appoints itself],
  [Patronage dividend], [the surplus is shared by how much each member traded], [a return on idle capital],
  [Limited return on capital], [share capital earns a modest, fixed interest], [the society becoming a money lender],
  [Education], [part of the surplus trains the members], [a membership that cannot read the accounts],
  [Cooperation among cooperatives], [apex bodies and unions], [isolation and weak bargaining],
)

#v(4pt)

#table(
  columns: (1.05fr, 2.0fr, 1.85fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it does for the member],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Example],
  ),
  [Credit and thrift], [savings and loans at a rate below the moneylender's], [the town union's thrift society],
  [Marketing], [grades, bulks and sells the members' produce], [the cocoa farmers' cooperative],
  [Supply], [buys fertiliser, seed and drugs in bulk and sells at cost], [the farmers' input store],
  [Production], [shared machinery, a pond, a mill], [the cooperative rice mill],
  [Multi-purpose], [all of the above at once], [most Nigerian village societies],
)

#v(3pt)

#text(size: 9.7pt)[
  The cooperative's strength is *scale*: forty farmers selling together can fill a lorry and name
  a price, and forty farmers borrowing together can offer a lender a group record. Its weakness is
  *management*: unpaid officers, unkept books and a committee that lends to its friends have killed
  more societies than any market has.
]

// ============================================================================
#diagram-fig("diagrams/agr2_ch08_extension.svg",
  "8.1 — the extension chain from research to the farm, and the methods that carry it.", width: 98%)

== 8.4 Marketing Institutions

#table(
  columns: (1.15fr, 2.05fr, 1.8fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Institution],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it did or does],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Its lesson],
  ),
  [Marketing board], [bought the export crop at a fixed price and sold it abroad, 1940s–1986], [a stable price, but the farmer's share fell and the boards were dissolved in 1986],
  [Commodity exchange], [a formal market where a standard contract is traded], [grades and a price the farmer can see],
  [AFAN], [the All Farmers Association of Nigeria, a voice for the farmer], [lobbying and representation],
  [Market association], [the traders' association in a market], [sets the grade and the day's price],
  [Nigerian Stored Products Research Institute], [research on storage and post-harvest loss], [the technology behind the silo],
  [Strategic grain reserve], [government buys and stores grain against scarcity], [a floor price in a good year and a supply in a bad one],
)

// ============================================================================
== 8.5 Policy and the Agencies

#table(
  columns: (0.95fr, 1.35fr, 2.6fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Year],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Policy or agency],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Its signature idea],
  ),
  [1975], [Agricultural Development Programme (ADP)], [a state-by-state extension service, funded by the World Bank, with the agent on a motorbike],
  [1976], [Operation Feed the Nation (OFN)], [every household to grow something; a campaign rather than a system],
  [1980], [Green Revolution], [a push on inputs, seeds and credit to raise output fast],
  [1986], [DFRRI], [rural roads, water and electrification — the infrastructure the farm needs],
  [1987], [National Agricultural Insurance Scheme], [the farmer insured against crop and livestock loss],
  [1992], [NALDA], [land development and the settlement of farmers on cleared land],
  [2001], [Fadama], [small-scale irrigation in the valley bottoms, with farmer groups],
  [2011], [Agricultural Transformation Agenda (ATA)], [value chains, cassava and rice, and the e-wallet input system],
  [2015], [Anchor Borrowers' Programme], [a processor anchors smallholders: input in advance, produce bought at harvest],
  [2016], [NIRSAL], [risk sharing so that banks will lend to agriculture],
  [2019], [Agricultural Promotion Policy], [the successor to ATA, with an emphasis on private investment],
)

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[WHY POLICIES FAIL]
  #v(3pt)
  #text(size: 9.6pt)[
    Four reasons recur, and any one of them is enough to sink a programme: the input arrives after
    planting; the credit reaches the wrong farmer; the price is announced and not honoured; and
    the extension that was meant to explain the scheme never leaves the state capital. The paper
    wants the *reason*, not the slogan.
  ]
]

// ============================================================================
== 8.6 Credit and Insurance

#table(
  columns: (1.05fr, 1.6fr, 2.35fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Source],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Formal or informal],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Its cost to the farmer],
  ),
  [Commercial bank], [formal], [collateral, a high rate and a short tenor],
  [Bank of Agriculture], [formal, public], [a lower rate, but slow to disburse],
  [Bank of Industry], [formal, public], [for processing and equipment, not for seed],
  [NIRSAL], [formal, guarantee], [a share of the risk, which lowers the rate],
  [Cooperative], [semi-formal], [membership and savings; the cheapest route for a smallholder],
  [Moneylender], [informal], [the highest rate, and the shortest fuse],
  [Esusu or ajo], [informal], [a rotating saving club; no interest, but a fixed turn],
  [Family and friends], [informal], [no rate, and a social obligation that outlives the loan],
)

#v(3pt)

#text(size: 9.7pt)[
  *Insurance* is the other half of credit. A farmer who borrows without insurance is gambling the
  loan on the weather; a farmer who insures pays a small certain sum to avoid a large uncertain
  one. The Nigerian scheme covers crop loss from fire, flood, drought and pest, and livestock loss
  from disease and accident, and the premium is a percentage of the sum insured.
]

// ============================================================================
== 8.7 Four Worked Questions

#worked-example(
  1,
  "The two-way arrow",
  [Agricultural extension is best described as

    A. the teaching of agriculture in schools \\
    B. a two-way link between research and the farmer \\
    C. the supply of fertiliser to farmers \\
    D. the marketing of farm produce],
  [
    *Step 1 — recall the definition.* Extension carries knowledge out and problems back.

    *Step 2 — test the options.* Teaching in schools is formal education; input supply and
    marketing are separate services.

    *Step 3 — answer.* Only B has both arrows in it, and both arrows are what the examiner is
    looking for.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The method that convinces",
  [The most effective extension method for a village of sceptical farmers is

    A. a radio broadcast \\
    B. a poster campaign \\
    C. a result demonstration on a plot in the village \\
    D. a circular letter],
  [
    *Step 1 — understand the audience.* Sceptical farmers are not short of information; they are
    short of proof.

    *Step 2 — rank the methods by proof.* A result demonstration shows the new practice and the old
    one side by side, and the harvest is weighed in public.

    *Step 3 — dismiss the mass media.* Radio, posters and letters reach many people and convince
    few, because none of them can be walked to and measured.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The dividend that follows the trade",
  [A cooperative society makes a surplus of ₦400 000. Under cooperative principles it should be
  distributed mainly according to

    A. the number of shares each member holds \\
    B. the value of each member's patronage \\
    C. the age of each member \\
    D. an equal share to every member],
  [
    *Step 1 — recall the principle.* A cooperative pays a *patronage dividend*: the surplus follows
    the trade, not the capital.

    *Step 2 — explain why.* The surplus was created by the members' transactions with the society,
    so it belongs to them in that proportion. Share capital earns a fixed, limited interest.

    *Step 3 — dismiss the rest.* Equal shares ignore the trade, and age is irrelevant. Shareholding
    is the company principle, and the question is testing that the cooperative is not a company.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The programme that paid in advance",
  [A rice miller supplies paddy farmers with seed, fertiliser and cash before planting, and buys
  their harvest at an agreed price. The programme described is the

    A. Green Revolution \\
    B. Operation Feed the Nation \\
    C. Anchor Borrowers' Programme \\
    D. Fadama project],
  [
    *Step 1 — pick out the mechanism.* A private processor "anchors" smallholders: input in advance,
    output bought at harvest.

    *Step 2 — match the name.* That is the Anchor Borrowers' Programme, launched in 2015 and built
    on rice, wheat, maize and cotton.

    *Step 3 — separate the neighbours.* OFN was a 1976 production campaign, the Green Revolution a
    1980 input push, and Fadama an irrigation project in the valleys.

    *Answer: C.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 8.8 Chapter 8 in the Exam Hall — a Two-Minute Set

#mcq(1, [Operation Feed the Nation was launched in], [1972], [1976], [1980], [1986])

#mcq(2, [The extension method that reaches the largest number of farmers at once is], [the farm visit], [the group meeting], [the radio broadcast], [the office call])

#mcq(3, [In a cooperative society, decision-making follows the principle of], [one share one vote], [one member one vote], [the largest farmer decides], [government appointment])

#mcq(4, [NIRSAL was established mainly to], [buy farm produce], [share the risk of lending to agriculture], [train extension agents], [build rural roads])

#answer-key-grid(("B", "C", "B", "B"))

#answer-notes((
  ("B", [OFN 1976; the Green Revolution followed in 1980.]),
  ("C", [Radio reaches thousands at once, though it convinces fewer than a demonstration.]),
  ("B", [One member, one vote — the cooperative principle that separates it from a company.]),
  ("B", [The Nigeria Incentive-Based Risk Sharing System for Agricultural Lending guarantees a share of the bank's risk.]),
))

#diagram-fig("diagrams/recap_agr2_ch08.svg",
  "Chapter 8 recap card: the extension chain, the methods, the cooperative principles and the policy ladder.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 8 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Extension is a two-way bridge, and its strongest method is the demonstration the farmer can
    walk to. The cooperative is the farmer's own institution — open membership, one member one
    vote, and a surplus shared by patronage — and its weakness is management, not principle. The
    market is shaped by boards, exchanges and associations, and the state by a ladder of policies
    from OFN in 1976 to the Anchor Borrowers' Programme in 2015, each judged by whether the input
    reached the farm in time.
  ]
]

#chapter-checklist("Before you leave Chapter 8", (
  [Define extension and give three of its objectives.],
  [Name four extension methods and one strength of each.],
  [List the cooperative principles and explain the patronage dividend.],
  [Give the year and the signature idea of OFN, the Green Revolution and the Anchor Borrowers' Programme.],
  [Distinguish formal from informal credit, with two examples of each.],
))

#concept-box("Carry this into Volume 1")[
  The two volumes meet at the farm gate. Volume 1 grew the crop and saved the harvest; this one
  kept the animal, fed it, healed it, fished the pond, planted the woodlot, wrote the accounts and
  carried the advice. A candidate who can move between them — soil to feed, feed to animal, animal
  to record, record to policy — has the whole subject in one piece.
]

#include "drill_ch08.typ"
