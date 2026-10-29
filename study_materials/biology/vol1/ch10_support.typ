#import "template.typ": *

#current-chapter.update("Chapter 10: Support and Movement")
#pagebreak()

#chapter-opener(
  10,
  "Support and Movement",
  subtitle: "The Mammalian Skeleton, Bones and Joints, Antagonistic Muscles, Movement in Plants, and the Biology of the Human Frame",
  syllabus-ref: "Sec. B • Topic 9",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "State the five functions of the mammalian skeleton.",
    "Name the main regions of the skeleton and one bone in each.",
    "Classify joints and give an example of each type.",
    "Explain how antagonistic muscles move a bone.",
    "Explain how plants are supported without a skeleton.",
    "Describe the effects of exercise and of a poor diet on the skeleton.",
  ),
  hotspots: (
    "\"The knee is an example of a … joint\" — hinge.",
    "\"The shoulder is an example of a … joint\" — ball-and-socket.",
    "\"Which of these is a function of the skeleton?\" — support, protection, movement, blood cell formation, mineral storage.",
    "\"Muscles are described as antagonistic because …\" — one contracts while the other relaxes to reverse the movement.",
    "\"Plants are supported by …\" — turgor pressure and lignified xylem.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Forgetting that bones *make blood cells* — the red bone marrow is a function of the skeleton as well as a support. (2) Saying a muscle can push — muscles can only *pull*, which is exactly why they work in antagonistic pairs. (3) Describing plant support only as “turgor” — lignified xylem and supporting tissues matter too, and a three-mark question usually wants both.",
)

// ============================================================================
// SECTION 10.1
// ============================================================================
== 10.1 The Mammalian Skeleton

The human skeleton has about 206 bones and does five jobs.

#table(
  columns: (1.2fr, 2.3fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Explanation],
  ),

  [*Support*], [Holds the body upright and gives it shape; the vertebral column is the central pillar],
  [*Protection*], [The skull protects the brain, the rib cage the heart and lungs, the vertebral column the spinal cord],
  [*Movement*], [Bones act as levers; muscles pull on them at joints to produce movement],
  [*Blood cell formation*], [Red bone marrow makes red blood cells, white blood cells and platelets],
  [*Mineral storage*], [Bones store calcium and phosphorus, releasing them when the body needs them],
)

#diagram-fig("diagrams/ch10_skeleton.svg",
  "The main regions of the human skeleton, with the joints marked.")

#table(
  columns: (1.15fr, 2.35fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Region],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Bones],
  ),

  [Axial skeleton — skull], [Cranium (brain case), facial bones, jaw (mandible)],
  [Axial skeleton — vertebral column], [Cervical, thoracic, lumbar, sacral and caudal vertebrae; protects the spinal cord and supports the head],
  [Axial skeleton — rib cage], [Ribs, sternum (breastbone); protects heart and lungs and assists breathing],
  [Appendicular — pectoral girdle], [Clavicle (collar bone) and scapula (shoulder blade)],
  [Appendicular — forelimb], [Humerus, radius, ulna, carpals, metacarpals, phalanges],
  [Appendicular — pelvic girdle], [Pelvis; supports the abdominal organs and transmits weight to the legs],
  [Appendicular — hind limb], [Femur, tibia, fibula, tarsals, metatarsals, phalanges],
)

// ============================================================================
// SECTION 10.2
// ============================================================================
== 10.2 Joints

A *joint* is the place where two bones meet. Joints are classified by how much and what kind of movement they allow.

#diagram-fig("diagrams/ch10_joints.svg",
  "Three kinds of joint: hinge, ball-and-socket and gliding.")

#table(
  columns: (1.05fr, 1.2fr, 1.2fr, 1.6fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Movement],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Examples],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it is built],
  ),

  [*Hinge*], [In one plane only], [Knee, elbow, ankle, finger joints], [One bone with a convex surface fits a concave socket; ligaments limit movement to one direction],
  [*Ball-and-socket*], [In every direction, including rotation], [Shoulder, hip], [A rounded head sits in a cup-shaped socket],
  [*Gliding*], [Limited sliding movement], [Between vertebrae, between wrist bones], [Flat surfaces slide over one another],
  [*Pivot*], [Rotation about an axis], [Between the atlas and axis (top of the neck)], [A peg rotating inside a ring],
  [*Fixed (immovable)*], [None], [Sutures between the skull bones], [Bones interlocked and fused],
)

