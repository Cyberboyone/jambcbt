#import "template.typ": *

#current-chapter.update("Chapter 1: Nervous Coordination and the Neurone")
#pagebreak()

#chapter-opener(
  1,
  "Nervous Coordination and the Neurone",
  subtitle: "Stimulus and Response, the Structure of the Neurone, the Nerve Impulse, the Synapse, and the Reflex Arc",
  syllabus-ref: "Sec. B • Topic 1",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Define stimulus, receptor, effector and response, and arrange them in the correct order.",
    "Label a motor neurone and state the function of each part.",
    "Describe the nerve impulse and explain the effect of the myelin sheath.",
    "Explain how an impulse crosses a synapse, and why it crosses in one direction only.",
    "Draw and describe a reflex arc, naming the five components.",
  ),
  hotspots: (
    "\"The part of the neurone that carries impulses away from the cell body is …\" — the axon. Dendrites carry them *towards* the cell body.",
    "\"Impulses cross the synapse by means of …\" — a chemical transmitter, never electricity.",
    "\"Which of these is *not* part of a reflex arc?\" — a hormone, a gland or the brain is the odd one out; the arc needs receptor, sensory neurone, relay neurone, motor neurone and effector.",
    "\"The myelin sheath speeds up conduction because …\" — it insulates, so the impulse jumps from one node of Ranvier to the next.",
    "\"A reflex action differs from a voluntary action because …\" — it is automatic and protective, and the spinal cord can complete it without the brain.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Confusing the *dendron* (carries impulses towards the cell body) with the *axon* (carries them away): the dendron is the short side. (2) Saying an impulse \"travels along the synapse\" — a synapse is a *gap*, and the impulse stops there and is carried across by a chemical. (3) Calling every response a reflex: a reflex is *rapid, automatic and protective*, and the nervous pathway for it does not need the brain to decide.",
)

// ============================================================================
// SECTION 1.1
// ============================================================================
== 1.1 Why Coordination Is Needed

A living organism is constantly being pushed and pulled by its surroundings: light, heat, sound, chemicals, pressure and touch. Anything that produces a change in an organism is called a *stimulus*. The change the organism makes in return is called a *response*. Moving from stimulus to response is what biologists call *coordination*.

#concept-box("The four words the examiner marks")[
  *Stimulus* — a change in the environment that an organism can detect. \
  *Receptor* — a cell or organ that detects a stimulus (retina, taste bud, skin, ear). \
  *Effector* — a muscle or gland that carries out the response. \
  *Response* — the change produced in the organism.
]

Coordination is needed for two reasons. The first is *survival*: a gazelle that detects a lion and runs lives, and the one that does not is eaten. The second is *internal order*: body temperature, blood glucose and water balance must all be kept steady, and keeping them steady requires a system that detects change and corrects it.

Multicellular animals use two systems for this: the *nervous system*, which is fast and short-lived, and the *endocrine (hormonal) system*, which is slower and longer-lasting. This chapter deals with the first; chapter 3 deals with the second.

#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[The pathway you will use for the rest of the chapter]
]

#table(
  columns: (auto, 1.2fr, 1.4fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Step],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Component],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example: touching a hot pot],
  ),

  [1], [Stimulus detected], [Heat from the pot],
  [2], [Receptor], [Heat receptors in the skin of the hand],
  [3], [Sensory neurone], [Carries the impulse to the spinal cord],
  [4], [Coordinator (CNS)], [Spinal cord links sensory to motor neurone],
  [5], [Motor neurone], [Carries the impulse to the arm muscle],
  [6], [Effector], [Biceps muscle contracts],
  [7], [Response], [The hand is pulled away],
)

// ============================================================================
// SECTION 1.2
// ============================================================================
== 1.2 The Neurone — the Unit of the Nervous System

The nervous system is built from *neurones* (nerve cells). A neurone is specialised for one job: to carry an electrical impulse quickly from one place to another. It has a cell body containing the nucleus, and long thin extensions that make the connections.

#diagram-fig("diagrams/ch01_neurone.svg",
  "A motor neurone. Dendrites bring impulses to the cell body; the axon carries them away; the myelin sheath insulates the axon and the nodes of Ranvier are the gaps between the insulating cells.")

