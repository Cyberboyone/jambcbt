"""Chapter 3 drill bank — heat transfer."""

DRILL_3 = [
    ("The rate of heat flow through a rod of thermal conductivity $k$, area $A$ and length $L$, whose ends differ by $theta$, is",
     ["$k A L \/ theta$", "$k A theta \/ L$", "$k theta \/ (A L)$", "$k L \/ (A theta)$"], 1,
     "$P = k A Delta theta \/ L$. The rate rises with area and temperature difference and falls as the path gets longer."),

    ("The SI unit of thermal conductivity is",
     ["W m⁻² K⁻¹", "W m⁻¹ K⁻¹", "J kg⁻¹ K⁻¹", "W K⁻¹"], 1,
     "Rearranging $P = k A Delta theta \/ L$ gives $k = P L \/(A Delta theta)$, whose unit is W m⁻¹ K⁻¹."),

    ("Which of these materials is the best thermal conductor?",
     ["copper", "glass", "wood", "air"], 0,
     "Copper is second only to silver. Glass, wood and air are all poor conductors, and trapped air is the basis of most insulation."),

    ("Metals conduct heat better than non-metals because",
     ["their atoms are heavier", "they contain free electrons that carry energy quickly", "they are denser", "they melt at lower temperatures"], 1,
     "The lattice passes energy along slowly; the free electrons move through it and carry energy far faster. That is why a metal feels cold to the touch — it takes heat out of your hand quickly."),

    ("A rod of length 0.50 m and area $2.0 times 10^(-4)$ m² carries heat between ends at 100 °C and 20 °C. If $k = 400$ W m⁻¹ K⁻¹, the rate of flow is",
     ["1.3 W", "12.8 W", "128 W", "1.28 kW"], 1,
     "$P = 400 times 2.0 times 10^(-4) times 80 \/ 0.50 = 12.8$ W."),

    ("A glass window of area 1.0 m² and thickness 4.0 mm has inside 20 °C and outside 5 °C. If $k = 0.8$ W m⁻¹ K⁻¹, the heat lost per second is",
     ["30 W", "300 W", "3000 W", "30 000 W"], 2,
     "$P = 0.8 times 1.0 times 15 \/ (4.0 times 10^(-3)) = 3000$ W. The thickness must be in metres; using 4.0 in place of 0.004 shrinks the answer by a factor of a thousand."),

    ("Trapped air is a good insulator because",
     ["air is a metal vapour", "air is a poor conductor and, when trapped, cannot carry a convection current", "air radiates strongly", "air has a high thermal conductivity"], 1,
     "Air has a very small $k$, and trapping it in small pockets stops it moving. Foam, wool and fibreglass work entirely by this trick."),

    ("Double glazing reduces heat loss mainly by",
     ["using thicker glass", "trapping a layer of air or gas between two panes", "making the glass reflective only", "reducing the area of the window"], 1,
     "The trapped layer is a poor conductor and cannot convect, so the conduction path changes from 4 mm of glass to a much worse conductor of comparable thickness."),

    ("Conduction in a solid takes place by",
     ["movement of the whole solid", "particles vibrating about fixed positions and passing energy to their neighbours", "electromagnetic waves", "evaporation and condensation"], 1,
     "Nothing moves from place to place. The particles vibrate harder where it is hot and pass that energy along the chain."),

    ("Convection is the transfer of heat by",
     ["the movement of a fluid", "electromagnetic waves", "vibration of a lattice", "free electrons"], 0,
     "Convection *is* the movement of the heated fluid itself: warm fluid rises, cool fluid sinks, and the circuit carries the energy."),

    ("Convection cannot occur in",
     ["a liquid", "a gas", "a solid", "a vacuum-heated fluid"], 2,
     "A solid cannot flow. Convection needs a fluid that can move, which is why a solid is warmed by conduction and radiation only."),

    ("A freezer compartment is placed at the top of a refrigerator because",
     ["cold air sinks and cools the whole cabinet", "cold air rises", "it is easier to reach", "the compressor is at the top"], 0,
     "Cool air is denser and falls, so putting the cold source at the top lets a natural convection current cool every shelf below it."),

    ("A radiator in a room is placed near the floor because",
     ["warm air rises and spreads through the room", "warm air sinks", "the floor is colder", "it is safer there"], 0,
     "The warm air must rise through the room to heat it. A radiator at ceiling height would heat only the ceiling."),

    ("The sea breeze blows from sea to land during the day because",
     ["the land heats faster, so the air above it rises and cooler sea air moves in", "the sea heats faster than the land", "the sea is at a higher pressure than the land at night", "water has a lower specific heat capacity"], 0,
     "Land warms faster than water, so the air over the land rises and is replaced by cooler air from the sea. At night the land cools faster and the direction reverses."),

    ("Heat reaches the Earth from the Sun by",
     ["conduction", "convection", "radiation", "a combination of conduction and convection"], 2,
     "The space between the Sun and the Earth is a vacuum, and radiation is the only route that needs no medium."),

    ("Radiation differs from conduction and convection in that it",
     ["needs no medium", "only occurs in solids", "requires a temperature gradient in a fluid", "cannot pass through glass"], 0,
     "Radiation is electromagnetic: it crosses empty space at the speed of light, which is how the Sun warms the Earth."),

    ("The best absorber of radiation is",
     ["a polished silver surface", "a white surface", "a dull black surface", "a mirror"], 2,
     "Dull black surfaces absorb almost all incident radiation. Because emission and absorption are the same process reversed, it is also the best emitter."),

    ("A blackened kettle compared with a shiny one, for the same flame,",
     ["boils faster and also cools faster", "boils faster and cools slower", "boils slower and cools faster", "behaves identically"], 0,
     "A good absorber is a good emitter. The black surface takes heat in faster and gives it out faster once the flame is removed."),

    ("A vacuum flask reduces heat loss by radiation using",
     ["the vacuum between the walls", "silvered surfaces on the walls", "the cork stopper", "a thick glass outer wall"], 1,
     "The vacuum deals with conduction and convection. Radiation is reflected by the silvered surfaces, which are poor absorbers and poor emitters."),

    ("The vacuum between the walls of a flask prevents",
     ["radiation", "conduction and convection", "convection only", "all three routes"], 1,
     "With no particles in the gap there is nothing to conduct and nothing to rise or sink. Radiation still crosses, which is why the walls are silvered."),

    ("The stopper of a vacuum flask is made of cork or plastic because",
     ["it is a poor conductor and closes the neck", "it is transparent", "it is a good reflector", "it expands on heating"], 0,
     "Cork and plastic are poor conductors, and the stopper blocks the neck where warm air would otherwise rise out by convection."),

    ("A black body is one that",
     ["absorbs all radiation falling on it and emits perfectly", "reflects all radiation", "only emits when hot", "does not radiate"], 0,
     "A black body is the ideal absorber — and therefore the ideal emitter. Its radiated power is $sigma A T^4$."),

    ("The power radiated by a black body is proportional to",
     ["$T$", "$T^2$", "$T^4$", "$1 \/ T$"], 2,
     "$P = sigma A T^4$. The fourth power is why the radiated power climbs so sharply with temperature."),

    ("A blackened plate of area 0.50 m² is at 500 K. Taking $sigma = 5.67 times 10^(-8)$ W m⁻² K⁻⁴, it radiates",
     ["about 180 W", "about 1.8 kW", "about 18 kW", "about 180 kW"], 1,
     "$P = 5.67 times 10^(-8) times 0.50 times 500^4 = 5.67 times 10^(-8) times 0.50 times 6.25 times 10^10 approx 1.8 times 10^3$ W."),

    ("The temperature of a body is doubled from 300 K to 600 K. The power it radiates increases by a factor of",
     ["2", "4", "8", "16"], 3,
     "$(600\/300)^4 = 2^4 = 16$. The fourth power makes radiation extremely sensitive to temperature."),

    ("Dark clothes are warmer than white clothes in strong sunlight because",
     ["dark surfaces absorb radiation better", "dark cloth is thicker", "white cloth conducts heat away", "dark cloth traps more air"], 0,
     "The darker surface absorbs a larger fraction of the incident radiation, and the energy is then conducted to the body."),

    ("A shiny teapot keeps tea warm longer than a black one because",
     ["a shiny surface emits radiation poorly", "a shiny surface conducts poorly", "shiny metal has a lower specific heat capacity", "black surfaces absorb heat from the tea"], 0,
     "Poor emitter means poor loser by radiation. The same argument is why the walls of a vacuum flask are silvered."),

    ("A copper rod conducts 4.0 W when its ends differ by 80 K. If the temperature difference is doubled, with everything else unchanged, the rate becomes",
     ["2.0 W", "4.0 W", "8.0 W", "16.0 W"], 2,
     "The rate is proportional to the temperature difference, so doubling it doubles the rate: 8.0 W."),

    ("Two rods of the same material and length carry heat between the same temperatures. Rod X has twice the cross-sectional area of rod Y. The heat flow in X is",
     ["half that in Y", "the same as in Y", "twice that in Y", "four times that in Y"], 2,
     "The rate is proportional to area, so doubling the area doubles the rate."),

    ("A thin sheet of a poor conductor may carry more heat than a thick slab of a better one because",
     ["the rate depends on thickness as well as on conductivity", "conductivity does not matter", "thin materials always conduct better", "the temperature difference is larger"], 0,
     "The rate is $k A Delta theta \/ L$. A small $L$ can outweigh a small $k$, which is exactly why 4 mm of glass loses more heat than 200 mm of brick."),

    ("In steady state, the rate of heat flow at every cross-section of a lagged uniform rod is",
     ["greatest at the hot end", "greatest at the cold end", "the same everywhere", "zero in the middle"], 2,
     "Steady state means the temperature at each point is no longer changing, so whatever enters a section leaves it: the rate is constant along the rod."),

    ("The handle of a metal saucepan is made of plastic because",
     ["plastic is a poor conductor of heat", "plastic is a good conductor", "plastic is a good radiator", "plastic has a low melting point"], 0,
     "A poor conductor keeps the heat in the pan rather than delivering it to your hand."),

    ("Heat is transferred through a vacuum by",
     ["conduction", "convection", "radiation", "no route at all"], 2,
     "Radiation is electromagnetic and needs no particles, which is how the Sun's energy reaches the Earth."),

    ("A candle flame in a spacecraft orbiting the Earth is roughly spherical and dim because",
     ["there is no oxygen", "there is no weight, so no convection current forms", "the flame is too hot", "radiation ceases in orbit"], 1,
     "Convection depends on warm fluid being lighter than cold fluid in a gravitational field. Without weight there is no buoyancy, so the flame is fed by diffusion only."),

    ("A solar water heater is fitted with a matt black plate because",
     ["it absorbs the maximum of the incident radiation", "it reflects the radiation into the water", "it conducts electricity", "it is cheaper than a shiny plate"], 0,
     "Dull black absorbs almost everything. The plate then conducts the heat into the water pipes bonded to it."),

    ("The rate of heat loss through a wall is doubled if",
     ["the wall is made twice as thick", "the temperature difference is halved", "the thickness is halved and everything else is unchanged", "the area is halved"], 2,
     "The rate is inversely proportional to thickness, so halving $L$ doubles $P$."),

    ("Greenhouses stay warm because",
     ["glass conducts heat inwards", "visible light enters, is re-emitted as infrared, and the infrared does not escape as easily", "the glass absorbs all the light", "plants generate heat"], 1,
     "The glass passes the short-wavelength visible light but is much less transparent to the long-wavelength infrared radiated by the warm interior."),

    ("Which sequence lists the three routes in order of their ability to work through a vacuum?",
     ["conduction, convection, radiation", "radiation only can", "convection only can", "all three can"], 1,
     "Only radiation crosses a vacuum. Conduction needs particles in contact and convection needs a fluid that can move."),

    ("A lagged rod carries heat at a steady 20 W. The rod is then made twice as long, with the same ends at the same temperatures. The new rate is",
     ["5 W", "10 W", "20 W", "40 W"], 1,
     "The rate is inversely proportional to length, so doubling the length halves the rate: 10 W."),

    ('A room is heated by a radiator whose surface is at 70 °C while the wall behind it is at 20 °C. The radiator loses heat by all three routes, but the one that heats the *far* side of the room is',
     ["conduction through the air", "convection of the warmed air", "radiation alone", "evaporation"], 1,
     "The radiator warms the air beside it, that air rises and circulates, and the current carries heat across the room. Radiation and conduction both fall off sharply with distance."),
]
