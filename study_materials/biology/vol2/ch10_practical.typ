#import "template.typ": *

#current-chapter.update("Chapter 10: Practical Skills")
#pagebreak()

#chapter-opener(
  10,
  "Practical Skills",
  subtitle: "The Microscope, Food Tests, Measuring and Recording, Variables, Sampling and the Practical Write-up",
  syllabus-ref: "Sec. B • Topic 10",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Name the parts of the light microscope and state the function of each.",
    "Calculate total magnification and describe how to focus a slide.",
    "Describe the four food tests, the reagent used and the positive result.",
    "Identify the independent, dependent and controlled variables in an experiment.",
    "Describe how to use a quadrat, a sweep net and the capture–recapture method.",
    "Draw a table of results correctly and plot a graph from it.",
    "Write the standard sections of a practical report.",
  ),
  hotspots: (
    "\"Total magnification is calculated by …\" — multiplying the eyepiece power by the objective power.",
    "\"Benedict's solution gives a positive result with …\" — a reducing sugar, changing to brick-red on heating.",
    "\"The variable that the experimenter changes is the …\" — independent variable.",
    "\"The best estimate of a population of mobile animals is given by …\" — the capture–recapture method.",
    "\"A control is needed in an experiment in order to …\" — show that the result is due to the variable tested.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Forgetting to *heat* Benedict's solution — it gives a positive result only in a boiling water bath. (2) Mixing up the variables: the *independent* is what you change, the *dependent* is what you measure. (3) Calling a *control* a *controlled variable*: a control is a separate set-up with no treatment; a controlled variable is one you keep constant.",
)

// ============================================================================
// SECTION 10.1
// ============================================================================
== 10.1 The Light Microscope

#diagram-fig("diagrams/ch10_microscope.svg",
  "The parts of a light microscope. It is carried by the arm, focused at low power first, and the magnification is the product of the two lenses.")

#table(
  columns: (1.25fr, 2.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Function],
  ),

  [Eyepiece (ocular lens)], [The lens you look through; it magnifies the image from the objective (usually ×10)],
  [Body tube], [Keeps the two lenses a fixed distance apart so the image stays in focus],
  [Objective lenses], [The lenses nearest the slide; a rotating nosepiece selects ×4, ×10 or ×40],
  [Stage and clips], [The flat platform where the slide sits; the clips hold it still],
  [Coarse adjustment knob], [Moves the tube up and down for the first, rough focus — used with the low-power objective only],
  [Fine adjustment knob], [Sharpens the image once the coarse focus is roughly right],
  [Condenser and diaphragm], [Gather and control the amount of light passing through the specimen],
  [Light source or mirror], [Sends light up through the specimen],
  [Arm and base], [The arm is the handle; the base keeps the instrument steady],
)

#formula-box("Total magnification and the size of a cell")[
  $ "Total magnification" = "power of eyepiece" times "power of objective" $ \
  A ×10 eyepiece with a ×40 objective gives *×400*. \
  $ "Actual size" = ("measured size of the image") / "total magnification" $
]

#shortcut-box("How to focus a slide in four moves")[
  (1) Start with the *lowest* objective and the stage as high as it will go. (2) Look from the side and lower the objective until it almost touches the slide. (3) Look down the eyepiece and turn the coarse knob *away* so the objective rises. (4) Sharpen with the fine knob, then swing to the next objective without moving the stage.
]

#concept-box("Why the image is upside down")[
  A light microscope has two convex lenses, and each one turns the image through 180°. Two reversals give a *virtual, magnified* image that is inverted left-to-right and top-to-bottom of the specimen. That is why a specimen drifting to the right of the field is brought back by moving the slide to the *right* — the stage moves opposite to the image.
]

// ============================================================================
// SECTION 10.2
// ============================================================================
== 10.2 The Food Tests

#diagram-fig("diagrams/ch10_foodtests.svg",
  "The four food tests, the reagent for each, and the colour of a positive result.")

#table(
  columns: (1.05fr, 1.35fr, 1.35fr, 1.25fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Test for],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Reagent],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Positive result],
  ),

  [*Starch*], [Iodine in potassium iodide], [Add two drops to the food on a white tile], [Blue-black],
  [*Reducing sugar*], [Benedict's solution], [Add and heat in a boiling water bath for 5 minutes], [Green → yellow → orange → brick-red],
  [*Protein*], [Biuret solution (NaOH + CuSO₄)], [Add and shake; no heat], [Purple or violet],
  [*Fat*], [Ethanol, then water], [Shake the food with ethanol, then pour into water], [A milky-white emulsion],
)