#table(
  columns: (1.05fr, 2.15fr, 1.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it is and what it does],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[One-line answer],
  ),

  [*Dendrites*], [Short branched fibres that receive impulses from other neurones or from a receptor and carry them *towards* the cell body.], [Carry impulses towards the cell body],
  [*Cell body*], [Contains the nucleus, cytoplasm and many mitochondria; controls the metabolism of the whole cell.], [Contains the nucleus],
  [*Axon*], [The single long fibre that carries the impulse *away* from the cell body to the next cell.], [Carries impulses away],
  [*Myelin sheath*], [A fatty insulating layer wrapped round the axon by Schwann cells; it prevents leakage of the impulse and speeds it up.], [Insulates and speeds up conduction],
  [*Node of Ranvier*], [A gap in the myelin sheath where the axon membrane is exposed; the impulse jumps from node to node.], [Gap in the sheath; impulse jumps here],
  [*Axon terminals*], [Branched endings that form synapses with the next neurone, a muscle or a gland.], [Pass the impulse to the next cell],
)

#concept-box("Three types of neurone, three directions")[
  *Sensory neurone* — carries impulses from a receptor *into* the central nervous system. Its cell body sits in a ganglion just outside the spinal cord. \
  *Relay (intermediate) neurone* — lies entirely inside the central nervous system and links sensory to motor neurones. \
  *Motor neurone* — carries impulses *out* of the central nervous system to an effector (muscle or gland).
]

#trap-box("The dendron is not the axon")[
  Some neurones have *dendrons* — short fibres that carry impulses towards the cell body, exactly like dendrites but longer. Students lose the mark by labelling the incoming fibre as the axon. Remember the order: *dendron/dendrite → cell body → axon*. The impulse always travels that way.
]

#worked-example(
  1,
  "Naming the parts of a neurone",
  tier: "FOUNDATION",
  [A diagram of a motor neurone shows four labelled parts: a branched ending at the left, a swollen region containing a dot, a long fibre covered in a fatty layer, and a branched ending at the right. Name the four parts and state the direction in which the impulse travels.],
  [
    *Left branched ending:* dendrites — they receive the impulse and carry it towards the cell body. \
    *Swollen region containing the dot:* the cell body, with the nucleus inside. \
    *Long fibre with the fatty layer:* the axon, covered by the myelin sheath. \
    *Right branched ending:* axon terminals, which form a synapse with the next cell.

    The impulse travels from left to right: *dendrites → cell body → axon → axon terminals*. A neurone conducts in one direction only, because the synapse passes the message on from the knob of one cell to the membrane of the next and never the other way round.
  ],
)

// ============================================================================
// SECTION 1.3
// ============================================================================
== 1.3 The Nerve Impulse

A nerve impulse is not electricity running down a wire. It is a *wave of change in the membrane* of the neurone that passes from one point to the next.

In the resting neurone, the inside of the axon is negatively charged relative to the outside; the membrane is said to be *polarised*. When a stimulus arrives, the membrane at that point becomes permeable to sodium ions, which rush in and reverse the charge — the membrane is now *depolarised*. That reversal triggers the next patch of membrane to do the same, and the wave travels along the axon. Immediately behind the wave the membrane returns to its resting state (*repolarisation*), so the impulse can only move forwards.

#shortcut-box("Say it in one sentence")[
  A nerve impulse is *a wave of depolarisation that travels along the axon membrane*. If a question asks \"what is a nerve impulse?\", that sentence earns the mark; \"electricity\" does not.
]

#table(
  columns: (1.5fr, 2.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it means in an exam answer],
  ),

  [*All-or-none law*], [A stimulus either reaches the threshold and produces a full impulse, or produces nothing. A stronger stimulus does not make a bigger impulse — it makes *more frequent* impulses.],
  [*Refractory period*], [The short time after an impulse when the membrane cannot be stimulated again. This is why impulses travel in one direction and why there is a maximum impulse rate.],
  [*Speed of conduction*], [Faster in a thick axon than in a thin one, and much faster in a myelinated axon, because the impulse *jumps* from node to node (saltatory conduction) instead of crawling along every patch of membrane.],
  [*Temperature*], [Warmer nerves conduct faster, up to the point where proteins are denatured.],
)

#concept-box("Saltatory conduction — why myelin is worth the space")[
  Where the axon is wrapped in myelin, current cannot leak across the membrane, so the impulse is regenerated only at the *nodes of Ranvier*. It therefore jumps from node to node — from the Latin *saltare*, to jump. A myelinated axon conducts several times faster than an unmyelinated one of the same diameter, and this is why the fastest nerves in your body are the thickest and the most heavily myelinated.
]

