#import "template.typ": *

#current-chapter.update("Chapter 9: Drugs, First Aid and Public Health")
#pagebreak()

#chapter-opener(
  9,
  "Drugs, First Aid and Public Health",
  subtitle: "Drug Action and Abuse, Alcohol and Tobacco, First Aid, and the Measures that Keep a Community Healthy",
  syllabus-ref: "Sec. B • Topic 9",
  utme-weight: "1 Q every year",
)

#focus-radar(
  objectives: (
    "Define a drug, a medicine and drug abuse.",
    "Name the four classes of drug and give an example of each.",
    "Explain tolerance, dependence, withdrawal and overdose.",
    "Describe the effects of alcohol and tobacco on health.",
    "Give the order of priority in first aid and the first aid for common injuries.",
    "List the measures that keep a community healthy and say what each prevents.",
  ),
  hotspots: (
    "\"A drug is best defined as …\" — any substance that alters the way the body or mind works.",
    "\"Which drug is a depressant?\" — alcohol (and barbiturates); caffeine and cocaine are stimulants.",
    "\"The first thing a first-aider should do is …\" — check for danger to himself and the casualty.",
    "\"An unconscious casualty should be placed …\" — in the recovery position, on the side.",
    "\"The cheapest and most effective public-health measure is …\" — a safe water supply and sanitation.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Thinking every drug is illegal: a *drug* is any substance that alters body or mind, including paracetamol and caffeine; *abuse* is what makes it a problem. (2) Rushing to treat a casualty before checking danger — a rescuer who is also injured helps nobody. (3) Giving an unconscious person water or medicine by mouth, which can choke them.",
)

// ============================================================================
// SECTION 9.1
// ============================================================================
== 9.1 What a Drug Is

A *drug* is any chemical substance that, when taken into the body, alters the way the body or the mind works.

A *medicine* is a drug used to prevent, treat or cure disease, in a measured dose. *Drug abuse* is the use of a drug for pleasure, or without medical need, or in the wrong amount.

#concept-box("Why a drug and a poison are the same substance")[
  Almost every drug is a poison above a certain dose. Paracetamol relieves a headache at 500 mg and destroys the liver at ten times that; morphine kills pain at 10 mg and stops breathing at 60 mg. The difference between a medicine and a poison is the *dose* — which is why every prescription carries one.
]

#table(
  columns: (1.15fr, 1.15fr, 1.15fr, 1.3fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Examples],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Danger],
  ),

  [*Stimulant*], [Speeds up the brain and the heart], [Caffeine, cocaine, amphetamine], [Restlessness, sleeplessness, a crash afterwards; cocaine is highly addictive],
  [*Depressant*], [Slows the brain down], [Alcohol, barbiturates, heroin], [Poor judgement, slowed breathing, coma],
  [*Hallucinogen*], [Distorts the senses], [Cannabis (in high doses), LSD], [Visions, panic, lasting mental illness],
  [*Analgesic*], [Relieves pain], [Paracetamol, aspirin, morphine], [Safe in dose, dangerous in excess — paracetamol destroys the liver],
)

// ============================================================================
// SECTION 9.2
// ============================================================================
== 9.2 Drug Abuse and Dependence

#diagram-fig("diagrams/ch09_drugs.svg",
  "The cycle of drug abuse. Tolerance demands a larger dose, dependence makes stopping painful, and each turn of the cycle tightens the grip.")

#table(
  columns: (1.2fr, 2.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
  ),

  [*Tolerance*], [The body adapts, so the same dose produces less effect and a larger dose is needed],
  [*Dependence (addiction)*], [The body cannot function normally without the drug; the user cannot stop even when he wants to],
  [*Withdrawal*], [The illness that follows when a dependent person stops — sweating, shaking, vomiting, anxiety, sometimes convulsions],
  [*Overdose*], [A dose large enough to poison the body — often fatal, especially with depressants that stop breathing],
  [*Rehabilitation*], [Supervised withdrawal, counselling and support to break the cycle],
)

