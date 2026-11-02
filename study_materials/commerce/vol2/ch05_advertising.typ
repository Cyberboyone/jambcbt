#import "template.typ": *

#current-chapter.update("Chapter 5: Advertising and Sales Promotion")

#pagebreak()

#chapter-opener(
  5,
  "Advertising and Sales Promotion",
  subtitle: "The Purposes, the Media, the Types, and the Short-Term Offer That Closes a Sale",
  syllabus-ref: "Sec. 5 • Advertising",
  utme-weight: "7 Qs a year",
  running: "Advertising and Sales Promotion",
)

#focus-radar(
  objectives: (
    "Define advertising and separate it from publicity and from personal selling.",
    "Name the purposes of advertising and match a given advertisement to one.",
    "Choose a medium for a stated product, market and budget.",
    "Distinguish informative, persuasive, generic and institutional advertising.",
    "Name the methods of sales promotion and say when each is used.",
    "Explain what branding and packaging do for a product.",
  ),
  hotspots: (
    "*Advertising is paid, non-personal and identified.* Lose any of the three words and the definition is broken: publicity is unpaid, personal selling is personal, and a rumour has no sponsor.",
    "*AIDA is the standard answer* to \"how does an advertisement work\": it must attract attention, hold interest, create desire and prompt action.",
    "*Primary (generic) advertising sells a product; selective advertising sells a brand.* \"Drink milk\" is primary; \"drink Peak milk\" is selective.",
    "*Sales promotion is short-term and adds a reason to act now.* Advertising gives a reason to buy; promotion gives a reason to buy today.",
    "*Branding is protected by trademark; packaging protects, identifies and sells.* The paper asks which of the three functions is meant by a given example.",
  ),
  trap-summary: "Four slips. (1) Calling a press release advertising, when it is publicity. (2) Choosing television for a local, low-budget, technical product. (3) Saying sales promotion builds long-term brand loyalty — it borrows demand rather than creating it. (4) Confusing a trademark (the legal mark) with a brand (the promise the mark stands for).",
)

// ============================================================================
== 5.1 What Advertising Is

#rule-box("The definition and its three conditions")[
  *Advertising is any paid form of non-personal presentation and promotion of ideas,
  goods or services by an identified sponsor.* Three conditions follow, and each one
  rules something out: *paid* rules out publicity; *non-personal* rules out the
  salesman; *identified sponsor* rules out rumour and anonymous recommendation.
]

#table(
  columns: (0.95fr, 2.4fr, 1.55fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Purpose],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What the advertisement does],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Typical case],
  ),
  [To inform], [tells the market that the product exists, what it does and where it is sold], [a new bank branch, a new textbook edition],
  [To persuade], [gives a reason to prefer this brand to the alternative], [\"washes whiter\", \"lasts longer\"],
  [To remind], [keeps an established brand in front of a market that already knows it], [a soft drink at a football match],
  [To reassure], [confirms quality and after-sales support after the purchase], [a car dealer's service promise],
)

#v(2pt)

#text(size: 9.4pt)[Advertising does not sell by itself. It creates *awareness* and *preference*, and the sale is closed by the salesman, the shop, the price or the promotion. That division of labour is why a question can ask which element of the marketing mix a given activity belongs to.]

// ============================================================================
== 5.2 The Media

#diagram-fig("diagrams/ch05_advertising.svg",
  "AIDA, and the media that carry each stage of an advertisement.", width: 100%)

#table(
  columns: (1.1fr, 2.0fr, 1.9fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Medium],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Strength],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Weakness],
  ),
  [Newspaper], [detail can be given; the reader is already looking; local editions are cheap], [short life; poor reproduction; ignored by non-readers],
  [Magazine], [colour, a specialist readership, a long shelf life], [high cost per thousand; slow to appear],
  [Television], [sight and sound; mass reach; demonstrates the product], [the dearest per contact; the message passes in seconds],
  [Radio], [cheap, local, reaches people who do not read], [sound only; easy to forget; a background medium],
  [Cinema], [a captive audience, in the dark, on a big screen], [small audience; expensive to produce],
  [Poster and billboard], [local, repeated daily, cheap per view], [one line only; no detail; vandalism],
  [Internet and social media], [targeted, measurable, interactive, cheap to test], [ad-blocking; fraud; a crowded space],
  [Direct mail], [named customer, full detail, measurable response], [high cost per contact; thrown away unopened],
)

