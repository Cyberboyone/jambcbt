"""Chapter 4 drill bank — work, energy, power and machines.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
"""

DRILL_4 = [
    ("A force of 20 N moves a body 3.0 m in the direction of the force. The work done is",
     ["6.7 J", "23 J", "60 J", "600 J"], 2,
     "$W = F s = 20 times 3.0 = 60$ J."),

    ("A man carries a 20 kg load on his head and walks 10 m on level ground. The work he does on the load is",
     ["zero", "200 J", "2000 J", "20 J"], 0,
     "His force on the load is upward and the motion is horizontal, so the angle is 90° and $cos 90 degree = 0$: no work is done on the load."),

    ("A force of 50 N acts at 60° to a displacement of 4.0 m. The work done is",
     ["100 J", "173 J", "200 J", "400 J"], 0,
     "$W = F s cos theta = 50 times 4.0 times 0.5 = 100$ J."),

    ("The work done in lifting a body of mass 5.0 kg through 2.0 m, taking $g = 10$ m s⁻², is",
     ["10 J", "50 J", "100 J", "1000 J"], 2,
     "$W = m g h = 5.0 times 10 times 2.0 = 100$ J, stored as gravitational potential energy."),

    ("The kinetic energy of a body of mass 2.0 kg moving at 3.0 m s⁻¹ is",
     ["3.0 J", "6.0 J", "9.0 J", "18 J"], 2,
     "$E_k = (1\/2) m v^2 = (1\/2)(2.0)(9.0) = 9.0$ J."),

    ("If the speed of a body is doubled, its kinetic energy",
     ["is halved", "is doubled", "is trebled", "is quadrupled"], 3,
     "$E_k prop v^2$, so doubling $v$ multiplies the energy by 4."),

    ("A body of mass 0.50 kg is 20 m above the ground. Taking $g = 10$ m s⁻², its potential energy is",
     ["10 J", "50 J", "100 J", "200 J"], 2,
     "$E_p = m g h = 0.50 times 10 times 20 = 100$ J."),

    ("A stone is dropped from rest from a height of 5.0 m. Taking $g = 10$ m s⁻², its speed on reaching the ground is",
     ["5.0 m s⁻¹", "10 m s⁻¹", "50 m s⁻¹", "100 m s⁻¹"], 1,
     "$m g h = (1\/2) m v^2$ gives $v = sqrt(2 g h) = sqrt(100) = 10$ m s⁻¹, and the mass cancels."),

    ("The principle of conservation of energy states that energy",
     ["is always kinetic", "can be created by machines", "cannot be created or destroyed, only converted", "is lost whenever work is done"], 2,
     "The total is constant in every conversion; what we call 'lost' energy has become heat or sound, not disappeared."),

    ("A machine does 600 J of useful work for every 800 J of energy supplied. Its efficiency is",
     ["25 %", "67 %", "75 %", "133 %"], 2,
     "Efficiency $= (600\/800) times 100 = 75$ %."),

    ("A pump raises 200 kg of water through a height of 10 m in 20 s. Taking $g = 10$ m s⁻², the useful power is",
     ["100 W", "1000 W", "2000 W", "20 000 W"], 1,
     "Work $= m g h = 200 times 10 times 10 = 20 000$ J in 20 s, so $P = 1000$ W."),

    ("A machine lifts a load of 400 N through 2.0 m while the effort of 200 N moves 5.0 m. Its efficiency is",
     ["40 %", "60 %", "80 %", "125 %"], 2,
     "Useful work $= 400 times 2.0 = 800$ J; work in $= 200 times 5.0 = 1000$ J; efficiency $= 80$ %."),

    ("Mechanical advantage is defined as",
     ["effort divided by load", "load divided by effort", "load times effort", "work out divided by work in"], 1,
     "Mechanical advantage is the load divided by the effort — a ratio of two forces, so it has no unit."),

    ("A machine has a velocity ratio of 5.0 and an efficiency of 80 %. Its mechanical advantage is",
     ["0.16", "4.0", "6.25", "80"], 1,
     "Efficiency is MA divided by VR, so $0.80 times 5.0 = 4.0$."),

    ("For any real machine, the efficiency can never exceed",
     ["50 %", "MA", "100 %", "the velocity ratio"], 2,
     "Friction and the weight of the moving parts always waste some of the input, so the mechanical advantage is always less than the velocity ratio and the efficiency is below 100 %."),

    ("In a single fixed pulley, the velocity ratio is",
     ["0", "1", "2", "equal to the load"], 1,
     "The effort moves the same distance as the load, so VR $= 1$; the pulley changes the direction of the effort, not its size."),

    ("In a single movable pulley, the velocity ratio is",
     ["1", "2", "3", "4"], 1,
     "Two rope sections support the load, so the effort moves twice as far as the load rises: VR $= 2$."),

    ("A lever has its effort arm 1.5 m long and its load arm 0.50 m long. Its velocity ratio is",
     ["0.33", "1.0", "3.0", "4.5"], 2,
     "For a lever, VR is the effort arm divided by the load arm: $1.5\/0.50 = 3.0$."),

    ("An inclined plane is 5.0 m long and 1.0 m high. Its velocity ratio is",
     ["0.20", "1.0", "5.0", "6.0"], 2,
     "VR is the length of the slope divided by its height: $5.0\/1.0 = 5.0$."),

    ("The power of a machine that does 3000 J of work in 60 s is",
     ["50 W", "60 W", "180 W", "180 000 W"], 0,
     "$P = W\/t = 3000\/60 = 50$ W."),

    ("A car of mass 1000 kg moves at 20 m s⁻¹. Its kinetic energy is",
     ["10 kJ", "20 kJ", "200 kJ", "400 kJ"], 2,
     "$E_k = (1\/2)(1000)(400) = 2.0 times 10^5$ J $= 200$ kJ."),

    ("A body falls freely from rest. At the moment it has fallen half its height, its kinetic energy is",
     ["a quarter of its initial potential energy", "half of its initial potential energy", "equal to its initial potential energy", "zero"], 1,
     "The potential energy lost is $m g (h\/2)$, which is exactly the kinetic energy gained: half the store has been converted."),

    ("A pendulum bob is released from rest at a height $h$ above its lowest point. At the lowest point its speed is",
     ["$sqrt(g h)$", "$sqrt(2 g h)$", "$2 g h$", "$g h$"], 1,
     "All the potential energy becomes kinetic: $m g h = (1\/2) m v^2$, so $v = sqrt(2 g h)$."),

    ("Work is done on a body when",
     ["a force acts on it", "it moves", "a force moves its point of application in the direction of the force", "it accelerates"], 2,
     "Both a force and a displacement along that force are needed; a force with no motion, or a force perpendicular to the motion, does no work."),

    ("The unit of power can be written as",
     ["J s", "J s⁻¹", "N m", "kg m s⁻²"], 1,
     "Power is energy per time, so J s⁻¹, which is the watt."),

    ("A 60 W lamp is left on for 5.0 minutes. The energy it uses is",
     ["300 J", "1800 J", "18 000 J", "300 000 J"], 2,
     "$E = P t = 60 times 300 = 18 000$ J, since 5.0 minutes is 300 s."),

    ("A block slides down a rough incline and comes to rest at the bottom. The lost potential energy has become",
     ["kinetic energy only", "heat in the block and the slope", "chemical energy", "electrical energy"], 1,
     "There is no kinetic energy left at the bottom, so the whole of the potential energy has gone into heat through friction."),

    ("A machine with MA 3.0 lifts a load of 300 N. The effort applied is",
     ["90 N", "100 N", "300 N", "900 N"], 1,
     "Mechanical advantage is load over effort, so effort $= 300\/3.0 = 100$ N."),

    ("A block and tackle with four rope sections lifting a load through 2.0 m requires the effort to move",
     ["0.50 m", "2.0 m", "4.0 m", "8.0 m"], 3,
     "VR $= 4$, so the effort moves four times as far as the load rises: $4 times 2.0 = 8.0$ m."),

    ("The efficiency of a machine is 60 % and its velocity ratio is 4.0. Its mechanical advantage is",
     ["0.15", "2.4", "6.7", "40"], 1,
     "Mechanical advantage is efficiency times velocity ratio: $0.60 times 4.0 = 2.4$."),

    ("A force does no work on a body when the angle between the force and the displacement is",
     ["0°", "45°", "60°", "90°"], 3,
     "$W = F s cos theta$ and $cos 90 degree = 0$; this is the case of the centripetal force or a load carried horizontally."),

    ("Two machines do the same job. Machine A takes 10 s and machine B takes 20 s. Compared with A, B has",
     ["twice the power", "half the power", "the same power", "four times the power"], 1,
     "Power is work per time, so doubling the time at the same work halves the power."),

    ("The energy stored in a stretched spring of constant 100 N m⁻¹ when it is stretched by 0.20 m is",
     ["1.0 J", "2.0 J", "10 J", "20 J"], 1,
     "$E = (1\/2) k e^2 = (1\/2)(100)(0.040) = 2.0$ J, the area under its force–extension graph."),

    ("A body of mass 2.0 kg moves at 5.0 m s⁻¹. The work needed to bring it to rest is",
     ["10 J", "25 J", "50 J", "100 J"], 1,
     "The work done against it equals its kinetic energy: $(1\/2)(2.0)(25) = 25$ J."),

    ("A crane lifts a 500 kg load at a steady speed of 0.50 m s⁻¹. Taking $g = 10$ m s⁻², the power developed is",
     ["250 W", "500 W", "2500 W", "5000 W"], 2,
     "$P = F v = (500 times 10)(0.50) = 2500$ W, because at constant speed the lifting force equals the weight."),

    ("In a machine, the velocity ratio is fixed by",
     ["the friction in its parts", "the load it carries", "its geometry", "the effort applied"], 2,
     "VR depends only on the distances built into the machine — the arms of a lever, the length and height of a slope, the number of rope sections."),

    ("A 2.0 kW motor is used for 30 s. The energy supplied is",
     ["60 J", "600 J", "60 kJ", "6.0 MJ"], 2,
     "$E = P t = 2000 times 30 = 60 000$ J $= 60$ kJ."),

    ("The work done by a force of 12 N in moving a body 5.0 m at 120° to the force is",
     ["−30 J", "30 J", "52 J", "60 J"], 0,
     "$W = 12 times 5.0 times cos 120 degree = 60 times (-0.5) = -30$ J: the force opposes the motion, so it removes energy."),

    ("A student of mass 40 kg runs up a flight of stairs 5.0 m high in 4.0 s. Taking $g = 10$ m s⁻², the power developed is",
     ["50 W", "200 W", "500 W", "2000 W"], 2,
     "Work $= m g h = 40 times 10 times 5.0 = 2000$ J, so $P = 2000\/4.0 = 500$ W."),

    ("A ball of mass 0.10 kg is thrown vertically upwards and reaches a height of 5.0 m. Taking $g = 10$ m s⁻², its initial kinetic energy was",
     ["0.50 J", "5.0 J", "10 J", "50 J"], 1,
     "$E_k = m g h = 0.10 times 10 times 5.0 = 5.0$ J, all of it converted to potential energy at the top."),
]