#table(
  columns: (1.15fr, 1.25fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Drug],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Source or form],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Effects on the user],
  ),

  [Cannabis (marijuana, *igbo*)], [Dried leaves and flowers of *Cannabis sativa*], [Relaxation and talkativeness at first; later poor memory, apathy, mental illness and lung damage],
  [Cocaine], [Extract of the coca leaf], [Intense energy and confidence, then exhaustion; extremely addictive, damages the heart and nose],
  [Heroin (opium)], [Extract of the opium poppy], [Relief of pain and euphoria; highly addictive, depresses breathing, spread of HIV through shared needles],
  [Alcohol (ethanol)], [Fermentation of sugar by yeast], [Relaxation and loss of inhibition; damages the liver, brain and the unborn child],
  [Tobacco (nicotine)], [Smoked in cigarettes and cigars], [Stimulation and addiction; causes lung cancer, bronchitis, heart disease],
  [Kola nut and caffeine], [Seeds of *Cola* species; coffee, tea, soft drinks], [Mild stimulation and wakefulness; in excess, insomnia and palpitations],
)

#worked-example(
  1,
  "Why alcohol is a depressant, not a stimulant",
  tier: "JAMB CHALLENGE",
  [A student argues that alcohol must be a stimulant because a drunk person becomes loud and bold. Explain, in terms of the nervous system, why the student is wrong.],
  [
    *What alcohol does:* it is a *depressant* — it slows down the transmission of impulses across synapses in the brain.

    *Why the drinker seems lively:* the first centres to be depressed are the *inhibitory* ones, the parts of the brain that normally restrain behaviour. With those switched off, the drinker talks too much and takes risks. The appearance of stimulation is really the loss of control.

    *Why it is dangerous:* judgement and reaction time are already poor, so driving is dangerous; at a higher dose the centres that control breathing are depressed as well, and the drinker may fall into a coma.

    *Model answer:* alcohol depresses synapses; the apparent liveliness is the loss of the brain's normal inhibitions, not true stimulation.
  ],
)

// ============================================================================
// SECTION 9.3
// ============================================================================
== 9.3 Alcohol and Tobacco

#table(
  columns: (1.2fr, 1.2fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Organ],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Alcohol],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Tobacco],
  ),

  [Brain], [Depressed synapses; poor judgement, memory loss, addiction], [Nicotine is addictive; the smoke narrows blood vessels],
  [Liver], [Cirrhosis — the liver is replaced by scar tissue], [Chemicals in smoke are metabolised here, increasing cancer risk],
  [Lungs], [Vomiting inhaled while drunk can suffocate], [Tar and carcinogens cause lung cancer, bronchitis and emphysema],
  [Heart], [High blood pressure, weakened heart muscle], [Hardening of the arteries, heart attacks],
  [Unborn child], [Foetal alcohol syndrome — low birth mass, learning difficulty], [Low birth mass; nicotine and carbon monoxide cross the placenta],
  [Social], [Accidents, violence, family breakdown, wasted income], [Passive smoking harms everyone in the room],
)

// ============================================================================
// SECTION 9.4
// ============================================================================
== 9.4 First Aid

*First aid* is the immediate help given to a casualty before medical help arrives. It aims to preserve life, prevent worsening and promote recovery.

#diagram-fig("diagrams/ch09_firstaid.svg",
  "The order of priority in first aid and the contents of a well-stocked first-aid box.")

#table(
  columns: (1.25fr, 2.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Injury],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[First aid],
  ),

  [Bleeding from a cut], [Press firmly on the wound with a clean pad; raise the limb above the heart; bandage; do not remove a soaked pad, add another on top],
  [Minor burn], [Cool with clean running water for at least ten minutes; cover with a clean, non-stick dressing; never burst the blister or apply oil or toothpaste],
  [Fracture (broken bone)], [Do not move the limb; support it with a splint; immobilise the joint above and below; send for help],
  [Fainting], [Lay the casualty flat with the legs raised above the head; loosen tight clothing; allow fresh air],
  [Unconscious but breathing], [Place in the recovery position (on the side); keep the airway clear; check breathing; send for help],
  [Snake bite], [Keep the casualty still and calm; immobilise the limb below heart level; do not cut, suck or apply a tight tourniquet; get to hospital for antiserum],
  [Poisoning by mouth], [Do not make the casualty vomit; keep the sample or packet; get to hospital],
  [Choking], [Give up to five sharp blows between the shoulder blades; then abdominal thrusts; repeat],
  [Electric shock], [Switch off the current before touching the casualty; then treat burns and start CPR if needed],
)

