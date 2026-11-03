#import "template.typ": *

#current-chapter.update("Chapter 4: Animal Health and Disease Control")

#pagebreak()

#chapter-opener(
  4,
  "Animal Health and Disease Control",
  subtitle: "Reading the Signs, Naming the Cause, and Closing the Triangle Before It Opens",
  syllabus-ref: "Part II • Animal Health",
  utme-weight: "7 Qs a year",
  running: "Animal Health and Disease Control",
)

#focus-radar(
  objectives: (
    "State the signs of a healthy animal and of a sick one.",
    "Explain the disease triangle and the routes by which disease spreads.",
    "Name the important viral, bacterial, protozoan and parasitic diseases of Nigerian livestock.",
    "Describe the control measures: vaccination, quarantine, sanitation, dipping and culling.",
    "Distinguish ectoparasites from endoparasites and name the damage each does.",
  ),
  hotspots: (
    "“Newcastle disease affects …” — poultry, and it is caused by a *virus*. The trap offers a bacterium, because the symptoms are so severe.\n",
    "“Trypanosomiasis is spread by …” — the tsetse fly, *Glossina*. The trap offers the tick, which spreads babesiosis and anaplasmosis.\n",
    "“Anthrax is controlled by …” — vaccination and the burning or deep burial of carcasses, never by opening them. The trap offers *slaughter and sale*, which spreads the spores.\n",
    "“A parasite that lives on the skin of the host is called …” — an ectoparasite. The trap offers *endoparasite* for the tick, because the tick sucks blood.\n",
  ),
  trap-summary: "Three slips. (1) Naming the vector for the disease: the tsetse carries trypanosomiasis, the tick carries babesiosis, the mosquito carries fowl pox and the housefly carries typhoid — each answer must name the right pair. (2) Treating a virus with an antibiotic: antibiotics work on bacteria, and a viral outbreak is met with vaccination and sanitation. (3) Forgetting that some diseases are *zoonotic* — anthrax, brucellosis, tuberculosis and rabies pass to people, and the paper asks which.",
)

// ============================================================================
== 4.1 The Healthy Animal and the Sick One

#table(
  columns: (1.15fr, 2.1fr, 1.9fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Sign],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Healthy],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Sick],
  ),
  [Eyes], [bright, clear, no discharge], [dull, sunken, weeping or crusted],
  [Appetite], [eats and drinks at the usual time], [off feed; water refused or drunk greedily],
  [Coat], [smooth, glossy, lying flat], [rough, staring, patchy or licked bald],
  [Dung], [firm, well formed, no blood or mucus], [loose, bloody, mucoid or hard and dry],
  [Urine], [pale yellow, normal volume], [dark, scanty or bloody],
  [Gait], [steady, weight on all four legs], [stiff, lame, circling or recumbent],
  [Breathing], [quiet and regular], [laboured, coughing, nasal discharge],
  [Temperature], [38–39 °C in cattle], [above 40 °C is a fever],
  [Behaviour], [alert, with the herd], [isolated, dull, aggressive or restless],
)

#v(3pt)

#rule-box("The three signs that mean act today")[
  *A fever above 40 °C, a refusal to eat for a whole day, and blood in the dung or the urine.* Any
  one of the three justifies isolating the animal and calling the veterinary officer the same day.
  Everything else can wait until morning; these three cannot.
]

// ============================================================================
== 4.2 The Triangle, and How Disease Travels

A disease needs three things at once: a *susceptible host*, a *pathogen*, and an *environment* that
lets the pathogen reach the host. Remove any one side and the outbreak does not happen.

#table(
  columns: (0.95fr, 1.9fr, 2.3fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Side],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How the farmer attacks it],
  ),
  [Host], [the animal, and its natural resistance], [vaccination, good feed, breeding for resistance],
  [Agent], [the virus, bacterium, fungus, protozoan or worm], [disinfectant, drugs, culling the carrier],
  [Environment], [the housing, the pasture, the water, the crowding], [ventilation, drainage, stocking density, clean water],
)

#v(4pt)

