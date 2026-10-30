"""Chapter 6 drill bank — thermodynamics and heat engines."""

DRILL_6 = [
    ("The first law of thermodynamics may be written as",
     ["$Delta U = Q + W$, with W the work done by the gas", "$Delta U = Q - W$, with W the work done by the gas", "$Q = W - Delta U$", "$W = Delta U + Q$"], 1,
     "$Delta U = Q - W$ when $W$ is the work done *by* the gas. Heat in raises the internal energy; work out lowers it."),

    ("The internal energy of an ideal gas depends on",
     ["its pressure only", "its volume only", "its temperature only", "its volume and pressure"], 2,
     "An ideal gas has no intermolecular forces, so all its internal energy is kinetic — and that depends only on the kelvin temperature."),

    ("In an isothermal process on an ideal gas",
     ["$Q = 0$", "$W = 0$", "$Delta U = 0$", "$p Delta V = 0$"], 2,
     "The temperature does not change, so the internal energy does not change: $Delta U = 0$, and the first law gives $Q = W$."),

    ("In an adiabatic process",
     ["$Q = 0$", "$W = 0$", "$Delta U = 0$", "$Delta V = 0$"], 0,
     "Adiabatic means no heat enters or leaves. The first law then gives $Delta U = -W$: the gas cools as it does work on its surroundings."),

    ("In an isochoric process",
     ["$Q = 0$", "$W = 0$", "$Delta U = 0$", "$p = 0$"], 1,
     "The volume does not change, so the gas does no work: $W = p Delta V = 0$, and all the heat supplied goes into internal energy."),

    ("The work done by a gas expanding at constant pressure is",
     ["$p \/ Delta V$", "$p Delta V$", "$Delta p V$", "$p + Delta V$"], 1,
     "$W = p Delta V$ at constant pressure, which is the area of the rectangle under an isobaric path on the pV diagram."),

    ("A gas absorbs 800 J of heat and does 300 J of work. The change in its internal energy is",
     ["+1100 J", "+500 J", "−500 J", "−1100 J"], 1,
     "$Delta U = Q - W = 800 - 300 = +500$ J. The gas warms, because more heat came in than work went out."),

    ("A gas absorbs 500 J of heat and does 700 J of work. Its temperature",
     ["rises", "falls", "does not change", "cannot be determined"], 1,
     "$Delta U = 500 - 700 = -200$ J: the gas did more work than the heat supplied, so the difference came out of its internal energy and it cooled."),

    ("A gas at $1.0 times 10^5$ Pa expands from 200 cm³ to 500 cm³ at constant pressure. The work done is",
     ["3.0 J", "30 J", "300 J", "3000 J"], 1,
     "$W = p Delta V = 1.0 times 10^5 times 3.0 times 10^(-4) = 30$ J. The 300 cm³ must be converted to $3.0 times 10^(-4)$ m³."),

    ("On a pV diagram, the work done by a gas in going from one state to another is",
     ["the area under the path", "the area enclosed by the axes", "the slope of the path", "the change in pressure"], 0,
     "The work is the area between the path and the volume axis. Different paths between the same two states give different areas, and therefore different work."),

    ("The same two states are reached by two different paths. Which quantity is the same for both?",
     ["the heat absorbed", "the work done", "the change in internal energy", "the efficiency"], 2,
     "Internal energy is a state function: it depends only on where you are, not on how you got there. Heat and work are path-dependent."),

    ("In a complete cycle, the change in internal energy is",
     ["equal to the work done", "equal to the heat absorbed", "zero", "negative"], 2,
     "The gas returns to its starting state, so $Delta U = 0$ and therefore $Q = W$: the net heat absorbed equals the net work done."),

    ("A heat engine takes in 2000 J and rejects 1500 J per cycle. The work done per cycle is",
     ["500 J", "1500 J", "2000 J", "3500 J"], 0,
     "$W = Q_1 - Q_2 = 2000 - 1500 = 500$ J. The first law applied to a cycle: what goes in either comes out as work or is rejected."),

    ("A heat engine takes in 2000 J and rejects 1500 J. Its efficiency is",
     ["25 %", "33 %", "75 %", "150 %"], 0,
     "$eta = W\/Q_1 = 500\/2000 = 0.25$. Dividing by the rejected heat gives 33 %, which is the standard trap."),

    ("An engine takes in 800 J and rejects 600 J. Its efficiency is",
     ["20 %", "25 %", "33 %", "75 %"], 1,
     "$W = 200$ J and $eta = 200\/800 = 0.25$."),

    ("The efficiency of any real heat engine is",
     ["always 100 %", "always less than 100 %", "sometimes more than 100 %", "independent of the cold sink"], 1,
     "The second law forbids 100 %: some heat must always be rejected to a colder sink. Only an engine with a sink at absolute zero could reach 1."),

    ("A refrigerator is essentially",
     ["a heat engine run backwards", "a machine that destroys heat", "a device that runs without work", "a heat engine with no cold sink"], 0,
     "Work is used to move heat from a cold place to a hot one, which is the reverse of the natural direction. The compressor spoils the work."),

    ("A refrigerator extracts 600 J from its cabinet using 200 J of work. The heat rejected to the room is",
     ["400 J", "600 J", "800 J", "1200 J"], 2,
     "$Q_1 = Q_2 + W = 600 + 200 = 800$ J. The room always receives more heat than the cabinet loses, by exactly the work."),

    ("The coefficient of performance of a refrigerator that extracts 600 J using 200 J of work is",
     ["0.33", "1.0", "2.0", "3.0"], 3,
     "$Q_2\/W = 600\/200 = 3.0$. It exceeds 1 because the machine moves heat rather than creating it."),

    ("An open refrigerator door left open in a closed kitchen will",
     ["cool the kitchen", "warm the kitchen", "leave the kitchen unchanged", "cool the kitchen only if the room is small"], 1,
     "The fridge takes heat from its own cabinet and rejects it into the room, plus the work supplied by the compressor. The net effect is to add heat."),

    ("In an adiabatic expansion of a gas, the temperature",
     ["rises", "falls", "stays the same", "first rises then falls"], 1,
     "The gas does work with no heat coming in, so its internal energy falls: $Delta U = -W$, and a fall in internal energy means a fall in temperature."),

    ("An isothermal expansion of an ideal gas at constant temperature requires",
     ["no heat at all", "heat to be supplied equal to the work done", "heat to be removed", "work to be done on the gas"], 1,
     "$Delta U = 0$, so $Q = W$: the gas does work, and an equal amount of heat must flow in to keep the temperature constant."),

    ("Which of these is *not* a state function?",
     ["internal energy", "temperature", "work", "pressure"], 2,
     "Work depends on the path taken, not only on the end points. Internal energy, temperature and pressure depend only on the state."),

    ("The area enclosed by a closed cycle on a pV diagram represents",
     ["the change in internal energy", "the net work done in one cycle", "the heat rejected", "the change in entropy"], 1,
     "Going round a cycle, the net work done by the gas is the enclosed area — clockwise for an engine, anticlockwise for a refrigerator."),

    ("A steam engine takes in 5000 J of heat and rejects 4000 J per cycle. Its efficiency is",
     ["10 %", "20 %", "25 %", "80 %"], 1,
     "$W = 1000$ J and $eta = 1000\/5000 = 0.20$. Note that 20 % of the heat supplied is the useful work, and 80 % is rejected."),

    ("The internal energy of a gas can be increased by",
     ["doing work on it", "letting it expand freely", "removing heat from it", "reducing its temperature"], 0,
     "$Delta U = Q - W$: compressing the gas does work *on* it, so $W$ is negative and $Delta U$ positive — the gas warms, as it does in a bicycle pump."),

    ("A gas is compressed quickly and insulated from its surroundings. During the compression",
     ["heat flows out and the temperature falls", "no heat flows and the temperature rises", "heat flows in and the temperature is unchanged", "the internal energy falls"], 1,
     "Fast compression is adiabatic: $Q = 0$, and since work is done *on* the gas, $Delta U = -W$ is positive and the temperature rises."),

    ("Which process has the greatest work done for the same expansion between the same two volumes?",
     ["isochoric", "isothermal from a given pressure", "isobaric", "adiabatic"], 2,
     "At constant pressure the work is $p Delta V$, the full rectangle under the path. The other paths fall away from that rectangle, so the area — and the work — is smaller."),

    ("For a gas taken round a cycle, the net heat absorbed is",
     ["zero", "equal to the net work done", "greater than the net work", "less than the net work"], 1,
     'With $Delta U = 0$ over a cycle, the first law gives $Q_"net" = W_"net"$ exactly.'),

    ("The second law of thermodynamics says that heat",
     ["can flow from cold to hot without work", "flows spontaneously from hot to cold", "is conserved in all processes", "can be completely converted to work"], 1,
     "Spontaneous flow is hot to cold. Forcing it the other way takes work — which is the whole point of the refrigerator."),

    ("In the expression $eta = 1 - Q_2\/Q_1$, making $Q_2$ smaller while keeping $Q_1$ fixed",
     ["raises the efficiency", "lowers the efficiency", "leaves it unchanged", "makes it greater than 1"], 0,
     "A smaller rejected heat means more of the input becomes work, so the efficiency rises — but $Q_2$ can never reach zero, which is why 100 % is impossible."),

    ("A diesel engine and a petrol engine differ mainly in",
     ["the first law they obey", "where and how the heat is added", "whether they reject heat", "whether work is done"], 1,
     "Both obey the same first and second laws and both reject heat. They differ in the sequence of processes and in how the fuel is ignited."),

    ("A gas expands at constant temperature from 200 cm³ to 400 cm³ at $1.0 times 10^5$ Pa. The work done",
     ["is zero because the temperature is constant", "is 20 J", "is 2000 J", "cannot be found without the final pressure"], 0,
     "Careful — this one is a reading test. The temperature is constant, but the pressure is *not*; $p$ falls as $V$ rises, so $W = p Delta V$ does not apply and the simple product overestimates. For an isothermal change the work is $p_1 V_1 ln(V_2\/V_1) = 1.0 times 10^5 times 2.0 times 10^(-4) times ln 2 = 14$ J."),

    ("A gas does 200 J of work while 200 J of heat is removed from it. Its internal energy",
     ["rises by 400 J", "falls by 400 J", "falls by 200 J", "does not change"], 1,
     "$Delta U = Q - W = -200 - 200 = -400$ J. Both terms lower the internal energy, so they add."),

    ("An ideal gas is taken from state A to state B twice, once isothermally and once adiabatically, with the same starting state. In the adiabatic path the final temperature is",
     ["higher", "lower", "the same", "zero"], 1,
     "The adiabatic expansion does work with no heat input, so it cools below the isothermal temperature. That is why the adiabatic curve on the pV diagram lies below the isothermal."),

    ("The work done *on* a gas during an isochoric process is",
     ["$p Delta V$", "zero", "negative", "$n R T$"], 1,
     "There is no change in volume, so no work is done in either direction: $W = 0$ and $Q = Delta U$."),

    ("In one cycle an engine does 300 J of net work and absorbs 900 J of heat. Its efficiency is",
     ["11 %", "33 %", "67 %", "300 %"], 1,
     "$eta = W\/Q_1 = 300\/900 = 0.33$. The 900 J is the heat *absorbed*, not the net heat."),

    ("The internal energy of a fixed mass of ideal gas is doubled. Its temperature",
     ["is halved", "is unchanged", "is doubled", "is quadrupled"], 2,
     "For an ideal gas the internal energy is proportional to the kelvin temperature, so doubling one doubles the other."),

    ("Which statement about heat and work is correct?",
     ["both are state functions", "neither is a state function", "heat is a state function and work is not", "work is a state function and heat is not"], 1,
     "Both depend on the path between two states. Only the internal energy — and the other state variables — depend on the state alone."),

    ("A gas at 300 K absorbs 1000 J and does 400 J of work. If its mass is fixed and the process is isobaric, the final temperature is",
     ["greater than 300 K", "less than 300 K", "300 K", "cannot be determined"], 0,
     "$Delta U = 1000 - 400 = +600$ J is positive, so the internal energy has risen and the temperature with it. An isobaric heating always warms the gas."),
]
