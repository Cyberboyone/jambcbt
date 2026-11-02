"""Diagram set for JAMB Geography Volume 1 — The Physical Environment and Map Work.

Seven chapter figures, seven recap cards and a cover banner. Everything is
drawn either as hand-written SVG (schematics) or with matplotlib (anything with
axes or a true scale), and nothing is allowed to sit outside its canvas.
"""

from __future__ import annotations

import math

import matplotlib.pyplot as plt
import numpy as np

from common import (
    AMBER, AMBER_LIGHT, BLUE, BLUE_LIGHT, BORDER, GREEN, GREEN_BRIGHT,
    GREEN_LIGHT, GREEN_MID, LIGHT_BG, MUTED, NAVY, PURPLE, PURPLE_LIGHT,
    RED, RED_LIGHT, SLATE, arrow, arrow2, banner, card, line, path, poly,
    rect, recap_card, svg, t, write_svg,
)

W = 760


# ── Chapter 1: the subject and its branches ────────────────────────────────
def ch01_scope() -> None:
    b = [t(W / 2, 26, "Geography: one subject, two families and a set of tools", size=13, weight="bold"),
         t(W / 2, 44, "The examiner asks which branch a topic belongs to, and what each branch measures.", size=9.4, fill=MUTED)]

    heads = [("PHYSICAL GEOGRAPHY", "the natural environment", GREEN),
             ("HUMAN GEOGRAPHY", "people and their work", BLUE),
             ("TECHNIQUES", "how geography is done", AMBER)]
    xs = [30, 275, 520]
    for (head, sub, col), x in zip(heads, xs):
        b.append(rect(x, 62, 210, 46, "#FFFFFF", col, 7, 1.5))
        b.append(f'<rect x="{x}" y="62" width="210" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + 105, 84, head, size=9.6, weight="bold", fill=col))
        b.append(t(x + 105, 99, sub, size=8.6, fill=MUTED))

    items = [
        [("Relief and landforms", "the shape of the ground"),
         ("Weather and climate", "the atmosphere over time"),
         ("Rivers, lakes, seas", "water on and under the land"),
         ("Soils and vegetation", "the living skin of the earth")],
        [("Population", "numbers, growth, movement"),
         ("Settlement", "villages, towns, cities"),
         ("Economic activity", "farming, mining, industry"),
         ("Transport and trade", "how goods and people move")],
        [("Map reading", "scale, grid, contours, bearing"),
         ("Fieldwork", "measure, record, sample"),
         ("Statistics", "means, graphs, choropleths"),
         ("Remote sensing and GIS", "photographs and layers")],
    ]
    for col_i, x in enumerate(xs):
        for row_i, (head, body) in enumerate(items[col_i]):
            y = 122 + row_i * 46
            b.append(rect(x, y, 210, 38, LIGHT_BG, BORDER, 6, 1.0))
            b.append(t(x + 10, y + 16, head, size=8.8, weight="bold", anchor="start"))
            b.append(t(x + 10, y + 30, body, size=8.0, fill=MUTED, anchor="start"))

    b.append(rect(30, 316, 700, 40, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(380, 333, "The test of a definition: name the process, name the scale, name the example.",
               size=9.6, weight="bold", fill=GREEN))
    b.append(t(380, 348, "Physical geography explains a landform; human geography explains a pattern of people.", size=8.8, fill=SLATE))
    write_svg("geo1_ch01_scope.svg", svg(W, 372, "\n".join(b)))


# ── Chapter 2: the earth in space ──────────────────────────────────────────
def ch02_earth() -> None:
    b = [t(W / 2, 24, "The globe the examiner draws: latitude first, then time", size=13, weight="bold")]

    cx, cy, r = 210, 210, 140
    b.append(f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="{BLUE_LIGHT}" stroke="{BLUE}" stroke-width="1.6"/>')
    for lat, name, col in [(0, "Equator 0°", NAVY), (23.5, "Tropic of Cancer 23½°N", AMBER),
                           (-23.5, "Tropic of Capricorn 23½°S", AMBER),
                           (66.5, "Arctic Circle 66½°N", MUTED), (-66.5, "Antarctic Circle 66½°S", MUTED)]:
        y = cy - r * math.sin(math.radians(lat))
        half = math.sqrt(max(r * r - (cy - y) ** 2, 1))
        b.append(line(cx - half, y, cx + half, y, col, 1.0 if abs(lat) in (23.5, 66.5) else 1.6,
                      "4 3" if abs(lat) not in (0,) else None))
    for lon in (-60, -30, 30, 60):
        x = cx + r * math.sin(math.radians(lon))
        half = math.sqrt(max(r * r - (x - cx) ** 2, 1))
        b.append(f'<ellipse cx="{cx}" cy="{cy}" rx="{abs(x - cx)}" ry="{r}" fill="none" stroke="{BORDER}" stroke-width="0.9"/>')
    b.append(f'<line x1="{cx}" y1="{cy - r - 12}" x2="{cx}" y2="{cy + r + 12}" stroke="{NAVY}" stroke-width="2" stroke-dasharray="6 4"/>')
    b.append(t(cx, cy - r - 20, "axis", size=8.6, fill=NAVY))
    b.append(t(cx, cy + 4, "0°", size=9, weight="bold"))
    b.append(t(cx + 12, cy - 6, "N", size=9, weight="bold", anchor="start"))
    b.append(t(cx + 106, cy - r * math.sin(math.radians(23.5)) - 4, "23½°N", size=8.2, fill=AMBER, anchor="start"))
    b.append(t(cx + 106, cy - r * math.sin(math.radians(-23.5)) + 10, "23½°S", size=8.2, fill=AMBER, anchor="start"))

    x0 = 400
    b.append(t(x0, 62, "Two motions, two sets of consequences", size=10.4, weight="bold", anchor="start", fill=NAVY))
    panels = [
        ("ROTATION", "24 hours, west to east", ["day and night", "apparent movement of the sun", "15° of longitude = 1 hour", "deflection of winds and currents"], GREEN),
        ("REVOLUTION", "365¼ days, tilted axis", ["the seasons", "varying day length", "the overhead sun between the tropics", "the 23½° tilt does the work"], BLUE),
    ]
    for i, (head, sub, rows, col) in enumerate(panels):
        y = 76 + i * 130
        b.append(rect(x0, y, 330, 116, "#FFFFFF", col, 7, 1.4))
        b.append(f'<rect x="{x0}" y="{y}" width="330" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x0 + 12, y + 24, head, size=9.6, weight="bold", fill=col, anchor="start"))
        b.append(t(x0 + 12, y + 39, sub, size=8.4, fill=MUTED, anchor="start"))
        for j, row in enumerate(rows):
            b.append(t(x0 + 18, y + 58 + j * 14, "• " + row, size=8.6, anchor="start"))

    b.append(rect(400, 342, 330, 34, AMBER_LIGHT, AMBER, 6, 1.1))
    b.append(t(565, 357, "Longitude gives the time; latitude gives the climate.", size=8.9, weight="bold", fill=AMBER))
    b.append(t(565, 369, "Two numbers fix a place; each answers a different question.", size=8.2, fill=SLATE))
    write_svg("geo1_ch02_earth.svg", svg(W, 388, "\n".join(b)))


# ── Chapter 3: the crust ───────────────────────────────────────────────────
def ch03_crust() -> None:
    b = [t(W / 2, 24, "Inside the earth, and the cycle that recycles the crust", size=13, weight="bold")]

    # Interior: quarter sections
    cx, cy, R = 200, 250, 150
    layers = [(150, GREEN_MID, "crust 0–70 km"), (118, AMBER_LIGHT, "mantle 70–2 900 km"),
              (70, "#FDE68A", "outer core 2 900–5 150 km"), (34, "#FCA5A5", "inner core 5 150–6 371 km")]
    for rad, fill, name in layers:
        b.append(f'<circle cx="{cx}" cy="{cy}" r="{rad}" fill="{fill}" stroke="{NAVY}" stroke-width="0.9" opacity="0.95"/>')
    half = int(math.sqrt(2) * R / 2)
    b.append(f'<path d="M {cx - R} {cy} A {R} {R} 0 0 1 {cx + R} {cy} Z" fill="none"/>')
    labels = [("crust", cy - R + 12, NAVY), ("mantle", cy - 122, NAVY),
              ("outer core", cy - 66, NAVY), ("inner core", cy + 6, RED)]
    b.append(t(cx, 84, "the earth's interior", size=9.2, weight="bold", fill=NAVY))
    for name, y, col in labels:
        b.append(t(cx, y, name, size=8.8, weight="bold", fill=col))
    b.append(t(200, 430, "Crust: thin, solid, broken into plates. Mantle: slow, hot, moving.", size=8.2, fill=MUTED))

    # Rock cycle on the right
    x0 = 390
    b.append(t(x0 + 160, 56, "The rock cycle", size=10.4, weight="bold", fill=NAVY))
    boxes = [("IGNEOUS", "cooled magma", 380, 76, GREEN),
             ("SEDIMENTARY", "deposited and pressed", 505, 168, BLUE),
             ("METAMORPHIC", "heat and pressure", 380, 260, PURPLE)]
    for head, sub, x, y, col in boxes:
        b.append(rect(x, y, 150, 62, "#FFFFFF", col, 7, 1.4))
        b.append(f'<rect x="{x}" y="{y}" width="150" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + 75, y + 26, head, size=9.2, weight="bold", fill=col))
        b.append(t(x + 75, y + 42, sub, size=8.2, fill=MUTED))
    b.append(arrow(462, 140, 512, 166, GREEN))
    b.append(t(536, 152, "erosion", size=7.4, fill=SLATE, anchor="start"))
    b.append(arrow(540, 232, 500, 258, BLUE))
    b.append(t(548, 250, "heat", size=7.4, fill=SLATE, anchor="start"))
    b.append(t(548, 262, "pressure", size=7.4, fill=SLATE, anchor="start"))
    b.append(arrow(372, 258, 372, 140, PURPLE))
    b.append(t(364, 204, "melt", size=7.4, fill=SLATE, anchor="end"))

    b.append(rect(380, 340, 350, 54, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(392, 357, "Evidence for plates: matching coastlines, fossils,", size=8.6, anchor="start", fill=SLATE))
    b.append(t(392, 369, "matching rock ages, and the earthquake belts.", size=8.6, anchor="start", fill=SLATE))
    b.append(t(392, 383, "The theory is continental drift; the mechanism is convection.", size=8.6, anchor="start", weight="bold", fill=GREEN))
    write_svg("geo1_ch03_crust.svg", svg(W, 406, "\n".join(b)))


# ── Chapter 4: rainfall types ──────────────────────────────────────────────
def _cloud(cx, cy, w, col="#BFDBFE"):
    parts = []
    for dx, dy, rx, ry in [(-w * 0.28, 0, w * 0.30, 12), (0, -8, w * 0.34, 16), (w * 0.28, 0, w * 0.30, 12)]:
        parts.append(f'<ellipse cx="{cx + dx}" cy="{cy + dy}" rx="{rx}" ry="{ry}" fill="{col}" stroke="{BLUE}" stroke-width="0.7"/>')
    return "\n".join(parts)


def ch04_rain() -> None:
    b = [t(W / 2, 24, "Three ways air is forced to rise — and only three", size=13, weight="bold")]
    panels = [(10, "RELIEF", "air climbs a hill"), (260, "CONVECTIONAL", "air climbs because it is hot"), (510, "FRONTAL", "air climbs over a wedge")]
    for x, head, sub in panels:
        b.append(rect(x, 42, 240, 250, "#FFFFFF", BORDER, 8, 1.1))
        b.append(t(x + 120, 62, head, size=9.4, weight="bold", fill=GREEN))
        b.append(t(x + 120, 76, sub, size=7.9, fill=MUTED))

    # relief
    x = 10
    b.append(poly([(x + 20, 250), (x + 110, 120), (x + 200, 250)], "#E2E8F0", SLATE, 1.2))
    b.append(_cloud(x + 120, 92, 90))
    for i in range(4):
        b.append(line(x + 116 + i * 6, 104 + i * 3, x + 112 + i * 7, 128 + i * 4, BLUE, 1.0))
    b.append(arrow(x + 40, 232, x + 95, 150, GREEN))
    b.append(t(x + 46, 190, "windward", size=7.6, fill=GREEN, anchor="start"))
    b.append(t(x + 168, 210, "leeward", size=7.6, fill=RED))
    b.append(t(x + 168, 222, "dry", size=7.6, fill=RED))
    b.append(t(x + 120, 268, "rain on the windward slope", size=8.2, fill=SLATE))

    # convectional
    x = 260
    b.append(rect(x + 20, 238, 200, 12, "#FCD34D", "#D97706", 2, 0.8))
    b.append(_cloud(x + 120, 118, 96))
    for i in range(5):
        b.append(arrow(x + 55 + i * 32, 234, x + 55 + i * 32, 150, AMBER, 1.3, "aa"))
    for i in range(4):
        b.append(line(x + 116 + i * 6, 130 + i * 3, x + 112 + i * 7, 156 + i * 4, BLUE, 1.0))
    b.append(t(x + 120, 212, "strong heating", size=7.8, fill=AMBER))
    b.append(t(x + 120, 268, "afternoon storm, one locality", size=8.2, fill=SLATE))

    # frontal
    x = 510
    b.append(poly([(x + 20, 200), (x + 200, 160), (x + 200, 208), (x + 20, 240)], "#FEE2E2", RED, 1.1))
    b.append(poly([(x + 20, 120), (x + 200, 168), (x + 200, 120)], "#DBEAFE", BLUE, 1.1))
    b.append(_cloud(x + 120, 118, 96))
    for i in range(4):
        b.append(line(x + 116 + i * 6, 132 + i * 3, x + 112 + i * 7, 152 + i * 4, BLUE, 1.0))
    b.append(arrow(x + 40, 176, x + 150, 182, BLUE))
    b.append(t(x + 40, 166, "warm air", size=7.6, fill=BLUE, anchor="start"))
    b.append(t(x + 150, 228, "cold air wedges under", size=7.6, fill=RED, anchor="middle"))
    b.append(t(x + 120, 268, "where two air masses meet", size=8.2, fill=SLATE))

    b.append(rect(10, 306, 740, 36, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(380, 322, "All three lift air, cool it to the dew point, and make cloud. The trigger is what differs.", size=9, weight="bold", fill=GREEN))
    b.append(t(380, 335, "Relief: a barrier. Convectional: a hot surface. Frontal: a boundary between air masses.", size=8.4, fill=SLATE))
    write_svg("geo1_ch04_rain.svg", svg(W, 352, "\n".join(b)))


# ── Chapter 5: the river's work ────────────────────────────────────────────
def ch05_river() -> None:
    b = [t(W / 2, 24, "One river, three courses, three kinds of work", size=13, weight="bold")]

    xs = np.linspace(0, 1, 120)
    y = 78 + 150 * (1 - xs) ** 1.7
    pts = " ".join(f"{40 + x * 680:.1f},{yy:.1f}" for x, yy in zip(xs, y))
    b.append(f'<polyline points="{pts}" fill="none" stroke="{BLUE}" stroke-width="3"/>')
    for xx, yy in [(0.0, y[0]), (0.5, y[60]), (1.0, y[-1])]:
        b.append(f'<circle cx="{40 + xx * 680:.1f}" cy="{yy:.1f}" r="4" fill="{BLUE}"/>')

    stages = [(130, "UPPER COURSE", "steep, fast, vertical erosion", ["V-shaped valley", "rapids and waterfalls", "interlocking spurs"]),
              (380, "MIDDLE COURSE", "gradient falls, lateral erosion", ["meanders", "ox-bow lakes", "bluffs and slip-off slopes"]),
              (630, "LOWER COURSE", "almost flat, deposition", ["flood plain", "levees", "delta or estuary"])]
    for cx, head, sub, rows in stages:
        b.append(rect(cx - 115, 268, 230, 104, LIGHT_BG, BORDER, 7, 1.1))
        b.append(t(cx, 288, head, size=8.8, weight="bold", fill=GREEN))
        b.append(t(cx, 302, sub, size=7.8, fill=MUTED))
        for i, row in enumerate(rows):
            b.append(t(cx, 320 + i * 13, row, size=8.0, fill=SLATE))

    b.append(t(560, 66, "energy falls as the gradient falls", size=8.4, fill=MUTED, italic=True))
    b.append(rect(10, 386, 740, 44, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(380, 404, "Erosion dominates the upper course, transport the middle, deposition the lower.", size=9, weight="bold", fill=GREEN))
    b.append(t(380, 418, "A landform names the process and the position: waterfall = upper, levee = lower.", size=8.3, fill=SLATE))
    write_svg("geo1_ch05_river.svg", svg(W, 440, "\n".join(b)))


# ── Chapter 6: weathering and the soil profile ─────────────────────────────
def ch06_soil() -> None:
    b = [t(W / 2, 24, "Breaking the rock, then building the soil", size=13, weight="bold")]
    b.append(t(190, 52, "WEATHERING: rock broken in place", size=9.6, weight="bold", fill=NAVY))
    kinds = [("PHYSICAL", ["freeze–thaw", "heating and cooling", "salt and roots"], GREEN),
             ("CHEMICAL", ["solution", "oxidation", "hydrolysis"], BLUE),
             ("BIOLOGICAL", ["roots", "burrowing animals", "organic acids"], AMBER)]
    for i, (head, rows, col) in enumerate(kinds):
        x = 20 + i * 120
        b.append(rect(x, 64, 110, 116, "#FFFFFF", col, 6, 1.2))
        b.append(t(x + 55, 84, head, size=8.4, weight="bold", fill=col))
        for j, row in enumerate(rows):
            b.append(t(x + 55, 104 + j * 16, row, size=7.8, fill=SLATE))
    b.append(t(190, 196, "Weathering is not erosion: nothing has moved yet.", size=8.2, fill=MUTED, italic=True))

    # Soil profile
    x0 = 410
    b.append(t(x0 + 130, 52, "A soil profile, top to bottom", size=9.6, weight="bold", fill=NAVY))
    horizons = [("O", "litter", "#92400E", 30), ("A", "humus, dark, roots", "#78350F", 44),
                ("B", "subsoil, clay and iron", "#B45309", 52), ("C", "weathered rock", "#D6D3D1", 40),
                ("R", "solid rock", "#A8A29E", 34)]
    y = 64
    for letter, desc, fill, h in horizons:
        b.append(rect(x0, y, 200, h, fill, NAVY, 2, 0.7))
        b.append(t(x0 + 100, y + h / 2 + 4, f"{letter} — {desc}", size=8.2,
                   fill="white" if letter in "OAB" else NAVY, weight="bold"))
        y += h + 4
    b.append(t(x0 + 100, y + 12, "depth increases downwards", size=7.8, fill=MUTED, italic=True))

    b.append(rect(20, 286, 720, 60, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(380, 306, "Soil = mineral particles + humus + air + water + organisms.", size=9.4, weight="bold", fill=GREEN))
    b.append(t(380, 322, "Texture names the mineral mix — sand, silt, clay — and texture decides drainage and fertility.", size=8.4, fill=SLATE))
    b.append(t(380, 336, "A soil that holds water but lets air in is the one farmers call fertile.", size=8.4, fill=SLATE))
    write_svg("geo1_ch06_soil.svg", svg(W, 360, "\n".join(b)))


# ── Chapter 7: map work ────────────────────────────────────────────────────
def ch07_map() -> None:
    b = [t(W / 2, 24, "The map is a set of conversions, and each one is a mark", size=13, weight="bold")]

    b.append(t(190, 54, "Scale: three ways of saying the same thing", size=9.6, weight="bold", fill=NAVY))
    rows = [("Representative fraction", "1 : 50 000"),
            ("Statement", "1 cm represents 0.5 km"),
            ("Linear", "a bar divided into kilometres")]
    for i, (left, right) in enumerate(rows):
        y = 68 + i * 42
        b.append(rect(20, y, 150, 34, LIGHT_BG, BORDER, 5, 1.0))
        b.append(rect(178, y, 170, 34, GREEN_LIGHT, GREEN, 5, 1.0))
        b.append(t(95, y + 21, left, size=8.0, fill=SLATE))
        b.append(t(263, y + 21, right, size=8.2, weight="bold", fill=GREEN))
    b.append(rect(20, 202, 340, 60, AMBER_LIGHT, AMBER, 6, 1.1))
    b.append(t(190, 220, "1 : 50 000 means 1 cm = 50 000 cm = 500 m = 0.5 km", size=8.4, weight="bold", fill=AMBER))
    b.append(t(190, 236, "Convert once, write the unit, then multiply.", size=8.1, fill=SLATE))
    b.append(t(190, 250, "Large scale = small area, more detail.", size=8.1, fill=SLATE))

    b.append(t(560, 54, "Contours to a cross-section", size=9.6, weight="bold", fill=NAVY))
    b.append(rect(400, 64, 340, 108, "#FFFFFF", BORDER, 6, 1.0))
    for i in range(5):
        b.append(f'<ellipse cx="570" cy="120" rx="{62 - i * 11}" ry="{34 - i * 6}" fill="none" stroke="{AMBER}" stroke-width="1.1"/>')
    b.append(t(416, 80, "a hill, in plan", size=7.6, fill=MUTED, anchor="start"))
    b.append(t(570, 168, "closer contours = steeper ground", size=7.6, fill=MUTED))

    prof_x = [420, 450, 480, 510, 540, 570, 600, 630, 660, 690]
    prof_y = [236, 232, 224, 208, 190, 182, 190, 208, 224, 232]
    b.append(line(400, 244, 740, 244, SLATE, 1.2))
    b.append(" ".join([]))
    pl = " ".join(f"{x},{y}" for x, y in zip(prof_x, prof_y))
    b.append(f'<polyline points="{pl}" fill="none" stroke="{NAVY}" stroke-width="2"/>')
    b.append(t(420, 258, "A", size=8, weight="bold", fill=NAVY))
    b.append(t(690, 258, "B", size=8, weight="bold", fill=NAVY))
    b.append(t(570, 272, "the same hill seen from the side", size=7.8, fill=MUTED))
    b.append(t(570, 290, "gradient = vertical interval ÷ horizontal distance", size=8.2, weight="bold", fill=NAVY))

    b.append(rect(20, 310, 720, 52, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(380, 330, "Every map question is one of five: distance, bearing, grid reference, relief, land use.", size=9.2, weight="bold", fill=GREEN))
    b.append(t(380, 345, "Name the conversion, show the arithmetic, then answer the question that was asked.", size=8.3, fill=SLATE))
    b.append(t(380, 357, "A bearing is measured clockwise from north, in three figures — 045°, not 45°.", size=8.3, fill=SLATE))
    write_svg("geo1_ch07_map.svg", svg(W, 376, "\n".join(b)))


# ── Recap cards ────────────────────────────────────────────────────────────
def recaps() -> None:
    recap_card("recap_geo1_ch01.svg", "Chapter 1 — Geography and its branches", [
        ("The definition", "Geography studies the earth as the home of people: the physical environment, the human use of it, and the space that joins the two."),
        ("The two families", "Physical geography (relief, weather, water, soils, vegetation) and human geography (population, settlement, economy, movement)."),
        ("The tools", "Maps, fieldwork, statistics, photographs and GIS. Each answers a different kind of question."),
        ("The exam habit", "Name the branch, name the scale, give the Nigerian example. A definition without an example earns half a mark."),
    ])
    recap_card("recap_geo1_ch02.svg", "Chapter 2 — The earth in space", [
        ("Shape and grid", "An oblate spheroid. Latitude measures north–south from the equator; longitude measures east–west from Greenwich."),
        ("Rotation", "24 hours, west to east: day and night, the apparent sun, and 15° of longitude for every hour of time difference."),
        ("Revolution", "365¼ days on a tilted axis: the seasons, changing day length, and the overhead sun between 23½°N and 23½°S."),
        ("The time sum", "Difference in longitude ÷ 15 = difference in hours. Going east adds, going west subtracts."),
    ])
    recap_card("recap_geo1_ch03.svg", "Chapter 3 — The crust", [
        ("The layers", "Crust, mantle, outer core, inner core. The crust is thin, solid and broken into plates that float on the mantle."),
        ("The three rocks", "Igneous (cooled magma), sedimentary (deposited in layers), metamorphic (changed by heat and pressure)."),
        ("The cycle", "Weathering and erosion make sediment; burial makes sedimentary rock; heat and pressure make metamorphic rock; melting returns it to magma."),
        ("The evidence", "Matching coastlines, fossils and rock ages, plus the earthquake and volcano belts, support continental drift."),
    ])
    recap_card("recap_geo1_ch04.svg", "Chapter 4 — Weather and climate", [
        ("The atmosphere", "Troposphere (weather), stratosphere (ozone), mesosphere, thermosphere. Temperature falls with height in the troposphere."),
        ("Pressure and wind", "Air moves from high to low pressure, deflected by the Coriolis force: winds blow anticlockwise into a low in the north."),
        ("The three rains", "Relief (a barrier), convectional (a hot surface), frontal (a boundary). All three lift air to its dew point."),
        ("Climate types", "Equatorial, tropical savanna, desert, Mediterranean, temperate. Latitude, altitude, distance from the sea and currents decide them."),
    ])
    recap_card("recap_geo1_ch05.svg", "Chapter 5 — Rivers and drainage", [
        ("The cycle", "Evaporation, transpiration, condensation, precipitation, runoff, infiltration, percolation, groundwater flow."),
        ("The work", "Erosion (hydraulic action, abrasion, attrition, solution), transport (traction, saltation, suspension, solution), deposition."),
        ("The courses", "Upper: V-shaped valleys, waterfalls, interlocking spurs. Middle: meanders, ox-bows. Lower: flood plain, levees, delta."),
        ("The patterns", "Dendritic, trellised, radial, centripetal. The pattern records the rock and the slope."),
    ])
    recap_card("recap_geo1_ch06.svg", "Chapter 6 — Landforms and soils", [
        ("Weathering", "Physical (freeze–thaw, heat), chemical (solution, oxidation), biological (roots, animals). Rock broken in place is not erosion."),
        ("Erosion agents", "Water, wind, ice and waves each produce their own landforms — and each is named by the process that made it."),
        ("The soil", "Mineral particles, humus, air, water and organisms. Texture decides drainage; humus decides fertility."),
        ("The profile", "O (litter), A (humus), B (subsoil), C (weathered rock), R (solid rock). Depth increases downwards."),
    ])
    recap_card("recap_geo1_ch07.svg", "Chapter 7 — Map work", [
        ("Scale", "1 : 50 000 means 1 cm on the map is 0.5 km on the ground. Large scale = small area, more detail."),
        ("Position", "Four-figure references locate a square, six-figure references a point: eastings first, then northings."),
        ("Relief", "Contours join points of equal height. Close contours mean steep ground; a cross-section turns them into a profile."),
        ("The sums", "Gradient = vertical interval ÷ horizontal distance. Bearing is clockwise from north, three figures."),
    ])


def cover() -> None:
    banner("geo1_cover_banner.svg", "GEOGRAPHY — VOLUME 1",
           [("The Subject\nand its Tools", GREEN), ("The Earth\nin Space", BLUE),
            ("Crust, Rocks\nand Plates", AMBER), ("Weather\nand Climate", PURPLE),
            ("Rivers and\nDrainage", GREEN), ("Landforms\nand Soils", BLUE),
            ("Map Work\nand Statistics", AMBER)],
           subtitle="The Physical Environment and Map Work")


def main() -> None:
    ch01_scope()
    ch02_earth()
    ch03_crust()
    ch04_rain()
    ch05_river()
    ch06_soil()
    ch07_map()
    recaps()
    cover()
    print("wrote", len(list((__import__('pathlib').Path(__file__).parent.parent / 'diagrams').glob('*.svg'))), "svg files")


if __name__ == "__main__":
    main()
