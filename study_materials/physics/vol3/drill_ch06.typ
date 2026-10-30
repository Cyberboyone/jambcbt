#import "template.typ": *


#current-chapter.update("Chapter 6: Thermodynamics and Heat Engines — Drills")

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 16pt,
)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[END-OF-CHAPTER DRILL]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Chapter 6 Practice Set]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 9.8pt, fill: rgb("#CBD5E1"))[
    40 exam-standard questions on thermodynamics and heat engines. Attempt every question before
    turning to the key, then read the solution for every question — including the ones
    you answered correctly.
  ]
]

#v(4pt)

== 6.7 Chapter 6 Practice Drill — 40 Questions

40 questions graded in the order the CBT engine is likely to meet them. Allow 44 minutes; the key and a full solution for every question follow.

#mcq(1, [The first law of thermodynamics may be written as],
  [$Q = W - Delta U$],
  [$Delta U = Q + W$, with W the work done by the gas],
  [$W = Delta U + Q$],
  [$Delta U = Q - W$, with W the work done by the gas]
)

#mcq(2, [The internal energy of an ideal gas depends on],
  [its volume only],
  [its temperature only],
  [its volume and pressure],
  [its pressure only]
)

#mcq(3, [In an isothermal process on an ideal gas],
  [$Delta U = 0$],
  [$Q = 0$],
  [$p Delta V = 0$],
  [$W = 0$]
)

#mcq(4, [In an adiabatic process],
  [$Delta V = 0$],
  [$Delta U = 0$],
  [$W = 0$],
  [$Q = 0$]
)

#mcq(5, [In an isochoric process],
  [$Delta U = 0$],
  [$Q = 0$],
  [$W = 0$],
  [$p = 0$]
)

#mcq(6, [The work done by a gas expanding at constant pressure is],
  [$Delta p V$],
  [$p Delta V$],
  [$p \/ Delta V$],
  [$p + Delta V$]
)

#mcq(7, [A gas absorbs 800 J of heat and does 300 J of work. The change in its internal energy is],
  [+500 J],
  [+1100 J],
  [−500 J],
  [−1100 J]
)

#mcq(8, [A gas absorbs 500 J of heat and does 700 J of work. Its temperature],
  [falls],
  [cannot be determined],
  [rises],
  [does not change]
)

#mcq(9, [A gas at $1.0 times 10^5$ Pa expands from 200 cm³ to 500 cm³ at constant pressure. The work done is],
  [3.0 J],
  [30 J],
  [3000 J],
  [300 J]
)

#mcq(10, [On a pV diagram, the work done by a gas in going from one state to another is],
  [the area enclosed by the axes],
  [the change in pressure],
  [the slope of the path],
  [the area under the path]
)

#mcq(11, [The same two states are reached by two different paths. Which quantity is the same for both?],
  [the heat absorbed],
  [the change in internal energy],
  [the efficiency],
  [the work done]
)

#mcq(12, [In a complete cycle, the change in internal energy is],
  [zero],
  [negative],
  [equal to the heat absorbed],
  [equal to the work done]
)

#mcq(13, [A heat engine takes in 2000 J and rejects 1500 J per cycle. The work done per cycle is],
  [500 J],
  [2000 J],
  [3500 J],
  [1500 J]
)

#mcq(14, [A heat engine takes in 2000 J and rejects 1500 J. Its efficiency is],
  [150 %],
  [33 %],
  [75 %],
  [25 %]
)

#mcq(15, [An engine takes in 800 J and rejects 600 J. Its efficiency is],
  [20 %],
  [33 %],
  [25 %],
  [75 %]
)

#mcq(16, [The efficiency of any real heat engine is],
  [independent of the cold sink],
  [always less than 100 %],
  [sometimes more than 100 %],
  [always 100 %]
)

#mcq(17, [A refrigerator is essentially],
  [a machine that destroys heat],
  [a heat engine with no cold sink],
  [a heat engine run backwards],
  [a device that runs without work]
)

#mcq(18, [A refrigerator extracts 600 J from its cabinet using 200 J of work. The heat rejected to the room is],
  [800 J],
  [600 J],
  [1200 J],
  [400 J]
)

#mcq(19, [The coefficient of performance of a refrigerator that extracts 600 J using 200 J of work is],
  [1.0],
  [0.33],
  [2.0],
  [3.0]
)

#mcq(20, [An open refrigerator door left open in a closed kitchen will],
  [warm the kitchen],
  [cool the kitchen],
  [leave the kitchen unchanged],
  [cool the kitchen only if the room is small]
)

