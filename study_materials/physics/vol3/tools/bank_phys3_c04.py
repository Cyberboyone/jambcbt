"""Chapter 4 drill bank — calorimetry, latent heat and vapours."""

DRILL_4 = [
    ("The heat needed to raise the temperature of 0.50 kg of water from 20 °C to 80 °C is",
     ["6.3 × 10³ J", "1.26 × 10⁵ J", "2.52 × 10⁵ J", "1.26 × 10⁶ J"], 1,
     "$Q = m c Delta theta = 0.50 times 4200 times 60 = 1.26 times 10^5$ J. The temperature change is 60 K, not 80."),

    ("The specific heat capacity of a substance is the heat needed to raise the temperature of",
     ["the whole body by 1 K", "1 kg of it by 1 K", "1 g of it by 1 °C", "1 mole of it by 1 K"], 1,
     "It is per kilogram per kelvin, in J kg⁻¹ K⁻¹. Heat capacity is the whole-body figure; specific heat capacity is per kilogram."),

    ("The unit of specific heat capacity is",
     ["J K⁻¹", "J kg⁻¹", "J kg⁻¹ K⁻¹", "W m⁻¹ K⁻¹"], 2,
     "$c = Q\/(m Delta theta)$, so the unit is J divided by kg and by K. J K⁻¹ is the unit of heat capacity, not of specific heat capacity."),

    ("The heat capacity of a body is",
     ["the heat needed to raise its temperature by 1 K", "the heat needed to melt it", "its mass times its temperature", "the same for all bodies of equal mass"], 0,
     "$C = Q\/Delta theta$, in J K⁻¹. Two bodies of equal mass but different materials have different heat capacities."),

    ("Water is a good coolant because",
     ["it has a low specific heat capacity", "it has a high specific heat capacity", "it boils at a low temperature", "it is transparent"], 1,
     "$c = 4200$ J kg⁻¹ K⁻¹ is unusually high, so a kilogram of water carries away a lot of heat for a small rise in temperature."),

    ("During melting, the temperature of a pure substance",
     ["rises steadily", "falls", "stays constant", "rises and then falls"], 2,
     "The energy supplied goes into breaking the bonds of the solid, not into increasing the kinetic energy of the particles — so the thermometer does not move until the melting is complete."),

    ("The specific latent heat of fusion of ice is",
     ["3.34 × 10⁴ J kg⁻¹", "3.34 × 10⁵ J kg⁻¹", "2.26 × 10⁶ J kg⁻¹", "4.2 × 10³ J kg⁻¹"], 1,
     "$3.34 times 10^5$ J kg⁻¹, about 334 kJ to melt a kilogram. The 2.26 × 10⁶ figure is the latent heat of vaporisation."),

    ("The heat needed to melt 0.20 kg of ice at 0 °C is",
     ["6.7 × 10³ J", "6.7 × 10⁴ J", "6.7 × 10⁵ J", "2.3 × 10⁶ J"], 1,
     "$Q = m L_f = 0.20 times 3.34 times 10^5 = 6.68 times 10^4$ J, about 67 kJ."),

    ("The heat needed to boil away 0.10 kg of water already at 100 °C is",
     ["3.3 × 10⁴ J", "2.26 × 10⁵ J", "4.2 × 10⁵ J", "2.26 × 10⁶ J"], 1,
     "$Q = m L_v = 0.10 times 2.26 times 10^6 = 2.26 times 10^5$ J. Only the latent heat is needed, because the water is already at the boiling point."),

    ("The latent heat of vaporisation of water is much larger than the latent heat of fusion because",
     ["steam is hotter than water", "boiling has to separate the molecules completely", "ice has a larger volume than water", "the boiling point is higher than the melting point"], 1,
     "Melting only loosens the lattice; boiling must pull the molecules apart entirely and push them out of the liquid. The difference in energy is about a factor of seven."),

    ("Steam at 100 °C causes a worse scald than water at 100 °C because",
     ["steam is at a higher temperature", "steam gives up its latent heat as it condenses on the skin", "steam has a higher specific heat capacity", "water evaporates too quickly to transfer heat"], 1,
     "The steam condenses on the skin and releases $2.26 times 10^6$ J per kilogram on top of the heat the water itself carries."),

    ("In an insulated calorimeter, the heat lost by a hot body is",
     ["greater than the heat gained by the cold body", "equal to the heat gained by the cold body and the calorimeter", "less than the heat gained by the cold body", "independent of the calorimeter"], 1,
     "That is the principle of mixtures. The calorimeter is part of the cold side, because it warms up with the water."),

    ("The heat capacity of the calorimeter is ignored in a quick experiment. The specific heat capacity calculated for the hot solid will then be",
     ["too high", "too low", "exactly right", "zero"], 0,
     "The calculated heat gained is smaller than it really was, so the solid is credited with less heat lost, and its specific heat capacity comes out too high. Under-reading the gained side inflates the answer."),

    ('A 0.20 kg copper block at 100 °C is dropped into 0.30 kg of water at 20 °C (calorimeter negligible, $c_"Cu" = 400$, $c_w = 4200$). The final temperature is about',
     ["20 °C", "22 °C", "25 °C", "60 °C"], 2,
     "$80(100 - theta) = 1260(theta - 20)$ gives $1380 theta = 33\,200$ and $theta approx 24$ °C, or 24.6 °C once the calorimeter's 40 J K⁻¹ is included."),

    ("A 500 W heater raises 2.0 kg of water from 20 °C to 60 °C. Ignoring losses, the time taken is",
     ["about 1.1 minutes", "about 11 minutes", "about 110 minutes", "about 11 seconds"], 1,
     "$Q = 2.0 times 4200 times 40 = 3.36 times 10^5$ J and $t = Q\/P = 672$ s, about 11 minutes."),

    ("In a heating curve for water, the first plateau occurs at",
     ["0 °C", "4 °C", "100 °C", "−10 °C"], 0,
     "The plateau at 0 °C is melting. The second, at 100 °C, is boiling. A flat stretch is a change of state."),

    ("The second plateau on the heating curve of water is longer than the first because",
     ["water has a higher specific heat capacity", "the latent heat of vaporisation is larger than the latent heat of fusion", "the temperature is higher", "steam is a gas"], 1,
     "At the same rate of heating, the length of the plateau is proportional to the latent heat. Vaporisation needs about 2.26 MJ per kilogram against 0.334 MJ for fusion."),

    ("20 g of ice at 0 °C is added to 100 g of water at 40 °C in a calorimeter of heat capacity 10 J K⁻¹. The final temperature is about",
     ["10 °C", "19.5 °C", "30 °C", "40 °C"], 1,
     "The water and calorimeter can give 17 200 J; melting takes 6680 J, leaving 10 520 J for 514 J K⁻¹ of mixture, which is a further 20.5 K, so the final temperature is about 19.5 °C."),

    ("Evaporation differs from boiling in that evaporation",
     ["occurs only at the boiling point", "occurs at any temperature, from the surface", "needs more energy per kilogram", "does not absorb latent heat"], 1,
     "Evaporation happens at any temperature and only at the surface; boiling happens throughout the liquid at one temperature."),

    ("A liquid boils when",
     ["its temperature reaches 100 °C", "its saturated vapour pressure equals the external pressure", "it starts to evaporate", "its density falls"], 1,
     "That is the definition, and it is why the boiling point depends on the outside pressure rather than on the liquid alone."),

    ("Water on a mountain top boils below 100 °C because",
     ["the air is colder", "the atmospheric pressure is lower", "water is less dense at altitude", "the latent heat is smaller there"], 1,
     "A lower outside pressure is reached by the vapour at a lower temperature, so boiling begins sooner. Food cooks more slowly as a result."),

    ("A pressure cooker cooks food faster because",
     ["the pressure inside is higher, so water boils above 100 °C", "the pressure inside is lower", "the food is sealed from the air", "steam has a higher specific heat capacity"], 0,
     "Higher pressure raises the boiling point, and the food is cooked by water at perhaps 120 °C instead of 100 °C."),

    ("Saturated vapour pressure depends on",
     ["the volume of the space above the liquid", "the temperature only", "the mass of liquid present", "the shape of the container"], 1,
     "At a given temperature the s.v.p. is fixed for a given liquid. Changing the volume changes the amount of vapour, not the pressure."),

    ("Relative humidity is",
     ["the mass of water vapour in the air", "the actual vapour pressure divided by the saturated vapour pressure, as a percentage", "the dew point in °C", "the boiling point of water that day"], 1,
     "It compares what the air actually holds with the most it could hold at that temperature. At 100 % the air is saturated and the dew point equals the air temperature."),

    ("The dew point is the temperature at which",
     ["water freezes", "the air becomes saturated and dew forms", "humidity is zero", "the vapour pressure is zero"], 1,
     "Cool the air until its actual vapour pressure equals the saturated value, and condensation begins — that temperature is the dew point."),

    ("Wet clothes dry faster on a windy day because",
     ["the wind raises the temperature", "the moving air carries the vapour away, keeping the air near the cloth unsaturated", "wind increases the latent heat", "the cloth becomes lighter"], 1,
     "Evaporation continues only while the air just above the surface is not saturated. Wind replaces that layer, so the rate stays high."),

    ("Sweating cools the body because",
     ["sweat is colder than the skin", "evaporation absorbs latent heat from the skin", "sweat conducts heat away", "sweat radiates heat"], 1,
     "The molecules that escape carry energy with them, so the average kinetic energy — and therefore the temperature — of what is left falls."),

    ('50 g of ice at −10 °C is added to 200 g of water at 30 °C. Taking $c_"ice" = 2100$, $L_"f" = 3.34 times 10^5$ and $c_w = 4200$ J kg⁻¹ K⁻¹, the final temperature is about',
     ["0 °C", "12 °C", "24 °C", "30 °C"], 2,
     "Warming and melting the ice takes 17 750 J of the 25 200 J available; the mixture then settles at about 24 °C, since the remaining water is four times the mass of the melted ice."),

    ("The heat needed to turn 0.10 kg of ice at 0 °C into water at 0 °C is",
     ["4.2 × 10³ J", "3.34 × 10⁴ J", "3.34 × 10⁵ J", "2.26 × 10⁶ J"], 1,
     "$Q = 0.10 times 3.34 times 10^5 = 3.34 times 10^4$ J. No temperature change occurs, so only the latent heat term appears."),

    ("The heat needed to turn 0.10 kg of ice at 0 °C into steam at 100 °C is about",
     ["3.3 × 10⁴ J", "3.0 × 10⁵ J", "3.0 × 10⁶ J", "2.6 × 10⁶ J"], 1,
     "Three terms: melt (3.34 × 10⁴ J), warm the water through 100 K (4.2 × 10⁴ J) and boil (2.26 × 10⁵ J), giving about $3.0 times 10^5$ J. The boiling term dominates, so an answer near 2.3 × 10⁵ J is the one to expect."),

    ("Two identical calorimeters hold equal masses of water, one at 20 °C and one at 40 °C. They are mixed. The final temperature is",
     ["20 °C", "25 °C", "30 °C", "40 °C"], 2,
     "Equal masses of the same liquid settle at the mean: $(20 + 40)\/2 = 30$ °C. The specific heat capacity cancels."),

    ("100 g of water at 60 °C is mixed with 300 g of water at 20 °C. The final temperature is",
     ["25 °C", "30 °C", "35 °C", "40 °C"], 1,
     "The masses are in the ratio 1 : 3, so the final temperature is three-quarters of the way from 60 to 20: $60 - 0.75 times 40 = 30$ °C."),

    ("The specific heat capacity of water is 4200 J kg⁻¹ K⁻¹. In J g⁻¹ K⁻¹ this is",
     ["0.42", "4.2", "42", "42 000"], 1,
     "Divide by 1000: 4200 J kg⁻¹ K⁻¹ = 4.2 J g⁻¹ K⁻¹. Mixing the two forms is a common source of answers a thousand times out."),

    ("A body of mass 2.0 kg and specific heat capacity 500 J kg⁻¹ K⁻¹ has a heat capacity of",
     ["250 J K⁻¹", "1000 J K⁻¹", "500 J K⁻¹", "2000 J K⁻¹"], 1,
     "$C = m c = 2.0 times 500 = 1000$ J K⁻¹."),

    ("Latent heat is called *latent* because",
     ["it is hidden — the temperature does not change while it is supplied", "it is very small", "it only exists in gases", "it cannot be measured"], 0,
     "The word means hidden: the energy goes in and the thermometer does not respond, because it is being used to change the state rather than to raise the temperature."),

    ("Water at 0 °C and ice at 0 °C are at the same temperature. The ice contains",
     ["the same internal energy as the water", "more internal energy than the water", "less internal energy than the water", "no internal energy"], 2,
     "The ice must absorb latent heat to become water at the same temperature, so the water has the extra energy. That is why ice at 0 °C cools a drink better than water at 0 °C."),

    ("In a calorimetry experiment the mixture is stirred continuously in order to",
     ["increase the heat capacity", "make the temperature uniform before it is read", "slow the cooling", "add heat to the system"], 1,
     "Stirring equalises the temperature through the liquid, so that the thermometer reads the temperature of the whole mixture and not just of the layer beside it."),

    ("Heat is lost to the room during a mixture experiment and is not allowed for. The specific heat capacity calculated for the hot solid will then be",
     ["too high", "too low", "exactly right", "negative"], 1,
     "Less heat reaches the water than the solid really lost, so the gained side is under-read and the solid is credited with too little heat loss — the calculated $c$ comes out too low. Ignoring the calorimeter's heat capacity does the opposite: that omission makes $c$ too high."),

    ("Which statement about the heating of ice from −20 °C to steam at 120 °C is correct?",
     ["the temperature rises continuously throughout", "there are two plateaus and three rising sections", "there is one plateau", "the temperature falls in the middle"], 1,
     "Ice warms, melts at 0 °C (plateau), water warms, boils at 100 °C (plateau), steam warms. Two plateaus, three rising sections."),

    ("A calorimeter of heat capacity 20 J K⁻¹ contains 0.20 kg of water at 20 °C. A 0.10 kg metal block at 100 °C is added and the mixture settles at 24 °C. The specific heat capacity of the metal is about",
     ["220 J kg⁻¹ K⁻¹", "460 J kg⁻¹ K⁻¹", "900 J kg⁻¹ K⁻¹", "4200 J kg⁻¹ K⁻¹"], 1,
     "Gained: $(0.20 times 4200 + 20)(4) = 3440$ J. Lost by the block: $0.10 times c times 76$, so $c = 3440\/7.6 approx 453$ J kg⁻¹ K⁻¹ — which is iron. A value near 900 would mean aluminium, and 4200 would mean the block was water."),
]
