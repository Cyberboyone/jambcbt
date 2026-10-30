"""Chapter 3 paper bank — heat transfer."""

PAPER_3 = [
    ("Conduction is the transfer of heat",
     ["by the movement of a fluid", "through a body from a hotter to a colder part without the body moving", "by electromagnetic waves", "by evaporation"], 1,
     "Conduction passes energy along a body with nothing moving from place to place — rapidly in metals, slowly in non-metals."),

    ("Convection is possible only in",
     ["solids", "fluids", "vacua", "metals"], 1,
     "It needs something that can flow and change density. A solid cannot, and a vacuum has nothing to flow at all."),

    ("Radiation is the only method of heat transfer that",
     ["needs a medium", "needs no medium", "works only in gases", "requires a temperature gradient"], 1,
     "Radiation is electromagnetic and crosses a vacuum, which is how the Sun's energy reaches the Earth."),

    ("The SI unit of thermal conductivity is",
     ["W m⁻² K⁻¹", "W m⁻¹ K⁻¹", "J kg⁻¹ K⁻¹", "W K⁻¹"], 1,
     "From $k = P L\/(A Delta theta)$, the unit is W m⁻¹ K⁻¹."),

    ("The rate of heat flow along a uniform rod is proportional to",
     ["its length", "the square of its length", "the inverse of its length", "the inverse square of its length"], 2,
     "$P = k A Delta theta \/ L$: the longer the path, the lower the rate."),

    ("A copper rod of length 0.50 m and area $4.0 times 10^(-4)$ m² has ends at 100 °C and 20 °C. Taking $k = 400$ W m⁻¹ K⁻¹, the rate of heat flow is",
     ["5.1 W", "25.6 W", "256 W", "2.56 kW"], 1,
     "$P = 400 times 4.0 times 10^(-4) times 80 \/ 0.50 = 25.6$ W."),

    ("The rate of heat loss through a window of area 2.0 m² and thickness 5.0 mm, with a temperature difference of 10 K and $k = 0.8$ W m⁻¹ K⁻¹, is",
     ["32 W", "320 W", "3200 W", "32 kW"], 2,
     "$P = 0.8 times 2.0 times 10 \/ (5.0 times 10^(-3)) = 3200$ W."),

    ("Metals are good conductors because",
     ["their atoms are heavier", "they contain free electrons", "they are shiny", "they have a low melting point"], 1,
     "Free electrons carry energy through the lattice far faster than the vibration of the atoms alone can."),

    ("Trapped air is used in insulating materials because",
     ["air is a good conductor", "air is a poor conductor and, trapped, cannot convect", "air radiates well", "air has a high density"], 1,
     "Air has a very small $k$, and trapping it in small pockets removes the convection that would otherwise carry heat."),

    ("A pan of water heated at the bottom warms all through mainly by",
     ["conduction", "convection", "radiation", "evaporation"], 1,
     "Water is a poor conductor; the warmed water rises and cool water sinks, carrying the heat through the pan."),

    ("A freezer unit is fitted at the top of a refrigerator because",
     ["cold air sinks and cools the shelves", "cold air rises", "it is easier to reach", "the compressor is at the top"], 0,
     "Dense cold air falls from the unit and a natural convection current cools the whole cabinet."),

    ("In a room heated by a radiator, the radiator should be placed",
     ["near the ceiling", "near the floor", "in the middle", "outside the room"], 1,
     "Warm air must rise through the room to heat it. A heater at ceiling height heats only the ceiling."),

    ("A sea breeze during the day is caused by",
     ["the sea being hotter than the land", "the land heating faster, so air over the land rises", "the rotation of the Earth", "the tide"], 1,
     "The air over the warmer land rises and is replaced by cooler air from the sea. The direction reverses at night."),

    ("Convection does not occur in a freely falling spacecraft because",
     ["there is no air", "there is no effective weight to make warm fluid rise", "the temperature is too low", "radiation takes over completely"], 1,
     "Buoyancy needs weight. Without it, warm fluid does not rise, and a flame becomes a dim sphere fed by diffusion."),

    ("A black body is one that",
     ["absorbs all radiation incident on it", "reflects all radiation", "emits no radiation", "is always at 0 K"], 0,
     "A perfect absorber — and therefore, by detailed balance, a perfect emitter too."),

    ("The power radiated by a black body is proportional to",
     ["$T$", "$T^2$", "$T^3$", "$T^4$"], 3,
     "$P = sigma A T^4$ — the fourth power makes radiation enormously sensitive to temperature."),

    ("A blackened plate of area 0.20 m² radiates at 400 K. Taking $sigma = 5.67 times 10^(-8)$ W m⁻² K⁻⁴, the power is",
     ["about 116 W", "about 290 W", "about 580 W", "about 1.2 kW"], 1,
     "$P = 5.67 times 10^(-8) times 0.20 times 400^4 = 5.67 times 10^(-8) times 0.20 times 2.56 times 10^10 approx 290$ W."),

    ("A surface that is a good absorber of radiation is also",
     ["a poor emitter", "a good emitter", "a perfect reflector", "a poor conductor"], 1,
     "Absorption and emission are the same process reversed, so the two properties always go together."),

    ("Dark clothes are preferred in hot sunshine because dark surfaces",
     ["absorb less radiation", "absorb more radiation", "conduct heat better", "radiate nothing"], 0,
     "Dark surfaces absorb more of the incident radiation, so the wearer feels warmer. The same fact makes a solar panel matt black."),

    ("A vacuum flask is silvered inside to reduce heat loss by",
     ["conduction", "convection", "radiation", "evaporation"], 2,
     "Silvered walls are poor emitters and reflect infrared back, which is the radiation route."),

    ("The vacuum between the walls of a flask prevents",
     ["radiation", "conduction and convection", "convection only", "all three routes"], 1,
     "No particles means nothing to conduct and nothing to convect. Radiation is handled by the silvering."),

    ("A vacuum flask keeps ice from melting for the same reason that it keeps tea hot because it",
     ["slows the flow of heat in either direction", "produces cold", "absorbs heat", "reflects all light"], 0,
     "It is a heat-flow slower, not a heat stopper, so it works whichever way the heat is trying to go."),

    ("The stopper of a vacuum flask is made of a poor conductor because",
     ["it must be transparent", "it closes the neck and reduces heat flow through the top", "it helps the silvering", "it is a good radiator"], 1,
     "The neck is the remaining path, and a poor conductor there reduces the last significant loss."),

    ("Two rods of the same material and length, one with twice the area of the other, carry heat between the same temperatures. The thicker rod carries",
     ["half as much", "the same", "twice as much", "four times as much"], 2,
     "The rate is proportional to area."),

    ("Doubling the thickness of a wall, with everything else unchanged,",
     ["doubles the heat loss", "halves the heat loss", "leaves it unchanged", "quarters it"], 1,
     "The rate is inversely proportional to thickness."),

    ("The temperature difference across a rod is doubled, with everything else unchanged. The rate of heat flow",
     ["is halved", "is unchanged", "is doubled", "is quadrupled"], 2,
     "The rate is proportional to the temperature difference."),

    ("In steady state along a lagged rod, the rate of heat flow is",
     ["largest at the hot end", "largest at the cold end", "the same at every section", "zero"], 2,
     "Steady state means no section is storing heat, so what enters leaves: the rate is uniform."),

    ("Which of these is *not* a way in which heat can be transferred?",
     ["conduction", "convection", "radiation", "reflection"], 3,
     "Reflection changes the direction of radiation; it is not a separate mode of transfer."),

    ("A greenhouse stays warm mainly because",
     ["the glass conducts heat inwards", "infrared radiation from the interior cannot escape as easily as visible light can enter", "the air inside is denser", "plants produce heat"], 1,
     "The glass is transparent to visible light but much less so to the longer-wavelength infrared re-radiated by the warm interior."),

    ("A shiny teapot keeps tea warm longer than a black one because",
     ["shiny surfaces emit radiation poorly", "shiny surfaces conduct poorly", "black surfaces absorb heat from the tea", "shiny surfaces are thicker"], 0,
     "Poor emitter means poor loser by radiation. The same reasoning explains the silvering of a flask."),

    ("Water in a kettle is heated by a coil at the bottom rather than at the top because",
     ["convection then carries the heat through the water", "conduction is faster at the bottom", "the top would melt", "water is denser at the top"], 0,
     "Warmed water at the bottom rises and cool water sinks, so a current distributes the heat."),

    ("The temperature of the filament of a lamp is doubled. The power it radiates rises by a factor of",
     ["2", "4", "8", "16"], 3,
     "Radiation goes as $T^4$, and $2^4 = 16$."),

    ("Heat from a fire reaches your face mainly by",
     ["conduction through the air", "convection through the air", "radiation", "evaporation"], 2,
     "The air between is a poor conductor and is not flowing towards you; the warmth is infrared radiation."),

    ("Which surface will cool a hot object fastest?",
     ["polished silver", "white paint", "matt black", "clear glass"], 2,
     "A good absorber is a good emitter, and a matt black surface is the best emitter of the four."),

    ("A double-glazed window has a trapped air layer because",
     ["air conducts heat better than glass", "air is a poor conductor and cannot convect when trapped", "air is transparent", "air is heavier than glass"], 1,
     "The trapped layer adds a poor conductor in place of a thin slab of glass, reducing the rate sharply."),

    ("A metal door handle feels colder than a wooden one at the same temperature because the metal",
     ["is at a lower temperature", "conducts heat away from the hand faster", "radiates more", "has a higher specific heat"], 1,
     "Both are at room temperature; the metal takes heat from your skin quickly, which the skin reads as cold."),

    ("Which of the following would make the *worst* material for a cooking pot handle?",
     ["wood", "plastic", "copper", "rubber"], 2,
     "A good conductor would deliver the heat of the pot to the hand, which is exactly what a handle must not do."),

    ("The rate of heat transfer through a wall can be reduced by",
     ["increasing its thickness", "increasing its area", "increasing the temperature difference", "using a better conductor"], 0,
     "The rate falls with thickness, rises with area and difference, and rises with conductivity."),

    ("A hot-water pipe in a house is lagged to reduce",
     ["conduction and convection from its surface", "radiation only", "the water pressure", "the flow rate"], 0,
     "Lagging traps air (a poor conductor) and stops the air next to the pipe from moving, which kills both conduction and convection."),

    ("A radiator in a room transfers most of its heat to the far side of the room by",
     ["conduction through the air", "convection of the warmed air", "radiation only", "conduction through the wall"], 1,
     "The air beside the radiator warms, rises and circulates, carrying heat across the room."),
]
