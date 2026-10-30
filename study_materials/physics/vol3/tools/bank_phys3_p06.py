"""Chapter 6 paper bank — thermodynamics and heat engines."""

PAPER_6 = [
    ("The first law of thermodynamics is a statement of",
     ["the conservation of energy", "the conservation of momentum", "the second law", "the zeroth law"], 0,
     "$Delta U = Q - W$ simply accounts for every joule: heat in, work out, and the change in internal energy."),

    ("In the expression $Delta U = Q - W$, the symbol $W$ stands for",
     ["the work done by the gas", "the work done on the gas", "the weight of the gas", "the heat lost"], 0,
     "With this sign convention $W$ is positive when the gas does work on its surroundings — for example by expanding."),

    ("In an isothermal process on an ideal gas, the change in internal energy is",
     ["positive", "negative", "zero", "equal to the heat supplied"], 2,
     "For an ideal gas $U$ depends on $T$ alone, so at constant $T$ the internal energy does not change."),

    ("In an isothermal expansion of an ideal gas, the heat supplied",
     ["is zero", "equals the work done by the gas", "is less than the work done", "raises the temperature"], 1,
     "$Delta U = 0$, so $Q = W$ — all the heat becomes work."),

    ("In an adiabatic process",
     ["no heat enters or leaves the system", "the temperature is constant", "the pressure is constant", "the volume is constant"], 0,
     "Adiabatic means $Q = 0$, so $Delta U = -W$."),

    ("A gas expands adiabatically. Its temperature",
     ["rises", "falls", "stays the same", "first rises then falls"], 1,
     "The gas does work at the expense of its internal energy, so it cools — the principle of the diesel engine."),

    ("A gas is compressed adiabatically. Its temperature",
     ["rises", "falls", "stays the same", "is unchanged if the compression is slow"], 0,
     "Work is done on the gas and no heat escapes, so the internal energy and the temperature rise."),

    ("In an isochoric (constant-volume) process, the work done by the gas is",
     ["equal to the heat supplied", "zero", "equal to the change in internal energy", "negative"], 1,
     "$W = p Delta V = 0$ when $Delta V = 0$, so $Delta U = Q$."),

    ("In an isobaric process, the work done by a gas at pressure $p$ is",
     ["$p \/ Delta V$", "$p Delta V$", "$Delta p V$", "zero"], 1,
     "For constant pressure, $W = p Delta V$."),

    ("A gas at 1.0 × 10⁵ Pa expands from 200 cm³ to 500 cm³ at constant pressure. The work done is",
     ["3.0 J", "30 J", "300 J", "3.0 kJ"], 1,
     "$W = p Delta V = 1.0 times 10^5 times 300 times 10^(-6) = 30$ J."),

    ("600 J of heat is supplied to a gas which does 250 J of work. The change in internal energy is",
     ["−350 J", "350 J", "850 J", "150 J"], 1,
     "$Delta U = Q - W = 600 - 250 = 350$ J."),

    ("A gas does 400 J of work while 150 J of heat leaves it. The change in internal energy is",
     ["−550 J", "−250 J", "250 J", "550 J"], 0,
     "$Delta U = Q - W = -150 - 400 = -550$ J: the internal energy falls by 550 J."),

    ("Work is done *on* a gas, 300 J, with no heat exchange. The internal energy",
     ["falls by 300 J", "rises by 300 J", "does not change", "rises by 150 J"], 1,
     "With $W$ defined as work done *by* the gas, $W = -300$ J and $Q = 0$, so $Delta U = +300$ J."),

    ("The internal energy of an ideal gas depends on",
     ["pressure alone", "volume alone", "temperature alone", "pressure and volume independently"], 2,
     "The kinetic energy of the molecules, and hence $U$, is fixed by the temperature."),

    ("In a complete cycle, the change in internal energy of the working substance is",
     ["equal to the net work done", "equal to the net heat absorbed", "zero", "negative"], 2,
     "The state returns to its starting point, so every state function returns to its starting value."),

    ("For a complete cycle, the net heat absorbed equals",
     ["zero", "the net work done by the gas", "the change in internal energy", "the heat rejected"], 1,
     'Since $Delta U = 0$ over the cycle, $Q_"net" = W_"net"$.'),

    ("A heat engine takes 2000 J from the hot reservoir and rejects 1500 J to the cold sink. The work output is",
     ["500 J", "1500 J", "2000 J", "3500 J"], 0,
     "$W = Q_1 - Q_2 = 2000 - 1500 = 500$ J."),

    ("For that engine, the efficiency is",
     ["25 %", "33 %", "75 %", "80 %"], 0,
     "$eta = W \/ Q_1 = 500 \/ 2000 = 0.25$, so 25 %."),

    ("An engine has an efficiency of 40 % and takes 5.0 kJ per cycle. The work done per cycle is",
     ["200 J", "2.0 kJ", "12.5 kJ", "0.4 J"], 1,
     "$W = eta Q_1 = 0.40 times 5000 = 2000$ J."),

    ("The efficiency of a heat engine can never be 100 % because",
     ["some heat must always be rejected to a cold sink", "friction cannot be removed", "fuel is impure", "the gas is not ideal"], 0,
     "The second law forbids converting all the heat into work in a cyclic engine."),

    ("A Carnot engine works between 500 K and 300 K. Its efficiency is",
     ["20 %", "40 %", "60 %", "80 %"], 1,
     "$eta = 1 - T_2 \/ T_1 = 1 - 300 \/ 500 = 0.40$, so 40 %."),

    ("A Carnot engine works between 600 K and 300 K. Its efficiency is",
     ["30 %", "50 %", "60 %", "100 %"], 1,
     "$eta = 1 - 300 \/ 600 = 0.50$."),

    ("The efficiency of a Carnot engine can be raised by",
     ["lowering the sink temperature or raising the source temperature", "raising the sink temperature", "using a better gas only", "reducing the work output"], 0,
     "$eta = 1 - T_2 \/ T_1$, so a bigger gap between the reservoirs gives a bigger efficiency."),

    ("A Carnot engine working between 327 °C and 27 °C has an efficiency of",
     ["25 %", "50 %", "75 %", "91 %"], 1,
     "$T_1 = 600$ K and $T_2 = 300$ K, so $eta = 1 - 0.5 = 0.50$."),

    ("The coefficient of performance of a refrigerator is defined as",
     ["$Q_1 \/ W$", "$Q_2 \/ W$", "$W \/ Q_1$", "$Q_1 \/ Q_2$"], 1,
     "It compares the heat removed from the cold space with the work supplied to the pump."),

    ("A refrigerator extracts 600 J from its cold compartment using 200 J of work. Its coefficient of performance is",
     ["2.0", "3.0", "4.0", "0.33"], 1,
     "$Q_1 = 600 + 200 = 800$ J is rejected, and the CoP is $Q_2 \/ W = 600 \/ 200 = 3.0$."),

    ("A heat pump and a refrigerator are the same machine differing only in",
     ["the working fluid", "which side is wanted", "the sign of the work", "the pressures used"], 1,
     "The refrigerator wants the heat removed; the heat pump wants the heat delivered."),

    ("The second law of thermodynamics says that heat cannot",
     ["flow from cold to hot without work being done", "flow from hot to cold", "be converted to work at all", "be measured"], 0,
     "It can flow from cold to hot, but only when a pump does work — which is exactly what a refrigerator does."),

    ("A consequence of the second law is that",
     ["the total entropy of an isolated system never decreases", "energy is not conserved", "engines cannot work", "heat has no direction"], 0,
     "Heat flows spontaneously only from hot to cold, so the entropy of the isolated system rises or stays the same."),

    ("In an isolated system, a spontaneous process always",
     ["decreases the entropy", "increases the entropy", "leaves the entropy unchanged", "changes the total energy"], 1,
     "That is the second law in its entropy form. In an ideal reversible process the entropy is unchanged."),

    ("An ideal reversible process in an isolated system has an entropy change of",
     ["zero", "positive", "negative", "infinite"], 0,
     "Reversibility means no entropy is generated; the entropy stays the same."),

    ("In the petrol engine cycle, the heat is supplied during",
     ["the adiabatic compression", "the constant-volume explosion", "the adiabatic expansion", "the exhaust stroke"], 1,
     "The burning mixture raises the pressure at essentially constant volume — the Otto cycle's heat-addition step."),

    ("In the diesel engine, ignition is caused by",
     ["a spark plug", "the high temperature produced by compression", "a glow plug only", "the fuel pump"], 1,
     "Air is compressed so hard that it becomes hot enough to ignite the injected fuel."),

    ("A steam engine is an example of",
     ["an external combustion engine", "an internal combustion engine", "a refrigerator", "a heat pump"], 0,
     "The fuel burns outside the cylinder, and the steam produced drives a piston or a turbine."),

    ("The efficiency of a real engine is always less than the Carnot efficiency between the same two temperatures because",
     ["of friction, heat loss and irreversible processes", "the gas is not ideal", "gravity acts on the piston", "the second law is false"], 0,
     "Irreversibilities waste some of the available work, so the real efficiency is below the ideal limit."),

    ("An engine takes 5.0 kJ of heat per cycle and rejects 3.5 kJ. Its efficiency is",
     ["30 %", "42 %", "57 %", "70 %"], 0,
     "$W = 5000 - 3500 = 1500$ J and $eta = 1500 \/ 5000 = 0.30$."),

    ("A pump does 250 J of work and delivers 750 J of heat to a room. Its coefficient of performance as a heat pump is",
     ["2.0", "3.0", "4.0", "0.33"], 1,
     "For a heat pump the wanted output is the delivered heat: $750 \/ 250 = 3.0$."),

    ("Water in a cylinder is heated at constant pressure, evaporating completely, then the steam expands. The work done by the steam comes at the expense of",
     ["only the heat supplied after boiling", "both the heat supplied and the internal energy", "the internal energy alone", "the container"], 1,
     "The first law allows both the heat taken in and the internal energy to supply the work."),

    ("Rubbing two rough surfaces together warms them. This is an example of",
     ["work being converted into internal energy", "heat being converted into work", "an adiabatic expansion", "a Carnot cycle"], 0,
     "Mechanical work against friction becomes internal energy — the reverse of an engine's action."),

    ("The statement that heat cannot flow spontaneously from a colder to a hotter body is",
     ["the first law", "the second law", "the zeroth law", "not a law at all"], 1,
     "That is one classic statement of the second law, due to Clausius."),
]
