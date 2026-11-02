#import "template.typ": *

#current-chapter.update("Appendix J: The Nigeria File")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix J: The Nigeria File]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Nigeria File]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    The physical geography of the country in one place: position, relief, drainage, climate,
    vegetation, soils and resources. Every chapter in the volume has a Nigerian application, and
    this is where they are collected.
  ]
]

#v(6pt)

== J.1 Position and Size

#table(
  columns: (1.4fr, 2.6fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Figure],
  ),
  [Latitude], [about 4°N to 14°N],
  [Longitude], [about 3°E to 15°E],
  [Area], [about 923 768 km²],
  [Neighbours], [Niger to the north, Chad to the north-east, Cameroon to the east, Benin to the west],
  [Coastline], [about 800 km on the Gulf of Guinea],
  [States and capital], [36 states and the Federal Capital Territory, Abuja],
  [Local government areas], [774],
)

== J.2 Relief, River by River

#table(
  columns: (1.1fr, 1.5fr, 2.0fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Region],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Relief],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Drainage],
  ),
  [North-west], [Sokoto plain, low and dry], [Sokoto river system, seasonal],
  [North-east], [Chad basin, flat and poorly drained], [Lake Chad and the Yobe],
  [Central], [Jos Plateau, the highest country in the middle belt], [the Kaduna and the Gongola],
  [Middle belt], [Niger–Benue trough, low and wide], [the Niger and Benue meet at Lokoja],
  [South-west], [upland and coastal plain], [the Ogun and the Oshun],
  [South-east], [Udi plateau and the Cross River highlands], [the Anambra and the Cross],
  [South-south], [Niger Delta, low and swampy], [distributaries of the Niger],
)

#v(3pt)

#rule-box("The two rivers that explain the country")[
  The *Niger* rises in the Fouta Djallon highlands of Guinea and runs for about 4 180 km, entering
  Nigeria in the north-west and meeting the *Benue* at Lokoja. The Benue rises in the Cameroon
  highlands and runs west. Together they divide the country into three relief regions — the
  north, the south-west and the south-east — and their trough is the great lowland of Nigeria.
  The delta they build is the largest in Africa and the source of the country's oil.
]

== J.3 Climate and Vegetation, North to South

#table(
  columns: (1.0fr, 1.1fr, 1.35fr, 1.45fr),
  inset: (x: 5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Belt],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Rainfall a year],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Vegetation],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Economic use],
  ),
  [Sahel], [under 600 mm], [grass and thorn scrub], [grazing, millet, gum arabic],
  [Sudan savanna], [600–900 mm], [short grasses and acacia], [groundnut, cotton, cattle],
  [Guinea savanna], [900–1 500 mm], [tall grasses and woodland], [yam, maize, guinea corn],
  [Derived savanna], [1 200–1 500 mm], [farmland cleared from forest], [cocoa, oil palm, food crops],
  [Rainforest], [1 500–2 500 mm], [tall trees and lianas], [timber, cocoa, oil palm, rubber],
  [Mangrove and delta], [over 2 500 mm], [mangrove swamp], [fishing, oil, gas],
)

== J.4 Soils, Minerals and Hazards

#table(
  columns: (1.1fr, 2.9fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Topic],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The Nigerian detail],
  ),
  [Laterite], [the red soils of the plateau and the forest zone; leached and poor when exposed],
  [Alluvial soils], [the flood plains of the Niger and Benue and the delta; deep and fertile],
  [Sandy soils], [the coastal plain and the dry north; well drained but low in nutrients],
  [Petroleum and gas], [the Niger Delta; the country's principal export],
  [Tin and columbite], [the Jos Plateau, mined from weathered granite],
  [Limestone], [used for cement; found at Nkalagu, Sokoto and Ogun],
  [Coal], [Enugu; a declining industry],
  [Iron ore], [Itakpe in Kogi State],
  [Flooding], [the Niger and Benue flood plains in the rainy season],
  [Gully erosion], [the south-east, especially Anambra and Imo],
  [Desertification], [the far north, along the Sahel margin],
  [Oil pollution], [the delta; the standing environmental complaint of the region],
)

#v(4pt)

#trap-box("Three Nigerian facts that are easy to mix")[
  *One*: the *Niger* rises in Guinea, not in Nigeria; the *Benue* rises in Cameroon. *Two*: the
  *highest point* is Chappal Waddi on the Mambilla Plateau, not the Jos Plateau — Jos is the
  highest *town* in the middle belt. *Three*: the *Niger Delta* is a delta of deposition, while
  the *Cross River* mouth is an estuary; the two are asked together because they look alike on
  a small-scale map.
]

#v(3pt)

#concept-box("The country in one paragraph")[
  Nigeria is a country of lowlands divided by two great rivers: the Niger and the Benue meet at
  Lokoja and open the country to the sea through the largest delta in Africa. Its climate runs
  from equatorial rain in the south to Sahel drought in the north, and its vegetation records
  that gradient in a series of belts. Its soils are old, leached and easily eroded, and its
  wealth lies in the delta's oil, the plateau's tin and the flood plains' alluvium. Every map
  question in this volume can be answered from that paragraph, and every physical chapter finds
  its example here.
]
