#import "template.typ": *

#current-chapter.update("Chapter 7: International Economic Organisations")

#pagebreak()

#chapter-opener(
  7,
  "International Economic Organisations",
  subtitle: "The IMF, the World Bank, the WTO, ECOWAS, the African Union, AfCFTA and OPEC",
  syllabus-ref: "Sec. 7 • International Trade Organisations",
  utme-weight: "6 Qs a year",
  running: "International Economic Organisations",
)

#focus-radar(
  objectives: (
    "Explain why trade between nations needs rules and institutions.",
    "State the functions of the IMF, the World Bank, the WTO and UNCTAD.",
    "State the aims of ECOWAS, the African Union and AfCFTA.",
    "Explain what OPEC does and why a commodity cartel is not a development bank.",
    "Match an organisation to a Nigerian policy headline.",
    "Answer the placement questions the paper sets on this topic.",
  ),
  hotspots: (
    "*IMF stabilises a balance of payments; the World Bank builds.* The IMF lends short-term, against conditions, to a country that cannot pay its imports; the World Bank lends long-term for projects and development.",
    "*The WTO is the rule-book and the court.* It does not lend money; it administers trade agreements and settles disputes.",
    "*ECOWAS is West African; the AU is continental; AfCFTA is a market.* Three different things, and the paper mixes them deliberately.",
    "*OPEC co-ordinates oil output.* It is a cartel of producers, and its instrument is a quota, not a loan.",
    "*UNCTAD is research and advocacy for developing countries*, not a lender — that is the IMF's and the Bank's job.",
  ),
  trap-summary: "Four slips. (1) Saying the World Bank lends short-term to fix a balance of payments. (2) Saying the WTO lends to developing countries. (3) Confusing ECOWAS with the African Union. (4) Treating AfCFTA as a currency union — it is a free-trade area for goods and services.",
)

// ============================================================================
== 7.1 Why the Rules Exist

Nations trade because no country can produce everything it needs at the lowest cost.
The gain from trade is older than any of the organisations in this chapter, but the
*gains* need *rules*: a tariff can cancel a comparative advantage overnight, and a
dispute over a subsidy can close a market for a decade.

#table(
  columns: (1.3fr, 2.3fr, 1.3fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Problem],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it does to trade],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who answers it],
  ),
  [A temporary payments crisis], [a country cannot pay for essential imports], [the IMF],
  [A missing road, port or power station], [the country cannot produce or export], [the World Bank and the development banks],
  [A tariff or a subsidy that breaks a promise], [exports are shut out of a market], [the WTO],
  [A weak commodity price], [export earnings collapse for a whole region], [UNCTAD's advocacy, and a commodity cartel],
  [A small national market], [industry cannot reach scale], [a regional grouping such as ECOWAS or AfCFTA],
)

// ============================================================================
== 7.2 The Global Organisations

#diagram-fig("diagrams/ch07_world.svg",
  "Global bodies and regional groupings, and the one job each was made for.", width: 100%)

#table(
  columns: (1.05fr, 1.6fr, 2.2fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Organisation],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Made for],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it actually does],
  ),
  [IMF], [a balance-of-payments crisis], [lends short-term foreign currency against conditions; monitors exchange-rate and fiscal policy],
  [World Bank], [development], [lends long-term for infrastructure, education and agriculture; gives technical advice],
  [WTO], [the rules of trade], [administers the agreements, lowers tariffs by negotiation, settles disputes between members],
  [UNCTAD], [the trade of poorer nations], [research, advocacy and technical assistance; no lending],
  [ILO], [labour standards], [conventions on hours, child labour, safety and collective bargaining],
)

#v(2pt)

#trap-box("The IMF and the World Bank, once and for all")[
  *Ask what the money is for.* If the country cannot pay its bills this year, the problem
  is the balance of payments and the lender is the *IMF*: short-term, conditional, and
  repaid as the payments position improves. If the country needs a dam, a road or a
  school, the problem is development and the lender is the *World Bank*: long-term, project
  based, and repaid over decades. Both were created at Bretton Woods in 1944; that is the
  only fact the paper asks you to share between them.
]