#mcq(21, [In an adiabatic expansion of a gas, the temperature],
  [first rises then falls],
  [falls],
  [rises],
  [stays the same]
)

#mcq(22, [An isothermal expansion of an ideal gas at constant temperature requires],
  [no heat at all],
  [heat to be removed],
  [work to be done on the gas],
  [heat to be supplied equal to the work done]
)

#mcq(23, [Which of these is *not* a state function?],
  [pressure],
  [temperature],
  [internal energy],
  [work]
)

#mcq(24, [The area enclosed by a closed cycle on a pV diagram represents],
  [the heat rejected],
  [the change in entropy],
  [the net work done in one cycle],
  [the change in internal energy]
)

#mcq(25, [A steam engine takes in 5000 J of heat and rejects 4000 J per cycle. Its efficiency is],
  [25 %],
  [80 %],
  [20 %],
  [10 %]
)

#mcq(26, [The internal energy of a gas can be increased by],
  [letting it expand freely],
  [removing heat from it],
  [reducing its temperature],
  [doing work on it]
)

#mcq(27, [A gas is compressed quickly and insulated from its surroundings. During the compression],
  [no heat flows and the temperature rises],
  [the internal energy falls],
  [heat flows in and the temperature is unchanged],
  [heat flows out and the temperature falls]
)

#mcq(28, [Which process has the greatest work done for the same expansion between the same two volumes?],
  [isochoric],
  [isothermal from a given pressure],
  [adiabatic],
  [isobaric]
)

#mcq(29, [For a gas taken round a cycle, the net heat absorbed is],
  [less than the net work],
  [zero],
  [equal to the net work done],
  [greater than the net work]
)

#mcq(30, [The second law of thermodynamics says that heat],
  [can be completely converted to work],
  [can flow from cold to hot without work],
  [flows spontaneously from hot to cold],
  [is conserved in all processes]
)

#mcq(31, [In the expression $eta = 1 - Q_2\/Q_1$, making $Q_2$ smaller while keeping $Q_1$ fixed],
  [leaves it unchanged],
  [raises the efficiency],
  [lowers the efficiency],
  [makes it greater than 1]
)

#mcq(32, [A diesel engine and a petrol engine differ mainly in],
  [whether work is done],
  [the first law they obey],
  [where and how the heat is added],
  [whether they reject heat]
)

#mcq(33, [A gas expands at constant temperature from 200 cm³ to 400 cm³ at $1.0 times 10^5$ Pa. The work done],
  [cannot be found without the final pressure],
  [is zero because the temperature is constant],
  [is 2000 J],
  [is 20 J]
)

#mcq(34, [A gas does 200 J of work while 200 J of heat is removed from it. Its internal energy],
  [falls by 200 J],
  [falls by 400 J],
  [rises by 400 J],
  [does not change]
)

#mcq(35, [An ideal gas is taken from state A to state B twice, once isothermally and once adiabatically, with the same starting state. In the adiabatic path the final temperature is],
  [zero],
  [lower],
  [higher],
  [the same]
)

#mcq(36, [The work done *on* a gas during an isochoric process is],
  [negative],
  [$n R T$],
  [zero],
  [$p Delta V$]
)

#mcq(37, [In one cycle an engine does 300 J of net work and absorbs 900 J of heat. Its efficiency is],
  [300 %],
  [33 %],
  [11 %],
  [67 %]
)

#mcq(38, [The internal energy of a fixed mass of ideal gas is doubled. Its temperature],
  [is halved],
  [is quadrupled],
  [is unchanged],
  [is doubled]
)

#mcq(39, [Which statement about heat and work is correct?],
  [neither is a state function],
  [both are state functions],
  [heat is a state function and work is not],
  [work is a state function and heat is not]
)

#mcq(40, [A gas at 300 K absorbs 1000 J and does 400 J of work. If its mass is fixed and the process is isobaric, the final temperature is],
  [greater than 300 K],
  [300 K],
  [cannot be determined],
  [less than 300 K]
)

#shortcut-box("Before you turn to the key")[
  + Mark the whole set in *one pass* — every answer, right or wrong — before you read a single solution.
  + Write the score at the top of the page, because a drill you cannot compare with the last one tells you nothing.
  + Then read *every* solution, including the ones you got right: the second method is in the solution, not in the chapter.
]

#v(6pt)

#current-chapter.update("Chapter 6: Thermodynamics and Heat Engines — Drills")

=== Answer Key and Score Bands

