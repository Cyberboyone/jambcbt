#import "template.typ": *

#current-chapter.update("Chapter 1: Temperature and Thermometers")

#pagebreak()

#chapter-opener(
  1,
  "Temperature and Thermometers",
  subtitle: "Heat and Temperature, Thermometric Properties, the Fixed Points, the Celsius and Kelvin Scales, Calibration, and How to Choose the Right Thermometer",
  syllabus-ref: "Sec. B • Heat 1",
  utme-weight: "3 Qs every year",
  running: "Temperature and Thermometers",
)

#focus-radar(
  objectives: (
    "Distinguish heat from temperature, and give the unit of each.",
    "State what a thermometric property is, and name four of them.",
    "Define the two fixed points and convert between °C and K.",
    "Calibrate a thermometer from two readings using $theta = (X - X_0)\/(X_100 - X_0) times 100$.",
    "Compare liquid-in-glass, thermocouple, resistance and radiation thermometers.",
    "Explain why a clinical thermometer has a constriction and a short range.",
  ),
  hotspots: (
    "“The temperature of a body is 27 °C. What is it in kelvin?” — 300 K, because you add 273.",
    "“A change of 20 °C is a change of …” — 20 K. An interval is the same on both scales.",
    "“Which thermometer measures the temperature of a flame?” — the thermocouple or the pyrometer, never mercury.",
    "“Ice point and steam point are …” — 0 °C and 100 °C at standard pressure, and they are the calibration anchors.",
    "“Two thermometers disagree slightly at 50 °C because …” — their thermometric properties are not perfectly linear.",
  ),
  trap-summary: "Three slips. (1) Adding 273 to a *difference*: intervals are the same in °C and K, so a rise of 20 °C is a rise of 20 K, not 293 K. (2) Calling heat a temperature: a bathtub of warm water holds more heat than a red-hot nail, though its temperature is lower. (3) Putting a Celsius temperature into a gas law: every gas equation in this volume needs kelvin, and Chapter 5 will punish the slip.",
)

// ============================================================================
== 1.1 Heat and Temperature Are Not the Same Thing

Touch a metal door handle on a cold morning and it feels colder than the wooden door beside it, although both are at the same temperature. The handle is not colder; it *conducts* heat out of your hand faster. That single experience is the reason the distinction between heat and temperature has to be fixed before any arithmetic begins.

#concept-box("The definition the examiner wants")[
  *Temperature* is a measure of the average kinetic energy of the particles of a body. It decides the direction in which heat flows: from the hotter body to the colder one. *Heat* is energy in transit from a hotter body to a colder one because of the temperature difference — it is not stored *in* a body, and it is measured in joules, not degrees.
]

So temperature is a *state* — a reading you can take — and heat is a *process* — something that happens while the reading changes. The unit of temperature is the kelvin (K), and the degree Celsius (°C) is the working unit in the laboratory. The unit of heat is the joule (J). The old unit, the calorie, is defined as the heat needed to raise 1 g of water through 1 °C, and 1 cal = 4.2 J.

#formula-box("Two quantities, two units, one direction")[
  + *Temperature* — kelvin, K. The average kinetic energy of the particles. A *state*.
  + *Heat* — joule, J. Energy transferred because of a temperature difference. A *process*.
  + Heat always flows *from* the hotter body *to* the colder one, and stops when the temperatures are equal. That condition is called thermal equilibrium, and it is what a thermometer waits for.
]

#trap-box("A bathtub of warm water holds more heat than a red-hot nail")[
  The nail is at 400 °C and the bath at 40 °C, yet the bath contains far more internal energy, because it has thousands of times more water in it. Temperature is *per particle*; heat depends on how many particles there are and on what they are made of. A question that asks “which contains more heat” is asking about mass and specific heat capacity, not about the thermometer. Chapter 4 turns that into the equation $Q = m c Delta theta$.
]

Two bodies at the same temperature can still hold different amounts of internal energy — a kilogram of water at 20 °C and a kilogram of iron at 20 °C are at the same temperature, but the water needs about ten times as much heat to reach 21 °C. Temperature says *how hot*; heat capacity says *how much heat it takes*. The rest of this chapter is about measuring the first of those, and the next three chapters are about the second.

// ============================================================================
== 1.2 What a Thermometer Needs: a Property and Two Fixed Points

Any thermometer works the same way. Something observable changes steadily as the body warms, and the size of that change is read against a scale built on two agreed temperatures. The observable is called the *thermometric property*.

#concept-box("Thermometric property")[
  A *thermometric property* is a physical property that changes continuously and reproducibly with temperature. Examples: the volume of a liquid, the pressure of a gas at constant volume, the electrical resistance of a wire, the e.m.f. of a thermocouple, and the colour of a hot body.
]

