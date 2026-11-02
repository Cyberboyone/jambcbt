#import "template.typ": *

#current-chapter.update("Appendix F: The Definitions File")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix F: The Definitions File]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Definitions File]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    Fifty-nine terms in the words the examiner accepts. Each definition is one sentence, because
    a definition that needs two sentences is usually two definitions.
  ]
]

#v(6pt)

#table(
  columns: (1.25fr, 2.85fr),
  inset: (x: 6pt, y: 2.8pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Definition],
  ),
  [Geography], [the study of the earth as the home of people, its spatial distributions and the relationships between people and environment],
  [Physical geography], [the branch that studies the natural environment],
  [Human geography], [the branch that studies people, their settlements, work and movement],
  [Cartography], [the making and reading of maps],
  [GIS], [a computer system that stores, combines and analyses layers of spatial data],
  [Remote sensing], [the collection of information about the surface from aircraft or satellites],
  [Oblate spheroid], [a sphere flattened at the poles and bulging at the equator],
  [Rotation], [the earth's spin on its axis in about 24 hours],
  [Revolution], [the earth's orbit round the sun in about 365¼ days],
  [Latitude], [angular distance north or south of the equator, from 0° to 90°],
  [Longitude], [angular distance east or west of Greenwich, from 0° to 180°],
  [Great circle], [a circle on the earth's surface whose plane passes through the centre],
  [Solstice], [the date when the sun is overhead at a tropic and the day is longest or shortest],
  [Equinox], [the date when the sun is overhead at the equator and day and night are equal],
  [Coriolis force], [the deflection of moving air or water caused by the earth's rotation],
  [Insolation], [the solar radiation received at the earth's surface],
  [Lapse rate], [the rate at which temperature falls with height, about 6.5 °C per km],
  [Dew point], [the temperature at which air becomes saturated and condensation begins],
  [Relative humidity], [the water vapour present as a percentage of the maximum the air could hold at that temperature],
  [Condensation], [the change of water vapour into liquid droplets on nuclei],
  [Isobar], [a line joining places of equal atmospheric pressure],
  [Isotherm], [a line joining places of equal temperature],
  [Isohyet], [a line joining places of equal rainfall],
  [ITCZ], [the belt where the trade winds of the two hemispheres converge, migrating with the overhead sun],
  [Trade winds], [the planetary winds blowing from the subtropical high towards the equator],
  [Westerlies], [the planetary winds blowing from the subtropical high towards the subpolar low],
  [Monsoon], [a seasonal reversal of wind direction, bringing a wet and a dry season],
  [Relief rainfall], [rain produced when moist air is forced over high ground],
  [Convectional rainfall], [rain produced when strongly heated air rises and cools],
  [Frontal rainfall], [rain produced when warm air rises over cold air at a front],
  [Rain shadow], [the dry leeward side of high ground],
  [Climate], [the average weather of a place over thirty years or more],
  [Drainage basin], [the area drained by a river and its tributaries],
  [Watershed], [the line of highest ground separating two drainage basins],
  [Confluence], [the point where two rivers meet],
  [Long profile], [the height of a river plotted against distance from source to mouth],
  [Discharge], [the volume of water passing a point per second, equal to area × velocity],
  [Load], [the material a river carries],
  [Traction], [the rolling or dragging of large material along a river bed],
  [Saltation], [the bouncing transport of pebbles in short hops],
  [Suspension], [the transport of fine sediment within the water],
  [Meander], [a curve in a river produced by erosion on the outer bank and deposition on the inner],
  [Ox-bow lake], [a lake formed when a meander loop is cut off],
  [Flood plain], [the flat land beside a river built up by flood deposition],
  [Levee], [a natural embankment formed by deposition at the channel edge],
  [Delta], [land built into a standing body of water where deposition exceeds removal],
  [Estuary], [a drowned river mouth scoured by tides],
  [Aquifer], [a rock that stores and transmits groundwater],
  [Water table], [the top of the saturated zone underground],
  [Weathering], [the breakdown of rock in place],
  [Mass movement], [the downhill transfer of material under gravity without a transporting agent],
  [Soil profile], [the vertical sequence of horizons from litter to bedrock],
  [Humus], [decomposed organic matter in the soil],
  [Laterite], [a leached, iron-rich tropical soil that hardens when exposed],
  [Loess], [a deposit of wind-blown silt],
  [Cirque], [an armchair-shaped hollow at the head of a glacial valley],
  [Moraine], [material deposited by a glacier],
  [Longshore drift], [the movement of sediment along a coast by waves approaching at an angle],
  [Scale], [the ratio between a map distance and the corresponding ground distance],
  [Bearing], [the angle measured clockwise from north, written in three figures],
)

#v(4pt)

#block(width: 100%, fill: tip-bg, stroke: 0.9pt + tip-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: tip-amber)[THE EXAM HABIT FOR DEFINITIONS]
  #v(3pt)
  #text(size: 9.8pt)[
    A definition earns full marks when it contains the *genus* and the *difference*: what kind
    of thing it is, and what distinguishes it. "A meander is a bend in a river formed by erosion
    on the outer bank and deposition on the inner" names the kind (a bend) and the difference
    (how the bend is made). "A meander is a curve" names neither.
  ]
]
