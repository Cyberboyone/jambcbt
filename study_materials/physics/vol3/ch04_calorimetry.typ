#import "template.typ": *

#current-chapter.update("Chapter 4: Calorimetry, Latent Heat and Vapours")

#pagebreak()

#chapter-opener(
  4,
  "Calorimetry, Latent Heat and Vapours",
  subtitle: "Heat Capacity and Specific Heat Capacity, the Method of Mixtures, Latent Heat of Fusion and Vaporisation, the Heating Curve, Saturated Vapour Pressure and Humidity",
  syllabus-ref: "Sec. B • Heat 4",
  utme-weight: "4 Qs every year",
  running: "Calorimetry, Latent Heat and Vapours",
)

#focus-radar(
  objectives: (
    "Define heat capacity and specific heat capacity, and give their units.",
    "Use $Q = m c Delta theta$ in both directions, including for a calorimeter.",
    "Run a method-of-mixtures calculation from the principle that heat lost equals heat gained.",
    "Define specific latent heat, and use $Q = m L$ for melting and boiling.",
    "Read a heating curve, and say what the plateaus mean.",
    "Explain saturated vapour pressure, boiling and relative humidity.",
  ),
  hotspots: (
    "“The heat needed to raise 2 kg of water by 30 K is …” — $2 times 4200 times 30$.",
    "“During melting the temperature …” — stays constant; the energy goes into breaking the bonds.",
    "“The specific latent heat of vaporisation of water is …” — about $2.26 times 10^6$ J kg⁻¹, far larger than the latent heat of fusion.",
    "“Water boils at 100 °C only when …” — the external pressure is one atmosphere.",
    "“Relative humidity is the ratio of …” — the actual vapour pressure to the saturated vapour pressure, as a percentage.",
  ),
  trap-summary: "Three slips. (1) Forgetting that the calorimeter itself has a heat capacity: the water warms the metal can too, so the gained side needs a $+C$ in it. (2) Adding the two stages of a heating problem when one of them is a change of state: warming ice and melting it are two separate $Q$ terms, and the plateau is where the second one lives. (3) Using the latent heat of fusion where the question is about steam — the two latent heats of water differ by a factor of nearly seven.",
)

// ============================================================================
== 4.1 Heat Capacity and Specific Heat Capacity

Two bodies can be at the same temperature and still need very different amounts of heat to warm by one degree. The quantity that measures this is the heat capacity, and when it is expressed per kilogram it is the specific heat capacity.

#concept-box("The two definitions")[
  The *heat capacity* $C$ of a body is the heat needed to raise its temperature by 1 K: $C = Q\/Delta theta$, measured in J K⁻¹. The *specific heat capacity* $c$ of a material is the heat needed to raise the temperature of 1 kg of it by 1 K: $c = Q\/(m Delta theta)$, measured in J kg⁻¹ K⁻¹. The two are related by $C = m c$.
]

#formula-box("The calorimetry equation")[
  + *The heat equation:* $Q = m c Delta theta$.

  Here $m$ is in kilograms, $c$ in J kg⁻¹ K⁻¹ and $Delta theta$ in K — or in °C, since a change is the same on both scales. The answer $Q$ is in joules.
]

Water is the reference material and the number to carry in your head: $c = 4200$ J kg⁻¹ K⁻¹. Copper is about 400, aluminium about 900, iron about 460, and mercury about 140. Water's value is unusually large, which is why it is used as a coolant in a car and why the sea takes so long to warm up in spring.

#trap-box("Watch the units of the tables")[
  Some tables give specific heat capacities in J kg⁻¹ K⁻¹ and others in J g⁻¹ K⁻¹. The second is a thousand times smaller, and the two are easy to mix up in the middle of a question. If the value given is between 0.1 and 5, it is almost certainly per gram; if it is between 100 and 5000, it is per kilogram. Convert before you substitute, and write the unit down beside the number.
]

#worked-example(
  1,
  "Heating a kettle of water",
  [Find the heat needed to raise the temperature of 0.50 kg of water from 20 °C to 80 °C. Take $c = 4200$ J kg⁻¹ K⁻¹.],
  [
    $Delta theta = 80 - 20 = 60$ K.

    $Q = m c Delta theta = 0.50 times 4200 times 60 = 1.26 times 10^5$ J.

    *Check.* A 2 kW kettle would deliver that in $1.26 times 10^5 \/ 2000 = 63$ s, about a minute — which is the right order of magnitude for half a litre of water, and a useful reality check on any calorimetry answer. If your answer needs an hour, the units have gone wrong; if it needs a millisecond, they have gone wrong the other way.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 4.2 The Method of Mixtures

The method of mixtures is the oldest calorimetry experiment in the syllabus and the model for every other one. A hot body is dropped into a colder liquid, the mixture is stirred, and the common final temperature is read. Since the calorimeter is insulated, whatever the hot body lost the cold body gained.

#concept-box("The principle of mixtures")[
  In an insulated calorimeter, *heat lost by the hot body = heat gained by the cold body and the calorimeter*. There are no losses to the room, and no heat is created.
]

