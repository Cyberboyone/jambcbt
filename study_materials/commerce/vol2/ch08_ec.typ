#import "template.typ": *

#current-chapter.update("Chapter 8: Management, the Office and E-Commerce")

#pagebreak()

#chapter-opener(
  8,
  "Management, the Office and E-Commerce",
  subtitle: "The Functions of Management, the Work of the Office, and the Market on a Screen",
  syllabus-ref: "Sec. 8 • Management and Office Practice",
  utme-weight: "5 Qs a year",
  running: "Management, the Office and E-Commerce",
)

#focus-radar(
  objectives: (
    "Name the functions of management and say what each involves.",
    "Distinguish the three levels of management and the skill each needs most.",
    "State the functions of an office and distinguish centralised from decentralised filing.",
    "Name the methods of filing and the equipment of a modern office.",
    "Distinguish the four models of e-commerce and weigh its benefits against its risks.",
    "State the qualities of an entrepreneur and the contents of a business plan.",
  ),
  hotspots: (
    "*Management is POSDC — planning, organising, staffing, directing, controlling.* A question that describes an activity is asking you to place it in one of the five, and the commonest mix-up is organising (building the structure) with staffing (filling it).",
    "*Top management plans, middle management coordinates, supervisory management supervises.* The paper asks which level spends its time on long-term policy.",
    "*The office does four things:* it receives information, records it, arranges it and communicates it. Filing is the third of those four, made permanent.",
    "*E-commerce is B2C, B2B, C2C, C2B.* A shop selling to a consumer is B2C; two firms trading through a portal is B2B; a marketplace where one consumer sells to another is C2C.",
    "*An entrepreneur bears risk and organises the factors of production; an intrapreneur does it inside a firm.* That distinction is a favourite distractor.",
  ),
  trap-summary: "Four slips. (1) Saying management is only giving orders. (2) Treating filing as storage rather than retrieval. (3) Calling every on-line transaction e-commerce when only the sale of goods and services is. (4) Confusing an entrepreneur with an investor — the entrepreneur supplies enterprise, not necessarily capital.",
)

// ============================================================================
== 8.1 The Functions of Management

#rule-box("The definition, and the five functions")[
  *Management is the process of planning, organising, staffing, directing and controlling
  the resources of an organisation to achieve its objectives.* The five words are the
  examinable list, and the paper will describe an activity and ask which one it is.
]

#table(
  columns: (1.05fr, 2.4fr, 1.45fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What the manager does],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The document it produces],
  ),
  [Planning], [sets the objective and chooses the route to it, in advance], [a plan, a budget, a forecast],
  [Organising], [groups the work, divides it, and gives each group its authority], [an organisation chart, job descriptions],
  [Staffing], [recruits, trains, appraises and pays the people the structure needs], [a staff list, a training plan],
  [Directing], [instructs, motivates, leads and communicates day to day], [instructions, circulars, a briefing],
  [Controlling], [compares performance with the plan and corrects the difference], [a variance report, an appraisal],
)

#v(2pt)

#concept-box("The three levels, and the skill each needs")[
  + *Top management* — the board and the chief executive: policy, long horizons, the whole firm. It needs *conceptual* skill.
  + *Middle management* — heads of department: translating policy into programmes, co-ordinating sections. It needs *human* skill most.
  + *Supervisory management* — foremen and supervisors: the daily direction of operatives. It needs *technical* skill.
  A question that asks where a decision belongs is asking for the level, and the test is always the horizon: a ten-year factory is top, a monthly rota is supervisory.
]

// ============================================================================
== 8.2 The Office and Its Work

An office is not a room; it is a function. Every business, however small, has one, and it
does four things with information.

