#import "template.typ": *

#current-chapter.update("Chapter 2: The Brain, the Spinal Cord and the Sense Organs")
#pagebreak()

#chapter-opener(
  2,
  "The Brain, the Spinal Cord and the Sense Organs",
  subtitle: "The Central Nervous System, What Each Part of the Brain Does, the Spinal Cord, the Eye, the Ear and the Skin",
  syllabus-ref: "Sec. B • Topic 2",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Name the parts of the central nervous system and state the function of each.",
    "Locate the cerebrum, cerebellum, medulla oblongata, hypothalamus and pituitary, and give one function of each.",
    "Describe the structure of the spinal cord and explain its two jobs: conduction and reflex.",
    "Label the eye in section and explain accommodation, the pupil reflex and the common sight defects.",
    "Label the ear and distinguish the parts used for hearing from those used for balance.",
    "Name the receptors of the skin and state what each detects.",
  ),
  hotspots: (
    "\"Balance and coordination are controlled by the …\" — the cerebellum, never the cerebrum.",
    "\"Breathing rate and heart rate are controlled by the …\" — the medulla oblongata.",
    "\"Focusing on a near object requires …\" — the ciliary muscles to contract and the lens to become more convex.",
    "\"A person who cannot see distant objects has …\" — myopia (short sight), corrected with a concave lens.",
    "\"Receptors for hearing are in the …\" — the cochlea; the semicircular canals detect movement of the head.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Mixing up the *cerebrum* (thinking, memory, voluntary movement) with the *cerebellum* (balance and coordination) — one letter, two different organs. (2) Saying the *lens* does all the bending of light: the *cornea* does most of it and the lens only adjusts the focus. (3) Writing that the eye's image falls *on* the optic nerve — the image falls on the *retina*, and the optic nerve carries the impulse away.",
)

// ============================================================================
// SECTION 2.1
// ============================================================================
== 2.1 The Central Nervous System

The nervous system is divided into two parts. The *central nervous system (CNS)* is the brain and the spinal cord; it is where decisions are made and where incoming impulses are sorted. The *peripheral nervous system (PNS)* is every nerve outside the CNS — the cranial nerves from the brain and the spinal nerves from the cord — which carries impulses in and out.

#concept-box("Grey matter and white matter")[
  *Grey matter* contains the cell bodies of neurones and synapses; it is where the processing happens. \
  *White matter* contains myelinated axons; the myelin is fatty, and fat is white, so white matter is the wiring. \
  In the *brain* the grey matter is on the outside (the cortex) and the white matter inside. In the *spinal cord* the arrangement is reversed: grey matter is a butterfly-shaped core and white matter surrounds it.
]

The peripheral system has two divisions that work without your permission: the *sympathetic* system, which prepares the body for action (faster heart, wider pupils, blood diverted to muscles), and the *parasympathetic* system, which calms the body down again (slower heart, digestion resumes). They are antagonistic — one speeds up what the other slows.

// ============================================================================
// SECTION 2.2
// ============================================================================
== 2.2 The Brain

The brain is the control centre of the whole body. In the examination it is always tested the same way: a part is named, and you must give its function — or a function is named, and you must give the part.

#diagram-fig("diagrams/ch02_brain.svg",
  "The human brain in section. The cerebrum is the largest part; the cerebellum lies behind and below it; the medulla continues into the spinal cord; the hypothalamus sits above the pituitary gland.")

