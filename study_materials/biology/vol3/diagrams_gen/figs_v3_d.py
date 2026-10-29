"""Volume 3 diagrams — applied biology (chapter 9) and practical skills (chapter 10)."""

from __future__ import annotations

from common import (recap_card, GREEN, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, BORDER,
                    AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE,
                    PURPLE_LIGHT, write_svg, svg, t, line, rect, arrow2, dot, poly, path)
from figs_v3_c import box, elbow


def lab(x, y, s, col=MUTED, size=7.5, anchor="middle"):
    return t(x, y, s, size=size, fill=col, anchor=anchor)


# ── chapter 9: applied biology ────────────────────────────────────────────
def ch09_croprotation():
    w, h = 760, 300
    b = [t(380, 24, "CROP ROTATION — FOUR PLOTS, FOUR YEARS, NO PESTS LEFT BEHIND", size=12.4, weight="bold")]

    plots = [("YEAR 1", "yam and maize", ["heavy feeders: they take", "much nitrogen from the soil"], GREEN, GREEN_LIGHT),
             ("YEAR 2", "cowpea and groundnut", ["legumes: Rhizobium in the", "roots puts nitrogen back"], AMBER, AMBER_LIGHT),
             ("YEAR 3", "cassava", ["deep roots: they draw", "from a lower layer"], BLUE, BLUE_LIGHT),
             ("YEAR 4", "fallow or cover crop", ["the soil rests, humus", "builds up again"], PURPLE, PURPLE_LIGHT)]
    for i, (yr, crop, body, col, light) in enumerate(plots):
        x = 25 + i * 180
        b.append(rect(x, 56, 165, 92, light, col, 7, 1.4))
        b.append(f'<rect x="{x}" y="56" width="165" height="4.6" rx="2.3" fill="{col}"/>')
        b.append(t(x + 82, 76, yr, size=7.6, weight="bold", fill=col))
        b.append(t(x + 82, 92, crop, size=9.0, weight="bold", fill=NAVY))
        b.append(t(x + 82, 110, body[0], size=7.4, fill=SLATE))
        b.append(t(x + 82, 122, body[1], size=7.4, fill=SLATE))
        b.append(t(x + 82, 138, "plot " + str(i + 1), size=7.0, fill=MUTED))
        if i < 3:
            b.append(arrow2(x + 167, 102, x + 177, 102, color=GREEN, sw=1.6, size=6.0))

    b.append(elbow([(647, 150), (647, 186), (107, 186), (107, 152)], color=GREEN, sw=1.6))
    b.append(t(380, 200, "next year every crop moves on one plot — the cycle repeats", size=7.6, fill=GREEN))

    b.append(rect(25, 216, 710, 62, "#F8FAFC", BORDER, 8, 1.1))
    b.append(t(380, 234, "Why rotate?  nutrients are not mined out · soil-borne pests and diseases starve ·", size=8.4, weight="bold", fill=NAVY))
    b.append(t(380, 248, "weeds are broken · the soil structure improves — and legumes add nitrogen for free", size=8.4, weight="bold", fill=NAVY))
    b.append(t(380, 268, "Monoculture — the same crop on the same plot every year — does the opposite on all four counts.", size=8.0, fill=MUTED))
    write_svg("ch09_croprotation.svg", svg(w, h, "\n".join(b)))


def ch09_pests():
    w, h = 760, 276
    b = [t(380, 24, "FIVE WAYS TO CONTROL A PEST — AND WHAT EACH ONE COSTS", size=12.6, weight="bold")]

    cols = [("CULTURAL", ["rotate the crop;", "plant early;", "destroy crop remains;", "hand-pick and burn"], GREEN, GREEN_LIGHT),
            ("BIOLOGICAL", ["introduce a natural", "predator or parasite;", "no pollution, but the", "agent may attack others"], AMBER, AMBER_LIGHT),
            ("CHEMICAL", ["spray a pesticide;", "fast and sure, but it", "pollutes, kills useful", "insects and selects resistance"], RED, RED_LIGHT),
            ("GENETIC", ["breed or select", "resistant varieties;", "durable, but slow to", "produce and to replace"], BLUE, BLUE_LIGHT),
            ("PHYSICAL", ["netting, traps,", "barriers, sound and", "heat treatment;", "safe but labour-heavy"], PURPLE, PURPLE_LIGHT)]
    for i, (head, body, col, light) in enumerate(cols):
        x = 20 + i * 146
        b.append(rect(x, 54, 138, 110, light, col, 7, 1.4))
        b.append(f'<rect x="{x}" y="54" width="138" height="4.6" rx="2.3" fill="{col}"/>')
        b.append(t(x + 69, 74, head, size=8.8, weight="bold", fill=col))
        for j, line_s in enumerate(body):
            b.append(t(x + 69, 100 + j * 14, line_s, size=7.6, fill=SLATE))

    b.append(rect(20, 190, 720, 62, "#F8FBF9", GREEN, 8, 1.1))
    b.append(t(380, 208, "Integrated pest management uses all five: chemicals last, and only when the pest has passed the threshold.", size=8.4, weight="bold", fill=GREEN))
    b.append(t(380, 224, "Pesticide resistance follows the same five steps as antibiotic resistance — the spray selects the few survivors.", size=8.2, fill=SLATE))
    b.append(t(380, 240, "A pesticide also kills the pest's natural enemies, so the pest often returns worse than before: a pest resurgence.", size=8.2, fill=SLATE))
    write_svg("ch09_pests.svg", svg(w, h, "\n".join(b)))