#formula-box("The two fixed points")[
  + *Lower fixed point* — the temperature of pure melting ice at standard atmospheric pressure: 0 °C = 273 K.
  + *Upper fixed point* — the temperature of steam above boiling water at standard atmospheric pressure: 100 °C = 373 K.
  + The interval between them is divided into 100 equal parts on the Celsius scale, and into 100 parts on the kelvin scale as well — which is why one degree Celsius and one kelvin are the same size.
]

#diagram-fig("diagrams/ch01_scales.svg",
  "The Celsius scale is built on two fixed points and 100 equal divisions between them. The kelvin scale keeps the same size of degree and moves the zero to absolute zero.", width: 100%)

A thermometer that has lost its scale can still be calibrated: put it in melting ice and mark where the property sits, put it in steam and mark again, then divide. That is the whole of section 1.4, and it is the source of the most common numerical question in this chapter.

#trap-box("Absolute zero is −273 °C, and no kelvin is negative")[
  Absolute zero is the temperature at which the particles have the least kinetic energy they can have — about −273 °C, or 0 K. Nothing in the syllabus is colder, so a calculation that returns a negative kelvin temperature has gone wrong somewhere, usually by subtracting 273 instead of adding it, or by using a Celsius temperature in an equation that needed kelvin.
]

// ============================================================================
== 1.3 The Celsius and Kelvin Scales

Two scales, one interval. The Celsius scale puts its zero at the ice point; the kelvin scale puts its zero at absolute zero. Because the degrees are the same size, converting is a single addition.

#formula-box("Converting between the scales")[
  + *To kelvin:* $T\/"K" = theta\/"°C" + 273$. *To Celsius:* $theta\/"°C" = T\/"K" - 273$.

  A temperature *difference* needs no conversion at all: $Delta T = Delta theta.$ A rise of 20 °C is a rise of 20 K.
]

#diagram-fig("diagrams/ch01_property.svg",
  "Calibrating a thermometer: the property is plotted against the temperature it is supposed to represent. Two fixed points fix the straight line, and the line gives every other temperature.", width: 92%)

*Why the kelvin scale exists.* It is not a convenience. The volume of a fixed mass of gas at constant pressure falls by 1/273 of its value at 0 °C for every degree of cooling, and if that behaviour continued the volume would reach zero at −273 °C. The kelvin scale is the one on which that straight line passes through the origin — which is why the gas laws of Chapter 5 are written in kelvin and not in Celsius.

#worked-example(
  1,
  "Two conversions and one interval",
  [Convert (a) 37 °C to kelvin, (b) −40 °C to kelvin, and (c) a temperature of 310 K to °C. (d) A body warms from 20 °C to 65 °C: by how many kelvin does it warm?],
  [
    *(a)* $T = 37 + 273 = 310$ K.

    *(b)* $T = -40 + 273 = 233$ K.

    *(c)* $theta = 310 - 273 = 37$ °C.

    *(d)* $Delta T = 65 - 20 = 45$ K — not $45 + 273$. The scale is shifted, not stretched, so a difference is unchanged.

    *Check.* Part (a) is the body temperature of a healthy adult, and 310 K is the value the gas-law questions expect; part (c) returns the same number, which is what a correct conversion must do. For (d), 45 °C on the Celsius scale is the same interval as 45 K because 1 °C and 1 K are the same size — the only difference between the scales is where the zero sits.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "A resistance thermometer with two readings",
  [The resistance of a platinum coil is 20.0 Ω in melting ice and 28.0 Ω in steam. (a) Find the resistance at 60 °C. (b) Find the temperature when the resistance is 25.0 Ω.],
  [
    *(a)* The property changes by $28.0 - 20.0 = 8.0$ Ω over 100 °C, so it changes by 0.080 Ω per °C. At 60 °C: $R = 20.0 + 60 times 0.080 = 24.8$ Ω.

    *(b)* From the calibration formula, $theta = (R - R_0)\/(R_100 - R_0) times 100 = (25.0 - 20.0)\/8.0 times 100 = 62.5$ °C.

    *Check.* 25.0 Ω is five-eighths of the way from 20.0 to 28.0, so the temperature should be five-eighths of the way from 0 to 100 °C — which is 62.5 °C. Both routes give the same answer because the interpolation is linear, and linear interpolation is exactly what the fixed-point definition assumes.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 1.4 Calibrating a Thermometer

The calibration formula is the definition of the Celsius scale written as arithmetic. If a property has the value $X_0$ at the ice point and $X_100$ at the steam point, then a reading $X$ corresponds to

#formula-box("The calibration formula")[
  + *The formula:* $theta = (X - X_0)\/(X_(100) - X_0) times 100$, in °C.

  The bracket is the *fraction of the interval* the property has covered; multiplying by 100 turns that fraction into degrees. Every calibration question in the UTME is this one line, with different letters.
]

The formula assumes the property changes linearly with temperature, and no real property does, exactly. That is why two different thermometers read slightly differently at 50 °C: the mercury thread and the platinum coil are both nearly straight lines, but not the same straight line. For UTME purposes the linear assumption is always intended; the *idea* that it is an assumption is examinable.

#trap-box("A faulty thermometer is still calibrated the same way")[
  A thermometer that reads 2 °C in melting ice and 98 °C in steam is not broken — it is simply mis-scaled, and the calibration formula fixes it. Find the fraction of *its own* interval that the reading represents, then apply that fraction to the true 100 °C. Candidates who subtract 2 from the reading and stop there lose the mark; the fraction is the answer.
]

