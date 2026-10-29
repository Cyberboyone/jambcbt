#import "template.typ": *

#current-chapter.update("Chapter 10: Practical Skills and the Practical Paper")
#pagebreak()

#chapter-opener(
  10,
  "Practical Skills and the Practical Paper",
  subtitle: "The Microscope and Magnification, the Rules of a Biological Drawing, the Five Food Tests, Field Sampling and Measurement, and the Way Data Must Be Recorded",
  syllabus-ref: "Sec. C • Topic 10",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Name the parts of a microscope and state the function of each.",
    "Calculate total magnification, and rearrange the magnification formula to find actual size.",
    "List the rules of a good biological drawing.",
    "Carry out and read the five food tests, and identify an unknown food from its results.",
    "Describe how to sample, measure and record data in the field.",
    "Choose between a table, a line graph and a bar chart, and label the axes correctly.",
  ),
  hotspots: (
    "\\\"Total magnification\\\" — eyepiece × objective: ×10 with ×40 gives ×400.",
    "\\\"Magnification = image size ÷ actual size\\\" — the same equation rearranged, as often asked backwards as forwards.",
    "\\\"A positive Benedict's test\\\" — a brick-red precipitate after heating; starch with iodine is blue-black.",
    "\\\"The graph to use for continuous data\\\" — a line graph. For named groups — a bar chart.",
    "\\\"Why is the slide viewed under low power first?\\\" — to find and focus the specimen before the field of view narrows.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Multiplying the wrong way, or forgetting that magnification is a *ratio*: ×10 with ×40 is ×400, not ×50, and not 400 mm. (2) Describing a food test without the *method*: Benedict's must be *heated*, the emulsion test must be *shaken with water*. (3) Drawing with a ruler or with shaded pencil: biological drawings use a sharp pencil, single clear lines, no shading, straight ruled label lines and no arrowheads.",
)

// ============================================================================
// SECTION 10.1
// ============================================================================
== 10.1 What the Practical Paper Tests

The practical component of a biology course is not a memory test. It asks four things, and each of them appears as a question in a theory paper too:

+ *Observation* — can you use the instrument and see what is actually there, rather than what you expected?
+ *Measurement* — can you take a reading, calculate a total magnification or an actual size, and keep the units right?
+ *Recording* — can you draw a table with headings and units, and choose the right graph?
+ *Interpretation* — can you say what the result means, and name the control that proves it?

#concept-box("The four habits that gain marks")[
  *Label with ruled lines*, never freehand arrows, and write the label level, not inside the drawing. \
  *Always give units* — mm, µm, °C, cm³, seconds. \
  *Record what you see*, not what the textbook says should be there. \
  *Write a control* — the same test without the variable — or the experiment proves nothing.
]

// ============================================================================
// SECTION 10.2
// ============================================================================
== 10.2 The Microscope and Magnification

A light microscope has two lenses in line: the *eyepiece* (ocular) at the top, usually ×10, and the *objective* on the revolving nosepiece, usually ×4, ×10, ×40 or ×100. The total magnification is the product of the two.

#diagram-fig("diagrams/ch10_microscope.svg",
  "The parts of a light microscope and the magnification relationship. The eyepiece magnifies the image that the objective has already formed, so the magnifications multiply.")

#align(center)[
  #text(size: 10.6pt, weight: "bold")[Total magnification = magnification of eyepiece × magnification of objective]
]

#align(center)[
  #text(size: 10.6pt, weight: "bold")[Magnification = image size ÷ actual size]
]

The second equation is the one that catches candidates, because it is used in three different directions: find the magnification from two lengths, find the actual size from the image and the magnification, or find the image size from the actual size and the magnification.

#concept-box("Units, once and for all")[
  1 mm = 1000 µm = 1 000 000 nm. \
  A microscope measurement is almost always in *µm*, and an answer in mm is often accepted only if the units are written down. Convert *before* you multiply: 0.05 mm is 50 µm, not 0.05 µm.
]

#worked-example(
  1,
  "Magnification, both ways round",
  tier: "UTME STANDARD",
  [(a) A microscope has a ×10 eyepiece and a ×40 objective. What is the total magnification? (b) Under this microscope a cell measures 8 mm across the drawing. What is its actual diameter? (c) A second cell is known to be 20 µm in diameter; how large will it appear under a ×10 eyepiece with a ×100 objective?],
  [
    *(a)* Total magnification = 10 × 40 = *×400*.

    *(b)* Rearrange: actual size = image size ÷ magnification = 8 mm ÷ 400 = 0.02 mm = *20 µm*. \
    (Multiply by 1000 to change mm to µm — a step worth writing out, because it is where most marks are lost.)

    *(c)* Total magnification = 10 × 100 = ×1000. \
    Image size = actual size × magnification = 20 µm × 1000 = 20 000 µm = *20 mm*, which is larger than the field of view — a reminder that at high power you see less of the specimen, not more.
  ],
)