def ch09_livestock():
    w, h = 760, 274
    b = [t(380, 24, "THE FOUR-CHAMBERED STOMACH OF A RUMINANT — A MUTUALISM IN THE GUT", size=12.4, weight="bold")]

    stages = [("MOUTH", ["grass is bitten off,", "chewed a little and", "swallowed"], GREEN, GREEN_LIGHT),
              ("RUMEN", ["bacteria and protozoa", "ferment the cellulose", "the animal cannot digest"], AMBER, AMBER_LIGHT),
              ("RETICULUM", ["food is formed into a", "ball, brought back up", "and chewed again — cud"], BLUE, BLUE_LIGHT),
              ("OMASUM", ["water and the products", "of fermentation are", "absorbed"], PURPLE, PURPLE_LIGHT),
              ("ABOMASUM", ["the true stomach:", "acid and enzymes", "finish the digestion"], RED, RED_LIGHT)]
    for i, (head, body, col, light) in enumerate(stages):
        x = 20 + i * 146
        b.append(rect(x, 54, 138, 92, light, col, 7, 1.4))
        b.append(f'<rect x="{x}" y="54" width="138" height="4.6" rx="2.3" fill="{col}"/>')
        b.append(t(x + 69, 74, head, size=8.8, weight="bold", fill=col))
        for j, line_s in enumerate(body):
            b.append(t(x + 69, 102 + j * 14, line_s, size=7.5, fill=SLATE))
        if i < 4:
            b.append(arrow2(x + 139, 112, x + 144, 112, color=SLATE, sw=1.5, size=5.6))

    b.append(t(380, 178, "mouth → rumen → reticulum → cud → omasum → abomasum → small intestine", size=8.4, weight="bold", fill=NAVY))

    b.append(rect(20, 192, 720, 64, "#F8FBF9", GREEN, 8, 1.1))
    b.append(t(380, 210, "The rumen holds bacteria and protozoa that digest cellulose. The animal eats the grass, they digest it,", size=8.4, weight="bold", fill=GREEN))
    b.append(t(380, 224, "and the animal absorbs the products — both gain, so this is mutualism, not parasitism.", size=8.4, weight="bold", fill=GREEN))
    b.append(t(380, 242, "Pigs, poultry and humans are non-ruminants: one simple stomach, and cellulose passes through undigested.", size=8.0, fill=MUTED))
    write_svg("ch09_livestock.svg", svg(w, h, "\n".join(b)))


def recap_cards_i():
    recap_card("recap_ch09.svg", "Chapter 9 recap card — crops, pests and livestock", [
        ("Rotation", "Heavy feeder → legume → deep feeder → fallow. Rotation restores nutrients and starves soil pests."),
        ("Fertiliser", "Nitrogen for leaves, phosphorus for roots and flowering, potassium for fruit and disease resistance."),
        ("Pests", "Cultural, biological, chemical, genetic and physical control; chemicals last, because resistance follows selection."),
        ("Livestock", "Ruminants have four stomach chambers, and rumen microbes digest cellulose — a mutualism."),
    ])