#answer-key-grid((
  "D", "B", "A", "D", "C", "B", "A", "A", "B", "D",
  "B", "A", "A", "D", "C", "B", "C", "A", "D", "A",
  "B", "D", "D", "C", "C", "D", "A", "D", "C", "C",
  "B", "C", "B", "B", "B", "C", "B", "D", "A", "A",
))

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARK YOURSELF]
  #v(4pt)
  #table(
    columns: (0.9fr, 2.6fr),
    inset: 4pt,
    align: (left + horizon, left + horizon),
    stroke: none,
    [*34–40*], [Secure. Move on to the next chapter, then return to this drill in a fortnight.],
    [*28–33*], [Developing. Every solution names the concept, so reread the chapter section that the missed questions share.],
    [*0–27*], [Revise before re-testing. Reread the chapter, then redo this drill from the beginning.],
  )
]

#[
  #set text(size: 9.15pt)
  #set par(leading: 0.66em, spacing: 0.72em)

  #block(breakable: false)[
  === Complete Solutions
  #sol-item(1, "D", dense: true, pad: 28.9pt)[
    $Delta U = Q - W$ when $W$ is the work done *by* the gas. Heat in raises the internal energy; work out lowers it.
  ]

  #sol-item(2, "B", dense: true, pad: 28.9pt)[
    An ideal gas has no intermolecular forces, so all its internal energy is kinetic — and that depends only on the kelvin temperature.
  ]
  ]

  #sol-item(3, "A", dense: true, pad: 28.9pt)[
    The temperature does not change, so the internal energy does not change: $Delta U = 0$, and the first law gives $Q = W$.
  ]

  #sol-item(4, "D", dense: true, pad: 28.9pt)[
    Adiabatic means no heat enters or leaves. The first law then gives $Delta U = -W$: the gas cools as it does work on its surroundings.
  ]

  #sol-item(5, "C", dense: true, pad: 28.9pt)[
    The volume does not change, so the gas does no work: $W = p Delta V = 0$, and all the heat supplied goes into internal energy.
  ]

  #sol-item(6, "B", dense: true, pad: 28.9pt)[
    $W = p Delta V$ at constant pressure, which is the area of the rectangle under an isobaric path on the pV diagram.
  ]

  #sol-item(7, "A", dense: true, pad: 28.9pt)[
    $Delta U = Q - W = 800 - 300 = +500$ J. The gas warms, because more heat came in than work went out.
  ]

  #sol-item(8, "A", dense: true, pad: 28.9pt)[
    $Delta U = 500 - 700 = -200$ J: the gas did more work than the heat supplied, so the difference came out of its internal energy and it cooled.
  ]

  #sol-item(9, "B", dense: true, pad: 28.9pt)[
    $W = p Delta V = 1.0 times 10^5 times 3.0 times 10^(-4) = 30$ J. The 300 cm³ must be converted to $3.0 times 10^(-4)$ m³.
  ]

  #sol-item(10, "D", dense: true, pad: 28.9pt)[
    The work is the area between the path and the volume axis. Different paths between the same two states give different areas, and therefore different work.
  ]

  #sol-item(11, "B", dense: true, pad: 28.9pt)[
    Internal energy is a state function: it depends only on where you are, not on how you got there. Heat and work are path-dependent.
  ]

  #sol-item(12, "A", dense: true, pad: 28.9pt)[
    The gas returns to its starting state, so $Delta U = 0$ and therefore $Q = W$: the net heat absorbed equals the net work done.
  ]

  #sol-item(13, "A", dense: true, pad: 28.9pt)[
    $W = Q_1 - Q_2 = 2000 - 1500 = 500$ J. The first law applied to a cycle: what goes in either comes out as work or is rejected.
  ]

  #sol-item(14, "D", dense: true, pad: 28.9pt)[
    $eta = W\/Q_1 = 500\/2000 = 0.25$. Dividing by the rejected heat gives 33 %, which is the standard trap.
  ]

  #sol-item(15, "C", dense: true, pad: 28.9pt)[
    $W = 200$ J and $eta = 200\/800 = 0.25$.
  ]

  #sol-item(16, "B", dense: true, pad: 28.9pt)[
    The second law forbids 100 %: some heat must always be rejected to a colder sink. Only an engine with a sink at absolute zero could reach 1.
  ]

  #sol-item(17, "C", dense: true, pad: 28.9pt)[
    Work is used to move heat from a cold place to a hot one, which is the reverse of the natural direction. The compressor spoils the work.
  ]

  #sol-item(18, "A", dense: true, pad: 28.9pt)[
    $Q_1 = Q_2 + W = 600 + 200 = 800$ J. The room always receives more heat than the cabinet loses, by exactly the work.
  ]

  #sol-item(19, "D", dense: true, pad: 28.9pt)[
    $Q_2\/W = 600\/200 = 3.0$. It exceeds 1 because the machine moves heat rather than creating it.
  ]

  #sol-item(20, "A", dense: true, pad: 28.9pt)[
    The fridge takes heat from its own cabinet and rejects it into the room, plus the work supplied by the compressor. The net effect is to add heat.
  ]

  #sol-item(21, "B", dense: true, pad: 28.9pt)[
    The gas does work with no heat coming in, so its internal energy falls: $Delta U = -W$, and a fall in internal energy means a fall in temperature.
  ]

  #sol-item(22, "D", dense: true, pad: 28.9pt)[
    $Delta U = 0$, so $Q = W$: the gas does work, and an equal amount of heat must flow in to keep the temperature constant.
  ]

  #sol-item(23, "D", dense: true, pad: 28.9pt)[
    Work depends on the path taken, not only on the end points. Internal energy, temperature and pressure depend only on the state.
  ]

  #sol-item(24, "C", dense: true, pad: 28.9pt)[
    Going round a cycle, the net work done by the gas is the enclosed area — clockwise for an engine, anticlockwise for a refrigerator.
  ]

  #sol-item(25, "C", dense: true, pad: 28.9pt)[
    $W = 1000$ J and $eta = 1000\/5000 = 0.20$. Note that 20 % of the heat supplied is the useful work, and 80 % is rejected.
  ]

  #sol-item(26, "D", dense: true, pad: 28.9pt)[
    $Delta U = Q - W$: compressing the gas does work *on* it, so $W$ is negative and $Delta U$ positive — the gas warms, as it does in a bicycle pump.
  ]

  #sol-item(27, "A", dense: true, pad: 28.9pt)[
    Fast compression is adiabatic: $Q = 0$, and since work is done *on* the gas, $Delta U = -W$ is positive and the temperature rises.
  ]

  #sol-item(28, "D", dense: true, pad: 28.9pt)[
    At constant pressure the work is $p Delta V$, the full rectangle under the path. The other paths fall away from that rectangle, so the area — and the work — is smaller.
  ]

  #sol-item(29, "C", dense: true, pad: 28.9pt)[
    With $Delta U = 0$ over a cycle, the first law gives $Q_"net" = W_"net"$ exactly.
  ]

  #sol-item(30, "C", dense: true, pad: 28.9pt)[
    Spontaneous flow is hot to cold. Forcing it the other way takes work — which is the whole point of the refrigerator.
  ]

  #sol-item(31, "B", dense: true, pad: 28.9pt)[
    A smaller rejected heat means more of the input becomes work, so the efficiency rises — but $Q_2$ can never reach zero, which is why 100 % is impossible.
  ]

  #sol-item(32, "C", dense: true, pad: 28.9pt)[
    Both obey the same first and second laws and both reject heat. They differ in the sequence of processes and in how the fuel is ignited.
  ]

  #sol-item(33, "B", dense: true, pad: 28.9pt)[
    Careful — this one is a reading test. The temperature is constant, but the pressure is *not*; $p$ falls as $V$ rises, so $W = p Delta V$ does not apply and the simple product overestimates. For an isothermal change the work is $p_1 V_1 ln(V_2\/V_1) = 1.0 times 10^5 times 2.0 times 10^(-4) times ln 2 = 14$ J.
  ]

  #sol-item(34, "B", dense: true, pad: 28.9pt)[
    $Delta U = Q - W = -200 - 200 = -400$ J. Both terms lower the internal energy, so they add.
  ]

  #sol-item(35, "B", dense: true, pad: 28.9pt)[
    The adiabatic expansion does work with no heat input, so it cools below the isothermal temperature. That is why the adiabatic curve on the pV diagram lies below the isothermal.
  ]

  #sol-item(36, "C", dense: true, pad: 28.9pt)[
    There is no change in volume, so no work is done in either direction: $W = 0$ and $Q = Delta U$.
  ]

  #sol-item(37, "B", dense: true, pad: 28.9pt)[
    $eta = W\/Q_1 = 300\/900 = 0.33$. The 900 J is the heat *absorbed*, not the net heat.
  ]

  #sol-item(38, "D", dense: true, pad: 28.9pt)[
    For an ideal gas the internal energy is proportional to the kelvin temperature, so doubling one doubles the other.
  ]

  #sol-item(39, "A", dense: true, pad: 28.9pt)[
    Both depend on the path between two states. Only the internal energy — and the other state variables — depend on the state alone.
  ]

  #sol-item(40, "A", dense: true, pad: 28.9pt)[
    $Delta U = 1000 - 400 = +600$ J is positive, so the internal energy has risen and the temperature with it. An isobaric heating always warms the gas.
  ]

]

