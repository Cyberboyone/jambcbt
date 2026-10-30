"""Chapter 2 drill bank — expansion of solids, liquids and gases."""

DRILL_2 = [
    ("The unit of linear expansivity is",
     ["m", "m K⁻¹", "K⁻¹", "m² K⁻¹"], 2,
     "$alpha = Delta L \/(L_0 Delta theta)$ is a length divided by a length and a temperature, so it has the unit K⁻¹. It is a *fractional* change per kelvin."),

    ("A steel rod is 2.0 m long at 0 °C and $alpha = 1.2 times 10^(-5)$ K⁻¹. Heated to 100 °C it lengthens by",
     ["0.24 mm", "1.2 mm", "2.4 mm", "24 mm"], 2,
     "$Delta L = alpha L_0 Delta theta = 1.2 times 10^(-5) times 2.0 times 100 = 2.4 times 10^(-3)$ m $= 2.4$ mm."),

    ("The coefficient of superficial expansion of a solid of linear expansivity $alpha$ is",
     ["$alpha$", "$2 alpha$", "$3 alpha$", "$alpha \/ 2$"], 1,
     "A surface grows in two perpendicular directions, so its fractional area change is twice the fractional length change: $2 alpha$."),

    ("The coefficient of cubic expansion of a solid of linear expansivity $alpha$ is",
     ["$alpha$", "$2 alpha$", "$3 alpha$", "$9 alpha$"], 2,
     "A volume grows in three directions, giving $3 alpha$. The rule is “count the dimensions” — 1, 2, 3 — not “square or cube the coefficient”."),

    ("A brass rod 1.5 m long is heated through 50 K. Taking $alpha = 1.9 times 10^(-5)$ K⁻¹, its increase in length is",
     ["0.14 mm", "1.4 mm", "14 mm", "140 mm"], 1,
     "$Delta L = 1.9 times 10^(-5) times 1.5 times 50 = 1.4 times 10^(-3)$ m $= 1.4$ mm. About a millimetre in a metre and a half — the size of expansion in ordinary laboratory work."),

    ("A metal plate of area 400 cm² is heated through 50 K. If $alpha = 1.0 times 10^(-5)$ K⁻¹, the increase in area is",
     ["0.20 cm²", "0.40 cm²", "0.80 cm²", "4.0 cm²"], 1,
     "$Delta A = 2 alpha A_0 Delta theta = 2 times 1.0 times 10^(-5) times 400 times 50 = 0.40$ cm². Forgetting the factor 2 halves the answer — the commonest slip in the area questions."),

    ("A cube of side 10 cm is heated through 100 K. If $alpha = 1.2 times 10^(-5)$ K⁻¹, the increase in volume is",
     ["1.2 cm³", "3.6 cm³", "12 cm³", "36 cm³"], 1,
     "$V_0 = 1000$ cm³, so $Delta V = 3 alpha V_0 Delta theta = 3 times 1.2 times 10^(-5) times 1000 times 100 = 3.6$ cm³."),

    ("Water has its greatest density at",
     ["0 °C", "4 °C", "10 °C", "100 °C"], 1,
     "Water contracts as it is warmed from 0 °C to 4 °C and expands above 4 °C, so the density peaks at 4 °C. This is the anomalous expansion of water."),

    ("Between 0 °C and 4 °C, water",
     ["expands as it is warmed", "contracts as it is warmed", "keeps the same volume", "boils"], 1,
     "It contracts — the only liquid in the syllabus that does. Above 4 °C it expands normally, which is why 4 °C is a maximum of density rather than a minimum."),

    ("A pond freezes from the surface downwards because",
     ["ice is denser than water", "water at 4 °C is densest, so colder water stays on top", "ice is a good conductor of heat", "water expands between 0 °C and 4 °C only when stirred"], 1,
     "Below 4 °C water becomes less dense, so the coldest water floats and freezes first. The ice then insulates the water beneath it."),

    ("A water pipe bursts in frost because",
     ["water expands when it freezes", "water contracts when it freezes", "the pipe metal contracts", "the pressure outside falls"], 0,
     "Ice is about nine per cent less dense than the water it formed from, so trapped water expands as it freezes and splits the pipe."),

    ("The real expansivity of a liquid is always",
     ["smaller than the apparent expansivity", "equal to the apparent expansivity", "larger than the apparent expansivity", "independent of the container"], 2,
     "$gamma_\"real\" = gamma_\"app\" + 3 alpha_\"vessel\"$. The vessel grows too, so the stem shows less than the liquid has actually expanded."),

    ("A glass vessel has $alpha = 9.0 times 10^(-6)$ K⁻¹. The coefficient $3 alpha$ for the glass is",
     ["2.7 × 10⁻⁵ K⁻¹", "9.0 × 10⁻⁶ K⁻¹", "1.8 × 10⁻⁵ K⁻¹", "2.7 × 10⁻⁶ K⁻¹"], 0,
     "$3 times 9.0 times 10^(-6) = 2.7 times 10^(-5)$ K⁻¹. This is the figure subtracted from the real expansion to give the apparent one."),

    ("The apparent expansivity of a liquid in a glass vessel is $2.0 times 10^(-4)$ K⁻¹ and $3 alpha$ for the glass is $2.7 times 10^(-5)$ K⁻¹. The real expansivity is",
     ["$1.7 times 10^(-4)$ K⁻¹", "$2.0 times 10^(-4)$ K⁻¹", "$2.3 times 10^(-4)$ K⁻¹", "$4.7 times 10^(-4)$ K⁻¹"], 2,
     "$gamma_\"real\" = 2.0 times 10^(-4) + 2.7 times 10^(-5) = 2.27 times 10^(-4) approx 2.3 times 10^(-4)$ K⁻¹. The correction is added, never subtracted."),

    ("A liquid of real expansivity $1.5 times 10^(-4)$ K⁻¹ is held in a vessel with $3 alpha = 2.7 times 10^(-5)$ K⁻¹. Its apparent expansivity is",
     ["$1.2 times 10^(-4)$ K⁻¹", "$1.5 times 10^(-4)$ K⁻¹", "$1.8 times 10^(-4)$ K⁻¹", "$2.7 times 10^(-5)$ K⁻¹"], 0,
     "$gamma_\"app\" = gamma_\"real\" - 3 alpha = 1.5 times 10^(-4) - 2.7 times 10^(-5) = 1.23 times 10^(-4)$ K⁻¹, about $1.2 times 10^(-4)$."),

    ("When a liquid is heated in a container, the level in the stem rises less than the real expansion of the liquid because",
     ["the liquid evaporates", "the container expands and makes room", "the liquid's mass falls", "the stem itself contracts"], 1,
     "The vessel's volume grows, so part of the liquid's expansion simply fills the enlarged container instead of climbing the stem."),

    ("Railway lines are laid with small gaps between the rails because",
     ["the rails contract in winter and need room", "the rails expand in the heat and would buckle", "the gaps make the train quieter", "the rails are shorter than they look"], 1,
     "A clamped rail with no room to expand buckles sideways. The gap is sized from $alpha L Delta theta$ for the hottest day the line will see."),

    ("Rollers are placed under the ends of a bridge deck so that",
     ["the deck can expand and contract freely", "the deck is easier to paint", "the bridge is lighter", "the deck cannot vibrate"], 0,
     "A long steel deck changes length by centimetres between winter and summer; the rollers let it move instead of cracking the abutments."),

    ("A bimetallic strip made of brass and iron is heated. It bends with",
     ["brass on the outside of the curve", "iron on the outside of the curve", "no bending at all", "both metals on the same side"], 0,
     "Brass has the larger expansivity, so the brass side becomes longer and forms the outer, longer arc. On cooling the curvature reverses."),

    ("A bimetallic strip is used in a thermostat because",
     ["it is cheap", "it bends at a fixed temperature and can open or close a contact", "it melts at a known temperature", "it conducts heat poorly"], 1,
     "The curvature depends only on the temperature, so the strip can be made to break a circuit at a chosen setting. That is a thermostat, and the same strip is a fire alarm if it is set high."),

    ("A rod of length 1.0 m expands by 1.2 mm when its temperature rises by 50 K. Its linear expansivity is",
     ["1.2 × 10⁻⁵ K⁻¹", "2.4 × 10⁻⁵ K⁻¹", "6.0 × 10⁻⁵ K⁻¹", "1.2 × 10⁻⁴ K⁻¹"], 1,
     "$alpha = Delta L \/(L_0 Delta theta) = 1.2 times 10^(-3) \/ (1.0 times 50) = 2.4 times 10^(-5)$ K⁻¹. Convert the millimetres to metres first."),

    ("A steel tape is correct at 20 °C. In a room at 40 °C, a length of 50.000 m measured with it will",
     ["be slightly more than 50 m", "be slightly less than 50 m", "be exactly 50 m", "depend on the humidity"], 0,
     "The tape has grown, so each of its divisions is longer than it should be and the measured length is longer than the true length. The error is $alpha L Delta theta$, about 12 mm here."),

    ("All gases at constant pressure expand by the same fraction of their volume per kelvin, equal to",
     ["1/100 K⁻¹", "1/273 K⁻¹", "1/373 K⁻¹", "1/1000 K⁻¹"], 1,
     "$1\/273$ K⁻¹. The number is the reciprocal of the kelvin offset, which is why every gas curve meets the temperature axis at −273 °C."),

    ("A gas occupies 300 cm³ at 27 °C. At constant pressure, its volume at 327 °C is",
     ["150 cm³", "300 cm³", "600 cm³", "900 cm³"], 2,
     "Convert first: 300 K and 600 K. At constant pressure $V prop T$, so doubling the kelvin temperature doubles the volume: 600 cm³. Using 27 and 327 directly gives nonsense."),

    ("A gas at 0 °C is warmed to 273 °C at constant pressure. Its volume becomes",
     ["half its original value", "the same", "twice its original value", "four times its original value"], 2,
     "0 °C is 273 K and 273 °C is 546 K, so the kelvin temperature doubles and the volume doubles with it."),

    ("The volume of a fixed mass of gas at constant pressure is plotted against its Celsius temperature. The graph is a straight line that cuts the temperature axis at",
     ["0 °C", "−100 °C", "−273 °C", "+273 °C"], 2,
     "The line extrapolates to zero volume at −273 °C, which is absolute zero. That extrapolation is the experimental case for the kelvin scale."),

    ("A liquid is heated in a glass flask and the level is seen to fall at first. The reason is that",
     ["the liquid contracts", "the flask expands before the liquid does", "the liquid is evaporating", "the thermometer is faulty"], 1,
     "Glass conducts heat to its own walls before the whole body of liquid is warm, so the container grows first and the level drops. It rises again once the liquid catches up."),

    ("Which quantity is *not* needed to calculate the expansion of a metal rod?",
     ["its original length", "its linear expansivity", "the rise in temperature", "its mass"], 3,
     "Expansion depends on length, material and temperature change. Mass does not enter $Delta L = alpha L_0 Delta theta$ at all."),

    ("Two rods of the same length, one of steel and one of brass, are heated through the same temperature rise. The brass rod",
     ["expands more, because brass has the larger expansivity", "expands less, because brass is softer", "expands by the same amount", "contracts"], 0,
     "Brass has $alpha = 1.9 times 10^(-5)$ K⁻¹ against steel's $1.2 times 10^(-5)$ K⁻¹, so the brass rod expands by about half as much again."),

    ("Water is not used as a thermometric liquid partly because",
     ["it freezes at too high a temperature", "its expansion between 0 °C and 4 °C is anomalous", "it is too expensive", "it expands too little"], 1,
     "An anomalous expansion means one reading would correspond to two temperatures. Water also wets glass and is colourless, both of which make it hard to read."),

    ("A glass bottle is filled to the brim with water at 0 °C and warmed to 4 °C. The water",
     ["overflows", "contracts below the brim", "stays exactly at the brim", "freezes"], 1,
     "Between 0 °C and 4 °C water contracts, and its contraction is much larger than the bottle's expansion, so the level falls below the brim."),

    ("The density of a liquid when its temperature rises",
     ["increases", "decreases", "stays the same", "first decreases then increases"], 1,
     "Mass is fixed while the volume grows, so $rho = m\/V$ falls. Expansion and falling density are the same fact seen twice."),

    ("A solid of volume 500 cm³ and $alpha = 2.0 times 10^(-5)$ K⁻¹ is cooled through 50 K. Its change in volume is",
     ["−0.75 cm³", "−1.5 cm³", "−3.0 cm³", "+1.5 cm³"], 1,
     "$Delta V = 3 alpha V_0 Delta theta = 3 times 2.0 times 10^(-5) times 500 times (-50) = -1.5$ cm³: it contracts by 1.5 cm³."),

    ("A steel rail expands by 7.2 mm when heated through 30 K. If $alpha = 1.2 times 10^(-5)$ K⁻¹, its original length was",
     ["10 m", "20 m", "30 m", "40 m"], 1,
     "$L_0 = Delta L \/(alpha Delta theta) = 7.2 times 10^(-3) \/ (1.2 times 10^(-5) times 30) = 20$ m."),

    ("The expansion of a liquid is measured by its rise up a narrow stem rather than in a wide vessel because",
     ["a narrow stem makes the small volume change visible", "the liquid expands more in a narrow stem", "a wide vessel would break", "the stem reduces evaporation"], 0,
     "Expansion is a small fraction of the volume. Forcing that change into a narrow tube turns it into a long, readable length — the same principle as the thermometer."),

    ("Which statement about the expansion of a gas is correct?",
     ["different gases expand by different fractions", "a gas does not expand unless it is heated above 100 °C", "all gases expand by about 1/273 of their volume per kelvin at constant pressure", "a gas contracts when heated at constant pressure"], 2,
     "The shared coefficient is the remarkable fact: hydrogen, air and carbon dioxide all give the same 1/273, which is why the model treats them alike."),

    ("A metal lid is stuck on a glass jar. Running hot water over the lid loosens it because",
     ["the metal expands more than the glass", "the glass expands more than the metal", "the water lubricates the thread", "the lid contracts"], 0,
     "The metal has the larger expansivity, so it grows away from the glass and the grip is released. The reverse — cooling the lid — works for the same reason."),

    ("In the relation $L = L_0(1 + alpha Delta theta)$, the quantity $Delta theta$ is",
     ["the final temperature", "the temperature in kelvin only", "the change in temperature", "273 K"], 2,
     "It is a *change*. Because the two scales differ only in their zero, a change in °C equals the same change in K, so no conversion is needed."),

    ("A brass rod and a steel rod of the same length are riveted together along their length and then heated. The pair",
     ["stays straight", "bends with brass on the outside", "bends with steel on the outside", "separates"], 1,
     "This is a bimetallic strip in bar form: brass expands more, so it becomes the longer, outer side of the curve."),

    ('A glass vessel is filled with a liquid and warmed. If $gamma_"liquid"$ were exactly equal to $3 alpha_"glass"$, the level in the stem would',
     ["rise by the full liquid expansion", "not move at all", "fall to the bottom", "double"], 1,
     "The apparent expansivity is the difference, so when the two are equal the liquid's expansion is exactly absorbed by the growth of the vessel and the stem shows nothing."),
]
