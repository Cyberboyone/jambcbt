"""Mock-paper bank for Chapter 6 — properties of matter.

These items never appear in the end-of-chapter drill; `tools/papers_phys1.py`
deals them into the two mock papers, the rapid-fire appendix and the master bank.
"""

PAPER_6 = [
    ("A force of 12 N stretches a spring by 3.0 cm. Its spring constant is",
     ["4.0 N m⁻¹", "36 N m⁻¹", "400 N m⁻¹", "36 000 N m⁻¹"], 2,
     "$k = F\/e = 12 \/ 0.030 = 400$ N m⁻¹."),

    ("A spring of constant 250 N m⁻¹ is stretched by a force of 50 N. Its extension is",
     ["0.20 m", "0.50 m", "5.0 m", "20 m"], 0,
     "$e = F\/k = 50\/250 = 0.20$ m."),

    ("The energy stored in a spring of constant 400 N m⁻¹ stretched 0.10 m is",
     ["0.40 J", "2.0 J", "4.0 J", "20 J"], 1,
     "$E = (1\/2) k e^2 = (1\/2)(400)(0.010) = 2.0$ J."),

    ("A spring is stretched 0.20 m by a force that rises steadily to 60 N. The energy stored is",
     ["3.0 J", "6.0 J", "12 J", "60 J"], 1,
     "$E = (1\/2) F e = (1\/2)(60)(0.20) = 6.0$ J, the area under the force-extension graph."),

    ("A wire of area $4.0 times 10^(-6)$ m² carries a load of 200 N. The stress is",
     ["$5.0 times 10^(-5)$ Pa", "$5.0 times 10^7$ Pa", "$8.0 times 10^8$ Pa", "$2.0 times 10^(-8)$ Pa"], 1,
     "The stress is the force divided by the area: 200 newtons over $4.0 times 10^(-6)$ m² gives $5.0 times 10^7$ Pa."),

    ("A wire 2.0 m long stretches by 0.50 mm. Its strain is",
     ["$2.5 times 10^(-4)$", "$4.0 times 10^(-3)$", "$2.5 times 10^(-2)$", "$4.0 times 10^3$"], 0,
     "Strain $= e\/L = 0.50 times 10^(-3) \/ 2.0 = 2.5 times 10^(-4)$, a pure ratio."),

    ("A wire under a stress of $4.0 times 10^7$ Pa has a strain of $2.0 times 10^(-3)$. Its Young modulus is",
     ["$8.0 times 10^4$ Pa", "$2.0 times 10^10$ Pa", "$8.0 times 10^8$ Pa", "$5.0 times 10^(-11)$ Pa"], 1,
     "The modulus is the stress divided by the strain: $4.0 times 10^7$ over $2.0 times 10^(-3)$ gives $2.0 times 10^10$ Pa."),

    ("The Young modulus of a material is measured in",
     ["N", "N m⁻¹", "N m⁻²", "J"], 2,
     "Stress divided by a dimensionless strain leaves the unit of stress, N m⁻²."),

    ("A steel wire and a rubber cord of the same length and area are stretched by the same force. The steel stretches less because",
     ["steel is denser", "steel has a larger Young modulus", "rubber is colder", "steel is magnetic"], 1,
     "A larger modulus means a smaller strain for the same stress."),

    ("A wire that does not return to its original length after the load is removed has been stretched beyond its",
     ["yield point only", "elastic limit", "breaking point", "limit of proportionality"], 1,
     "Permanent extension begins beyond the elastic limit, which is where plastic deformation starts."),

    ("A body of mass 0.40 kg occupies 500 cm³. Its density is",
     ["0.80 kg m⁻³", "8.0 kg m⁻³", "800 kg m⁻³", "8000 kg m⁻³"], 2,
     "$500$ cm³ $= 5.0 times 10^(-4)$ m³, so $rho = 0.40 \/ 5.0 times 10^(-4) = 800$ kg m⁻³."),

    ("A liquid of relative density 2.5 has a density of",
     ["250 kg m⁻³", "2500 kg m⁻³", "25 000 kg m⁻³", "2.5 kg m⁻³"], 1,
     "Relative density multiplied by 1000 kg m⁻³ gives 2500 kg m⁻³."),

    ("The volume of 2.0 kg of a metal of density 4000 kg m⁻³ is",
     ["$5.0 times 10^(-4)$ m³", "$2.0 times 10^(-3)$ m³", "$8.0 times 10^3$ m³", "$5.0 times 10^(-3)$ m³"], 0,
     "$V = m\/rho = 2.0\/4000 = 5.0 times 10^(-4)$ m³."),

    ("A force of 500 N acts on an area of 0.25 m². The pressure is",
     ["125 Pa", "500 Pa", "2000 Pa", "12 500 Pa"], 2,
     "$p = 500\/0.25 = 2000$ Pa."),

    ("The pressure due to water alone at a depth of 5.0 m is ($rho = 1000$ kg m⁻³, $g = 10$ m s⁻²)",
     ["5.0 × 10³ Pa", "5.0 × 10⁴ Pa", "5.0 × 10⁵ Pa", "5.0 × 10⁶ Pa"], 1,
     "$p = rho g h = 1000 times 10 times 5.0 = 5.0 times 10^4$ Pa."),

    ("The total pressure at that depth, taking atmospheric pressure as $1.0 times 10^5$ Pa, is",
     ["$5.0 times 10^4$ Pa", "$1.5 times 10^5$ Pa", "$5.0 times 10^5$ Pa", "$1.0 times 10^5$ Pa"], 1,
     "The pressures add: $1.0 times 10^5 + 5.0 times 10^4 = 1.5 times 10^5$ Pa."),

    ("A hydraulic press has pistons of area 5.0 cm² and 100 cm². A force of 20 N on the small piston produces",
     ["4.0 N", "100 N", "400 N", "2000 N"], 2,
     "$F_2 = 20 times 100\/5.0 = 400$ N — the pressure is the same on both pistons."),

    ("If the small piston of that press moves down 20 cm, the large piston rises by",
     ["1.0 cm", "4.0 cm", "20 cm", "400 cm"], 0,
     "Equal volumes: $d_2 = 20 times 5.0\/100 = 1.0$ cm."),

    ("A body weighs 2.0 N in air and 1.6 N in water. Its upthrust is",
     ["0.40 N", "1.6 N", "2.0 N", "3.6 N"], 0,
     "The upthrust is the apparent loss in weight: $2.0 - 1.6 = 0.40$ N."),

    ("The volume of that body is ($rho = 1000$ kg m⁻³, $g = 10$ m s⁻²)",
     ["$4.0 times 10^(-5)$ m³", "$4.0 times 10^(-4)$ m³", "$2.0 times 10^(-4)$ m³", "$1.6 times 10^(-5)$ m³"], 0,
     "$U = rho g V$, so $V = 0.40\/10 000 = 4.0 times 10^(-5)$ m³."),

    ("The density of that body is",
     ["2000 kg m⁻³", "5000 kg m⁻³", "8000 kg m⁻³", "500 kg m⁻³"], 1,
     "Its mass is $0.20$ kg, so $rho = 0.20 \/ 4.0 times 10^(-5) = 5000$ kg m⁻³."),

    ("A solid floats in water with half of its volume submerged. Its density is",
     ["250 kg m⁻³", "500 kg m⁻³", "1000 kg m⁻³", "2000 kg m⁻³"], 1,
     "The fraction submerged equals the density ratio, so the density is half that of water."),

    ("A body weighs 3.0 N in air and 2.4 N when immersed in water. Its relative density is",
     ["1.25", "4.0", "5.0", "6.0"], 2,
     "Relative density is weight in air divided by the loss in weight: $3.0\/0.60 = 5.0$."),

    ("An ice cube floating in a glass of water melts. The water level",
     ["rises", "falls", "stays the same", "first rises then falls"], 2,
     "The floating ice already displaces its own weight of water, and when it melts it becomes exactly that volume."),

    ("A ship made of steel floats because",
     ["steel is light", "its hollow shape gives it an average density less than water", "water pushes up more on big objects than small ones", "it moves forward"], 1,
     "The hull is mostly air, so the ship displaces its weight in water before it is fully submerged."),

    ("A balloon filled with a light gas rises because",
     ["the gas inside is denser than air", "the upthrust of the displaced air exceeds its weight", "gravity does not act on gases", "air pressure is zero"], 1,
     "Archimedes' principle applies to gases too: the weight of the air displaced is greater than the weight of the balloon."),

    ("The unit of surface tension is",
     ["N", "N m⁻¹", "N m⁻²", "J"], 1,
     "Surface tension is a force per unit length along the surface, N m⁻¹."),

    ("Water rises in a capillary tube. If a tube of half the diameter is used, the rise is",
     ["halved", "the same", "doubled", "quadrupled"], 2,
     "The rise is inversely proportional to the radius, so a narrower tube draws the liquid higher."),

    ("The meniscus of mercury in a glass tube is convex because",
     ["mercury is denser than water", "its cohesion exceeds its adhesion to glass", "it is a liquid metal", "glass repels all liquids"], 1,
     "The mercury molecules attract each other more than the glass, so the surface curls downwards at the walls."),

    ("Adding detergent to water",
     ["raises its surface tension", "lowers its surface tension", "does not change it", "raises its boiling point only"], 1,
     "Detergent molecules crowd the surface and weaken the pull between water molecules, so water wets and foams."),

    ("As the temperature of a liquid rises, its viscosity",
     ["increases", "decreases", "stays constant", "becomes infinite"], 1,
     "Warmer molecules slide past each other more easily, so the liquid flows faster."),

    ("As the temperature of a gas rises, its viscosity",
     ["increases", "decreases", "stays constant", "becomes zero"], 0,
     "Gas viscosity comes from molecular collisions, which become more frequent and more violent as the gas is heated."),

    ("A sphere falling through a viscous liquid reaches terminal velocity when",
     ["the drag equals the weight", "the drag plus the upthrust equals the weight", "the upthrust equals the weight", "the drag is zero"], 1,
     "The three forces must balance, so the resultant is zero and the acceleration ceases."),

    ("Of two steel spheres falling in the same liquid, the larger one has",
     ["the smaller terminal velocity", "the larger terminal velocity", "the same terminal velocity", "no terminal velocity"], 1,
     "A larger sphere has a much greater weight for its surface area, so it needs a higher speed for the drag to balance it."),

    ("A barometer is used to measure",
     ["the density of a liquid", "atmospheric pressure", "the viscosity of air", "wind speed"], 1,
     "The height of the mercury column balances the atmospheric pressure."),

    ("A manometer connected to a gas supply measures",
     ["the absolute temperature of the gas", "the difference between the gas pressure and atmospheric pressure", "the density of the gas", "the volume of the gas"], 1,
     "The difference in liquid levels gives the pressure excess or defect."),

    ("The hydraulic brake of a car works on",
     ["Archimedes' principle", "Pascal's principle", "Hooke's law", "Newton's third law only"], 1,
     "Pressure applied at the pedal is transmitted undiminished through the brake fluid to the wheel cylinders."),

    ("The pressure at a point in a liquid at rest depends on",
     ["the shape of the vessel", "the depth and the density of the liquid", "the volume of the liquid", "the area of the base"], 1,
     "$p = rho g h$: only the depth, the density and $g$ matter, not the shape of the container."),

    ("Hooke's law is obeyed",
     ["up to the breaking point", "up to the limit of proportionality", "at all extensions", "only for rubber"], 1,
     "Beyond that limit the extension is no longer proportional to the load, even though the wire may still be elastic."),

    ("A body weighs 5.0 N in air and 4.0 N in water. Its volume is ($rho = 1000$ kg m⁻³, $g = 10$ m s⁻²)",
     ["$1.0 times 10^(-4)$ m³", "$4.0 times 10^(-4)$ m³", "$5.0 times 10^(-4)$ m³", "$1.0 times 10^(-3)$ m³"], 0,
     "The upthrust is 1.0 N, so $V = 1.0 \/ 10 000 = 1.0 times 10^(-4)$ m³."),
]
