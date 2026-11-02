#import "template.typ": *

#current-chapter.update("Appendix A: 60 Rapid-Fire Recall Pairs")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix A: 60 Rapid-Fire Recall Pairs]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[60 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    Cover the right-hand column with a card. Say the answer aloud before you look, and mark every
    miss with a dot in the margin; on the second pass, read only the dotted rows. Three passes in
    the last week are worth more than a fourth reading of the chapters.
  ]
]

#v(6pt)

== A.1 Twenty Definitions

#table(
  columns: (1.35fr, 2.6fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Answer],
  ),
  [Geography], [the study of the earth as the home of man — spatial distribution, process and relationship],
  [Physical geography], [the study of the natural environment: landforms, climate, water, soils and vegetation],
  [Human geography], [the study of people in space: population, settlement, economy and movement],
  [Oblate spheroid], [a sphere flattened at the poles and bulging at the equator],
  [Rotation], [the spin of the earth on its axis, once in about 24 hours],
  [Revolution], [the orbit of the earth round the sun, once in about 365¼ days],
  [Latitude], [angular distance north or south of the equator, 0° to 90°],
  [Longitude], [angular distance east or west of Greenwich, 0° to 180°],
  [Dew point], [the temperature at which air becomes saturated and condensation begins],
  [Relative humidity], [the vapour present as a percentage of what the air could hold at that temperature],
  [ITCZ], [the zone where the trade winds of the two hemispheres converge; it migrates with the overhead sun],
  [Drainage basin], [the whole area drained by a river and its tributaries],
  [Watershed], [the line of highest ground separating two drainage basins],
  [Discharge], [the volume of water passing a point per second: area × velocity],
  [Weathering], [the breakdown of rock in place, without transport],
  [Mass movement], [the downhill transfer of material under gravity without a transporting agent],
  [Soil profile], [the vertical sequence of horizons from the surface to the bedrock],
  [Aquifer], [a rock that stores and transmits groundwater],
  [Scale], [the ratio between a distance on the map and the same distance on the ground],
  [Bearing], [the angle measured clockwise from north, written in three figures],
)

== A.2 Twenty Numbers and Dates

#table(
  columns: (1.35fr, 2.6fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Answer],
  ),
  [Equatorial diameter], [12 756 km],
  [Polar diameter], [12 714 km],
  [Equatorial circumference], [40 075 km],
  [Angle of the axis], [23½°],
  [Latitude of the tropics], [23½° N and S],
  [Latitude of the polar circles], [66½° N and S],
  [One degree of latitude], [about 111 km],
  [Longitude per hour], [15°],
  [Time per degree of longitude], [4 minutes],
  [Nigeria's standard time], [GMT + 1],
  [Lapse rate], [6.5 °C per 1 000 m],
  [Pressure at sea level], [about 1 013 mb],
  [Nitrogen in dry air], [78 %],
  [Oxygen in dry air], [21 %],
  [Contour interval], [stated in the map margin, usually 10 or 20 m],
  [1 : 50 000 in kilometres], [1 cm = 0.5 km],
  [1 : 25 000 in kilometres], [1 cm = 0.25 km],
  [Sector angle], [(value ÷ total) × 360°],
  [Gradient], [vertical interval ÷ horizontal distance],
  [Date line], [180°, drawn in a zigzag],
)

== A.3 Twenty Pairings

#table(
  columns: (1.6fr, 2.35fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Belongs to],
  ),
  [geomorphology], [landforms and the processes that shape them],
  [climatology], [the atmosphere and climate],
  [hydrology], [water on and under the land],
  [biogeography], [the distribution of living things],
  [granite], [intrusive igneous rock, coarse crystals],
  [basalt], [extrusive igneous rock, fine crystals],
  [marble], [metamorphic rock formed from limestone],
  [loess], [wind-blown silt],
  [barchan], [crescent dune of wind deposition],
  [cirque], [armchair hollow of glacial erosion],
  [drumlin], [oval mound of glacial till],
  [stack], [coastal erosional remnant of an arch],
  [spit], [ridge of sediment built by longshore drift],
  [ox-bow], [cut-off meander loop],
  [levee], [natural embankment of river deposition],
  [laterite], [leached, iron-rich tropical soil],
  [hygrometer], [relative humidity],
  [anemometer], [wind speed],
  [seismograph], [earthquake waves],
  [choropleth], [density shown by shading areas],
)
