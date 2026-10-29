#import "template.typ": *

#current-chapter.update("Chapter 7: Health and Disease")
#pagebreak()

#chapter-opener(
  7,
  "Health and Disease",
  subtitle: "Pathogens, the Spread of Disease, the Body's Defences, Immunity and Vaccination",
  syllabus-ref: "Sec. B • Topic 7",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Define health and disease and name the five groups of pathogen.",
    "Describe how diseases spread and state the route for named diseases.",
    "Name the causative organism and the vector of malaria, typhoid, cholera, tuberculosis and HIV/AIDS.",
    "Describe the first, second and third lines of defence against disease.",
    "Distinguish active from passive immunity and natural from artificial immunity.",
    "Explain how a vaccine works and why immunisation campaigns protect the whole community.",
  ),
  hotspots: (
    "\"Malaria is caused by …\" — *Plasmodium*, a protozoan, and spread by the female *Anopheles* mosquito.",
    "\"The vector of sleeping sickness is …\" — the tsetse fly (*Glossina*).",
    "\"Antibodies are produced by …\" — lymphocytes (B cells).",
    "\"A vaccine gives … immunity\" — active, artificially acquired.",
    "\"Colostrum gives the baby … immunity\" — passive, naturally acquired.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Saying the mosquito *causes* malaria: it is only the *vector*, the causative organism is *Plasmodium*. (2) Confusing active and passive immunity: active means *the body makes* the antibodies (slow but lasting), passive means they are *given ready-made* (immediate but temporary). (3) Mixing up a vaccine and an antiserum: a vaccine *stimulates* antibody production, an antiserum *supplies* the antibodies.",
)

// ============================================================================
// SECTION 7.1
// ============================================================================
== 7.1 Health, Disease and Pathogens

*Health* is the state of complete physical, mental and social well-being, not merely the absence of disease. A *disease* is any condition that interferes with the normal functioning of the body.

A disease caused by an organism is an *infectious* (communicable) disease; one caused by poor diet, heredity or a damaged organ is *non-infectious* (non-communicable).

#concept-box("A pathogen is not the same thing as a vector")[
  A *pathogen* is the organism that *causes* the disease. \
  A *vector* is an animal that *carries* the pathogen from one host to another — usually an insect. \
  The *Anopheles* mosquito is the vector of malaria, but the pathogen is *Plasmodium*. If a question asks for the causative organism, the mosquito is the wrong answer.
]

#table(
  columns: (1.15fr, 1.55fr, 1.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Group],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Diseases it causes],
  ),

  [*Virus*], [A strand of nucleic acid in a protein coat; not a cell, so antibiotics do not touch it], [Measles, polio, HIV/AIDS, influenza, smallpox, yellow fever],
  [*Bacterium*], [A single-celled organism with no nucleus; killed by antibiotics], [Tuberculosis, cholera, typhoid, tetanus, gonorrhoea],
  [*Protozoan*], [A single-celled organism with a nucleus], [Malaria (*Plasmodium*), sleeping sickness (*Trypanosoma*), amoebic dysentery],
  [*Fungus*], [Thread-like hyphae; feeds on dead or living tissue], [Ringworm, athlete's foot, thrush],
  [*Worm*], [A multicellular parasite with a life cycle through two hosts], [Guinea worm, roundworm, hookworm, schistosomiasis],
)

// ============================================================================
// SECTION 7.2
// ============================================================================
== 7.2 How Disease Spreads

A communicable disease needs a chain: a source, a way out, a route across, and a way into the next host.

#diagram-fig("diagrams/ch07_chain.svg",
  "The chain of infection. Public-health work is simply a matter of breaking the weakest link in the chain.")

#table(
  columns: (1.25fr, 2.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Route],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it works, with an example],
  ),

  [*Water*], [Drinking water contaminated with faeces — cholera, typhoid, guinea worm],
  [*Food*], [Food handled with dirty hands, or eaten raw and unwashed — typhoid, dysentery],
  [*Air (droplets)*], [Coughing and sneezing into the air — tuberculosis, measles, influenza, common cold],
  [*Direct contact*], [Skin-to-skin — ringworm, athlete's foot, gonorrhoea],
  [*Blood and body fluid*], [Transfusion, shared needles, unprotected sex, mother to child — HIV/AIDS, hepatitis],
  [*Vectors*], [An insect carries the pathogen — malaria (mosquito), sleeping sickness (tsetse fly), plague (flea)],
  [*Soil*], [The pathogen lives in the soil and enters through a cut — tetanus, hookworm],
)