#diagram-fig("diagrams/ch04_mixture.svg",
  "The method of mixtures. A hot solid is dropped into a known mass of water in a calorimeter of known heat capacity, and the common final temperature gives the unknown specific heat.", width: 100%)

The calorimeter is not a spectator. The can and the stirrer warm up with the water, so their heat capacity appears beside the water's on the gained side.

#formula-box("The equation with the calorimeter included")[
  + *Heat lost = heat gained:* $m c (theta_2 - theta) = (m_w c_w + C)(theta - theta_1)$.

  + the left side is the heat lost by the hot solid,
  + $m_w c_w$ is the water's heat capacity,
  + $C$ is the heat capacity of the calorimeter and stirrer,
  + $theta_1$, $theta_2$ and $theta$ are the cold start, the hot start and the final temperature.
]

#worked-example(
  2,
  "Copper into water",
  [A 0.20 kg copper block at 100 °C is dropped into 0.30 kg of water at 20 °C in a calorimeter of heat capacity 40 J K⁻¹. Taking $c_"Cu" = 400$ J kg⁻¹ K⁻¹ and $c_w = 4200$ J kg⁻¹ K⁻¹, find the final temperature.],
  [
    Heat lost by the copper: $0.20 times 400 times (100 - theta) = 80(100 - theta)$.

    Heat gained: $(0.30 times 4200 + 40)(theta - 20) = 1300(theta - 20)$.

    Setting them equal: $8000 - 80 theta = 1300 theta - 26\,000$, so $1380 theta = 34\,000$ and $theta = 24.6$ °C.

    *Check.* The answer must lie between 20 °C and 100 °C, and much nearer 20 because there is more water than copper and water's specific heat capacity is more than ten times copper's. A result of 24.6 °C is plausible; a result of 60 °C would mean the copper's heat had been overestimated. The calorimeter's 40 J K⁻¹ contributed 180 J of the 5860 J gained — about three per cent, which is exactly why the examiner puts it in.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 4.3 Latent Heat

Heat a block of ice and its temperature rises steadily to 0 °C — then stops, although the flame is still on and the ice is still melting. Energy is going in and the thermometer is not moving. That energy is being used to break the bonds that hold the solid together, not to speed the particles up, and it is measured by the *latent heat* of fusion.

#concept-box("Specific latent heat")[
  The *specific latent heat* $L$ of a substance is the heat needed to change 1 kg of it from one state to another at constant temperature, measured in J kg⁻¹. $L_"f"$ is the value for melting (fusion) and $L_"v"$ the value for boiling (vaporisation).
]

#formula-box("The two latent heats of water")[
  + *The change-of-state equation:* $Q = m L$.

  + Ice at 0 °C: $L_"f" = 3.34 times 10^5$ J kg⁻¹ — melt 1 kg with 334 kJ.
  + Water at 100 °C: $L_"v" = 2.26 times 10^6$ J kg⁻¹ — boil 1 kg with 2.26 MJ.

  The latent heat of vaporisation is nearly seven times the latent heat of fusion, because boiling has to separate the molecules completely rather than merely loosen them.
]

#diagram-fig("diagrams/ch04_heating_curve.svg",
  "The heating curve of water, drawn from the real numbers. Two plateaus — melting at 0 °C and boiling at 100 °C — where the thermometer does not move although heat is still going in.", width: 100%)

The curve also settles a question that comes up every year: which takes more heat, melting the ice or warming the water? Warming 1 kg of water from 0 °C to 100 °C needs $4200 times 100 = 4.2 times 10^5$ J; melting it needs $3.34 times 10^5$ J. Boiling it needs $2.26 times 10^6$ J — more than everything else in the chapter added together. That is why a scald from steam is far worse than a scald from boiling water: the steam delivers its latent heat to your skin as it condenses.

#trap-box("A change of state is a separate term, never a temperature change")[
  In any problem that crosses a state boundary, write the terms separately: warming the ice, melting the ice, warming the water, boiling the water. Each has its own equation, and each must be checked against the energy available. A question that gives 20 g of ice and 100 g of water will usually melt *all* the ice — but not always, and the arithmetic must prove it rather than assume it.
]

