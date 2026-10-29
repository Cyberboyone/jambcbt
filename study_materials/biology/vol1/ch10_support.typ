#import "template.typ": *

#current-chapter.update("Chapter 10: Support and Movement")
#pagebreak()

#chapter-opener(
  10,
  "Support and Movement",
  subtitle: "The Human Skeleton, Bones and Cartilage, the Four Kinds of Joint, Antagonistic Muscles, and How Plants Stand Up Without a Skeleton",
  syllabus-ref: "Sec. B • Topic 9",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "State the five functions of the human skeleton.",
    "Name the main parts of the axial and appendicular skeleton.",
    "Classify joints and give an example of each type.",
    "Label a synovial joint and explain the role of cartilage, fluid and ligaments.",
    "Explain how antagonistic muscles move a bone.",
    "Explain how herbaceous plants are supported.",
  ),
  hotspots: (
    "\"Which of these is a hinge joint?\" — elbow or knee (one plane only).",
    "\"The shoulder is an example of a …\" — ball-and-socket joint.",
    "\"Muscles are attached to bones by …\" — tendons.",
    "\"Bones are attached to bones by …\" — ligaments.",
    "\"Herbaceous plants are supported mainly by …\" — turgidity of their cells.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Swapping tendon and ligament — *tendons* join muscle to bone, *ligaments* join bone to bone. (2) Saying one muscle can push a bone back — muscles can only *pull*, which is exactly why they work in antagonistic pairs. (3) Writing that plants are supported by their *cell walls* alone — in herbaceous plants the support comes mainly from *turgor pressure* inside the cells.",
)

// ============================================================================
// SECTION 10.1
// ============================================================================
== 10.1 Why Support Matters

An organism needs support to hold its shape against gravity, to keep its organs in place, and to give muscles something to pull against. Animals with hard skeletons can grow large; plants solve the same problem with rigid walls and water pressure.

#table(
  columns: (1fr, 1.4fr, 1.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The skeleton does it by …],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Example],
  ),

  [Support], [Holding the body up and keeping its shape], [Vertebral column holds the trunk upright],
  [Protection], [Enclosing delicate organs in bone], [Skull protects the brain; ribs protect the heart and lungs],
  [Movement], [Providing levers that muscles pull], [The forearm is a lever moved by the biceps],
  [Mineral store], [Holding calcium and phosphorus], [Bones release calcium when blood calcium falls],
  [Blood cell production], [Red marrow makes blood cells], [Red bone marrow in the femur and ribs],
)

// ============================================================================
// SECTION 10.2
// ============================================================================
== 10.2 The Human Skeleton

#diagram-fig("diagrams/ch10_skeleton.svg",
  "The human skeleton: the axial skeleton (skull, vertebral column, ribs, sternum) and the appendicular skeleton (limbs and girdles).")

#table(
  columns: (1.15fr, 1.9fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Bones],
  ),

  [*Skull*], [Cranium (brain case) and facial bones],
  [*Vertebral column*], [33 vertebrae: 7 cervical, 12 thoracic, 5 lumbar, 5 sacral (fused), 4 coccygeal (fused)],
  [*Thoracic cage*], [12 pairs of ribs and the sternum],
  [*Pectoral girdle*], [Clavicle and scapula, with the humerus, radius, ulna and hand bones],
  [*Pelvic girdle*], [Hip bones, with the femur, tibia, fibula and foot bones],
)

#v(4pt)

#concept-box("Bone and cartilage")[
  *Bone* is living tissue: cells (osteocytes) in a hard matrix of calcium salts and collagen, with blood vessels and nerves running through it. *Cartilage* is softer and flexible, with no blood vessels; it covers the ends of bones at joints and forms the discs between vertebrae. A child's skeleton is mostly cartilage, which is why young bones bend rather than break.
]

// ============================================================================
// SECTION 10.3
// ============================================================================
== 10.3 Joints

A *joint* is a place where two bones meet. Joints are classified by how much they move.

#diagram-fig("diagrams/ch10_joints.svg",
  "The four movable joints — hinge, ball-and-socket, pivot and gliding — and the movements each allows.")

#table(
  columns: (1.1fr, 1.2fr, 1.2fr, 1.3fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Movement],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Example],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Examiner's phrase],
  ),

  [*Fibrous (immovable)*], [None], [Sutures of the skull], [Bones fused by fibres],
  [*Cartilaginous (slightly movable)*], [Small], [Between vertebrae], [Discs of cartilage],
  [*Hinge*], [One plane only], [Elbow, knee], [Allows bending and straightening],
  [*Ball-and-socket*], [All directions], [Shoulder, hip], [Widest range of movement],
  [*Pivot*], [Rotation], [Between atlas and axis], [Turning the head],
  [*Gliding*], [Sliding], [Between carpals and tarsals], [Flat surfaces sliding over each other],
)