#trap-box("The three rules that carry most first-aid marks")[
  (1) *Safety first* — check for danger before you touch the casualty. \
  (2) *Airway before anything else* — an unconscious person lying on the back can choke on the tongue. \
  (3) *Nothing by mouth* — no food, no water, no medicine to an unconscious casualty.
]

// ============================================================================
// SECTION 9.5
// ============================================================================
== 9.5 Public Health

*Public health* is the work of keeping a whole community healthy — through prevention rather than cure.

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

  [Safe water supply; boiling and chlorination], [Cholera, typhoid, guinea worm, dysentery],
  [Sanitation — latrines, sewers, refuse collection], [Faecal–oral disease and fly breeding],
  [Drainage of stagnant water], [Malaria and other mosquito-borne disease],
  [Food hygiene and inspection of markets and abattoirs], [Food poisoning, typhoid, tapeworm],
  [Immunisation campaigns], [Measles, polio, tuberculosis, diphtheria, whooping cough],
  [Health education — hand-washing, safe sex, no drug abuse], [Nearly everything on this list],
  [Housing and ventilation], [Tuberculosis and other respiratory infections],
)

#shortcut-box("Which measure is the exam answer?")[
  If the question is about *water-borne* disease, answer "safe water supply and sanitation". If it is about *vector-borne* disease, answer "drain stagnant water and use nets". If it is about *vaccine-preventable* disease, answer "immunisation". The examiner rewards the measure that matches the route of transmission.
]

// ============================================================================
// SECTION 9.6 — CHECKLIST
// ============================================================================
== 9.6 Chapter 9 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + define a drug, a medicine and drug abuse, and explain why the dose matters;
  + name the four classes of drug with two examples of each;
  + explain tolerance, dependence, withdrawal and overdose;
  + describe the effects of alcohol and tobacco on four organs;
  + state the order of priority in first aid (DRABC);
  + give the first aid for bleeding, a burn, a fracture, fainting and an unconscious casualty;
  + name five measures of public health and the disease each prevents;
  + explain why safe water and sanitation come first.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 9 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A drug is any substance that alters body or mind; the dose decides whether it heals or harms. First aid is about danger, response, airway, breathing and circulation — in that order, and never anything by mouth to an unconscious person. Public health is prevention: clean water, clean hands, safe food, no stagnant water and a full immunisation card.
  ]
]

#diagram-fig("diagrams/recap_ch09.svg",
  "Chapter 9 recap card: drugs, abuse, first aid and public health.", width: 100%)

// ============================================================================
// SECTION 9.7 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 9.7 Chapter 9 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [The use of a drug for pleasure or without medical need is called], [drug abuse], [tolerance], [rehabilitation], [an overdose])
#mcq(2, [Which of the following is a depressant?], [Caffeine], [Cocaine], [Alcohol], [Amphetamine])
#mcq(3, [A notifiable disease is one that must be], [treated with antibiotics], [reported to the health authority], [isolated for life], [vaccinated against])
#mcq(4, [The safe disposal of human faeces is important because it prevents], [malaria], [the spread of faecal–oral disease], [ringworm], [night blindness])

#answer-key-grid(("A", "C", "B", "B"))

#answer-notes((
  ("A", [abuse is use without medical need, or in the wrong amount, or for pleasure.]),
  ("C", [alcohol slows the brain down; caffeine, cocaine and amphetamine are stimulants.]),
  ("B", [notifiable diseases must be reported so that an outbreak can be tracked and controlled.]),
  ("B", [faeces carry the organisms of cholera, typhoid and dysentery, so safe disposal breaks the faecal–oral route.]),
))

#include "drill_ch09.typ"