#shortcut-box("Focusing, in the right order")[
  Place the slide on the stage and clip it. *Low power first* — the wider field of view makes the specimen easy to find. Focus *upwards*, with the objective moving away from the slide, never down onto it. Then swing to high power and use only the *fine* focus. Keep both eyes open, and never use the coarse focus at high power.
]

// ============================================================================
// SECTION 10.3
// ============================================================================
== 10.3 The Rules of a Biological Drawing

A drawing is examined as evidence of observation, so the rules are strict and they are always worth the same few marks.

+ Use a *sharp HB pencil* and a clean sheet; no pen.
+ Draw *large* — at least half the page — and in the *centre*.
+ Draw *single, clear, continuous lines*. No sketching, no shading, no colouring.
+ Draw *what you see*, in the correct proportions; do not turn a slide into a textbook diagram.
+ *Label* every named structure with a *straight ruled line* that *touches* the structure and ends level with the label. No arrowheads.
+ Write the *title* underneath, and the *magnification* if the drawing is from a microscope — for example \\"Transverse section of a leaf, ×400\\".

#trap-box("Three things that lose drawing marks at once")[
  *Shading* — a shaded drawing is treated as a sketch. *Arrowheads on label lines* — the rule is a plain ruled line. *Labels inside the drawing* — they must sit outside, level with the end of the line. Any one of these can cost the whole drawing mark even when the structure is perfect.
]

// ============================================================================
// SECTION 10.4
// ============================================================================
== 10.4 The Five Food Tests

Food tests identify the main nutrients in a sample by the colour change each one produces. Learn the *reagent*, the *method* and the *result* as a triple — the examiner often gives the result and asks for the reagent, or the reverse.

#diagram-fig("diagrams/ch10_foodtests.svg",
  "The five food tests: reagent, method and the positive result for each, with a food that gives it.")

#concept-box("Methods that must be stated")[
  *Benedict's test* — add Benedict's solution and *heat* in a water bath; a brick-red precipitate means a reducing sugar. \
  *Iodine test* — add iodine solution at room temperature; blue-black means starch. \
  *Biuret test* — add sodium hydroxide, then a few drops of copper(II) sulphate; purple means protein. \
  *Emulsion test* — shake the food with water and look for a milky-white emulsion; this is the fat test. \
  *DCPIP test* — add the blue dye and watch it go colourless; this shows vitamin C.
]

#worked-example(
  2,
  "Identifying an unknown food",
  tier: "UTME STANDARD",
  [A student tests a mashed sample of an unknown food and records: iodine — no colour change; Benedict's after heating — brick-red precipitate; Biuret — purple; emulsion test — a milky-white layer. Identify the food and explain each result],
  [
    *Iodine gave no colour change*, so there is *no starch* — the food is not a cereal or a tuber.

    *Benedict's gave a brick-red precipitate*, so the food contains a *reducing sugar* — glucose, fructose or maltose.

    *Biuret gave purple*, so the food contains *protein*.

    *The emulsion test gave a milky-white layer*, so the food contains *fat or oil*.

    *Identification.* A food rich in reducing sugar, protein and fat, but with no starch, is most likely a *nut* or an *oil seed* — groundnut, cashew or melon seed. A starchy food such as bread would have given blue-black with iodine, and a sugary fruit would have given no Biuret colour.
  ],
)

// ============================================================================
// SECTION 10.5
// ============================================================================
== 10.5 Sampling and Measuring in the Field

The sampling methods are developed in chapter 5; here they are reduced to the *practical* instructions the paper expects.

+ *Random sampling with a quadrat.* Divide the area into a grid, use random numbers to choose the squares, throw the quadrat, count, and repeat at least ten times. Record every count in a table, then take the mean.
+ *Belt transect.* Lay a tape across the habitat; place a quadrat at regular intervals; record the species and the *percentage cover* or the number in each quadrat. Plot the results against distance — the graph is the answer.
+ *Capture–recapture.* Catch, mark, release, wait, recatch. Record M, C and R, then calculate N = (M × C) ÷ R.
+ *Measuring the environment.* Soil and water *pH* with a meter or universal indicator; *temperature* with a thermometer held in the shade, or in the water at the same depth; *humidity* with a wet-and-dry bulb hygrometer; *light intensity* with a light meter, held at the same height each time.