#table(
  columns: (1.15fr, 2.3fr, 1.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it controls],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Exam question it answers],
  ),

  [*Cerebrum*], [Thinking, memory, intelligence, speech, the senses of sight, hearing, taste and smell, and all *voluntary* movement. Its surface is folded to give a large area of grey matter in a small skull.], [\"Which part is the seat of intelligence?\"],
  [*Cerebellum*], [Balance, posture and the *coordination* of muscular movement — it makes a movement smooth rather than jerky.], [\"Which part controls balance?\"],
  [*Medulla oblongata*], [Involuntary activities that keep you alive: breathing rate, heart rate, blood pressure, swallowing, coughing and sneezing.], [\"Which part controls breathing?\"],
  [*Hypothalamus*], [Body temperature, hunger, thirst, sleep and the release of hormones from the pituitary; it is the body's thermostat and water meter.], [\"Which part controls body temperature?\"],
  [*Pituitary gland*], [The master endocrine gland, hanging beneath the hypothalamus; it secretes hormones that control other glands.], [\"Which gland is the master gland?\"],
)

#trap-box("Cerebrum, cerebellum, medulla — three different jobs")[
  The trap is a spelling trap. *Cerebrum* — thinking, memory, voluntary movement, the senses. *Cerebellum* — balance and coordination of movement. *Medulla oblongata* — breathing, heart rate, blood pressure. If a question mentions *balance*, write cerebellum; if it mentions *breathing*, write medulla; if it mentions *intelligence or memory*, write cerebrum.
]

// ============================================================================
// SECTION 2.3
// ============================================================================
== 2.3 The Spinal Cord

The spinal cord runs from the base of the brain down a canal inside the vertebral column. It is a cylinder of nervous tissue with a *butterfly-shaped core of grey matter* and an outer layer of *white matter*, and it does two jobs:

+ *Conduction* — it carries impulses up to the brain and down from the brain along the white matter. A cord injury therefore cuts off the brain from the body below the injury.
+ *Reflex action* — it links a sensory neurone to a motor neurone through a relay neurone, so the response happens without waiting for the brain.

#shortcut-box("Two jobs, one sentence")[
  The spinal cord is a *highway and a switchboard*: white matter is the highway carrying impulses to and from the brain, grey matter is the switchboard that completes reflex arcs.
]

// ============================================================================
// SECTION 2.4
// ============================================================================
== 2.4 Reflex Actions

A reflex action is an automatic, rapid and protective response to a stimulus. Because the relay neurone does the linking inside the cord, the response takes a fraction of a second — much faster than a voluntary action, which must be decided in the cerebrum.

#diagram-fig("diagrams/ch02_reflexarc.svg",
  "The reflex arc: receptor → sensory neurone → relay neurone in the spinal cord → motor neurone → effector. The brain is informed, but the response has already happened.")

#table(
  columns: (1.35fr, 1.45fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reflex action],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Voluntary action],
  ),

  [Control centre], [Spinal cord or brain stem], [Cerebrum],
  [Awareness], [Happens before you are aware of it], [You decide to do it],
  [Speed], [Very fast — a fraction of a second], [Slower — a decision must be made],
  [Purpose], [Protective], [Whatever you choose],
  [Example], [Pulling the hand from a hot pot], [Lifting a cup to drink],
)

#concept-box("Conditioned reflexes")[
  A *conditioned reflex* is learned rather than inborn: salivating at the smell of food, or a sprinter leaving the blocks at the gun. The response is still automatic, but the link between stimulus and response has been built by experience. An *unconditioned* reflex — blinking, sneezing, the knee jerk — needs no learning at all.
]

#worked-example(
  1,
  "A part is named — give the function",
  tier: "FOUNDATION",
  [State the function of (a) the cerebellum, (b) the medulla oblongata, and name one effect of damage to each.],
  [
    (a) *Cerebellum* — controls balance, posture and the coordination of muscular movement, so that walking and writing are smooth rather than jerky. Damage causes a staggering walk, poor balance and trembling in deliberate movements.

    (b) *Medulla oblongata* — controls involuntary activities: breathing rate, heart rate and blood pressure, and also swallowing, coughing and sneezing. Damage to the medulla is fatal, because breathing and the heartbeat stop.

    *Note the pattern:* the answer gets the mark for the *function first*, then the consequence. Never write only the name of the part.
  ],
)

// ============================================================================
// SECTION 2.5
// ============================================================================
== 2.5 The Eye

The eye is a sense organ that detects light. Light enters through the *cornea*, passes through the *pupil*, is focused by the *lens* onto the *retina*, where the receptors produce impulses that travel along the *optic nerve* to the cerebrum.

#diagram-fig("diagrams/ch02_eye.svg",
  "The human eye in section. The cornea and lens focus light on the retina; the iris changes the size of the pupil; the optic nerve carries impulses to the brain.")