#v(2pt)

#concept-box("Choosing a medium: the five questions")[
  + *Who is the buyer?* A specialist audience is reached by a trade magazine, not by television.
  + *What must the message say?* A demonstration needs sight; a price list needs print.
  + *Where is the buyer?* A local product is wasted on a national medium.
  + *How much is there to spend?* Television takes budget; posters and radio do not.
  + *How soon must it work?* A launch needs reach in a week; a reminder can be slow.
  The paper's \"most suitable medium\" question is answered by naming the buyer and the message, not by naming the biggest medium.
]

// ============================================================================
== 5.3 The Types of Advertising

#table(
  columns: (1.3fr, 2.3fr, 1.3fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it sells],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Example],
  ),
  [Informative], [a new product or a new use for an old one], [a launch announcement],
  [Persuasive], [one brand against another], [\"the only detergent with X\"],
  [Generic (primary)], [the whole product class, whoever makes it], [\"milk is good for children\", paid for by a dairy board],
  [Selective], [one maker's brand within the class], [a particular brand of milk],
  [Institutional], [the reputation of the organisation rather than a product], [a bank advertising its community work],
  [Reminder], [an established brand, kept familiar], [a soft drink at a stadium],
  [Public service], [a behaviour, not a product], [\"pay your tax\", \"do not drive and drink\"],
)

#v(2pt)

#shortcut-box("Primary against selective, in one line")[
  If a competitor's sales rise when the advertisement works, it is *primary*: the whole
  market grew. If only the advertiser's sales rise, it is *selective*: the market was
  divided differently.
]

// ============================================================================
== 5.4 Sales Promotion

Sales promotion is a *short-term* inducement to buy. It is not advertising, because it
offers something beyond the product's ordinary appeal, and it is not personal selling,
because it works through the product and the shelf rather than through a person.

#table(
  columns: (1.25fr, 2.35fr, 1.35fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What the buyer gets],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Used when],
  ),
  [Price reduction], [the same goods for less, for a stated period], [stock is moving slowly, or a rival has cut price],
  [Coupon], [a voucher worth a fixed sum off the next purchase], [a trial is wanted without a permanent price cut],
  [Free sample], [a small quantity at no charge], [the product is new and must be tried],
  [Premium (gift)], [something extra for buying: a bowl with the soap], [the brand needs a visible advantage],
  [Competition], [a prize for entrants who send a proof of purchase], [attention must be won quickly],
  [Trade-in], [an old item accepted against the price of a new one], [durable goods: cars, phones, machinery],
  [Point-of-sale display], [the product shown where it is bought], [impulse purchases in a supermarket],
  [Loyalty scheme], [points or stamps that accumulate into a reward], [repeat purchase must be encouraged],
)

#v(2pt)

#trap-box("What sales promotion cannot do")[
  It cannot build a brand on its own. A discount teaches the market to wait for the next
  discount; a free sample teaches it to value the sample. Promotion *borrows* demand from
  the future and from the competitor, and the paper's favourite contrast is exactly that:
  advertising creates demand, promotion converts it.
]

// ============================================================================
== 5.5 Branding and Packaging

