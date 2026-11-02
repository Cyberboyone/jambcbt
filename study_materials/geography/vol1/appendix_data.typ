#import "template.typ": *

#current-chapter.update("Appendix D: The Figures File")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix D: The Figures File]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Figures File]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    The numbers the paper expects without an argument: the earth's dimensions, the conversion
    factors, the climate constants and the ten figures that decide the most questions.
  ]
]

#v(6pt)

== D.1 The Earth

#table(
  columns: (2.1fr, 1.2fr, 1.8fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Used for],
  ),
  [Equatorial diameter], [12 756 km], [shape questions and the oblate spheroid],
  [Polar diameter], [12 714 km], [the 42 km difference],
  [Equatorial circumference], [40 075 km], [rotation speed and distance questions],
  [Mean distance from the sun], [150 million km], [insolation and the year],
  [Surface area], [510 million km²], [land and sea proportions],
  [Land share of the surface], [29 %], [the 71/29 split],
  [Age of the earth], [about 4 600 million years], [geological time],
  [Thickness of the crust], [5–70 km], [thicker under continents],
  [Depth to the centre], [about 6 371 km], [layer questions],
)

== D.2 The Conversions

#table(
  columns: (1.9fr, 1.6fr, 1.6fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[From],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[To],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Rule],
  ),
  [centimetres], [metres], [divide by 100],
  [metres], [kilometres], [divide by 1 000],
  [degrees of latitude], [kilometres], [multiply by 111],
  [degrees of longitude], [minutes of time], [multiply by 4],
  [degrees of longitude], [hours of time], [divide by 15],
  [1 : 50 000], [kilometres per cm], [0.5],
  [1 : 25 000], [kilometres per cm], [0.25],
  [1 : 100 000], [kilometres per cm], [1.0],
  [gradient], [percentage], [multiply the fraction by 100],
  [value in a pie chart], [sector angle], [(value ÷ total) × 360],
)

== D.3 The Climate Constants

#table(
  columns: (1.8fr, 1.5fr, 1.8fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Constant],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Note],
  ),
  [Lapse rate], [6.5 °C per km], [use it in every altitude question],
  [Sea-level pressure], [1 013 mb], [about 1 013 hPa],
  [Nitrogen], [78 %], [the bulk of dry air],
  [Oxygen], [21 %], [respiration],
  [Carbon dioxide], [0.04 %], [the greenhouse gas examined],
  [Ozone], [trace], [concentrated in the stratosphere],
  [Tropopause height], [about 8 km at the poles, 16 km at the equator], [the ceiling of weather],
  [Desert rainfall], [under 250 mm a year], [the definition used in the paper],
  [Equatorial rainfall], [over 2 000 mm a year], [heavy and continuous],
)

== D.4 The Ten Figures That Decide the Most Questions

#table(
  columns: (0.75fr, 3.1fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Figure and why it matters],
  ),
  [1], [*111 km* — one degree of latitude, and one degree of longitude at the equator. Every distance question begins here.],
  [2], [*15° = 1 hour* — the longitude-to-time rule; 1° = 4 minutes.],
  [3], [*23½°* — the tilt of the axis and the latitude of the tropics; the key to the seasons.],
  [4], [*66½°* — the polar circles, where the midnight sun begins.],
  [5], [*6.5 °C per km* — the lapse rate; every "what is the temperature at 2 000 m" question.],
  [6], [*12 756 km vs 12 714 km* — the two diameters that make the earth an oblate spheroid.],
  [7], [*0.5 km per cm at 1 : 50 000* — the commonest scale in the paper.],
  [8], [*360° ÷ total* — the pie-chart sector rule, used in both directions.],
  [9], [*Vertical interval ÷ horizontal distance* — the gradient formula, with both units converted first.],
  [10], [*180°* — the date line, and the number added or subtracted for a back bearing.],
)

#v(4pt)

#block(width: 100%, fill: tip-bg, stroke: 0.9pt + tip-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: tip-amber)[THE MORNING-OF-THE-PAPER LIST]
  #v(3pt)
  #text(size: 9.8pt)[
    If you read nothing else in the last hour, read this page. The paper's calculations are
    built from these ten figures, and a candidate who can produce them without hesitation
    answers the numerical questions in half the time — which is the difference between finishing
    the paper and guessing the last five.
  ]
]