#table(
  columns: (1.1fr, 2.4fr, 1.2fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Memory hook],
  ),

  [*Cornea*], [Transparent front window; refracts (bends) the light most of the way; it has no blood vessels.], [Protects and bends],
  [*Iris*], [Muscular coloured ring that changes the size of the pupil and so controls the amount of light entering.], [The shutter],
  [*Pupil*], [The hole in the middle of the iris; it looks black because no light comes back out of it.], [The hole],
  [*Lens*], [Transparent elastic body that fine-tunes the focus by changing shape — accommodation.], [The focus knob],
  [*Ciliary body*], [Muscles that contract or relax to change the shape of the lens; suspensory ligaments join them to the lens.], [The lens muscles],
  [*Retina*], [Light-sensitive layer containing *rods* (dim light, black and white) and *cones* (bright light and colour).], [The film],
  [*Optic nerve*], [Carries impulses from the retina to the cerebrum; it leaves the eye at the *blind spot*, where there are no receptors.], [The cable],
  [*Sclera*], [Tough white outer coat that protects the eyeball and keeps its shape.], [The casing],
)

#concept-box("Accommodation — near and far")[
  *Near object:* the ciliary muscles *contract*, the suspensory ligaments *slacken*, and the lens becomes *thicker (more convex)*, which bends the light more. \
  *Far object:* the ciliary muscles *relax*, the suspensory ligaments *tighten*, and the lens becomes *thinner (flatter)*.
]

#trap-box("The pupil does not move to focus")[
  Students often write that the pupil gets smaller to focus a near object. The pupil changes only to control *brightness*. Focusing is done by the *lens*, whose shape is changed by the *ciliary muscles*. Keep the two jobs separate: pupil = light, lens = focus.
]

#table(
  columns: (1.2fr, 1.75fr, 1.5fr, 1.2fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Defect],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the person sees],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Cause],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Correction],
  ),

  [*Myopia* (short sight)], [Distant objects blurred; near objects clear], [Eyeball too long, or lens too strong; image forms *in front* of the retina], [Concave lens],
  [*Hypermetropia* (long sight)], [Near objects blurred; distant objects clear], [Eyeball too short, or lens too weak; image would form *behind* the retina], [Convex lens],
  [*Presbyopia*], [Near objects blurred, in older people], [Loss of lens elasticity with age], [Convex lens (reading glasses)],
  [*Astigmatism*], [Lines in one direction blurred], [Uneven curvature of cornea or lens], [Cylindrical lens],
  [*Cataract*], [Cloudy, dim vision], [Lens becomes opaque], [Surgical replacement of the lens],
)

#worked-example(
  2,
  "Accommodation for a near object",
  tier: "UTME STANDARD",
  [Describe what happens in the eye when a student moves her gaze from a distant tree to the pages of a book.],
  [
    The near object sends light that is diverging, so more bending is needed to bring it to a focus on the retina.

    - The *ciliary muscles contract*.
    - The *suspensory ligaments slacken*.
    - The *lens becomes thicker and more convex*, so it refracts the light more strongly.
    - The image stays sharply focused on the *retina*.

    At the same time the *pupil constricts* in the converging reflex and the eyes turn inwards (*convergence*).

    *Model answer:* ciliary muscles contract → suspensory ligaments slacken → lens becomes more convex → shorter focal length → image still on the retina.
  ],
)

#worked-example(
  3,
  "Which defect, which lens?",
  tier: "JAMB CHALLENGE",
  [A candidate can read the examination paper clearly but cannot see the clock at the back of the hall. Name the defect, explain the cause in terms of the image, and state the type of lens that corrects it.],
  [
    *Defect:* myopia — short sight (short-sightedness).

    *Cause:* the eyeball is too long from front to back, or the lens is too strong. The lens system bends the rays too much, so parallel rays from a distant object come to a focus *in front of* the retina. By the time the rays reach the retina they have crossed and are diverging again, so the image is blurred.

    *Correction:* a *concave* (diverging) lens. It spreads the rays slightly before they enter the eye, so the eye's own lens brings them to a focus exactly on the retina.

    *Note:* the near object is still clear because rays from a near object are already diverging, and the eye can just manage to focus them.
  ],
)

// ============================================================================
// SECTION 2.6
// ============================================================================
== 2.6 The Ear

The ear does two jobs: *hearing* and *balance*. Hearing happens in the cochlea; balance happens in the semicircular canals. Examiners test the difference, because candidates happily label the whole ear as "the organ of hearing".

#diagram-fig("diagrams/ch02_ear.svg",
  "The human ear: pinna, auditory canal, eardrum, ossicles, cochlea and semicircular canals. The Eustachian tube keeps the pressure behind the eardrum equal to the pressure outside.")