#table(
  columns: (1.15fr, 2.35fr, 1.4fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Example],
  ),
  [Receiving], [taking in letters, orders, invoices and calls], [the mail room, the order desk],
  [Recording], [writing it down so that it can be found and proved], [the register, the ledger, the file],
  [Arranging], [sorting, filing and indexing so that retrieval is quick], [the filing system],
  [Communicating], [sending it out to the person who needs it], [letters, e-mail, the internal memo],
)

#table(
  columns: (1.2fr, 2.25fr, 1.45fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Method of filing],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Files are kept by],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Best for],
  ),
  [Alphabetical], [the name of the person or firm], [correspondence, customers],
  [Numerical], [a number given to each file], [large volumes, where names repeat],
  [Chronological], [the date], [invoices, receipts, a month's records],
  [Subject], [the topic], [projects, research, cases],
  [Geographic], [the town or region], [a sales force organised by territory],
)

#v(2pt)

#shortcut-box("Centralised or decentralised?")[
  *Centralised* filing keeps every record in one place: consistent, cheaper, and easier to
  control — but slow, and useless to a branch a hundred kilometres away. *Decentralised*
  filing keeps each department's records with the department: fast and local, but
  duplicated and harder to standardise. The paper asks which suits a firm with branches;
  the answer is a central index with local files.
]

// ============================================================================
== 8.3 E-Commerce

#diagram-fig("diagrams/ch08_ec.svg",
  "E-commerce: four models, what it gives, and what it costs.", width: 100%)

#table(
  columns: (0.9fr, 2.4fr, 1.5fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Model],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who sells to whom],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Example],
  ),
  [B2C], [a business to a consumer], [an on-line shop selling phones],
  [B2B], [a business to another business], [a manufacturer ordering raw material through a portal],
  [C2C], [a consumer to another consumer], [a marketplace where individuals list goods],
  [C2B], [a consumer to a business], [a freelancer bidding for a firm's design job],
)

#table(
  columns: (1.35fr, 2.1fr, 1.45fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Traditional trade],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[E-commerce],
  ),
  [Reach], [the town, the street, opening hours], [anywhere with a connection, at any hour],
  [Cost], [rent, staff, stock in a shop], [a site, a warehouse and delivery],
  [The buyer's check], [sees and touches the good], [a photograph, a review, a returns policy],
  [The record], [a receipt in a drawer], [an order history and a stock system],
  [The risk], [theft and bad debt], [fraud, data loss and a parcel that does not arrive],
)

#v(2pt)

#trap-box("E-commerce is the transaction, not the technology")[
  A firm with a website that only advertises is not doing e-commerce; a firm that takes
  the order and the payment on-line is. The paper's test is whether the *sale* happens
  electronically, so an on-line catalogue with a telephone order line is a near-miss
  option, not the answer.
]

// ============================================================================
== 8.4 The Entrepreneur

#table(
  columns: (1.25fr, 2.3fr, 1.4fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Quality],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it looks like in practice],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Its opposite],
  ),
  [Risk bearing], [puts his own money and reputation behind an uncertain venture], [the salaried manager],
  [Initiative], [sees a gap before anyone has described it as one], [waiting for instructions],
  [Innovation], [finds a new product, method or market], [copying an existing shop exactly],
  [Organising ability], [brings land, labour, capital and enterprise together], [working alone with no plan],
  [Self-confidence and persistence], [continues after a failure that would stop others], [abandoning at the first loss],
  [Calculation], [knows the cost, the price and the break-even point], [hoping the money will come],

)

#v(2pt)

#text(size: 9.4pt)[The business plan is the entrepreneur's instrument: what the business will do, for whom, at what cost, with what money, and how it will know whether it is working. A bank reads it for the numbers; the paper reads it for the four headings — product, market, finance and management.]

// ============================================================================
== 8.5 Four Worked Questions

