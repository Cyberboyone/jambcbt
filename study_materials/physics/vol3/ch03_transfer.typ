#import "template.typ": *

#current-chapter.update("Chapter 3: Heat Transfer")

#pagebreak()

#chapter-opener(
  3,
  "Heat Transfer",
  subtitle: "Conduction and Thermal Conductivity, Convection Currents, Radiation and Black Surfaces, the Vacuum Flask, and How to Tell the Three Apart",
  syllabus-ref: "Sec. B • Heat 3",
  utme-weight: "3 Qs every year",
  running: "Heat Transfer",
)

#focus-radar(
  objectives: (
    "Describe conduction, convection and radiation, and say what carries the energy in each.",
    "Use the conduction rate $k A (theta_1 - theta_2) \/ L$, and get the units right.",
    "Explain why metals conduct well and why trapped air is a good insulator.",
    "Describe natural and forced convection, and give three applications.",
    "Explain why a black surface is a good absorber and a good emitter.",
    "Explain how a vacuum flask blocks all three routes at once.",
  ),
  hotspots: (
    "“The rate of heat flow through a rod is …” — $k A Delta theta \/ L$, in watts.",
    "“Which is the best conductor?” — silver, then copper, then aluminium; air is one of the worst.",
    "“Convection cannot occur in …” — a solid, or anywhere without weight (a freely falling capsule).",
    "“A black body is …” — a perfect absorber and a perfect emitter. “Dark clothes are warmer in the sun” follows.",
    "“The vacuum in a flask prevents …” — conduction and convection. The silvering handles radiation.",
  ),
  trap-summary: "Three slips. (1) Using the temperature difference in kelvin *and* converting: $Delta theta$ is the same number on both scales, so the 273 never enters a conduction question. (2) Forgetting that the rate depends on area and thickness as well as on the material: a thin sheet of a poor conductor can beat a thick slab of a good one. (3) Saying that a vacuum flask stops *radiation* with its vacuum — the vacuum stops conduction and convection, and the silvering stops radiation.",
)

// ============================================================================
== 3.1 Conduction

Put one end of a metal spoon in a flame and the handle warms within seconds, although no metal has moved. Something has carried energy along the spoon, and that something is the particles themselves — vibrating in place and passing the vibration along, with the free electrons doing most of the work in a metal.

#concept-box("Conduction")[
  *Conduction* is the transfer of heat through a body from a hotter part to a colder part without the body itself moving. In a solid the particles vibrate about fixed positions and pass energy to their neighbours; in a metal, free electrons carry energy much faster than the lattice can, which is why metals are the best conductors.
]

The rate at which heat flows along a bar depends on four things, and the equation collects all four.

#formula-box("The conduction rate")[
  + *The rate:* $P = (k A (theta_1 - theta_2)) \/ L$, in watts.

  + $P$ — the rate of heat flow in watts,
  + $k$ — the thermal conductivity of the material, in W m⁻¹ K⁻¹,
  + $A$ — the cross-sectional area in m²,
  + $(theta_1 - theta_2)$ — the temperature difference between the ends, in K,
  + $L$ — the length of the path, in metres.

  A thick bar conducts in proportion to its area and in inverse proportion to its length; that sentence is half the marks in a conduction question.
]

#diagram-fig("diagrams/ch03_conduction.svg",
  "Searle's bar. In steady state the electrical power fed in at one end leaves at the other, so the conductivity is read off from the power, the geometry and the two thermometer readings.", width: 100%)

*Good and bad conductors.* Silver is the best conductor known, followed by copper, then aluminium; steel and lead are mediocre, and water, glass, wood, plastic and air are poor. Air is the best insulator in the list, which explains almost every insulating material in the syllabus: foam, wool, fibreglass, double glazing and fur all work by trapping air and stopping it from moving. A vacuum is better still, because it removes the particles entirely.

#trap-box("A thin poor conductor can beat a thick good one")[
  Conductivity alone does not decide the heat flow — area and thickness do. A 4 mm pane of glass ($k approx 0.8$) loses heat far faster than a 200 mm wall of brick ($k approx 0.6$) for the same area and temperature difference, because the glass is fifty times thinner. The equation says so explicitly: $L$ is in the denominator. A question that gives you both materials and asks which lets more heat through is testing the whole fraction, not the value of $k$.
]