// ============================================================================
== 7.3 The Regional Groupings

#table(
  columns: (1.15fr, 1.5fr, 2.1fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Grouping],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Membership],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Aims],
  ),
  [ECOWAS], [fifteen West African states], [free movement of goods, people and capital; a common external tariff; economic integration],
  [African Union], [all African states], [continental political and economic co-operation; peace and security; the African Continental Free Trade Area],
  [AfCFTA], [African states that have ratified it], [one African market for goods and services, with the phased removal of tariffs],
  [European Union], [European states], [a single market, a customs union and, for many members, a single currency],
  [OPEC], [oil-exporting states], [co-ordination of output and price; a quota for each member],
)

#v(2pt)

#concept-box("Three African things, kept apart")[
  + *ECOWAS* is a region: West Africa, a court, a passport, a tariff wall around the region.
  + *The African Union* is a continent: political and economic co-operation, and the parent of AfCFTA.
  + *AfCFTA* is a market: an agreement to remove tariffs between African countries on most goods and services, in phases.
  A question that asks which body Nigeria joined in 1975 is asking ECOWAS; one that asks which
  agreement creates a single African market is asking AfCFTA.
]

// ============================================================================
== 7.4 The Commodity Organisations

#text(size: 9.4pt)[A commodity producer faces a price it cannot set, because the market is world-wide and the product is undifferentiated. Producer organisations exist to bargain over that price by managing supply.]

#table(
  columns: (1.2fr, 1.6fr, 1.95fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Commodity],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Instrument],
  ),
  [OPEC], [crude oil], [production quotas agreed by member governments],
  [Cocoa producers' alliance], [cocoa], [co-ordination between West African growers, chiefly Côte d'Ivoire and Ghana],
  [International Coffee Organization], [coffee], [export quotas and price support in its classic form],
  [International Tin Council], [tin], [buffer stock, until its collapse in 1985],
)

#v(2pt)

#text(size: 9.4pt)[The economic logic is a cartel: restrict supply, and the price rises. The political difficulty is that each member gains by producing a little more than its quota while the others hold back — which is why commodity agreements have a history of collapse, and why the paper asks for the *instrument* rather than for the outcome.]

// ============================================================================
== 7.5 Nigeria in the System

#table(
  columns: (1.45fr, 2.15fr, 1.3fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Membership],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What Nigeria gets from it],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Since],
  ),
  [IMF], [balance-of-payments support and surveillance], [1961],
  [World Bank], [project loans and technical assistance], [1961],
  [WTO], [access to markets under agreed rules], [1995, as a founder member],
  [ECOWAS], [a regional market and free movement of citizens], [1975, as a founder],
  [African Union], [continental co-operation and peacekeeping], [2002, successor to the OAU],
  [OPEC], [a voice in the oil price and a quota], [1971],
)

#v(2pt)

#text(size: 9.4pt)[The paper rarely asks for dates, but it does ask which organisation a policy belongs to: a quota on oil output is OPEC, a tariff wall around West Africa is ECOWAS, a loan to build a rail line is the World Bank, a short-term facility to defend the naira is the IMF, and a complaint that another country is dumping goods is the WTO.]

// ============================================================================
== 7.6 Four Worked Questions