# ── chapter 10: practical skills ──────────────────────────────────────────
def ch10_microscope():
    w, h = 760, 340
    b = [t(380, 24, "THE MICROSCOPE — PARTS, AND THE MAGNIFICATION THAT MAKES IT WORK", size=12.4, weight="bold")]

    # base and pillar
    b.append(rect(110, 300, 190, 14, "#E8EEF6", NAVY, 3, 1.2))
    b.append(rect(240, 96, 16, 204, "#E8EEF6", NAVY, 3, 1.2))
    # arm joining pillar to tube
    b.append(rect(186, 104, 70, 14, "#E8EEF6", NAVY, 3, 1.2))
    # tube, eyepiece and objective
    b.append(rect(176, 56, 34, 130, "#F4F7FB", NAVY, 3, 1.2))
    b.append(rect(168, 44, 50, 16, "#DCE6F2", NAVY, 3, 1.2))
    b.append(rect(182, 186, 22, 20, BLUE_LIGHT, BLUE, 3, 1.2))
    # stage with clips
    b.append(rect(136, 214, 116, 8, "#E8EEF6", NAVY, 2, 1.2))
    b.append(rect(146, 204, 12, 10, "#DCE6F2", NAVY, 1.5, 1.0))
    b.append(rect(230, 204, 12, 10, "#DCE6F2", NAVY, 1.5, 1.0))
    # mirror and focus knobs
    b.append(dot(194, 258, 20, "#DCE6F2", NAVY, 1.2))
    b.append(line(180, 272, 208, 244, color=NAVY, sw=1.0))
    b.append(dot(258, 140, 12, "#E8EEF6", NAVY, 1.2))
    b.append(dot(258, 170, 9, "#E8EEF6", NAVY, 1.2))

    def lead(x1, y1, x2, y2, s, anchor="start"):
        b.append(line(x1, y1, x2, y2, color=BORDER, sw=1.0))
        dx = 4 if anchor == "start" else -4
        b.append(t(x2 + dx, y2 + 3, s, size=7.6, fill=NAVY, anchor=anchor))

    lead(218, 52, 276, 52, "eyepiece lens (×10)")
    lead(256, 111, 276, 111, "arm — carry here")
    lead(270, 140, 276, 140, "coarse focus")
    lead(267, 170, 276, 170, "fine focus")
    lead(182, 196, 130, 196, "objective lens (×40)", "end")
    lead(136, 218, 126, 218, "stage", "end")
    lead(176, 258, 126, 258, "mirror or lamp", "end")
    lead(118, 307, 100, 307, "base", "end")

    b.append(rect(400, 46, 340, 262, "#F8FBF9", GREEN, 8, 1.2))
    b.append(t(570, 68, "Total magnification", size=9.6, weight="bold", fill=GREEN))
    b.append(t(570, 88, "= eyepiece × objective", size=10.6, weight="bold", fill=NAVY))
    b.append(t(570, 108, "×10 with ×40 gives ×400", size=8.6, fill=SLATE))
    b.append(line(420, 122, 720, 122, color=BORDER, sw=0.8))
    b.append(t(570, 140, "Magnification also equals", size=8.6, weight="bold", fill=GREEN))
    b.append(t(570, 156, "image size ÷ actual size", size=9.2, weight="bold", fill=NAVY))
    b.append(t(570, 176, "so a 40 mm image at ×400 is 0.1 mm of specimen", size=8.2, fill=SLATE))
    b.append(line(420, 190, 720, 190, color=BORDER, sw=0.8))
    b.append(t(570, 208, "Low power first, then high power.", size=8.4, fill=SLATE))
    b.append(t(570, 224, "Focus upwards, never down onto the slide.", size=8.4, fill=SLATE))
    b.append(t(570, 240, "Draw with a sharp pencil, label with ruled lines", size=8.4, fill=SLATE))
    b.append(t(570, 256, "and no arrowheads, and write the magnification", size=8.4, fill=SLATE))
    b.append(t(570, 272, "under the drawing.", size=8.4, fill=SLATE))
    write_svg("ch10_microscope.svg", svg(w, h, "\n".join(b)))