#worked-example(
  1,
  "A copper rod",
  [A copper rod of length 0.50 m and cross-sectional area $2.0 times 10^(-4)$ m² has one end at 100 °C and the other at 20 °C. Taking $k = 400$ W m⁻¹ K⁻¹, find the rate of heat flow along the rod.],
  [
    The temperature difference is $100 - 20 = 80$ K.

    $P = k A Delta theta \/ L = 400 times 2.0 times 10^(-4) times 80 \/ 0.50 = 12.8$ W.

    *Check.* The units: W m⁻¹ K⁻¹ × m² × K ÷ m gives W, and nothing else. The number is small because the bar is thin — the same rod with a square centimetre of cross-section ($1.0 times 10^(-4)$ m², five times the area) would carry five times as much, and a rod a metre long half as much again. Every conduction answer can be checked by asking which way each of those two changes would push it.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "A window pane",
  [A glass window has an area of 1.0 m² and a thickness of 4.0 mm. The temperature inside is 20 °C and outside 5 °C. Taking $k = 0.8$ W m⁻¹ K⁻¹, find the rate at which heat is lost through it.],
  [
    Thickness: $L = 4.0$ mm $= 4.0 times 10^(-3)$ m. Difference: $Delta theta = 15$ K.

    $P = 0.8 times 1.0 times 15 \/ 4.0 times 10^(-3) = 3000$ W.

    *Check.* Three kilowatts through a single pane is why a house with single glazing feels cold, and why double glazing works: the trapped air layer, about 10 mm thick with $k = 0.026$, carries $0.026 times 1.0 times 15 \/ 0.010 = 39$ W — about eighty times less. The comparison is the physics; the arithmetic is the evidence for it.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 3.2 Convection

Liquids and gases conduct badly, yet a pan of water heated at the bottom warms all through in a few minutes. The energy is not being conducted; it is being *carried*, by the water itself moving.

#concept-box("Convection")[
  *Convection* is the transfer of heat by the movement of a fluid. The part that is heated expands, becomes less dense, and rises; cooler fluid moves in to take its place. The result is a *convection current*, and it needs a fluid, a temperature difference, and *weight* — a freely falling capsule has no convection at all.
]

#diagram-fig("diagrams/ch03_convection.svg",
  "A convection current in a beaker, and the sea breeze it produces on a coastline. Warm fluid rises, cool fluid sinks, and the circuit closes.", width: 100%)

#formula-box("Where convection shows up")[
  + *Heating a room:* a radiator at floor level, because the warm air must rise through the whole room.
  + *Cooling a room:* a freezer unit at the top, because the cold air must sink.
  + *A refrigerator:* the freezer compartment at the top for the same reason — the cold air falls and cools the shelves below it.
  + *Ventilation:* a low inlet and a high outlet, so that the current has somewhere to go.
  + *The sea breeze:* by day the land heats faster and the air above it rises; by night the land cools faster and the current reverses.
]

*Forced convection* is the same physics with a pump or a fan doing the moving: a car radiator, a central-heating pump, a computer fan, and the blood in your body. The distinction is examinable — natural convection depends on density differences, forced convection does not.

#trap-box("No weight, no convection")[
  Convection works because warm fluid is *lighter* than cold fluid in the same gravitational field. In a freely falling lift, or on an orbiting spacecraft, there is no “up”, so a candle flame becomes a dim blue sphere and warm air simply stays where it is. That is the cleanest way to prove to an examiner that you understand convection is a buoyancy effect, not a glow.
]

// ============================================================================
== 3.3 Radiation

Stand in front of a fire and you are warm; stand to one side and you are not, although the air between you and the fire is cool. The energy has crossed the gap without heating the air at all. This is radiation — and it is the only one of the three that needs no medium.

#concept-box("Radiation")[
  *Radiation* is the transfer of heat by electromagnetic waves, chiefly infrared. It needs no medium, travels at the speed of light, and every body above absolute zero emits it. A *black body* is a perfect absorber and a perfect emitter of radiation; a shiny white surface is a poor absorber and a poor emitter.
]