#worked-example(
  1,
  "Definition",
  [The management function that groups activities and assigns authority is

    A. planning \\
    B. organising \\
    C. staffing \\
    D. controlling],
  [
    *Step 1 — read the verb.* Grouping and assigning authority builds a structure.

    *Step 2 — match.* Building the structure is organising; filling it with people would be staffing.

    *Step 3 — eliminate.* Planning chooses; controlling compares; staffing recruits.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Classification",
  [A firm keeps every invoice in date order. Its filing method is

    A. alphabetical \\
    B. numerical \\
    C. chronological \\
    D. subject],
  [
    *Step 1 — what is the sort key?* The date.

    *Step 2 — match.* Date order is chronological filing.

    *Step 3 — eliminate.* Name, number and topic are the other three keys, and none is used here.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Application",
  [A supermarket that sells through its own website to individual shoppers is engaged in

    A. B2B \\
    B. B2C \\
    C. C2C \\
    D. C2B],
  [
    *Step 1 — who sells, and to whom?* A business, to consumers.

    *Step 2 — match.* Business to consumer is B2C.

    *Step 3 — eliminate.* B2B is business to business, C2C is consumer to consumer, C2B is consumer to business.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "Distinction",
  [An employee who develops a new product line inside his employer's firm, using the firm's money and bearing none of the personal risk, is

    A. an entrepreneur \\
    B. an intrapreneur \\
    C. a shareholder \\
    D. a sole trader],
  [
    *Step 1 — where is the risk?* With the firm, not with the individual.

    *Step 2 — match.* Innovating inside a firm without carrying the personal risk is the intrapreneur.

    *Step 3 — eliminate.* An entrepreneur carries the risk; a shareholder supplies capital; a sole trader owns the business.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 8.6 Two-Minute Set

#mcq(1, [The five functions of management are], [planning, organising, staffing, directing, controlling], [planning, buying, selling, paying, recording], [leading, selling, advertising, pricing, filing], [budgeting, auditing, reporting, banking, staffing])

#mcq(2, [The level of management that sets long-term policy is], [supervisory], [middle], [top], [operative])

#mcq(3, [The office function that makes a record retrievable is], [receiving], [recording], [arranging], [communicating])

#mcq(4, [A website that only advertises a shop's goods, with orders taken by telephone, is], [B2C e-commerce], [not e-commerce], [C2C e-commerce], [B2B e-commerce])

#answer-key-grid(("A", "C", "C", "B"))

#answer-notes((
  ("A", [Planning, organising, staffing, directing and controlling are the five functions.]),
  ("C", [Top management sets policy; middle translates it; supervisory applies it daily.]),
  ("C", [Arranging — filing and indexing — is what makes a record findable again.]),
  ("B", [The sale is completed by telephone, so the transaction is not electronic.]),
))

#diagram-fig("diagrams/recap_ch08.svg",
  "Chapter 8 recap card: management, the office, e-commerce and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 8 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Management is planning, organising, staffing, directing and controlling, and the three
    levels differ by horizon rather than by title. The office receives, records, arranges
    and communicates information, and filing is the arranging made permanent — by name,
    number, date, subject or place. E-commerce is the sale completed on a screen, in four
    models: B2C, B2B, C2C and C2B, with a wider market on one side and fraud, delivery and
    privacy on the other. The entrepreneur carries the risk; the intrapreneur takes the
    same initiative with someone else's capital behind him.
  ]
]

#chapter-checklist("Before you leave Chapter 8", (
  [Name the five functions of management and the document each produces.],
  [Place six decisions at the right level of management.],
  [Name the four functions of an office.],
  [Choose a filing method for four different records.],
  [Distinguish the four models of e-commerce with an example of each.],
  [State four qualities of an entrepreneur and four headings of a business plan.],
))

#concept-box("The end of the volume")[
  Volume 1 gave you the business world; this volume gave you the services that surround
  it and the market it sells into. The two papers that follow test both, in the
  proportions the examination uses — and Appendix H lists the twenty-five traps that
  separate a candidate who knows the material from one who scores it.
]

#include "drill_ch08.typ"