#table(
  columns: (1.15fr, 1.35fr, 1.15fr, 1.65fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Disease],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Caused by],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Spread by],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Main control],
  ),

  [*Malaria*], [*Plasmodium* (protozoan)], [Female *Anopheles* mosquito], [Nets, drain water, kill mosquitoes, treat the sick],
  [*Typhoid*], [*Salmonella typhi* (bacterium)], [Contaminated food and water], [Safe water, sanitation, vaccination, food hygiene],
  [*Cholera*], [*Vibrio cholerae* (bacterium)], [Water contaminated with faeces], [Boil or chlorinate water, latrines, oral rehydration],
  [*Tuberculosis*], [*Mycobacterium tuberculosis*], [Droplets in the air], [BCG vaccine, cover the mouth, ventilate rooms],
  [*Measles*], [Measles virus], [Droplets in the air], [Vaccination, isolation of the sick],
  [*Polio*], [Polio virus], [Faeces and contaminated water], [Oral vaccine, clean water],
  [*HIV/AIDS*], [Human immunodeficiency virus], [Blood, sex, mother to child], [Screening blood, safe sex, no shared needles],
  [*Sleeping sickness*], [*Trypanosoma* (protozoan)], [Tsetse fly], [Clear bush, insecticide, treat the sick],
  [*Guinea worm*], [*Dracunculus* (worm)], [Drinking water with the *Cyclops* crustacean], [Filter water, supply boreholes],
  [*Ringworm*], [Fungus], [Direct contact, shared towels and combs], [Keep the skin dry, do not share towels, antifungal cream],
)

#worked-example(
  1,
  "Why water is still the big killer",
  tier: "JAMB CHALLENGE",
  [Explain why cholera spreads so quickly in a town with no piped water, and state two measures that would break the chain of infection.],
  [
    *Source and exit:* a patient with cholera sheds huge numbers of bacteria in the faeces, and in a town with no piped supply the people may drink from a stream or a well.

    *Route:* if a latrine is close to the water source, or the stream is used for both drinking and washing, the bacteria pass from the stool straight into the drinking water.

    *Entry and host:* a healthy person who drinks the water swallows the bacteria, which multiply in the small intestine and cause the profuse "rice-water" diarrhoea.

    *Two measures:* (i) supply safe water — boreholes, boiled or chlorinated water; (ii) build and use latrines away from the water source, and wash hands with soap.

    *Model answer:* faecal–oral spread through a contaminated water supply; break it by supplying safe water and improving sanitation.
  ],
)

// ============================================================================
// SECTION 7.3
// ============================================================================
== 7.3 The Body's Defences

The body defends itself in three layers.

#table(
  columns: (1.2fr, 1.2fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Line],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Defence],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it works],
  ),

  [*First*], [Skin], [Keratin is a tough, dry barrier; wounds and burns remove it],
  [*First*], [Mucus and cilia], [Trap dust and bacteria in the nose and airways and sweep them upwards],
  [*First*], [Stomach acid], [Hydrochloric acid kills most bacteria swallowed in food],
  [*First*], [Tears and saliva], [Lysozyme destroys the cell walls of bacteria],
  [*Second*], [Phagocytes], [White cells that engulf and digest bacteria — phagocytosis],
  [*Second*], [Inflammation and fever], [Redness, heat and swelling bring more blood and white cells; a fever slows the pathogen],
  [*Third*], [Lymphocytes], [B cells make antibodies that lock onto antigens; T cells destroy infected cells],
)

#concept-box("Antigen and antibody — who is what")[
  An *antigen* is a marker on the surface of a pathogen — a protein the immune system recognises as foreign. \
  An *antibody* is a protein made by a lymphocyte in response to that antigen. It locks onto the antigen and neutralises it, or marks the pathogen for a phagocyte. \
  Memory: the *antigen* is the *label*, the *antibody* is the *answer*.
]

// ============================================================================
// SECTION 7.4
// ============================================================================
== 7.4 Immunity and Vaccination

The body's third line of defence is *immunity*: the ability to resist a particular pathogen because antibodies have been made against it.

#diagram-fig("diagrams/ch07_immunity.svg",
  "The immune response. The first exposure to an antigen gives a slow, small response; the second exposure gives a fast, large one — which is the whole logic of vaccination.")