#diagram-fig("diagrams/ch03_radiation.svg",
  "The radiation curve of a hot body. Raising the temperature raises the total emitted power sharply and shifts the peak towards shorter wavelengths — which is why a hotter object glows from red towards white.", width: 92%)

#formula-box("The two facts you need")[
  + The power radiated by a black body is $P = sigma A T^4$, with $sigma = 5.67 times 10^(-8)$ W m⁻² K⁻⁴ and $T$ in kelvin. Doubling the kelvin temperature multiplies the power by sixteen.
  + Good absorbers are good emitters. A black kettle boils faster than a shiny one *and* cools faster once the gas is off. There is no surface that absorbs well and emits badly, because the two are the same process run in opposite directions.
]

#worked-example(
  3,
  "A blackened plate",
  [A blackened metal plate of area 0.50 m² is at 500 K. Taking $sigma = 5.67 times 10^(-8)$ W m⁻² K⁻⁴, find the power it radiates.],
  [
    $T^4 = 500^4 = 6.25 times 10^10$ K⁴.

    $P = sigma A T^4 = 5.67 times 10^(-8) times 0.50 times 6.25 times 10^10 = 1.8 times 10^3$ W.

    *Check.* About 1.8 kW from half a square metre is roughly the output of a small electric fire, and it comes from a plate at only 227 °C. Raise the temperature to 1000 K and the same plate would radiate $2^4 = 16$ times as much, about 28 kW — which is why a blacksmith can feel a bar glowing across a workshop, and why the fourth power makes radiation the dominant route at high temperature.
  ],
  tier: "UTME STANDARD",
)

*What the surface does.* A dull black surface absorbs almost all the radiation that falls on it and emits strongly; a polished silver surface reflects most of what falls on it and emits weakly. That single sentence explains four familiar facts: dark clothes are hotter in the sun, a black car is hotter than a white one, a shiny teapot keeps tea warm longer, and a solar panel is painted matt black. It also explains the greenhouse: visible light passes through glass, is absorbed by the ground and re-emitted as infrared, and the infrared cannot get back out so easily.

// ============================================================================
== 3.4 The Vacuum Flask

The vacuum flask is the syllabus's set piece because it is the one object that has to defeat all three routes at once, and each part of it defeats one.

#diagram-fig("diagrams/ch03_flask.svg",
  "The vacuum flask, part by part: a vacuum for conduction and convection, silvered walls for radiation, and a stopper for the neck.", width: 100%)

#formula-box("What each part is for")[
  + *Double walls with a vacuum between them* — no particles, so no conduction and no convection.
  + *Silvered surfaces* — poor absorbers and poor emitters, so radiation is reflected back.
  + *Cork or plastic stopper* — a poor conductor that closes the only route left, the neck.
  + *A small opening* — less area for the remaining losses, and less convection out of the top.
]

*The same flask, either way round.* A vacuum flask keeps a hot drink hot and an ice cube solid, which surprises candidates who think of it as a “heat stopper”. It is not: it is a *heat-flow slower*, and it slows the flow in whichever direction it is going. That is why the answer to “why does a flask keep ice from melting?” is exactly the same as the answer to “why does it keep tea hot?” — and examiners ask both.

#trap-box("The vacuum does not stop radiation")[
  Radiation crosses a vacuum perfectly well — that is how the Sun's heat reaches us. The vacuum in a flask stops conduction and convection; it is the *silvering* that deals with radiation. An answer that credits the vacuum with stopping radiation is the classic half-mark answer in this section.
]