#table(
  columns: (1.15fr, 2.0fr, 1.95fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Route],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Example],
  ),
  [Direct contact], [a sick animal touches a healthy one], [mange, ringworm, foot rot],
  [Aerosol], [coughing and sneezing carry the agent through the air], [tuberculosis, Newcastle disease],
  [Vector-borne], [an insect carries the agent from host to host], [tsetse and trypanosomiasis; tick and redwater],
  [Vehicle-borne], [feed, water, boots, hands and implements carry it], [fowl typhoid on a shared feed scoop],
  [Vertical], [the dam passes it to the foetus or the egg], [brucellosis, pullorum disease],
  [Soil and pasture], [spores or larvae wait in the ground], [anthrax spores, stomach worms],
)

// ============================================================================
#diagram-fig("diagrams/agr2_ch04_health.svg",
  "4.1 — the disease triangle, and the control programme that keeps all three sides closed.", width: 98%)

== 4.3 The Viral Diseases

#table(
  columns: (1.1fr, 1.1fr, 1.55fr, 1.35fr),
  inset: (x: 4pt, y: 3.3pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Disease],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Species],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[The sign you can see],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Control],
  ),
  [Rinderpest], [cattle], [fever, mouth ulcers, diarrhoea, high death rate], [vaccination; it has been eradicated in Nigeria],
  [Foot and mouth], [cattle, sheep, goats, pigs], [blisters on the mouth and feet; drooling; lameness], [vaccination, quarantine, movement control],
  [Newcastle], [poultry], [gasping, green diarrhoea, twisted neck, drop in egg production], [vaccination at day 1 and week 3; no treatment],
  [Gumboro (IBD)], [young poultry], [ruffled feathers, watery droppings, immunosuppression], [vaccination of the chick; strict hygiene],
  [Fowl pox], [poultry], [scabs on the comb and wattles, and on the mouth], [vaccination; mosquito control],
  [Marek's], [poultry], [paralysis of the leg and wing; grey eye], [vaccinate day-old chicks in the hatchery],
  [African swine fever], [pigs], [high fever, reddened skin, death in days], [no vaccine: slaughter and strict quarantine],
  [Rabies], [all mammals, and people], [behaviour change, salivation, paralysis], [vaccinate dogs; never handle a suspect animal],
  [Lumpy skin], [cattle], [firm skin nodules, fever, milk drop], [vaccination; control the flies],
)

#v(3pt)

#text(size: 9.4pt)[
  *No antibiotic cures a virus.* The treatment of a viral disease is *supportive* — water, shade,
  electrolytes and a clean house — and the prevention is *vaccination*. That single sentence
  answers a third of the virus questions in the paper.
]

// ============================================================================
== 4.4 The Bacterial Diseases

#table(
  columns: (1.1fr, 1.1fr, 1.55fr, 1.35fr),
  inset: (x: 4pt, y: 3.3pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Disease],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Species],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[The sign you can see],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Control],
  ),
  [Anthrax], [cattle, sheep, goats, people], [sudden death; dark blood from the orifices; no rigor], [vaccinate; burn or deep-bury the carcass; never open it],
  [Brucellosis], [cattle, goats, pigs, people], [abortion in the last third; retained placenta; infertility], [test and cull; vaccinate heifers; boil the milk],
  [Tuberculosis], [cattle, pigs, people], [chronic cough, wasting, enlarged lymph nodes], [test and cull; pasteurise the milk],
  [Mastitis], [dairy cattle, goats], [hot, hard, painful quarter; clotted milk], [strip and treat the quarter; hygiene at milking; dry-cow therapy],
  [Fowl typhoid], [poultry], [yellow-green diarrhoea, pale comb, sudden deaths], [clean hatchery stock; vaccinate; cull the carriers],
  [Fowl cholera], [poultry], [swollen wattles, purple comb, sudden death], [vaccination; hygiene; water sanitation],
  [Blackleg], [young cattle and sheep], [hot painful swelling on the thigh; sudden death], [vaccinate; do not graze the old pasture],
  [Foot rot], [sheep and goats], [lameness; a foul smell between the toes], [trim and treat the hoof; dry footing; footbath],
  [Colibacillosis], [chicks and piglets], [white diarrhoea in the first week], [clean the brooder; vaccinate the dam; electrolytes],
)

// ============================================================================
== 4.5 The Protozoan and Parasitic Diseases