#worked-example(
  1,
  "Definition",
  [The organisation that lends to a member country to correct a short-term balance-of-payments deficit is the

    A. World Bank \\
    B. International Monetary Fund \\
    C. World Trade Organization \\
    D. African Development Bank],
  [
    *Step 1 — the phrase is \"short-term balance of payments\".* That is the IMF's exact mandate.

    *Step 2 — match.* The IMF lends foreign currency against conditions while the payments position is corrected.

    *Step 3 — eliminate.* The World Bank and the AfDB lend long-term for projects; the WTO does not lend at all.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Classification",
  [A complaint that another country is subsidising its exports in breach of an agreement is heard by the

    A. IMF \\
    B. ECOWAS Secretariat \\
    C. WTO dispute settlement body \\
    D. UNCTAD],
  [
    *Step 1 — is the issue money, development, or rules?* It is a rule being broken.

    *Step 2 — match.* The WTO administers the rules and settles disputes between members.

    *Step 3 — eliminate.* The IMF deals with payments, UNCTAD with advocacy, ECOWAS with a region.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Application",
  [A West African trader may sell his goods in a neighbouring member state without paying a tariff because of

    A. the WTO \\
    B. ECOWAS \\
    C. OPEC \\
    D. the World Bank],
  [
    *Step 1 — identify the region.* West Africa, and the parties are member states.

    *Step 2 — match.* The free movement of goods within West Africa is the ECOWAS protocol.

    *Step 3 — eliminate.* The WTO lowers tariffs by global negotiation, not by regional free movement; OPEC and the World Bank have nothing to do with it.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "Distinction",
  [OPEC's principal instrument is

    A. long-term project loans \\
    B. production quotas agreed among members \\
    C. tariff reductions \\
    D. balance-of-payments support],
  [
    *Step 1 — what kind of body is OPEC?* A commodity cartel of oil producers.

    *Step 2 — match.* A cartel restricts supply, and its instrument is the quota.

    *Step 3 — eliminate.* Loans, tariffs and payments support belong to the Bank, the WTO and the IMF.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 7.7 Two-Minute Set

#mcq(1, [The World Bank differs from the IMF mainly because the Bank], [lends short-term], [lends long-term for development], [settles trade disputes], [sets oil quotas])

#mcq(2, [AfCFTA is], [a currency union], [a free-trade area for African goods and services], [a central bank], [a commodity cartel])

#mcq(3, [The organisation that administers the rules of international trade is the], [IMF], [World Bank], [WTO], [ECOWAS])

#mcq(4, [UNCTAD's main work is], [lending], [research and advocacy for developing countries], [settling disputes], [issuing currency])

#answer-key-grid(("B", "B", "C", "B"))

#answer-notes((
  ("B", [The Bank finances projects and development over decades; the IMF stabilises a payments crisis.]),
  ("B", [It removes tariffs on most goods and services in phases; it is not a currency or a bank.]),
  ("C", [The WTO administers the agreements and hears disputes between members.]),
  ("B", [UNCTAD studies and argues the case for developing countries; it does not lend.]),
))

#diagram-fig("diagrams/recap_ch07.svg",
  "Chapter 7 recap card: the global bodies, the regional groupings and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Trade between nations needs three kinds of institution: one to stabilise a payments
    crisis (the IMF), one to finance development (the World Bank and the regional banks),
    and one to write and enforce the rules (the WTO). UNCTAD argues the case for the
    poorer nations without lending, and the commodity organisations — OPEC above all —
    try to manage a world price by managing supply. The regional groupings do a different
    job again: ECOWAS frees West Africa, the African Union joins the continent, and
    AfCFTA turns the continent into one market for goods and services.
  ]
]

#chapter-checklist("Before you leave Chapter 7", (
  [State four functions of the IMF and four of the World Bank, and say how they differ.],
  [Explain what the WTO does when two members disagree.],
  [State the aims of ECOWAS, the AU and AfCFTA without mixing them.],
  [Explain how a commodity cartel tries to raise a price, and why it fails.],
  [Match five Nigerian policy headlines to the organisation behind them.],
  [Name the organisation that would handle a payments crisis, a dam, a dumping complaint and an oil quota.],
))

#concept-box("Carry this into Chapter 8")[
  Every organisation in this chapter regulates trade between firms. Chapter 8 turns to the
  firm itself: how it is managed, how its office records what it does, and how the
  electronic market has changed both.
]

#include "drill_ch07.typ"
