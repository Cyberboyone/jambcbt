#import "template.typ": *

#current-chapter.update("Appendix G: Model Answers")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix G: Model Answers]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Model Answers]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    Twelve written answers, in the length and shape a UTME paper rewards. The object is not the
    prose — it is the structure: a named point, then the because, then the consequence.
  ]
]

#v(6pt)

== G.1 How a Written Answer Is Marked

#table(
  columns: (1.1fr, 2.5fr, 1.0fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Instruction],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What earns the mark],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Marks],
  ),
  [State], [a named point, one line each, no explanation needed], [1 each],
  [Explain], [the point plus a because that links cause to effect], [2 each],
  [Describe], [the steps or features in order, with the detail that distinguishes them], [2 – 3],
  [Give five ways], [five separate numbered points; five lines, not five paragraphs], [5],
  [Calculate], [the formula, the substitution, the answer with its unit], [2 – 3],
  [Compare], [the criterion named first, then the two sides across it], [2 per pair],
)

== G.2 Answer One — Why a Farmer Keeps Livestock

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[State five reasons why a farmer keeps livestock.]
]

#v(3pt)

#text(size: 10pt)[
  *1. Protein.* Meat, milk, eggs and fish supply the animal protein that a diet of roots and
  cereals lacks.
]

#text(size: 10pt)[
  *2. Income.* Livestock are sold throughout the year, so they smooth the cash flow between
  harvests.
]

#text(size: 10pt)[
  *3. Savings and insurance.* A herd is a bank that walks: an animal can be sold for school fees
  or a hospital bill without borrowing.
]

#text(size: 10pt)[
  *4. Manure.* Dung and poultry litter return nitrogen and organic matter to the soil, cutting the
  fertiliser bill.
]

#text(size: 10pt)[
  *5. Power and transport.* Oxen plough and harrow; donkeys and camels carry loads where no
  vehicle goes.
]

#v(3pt)

#text(size: 9.2pt)[
  *Two more that earn a mark when the question asks for six:* hides, skins and wool earn foreign
  exchange, and the by-products — blood meal, bone meal, fish meal — feed back into the crop
  enterprise as fertiliser and feed.
]

== G.3 Answer Two — Why the Rumen Matters

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Explain why a ruminant can live on grass while a pig cannot.]
]

#v(3pt)

#text(size: 10pt)[
  A ruminant carries a large fermentation chamber, the rumen, in which bacteria and protozoa
  break down cellulose. The animal itself has no enzyme for cellulose, but the microbes do, and
  the volatile fatty acids they release are absorbed through the rumen wall as the animal's main
  energy source. The microbes also build microbial protein from non-protein nitrogen, so the
  ruminant can turn ammonia from urea into meat and milk.
]

#text(size: 10pt)[
  The pig has a single stomach, no rumen and no microbial population of that size. Cellulose
  passes through it almost undigested, and the pig must be given feed it can break down itself —
  grain, tubers, cakes — which is exactly the feed a man could eat. That is why the pig competes
  with the household for maize, and the cow competes with nobody: it eats what the household
  cannot.
]

#text(size: 10pt)[
  The consequence for the farmer is economic. A ruminant can be finished on grass, legume haulms
  and crop residue with a little concentrate; the pig needs a ration built on maize and cake,
  and its feed is the largest single cost on the farm.
]

== G.4 Answer Three — Why a Crossbreed

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Give four reasons why a farmer might cross a local breed with an exotic one.]
]

#v(3pt)

#text(size: 10pt)[
  *1. Yield.* The exotic parent brings a higher milk or egg yield, and the first cross inherits a
  large part of it.
]

#text(size: 10pt)[
  *2. Hardiness.* The local parent carries resistance to local disease and tolerance of poor feed
  and heat, so the cross survives where the pure exotic would die.
]

#text(size: 10pt)[
  *3. Hybrid vigour.* The first cross often outperforms both parents for growth and fertility,
  because the two gene pools are different.
]

#text(size: 10pt)[
  *4. Speed of improvement.* Crossing is faster than up-grading, which needs several generations
  of back-crossing to the purebred sire.
]

#v(3pt)

#text(size: 9.2pt)[
  *The warning the paper likes:* the vigour is lost in the second generation. The farmer who
  keeps the crossbred females and mates them to a crossbred male gets a mixed, smaller and less
  predictable calf. The cross is a terminal product, or it is back-crossed to one of the parents
  deliberately.
]

== G.5 Answer Four — Newcastle Disease

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Describe how a poultry farmer should control Newcastle disease.]
]

#v(3pt)

#text(size: 10pt)[
  *1. Vaccinate.* Newcastle vaccine at day one and a booster at three weeks, then again at
  point of lay; the vaccine is given in water, by eye drop or by injection, and a live vaccine
  must be handled cold.
]

#text(size: 10pt)[
  *2. Buy from a hatchery that vaccinates.* The chick should arrive with its Marek's dose done and
  a record of the Newcastle schedule it has had.
]