#shortcut-box("Learning the examples is the mark")[
  The examiner does not usually ask you to describe a hinge joint; they ask *“which of these is a hinge joint?”* and give you a list. Learn the pairs: *knee and elbow = hinge*, *shoulder and hip = ball-and-socket*, *vertebrae = gliding*, *skull = fixed*.
]

#worked-example(
  1,
  "Why the knee and the shoulder are different",
  tier: "FOUNDATION",
  [State two differences between the knee joint and the shoulder joint.]
  ,
  [
    The *knee* is a hinge joint: it allows movement in only one plane — bending and straightening. The *shoulder* is a ball-and-socket joint: it allows movement in every direction, including rotation.

    The knee is formed where the convex end of the femur meets the tibia with a small socket, and strong ligaments restrict its movement. The shoulder is formed where the rounded head of the humerus fits into the shallow cup of the scapula.

    *Answer:* one-plane against all-plane movement, and a restricted hinge against a ball in a socket.
  ],
)

// ============================================================================
// SECTION 10.3
// ============================================================================
== 10.3 Muscles and Movement

Muscles are the engines of movement. They are attached to bone by tough cords called *tendons*, and they work in *antagonistic pairs*: while one contracts, the other relaxes.

#diagram-fig("diagrams/ch10_muscle.svg",
  "Antagonistic muscles at the elbow, and the three kinds of muscle.")

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Why antagonists are necessary]
  #v(3pt)
  #text(size: 10pt)[
    A muscle can only *pull* when it contracts — it cannot push. To straighten a limb again, a second muscle on the other side of the bone must pull it back. The pair works as antagonists: the *biceps* (flexor) bends the arm, the *triceps* (extensor) straightens it. When one contracts, the other relaxes. This one fact explains why skeletons need *two* muscles at every joint.
  ]
]

#table(
  columns: (1.15fr, 1.5fr, 1.35fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Kind of muscle],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Where it is found],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Voluntary?],
  ),

  [Skeletal (striated)], [Attached to bones — arms, legs, trunk], [Voluntary — under conscious control],
  [Smooth (unstriated)], [Walls of the gut, blood vessels, bladder, uterus], [Involuntary — not under conscious control],
  [Cardiac], [The heart only], [Involuntary — never tires, works for life],
)

#worked-example(
  2,
  "Tendon or ligament?",
  tier: "UTME STANDARD",
  [Distinguish between a tendon and a ligament, and state the function of each.]
  ,
  [
    A *tendon* joins a *muscle to a bone*. It is made of strong, inelastic collagen fibres, and its job is to transmit the pull of the muscle to the bone so that movement is produced.

    A *ligament* joins a *bone to a bone* at a joint. It is slightly elastic, and its job is to hold the joint together and prevent it from moving too far in the wrong direction.

    *Answer:* tendon = muscle to bone, transmits force; ligament = bone to bone, stabilises the joint.
  ],
)

// ============================================================================
// SECTION 10.4
// ============================================================================
== 10.4 Support in Plants

Plants have no bones and no muscles, yet a maize plant stands two metres tall and an iroko tree stands thirty.

#table(
  columns: (1.2fr, 2.3fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Mechanism],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it works],
  ),

  [Turgor pressure], [Water-filled cells press outwards against their cellulose walls, making the tissue firm. This is why herbaceous plants wilt when short of water and recover when watered],
  [Lignified xylem], [The walls of xylem vessels are thickened with lignin, forming a rigid internal skeleton. This is why a woody stem can stand even when the tree is dead],
  [Collenchyma], [Cells with thickened corners, giving flexible support to growing stems and leaf stalks],
  [Sclerenchyma], [Cells with thick lignified walls, giving hard, rigid support],
  [Root system], [Anchors the plant in the soil and resists wind and water],
  [Buttress roots and prop roots], [Wide, flattened roots that steady tall tropical trees such as the silk cotton tree],
)