#worked-example(
  2,
  "Explaining the effect of the myelin sheath",
  tier: "UTME STANDARD",
  [In multiple sclerosis the myelin sheath of certain motor neurones is destroyed. State one effect on the impulses in those neurones and explain how the effect arises.],
  [
    *Effect:* the impulses travel more slowly, and in severe cases fail to reach the effector at all, so the muscle responds weakly or not at all.

    *Explanation:* in a normal neurone the myelin insulates the axon, so the impulse is regenerated only at the nodes of Ranvier and jumps from node to node. When the sheath is destroyed, the impulse has to be regenerated at every point along the membrane; conduction becomes continuous instead of saltatory, and is therefore much slower. Where the sheath is completely lost, the current leaks away across the membrane and the impulse dies out.

    *Model answer:* conduction slows because saltatory conduction at the nodes is replaced by continuous conduction along the whole membrane.
  ],
)

// ============================================================================
// SECTION 1.4
// ============================================================================
== 1.4 The Synapse

Neurones do not touch one another. Between the axon terminals of one neurone and the dendrites or cell body of the next there is a small gap, about 20 nanometres wide, called the *synaptic cleft*. The junction as a whole is the *synapse*.

Because the gap is not a conductor, the electrical impulse cannot jump it. Instead, the arrival of the impulse at the axon terminal causes small sacs (*vesicles*) to release a *chemical transmitter* into the cleft. The transmitter diffuses across and binds to receptor proteins on the membrane of the next neurone, and that starts a new impulse there. The transmitter is then destroyed by an enzyme, so the signal stops.

#diagram-fig("diagrams/ch01_synapse.svg",
  "A synapse in section. The impulse releases transmitter from vesicles in the presynaptic knob; the transmitter diffuses across the cleft, binds to receptors, starts a new impulse and is then broken down by an enzyme.")

#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[The synapse in six steps — learn the order]
]

+ The impulse arrives at the axon terminal (presynaptic knob).
+ Vesicles of transmitter move to the presynaptic membrane and fuse with it.
+ The transmitter is released into the synaptic cleft by exocytosis.
+ It diffuses across the cleft and binds to receptor proteins on the postsynaptic membrane.
+ A new impulse is generated in the next neurone (or the muscle is stimulated).
+ An enzyme in the cleft destroys the transmitter, so the synapse is ready for the next impulse.

#concept-box("Why an impulse crosses a synapse in one direction only")[
  The transmitter is stored *only* on the presynaptic side (in the knob), and the receptor proteins are found *only* on the postsynaptic membrane. The message can therefore travel from knob to membrane and never backwards. This is one of the two reasons a nervous pathway is one-way; the other is the refractory period along the axon.
]

#trap-box("\"Electrical across the synapse\" loses the mark")[
  The commonest wrong answer in the whole topic is that the impulse *jumps the gap electrically*. It does not: the synapse is a chemical relay. Write \"the impulse is carried across the synapse by a chemical transmitter which diffuses across the cleft and binds to receptors\". Anything less loses marks.
]

#worked-example(
  3,
  "Drugs that act at the synapse",
  tier: "JAMB CHALLENGE",
  [A drug blocks the enzyme that destroys the transmitter at a synapse. Explain what happens at that synapse while the drug is acting.],
  [
    The transmitter is released as normal when an impulse arrives, and it binds to the receptors as normal, so the first impulse is transmitted correctly.

    But the enzyme that normally destroys the transmitter is blocked, so the transmitter is not removed from the cleft. It remains bound to the receptors and continues to stimulate the postsynaptic membrane, producing repeated impulses from a single presynaptic impulse.

    *Consequence:* the effector is over-stimulated — for example, muscle fibres contract continuously (spasm). When the drug wears off, the enzyme works again and the transmitter is destroyed.

    *Model answer:* transmitter accumulates in the cleft, so the postsynaptic membrane is stimulated continuously and the response is exaggerated.
  ],
)

// ============================================================================
// SECTION 1.5
// ============================================================================
== 1.5 Reflex Actions and the Reflex Arc

A *reflex action* is a rapid, automatic, protective response to a stimulus that does not require a decision by the brain. Pulling your hand from a hot pot, blinking when something flies at your eye and the knee jerk when a doctor taps your tendon are all reflexes.

The pathway taken is the *reflex arc*, and it always has the same five components:

#diagram-fig("diagrams/ch01_pathway.svg",
  "The pathway of an impulse from stimulus to response. A reflex arc is the same pathway with the spinal cord or brain stem doing the linking and no conscious decision involved.")

#table(
  columns: (0.55fr, 1.35fr, 2.5fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Component],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example in the withdrawal reflex],
  ),

  [1], [Receptor], [Heat receptors in the skin of the fingers],
  [2], [Sensory neurone], [Carries the impulse to the spinal cord],
  [3], [Relay neurone (in the CNS)], [Links the sensory neurone to the motor neurone inside the cord],
  [4], [Motor neurone], [Carries the impulse out to the arm muscle],
  [5], [Effector], [Biceps contracts and the hand is withdrawn],
)

#table(
  columns: (1.45fr, 1.55fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reflex],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Stimulus],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Response],
  ),

  [Withdrawal reflex], [Pain or heat in the skin], [Limb is pulled away],
  [Knee jerk], [Tap on the patellar tendon], [Lower leg kicks forward],
  [Pupil reflex], [Bright light on the retina], [Pupil constricts],
  [Blink reflex], [Object approaching the eye], [Eyelid closes],
  [Coughing and sneezing], [Irritant in airway or nose], [Air is forced out],
)

#concept-box("Reflex action versus voluntary action")[
  A *voluntary* action starts in the cerebrum: you decide to pick up a pen, and the impulse travels down from the brain. A *reflex* is organised at the spinal cord or brain stem, so it happens before the brain has had time to think. The brain is informed afterwards — which is why you feel the pain a moment after you have already pulled your hand away.
]

// ============================================================================
// SECTION 1.6
// ============================================================================
== 1.6 The Nervous System and the Endocrine System Compared

The body has two coordinating systems, and the examiner likes the comparison because it tests whether you understand *why* both exist.

#table(
  columns: (1.2fr, 2.0fr, 2.0fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Nervous system],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Endocrine system],
  ),

  [Message carried by], [Electrical impulse along neurones], [Chemical hormone in the blood],
  [Route], [Along a fixed pathway — a nerve], [Through the bloodstream to all cells],
  [Speed], [Very fast — fractions of a second], [Slower — seconds to hours],
  [Duration of effect], [Short; ends when the impulse stops], [Long-lasting; ends when the hormone is broken down],
  [Target], [The specific muscle or gland at the end of the neurone], [Only cells with the matching receptor],
  [Example], [Pulling your hand from a flame], [Insulin lowering blood glucose],
)

// ============================================================================
// SECTION 1.7 — CHECKLIST
// ============================================================================
== 1.7 Chapter 1 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + define stimulus, receptor, effector and response, and place them in the correct order;
  + label a motor neurone and give the function of dendrites, cell body, axon, myelin sheath and nodes of Ranvier;
  + name the three types of neurone and say which direction each conducts;
  + describe a nerve impulse as a wave of depolarisation, and explain the all-or-none law;
  + explain why myelinated axons conduct faster than unmyelinated ones;
  + describe transmission across a synapse in the correct six steps;
  + explain why an impulse crosses a synapse in one direction only;
  + name the five components of a reflex arc in order and give two examples of reflexes;
  + compare nervous and hormonal coordination in at least four features.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A stimulus is detected by a receptor, converted into an impulse by a sensory neurone, passed across a synapse by a chemical transmitter and handed to a motor neurone, which drives an effector. The myelin sheath makes the impulse fast, and the synapse makes the pathway one-way.
  ]
]

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: the parts of the neurone, the impulse, the synapse and the reflex arc.", width: 100%)

// ============================================================================
// SECTION 1.8 — TWO-MINUTE SET
// ============================================================================
== 1.8 Chapter 1 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#block(breakable: false)[
#mcq(1, [The part of a neurone that conducts impulses away from the cell body is the], [dendrite], [axon], [myelin sheath], [nucleus])
#mcq(2, [The junction between two neurones is called a], [node of Ranvier], [synapse], [ganglion], [reflex arc])
#mcq(3, [Which of the following is *not* a component of a reflex arc?], [Receptor], [Sensory neurone], [Hormone], [Effector])
#mcq(4, [An impulse is carried across a synapse by], [a chemical transmitter], [electrical conduction through the myelin], [osmosis of water], [movement of the nucleus])

#answer-key-grid(("B", "B", "C", "A"))
]