def ch10_foodtests():
    w, h = 760, 296
    b = [t(380, 24, "THE FIVE FOOD TESTS — REAGENT IN, COLOUR OUT", size=12.8, weight="bold")]

    rows = [("Starch", "iodine solution", "blue-black", GREEN, GREEN_LIGHT),
            ("Reducing sugar", "Benedict's solution, heated", "brick-red precipitate", AMBER, AMBER_LIGHT),
            ("Protein", "Biuret reagent (NaOH + CuSO4)", "purple or violet", BLUE, BLUE_LIGHT),
            ("Fat", "shake with water (emulsion), or Sudan III", "milky-white emulsion; red stain", PURPLE, PURPLE_LIGHT),
            ("Vitamin C", "DCPIP solution", "the blue dye is decolourised", RED, RED_LIGHT)]

    b.append(rect(20, 46, 720, 28, NAVY, NAVY, 5, 1.0))
    for x, s, anchor in ((36, "Nutrient", "start"), (190, "Reagent and method", "start"),
                         (470, "Positive result", "start"), (660, "Food", "start")):
        b.append(t(x, 65, s, size=8.6, weight="bold", fill="#FFFFFF", anchor=anchor))

    foods = ["bread, potato", "honey, ripe fruit", "egg white, beans", "groundnut, palm oil", "orange, guava"]
    for i, (nut, reagent, result, col, light) in enumerate(rows):
        y = 74 + i * 40
        b.append(rect(20, y, 720, 40, light if i % 2 else "#FFFFFF", BORDER, 3, 0.8))
        b.append(t(36, y + 25, nut, size=8.8, weight="bold", fill=col, anchor="start"))
        b.append(t(190, y + 25, reagent, size=8.2, fill=SLATE, anchor="start"))
        b.append(t(470, y + 25, result, size=8.2, fill=SLATE, anchor="start"))
        b.append(t(660, y + 25, foods[i], size=7.8, fill=MUTED, anchor="start"))

    b.append(t(380, 289, "A control is the same test on water: it proves the colour came from the food and not from the reagent.", size=7.8, fill=MUTED))
    write_svg("ch10_foodtests.svg", svg(w, h, "\n".join(b)))


def ch10_graph():
    w, h = 760, 332
    b = [t(380, 24, "CHOOSING THE RIGHT GRAPH — AND DRAWING IT SO IT EARNS THE MARKS", size=12.4, weight="bold")]

    # left: line graph panel
    b.append(rect(24, 46, 348, 214, "#F8FBF9", GREEN, 8, 1.2))
    b.append(t(198, 66, "LINE GRAPH — both variables continuous", size=8.8, weight="bold", fill=GREEN))
    b.append(line(66, 216, 350, 216, color=NAVY, sw=1.4))
    b.append(line(66, 216, 66, 92, color=NAVY, sw=1.4))
    pts = [(66, 200), (108, 178), (150, 148), (192, 124), (234, 110), (276, 106), (318, 104)]
    b.append(path("M " + " L ".join(f"{x} {y}" for x, y in pts), stroke=GREEN, sw=1.8))
    for x, y in pts:
        b.append(dot(x, y, 2.8, GREEN))
    b.append(t(208, 232, "time, temperature or concentration", size=7.4, fill=MUTED))
    b.append(t(40, 154, "rate", size=7.4, fill=MUTED))
    b.append(t(198, 250, "join the points with a smooth curve; label both axes with quantity and unit", size=7.2, fill=SLATE))

    # right: bar chart panel
    b.append(rect(388, 46, 348, 214, "#FBF8F3", AMBER, 8, 1.2))
    b.append(t(562, 66, "BAR CHART — one variable in named groups", size=8.8, weight="bold", fill=AMBER))
    b.append(line(430, 216, 714, 216, color=NAVY, sw=1.4))
    b.append(line(430, 216, 430, 92, color=NAVY, sw=1.4))
    heights = [58, 96, 74, 34, 48]
    for i, hgt in enumerate(heights):
        x = 446 + i * 54
        b.append(rect(x, 216 - hgt, 36, hgt, "#F3D9A8", AMBER, 2, 1.0))
    b.append(t(572, 232, "five habitats, or five species", size=7.4, fill=MUTED))
    b.append(t(410, 154, "count", size=7.4, fill=MUTED))
    b.append(t(562, 250, "equal-width bars with gaps; a bar chart never joins the tops", size=7.2, fill=SLATE))

    b.append(rect(24, 270, 712, 50, "#F8FAFC", BORDER, 8, 1.1))
    b.append(t(380, 290, "Continuous → line graph. Discrete or categorical → bar chart. Always: title, both axes named, units, even scale.", size=8.4, weight="bold", fill=NAVY))
    b.append(t(380, 306, "Plot the points in pencil first, draw the best straight line or smooth curve, and never force the line through the origin.", size=8.2, fill=MUTED))
    write_svg("ch10_graph.svg", svg(w, h, "\n".join(b)))


def recap_cards_j():
    recap_card("recap_ch10.svg", "Chapter 10 recap card — practical skills", [
        ("Magnification", "eyepiece × objective. Magnification = image size ÷ actual size."),
        ("Food tests", "Iodine → blue-black for starch; Benedict's + heat → brick-red for reducing sugar; Biuret → purple for protein."),
        ("Sampling", "Random quadrats for plants; a belt transect for change along a line; capture–recapture for animals."),
        ("Graphs", "Continuous → line graph; categories → bar chart. Title, axes, units, even scale, pencil first."),
    ])