#table(
  columns: (1.15fr, 1.15fr, 1.55fr, 1.25fr),
  inset: (x: 4pt, y: 3.3pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Disease or pest],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Agent and vector],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[The sign you can see],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Control],
  ),
  [Trypanosomiasis (nagana)], [*Trypanosoma*; tsetse fly, *Glossina*], [fever, anaemia, wasting, drop in milk], [insecticide pour-on, fly traps, drugs, trypanotolerant breeds],
  [Coccidiosis], [*Eimeria*; the litter and the ground], [bloody droppings, ruffled chicks, poor growth], [coccidiostat in the feed; dry litter; never crowd],
  [Babesiosis (redwater)], [*Babesia*; the tick], [red urine, fever, anaemia], [dip or spray for ticks; vaccinate in endemic areas],
  [Anaplasmosis], [*Anaplasma*; the tick], [fever, anaemia, jaundice], [tick control; oxytetracycline],
  [Liver fluke], [*Fasciola*; the water snail], [wasting, bottle jaw, a damaged liver at slaughter], [drain the snail habitat; drench with a flukicide],
  [Roundworm], [*Ascaris*, *Haemonchus*; the pasture], [pot belly, diarrhoea, poor growth], [rotate pasture; drench on a schedule],
  [Tapeworm], [*Taenia*; the dog and the pasture], [white segments in the dung; poor growth], [deworm the dog; hygiene; drench the stock],
  [Ticks], [ectoparasite, eight legs], [anaemia, wounds, tick-borne disease], [dip, spray or pour-on; keep the pasture short],
  [Mites and mange], [ectoparasite], [hair loss, itching, crusty skin], [treat with acaricide; isolate the affected animal],
)

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[ECTO OR ENDO?]
  #v(3pt)
  #text(size: 9.6pt)[
    An *ectoparasite* lives on the outside of the host: ticks, mites, lice, fleas and the tsetse.
    An *endoparasite* lives inside: roundworms, tapeworms, flukes and coccidia. The division
    decides the treatment — a dip for the outside, a drench for the inside — and the paper often
    asks which of a list is the odd one out.
  ]
]

// ============================================================================
== 4.6 The Control Programme

#table(
  columns: (1.05fr, 2.25fr, 1.4fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Measure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[When it is used],
  ),
  [Vaccination], [gives the animal immunity before it meets the pathogen], [Newcastle at day 1; anthrax yearly; FMD yearly],
  [Quarantine], [keeps a new or sick animal away from the herd for 21 days], [every purchase; every suspect case],
  [Sanitation], [removes the agent — clean water, dry litter, disinfected boots], [daily, and after every outbreak],
  [Dipping and spraying], [kills the external parasite and the vector], [weekly in the tick season],
  [Deworming], [removes the internal parasite], [every three months, or as the faecal test shows],
  [Isolation], [separates the sick animal from the herd at once], [the first day of illness],
  [Culling], [removes the carrier or the chronically sick animal], [brucellosis reactors; the persistent mastitis quarter],
  [Notification], [reports a notifiable disease to the veterinary authority], [anthrax, rabies, rinderpest, FMD],
)

// ============================================================================
== 4.7 Four Worked Questions