#text(size: 10pt)[
  *3. Keep a closed flock.* No visitor walks into the pen without changing footwear; no bird comes
  in from the market without a quarantine period.
]

#text(size: 10pt)[
  *4. Control the litter and the air.* Dry litter, clean water and ventilation reduce the
  respiratory stress that lets the virus take hold.
]

#text(size: 10pt)[
  *5. Report and destroy.* Newcastle is notifiable. When gasping, a twisted neck and a green
  diarrhoea appear, the flock is culled and the carcasses burned or buried deep, and the house
  is disinfected and rested.
]

#v(3pt)

#text(size: 9.2pt)[
  *Treatment is not a mark.* There is no antibiotic for a virus. A farmer who injects an antibiotic
  and calls it control has answered the wrong question, and the paper knows it.
]

== G.6 Answer Five — Brucellosis and the Household

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Explain why brucellosis in a dairy herd is a public health problem.]
]

#v(3pt)

#text(size: 10pt)[
  Brucellosis is a bacterial disease of cattle that causes abortion, infertility and a drop in
  milk yield — an economic loss before it is a health one. The bacterium is shed in the milk,
  the urine and the products of abortion, so the herd becomes a reservoir.
]

#text(size: 10pt)[
  The herdsman who drinks raw milk or handles an aborted calf takes the bacterium into himself; in
  man the disease presents as undulant fever — recurring fever, sweats and joint pain that a
  clinic easily mistakes for malaria. It is a zoonosis, and that is the word that earns the mark.
]

#text(size: 10pt)[
  Control is therefore threefold: boil or pasteurise the milk, test the herd and cull the reactors,
  and protect the hands of anyone who assists at calving.
]

== G.7 Answer Six — Artificial Insemination

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[State five advantages of artificial insemination over natural service.]
]

#v(3pt)

#text(size: 10pt)[
  *1. One bull serves many herds.* A single collection of semen is diluted to serve hundreds of
  cows, so an expensive sire is used far beyond the reach of his legs.
]

#text(size: 10pt)[
  *2. No bull is kept on the farm.* The farmer avoids the cost and the danger of a bull, and the
  smallholder with two cows can still use a good sire.
]

#text(size: 10pt)[
  *3. Disease control.* Semen is screened and the bull is absent, so brucellosis, trichomoniasis
  and vibriosis are not carried in on the animal.
]

#text(size: 10pt)[
  *4. Breeding records.* The sire is known exactly, and the date of service is recorded, so the
  calving date can be predicted.
]

#text(size: 10pt)[
  *5. Genetic progress.* Semen and embryos can be imported, so a national herd improves faster
  than it could by importing live animals.
]

#v(3pt)

#text(size: 9.2pt)[
  *The limitation, if asked:* A.I. demands heat detection, a trained inseminator, a cold chain and
  a regular service — in a scattered village herd those are the reasons it fails.
]

== G.8 Answer Seven — Brooding

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Describe the management of day-old chicks in their first week.]
]

#v(3pt)

#text(size: 10pt)[
  *1. Heat.* The brooder is at 32 – 35 °C on the first day and falls by 3 °C a week. Chicks
  spread evenly mean the temperature is right; chicks huddled under the lamp mean it is too cold;
  chicks pressed to the walls mean it is too hot.
]

#text(size: 10pt)[
  *2. Water first.* The chicks are given cool, clean water with glucose or a vitamin for the first
  hours before any feed, so the dehydrated chick drinks before it eats.
]

#text(size: 10pt)[
  *3. Feed.* A chick starter of about 20 – 22 per cent crude protein is offered in shallow
  feeders, little and often, so that it is always fresh.
]

#text(size: 10pt)[
  *4. Space and litter.* About 25 – 30 chicks to the square metre in the first week on dry wood
  shaving, with the brooder guard keeping them near the heat.
]

#text(size: 10pt)[
  *5. Vaccination and culling.* Newcastle at day one and Gumboro at about day fourteen, with the
  weak chicks removed early so that they do not infect the rest.
]

#v(3pt)

#text(size: 9.2pt)[
  *The sentence that earns the last mark:* the first week decides the flock. A chick chilled on
  the first night never catches up, and its feed conversion carries the loss to the market.
]

== G.9 Answer Eight — Liming and Fertilising a Pond

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Why does a fish farmer lime and fertilise a pond before stocking?]
]

#v(3pt)

#text(size: 10pt)[
  Lime is calcium carbonate or quicklime spread on the pond bottom and the water. It raises the
  pH of an acid pond towards neutral, where the bacteria that break down waste work best; it
  kills fish parasites, snails and the eggs of predators; and it clears the water so that light
  reaches the plankton.
]

#text(size: 10pt)[
  Fertiliser — poultry manure, cow dung or a mineral fertiliser — feeds the plankton, not the
  fish. The green colour that follows is the bloom of algae that the tilapia and the fry graze,
  and the same algae release oxygen in daylight. A pond that is manured carries several times the
  fish of a clear pond.
]

