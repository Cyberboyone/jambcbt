#import "template.typ": *

#current-chapter.update("Appendix F: Glossary")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Glossary]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Glossary]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The words an examiner uses with a precise meaning, defined in a line each. When a question turns on the difference between two of these, the difference is usually the answer.]
]

#v(5pt)

#table(
  columns: (1.45fr, 2.95fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
  ),
  [absolute zero], [the temperature at which a gas would have zero volume, −273 °C or 0 K; the lowest temperature attainable in principle],
  [anomalous expansion], [the contraction of water between 0 °C and 4 °C, which makes ice float and lakes freeze from the top],
  [apparent expansion], [the expansion of a liquid measured in a vessel that is itself expanding],
  [black body], [a surface that absorbs all the radiation falling on it, and therefore radiates more strongly than any other at the same temperature],
  [boiling], [change of state from liquid to vapour throughout the liquid, at the temperature where the saturated vapour pressure equals the external pressure],
  [Boyle's law], [for a fixed mass of gas at constant temperature, pressure is inversely proportional to volume],
  [Brownian motion], [the random zig-zag movement of small particles suspended in a fluid, caused by unequal molecular impacts],
  [Carnot engine], [the ideal reversible engine working between two temperatures; no real engine between the same two can be more efficient],
  [Charles' law], [for a fixed mass of gas at constant pressure, volume is proportional to absolute temperature],
  [coefficient of performance], [the heat removed from the cold space divided by the work supplied, for a refrigerator],
  [conduction], [transfer of heat through a body by the vibration of particles and the drift of free electrons, with no bulk movement],
  [conductivity, thermal], [the rate of heat flow through unit area of unit thickness for unit temperature difference, in W m⁻¹ K⁻¹],
  [convection], [transfer of heat by the bulk movement of a heated fluid, driven by differences in density],
  [cyclic process], [a sequence of changes that returns a system to its starting state, so that its internal energy is unchanged at the end],
  [dew point], [the temperature at which the air becomes saturated and condensation begins],
  [efficiency], [the useful work obtained from an engine divided by the heat supplied to it],
  [entropy], [a measure of the disorder of a system; it rises in every spontaneous process in an isolated system],
  [elastic collision], [a collision in which kinetic energy is conserved as well as momentum],
  [emissivity], [the ratio of the power a surface radiates to the power a black body of the same area and temperature would radiate],
  [evaporation], [change of state from liquid to vapour at the surface, at any temperature],
  [expansivity, linear], [the fractional increase in length per kelvin rise in temperature],
  [first law of thermodynamics], [the change in internal energy of a system equals the heat added to it minus the work it does],
  [fixed points], [the two reproducible temperatures — ice point and steam point — used to calibrate a thermometer],
  [heat], [energy transferred from one body to another because of a temperature difference],
  [heat capacity], [the heat needed to raise the temperature of a whole body by 1 K, in J K⁻¹],
  [heat engine], [a device that converts heat taken from a hot body into work, rejecting the rest to a cold body],
  [heat pump], [a refrigerator used the other way round: it delivers heat to a warm space rather than removing it from a cold one],
  [heat sink], [the cold body to which an engine rejects its waste heat],
  [humidity, relative], [the actual vapour pressure divided by the saturated vapour pressure at the same temperature, as a percentage],
  [ideal gas], [a gas that obeys $p V = n R T$ exactly, with no intermolecular forces and negligible molecular volume],
  [internal energy], [the total kinetic and potential energy of the molecules of a body],
  [isobaric], [at constant pressure],
  [isochoric], [at constant volume],
  [isothermal], [at constant temperature],
  [Kelvin scale], [the absolute temperature scale that starts at absolute zero, with the same degree size as the Celsius scale],
  [adiabatic], [with no heat entering or leaving the system],
  [latent heat, specific], [the heat needed to change the state of 1 kg of a substance at constant temperature],
  [melting point], [the temperature at which a solid and its liquid coexist in equilibrium],
  [molar gas constant], [$R = 8.31$ J mol⁻¹ K⁻¹, the constant in $p V = n R T$],
  [mole], [the amount of substance that contains $6.02 times 10^23$ particles],
  [phase], [a distinct state of matter — solid, liquid or vapour — with its own arrangement of particles],
  [Newton's law of cooling], [the rate of loss of heat from a body is proportional to its excess temperature over the surroundings],
  [pressure], [force per unit area exerted by a gas on its container, caused by molecular collisions],
  [radiation], [transfer of heat by electromagnetic waves, needing no medium],
  [reversible process], [an idealised change that can be reversed exactly, leaving no trace in the surroundings],
  [saturated vapour], [a vapour in equilibrium with its own liquid, at the pressure where evaporation and condensation balance],
  [second law of thermodynamics], [heat cannot flow spontaneously from a colder body to a hotter one; the entropy of an isolated system never decreases],
  [specific heat capacity], [the heat needed to raise the temperature of 1 kg of a substance by 1 K, in J kg⁻¹ K⁻¹],
  [steady state], [a condition in which the temperature at every point is constant in time, so the rate of heat flow is uniform along the conductor],
  [sublimation], [change of state directly from solid to vapour without passing through the liquid state],
  [Stefan's law], [the power radiated by a black body is proportional to the fourth power of its absolute temperature],
  [temperature], [the property that decides the direction of net heat flow between two bodies in contact],
  [thermal equilibrium], [the state of two bodies in contact when no net heat flows between them, so they are at the same temperature],
  [thermal expansion], [the increase in the dimensions of a body as its temperature rises],
  [thermometric property], [a property that varies steadily with temperature and can be used to measure it],
  [thermistor], [a semiconductor whose resistance falls sharply as its temperature rises; used as a sensitive thermometer],
  [thermometry], [the science and practice of measuring temperature with a thermometric property],
  [thermocouple], [a pair of joined dissimilar metals that produces a small e.m.f. proportional to the temperature difference between its junctions],
  [triple point], [the single temperature and pressure at which a substance's solid, liquid and vapour coexist],
  [vapour pressure], [the pressure exerted by a vapour in equilibrium with its liquid at a given temperature],
  [vacuum flask], [a double-walled vessel with a vacuum between the walls, silvered to cut radiation, which slows all three routes of heat transfer],
  [vapour], [the gaseous form of a substance that is normally a liquid or a solid at room temperature],
  [work], [energy transferred by a force moving through a distance; for a gas, $W = p Delta V$ at constant pressure],
  [zeroth law], [if two bodies are each in thermal equilibrium with a third, they are in equilibrium with each other — the law that makes thermometry possible],
)