#worked-example(
  1,
  "A virus is not a bacterium",
  [Newcastle disease of poultry is caused by a

    A. bacterium \\
    B. virus \\
    C. fungus \\
    D. protozoan],
  [
    *Step 1 — recall the disease.* Newcastle is the most feared poultry disease in Nigeria: gasping,
    green diarrhoea, a twisted neck and a sudden drop in egg production.

    *Step 2 — place the agent.* It is a *virus*, and there is no antibiotic that will touch it.

    *Step 3 — remember the control.* Vaccination at day 1 and again at three weeks, plus strict
    hygiene; the treatment of a sick bird is supportive only.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The vector question",
  [Trypanosomiasis of cattle is transmitted by the

    A. tick \\
    B. tsetse fly \\
    C. housefly \\
    D. mosquito],
  [
    *Step 1 — name the agent.* *Trypanosoma* lives in the blood and is carried from one animal to
    another by a biting insect.

    *Step 2 — identify the insect.* The tsetse fly, *Glossina*, breeds along the shaded streams of
    the forest and the Guinea savanna, and its bite transmits the parasite.

    *Step 3 — separate the look-alikes.* The tick carries redwater and anaplasmosis, the housefly
    carries typhoid mechanically, and the mosquito carries fowl pox and malaria — not nagana.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The carcass that must not be opened",
  [A herdsman finds a cow dead in the pasture with dark blood oozing from its mouth and anus and
  no sign of a struggle. The correct action is to

    A. open the carcass to find the cause \\
    B. burn or deep-bury the carcass and report it \\
    C. sell the meat quickly \\
    D. drag the carcass to the river],
  [
    *Step 1 — recognise the picture.* Sudden death, dark unclotted blood from the orifices and no
    rigor mortis is the classic description of anthrax.

    *Step 2 — recall the danger.* Opening the carcass releases spores that survive in the soil for
    decades and infect people as well as animals.

    *Step 3 — take the only safe action.* Do not open it; burn or deep-bury it with lime, report it
    to the veterinary authority, and vaccinate the rest of the herd.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The drug that will not work",
  [A poultry farmer whose birds show gasping and a twisted neck buys a broad-spectrum antibiotic
  and treats the whole house. Two days later half the birds are dead. The reason the treatment
  failed is that

    A. the dose was too low \\
    B. the disease is viral and antibiotics do not act on viruses \\
    C. the antibiotic was given in the water \\
    D. the birds were too young],
  [
    *Step 1 — identify the disease from the signs.* Gasping and a twisted neck in a Nigerian poultry
    house is Newcastle disease until proved otherwise.

    *Step 2 — recall what an antibiotic does.* It acts on bacteria — on their cell wall or their
    protein synthesis — and a virus has neither.

    *Step 3 — explain the two days.* The antibiotic killed the gut bacteria that were helping the
    birds digest, and the virus ran its course unchecked. Vaccination and culling were the only
    tools that would have worked.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 4.8 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [Anthrax in cattle is controlled mainly by], [treatment with antibiotics], [vaccination and safe disposal of carcasses], [dipping every week], [feeding antibiotics daily])

#mcq(2, [Coccidiosis in poultry is caused by], [a virus], [a bacterium], [a protozoan], [a fungus])

#mcq(3, [A tick is best described as], [an endoparasite], [an ectoparasite], [a bacterium], [a virus])

#mcq(4, [Mastitis in a dairy cow is an infection of the], [liver], [udder], [hoof], [lung])

#answer-key-grid(("B", "C", "B", "B"))

#answer-notes((
  ("B", [Anthrax spores persist in soil; the carcass must be burned or deep-buried and the herd vaccinated.]),
  ("C", [*Eimeria*, a protozoan, invades the gut lining; a coccidiostat prevents it.]),
  ("B", [A tick feeds on the skin surface and sucks blood, so it is an ectoparasite — and a vector.]),
  ("B", [Mastitis is an infection of the quarter, treated by stripping and intramammary antibiotic.]),
))

#diagram-fig("diagrams/recap_agr2_ch04.svg",
  "Chapter 4 recap card: the healthy signs, the triangle, the disease families and the control programme.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Health is read from the eye, the coat, the dung, the gait and the temperature, and three signs
    — a fever above 40 °C, a whole day without feed and blood in the dung — mean act today. Disease
    needs a host, an agent and an environment, and the farmer attacks whichever side he can reach.
    Viruses are met with vaccines and hygiene, bacteria with antibiotics and sanitation, protozoa
    with drugs and vector control, and worms with a drench and a pasture rotation.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [State six signs of a healthy animal and the sick counterpart of each.],
  [Draw the disease triangle and give one control for each side.],
  [Name four viral, four bacterial and four parasitic diseases and the species each attacks.],
  [Distinguish ectoparasite from endoparasite, with two examples of each.],
  [List the eight measures of the control programme in the order a farmer uses them.],
))

#concept-box("Carry this into Chapter 5")[
  Health is one of four inputs to production; the other three are breeding, feeding and housing.
  The next chapter puts all four together into the management of a real flock and a real herd —
  the brooder temperature on day one, the vaccine on day ten, the feed on the floor, and the
  record of what it all cost.
]

#include "drill_ch04.typ"
