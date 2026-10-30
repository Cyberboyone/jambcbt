"""Chapter 1 drill bank — temperature and thermometers.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
The solution names the concept and shows the working, so that a wrong answer
can be traced to a section of the chapter rather than to "carelessness".
"""

DRILL_1 = [
    ("The temperature of a body is 27 °C. On the kelvin scale this is",
     ["246 K", "254 K", "300 K", "327 K"], 2,
     "$T = theta + 273 = 27 + 273 = 300$ K. The kelvin scale is the Celsius scale with its zero moved, not stretched."),

    ("A temperature of −40 °C is, in kelvin,",
     ["233 K", "313 K", "40 K", "0 K"], 0,
     "$T = -40 + 273 = 233$ K. A negative Celsius reading is perfectly normal; a negative kelvin reading is not, so any answer below 0 K is a slip."),

    ("The temperature 373 K on the Celsius scale is",
     ["0 °C", "100 °C", "273 °C", "646 °C"], 1,
     "$theta = T - 273 = 373 - 273 = 100$ °C, which is the steam point — the upper fixed point of every thermometer."),

    ("A body warms from 20 °C to 45 °C. The rise in temperature is",
     ["25 °C, which is 298 K", "25 K", "45 K", "298 K"], 1,
     "The scales differ only in where zero sits, so an interval is unchanged: a 25 °C rise is a 25 K rise. Adding 273 to a difference is the commonest error in the chapter."),

    ("Which statement about heat and temperature is correct?",
     ["heat is measured in degrees and temperature in joules",
      "temperature is the total energy of a body and heat is its average",
      "heat is energy in transit because of a temperature difference, and temperature measures the average kinetic energy of the particles",
      "two bodies at the same temperature always contain the same amount of heat"], 2,
     "Temperature is a state: the average kinetic energy of the particles. Heat is a process: energy that flows because of a temperature difference. They have different units — kelvin and joule."),

    ("The unit of heat in the SI system is the",
     ["kelvin", "joule", "degree", "watt"], 1,
     "Heat is energy, so its unit is the joule. The kelvin measures temperature; the watt measures the *rate* at which heat is transferred."),

    ("A physical property that changes steadily and reproducibly with temperature is called",
     ["a fixed point", "a thermometric property", "an absolute scale", "a thermal equilibrium"], 1,
     "That is the definition of a thermometric property: the volume of a liquid, the resistance of a wire, the e.m.f. of a thermocouple, or the colour of a hot body."),

    ("Which of the following is *not* a thermometric property?",
     ["the e.m.f. of a thermocouple", "the resistance of a platinum wire", "the length of a mercury column", "the mass of a copper block"], 3,
     "The mass of a block does not change when it is warmed. The other three all change with temperature and are used in real thermometers."),

    ("The two fixed points on the Celsius scale are",
     ["0 °C and 100 °C", "0 °C and 273 °C", "32 °C and 212 °C", "−273 °C and 0 °C"], 0,
     "The lower fixed point is the temperature of pure melting ice (0 °C) and the upper is the temperature of steam above boiling water (100 °C), both at standard atmospheric pressure."),

    ("The lower fixed point of a thermometer is the temperature of",
     ["pure melting ice at standard atmospheric pressure", "boiling water at any pressure", "a mixture of ice and salt", "absolute zero"], 0,
     "The lower fixed point is pure melting ice at standard pressure. Ice and salt is a freezing mixture whose temperature depends on the proportions — useful for cooling, useless as a fixed point."),

    ("The upper fixed point of a thermometer is the temperature of",
     ["steam above boiling water at standard atmospheric pressure", "a candle flame", "a red-hot iron bar", "boiling water at any pressure"], 0,
     "Steam at standard pressure is 100 °C. Boiling water at reduced pressure is cooler, and at increased pressure it is hotter, which is why the pressure is part of the definition."),

    ("Absolute zero on the Celsius scale is",
     ["−100 °C", "−273 °C", "0 °C", "−373 °C"], 1,
     "Absolute zero is −273 °C = 0 K, the temperature at which a body has the least kinetic energy its particles can have."),

    ("A mercury thermometer has a column 4.0 cm long in melting ice and 24.0 cm long in steam. At a column length of 9.0 cm the temperature is",
     ["5 °C", "25 °C", "37.5 °C", "45 °C"], 1,
     "$theta = (9.0 - 4.0)\/(24.0 - 4.0) times 100 = 5\/20 times 100 = 25$ °C. The bracket is the fraction of the fixed interval the column has covered."),

    ("A thermometer reads 5.0 cm in melting ice and 25.0 cm in steam. At 75 °C its column is",
     ["15.0 cm", "18.75 cm", "20.0 cm", "22.5 cm"], 2,
     "The column grows by 20.0 cm over 100 °C, so at 75 °C it has grown by $0.75 times 20.0 = 15.0$ cm: $5.0 + 15.0 = 20.0$ cm. Note that the *growth* is three-quarters of the interval, not the whole length."),

    ("The constriction in a clinical thermometer is there to",
     ["make the thermometer more sensitive", "hold the reading after the thermometer is removed", "shorten the range", "make the mercury expand faster"], 1,
     "The constriction breaks the thread as the mercury contracts, so the column stays where the patient's temperature left it until the thermometer is shaken down."),

    ("A clinical thermometer is designed to cover about",
     ["0 to 100 °C", "20 to 50 °C", "35 to 42 °C", "0 to 50 °C"], 2,
     "The human body stays between about 35 and 42 °C. A short range allows a wide bore, and a wide bore allows the scale to be read to 0.1 °C — sensitivity bought with range."),

    ("The temperature of a flame is best measured with",
     ["a mercury-in-glass thermometer", "an alcohol-in-glass thermometer", "a thermocouple", "a clinical thermometer"], 2,
     "A thermocouple has a tiny junction, responds in milliseconds and works to about 1600 °C. Any liquid-in-glass thermometer would burst in a flame."),

    ("The temperature of a furnace at 1500 °C, without touching it, is measured with",
     ["a resistance thermometer", "a pyrometer", "a clinical thermometer", "a mercury barometer"], 1,
     "A pyrometer reads the colour and intensity of the radiation from the hot body, so it needs no contact. Resistance thermometers stop at a few hundred degrees."),

    ("The most precise of the four thermometers in the syllabus is the",
     ["liquid-in-glass thermometer", "thermocouple", "resistance thermometer", "pyrometer"], 2,
     "The platinum resistance thermometer is the most precise and the most stable, which is why it is used as a laboratory standard. It needs a bridge circuit to read it."),

    ("The sensitivity of a liquid-in-glass thermometer is increased by",
     ["using a thicker bulb and a wider bore", "using a thinner bore and a larger bulb", "shortening the scale", "using a liquid that expands less"], 1,
     "Sensitivity is the length of thread movement per degree. A larger bulb holds more liquid, so the expansion is larger; a thinner bore turns that expansion into a longer movement."),

    ("Mercury is preferred to water in a thermometer because mercury",
     ["expands uniformly, does not wet the glass and is opaque", "boils at 100 °C", "expands anomalously", "freezes at 0 °C"], 0,
     "Mercury expands almost uniformly, does not wet glass, and its silvery thread is easy to see. Water wets the glass, expands irregularly, and is invisible in a thin tube."),

    ("Water is unsuitable as a thermometric liquid because it",
     ["expands too much", "has an anomalous expansion between 0 °C and 4 °C and wets glass", "boils at too high a temperature", "does not conduct heat"], 1,
     "Between 0 and 4 °C water contracts as it warms, so the same thermometer reading would correspond to two different temperatures. It also wets the glass and is transparent."),

    ("A faulty thermometer reads 2 °C in melting ice and 98 °C in steam. At a true temperature of 50 °C it reads",
     ["46 °C", "48 °C", "50 °C", "52 °C"], 2,
     "Its interval is 96 degrees for a true 100, so each of its degrees is $100\/96$ of a true degree: $2 + 50 times 96\/100 = 50$ °C. The midpoint of a linear scale maps to the midpoint of the true scale."),

    ("A faulty thermometer reads 5 °C in melting ice and 95 °C in steam. When it reads 32 °C, the true temperature is",
     ["27 °C", "30 °C", "32 °C", "35 °C"], 1,
     "$theta = (32 - 5)\/(95 - 5) times 100 = 27\/90 times 100 = 30$ °C. Apply *its* fraction to the true interval; subtracting 5 alone is only half the job."),

    ("A temperature of 300 K on the Celsius scale is",
     ["17 °C", "27 °C", "37 °C", "73 °C"], 1,
     "$theta = 300 - 273 = 27$ °C. Subtracting 273 is the conversion in this direction."),

    ("Which scale has no negative values?",
     ["the Celsius scale", "the kelvin scale", "the Fahrenheit scale", "none of them"], 1,
     "The kelvin scale starts at absolute zero, so every temperature in this syllabus is a positive number of kelvin. Celsius values below 0 °C are simply the same temperatures measured from the ice point."),

    ("Two different thermometers disagree slightly when both are placed in a bath at 50 °C. The reason is that",
     ["one of them is broken", "their thermometric properties are not perfectly linear", "50 °C is not a real temperature", "they were not left in long enough to reach equilibrium"], 1,
     "Every calibration assumes the property is a straight line with temperature. Mercury and platinum are both close to linear, but not identical, so the readings diverge except at the fixed points."),

    ("A thermometer gives a steady reading only when it has",
     ["been shaken", "reached thermal equilibrium with its surroundings", "been placed in the hottest part of the liquid", "been calibrated"], 1,
     "A thermometer reads its own temperature. It agrees with the body only after heat has stopped flowing between them — that state is thermal equilibrium."),

    ("The resistance of a coil is 10 Ω in melting ice and 30 Ω in steam. At 22 Ω the temperature is",
     ["40 °C", "50 °C", "60 °C", "70 °C"], 2,
     "$theta = (22 - 10)\/(30 - 10) times 100 = 12\/20 times 100 = 60$ °C. The resistance has covered 12 of its 20 ohms, which is 60 % of the interval."),

    ("The e.m.f. of a thermocouple is 0.20 mV at the ice point and 5.20 mV at the steam point. An e.m.f. of 2.70 mV corresponds to",
     ["40 °C", "50 °C", "60 °C", "75 °C"], 1,
     "$theta = (2.70 - 0.20)\/(5.20 - 0.20) times 100 = 2.50\/5.00 times 100 = 50$ °C. Half the e.m.f. interval, half the temperature interval."),

    ("Absolute zero is the temperature at which",
     ["water freezes", "the particles have the least kinetic energy they can have", "all gases become liquids", "mercury solidifies"], 1,
     "Absolute zero is 0 K = −273 °C, where the particles have the minimum kinetic energy. It is not the temperature at which anything in particular freezes."),

    ("Temperature is best described as",
     ["the total internal energy of a body", "the average kinetic energy of the particles of a body", "the amount of heat a body contains", "the rate at which a body loses heat"], 1,
     "Temperature is per particle, not in total. The total internal energy also depends on how many particles there are and what they are — which is heat capacity, not temperature."),

    ("Heat flows spontaneously",
     ["from a colder body to a hotter one", "from a hotter body to a colder one", "in either direction at equal rates", "only through solids"], 1,
     "The second law in one line: heat flows from hot to cold on its own. Forcing it the other way needs work, which is what a refrigerator does in Chapter 6."),

    ("Normal body temperature, 37 °C, in kelvin is",
     ["236 K", "310 K", "346 K", "273 K"], 1,
     "$T = 37 + 273 = 310$ K. This value reappears in the gas-law questions as a typical room-or-body temperature."),

    ("A temperature difference of 100 K is the same as a difference of",
     ["100 °C", "273 °C", "373 °C", "0 °C"], 0,
     "Intervals are identical on the two scales. Only the *zero* differs, so a 100 K rise is a 100 °C rise."),

    ("Which pair of readings represents the same temperature?",
     ["0 °C and 0 K", "100 °C and 273 K", "0 °C and 273 K", "27 °C and 300 °C"], 2,
     "$0 + 273 = 273$ K, so 0 °C and 273 K are the same temperature. The other pairs are all 100 K or 273 K apart."),

    ("The steam point on the kelvin scale is",
     ["273 K", "310 K", "373 K", "473 K"], 2,
     "100 °C corresponds to $100 + 273 = 373$ K. Together with the ice point at 273 K it fixes the kelvin scale's interval."),

    ("A liquid-in-glass thermometer reads 20 °C. Its bulb is then placed in a beaker of warm water and the reading rises steadily. The reading is correct",
     ["as soon as the bulb touches the water", "when the thread stops moving", "after exactly one minute", "only at the top of the scale"], 1,
     "The thread stops moving when the thermometer and the water are at the same temperature — thermal equilibrium. Any earlier reading is the thermometer's own temperature, not the water's."),

    ("A thermometer is marked in kelvin and reads 250 K. On the Celsius scale this is",
     ["−23 °C", "−523 °C", "23 °C", "523 °C"], 0,
     "$theta = 250 - 273 = -23$ °C. A kelvin reading below 273 always gives a negative Celsius temperature, and that is a perfectly ordinary winter night."),

    ("The reason a thermometer bulb is made of thin glass is that",
     ["thin glass expands more", "heat reaches the liquid quickly, so the reading settles fast", "it makes the scale easier to read", "it prevents the liquid from freezing"], 1,
     "Responsiveness depends on how fast heat can get in. Thin glass conducts heat to the liquid quickly, so the reading settles in seconds instead of minutes."),
]
