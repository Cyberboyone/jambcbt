"""Chapter 6 drill bank — properties of matter.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
"""

DRILL_6 = [
    ("A spring extends by 2.0 cm when a force of 10 N is applied. Its spring constant is",
     ["5.0 N m⁻¹", "20 N m⁻¹", "200 N m⁻¹", "500 N m⁻¹"], 3,
     "$k = F\/e = 10\/0.020 = 500$ N m⁻¹, converting the extension to metres first."),

    ("A load of 20 N stretches a spring by 5.0 cm. The spring constant is",
     ["4.0 N m⁻¹", "100 N m⁻¹", "400 N m⁻¹", "1000 N m⁻¹"], 2,
     "$k = 20\/0.050 = 400$ N m⁻¹."),

    ("The energy stored in a spring stretched 4.0 cm by a force of 20 N is",
     ["0.40 J", "0.80 J", "4.0 J", "80 J"], 0,
     "$E = (1\/2) F e = (1\/2)(20)(0.040) = 0.40$ J, the area under the force–extension graph."),

    ("A wire of cross-sectional area $2.0 times 10^(-6)$ m² carries a load of 100 N. The stress in it is",
     ["$2.0 times 10^(-4)$ Pa", "$5.0 times 10^7$ Pa", "$2.0 times 10^8$ Pa", "$5.0 times 10^9$ Pa"], 1,
     "Stress $= F\/A = 100 \/ (2.0 times 10^(-6)) = 5.0 times 10^7$ Pa."),

    ("Strain is defined as",
     ["force per unit area", "extension per unit original length", "extension times length", "force times extension"], 1,
     "Strain $= e\/L$ and it is dimensionless, which is why the Young modulus has the same units as stress."),

    ("The SI unit of the Young modulus is",
     ["N", "N m⁻¹", "N m⁻²", "dimensionless"], 2,
     "The modulus is stress divided by a dimensionless strain, so it carries the unit of stress, N m⁻² (Pa)."),

    ("The elastic limit of a wire is the point beyond which",
     ["the wire breaks", "the wire stays stretched when the load is removed", "the wire becomes hot", "the extension stops"], 1,
     "Up to the elastic limit the wire returns to its original length; beyond it the deformation is plastic and permanent."),

    ("A body of mass 200 g occupies 50 cm³. Its density is",
     ["0.25 g cm⁻³", "4.0 g cm⁻³", "40 g cm⁻³", "250 g cm⁻³"], 1,
     "$rho = m\/V = 200\/50 = 4.0$ g cm⁻³ $= 4.0 times 10^3$ kg m⁻³."),

    ("A liquid of relative density 0.80 has a density of",
     ["80 kg m⁻³", "800 kg m⁻³", "8000 kg m⁻³", "0.80 kg m⁻³"], 1,
     "Relative density times the density of water: $0.80 times 1000 = 800$ kg m⁻³."),

    ("A force of 200 N acts on an area of 0.50 m². The pressure is",
     ["4.0 Pa", "100 Pa", "400 Pa", "4000 Pa"], 2,
     "$p = F\/A = 200\/0.50 = 400$ Pa."),

    ("The pressure due to water at a depth of 2.0 m, taking the density of water as 1000 kg m⁻³ and $g = 10$ m s⁻², is",
     ["200 Pa", "2000 Pa", "2.0 × 10⁴ Pa", "2.0 × 10⁵ Pa"], 2,
     "$p = rho g h = 1000 times 10 times 2.0 = 2.0 times 10^4$ Pa."),

    ("At a depth of 10 m in water, the total pressure is about (atmospheric pressure $1.0 times 10^5$ Pa)",
     ["1.0 × 10⁵ Pa", "2.0 × 10⁵ Pa", "1.0 × 10⁶ Pa", "1.1 × 10⁴ Pa"], 1,
     "$p = 1.0 times 10^5 + (1000)(10)(10) = 2.0 times 10^5$ Pa."),

    ("Pascal's principle states that pressure applied to an enclosed fluid is",
     ["lost at once", "transmitted undiminished to every part of the fluid", "transmitted only downwards", "reduced by the area"], 1,
     "That is the principle of the hydraulic press and the hydraulic brake."),

    ("In a hydraulic press the small piston has an area of 2.0 cm² and the large piston 50 cm². If 10 N acts on the small piston, the force on the large piston is",
     ["0.40 N", "25 N", "250 N", "500 N"], 2,
     "$F_2 = F_1 times A_2\/A_1 = 10 times 50\/2.0 = 250$ N."),

    ("In the press above, when the small piston moves down 10 cm the large piston rises by",
     ["0.40 cm", "2.0 cm", "10 cm", "50 cm"], 0,
     "The volumes are equal, so $d_2 = d_1 times A_1\/A_2 = 10 times 2.0\/50 = 0.40$ cm."),

    ("Archimedes' principle states that the upthrust on a body in a fluid equals",
     ["the weight of the body", "the weight of the fluid displaced", "the volume of the body", "the density of the fluid"], 1,
     "The upthrust is the weight of the fluid pushed aside: $rho V g$."),

    ("A body of mass 0.50 kg weighs 0.30 kg when fully immersed in water. Taking $g = 10$ m s⁻², the upthrust is",
     ["0.20 N", "2.0 N", "3.0 N", "5.0 N"], 1,
     "$U = (0.50 - 0.30) times 10 = 2.0$ N."),

    ("For the body above, the volume is",
     ["$2.0 times 10^(-4)$ m³", "$2.0 times 10^(-3)$ m³", "$5.0 times 10^(-4)$ m³", "$2.0 times 10^(-5)$ m³"], 0,
     "$U = rho g V$, so $V = 2.0\/(1000 times 10) = 2.0 times 10^(-4)$ m³."),

    ("The density of that body is",
     ["1250 kg m⁻³", "2500 kg m⁻³", "5000 kg m⁻³", "500 kg m⁻³"], 1,
     "$rho = m\/V = 0.50 \/ (2.0 times 10^(-4)) = 2500$ kg m⁻³, and its relative density is 2.5."),

    ("A body of density 900 kg m⁻³ is placed in water. It will",
     ["sink", "float with 90 % of its volume submerged", "float with 10 % submerged", "stay at any depth"], 1,
     "The fraction submerged is the ratio of the densities: $900\/1000 = 0.90$."),

    ("Ice floats in water with about 10 % of its volume above the surface because",
     ["ice is colder than water", "the density of ice is about 900 kg m⁻³", "ice is lighter than air", "water has surface tension"], 1,
     "The fraction submerged equals the density ratio $900\/1000$; the missing tenth rides above the surface."),

    ("A hydrometer is used to measure",
     ["the pressure of a gas", "the relative density of a liquid", "the viscosity of a liquid", "the surface tension of water"], 1,
     "It floats at a depth that depends on the liquid's density, so the scale reads relative density directly."),

    ("A steel ship floats although steel is denser than water because",
     ["steel is light", "the hollow hull displaces a weight of water equal to the ship's weight", "water pushes up more on large objects than on small ones", "the ship is moving"], 1,
     "The ship is hollow, so its average density is less than water's and it can displace its own weight before it is fully submerged."),

    ("A balloon rises in air because",
     ["the air inside it is denser than the surrounding air", "the upthrust of the displaced air is greater than its weight", "gravity does not act on gases", "air has no pressure"], 1,
     "The balloon displaces a volume of air whose weight is greater than the total weight of the balloon, so the resultant force is upwards."),

    ("The unit of surface tension is",
     ["N", "N m⁻¹", "N m⁻²", "J m⁻²"], 1,
     "Surface tension is force per unit length along the surface: N m⁻¹ (equivalently J m⁻², energy per area)."),

    ("Water rises higher in a capillary tube of smaller diameter because",
     ["the pressure is greater", "the surface tension force acts on a smaller weight of liquid", "the density of water is smaller", "the water is warmer"], 1,
     "The upward force is proportional to the circumference while the weight rises with the square of the radius, so a narrower tube gives a higher column."),

    ("Water wets glass because",
     ["cohesion is greater than adhesion", "adhesion between water and glass is greater than the cohesion of water", "water has a high density", "glass is smooth"], 1,
     "The molecules are pulled towards the glass more strongly than towards each other, so the liquid creeps up the wall and the meniscus curves upwards."),

    ("Mercury is depressed in a glass tube because",
     ["its cohesion is greater than its adhesion to glass", "it is a metal", "it is denser than water", "it does not evaporate"], 0,
     "Mercury's molecules attract each other more than they attract glass, so the meniscus curves down and the level falls."),

    ("Adding detergent to water",
     ["increases its surface tension", "lowers its surface tension", "has no effect", "increases its density"], 1,
     "Detergents are surfactants: they weaken the pull between surface molecules, which is why water wets cloth more easily and why bubbles form."),

    ("As the temperature of a liquid rises, its viscosity",
     ["increases", "decreases", "stays the same", "becomes zero"], 1,
     "Warmer molecules slip past one another more easily, so a liquid flows better when hot — honey poured from a warm spoon."),

    ("As the temperature of a gas rises, its viscosity",
     ["increases", "decreases", "stays the same", "becomes infinite"], 0,
     "Gas viscosity comes from molecular collisions, which become more frequent and more violent as the gas is heated."),

    ("Terminal velocity is reached when",
     ["the body starts to fall", "the drag and upthrust together balance the weight", "the body stops", "the drag is zero"], 1,
     "With no resultant force the acceleration is zero and the body falls at a constant speed."),

    ("A body falling through a viscous liquid at terminal velocity has an acceleration of",
     ["$g$", "zero", "$g$ downwards minus the drag", "increasing"], 1,
     "At terminal velocity the forces balance, so by Newton's second law the acceleration is zero and the velocity stays constant."),

    ("A parachute slows a falling person because it",
     ["reduces the weight", "increases the drag so the terminal velocity is smaller", "removes gravity", "increases the upthrust of the air only slightly but the drag greatly"], 1,
     "The larger area gives a much larger drag at the same speed, so the balance is struck at a low, safe terminal velocity."),

    ("The pressure at a point in a liquid at rest acts",
     ["only downwards", "only upwards", "equally in all directions", "only sideways"], 2,
     "At a given depth the pressure is the same in every direction, which is why a small hole lets water out at the same speed whatever its orientation."),

    ("A barometer is used to measure",
     ["the density of a liquid", "atmospheric pressure", "the viscosity of air", "the humidity of air"], 1,
     "The height of the mercury column balances the atmospheric pressure: $p = rho g h$."),

    ("A mercury barometer stands at 760 mm. Taking the density of mercury as 13 600 kg m⁻³ and $g = 10$ m s⁻², the atmospheric pressure is about",
     ["$1.0 times 10^4$ Pa", "$1.0 times 10^5$ Pa", "$1.0 times 10^6$ Pa", "$7.6 times 10^4$ Pa"], 1,
     "$p = rho g h = 13 600 times 10 times 0.760 = 1.03 times 10^5$ Pa ≈ $1.0 times 10^5$ Pa."),

    ("The pressure on a diver increases with depth because",
     ["the water is colder", "the weight of water above increases", "the density of water increases", "gravity increases"], 1,
     "$p = rho g h$: every extra metre adds the weight of a cubic metre of water on every square metre."),

    ("A wire that has passed its elastic limit and does not return to its original length has undergone",
     ["elastic deformation", "plastic deformation", "a change of density", "a change of mass"], 1,
     "Permanent stretch is plastic deformation; the elastic limit marks the boundary between the two."),

    ("The upthrust on a body fully immersed in a liquid is independent of",
     ["the density of the liquid", "the volume of the body", "the depth of the body below the surface", "$g$"], 2,
     "The volume displaced does not change with depth, so the upthrust is the same at 1 m and at 10 m — the pressure on the top and the bottom rises together."),
]