#worked-example(
  3,
  "Why a herbaceous plant wilts",
  tier: "JAMB CHALLENGE",
  [A tomato plant on a hot afternoon becomes limp, but recovers overnight. Explain both stages.]
  ,
  [
    On a hot afternoon the rate of *transpiration* exceeds the rate at which the roots can absorb water. The cells lose water, their *turgor pressure* falls, and the walls can no longer be held rigid — the stem and leaves droop. The plant has wilted.

    Wilting itself reduces the exposed leaf surface and encourages the *stomata* to close, both of which cut transpiration.

    Overnight, transpiration almost stops (the stomata close and the air is cooler and damper) while the roots continue to absorb water. The cells regain turgor and the plant stands upright again.

    *Answer:* loss of turgor from excessive transpiration, then recovery of turgor when absorption exceeds loss overnight.
  ],
)

// ============================================================================
// SECTION 10.5
// ============================================================================
== 10.5 Bones, Diet and Exercise

Bones are living tissue. They grow, repair themselves, and respond to the load placed on them.

#table(
  columns: (1.15fr, 2.35fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Condition],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Cause and effect],
  ),

  [*Rickets*], [Vitamin D (or calcium) deficiency in children; bones soften and bend, giving bow legs],
  [*Osteoporosis*], [Loss of bone mass, common in old age and after the menopause; bones become brittle and break easily],
  [*Arthritis*], [Inflammation of a joint; pain and stiffness, common in the elderly],
  [*Fracture*], [A break in a bone; repaired by new bone laid down by cells called osteoblasts],
  [*Effect of exercise*], [Regular weight-bearing exercise increases bone density and strengthens ligaments and muscles],
  [*Sprain*], [Overstretching or tearing of a ligament at a joint],
)

#trap-box("Vitamin D, calcium and rickets")[
  Bone is mostly *calcium phosphate*. Calcium comes from the diet (milk, fish, green vegetables), but it can only be absorbed if *vitamin D* is present — and vitamin D is made in the skin in sunlight. So rickets can be caused by a lack of calcium, a lack of vitamin D, or simply too little sunlight. Examiners like all three routes to the same disease.
]

// ============================================================================
// SECTION 10.6 — CHECKLIST
// ============================================================================
== 10.6 Chapter 10 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + state the five functions of the mammalian skeleton;
  + name the main bones of the axial and appendicular skeleton;
  + classify a joint as hinge, ball-and-socket, gliding, pivot or fixed, with two examples;
  + explain why muscles must work in antagonistic pairs;
  + distinguish a tendon from a ligament;
  + explain three ways in which plants are supported;
  + explain rickets, osteoporosis and the effect of exercise on bone.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 10 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Bones support, protect, move, make blood and store minerals; joints decide which way a bone can go; muscles pull in pairs because they cannot push; and plants stand up on turgor and lignin instead.
  ]
]

#diagram-fig("diagrams/recap_ch10.svg",
  "Chapter 10 recap card: the skeleton, joints, muscles and plant support.", width: 100%)

// ============================================================================
// SECTION 10.7 — TWO-MINUTE SET
// ============================================================================
== 10.7 Chapter 10 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#block(breakable: false)[
#mcq(1, [Which of the following is a hinge joint?], [Shoulder], [Hip], [Knee], [Neck])
#mcq(2, [Muscles are described as antagonistic because], [they are attached to bone], [one contracts while the other relaxes], [they are voluntary], [they work in pairs of the same size])
#mcq(3, [The structure that joins a muscle to a bone is a], [ligament], [tendon], [cartilage], [joint capsule])
#mcq(4, [Herbaceous plants are supported mainly by], [lignified xylem], [turgor pressure], [sclerenchyma], [their roots])

#answer-key-grid(("C", "B", "B", "B"))
]


#include "drill_ch10.typ"