#trap-box("Three practical details that always appear in the mark scheme")[
  (1) Benedict's test needs *heat* — in a water bath, never a naked flame, because the tube may crack and the solution may spit. \
  (2) Iodine must be added *after* the food is on the tile, and the tile must be *white* so the blue-black colour can be seen. \
  (3) Always run a *control* — a tube of water treated in exactly the same way — otherwise a colour change could be blamed on the reagent alone.
]

#worked-example(
  1,
  "Designing the test for reducing sugar in a fruit",
  tier: "UTME STANDARD",
  [A student claims that ripe pawpaw contains reducing sugar. Describe an experiment, with a control, that would test the claim and state the variables.],
  [
    *Apparatus:* pawpaw pulp, distilled water, Benedict's solution, two test tubes, a test-tube rack, a water bath at 80–90 °C, a dropper.

    *Method:* grind a small piece of the pulp with distilled water and filter it. Put 2 cm³ of the filtrate in tube A and 2 cm³ of distilled water in tube B (the control). Add 2 cm³ of Benedict's solution to each. Stand both tubes in the boiling water bath for five minutes and compare the colours.

    *Expected result:* tube A turns brick-red; tube B stays blue. That shows that the reducing sugar came from the pawpaw and not from the reagent.

    *Variables:* independent — the presence or absence of pawpaw extract; dependent — the colour change; controlled — volume of Benedict's, temperature and time in the bath.

    *Model answer:* equal volumes, heated together, with a water control; a brick-red colour in A and no change in B confirms reducing sugar.
  ],
)

// ============================================================================
// SECTION 10.3
// ============================================================================
== 10.3 Variables and Controls

#table(
  columns: (1.3fr, 2.3fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning and example],
  ),

  [*Independent variable*], [The one the experimenter deliberately changes — e.g. the temperature of the water in a photosynthesis experiment],
  [*Dependent variable*], [The one that is measured as a result — e.g. the number of oxygen bubbles per minute],
  [*Controlled variables*], [The ones kept the same so the comparison is fair — e.g. light intensity, the mass of the plant, the volume of water],
  [*Control*], [A separate set-up given no treatment, used for comparison — e.g. a tube of water in the food test],
  [*Reliability*], [Whether a repeat gives the same result — improved by repeating and averaging],
  [*Accuracy*], [Whether the reading is close to the true value — improved by using a better instrument],
)

#shortcut-box("Reading a graph of an experiment")[
  The variable on the *x*-axis is almost always the independent one; the *y*-axis carries the dependent one. If the question asks "what was changed?", look at the *x*-axis. If it asks "what was measured?", look at the *y*-axis.
]

#table(
  columns: (1.4fr, 1.55fr, 1.45fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Instrument],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it measures],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Accuracy],
  ),

  [Metre rule], [Length], [To the nearest millimetre],
  [Beam balance], [Mass], [To 0.01 g or better],
  [Measuring cylinder], [Volume of a liquid], [The smallest graduation, usually 1 cm³],
  [Thermometer], [Temperature], [Usually to 0.5 °C],
  [Hand lens], [A magnified view of a specimen], [×5 or ×10],
  [Stopwatch], [Time], [To 0.01 s],
)

// ============================================================================
// SECTION 10.4
// ============================================================================
== 10.4 Sampling Living Things

You cannot count every plant in a field or catch every insect, so ecologists take a *sample* and use it to estimate the whole.

#table(
  columns: (1.25fr, 1.5fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Used for],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it works],
  ),

  [*Quadrat*], [Plants, and slow-moving animals], [Throw a 1 m × 1 m square at random; count the species inside; repeat 10–20 times and average],
  [*Sweep net*], [Flying and hopping insects], [Sweep through the vegetation in a standard figure-of-eight and count the catch],
  [*Pitfall trap*], [Ground-dwelling insects], [Sink a cup flush with the soil surface; the animals fall in and cannot climb out],
  [*Tullgren funnel*], [Small animals in leaf litter], [A lamp drives the animals down through a sieve into a collecting jar],
  [*Capture–recapture*], [Mobile animals such as grasshoppers or snails], [Catch and mark a sample, release it, then catch a second sample and count the marked ones],
  [*Transect*], [How species change across a habitat], [Lay a tape and record the plants touching it at intervals — a line transect — or use quadrats along it],
)