#worked-example(
  3,
  "Ice into warm water",
  [What is the final temperature when 20 g of ice at 0 °C is added to 100 g of water at 40 °C in a calorimeter of heat capacity 10 J K⁻¹? Take $L_"f" = 3.34 times 10^5$ J kg⁻¹ and $c_w = 4200$ J kg⁻¹ K⁻¹.],
  [
    Heat available from the water and calorimeter cooling to 0 °C: $0.10 times 4200 times 40 + 10 times 40 = 16\,800 + 400 = 17\,200$ J.

    Heat needed to melt the ice: $0.020 times 3.34 times 10^5 = 6680$ J — well below 17 200 J, so all the ice melts.

    Energy left: $17\,200 - 6680 = 10\,520$ J, which warms the mixture: total heat capacity $= (0.120 times 4200) + 10 = 514$ J K⁻¹, so the further temperature change is $10\,520 \/ 514 = 20.5$ K.

    The final temperature is therefore $40 - 20.5 = 19.5$ °C.

    *Check.* Work forwards from 0 °C instead: the melted ice must be warmed to the final temperature, and that is included in the 514 J K⁻¹. The two routes agree because the energy accounts balance whichever way you write them. And the answer must be between 0 °C and 40 °C, which it is — a final temperature *below* 0 °C would mean the ice had not all melted, and that is the case to check for when the ice is plentiful.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "An electric heater",
  [A 500 W heater is used to raise the temperature of 2.0 kg of water from 20 °C to 60 °C. Assuming no losses, how long does it take?],
  [
    $Q = m c Delta theta = 2.0 times 4200 times 40 = 3.36 times 10^5$ J.

    $t = Q \/ P = 3.36 times 10^5 \/ 500 = 672$ s, about 11 minutes.

    *Check.* The check is the rate: 500 W is a small immersion heater, and half a kilogram a minute is about right for one. In a real experiment the answer would be longer, because heat is lost from the beaker — which is why a school determination of $c$ comes out slightly *high* when losses are ignored: more energy was supplied than the water actually received.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "Ice below zero into water",
  [50 g of ice at −10 °C is added to 200 g of water at 30 °C in an insulated container of negligible heat capacity. Taking $c_"ice" = 2100$ J kg⁻¹ K⁻¹, $L_"f" = 3.34 times 10^5$ J kg⁻¹ and $c_w = 4200$ J kg⁻¹ K⁻¹, find the final temperature.],
  [
    Warm the ice to 0 °C: $0.050 times 2100 times 10 = 1050$ J.
    Melt it: $0.050 times 3.34 times 10^5 = 16\,700$ J.
    Total to turn the ice into water at 0 °C: 17 750 J.

    The water can give up to 0 °C: $0.200 times 4200 times 30 = 25\,200$ J — more than enough, so everything melts.

    Now mix 0.050 kg of water at 0 °C with 0.200 kg at 30 °C. With no other heat capacity, $0.050 theta = 0.200(30 - theta)$, so $0.250 theta = 6.0$ and $theta = 24$ °C.

    *Check.* The final temperature must be below 30 °C and well above 0 °C — the ice used about seventy per cent of the available energy just to melt, so the mixture ends warm but not warm. Writing the last stage as a ratio of masses is the fast route: when only water is being mixed, the specific heat capacity cancels and the final temperature divides in the ratio of the masses.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 4.4 Vapours, Boiling and Humidity

A puddle disappears on a cold day, and a pan of water left on a low flame steams without boiling. Evaporation happens at any temperature; boiling happens at one. The difference is pressure.

#diagram-fig("diagrams/ch04_svp.svg",
  "Saturated vapour pressure of water against temperature. Boiling begins where the curve crosses atmospheric pressure, which is why the boiling point changes with altitude.", width: 92%)

#formula-box("The three facts that carry the marks")[
  + *Evaporation* happens at any temperature, from the surface, and it cools the liquid that is left behind.
  + *Boiling* happens when the saturated vapour pressure equals the external pressure — everywhere in the liquid, not just at the surface.
  + *Relative humidity* is the actual vapour pressure divided by the saturated vapour pressure at that temperature, expressed as a percentage. The *dew point* is the temperature at which the air would become saturated.
]


#concept-box("Saturated vapour pressure")[
  In a closed space above a liquid, molecules escape from the surface and some return. When the two rates are equal the vapour is *saturated*, and the pressure it exerts is the *saturated vapour pressure* (s.v.p.). It depends only on the temperature and on the liquid — not on the volume of the space above it.
]