#concept-box("The control you must mention")[
  When you compare two sites, the only difference between them must be the factor you are testing. Keep the quadrat size, the number of throws, the time of day and the depth of measurement the same at both sites. A comparison in which the quadrat size also changed proves nothing.
]

// ============================================================================
// SECTION 10.6
// ============================================================================
== 10.6 Recording and Presenting Data

Data are recorded in a *table* and presented in a *graph*, and the choice of graph is decided by the type of data, not by preference.

+ *Continuous data* — time, temperature, concentration, distance — take a *line graph*, with the points joined by a smooth curve or a straight line of best fit.
+ *Discrete or categorical data* — five species, five habitats, four treatments — take a *bar chart*, with equal-width bars and gaps between them.
+ *A table* always has *headings with units*, the independent variable in the first column, and no units written against every number.

#concept-box("The rules of a good graph")[
  Title, with both variables named — \\"Rate of photosynthesis against light intensity\\". \
  Both axes *labelled with the quantity and its unit*. \
  An *even scale* on each axis, with the numbers written along it. \
  The *independent variable on the x-axis*, the dependent variable on the y-axis. \
  Points plotted in pencil, then the curve drawn — never a zig-zag joining every point, and never a line forced through the origin.
]

#diagram-fig("diagrams/ch10_graph.svg",
  "A line graph for continuous data and a bar chart for named groups, with the rules that apply to both.")

#shortcut-box("Reading an anomalous point")[
  If one point sits far off the trend, do not simply join it. Say it is *anomalous*, suggest a reason — a misreading, a bubble in the tube, a change in the light — and draw the line of best fit *through the trend*, ignoring that point. Examiners award a mark for recognising it and a second for explaining it.
]

// ============================================================================
// SECTION 10.7 — CHECKLIST
// ============================================================================
== 10.7 Chapter 10 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + name the parts of a microscope and state the function of the eyepiece, objective, stage, and coarse and fine focus;
  + calculate total magnification, and find an actual size from an image and a magnification;
  + convert between mm, µm and nm without losing a factor of ten;
  + list the rules of a biological drawing, including the label-line rule;
  + state the reagent, the method and the positive result for all five food tests;
  + identify an unknown food from a set of test results;
  + describe random quadrat sampling, a belt transect and capture–recapture as practical procedures;
  + measure pH, temperature, humidity and light intensity in the field, and state the control;
  + choose between a table, a line graph and a bar chart, and label both axes with units;
  + describe what to do with an anomalous point.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 10 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The practical paper tests observation, measurement, recording and interpretation. Total magnification is the eyepiece multiplied by the objective, and magnification is image size divided by actual size — used in all three directions, always with units. Drawings use a sharp pencil, single lines, no shading, ruled label lines without arrowheads and a title with the magnification. The five food tests are iodine for starch, Benedict's with heat for reducing sugar, Biuret for protein, the emulsion test for fat and DCPIP for vitamin C. Sample randomly, measure the environment, keep the control constant, record in a table with units and present continuous data as a line graph and categories as a bar chart.
  ]
]

#diagram-fig("diagrams/recap_ch10.svg",
  "Chapter 10 recap card: magnification, food tests, sampling and graphs.", width: 100%)

// ============================================================================
// SECTION 10.8 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 10.8 Chapter 10 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [A microscope has a ×10 eyepiece and a ×40 objective. Its total magnification is], [×50], [×400], [×4], [×4000])
#mcq(2, [A positive Benedict's test is shown by], [a blue-black colour], [a purple colour], [a milky-white emulsion], [a brick-red precipitate])
#mcq(3, [When focusing a microscope, the correct order is], [low power first, then high power, focusing upwards], [high power first, then low power, focusing downwards], [objective pressed onto the slide, then released], [mirror switched off, then coarse focus])
#mcq(4, [A bar chart is the correct choice when], [both variables are continuous], [the data are percentages against time], [the data fall into named groups], [there is only one measurement])

#answer-key-grid(("B", "D", "A", "C"))

#answer-notes((
  ("B", [total magnification is the product: 10 × 40 = 400.]),
  ("D", [Benedict's solution plus heat gives a brick-red precipitate when a reducing sugar is present.]),
  ("A", [start on low power to find the specimen, focus upwards so the objective never strikes the slide, then use the fine focus on high power.]),
  ("C", [bars represent separate categories, whereas continuous data are plotted as a line graph.]),
))

#include "drill_ch10.typ"