#table(
  columns: (1.15fr, 1.65fr, 1.65fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Active immunity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Passive immunity],
  ),

  [Antibodies made by], [The person's own lymphocytes], [Another animal or another person],
  [How it is acquired], [After an infection, or after a vaccination], [Through the placenta, in colostrum, or by an antiserum injection],
  [Speed], [Slow — days to weeks], [Immediate],
  [Duration], [Long — often for life], [Short — weeks to months],
  [Example], [Immunity after measles or after the BCG vaccine], [A baby's first months of resistance; a tetanus antiserum after a cut],
)

#concept-box("What a vaccine actually does")[
  A vaccine contains a *weakened, killed or fragment* of a pathogen — its antigens with the danger removed. The lymphocytes respond, memory cells are formed, and the antibody count stays high enough to meet the real pathogen at once. \
  The vaccine does *not* contain the full living pathogen, and it does not supply ready-made antibodies. It teaches the body to make its own.
]

#shortcut-box("Herd immunity in one line")[
  When most people are immunised, the pathogen cannot find enough susceptible hosts to keep spreading — so even the few who cannot be vaccinated (babies, the very sick, pregnant women) are protected. That is why immunisation is a *community* act, not only a private one.
]

#trap-box("Antiserum is not a vaccine")[
  An *antiserum* contains ready-made antibodies and gives *passive* immunity at once — used after a snake bite or a tetanus-prone wound. A *vaccine* gives *active* immunity and takes days to work. If a question says "immediate protection", think antiserum.
]

// ============================================================================
// SECTION 7.5
// ============================================================================
== 7.5 Public Health Measures

#table(
  columns: (1.3fr, 2.3fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Measure],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it prevents],
  ),

  [Safe water supply and boiling], [Cholera, typhoid, guinea worm, polio],
  [Proper sewage and latrines], [Faecal–oral diseases of every kind],
  [Draining stagnant water and using nets], [Malaria],
  [Vaccination campaigns], [Measles, polio, tuberculosis, diphtheria, whooping cough],
  [Food hygiene and inspection], [Typhoid, food poisoning],
  [Health education], [All of the above — the cheapest weapon there is],
  [Isolation and quarantine], [Spreading an infection from person to person],
)

// ============================================================================
// SECTION 7.6 — CHECKLIST
// ============================================================================
== 7.6 Chapter 7 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + define health and disease and distinguish infectious from non-infectious disease;
  + name the five groups of pathogen with two diseases from each group;
  + distinguish a pathogen from a vector;
  + give the causative organism, vector and route of malaria, typhoid, cholera, tuberculosis and HIV/AIDS;
  + describe the chain of infection and give one way of breaking each link;
  + describe the first, second and third lines of defence;
  + distinguish an antigen from an antibody;
  + compare active and passive immunity in source, speed and duration;
  + explain how a vaccine works and what herd immunity means.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Pathogens are viruses, bacteria, protozoa, fungi and worms; vectors carry them but do not cause the disease. The body answers with skin and mucus, then phagocytes, then lymphocytes and antibodies — and a vaccine rehearses that last answer so that the real infection is met by a memory, not by surprise.
  ]
]

#diagram-fig("diagrams/recap_ch07.svg",
  "Chapter 7 recap card: pathogens, transmission, immunity and control.", width: 100%)

// ============================================================================
// SECTION 7.7 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 7.7 Chapter 7 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Malaria in humans is caused by], [the female Anopheles mosquito], [a virus], [a protozoan, *Plasmodium*], [a bacterium])
#mcq(2, [Antibodies are produced by], [red blood cells], [lymphocytes], [phagocytes], [platelets])
#mcq(3, [A child who receives ready-made antibodies in colostrum acquires], [active natural immunity], [passive natural immunity], [active artificial immunity], [passive artificial immunity])
#mcq(4, [The main vector of sleeping sickness in West Africa is the], [tsetse fly], [Anopheles mosquito], [housefly], [flea])

#answer-key-grid(("C", "B", "B", "A"))

#answer-notes((
  ("C", [the mosquito is only the *vector*; the causative organism is the protozoan *Plasmodium*.]),
  ("B", [lymphocytes (B cells) make the antibodies; phagocytes only engulf.]),
  ("B", [the antibodies come from the mother, not from the child's own cells — *passive*, and *natural* because no injection was involved.]),
  ("A", [sleeping sickness, caused by *Trypanosoma*, is carried by the tsetse fly (*Glossina*).]),
))