#worked-example(
  3,
  "Reading an unmarked column",
  [A mercury thermometer has no scale. Its column is 4.0 cm long in melting ice and 24.0 cm long in steam. (a) What temperature corresponds to a column of 14.0 cm? (b) How long is the column at 75 °C?],
  [
    *(a)* $theta = (14.0 - 4.0)\/(24.0 - 4.0) times 100 = 10.0\/20.0 times 100 = 50$ °C.

    *(b)* The column grows by 20.0 cm over 100 °C, so at 75 °C it has grown by $0.75 times 20.0 = 15.0$ cm: length $= 4.0 + 15.0 = 19.0$ cm.

    *Check.* 14.0 cm is exactly half way between 4.0 and 24.0, and 50 °C is exactly half way between the fixed points — the two halves agree. For (b), 19.0 cm is three-quarters of the way along the interval, and 75 °C is three-quarters of the way from 0 to 100 °C. A linear scale is one where “half way along the column” and “half way along the temperature” mean the same thing.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "A thermometer that reads wrongly",
  [A faulty thermometer reads 2 °C in melting ice and 98 °C in steam. (a) What does it read when the true temperature is 50 °C? (b) What is the true temperature when the faulty thermometer reads 50 °C?],
  [
    *(a)* Its scale has only $98 - 2 = 96$ degrees between the fixed points, so each of its degrees is $100\/96$ of a true degree. At a true 50 °C it reads $2 + 50 times (96\/100) = 2 + 48 = 50$ °C.

    *(b)* Now the reading is 50, which is $50 - 2 = 48$ of its degrees above its ice point. The true temperature is $48\/96 times 100 = 50$ °C.

    *Check.* The two answers coincide because 50 °C is the midpoint of the true scale and 50 is also the midpoint of the faulty scale — the errors cancel exactly at the middle and are largest at the ends. That symmetry is worth remembering: a mis-scaled thermometer is most wrong near ice and steam, and least wrong half way between.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 1.5 Choosing a Thermometer

Four instruments cover the syllabus, and the examiner's question is always the same: *which one for this job, and why?* The answer is decided by range, by speed, and by whether the thermometer can touch the thing being measured.

#diagram-fig("diagrams/ch01_thermometers.svg",
  "Four thermometers and the property each one uses. Range and speed, not price, decide which is right for a given measurement.", width: 100%)

#formula-box("The four you must recognise")[
  + *Liquid in glass* — the volume of the liquid. Cheap, direct reading, −10 to 110 °C. Slow, fragile, and it must be immersed.
  + *Thermocouple* — the e.m.f. generated at a junction of two metals. Tiny junction, very fast, −200 to 1600 °C. Needs a reference junction.
  + *Resistance thermometer* — the resistance of a platinum wire. Very precise and stable, −200 to 600 °C. Needs a bridge circuit.
  + *Pyrometer* — the colour and intensity of the radiation from a hot body. No contact, 800 to 3000 °C. Reads only bodies hot enough to glow.
]

The clinical thermometer is a special case worth one paragraph of its own. It is a liquid-in-glass thermometer with a *constriction* just above the bulb, so that when the mercury contracts the thread breaks and the reading stays put until it is shaken down. Its range is deliberately short — about 35 to 42 °C — because a short range means a wide bore, and a wide bore means a magnified scale that can be read to 0.1 °C. Range traded for sensitivity: that sentence is the answer to “why does a clinical thermometer not read to 100 °C?”