#formula-box("The capture–recapture estimate")[
  $ N = (M times C) / R $ \
  where $N$ is the estimated population, $M$ the number marked and released, $C$ the number in the second sample, and $R$ the number of marked animals in that second sample. \
  Example: mark 40, recapture 50 of which 8 are marked → $N = (40 times 50) / 8 = 250$.
]

#trap-box("Why the estimate can be wrong")[
  The method assumes that marked animals *mix freely* and are *no more likely to be caught* a second time. If the marks make them conspicuous to predators, or if the second sample is taken from the same place, the estimate will be too low or too high. Marks must also not harm the animal.
]

// ============================================================================
// SECTION 10.5
// ============================================================================
== 10.5 Recording and Presenting Results

#concept-box("A results table has rules")[
  The *independent variable* goes in the first column and the *dependent* in the second, with the *unit in the column heading* — not beside every number. Each column is headed with what it contains and its unit, the readings are written to the same number of decimal places, and repeats are shown separately or averaged in a final column.
]

#table(
  columns: (1.15fr, 2.45fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Section],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it contains],
  ),

  [Aim], [One sentence: what the experiment sets out to find],
  [Apparatus and materials], [A list, with quantities and sizes],
  [Method], [Numbered steps, in the passive voice, with the variables named],
  [Results], [A ruled table, then a graph with a title and labelled axes],
  [Discussion], [What the results show, compared with the prediction, and any errors],
  [Conclusion], [One sentence answering the aim],
  [Precautions], [The steps taken to make the result reliable — repeats, controls, avoiding parallax],
)

#shortcut-box("Drawing a graph that earns the marks")[
  Label both axes *with the quantity and the unit*; use a sensible scale that fills the paper; plot each point with a small cross; draw a smooth curve or a line of best fit — never join the dots with a zigzag unless the points are meant to be joined; give the graph a title that says what it shows.
]

// ============================================================================
// SECTION 10.6 — CHECKLIST
// ============================================================================
== 10.6 Chapter 10 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + name the parts of the microscope and the function of each;
  + calculate total magnification and the actual size of a specimen;
  + describe how to focus a slide correctly, starting at low power;
  + name the reagent, the method and the positive result for each of the four food tests;
  + identify the independent, dependent and controlled variables in an experiment;
  + explain what a control is and why one is needed;
  + describe how to use a quadrat, a sweep net and the capture–recapture method;
  + calculate a population estimate from capture–recapture data;
  + set out a results table and a graph to the mark-scheme standard;
  + write a practical report with the standard sections.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 10 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Focus a microscope at low power and multiply the two lenses to get the magnification. Iodine, Benedict's, Biuret and ethanol-between them identify starch, reducing sugar, protein and fat. In every experiment name the three variables, always run a control, sample randomly, repeat, and present the results in a ruled table and a fully labelled graph.
  ]
]

#diagram-fig("diagrams/recap_ch10.svg",
  "Chapter 10 recap card: the microscope, food tests, variables and sampling.", width: 100%)

// ============================================================================
// SECTION 10.7 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 10.7 Chapter 10 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [A microscope has a ×10 eyepiece and a ×40 objective. The total magnification is], [×4], [×50], [×400], [×4000])
#mcq(2, [Benedict's solution gives a brick-red colour with], [starch], [a reducing sugar], [protein], [fat])
#mcq(3, [In an experiment on the effect of light on photosynthesis, the independent variable is], [the number of oxygen bubbles], [the light intensity], [the temperature of the water], [the mass of the plant])
#mcq(4, [40 grasshoppers are caught, marked and released. A second sample of 50 contains 8 marked. The estimated population is], [200], [250], [320], [500])

#answer-key-grid(("C", "B", "B", "B"))

#answer-notes((
  ("C", [total magnification is the product of the two lenses: $10 times 40 = 400$.]),
  ("B", [Benedict's solution changes from blue to green, yellow, orange or brick-red when heated with a reducing sugar.]),
  ("B", [the light intensity is what the experimenter changes — the bubbles are what is measured.]),
  ("B", [$N = (M times C) div R = (40 times 50) div 8 = 250$.]),
))