#v(4pt)

#table(
  columns: (1.2fr, 2.0fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Part of a synovial joint],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Role],
  ),

  [*Articular cartilage*], [Smooth and slightly springy; reduces friction and absorbs shock],
  [*Synovial fluid*], [Lubricates the joint and nourishes the cartilage],
  [*Joint capsule*], [Holds the bones together and encloses the fluid],
  [*Ligaments*], [Strong, slightly elastic; join bone to bone and prevent dislocation],
)

// ============================================================================
// SECTION 10.4
// ============================================================================
== 10.4 Muscles and Movement

#diagram-fig("diagrams/ch10_muscles.svg",
  "The biceps and triceps at the elbow: an antagonistic pair. One contracts while the other relaxes, and the forearm swings on the joint as a lever.")

#table(
  columns: (1fr, 1.5fr, 1.5fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Structure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Made of],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Joins],
  ),

  [*Muscle*], [Bundles of muscle fibres that shorten when stimulated], [Muscle to bone, by tendon],
  [*Tendon*], [Dense, inelastic connective tissue], [Muscle to bone],
  [*Ligament*], [Strong, slightly elastic tissue], [Bone to bone],
)

#v(4pt)

#worked-example(
  1,
  "The biceps and triceps",
  tier: "UTME STANDARD",
  [Describe what happens to the biceps and the triceps when the elbow bends and when it straightens.],
  [
    When the elbow *bends*, the *biceps* contracts and shortens, pulling the radius upwards; the *triceps* relaxes and lengthens.

    When the elbow *straightens*, the reverse happens: the *triceps* contracts and pulls the ulna downwards, and the *biceps* relaxes.

    Neither muscle can push. Each only pulls, and the pull is reversed by its antagonist — which is why they are called an *antagonistic pair*.
  ],
)

// ============================================================================
// SECTION 10.5
// ============================================================================
== 10.5 Support in Plants

#table(
  columns: (1.2fr, 2.0fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Mechanism],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it works],
  ),

  [*Turgor pressure*], [Water-filled cells press their contents against the cell walls, making the tissue firm — the main support of herbaceous plants],
  [*Xylem*], [Thick, lignin-reinforced walls form a rigid internal skeleton in stems and roots],
  [*Collenchyma*], [Living cells with thickened corners, giving flexible support to young stems and leaves],
  [*Sclerenchyma*], [Dead cells with thick lignified walls — the hardest support in woody plants],
)

#v(4pt)

#worked-example(
  2,
  "Why a plant wilts but does not collapse",
  tier: "JAMB CHALLENGE",
  [A herbaceous plant left without water droops but does not immediately break. Explain why, and why it would break if the water shortage continued.],
  [
    The plant's support comes mainly from *turgor pressure*: water-filled cells press against their walls and hold the stem upright. Without water the cells lose turgor (*flaccidity*), and the soft tissues droop — this is *wilting*.

    Wilting is a *reversible* response: it reduces transpiration by reducing the leaf area exposed, and the plant recovers if water returns. If the shortage continues, the cells die and the *xylem and sclerenchyma* that hold the stem rigid are left unsupported and brittle, so the stem can break.
  ],
)

// ============================================================================
// SECTION 10.6 — CHECKLIST
// ============================================================================
== 10.6 Chapter 10 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + state the five functions of the skeleton;
  + name the parts of the axial and appendicular skeleton;
  + classify joints and give one example of each type;
  + label the parts of a synovial joint and give the role of each;
  + explain antagonistic muscle action at the elbow;
  + explain three mechanisms by which plants are supported.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 10 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Bones support, protect, lever, store minerals and make blood. Joints decide which movements are possible; tendons tie muscle to bone and ligaments tie bone to bone; muscles only pull, so they work in pairs. Plants do the same job with turgor, lignin and thickened walls.
  ]
]

#diagram-fig("diagrams/recap_ch10.svg",
  "Chapter 10 recap card: the skeleton, the joints, the muscle pair and plant support.", width: 62%)

// ============================================================================
// SECTION 10.7 — TWO-MINUTE SET
// ============================================================================
== 10.7 Chapter 10 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Which of the following is a hinge joint?], [Shoulder], [Elbow], [Hip], [Neck])
#mcq(2, [Muscles are attached to bones by], [ligaments], [tendons], [cartilage], [synovial fluid])
#mcq(3, [Herbaceous plants are supported mainly by], [lignin in the xylem], [turgor pressure in their cells], [collenchyma], [sclerenchyma])
#mcq(4, [The joint between the atlas and the axis is a], [hinge joint], [ball-and-socket joint], [pivot joint], [gliding joint])

#answer-key-grid(("B", "B", "B", "C"))