#worked-example(
  4,
  "Why the tea cools slowly",
  [Explain, in terms of the three routes, why a vacuum flask filled with tea at 80 °C cools much more slowly than the same tea in a metal cup.],
  [
    *Conduction.* The flask's inner wall touches only the vacuum and the stopper, both poor conductors; the metal cup is a good conductor with a large area in contact with the tea.

    *Convection.* The vacuum has no fluid to carry a current, and the stopper closes the neck, so the warm air cannot rise out; the open cup has a free surface losing warm air continuously.

    *Radiation.* The silvered walls are poor emitters and reflect infrared straight back, so the flask loses very little by radiation. The metal cup is a much larger exposed surface, and even a shiny one emits from its whole outside area.

    *Check.* Each sentence names a route and a feature of the flask that defeats it. That is the marking scheme: three routes, three features, one conclusion. A candidate who writes only “the vacuum stops heat loss” has named one route and confused two.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "A rod, a clock and a lump of ice",
  [A copper rod of length 0.40 m and cross-section $5.0 times 10^(-5)$ m² has its ends at 100 °C and 20 °C, and is lagged so that heat is lost only at the ends. Taking $k = 400$ W m⁻¹ K⁻¹, (a) find the rate of heat flow, and (b) find how long it would take to melt 20 g of ice at 0 °C with that heat, taking $L_"f" = 3.34 times 10^5$ J kg⁻¹.],
  [
    *(a)* $P = 400 times 5.0 times 10^(-5) times 80 \/ 0.40 = 4.0$ W.

    *(b)* The heat needed is $Q = m L_"f" = 0.020 times 3.34 times 10^5 = 6680$ J.

    So $t = Q \/ P = 6680 \/ 4.0 = 1670$ s, about 28 minutes.

    *Check.* Four watts is a small heater — about a torch bulb — and 28 minutes to melt a teaspoon of ice is the right order of magnitude for that. The check is the *rate*: a rod is a poor way to move heat compared with a flame, and the answer should feel slow. If a candidate's answer is two seconds, the decimal point has moved.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: heat transfer.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Heat moves by three routes and only three. Conduction passes energy from particle to particle without anything moving, fastest in metals because their free electrons carry it, and its rate is $k A Delta theta \/ L$ — so a thin pane of glass can lose more heat than a thick brick wall. Convection carries heat by carrying the fluid itself: warm fluid is less dense, so it rises, and cool fluid sinks to take its place. It needs weight as well as a fluid, which is why a candle in free fall has no flame shape. Radiation needs no medium at all, travels as infrared at the speed of light, and is governed by surface and temperature: black surfaces absorb and emit best, and the power goes as $T^4$, so doubling the kelvin temperature multiplies it by sixteen. The vacuum flask is the summary of the chapter: a vacuum for conduction and convection, silvered walls for radiation, a stopper for the neck — and it slows heat in whichever direction it is going, which is why it keeps tea hot and ice frozen with the same design.
  ]
]

== 3.5 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [The rate of heat flow through a rod of length $L$, area $A$ and conductivity $k$, whose ends differ by $Delta theta$, is], [$k A L \/ Delta theta$], [$k A Delta theta \/ L$], [$k L \/ (A Delta theta)$], [$k Delta theta \/ (A L)$])
#mcq(2, [Heat is transferred through a vacuum by], [conduction], [convection], [radiation], [all three at once])
#mcq(3, [Which surface is the best absorber of radiation?], [a polished silver surface], [a white painted surface], [a dull black surface], [a transparent glass surface])
#mcq(4, [The vacuum between the walls of a vacuum flask prevents], [radiation only], [conduction and convection], [convection and radiation], [conduction, convection and radiation])

#answer-key-grid(("B", "C", "C", "B"))

#answer-notes((
  ("B", [$P = k A Delta theta \/ L$: proportional to area and temperature difference, inversely proportional to length.]),
  ("C", [radiation needs no medium — that is how the Sun's energy reaches the Earth.]),
  ("C", [a dull black surface absorbs almost everything that falls on it, which is also why it is the best emitter.]),
  ("B", [the vacuum removes the particles, so there is nothing to conduct or to carry a convection current. The silvering handles radiation.]),
))

#chapter-checklist("Before you leave Chapter 3", (
  [State the three routes of heat transfer and what carries the energy in each.],
  [Write $P = k A Delta theta \/ L$ and say what each symbol means, with its unit.],
  [Explain why metals conduct better than non-metals.],
  [Explain why a freezer unit sits at the top of a refrigerator.],
  [State why a black surface is both a good absorber and a good emitter.],
  [Match each feature of a vacuum flask to the route it defeats.],
))

#concept-box("Carry this into Chapter 4")[
  This chapter is about heat *moving*; the next is about heat *arriving*. Once energy reaches a body, how much of it does it take to raise the temperature, how much to melt it, and how much to boil it away? Chapter 4 gives the arithmetic — $Q = m c Delta theta$ and $Q = m L$ — and the method of mixtures, which is the calorimetry experiment that combines them both.
]

#include "drill_ch03.typ"
