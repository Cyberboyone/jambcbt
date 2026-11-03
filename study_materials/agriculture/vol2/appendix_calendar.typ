#import "template.typ": *

#current-chapter.update("Appendix E: The Farm Calendar")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix E: The Farm Calendar]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Farm Calendar]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    An animal year in the two seasons. Read the row for the month you are in and ask what the
    paper would say should be happening: every husbandry question is a calendar question in
    disguise.
  ]
]

#v(6pt)

== E.1 The Year, South and North

#table(
  columns: (0.62fr, 1.55fr, 1.55fr, 1.02fr),
  inset: (x: 5pt, y: 2.8pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Month],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[South — forest and derived savanna],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[North — guinea and sudan savanna],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The risk],
  ),
  [Jan], [dry, dusty, harmattan; brood indoors, warm water], [cold nights; protect kids and lambs], [chilling, pneumonia],
  [Feb], [first heat; plant fodder plots], [feed reserves running low], [feed shortage],
  [Mar], [early rain; vaccinate before the flies rise], [dusty pasture, water points low], [disease, thirst],
  [Apr], [rain establishes; sow fodder grass, stock ponds], [first rain; plant fodder], [erosion of bare pens],
  [May], [peak rain; worms rise, drench and rotate], [rain begins; dip and dose], [internal parasites],
  [Jun], [wet pasture; milk yield peaks], [grazing improves; watch for bloat on wet legume], [bloat, foot rot],
  [Jul], [high humidity; coccidiosis and mould in feed], [grass tall; make hay and silage], [mould, coccidiosis],
  [Aug], [flood risk in valley pens; move stock to high ground], [harvest and store hay], [flooding],
  [Sep], [rain tapers; late hatch, keep litter dry], [hay made; repair pens], [damp litter],
  [Oct], [dry season begins; buy and store feed], [harvest residues; graze stubble], [feed price rises],
  [Nov], [harmattan returns; dust and cold nights], [dry, cold; supplement concentrate], [cold stress],
  [Dec], [dry and dusty; cull the unproductive stock], [dry-season grazing far from water], [water distance],
)

== E.2 The Calendar of One Enterprise

#table(
  columns: (0.62fr, 1.55fr, 2.55fr),
  inset: (x: 5pt, y: 2.8pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Day or week],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The broiler],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The layer],
  ),
  [Day 1], [brooder at 32 – 35 °C, water with glucose, Marek's vaccine given in the hatchery], [brooder at 32 – 35 °C, Marek's in the hatchery, Newcastle at day 1],
  [Day 7], [temperature down 3 °C, weigh a sample], [temperature down 3 °C, debeak at 7 – 10 days],
  [Day 14], [Gumboro vaccine in water], [Gumboro vaccine in water],
  [Week 3], [Newcastle booster, 10 birds/m² on deep litter], [Newcastle booster, cull the runts],
  [Week 5], [finisher ration, watch for heat], [grower ration, weigh monthly],
  [Week 6 – 8], [sell at 1.8 – 2.2 kg, FCR about 1.7 : 1], [pullet ration, prepare the laying house],
  [Week 18], [house cleaned and rested], [point of lay, first egg at 18 – 20 weeks],
  [Week 20 – 70], [—], [layer ration, 16 % protein, 15 – 16 hours of light],
  [Week 72 – 80], [—], [spent layers culled and sold],
)

== E.3 The Ten Things That Must Happen on Time

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 12pt)[
  #text(size: 9.7pt)[
    *1.* The day-old chick must meet a warm brooder within hours, not days — the yolk sac lasts
    only so long.
  ]

  #text(size: 9.7pt)[
    *2.* Marek's vaccine is useless after the chick has been on the floor: it must be given in the
    hatchery.
  ]

  #text(size: 9.7pt)[
    *3.* Newcastle vaccination at day 1 and again at three weeks; a single dose does not hold.
  ]

  #text(size: 9.7pt)[
    *4.* Debeaking at 7 – 10 days, before the pecking habit is learned; later it is a repair job.
  ]

  #text(size: 9.7pt)[
    *5.* The boar must meet the sow on the second day of standing heat, and again twelve hours
    later.
  ]

  #text(size: 9.7pt)[
    *6.* The cow is served 12 – 18 hours after standing heat begins, not when it ends.
  ]

  #text(size: 9.7pt)[
    *7.* Iron is given to the piglet within three days of birth; anaemia does not wait.
  ]

  #text(size: 9.7pt)[
    *8.* Feed must be bought before the dry season, when the price is lowest and the mould is
    least.
  ]

  #text(size: 9.7pt)[
    *9.* Fish are stocked when the pond water has settled and the plankton has coloured it
    green — not on the day the lime went in.
  ]

  #text(size: 9.7pt)[
    *10.* Records are written on the day of the event; a stock card filled in from memory at the
    end of the month is a guess.
  ]
]

== E.4 Four Calendar Questions the Paper Asks

#text(size: 9.8pt)[
  *A cow is served on 1 March. When is she due?* Add 283 days: 9 December. Count the months
  forward nine and the days back nine — the cow's rule of thumb.
]

#text(size: 9.8pt)[
  *A batch of broilers is placed on 1 June and sold at eight weeks. When is the sale?* 27 July.
  Seven weeks is six weeks plus a week, and the extra days of the months matter.
]

#text(size: 9.8pt)[
  *A hen is set on twelve eggs in the first week of January. When do they hatch?* Twenty-one
  days later, in the last week of January — but only if the nest is undisturbed and the
  temperature is held.
]

#text(size: 9.8pt)[
  *The harmattan begins and the chicks huddle and cheep. What has gone wrong?* The brooder has
  lost its heat or the house has a draught. The calendar says December, and December says
  check the brooder before you check the feed.
]

#pagebreak(weak: true)
