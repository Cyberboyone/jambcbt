"""Mock-paper bank for Chapter 4 — work, energy, power and machines.

These items never appear in the end-of-chapter drill; `tools/papers_phys1.py`
deals them into the two mock papers, the rapid-fire appendix and the master bank.
"""

PAPER_4 = [
    ("A force of 20 N moves a body 5.0 m in the direction of the force. The work done is",
     ["4.0 J", "25 J", "100 J", "500 J"], 2,
     "$W = F s = 20 times 5.0 = 100$ J."),

    ("A boy carries a load horizontally at constant speed. The work he does on the load is",
     ["maximum", "zero, because the force is vertical and the motion horizontal", "equal to the weight", "equal to the distance"], 1,
     "$W = F s cos theta$ with $theta = 90$°, so no work is done by the upward force."),

    ("A friction force of 15 N acts against a body that moves 4.0 m. The work done against friction is",
     ["3.8 J", "19 J", "60 J", "600 J"], 2,
     "$W = 15 times 4.0 = 60$ J, converted to heat."),

    ("The kinetic energy of a body of mass 2.0 kg moving at 10 m s⁻¹ is",
     ["10 J", "20 J", "100 J", "200 J"], 2,
     "$E_k = (1\/2) m v^2 = (1\/2)(2.0)(100) = 100$ J."),

    ("If the speed of a body is doubled, its kinetic energy",
     ["stays the same", "doubles", "trebles", "becomes four times as large"], 3,
     "Kinetic energy varies as the square of the speed."),

    ("The potential energy of a body of mass 5.0 kg raised 4.0 m is ($g = 10$ m s⁻²)",
     ["20 J", "50 J", "200 J", "2000 J"], 2,
     "$E_p = m g h = 5.0 times 10 times 4.0 = 200$ J."),

    ("A body of mass 2.0 kg falls freely through 5.0 m. Its kinetic energy at the bottom is ($g = 10$ m s⁻²)",
     ["10 J", "50 J", "100 J", "200 J"], 2,
     "The potential energy lost becomes kinetic energy: $2.0 times 10 times 5.0 = 100$ J."),

    ("A machine does 600 J of work in 4.0 s. Its power is",
     ["150 W", "240 W", "600 W", "2400 W"], 0,
     "$P = W\/t = 600\/4.0 = 150$ W."),

    ("A pump raises 30 kg of water through 10 m in 5.0 s. Its useful power is ($g = 10$ m s⁻²)",
     ["60 W", "300 W", "600 W", "1500 W"], 2,
     "$W = 30 times 10 times 10 = 3000$ J in 5.0 s, so $600$ W."),

    ("A lamp of power 60 W is left on for one hour. The energy it uses is",
     ["60 J", "3600 J", "216 000 J", "2160 J"], 2,
     "$E = P t = 60 times 3600 = 2.16 times 10^5$ J."),

    ("The efficiency of a machine is",
     ["output \/ input × 100 %", "input \/ output × 100 %", "load × effort", "work × time"], 0,
     "It is the useful work out as a percentage of the work put in."),

    ("A machine takes in 500 J and delivers 350 J of useful work. Its efficiency is",
     ["30 %", "50 %", "70 %", "85 %"], 2,
     "$(350\/500) times 100 = 70$ %."),

    ("A load of 600 N is raised by an effort of 200 N. The mechanical advantage is",
     ["0.33", "3.0", "400", "800"], 1,
     "The mechanical advantage is the load divided by the effort: 600 newtons over 200 newtons gives 3.0."),

    ("The velocity ratio of a single movable pulley is",
     ["1", "2", "3", "4"], 1,
     "The effort moves twice as far as the load rises, so the velocity ratio is 2."),

    ("A block and tackle has four rope sections supporting the load. Its velocity ratio is",
     ["1", "2", "4", "8"], 2,
     "The effort moves four times the distance the load rises."),

    ("A machine has a mechanical advantage of 3.0 and a velocity ratio of 4.0. Its efficiency is",
     ["33 %", "50 %", "75 %", "133 %"], 2,
     "Efficiency is the mechanical advantage divided by the velocity ratio: (3.0 divided by 4.0) times 100 gives 75 %."),

    ("An inclined plane 5.0 m long rises 1.0 m. Its velocity ratio is",
     ["0.20", "1.0", "5.0", "25"], 2,
     "The effort moves along the 5.0 m length while the load rises 1.0 m."),

    ("A screw jack has a pitch of 2.0 mm and a handle of length 0.50 m. Its velocity ratio is about",
     ["2.0", "79", "790", "1570"], 3,
     "The velocity ratio is the circumference swept by the handle divided by the pitch: 3.14 m over 0.0020 m, about 1570."),

    ("A wheel and axle have radii 0.50 m and 0.10 m. The velocity ratio is",
     ["0.20", "0.60", "5.0", "0.50"], 2,
     "The velocity ratio is the wheel radius divided by the axle radius: 0.50 over 0.10, which is 5.0."),

    ("A pendulum bob swings from its highest point to its lowest. The energy change is",
     ["kinetic to potential", "potential to kinetic", "heat to kinetic", "none"], 1,
     "The bob loses height and gains speed, so potential energy becomes kinetic energy — and back again."),

    ("A force of 10 N acts at 60° to the direction of motion over 4.0 m. The work done is",
     ["0", "20 J", "35 J", "40 J"], 1,
     "$W = F s cos theta = 10 times 4.0 times 0.50 = 20$ J."),

    ("A crane lifts a load of 200 kg through 10 m in 20 s. Its useful power is ($g = 10$ m s⁻²)",
     ["100 W", "1000 W", "2000 W", "20 000 W"], 1,
     "$W = 200 times 10 times 10 = 20 000$ J in 20 s, so $1000$ W."),

    ("The kinetic energy of a ball of mass 0.50 kg moving at 4.0 m s⁻¹ is",
     ["1.0 J", "2.0 J", "4.0 J", "8.0 J"], 2,
     "$E_k = (1\/2)(0.50)(16) = 4.0$ J."),

    ("A bullet of mass 0.020 kg leaves a gun at 300 m s⁻¹. Its kinetic energy is",
     ["6.0 J", "60 J", "900 J", "1800 J"], 2,
     "$E_k = (1\/2)(0.020)(300^2) = 900$ J."),

    ("The efficiency of a real machine is always less than 100 % because",
     ["the load is too heavy", "some energy is lost to friction and heat", "the effort is too small", "energy is destroyed"], 1,
     "Energy is conserved, but part of the input leaves as heat and sound rather than useful work."),

    ("A machine has a velocity ratio of 5.0 and an efficiency of 80 %. Its mechanical advantage is",
     ["1.6", "4.0", "6.3", "400"], 1,
     "The mechanical advantage is the efficiency multiplied by the velocity ratio: 0.80 times 5.0 gives 4.0."),

    ("A load of 800 N is lifted by a machine of mechanical advantage 4.0. The effort needed is",
     ["100 N", "200 N", "3200 N", "400 N"], 1,
     "The effort is the load divided by the mechanical advantage: 800 newtons over 4.0 gives 200 N."),

    ("A boy of mass 50 kg climbs a staircase 3.0 m high in 5.0 s. His power output is ($g = 10$ m s⁻²)",
     ["30 W", "150 W", "300 W", "1500 W"], 2,
     "$W = 50 times 10 times 3.0 = 1500$ J in 5.0 s, so $300$ W."),

    ("An engine of power 20 kW drives a car at a steady 10 m s⁻¹. The driving force is",
     ["200 N", "2000 N", "20 000 N", "200 000 N"], 1,
     "$P = F v$, so $F = 20 000 \/ 10 = 2000$ N."),

    ("The work done in lifting a mass of 10 kg through 2.0 m is ($g = 10$ m s⁻²)",
     ["20 J", "50 J", "200 J", "2000 J"], 2,
     "$W = m g h = 10 times 10 times 2.0 = 200$ J."),

    ("The mechanical energy of a swinging pendulum stays constant if",
     ["air resistance is ignored", "the string is long", "the bob is heavy", "the angle is large"], 0,
     "With gravity alone doing work, potential and kinetic energy trade but their sum does not change."),

    ("One kilowatt-hour expressed in joules is",
     ["3.6 × 10³ J", "3.6 × 10⁴ J", "3.6 × 10⁵ J", "3.6 × 10⁶ J"], 3,
     "$1000$ W $times 3600$ s $= 3.6 times 10^6$ J."),

    ("A heater of power 1.0 kW runs for 30 minutes. The energy supplied is",
     ["1.8 × 10⁴ J", "1.8 × 10⁵ J", "1.8 × 10⁶ J", "1.8 × 10⁷ J"], 2,
     "$E = 1000 times 1800 = 1.8 times 10^6$ J."),

    ("A force of 500 N moves a body at a steady 4.0 m s⁻¹. The power developed is",
     ["125 W", "500 W", "2000 W", "20 000 W"], 2,
     "$P = F v = 500 times 4.0 = 2000$ W."),

    ("A lever has an effort arm of 1.2 m and a load arm of 0.30 m. Its velocity ratio is",
     ["0.25", "0.40", "4.0", "1.5"], 2,
     "The velocity ratio is the effort arm divided by the load arm: 1.2 over 0.30, which is 4.0."),

    ("The energy wasted in a machine appears mainly as",
     ["light", "heat and sound", "mass", "momentum"], 1,
     "Friction converts useful work into heat and a little sound, which is why machines need lubrication."),

    ("A pump raises 600 kg of water through 10 m in 60 s. Its useful power is ($g = 10$ m s⁻²)",
     ["100 W", "600 W", "1000 W", "6000 W"], 2,
     "$W = 600 times 10 times 10 = 60 000$ J in 60 s, so $1000$ W."),

    ("A pump takes in 2.0 kW and is 60 % efficient. Its useful output is",
     ["0.60 kW", "1.2 kW", "1.4 kW", "3.3 kW"], 1,
     "$0.60 times 2.0 = 1.2$ kW."),

    ("The potential energy of a body of mass 3.0 kg at a height of 10 m is ($g = 10$ m s⁻²)",
     ["30 J", "130 J", "300 J", "3000 J"], 2,
     "$E_p = m g h = 3.0 times 10 times 10 = 300$ J."),

    ("A force acts at right angles to the displacement of a body. The work done by the force is",
     ["maximum", "zero", "negative", "equal to the force"], 1,
     "$cos 90$° is zero, which is why the centripetal force does no work on a body in circular motion."),
]