#table(
  columns: (0.9fr, 2.7fr, 1.35fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Legal protection],
  ),
  [Brand], [a name, sign or symbol that identifies a seller's goods and promises a consistent quality], [protected once registered],
  [Trademark], [the registered legal right in that name or symbol], [the registration itself],
  [Generic name], [the word the product is known by, which no one may monopolise], [none: \"aspirin\", \"cellophane\"],
  [Packaging], [the container that protects, identifies and sells the product], [design rights, not a trademark],
)

#v(2pt)

#text(size: 9.4pt)[Branding does four jobs for the seller and three for the buyer. For the seller it supports a higher price, wins shelf space, makes repeat purchase automatic and gives a base for a new product. For the buyer it identifies the source, guarantees a standard and shortens the choosing. A question that asks for the *advantages of branding to the consumer* wants the second list, not the first.]

// ============================================================================
== 5.6 Four Worked Questions

#worked-example(
  1,
  "Definition",
  [Advertising is best defined as

    A. any message about a product \\
    B. paid, non-personal communication by an identified sponsor \\
    C. the work of a salesman \\
    D. a press release about a firm],
  [
    *Step 1 — test each condition.* Paid, non-personal, identified sponsor.

    *Step 2 — match.* Only B carries all three.

    *Step 3 — eliminate.* A includes rumour and publicity; C is personal selling; D is publicity, which is unpaid.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Classification",
  [An advertisement paid for by a growers' association urging the public to eat more fruit is

    A. selective advertising \\
    B. generic advertising \\
    C. institutional advertising \\
    D. public service advertising],
  [
    *Step 1 — what is being sold?* Fruit, not a named brand.

    *Step 2 — match.* Selling the whole class is primary or generic advertising.

    *Step 3 — eliminate.* Selective sells a brand; institutional sells the organisation's reputation; public service sells a behaviour, not a product.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Application",
  [A maker of industrial pumps has a small budget and a readership of 4,000 engineers. The most suitable medium is

    A. television \\
    B. a national newspaper \\
    C. a specialist trade magazine \\
    D. a roadside poster],
  [
    *Step 1 — name the buyer.* Four thousand engineers, and nobody else.

    *Step 2 — match.* A medium whose readers are those engineers wastes nothing.

    *Step 3 — eliminate.* Television and national newspapers pay for millions who will never buy a pump; a poster cannot explain a technical product.

    *Answer: C.*
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "Distinction",
  [A soap manufacturer offers a free plastic bowl with every three bars bought. This is

    A. advertising \\
    B. personal selling \\
    C. sales promotion \\
    D. publicity],
  [
    *Step 1 — is anything being said?* No; something extra is being given.

    *Step 2 — match.* A short-term extra inducement is sales promotion, here a premium offer.

    *Step 3 — eliminate.* Advertising is paid communication, personal selling is a conversation, publicity is unpaid editorial.

    *Answer: C.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 5.7 Two-Minute Set

#mcq(1, [Publicity differs from advertising because publicity is], [paid for], [unpaid], [personal], [always untrue])

#mcq(2, [An advertisement that reminds the market of a well-known brand is], [informative], [persuasive], [reminder advertising], [institutional])

#mcq(3, [Which medium reaches the largest audience at the lowest cost per contact?], [direct mail], [cinema], [television], [a trade magazine])

#mcq(4, [A coupon is a form of], [advertising], [sales promotion], [public relations], [personal selling])

#answer-key-grid(("B", "C", "C", "B"))

#answer-notes((
  ("B", [Publicity is editorial comment, and it is not paid for by the firm it mentions.]),
  ("C", [Keeping an established brand familiar is the reminder function.]),
  ("C", [Mass reach at a low cost per viewer is television's advantage, whatever its total cost.]),
  ("B", [A voucher offering money off is a short-term inducement, which is sales promotion.]),
))

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: the purposes, the media, the types and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Advertising is paid, non-personal and sponsored, and it informs, persuades, reminds
    and reassures. The medium is chosen by the buyer and the message, not by the size of
    the audience alone; the type is chosen by what is being sold — a class of product
    (generic), a brand (selective), a reputation (institutional) or a behaviour (public
    service). Sales promotion is the short-term inducement that converts the demand
    advertising created, and branding and packaging are what make the product
    recognisable, protected and repeatable.
  ]
]

#chapter-checklist("Before you leave Chapter 5", (
  [Define advertising and name the three conditions in the definition.],
  [Match five purposes to five sample advertisements.],
  [Choose a medium for a stated buyer, message and budget, and justify it.],
  [Distinguish generic, selective, institutional and reminder advertising.],
  [Name six methods of sales promotion and when each is used.],
  [Give three advantages of branding to the buyer and two to the seller.],
))

#concept-box("Carry this into Chapter 6")[
  Advertising is one element of one P. Chapter 6 puts it back into the marketing mix —
  product, price, place and promotion — and adds the research that tells a firm which
  mix to choose before it spends a naira on any of them.
]

#include "drill_ch05.typ"
