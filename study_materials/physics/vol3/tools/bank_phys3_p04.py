"""Chapter 4 paper bank — calorimetry, latent heat and vapours."""

PAPER_4 = [
    ("The heat needed to raise the temperature of 1 kg of a substance by 1 K is its",
     ["heat capacity", "specific heat capacity", "specific latent heat", "internal energy"], 1,
     "Per kilogram per kelvin, the quantity is the specific heat capacity, in J kg⁻¹ K⁻¹."),

    ("The specific heat capacity of water is",
     ["42 J kg⁻¹ K⁻¹", "420 J kg⁻¹ K⁻¹", "4200 J kg⁻¹ K⁻¹", "42 000 J kg⁻¹ K⁻¹"], 2,
     "4200 J kg⁻¹ K⁻¹, or 4.2 J g⁻¹ K⁻¹ — the largest of the common substances in the syllabus."),

    ("The heat needed to raise 0.25 kg of water by 40 K is",
     ["4.2 × 10³ J", "4.2 × 10⁴ J", "4.2 × 10⁵ J", "4.2 × 10⁶ J"], 1,
     "$Q = 0.25 times 4200 times 40 = 4.2 times 10^4$ J."),

    ("The heat given out when 0.40 kg of water cools from 70 °C to 30 °C is",
     ["6.7 × 10³ J", "6.7 × 10⁴ J", "1.7 × 10⁵ J", "2.4 × 10⁵ J"], 1,
     "$Q = 0.40 times 4200 times 40 = 6.72 times 10^4$ J."),

    ("Water is used as a coolant in car engines because",
     ["it has a low specific heat capacity", "it has a high specific heat capacity", "it freezes at 0 °C", "it is cheap and colourless only"], 1,
     "A high specific heat capacity means it absorbs a lot of heat for a small rise in temperature."),

    ("During melting at the melting point, the heat supplied",
     ["raises the temperature", "breaks the bonds holding the solid together", "is lost to the surroundings", "increases the pressure"], 1,
     "The energy changes the state rather than the temperature, which is why the thermometer does not move."),

    ("The specific latent heat of fusion of ice is",
     ["3.34 × 10³ J kg⁻¹", "3.34 × 10⁴ J kg⁻¹", "3.34 × 10⁵ J kg⁻¹", "2.26 × 10⁶ J kg⁻¹"], 2,
     "3.34 × 10⁵ J kg⁻¹ — about 334 kJ to melt one kilogram."),

    ("The specific latent heat of vaporisation of water is",
     ["3.34 × 10⁵ J kg⁻¹", "2.26 × 10⁵ J kg⁻¹", "2.26 × 10⁶ J kg⁻¹", "4.2 × 10³ J kg⁻¹"], 2,
     "2.26 × 10⁶ J kg⁻¹, roughly seven times the latent heat of fusion."),

    ("The heat needed to melt 0.25 kg of ice at 0 °C is",
     ["8.4 × 10³ J", "8.4 × 10⁴ J", "8.4 × 10⁵ J", "5.7 × 10⁵ J"], 1,
     "$Q = 0.25 times 3.34 times 10^5 = 8.35 times 10^4$ J."),

    ("The heat needed to convert 0.50 kg of water at 100 °C into steam at 100 °C is",
     ["1.1 × 10⁵ J", "2.3 × 10⁵ J", "1.1 × 10⁶ J", "2.3 × 10⁶ J"], 2,
     "$Q = 0.50 times 2.26 times 10^6 = 1.13 times 10^6$ J."),

    ("Steam at 100 °C scalds more severely than water at 100 °C because the steam",
     ["is hotter", "gives up its latent heat as it condenses on the skin", "has a lower specific heat capacity", "evaporates quickly"], 1,
     "Condensing releases 2.26 MJ per kilogram in addition to the heat the water itself carries."),

    ("The latent heat of vaporisation is larger than the latent heat of fusion because",
     ["boiling happens at a higher temperature", "boiling separates the molecules completely", "steam has a larger volume", "water has a large specific heat capacity"], 1,
     "Melting only loosens the lattice; boiling must pull the molecules apart and push them out of the liquid."),

    ("The principle of the method of mixtures is that, in an insulated vessel,",
     ["heat lost by the hot body equals heat gained by the cold body and calorimeter", "the heat lost is greater than the heat gained", "the temperatures become equal to the room temperature", "the hot body gains heat"], 0,
     "That equality is the principle. The calorimeter is part of the cold side because it warms up with the water."),

    ("The heat capacity of a calorimeter is included in a calculation because",
     ["it changes the mass of water", "the can and stirrer also warm up", "it changes the specific heat of water", "it insulates the mixture"], 1,
     "The can absorbs heat alongside the water, so its heat capacity appears beside $m_w c_w$ on the gained side."),

    ("Ignoring the heat capacity of the calorimeter makes the calculated specific heat capacity of a hot solid",
     ["too high", "too low", "exactly right", "zero"], 0,
     "The gained side is then under-read, so the heat lost is underestimated and the solid's $c$ is inflated."),

    ('0.10 kg of copper at 100 °C is placed in 0.20 kg of water at 20 °C (calorimeter negligible). Taking $c_"Cu" = 400$ and $c_w = 4200$ J kg⁻¹ K⁻¹, the final temperature is about',
     ["22 °C", "24 °C", "31 °C", "45 °C"], 1,
     "$40(100 - theta) = 840(theta - 20)$ gives $880 theta = 20\,800$, so $theta approx 24$ °C."),

    ("Two litres of water at 20 °C are mixed with one litre at 80 °C. The final temperature is",
     ["40 °C", "50 °C", "60 °C", "70 °C"], 0,
     "Equal substances: the final temperature is the mass-weighted mean, $((2 times 20) + (1 times 80))\/3 = 40$ °C."),

    ("An electric heater of 1.0 kW raises 3.0 kg of water from 20 °C to 60 °C. Ignoring losses, the time is about",
     ["2 minutes", "8 minutes", "20 minutes", "80 minutes"], 1,
     "$Q = 3.0 times 4200 times 40 = 5.04 times 10^5$ J and $t = 504$ s $approx 8.4$ min."),

    ("A 2.0 kW kettle heats 1.5 kg of water from 20 °C to 100 °C. Ignoring losses, the time is",
     ["about 4 minutes", "about 8 minutes", "about 12 minutes", "about 25 minutes"], 0,
     "$Q = 1.5 times 4200 times 80 = 5.04 times 10^5$ J and $t = 252$ s $approx 4.2$ min."),

    ("On a heating curve, a horizontal section indicates",
     ["a change of state", "a rise in temperature", "a fall in internal energy", "an error in the experiment"], 0,
     "A plateau is where heat goes into changing the state at constant temperature."),

    ("For water at atmospheric pressure, the plateaus on the heating curve occur at",
     ["−10 °C and 0 °C", "0 °C and 100 °C", "4 °C and 100 °C", "100 °C and 200 °C"], 1,
     "Melting at 0 °C and boiling at 100 °C."),

    ("The second plateau of the water heating curve is longer than the first because",
     ["the specific heat of steam is larger", "the latent heat of vaporisation is larger than that of fusion", "steam is a gas", "the temperature is higher"], 1,
     "At the same heating rate, the length of the plateau is proportional to the latent heat."),

    ("Evaporation differs from boiling in that evaporation",
     ["happens only at the boiling point", "happens at any temperature and only from the surface", "needs more energy per kilogram", "does not cool the liquid"], 1,
     "Evaporation is a surface process at any temperature; boiling is throughout the liquid at a fixed temperature."),

    ("A liquid boils when its saturated vapour pressure",
     ["is zero", "equals the external pressure", "equals its density", "is less than the external pressure"], 1,
     "That equality is the definition, and it is why the boiling point depends on the outside pressure."),

    ("Water boils below 100 °C on a mountain because",
     ["the air is thinner and conducts less", "the atmospheric pressure is lower", "water is less dense at altitude", "the latent heat is smaller"], 1,
     "A lower external pressure is reached by the vapour at a lower temperature."),

    ("A pressure cooker cooks faster because",
     ["higher pressure raises the boiling point above 100 °C", "the food is sealed from air", "steam has a larger specific heat", "the pressure lowers the boiling point"], 0,
     "Water inside boils at perhaps 120 °C, so the food cooks at a higher temperature."),

    ("Saturated vapour pressure depends on",
     ["the volume above the liquid", "the temperature only", "the mass of liquid", "the shape of the vessel"], 1,
     "At a given temperature it is fixed for a given liquid; changing the volume changes the amount of vapour, not the pressure."),

    ("Relative humidity is the ratio of",
     ["actual vapour pressure to saturated vapour pressure", "saturated vapour pressure to actual vapour pressure", "mass of vapour to mass of air", "dew point to boiling point"], 0,
     "Expressed as a percentage, it compares what the air holds with the most it could hold at that temperature."),

    ("The dew point is the temperature at which",
     ["water freezes", "the air becomes saturated", "humidity is zero", "the pressure is one atmosphere"], 1,
     "Cool the air until the actual vapour pressure reaches the saturated value and condensation begins."),

    ("Wet clothes dry faster on a windy day because",
     ["the wind raises the temperature", "moving air carries the vapour away", "wind makes the cloth thinner", "wind increases the latent heat"], 1,
     "Evaporation continues while the air just above the cloth is unsaturated; wind keeps replacing that layer."),

    ("Sweating cools the body because",
     ["sweat is colder than the skin", "evaporation absorbs latent heat from the skin", "sweat conducts heat away", "sweat is a good radiator"], 1,
     "The escaping molecules carry energy with them, lowering the average kinetic energy of what remains."),

    ("The heat needed to convert 0.20 kg of ice at 0 °C into water at 20 °C is about",
     ["1.7 × 10⁴ J", "8.4 × 10⁴ J", "1.0 × 10⁵ J", "4.5 × 10⁵ J"], 1,
     "Melt: $0.20 times 3.34 times 10^5 = 6.68 times 10^4$ J. Warm: $0.20 times 4200 times 20 = 1.68 times 10^4$ J. Total $approx 8.4 times 10^4$ J."),

    ("Water at 0 °C compared with the same mass of ice at 0 °C contains",
     ["more internal energy", "less internal energy", "the same internal energy", "no internal energy"], 0,
     "The ice must absorb the latent heat of fusion to become water at the same temperature, so the water holds that extra energy."),

    ("Which quantity is *not* needed to find the heat needed to warm a body?",
     ["its mass", "its specific heat capacity", "the temperature rise", "its volume"], 3,
     "$Q = m c Delta theta$ uses mass, specific heat capacity and temperature rise. Volume does not appear."),

    ("The specific heat capacity of a metal is measured by the method of mixtures using",
     ["a thermometer and a ruler", "a calorimeter with water, a thermometer and a balance", "a voltmeter and an ammeter only", "a barometer"], 1,
     "The mass of the metal, its temperature, the mass of water and the final temperature are all measured."),

    ("The main source of error in a school calorimetry experiment is",
     ["the balance", "heat exchange with the surroundings", "the mass of the stirrer", "the size of the calorimeter"], 1,
     "Heat leaks in or out throughout the experiment, which is why the calorimeter is insulated and the mixing is quick."),

    ("A liquid that does not wet glass is preferred in a thermometer because",
     ["it does not stick to the walls of the tube", "it expands less", "it is lighter", "it freezes at a lower temperature"], 0,
     "A non-wetting liquid leaves a clean meniscus that moves freely and can be read accurately."),

    ("The latent heat of a substance is the heat needed to",
     ["raise its temperature by 1 K", "change 1 kg of it from one state to another at constant temperature", "raise 1 g of it by 1 °C", "change its pressure"], 1,
     "The change of state happens at constant temperature, which is why the energy is called latent — hidden."),

    ("Two identical kettles hold equal masses of water and of paraffin. Heating both at the same rate, the paraffin reaches boiling point sooner because",
     ["paraffin has a smaller specific heat capacity", "paraffin boils at a higher temperature", "paraffin loses less heat", "paraffin has a larger latent heat"], 0,
     "A smaller $c$ means less energy per kelvin, so the same power gives a faster rise."),

    ("A block of ice at −10 °C is warmed to 0 °C, then melted. The energy needed to warm it is smaller than the energy needed to melt it because",
     ["the specific heat of ice is smaller", 'the latent heat of fusion is much larger than $c_"ice" times 10$ K', "ice is denser than water", "the ice loses no heat"], 1,
     "$2100 times 10 = 2.1 times 10^4$ J kg⁻¹ against $3.34 times 10^5$ J kg⁻¹ for melting — a factor of about 15."),
]