*The pressure decides the boiling point.* At the top of a mountain the air pressure is lower, so water boils below 100 °C and food cooks more slowly; in a pressure cooker the pressure is higher, so water boils above 100 °C and food cooks faster. That single sentence answers a whole family of questions, and it explains why a vacuum pump can make water boil at room temperature.

#trap-box("Evaporation and boiling are not the same process")[
  Both turn liquid into vapour, and both absorb latent heat, but they differ in where and when. Evaporation is from the surface at any temperature and it lowers the temperature of the remaining liquid; boiling is throughout the liquid, at one temperature, and needs a continuous supply of heat. A question that asks why sweating cools you is asking about evaporation; a question that asks why a kettle whistles is asking about boiling.
]

// ============================================================================
#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: calorimetry, latent heat and vapours.", width: 86%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Calorimetry is two equations and one principle. The equations are $Q = m c Delta theta$ for a change of temperature and $Q = m L$ for a change of state; the principle is that in an insulated vessel the heat lost by the hot body equals the heat gained by the cold body *and the calorimeter*. Water needs 4200 J to raise a kilogram by one kelvin, which is unusually large and explains why it is a coolant and why the sea is slow to warm. Melting a kilogram of ice takes 334 kJ and boiling a kilogram of water takes 2.26 MJ — nearly seven times as much, because boiling separates the molecules completely, and that is why steam scalds so badly. On a heating curve the temperature climbs, holds at 0 °C while the ice melts, climbs again, and holds at 100 °C while the water boils; a flat stretch is a change of state, never a pause in the heating. Vapours add the last idea: a liquid boils when its saturated vapour pressure reaches the outside pressure, which is why water boils below 100 °C on a mountain and above it in a pressure cooker, and why a puddle evaporates without boiling at all.
  ]
]

== 4.5 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [The heat needed to raise the temperature of 2.0 kg of water by 30 K is ($c = 4200$ J kg⁻¹ K⁻¹)], [$2.5 times 10^5$ J], [$1.3 times 10^5$ J], [$6.3 times 10^4$ J], [$2.5 times 10^4$ J])
#mcq(2, [While a solid is melting at its melting point, the heat supplied], [raises the temperature of the solid], [is used to change the state and the temperature stays constant], [is lost to the surroundings], [is stored as kinetic energy of the particles])
#mcq(3, [The specific latent heat of vaporisation of water is greater than the specific latent heat of fusion because], [vaporisation happens at a higher temperature], [boiling separates the molecules completely rather than merely loosening them], [steam is lighter than water], [water has a large specific heat capacity])
#mcq(4, [Water boils at a temperature below 100 °C when], [the pressure above it is reduced], [the pressure above it is increased], [it contains dissolved air], [it is heated slowly])

#answer-key-grid(("A", "B", "B", "A"))

#answer-notes((
  ("A", [$Q = m c Delta theta = 2.0 times 4200 times 30 = 2.52 times 10^5$ J. The three wrong options are the same digits with the wrong arithmetic — division instead of multiplication, or 30 taken as 15.]),
  ("B", [the energy goes into breaking the bonds of the lattice, so the average kinetic energy — and therefore the temperature — does not change until all the solid has melted.]),
  ("B", [melting only loosens the lattice; boiling has to separate the molecules completely and push them out of the liquid, which costs far more energy per kilogram.]),
  ("A", [boiling starts when the saturated vapour pressure equals the outside pressure. Lower the pressure and the boiling point falls — water boils at about 70 °C on the summit of Everest.]),
))

#chapter-checklist("Before you leave Chapter 4", (
  [Define heat capacity and specific heat capacity, and give the unit of each.],
  [Write $Q = m c Delta theta$ and use it in either direction without being told the formula.],
  [State the principle of mixtures, and include the calorimeter in the gained side.],
  [Write $Q = m L$ and quote both latent heats of water.],
  [Read a heating curve and explain what each plateau means.],
  [Say why boiling starts when the vapour pressure equals the outside pressure.],
))

#concept-box("Carry this into Chapter 5")[
  Notice that every correction in this chapter is a *small* one — a few per cent for the calorimeter, a few per cent for losses. The next chapter is not like that. A gas law question with a Celsius temperature instead of a kelvin one is wrong by a factor of two, not by three per cent, and the gas laws are where the kelvin scale earns its place. Chapter 5 also explains *why* heat capacity is what it is: the particles, the collisions and the kinetic theory.
]

#include "drill_ch04.typ"
