"""Chapter 1 paper bank — temperature and thermometers (items for the mocks and the master bank)."""

PAPER_1 = [
    ("Heat is best defined as",
     ["the average kinetic energy of the particles of a body", "energy in transit because of a temperature difference", "the total internal energy of a body", "the degree of hotness of a body"], 1,
     "Heat is a *process*: energy that flows because of a temperature difference. The other three describe states or totals."),

    ("The temperature of a body is a measure of",
     ["the total energy of its particles", "the average kinetic energy of its particles", "the heat it contains", "the work it can do"], 1,
     "Temperature is per particle. A bath of warm water and a red-hot nail can be the same temperature with very different total energies."),

    ("Convert 127 °C to kelvin.",
     ["146 K", "254 K", "300 K", "400 K"], 3,
     "$T = 127 + 273 = 400$ K."),

    ("Convert 350 K to degrees Celsius.",
     ["77 °C", "127 °C", "350 °C", "623 °C"], 0,
     "$theta = 350 - 273 = 77$ °C."),

    ("A temperature falls from 80 °C to 30 °C. The fall on the kelvin scale is",
     ["50 K", "223 K", "273 K", "323 K"], 0,
     "A temperature *difference* is unchanged between the scales, so 50 °C = 50 K."),

    ("The lower fixed point of the Celsius scale is the temperature of",
     ["pure melting ice at standard pressure", "boiling water at any pressure", "a freezing mixture of ice and salt", "absolute zero"], 0,
     "Pure melting ice at standard atmospheric pressure is 0 °C — the anchor of every calibration."),

    ("The upper fixed point of the Celsius scale is",
     ["100 °C, the temperature of steam over boiling water at standard pressure", "100 °C at any pressure", "the boiling point of alcohol", "the melting point of lead"], 0,
     "The pressure is part of the definition: steam at standard pressure, not boiling water on a mountain."),

    ("On the kelvin scale, the ice point and the steam point are",
     ["0 K and 100 K", "173 K and 273 K", "273 K and 373 K", "273 K and 473 K"], 2,
     "0 °C = 273 K and 100 °C = 373 K; the interval is 100 K, the same size as 100 °C."),

    ("Which of the following is a thermometric property?",
     ["the mass of a metal block", "the pressure of a gas at constant volume", "the colour of a cold body", "the weight of a thermometer"], 1,
     "The pressure of a fixed mass of gas at constant volume rises steadily with temperature — that is the gas thermometer."),

    ("A thermometer's sensitivity can be increased by",
     ["making the bore wider", "making the bore narrower", "shortening the bulb", "using a liquid that expands less"], 1,
     "A narrow bore turns a small volume change into a long movement of the thread, so each degree moves it further."),

    ("A clinical thermometer has a short range so that",
     ["it can be made cheaply", "its bore can be wide, giving a magnified scale", "it can measure boiling water", "it can be sterilised"], 1,
     "A short range allows a wide bore and a large scale spacing, so 0.1 °C can be read. Sensitivity is bought with range."),

    ("The constriction in a clinical thermometer",
     ["increases the range", "prevents the mercury from returning until it is shaken", "makes the mercury expand faster", "reduces the sensitivity"], 1,
     "The thread breaks at the constriction when the mercury contracts, so the reading is held until the thermometer is shaken down."),

    ("The best thermometer for measuring the temperature inside a furnace at 1200 °C is",
     ["a mercury thermometer", "an alcohol thermometer", "a thermocouple", "a clinical thermometer"], 2,
     "A thermocouple works to about 1600 °C and has a tiny junction, so it can be inserted without disturbing the furnace."),

    ("The temperature of a star is measured using",
     ["a mercury thermometer", "a thermocouple", "a pyrometer", "a resistance thermometer"], 2,
     "A pyrometer reads the radiation from a hot body without touching it — the only option across astronomical distances."),

    ("A resistance thermometer works on the change of",
     ["volume of a liquid", "pressure of a gas", "resistance of a wire with temperature", "colour of a body"], 2,
     "The resistance of a platinum coil rises reproducibly with temperature, which makes it the most precise of the four."),

    ("A platinum coil reads 8.0 Ω in melting ice and 12.0 Ω in steam. At 10.0 Ω the temperature is",
     ["40 °C", "50 °C", "60 °C", "80 °C"], 1,
     "$theta = (10.0 - 8.0)\/(12.0 - 8.0) times 100 = 2\/4 times 100 = 50$ °C."),

    ("A mercury column is 3.0 cm in melting ice and 18.0 cm in steam. At 60 °C the column is",
     ["9.0 cm", "12.0 cm", "13.5 cm", "15.0 cm"], 1,
     "It grows by 15.0 cm over 100 °C, so at 60 °C it has grown by $0.60 times 15.0 = 9.0$ cm: $3.0 + 9.0 = 12.0$ cm."),

    ("A faulty thermometer reads 1 °C in melting ice and 99 °C in steam. When the true temperature is 40 °C, its reading is",
     ["38.8 °C", "39.2 °C", "40.0 °C", "40.2 °C"], 3,
     "Its two fixed points are 1 and 99, an interval of 98 of its degrees for a true 100, so 40 true degrees are $40 times 98\/100 = 39.2$ of its degrees above 1: reading $= 40.2$ °C. The reading is too high in the upper half because its scale is compressed."),

    ("Which statement about a thermometer in use is correct?",
     ["it reads the temperature of its surroundings immediately", "it reads its own temperature", "it reads the temperature of the hottest part of the liquid", "it reads the average of the liquid and the room"], 1,
     "A thermometer always reads its own temperature, and agrees with the body only once thermal equilibrium is reached."),

    ("A thermometer is dipped into warm water and the reading rises steadily. The reading is correct",
     ["immediately", "when the thread stops moving", "after exactly one minute", "at the first visible rise"], 1,
     "The thread stops when the thermometer and the water are at the same temperature."),

    ("Absolute zero is",
     ["0 °C", "−273 °C", "273 °C", "−373 °C"], 1,
     "Absolute zero is 0 K = −273 °C, the least kinetic energy the particles can have."),

    ("Which temperature is impossible?",
     ["−200 °C", "0 K", "−300 °C", "1 K"], 2,
     "Nothing is colder than 0 K = −273 °C, so −300 °C cannot exist."),

    ("Two bodies are in thermal equilibrium. Which statement is true?",
     ["they contain equal amounts of heat", "they are at the same temperature", "they are made of the same material", "they have the same mass"], 1,
     "Thermal equilibrium means no net heat flows between them, which is precisely the condition of equal temperature."),

    ("The energy needed to raise 1 kg of a substance by 1 K is its",
     ["heat capacity", "specific heat capacity", "latent heat", "internal energy"], 1,
     "Per kilogram, the quantity is the specific heat capacity, in J kg⁻¹ K⁻¹. Heat capacity is the whole body's figure."),

    ("The calorie is defined as the heat needed to raise the temperature of",
     ["1 kg of water by 1 K", "1 g of water by 1 °C", "1 kg of any substance by 1 K", "1 g of ice by 1 K"], 1,
     "One calorie raises 1 g of water through 1 °C, and 1 cal = 4.2 J."),

    ("Two thermometers using different liquids read slightly differently in the same bath because",
     ["one is faulty", "the liquids have different expansion laws", "the bath is not in equilibrium", "the scales are in different units"], 1,
     "Each liquid's expansion is nearly, but not exactly, linear, so the two scales disagree between the fixed points."),

    ("A resistance thermometer is preferred to mercury for precision because",
     ["it is cheaper", "its property varies precisely and reproducibly with temperature", "it is smaller", "it can be read without calibration"], 1,
     "Platinum resistance varies smoothly and reproducibly, so the instrument can be read to a small fraction of a degree."),

    ("At what temperature do the Celsius and kelvin readings differ by 273?",
     ["at every temperature", "only at 0 °C", "only at 100 °C", "never"], 0,
     "$T = theta + 273$ always, so the two readings always differ by exactly 273."),

    ("The average kinetic energy of the particles of a body is proportional to",
     ["its internal energy", "its temperature on the absolute scale", "its mass", "its volume"], 1,
     "Temperature on the kelvin scale is a direct measure of the average kinetic energy of the particles."),

    ("A mercury thermometer placed in a flame would burst because",
     ["mercury boils below 100 °C", "the flame is above the thermometer's range", "mercury contracts in a flame", "the glass melts before the mercury expands"], 1,
     "The range of a liquid-in-glass thermometer ends where the liquid boils; a flame is far beyond it."),

    ("Which pair of readings could come from the same thermometer?",
     ["0 °C and 100 K", "100 °C and 373 K", "100 °C and 273 K", "37 °C and 37 K"], 1,
     "$100 + 273 = 373$, so 100 °C and 373 K are the same temperature."),

    ("The reason a gas thermometer is used as a standard is that",
     ["all gases behave alike at low pressure", "gases are cheap", "gases do not expand", "gases have no fixed points"], 0,
     "At low pressure every gas has the same expansion coefficient, 1/273, so the reading does not depend on which gas is used."),

    ("A body warms from 17 °C to 47 °C. The rise in kelvin is",
     ["30 K", "236 K", "273 K", "303 K"], 0,
     "A difference of 30 °C is a difference of 30 K."),

    ("The temperature of a healthy adult, 37 °C, in kelvin is",
     ["236 K", "310 K", "346 K", "273 K"], 1,
     "$37 + 273 = 310$ K."),

    ("Which instrument would you choose to measure the temperature of a water bath to 0.05 °C?",
     ["a clinical thermometer", "a platinum resistance thermometer", "a pyrometer", "a mercury thermometer graduated in 1 °C"], 1,
     "The resistance thermometer is the most precise of the four in the syllabus."),

    ("Heat flows spontaneously only when",
     ["two bodies have equal temperatures", "there is a temperature difference between them", "one body is heavier", "the bodies are in contact with a flame"], 1,
     "A temperature difference is the only requirement; the flow continues until equilibrium."),

    ("A liquid-in-glass thermometer has a bulb of thin glass so that",
     ["it is cheaper", "heat reaches the liquid quickly", "it does not break", "the liquid expands more"], 1,
     "Responsiveness depends on the rate at which heat reaches the liquid, and thin glass conducts it quickly."),

    ("The interval between the fixed points on the Celsius scale is divided into",
     ["10 equal parts", "100 equal parts", "180 equal parts", "273 equal parts"], 1,
     "100 equal degrees between the ice and steam points — hence the name centigrade."),

    ("Water would be a poor thermometric liquid because it",
     ["expands too little", "has an anomalous expansion, wets glass and is colourless", "freezes at too low a temperature", "conducts heat too well"], 1,
     "Between 0 °C and 4 °C it contracts, it wets glass, and its thread cannot be seen."),

    ("A thermometer reads 20 °C in a room and is then placed in a beaker of water at 60 °C. Its reading",
     ["jumps instantly to 60 °C", "rises gradually and settles at 60 °C", "settles below 60 °C because glass insulates it", "rises to 60 °C and then falls"], 1,
     "The thermometer must absorb heat before its own temperature reaches the water's; the reading climbs and settles."),
]