#concept-box("Sensitivity, range and responsiveness")[
  + *Sensitivity* is how far the thread moves per degree — a wide bore and a large bulb both increase it.
  + *Range* is the span it can measure. Sensitivity and range pull against each other: the same volume of liquid in a thinner bore travels further but covers less.
  + *Responsiveness* is how quickly it reaches the temperature of its surroundings — a thin bulb and a small bulb both help.
]

#trap-box("The thermometer must be at the temperature of the thing it measures")[
  A thermometer reads its *own* temperature. It reads the temperature of the patient only after it has had time to reach thermal equilibrium, which is why a clinical thermometer is left in place for a minute and why a thermometer dipped into a beaker gives a rising reading for a while before it steadies. The steady reading is the measurement; the moving one is the instrument catching up.
]

#worked-example(
  5,
  "Choosing, and justifying the choice",
  [A student must measure (a) the temperature of a flame, (b) the temperature of a water bath to 0.1 °C, and (c) the temperature of a patient. Name the thermometer for each and give one reason.],
  [
    *(a)* A *thermocouple*, or a pyrometer if the flame is to be left undisturbed. A mercury thermometer would burst long before 1000 °C, and its range ends at about 110 °C.

    *(b)* A *resistance thermometer*. It is the most precise of the four and is unaffected by the way it is held; a mercury thermometer can do the job but reads only to about 0.5 °C.

    *(c)* A *clinical thermometer* — liquid in glass, short range, constriction. The constriction holds the reading after the thermometer is taken out of the mouth, and the short range allows a wide bore and a scale to 0.1 °C.

    *Check.* Each choice is justified by a property, not by habit: range for the flame, precision for the bath, and the constriction for the patient. In the examination a name with no reason is worth half a mark, and a reason with the wrong property is worth none.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: temperature and thermometers.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Temperature is the average kinetic energy of the particles of a body and heat is energy in transit because of a temperature difference — one is a reading and the other is a flow, and they are measured in kelvin and joules. A thermometer works by finding a property that changes steadily with temperature, anchoring it at the two fixed points of pure melting ice and steam over boiling water, and dividing the interval into a hundred equal parts; that is the calibration formula $theta = (X - X_0)\/(X_100 - X_0) times 100$, and every numerical question in the chapter is that one line. The Celsius and kelvin scales are the same size of degree with different zeros, so $T = theta + 273$ and a temperature *difference* needs no conversion at all. Choose the instrument by range and by speed — thermocouple for a flame, resistance thermometer for a bath, clinical thermometer for a patient — and remember that a thermometer always reads its own temperature, so it is right only once it has stopped moving.
  ]
]

== 1.6 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [The temperature of a body is 27 °C. Its temperature on the kelvin scale is], [246 K], [254 K], [300 K], [327 K])
#mcq(2, [A rise in temperature of 25 °C is the same rise as], [25 K], [248 K], [273 K], [298 K])
#mcq(3, [Which of the following is *not* a thermometric property?], [the resistance of a platinum wire], [the length of a mercury column], [the mass of a metal block], [the e.m.f. of a thermocouple])
#mcq(4, [A thermometer reads 4 °C in melting ice and 96 °C in steam. At a true temperature of 50 °C it reads], [46 °C], [48 °C], [50 °C], [52 °C])

#answer-key-grid(("C", "A", "C", "C"))

#answer-notes((
  ("C", [$T = 27 + 273 = 300$ K. The addition is a shift of the zero, not a change of the size of the degree.]),
  ("A", [an interval is unchanged: the scales differ only in where zero is, so a 25 °C rise is a 25 K rise.]),
  ("C", [the mass of a block does not change with temperature. Resistance, length and e.m.f. all do.]),
  ("C", [its interval is 92 degrees for a true 100, so each of its degrees is $100\/92$ of a true degree: $4 + 50 times 92\/100 = 50$ °C. The mid-point of any linear scale is its mid-point, however the scale is marked.]),
))

#chapter-checklist("Before you leave Chapter 1", (
  [Distinguish heat from temperature in one sentence each, and give the unit of each.],
  [Convert °C to K in both directions, and say why a difference needs no conversion.],
  [Name four thermometric properties and the thermometer that uses each.],
  [State both fixed points with their values on both scales.],
  [Use $theta = (X - X_0)\/(X_100 - X_0) times 100$ without being told the formula.],
  [Explain the clinical thermometer's constriction and its short range.],
))

#concept-box("Carry this into Chapter 2")[
  Once a temperature can be measured, the next question is what a body *does* when it warms — and for almost every solid, liquid and gas the answer is that it gets bigger. Chapter 2 turns that into three coefficients, explains why a bimetallic strip bends, and takes the one liquid in the syllabus that refuses the rule: water, which is densest at 4 °C and which floats as ice.
]

#include "drill_ch01.typ"