#text(size: 10pt)[
  The order matters: lime first, wait a week or two, then manure, then stock when the water has
  coloured. Manure put into a freshly limed pond is wasted, and fish put into a freshly limed pond
  are burned at the gills.
]

== G.10 Answer Nine — Farm Records

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[State five reasons why a livestock farmer should keep records.]
]

#v(3pt)

#text(size: 10pt)[
  *1. To measure performance.* Eggs per hen, feed conversion and calving interval are calculated
  from records; without them the farmer has an impression, not a figure.
]

#text(size: 10pt)[
  *2. To plan and budget.* Last year's feed cost is the basis of next year's budget, and the
  culling list comes from the production record.
]

#text(size: 10pt)[
  *3. To obtain credit.* A bank or a cooperative lends against evidence, and the evidence is a
  cash book and a balance sheet.
]

#text(size: 10pt)[
  *4. To settle disputes and claims.* An insurance claim after a fire, or a dispute with a
  labourer, is settled from the inventory and the wage record.
]

#text(size: 10pt)[
  *5. To compare enterprises.* The gross margin of the poultry unit against the pig unit tells the
  farmer where the next naira should go.
]

#v(3pt)

#text(size: 9.2pt)[
  *The habit that makes records work:* write the entry the same day, in the same book, in the same
  unit. A record reconstructed at month-end is a story, and the examiner can tell the difference.
]

== G.11 Answer Ten — The Cooperative

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Explain four benefits of a cooperative society to a smallholder.]
]

#v(3pt)

#text(size: 10pt)[
  *1. Credit.* The society lends from the members' savings and from a bank guarantee that no
  single smallholder could give; the loan is cheap because the group carries the risk.
]

#text(size: 10pt)[
  *2. Inputs.* Feed, drugs, chicks and fertiliser are bought in bulk at a trade price and shared,
  so the member pays less than the village retailer's price.
]

#text(size: 10pt)[
  *3. Marketing.* Produce is bulked and graded, so the society can negotiate with a buyer or a
  processor that would not come to one farmer with two bags.
]

#text(size: 10pt)[
  *4. Knowledge.* Meetings, demonstrations and a visiting extension officer reach the member
  through the society, and the member's problem reaches the officer the same way.
]

#v(3pt)

#text(size: 9.2pt)[
  *The structural point:* control is one member, one vote, and the surplus is shared by patronage,
  not by shares. A society that drifts from those two principles becomes a company with the
  worst features of both.
]

== G.12 Answer Eleven — Why Insurance Is Difficult

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Why is agricultural insurance uncommon among Nigerian smallholders?]
]

#v(3pt)

#text(size: 10pt)[
  *1. The risk is shared by everybody at once.* Drought, flood or an outbreak hits a whole district,
  so the insurer cannot average the loss across many small independent events.
]

#text(size: 10pt)[
  *2. The sums are small and the cost of assessment is large.* A claim on two goats costs more to
  verify than the goats are worth.
]

#text(size: 10pt)[
  *3. Records are missing.* The insurer cannot value a flock that was never counted or a harvest
  that was never weighed, and the farmer cannot prove a loss.
]

#text(size: 10pt)[
  *4. The premium looks like money wasted.* A farmer on a narrow margin will not pay a certain
  small sum against an uncertain large one, particularly when he has never made a claim.
]

#text(size: 10pt)[
  *5. Moral hazard and fraud.* An animal that is already sick can be insured, and a dead animal
  can be hard to identify; the insurer's suspicion raises the premium for everybody.
]

#v(3pt)

#text(size: 9.2pt)[
  *What is done about it:* subsidised premiums, group policies through a cooperative, index
  insurance based on rainfall rather than on a visit, and NIRSAL's guarantee that shares the
  bank's risk. Each is an attempt to answer one of the five.
]

== G.13 Answer Twelve — The Marketing Boards

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[State four reasons why the marketing boards were dissolved in 1986.]
]

#v(3pt)

#text(size: 10pt)[
  *1. The producer's share was too small.* The board bought at a fixed, low price and sold at the
  world price, so the difference funded the board and the government, not the farmer.
]

#text(size: 10pt)[
  *2. The price was fixed, not market-determined.* A fixed price never rose with the world market,
  so a boom in cocoa or palm oil never reached the farmer.
]

#text(size: 10pt)[
  *3. The boards were inefficient and corrupt.* Overstaffing, delayed payments and leakage turned
  a marketing service into a tax.
]

#text(size: 10pt)[
  *4. They discouraged processing and private trade.* A monopoly buyer had no reason to grade, and
  private buyers and processors were shut out of the chain.
]

#v(3pt)

#text(size: 9.2pt)[
  *What replaced them:* commodity boards that promote rather than monopolise, produce inspection
  and grading, and the export crop funds. The date and the farmer's share are the marks.
]

#pagebreak(weak: true)