#table(
  columns: (1.15fr, 2.2fr, 1.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Division],
  ),

  [*Pinna*], [Collects sound waves and funnels them into the canal], [Outer ear],
  [*Auditory canal*], [Carries the waves to the eardrum; wax and hairs trap dust], [Outer ear],
  [*Eardrum (tympanic membrane)*], [Thin membrane that vibrates when sound waves strike it], [Middle ear],
  [*Ossicles*], [Three tiny bones — malleus, incus, stapes — that amplify the vibration and pass it to the oval window], [Middle ear],
  [*Eustachian tube*], [Connects the middle ear to the throat and keeps air pressure equal on both sides of the eardrum], [Middle ear],
  [*Cochlea*], [Fluid-filled spiral containing the sound receptors that convert vibration into impulses], [Inner ear],
  [*Semicircular canals*], [Three fluid-filled loops that detect movement and position of the head — balance], [Inner ear],
  [*Auditory nerve*], [Carries impulses from the cochlea to the cerebrum], [Inner ear],
)

#concept-box("Why the Eustachian tube matters")[
  The ossicles work best when the pressure on both sides of the eardrum is equal. The Eustachian tube opens when you swallow or yawn, letting air in or out. That is why swallowing helps when a change of altitude makes your ears feel blocked, and why a heavy cold — which blocks the tube — dulls your hearing.
]

// ============================================================================
// SECTION 2.7
// ============================================================================
== 2.7 The Skin and the Other Receptors

The skin is the largest sense organ. It contains several kinds of receptor, each tuned to one kind of stimulus.

#table(
  columns: (1.5fr, 1.6fr, 1.3fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Receptor],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Detects],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Found in],
  ),

  [Touch corpuscles], [Light pressure and touch], [Skin of the fingertips],
  [Pressure receptors], [Deep, heavy pressure], [Dermis],
  [Temperature receptors], [Heat and cold], [Dermis],
  [Pain receptors (free nerve endings)], [Damage or dangerous stimuli], [Throughout the skin],
  [Taste buds], [Chemicals dissolved in saliva], [Tongue],
  [Olfactory cells], [Chemicals in the air], [Lining of the nose],
)

#shortcut-box("One receptor, one stimulus")[
  A receptor is *specific*: a temperature receptor does not report pressure, and a pain receptor does not report warmth. That is why the same hot spoon is felt as hot and as heavy by two different sets of receptors, and why a question that asks \"which receptor detects …\" always has exactly one correct answer.
]

// ============================================================================
// SECTION 2.8 — CHECKLIST
// ============================================================================
== 2.8 Chapter 2 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + name the two parts of the central nervous system and say what each does;
  + give the function of the cerebrum, cerebellum, medulla oblongata, hypothalamus and pituitary;
  + describe the arrangement of grey and white matter in the brain and in the spinal cord;
  + state the two jobs of the spinal cord;
  + draw the reflex arc and explain why it is faster than a voluntary action;
  + label the eye and state the function of the cornea, iris, pupil, lens, ciliary body, retina, optic nerve and sclera;
  + explain accommodation for a near object and for a far object;
  + name myopia, hypermetropia, presbyopia and astigmatism, with the cause and the correcting lens;
  + label the ear and separate the parts used for hearing from those used for balance;
  + name four receptors of the skin and the stimulus each detects.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The brain decides and the cord switches: cerebrum for thought, cerebellum for balance, medulla for breathing, hypothalamus for temperature. The eye bends light with the cornea, focuses it with the lens and detects it with the retina; the ear hears with the cochlea and balances with the semicircular canals.
  ]
]

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the brain, the eye, the ear and the reflex arc.", width: 100%)

// ============================================================================
// SECTION 2.9 — TWO-MINUTE SET
// ============================================================================
== 2.9 Chapter 2 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#block(breakable: false)[
#mcq(1, [The part of the brain that controls breathing and heart rate is the], [cerebrum], [medulla oblongata], [cerebellum], [hypothalamus])
#mcq(2, [Focusing on a near object involves], [the ciliary muscles contracting and the lens becoming more convex], [the ciliary muscles relaxing and the lens becoming flatter], [the pupil dilating], [the retina moving forward])
#mcq(3, [A person who cannot see distant objects clearly is suffering from], [hypermetropia], [presbyopia], [astigmatism], [myopia])
#mcq(4, [The receptors for hearing are found in the], [cochlea], [semicircular canals], [eardrum], [Eustachian tube])

#answer-key-grid(("B", "A", "D", "A"))
]
