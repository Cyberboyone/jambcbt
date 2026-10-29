"""Volume 3 diagrams — ecology, interactions, cycles, pollution and conservation."""

from __future__ import annotations

from common import (recap_card, GREEN, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, BORDER,
                    AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE,
                    PURPLE_LIGHT, write_svg, svg, t, line, rect, arrow2, dot, poly, path)


def box(x, y, w, h, head, body_lines=(), accent=GREEN, fill="#FFFFFF", head_size=9.4, body_size=8.0):
    out = [rect(x, y, w, h, fill, accent, 7, 1.4),
           f'<rect x="{x}" y="{y}" width="{w}" height="4.5" rx="2.2" fill="{accent}"/>',
           t(x + w / 2, y + 19, head, size=head_size, weight="bold", fill=accent if fill != "#FFFFFF" else NAVY)]
    for i, s in enumerate(body_lines):
        out.append(t(x + w / 2, y + 34 + i * 12, s, size=body_size, fill=SLATE))
    return "".join(out)


# ── chapter 5: the ecosystem and sampling ─────────────────────────────────
def ch05_ecosystem():
    w, h = 760, 348
    b = [t(380, 26, "THE ECOSYSTEM — HOW MATTER AND ENERGY MOVE THROUGH A HABITAT", size=12.4, weight="bold")]

    b.append(box(36, 60, 150, 62, "SUN", ["the original source of", "energy for the ecosystem"], AMBER, AMBER_LIGHT))
    b.append(box(244, 60, 176, 62, "PRODUCERS", ["green plants and algae:", "they make food by", "photosynthesis"], GREEN, GREEN_LIGHT))
    b.append(box(478, 60, 176, 62, "CONSUMERS", ["animals that feed on", "plants, and on each other"], BLUE, BLUE_LIGHT))
    b.append(box(478, 196, 176, 62, "DECOMPOSERS", ["bacteria and fungi break", "down dead bodies and waste"], PURPLE, PURPLE_LIGHT))
    b.append(box(244, 196, 176, 62, "NUTRIENTS IN THE SOIL", ["minerals released by decay", "are taken up by the roots"], AMBER, AMBER_LIGHT))

    b.append(arrow2(188, 91, 240, 91, color=AMBER, sw=2.0))
    b.append(t(214, 80, "light", size=7.6, fill=MUTED))
    b.append(arrow2(422, 91, 474, 91, color=GREEN, sw=2.0))
    b.append(t(448, 80, "food", size=7.6, fill=MUTED))
    b.append(arrow2(566, 126, 566, 192, color=BLUE, sw=2.0))
    b.append(t(600, 163, "death and waste", size=7.6, fill=MUTED))
    b.append(arrow2(474, 227, 424, 227, color=PURPLE, sw=2.0))
    b.append(t(449, 219, "decay", size=7.6, fill=MUTED))
    b.append(arrow2(332, 192, 332, 126, color=GREEN, sw=2.0))
    b.append(t(362, 163, "uptake by roots", size=7.6, fill=GREEN))

    b.append(rect(36, 278, 618, 28, "#F1F5F9", BORDER, 6, 1.1))
    b.append(t(46, 296, "PHYSICAL (ABIOTIC) FACTORS — light, temperature, water, soil, pH, salinity and wind set the limits of the habitat, and the living things must adapt to them.",
               size=8.2, fill=NAVY, anchor="start"))

    b.append(rect(36, 314, 618, 30, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(345, 326, "Ecosystem = the living community + the non-living environment, working as one system.", size=8.9, weight="bold", fill=GREEN))
    b.append(t(345, 338, "Energy flows through it once and is lost as heat; matter is recycled round it again and again.", size=8.3, fill=SLATE))
    write_svg("ch05_ecosystem.svg", svg(w, h, "\n".join(b)))


def ch05_sampling():
    w, h = 760, 330
    b = [t(380, 26, "THREE WAYS TO MEASURE A POPULATION", size=13.0, weight="bold")]

    # 1 quadrat
    b.append(t(128, 54, "1 · Quadrat — plants", size=9.4, weight="bold", fill=GREEN))
    b.append(rect(52, 66, 152, 112, "#ECFDF5", GREEN, 6, 1.2))
    for i in range(4):
        for j in range(3):
            b.append(rect(62 + i * 36, 78 + j * 34, 30, 28, "#FFFFFF", GREEN_MID, 2, 0.9))
            for k in range((i + j) % 3):
                b.append(dot(70 + i * 36 + k * 7, 90 + j * 34, 2.6, GREEN))
    b.append(t(128, 192, "count inside a 0.5 m × 0.5 m square,", size=7.8, fill=SLATE))
    b.append(t(128, 204, "then multiply up to the whole area", size=7.8, fill=SLATE))

    # 2 transect
    b.append(t(380, 54, "2 · Transect — how a habitat changes", size=9.4, weight="bold", fill=BLUE))
    b.append(rect(300, 66, 160, 112, "#EFF6FF", BLUE, 6, 1.2))
    b.append(line(310, 122, 450, 122, color=BLUE, sw=2.0))
    for i in range(5):
        b.append(rect(314 + i * 28, 108, 20, 20, "#FFFFFF", BLUE, 2, 0.9))
    b.append(t(316, 100, "sea", size=7.4, fill=MUTED))
    b.append(t(430, 100, "land", size=7.4, fill=MUTED))
    b.append(t(380, 192, "lay a tape across the habitat and record", size=7.8, fill=SLATE))
    b.append(t(380, 204, "what is in each quadrat along it", size=7.8, fill=SLATE))

    # 3 capture-recapture
    b.append(t(632, 54, "3 · Capture–recapture — animals", size=9.4, weight="bold", fill=AMBER))
    b.append(rect(552, 66, 160, 112, "#FFFBEB", AMBER, 6, 1.2))
    for i in range(6):
        b.append(dot(572 + (i % 3) * 34, 92 + (i // 3) * 34, 8, AMBER_LIGHT, AMBER, 1.2))
    b.append(dot(572, 92, 3, AMBER))
    b.append(dot(606, 126, 3, AMBER))
    b.append(t(632, 192, "mark and release a sample, then count", size=7.8, fill=SLATE))
    b.append(t(632, 204, "the marked ones in a second sample", size=7.8, fill=SLATE))

    b.append(rect(52, 224, 660, 84, GREEN_LIGHT, GREEN, 8, 1.3))
    b.append(t(382, 246, "Estimated population  N = (M × C) ÷ R", size=11.6, weight="bold", fill=GREEN))
    b.append(t(382, 266, "M = number caught and marked first,  C = number caught second,  R = marked ones in the second sample", size=8.0, fill=SLATE))
    b.append(t(382, 284, "A quadrat estimates plants and slow animals; capture–recapture estimates animals that move.", size=8.0, fill=SLATE))
    b.append(t(382, 300, "Both assume the population is not changing between samples and that marks do not affect survival.", size=8.0, fill=MUTED))
    write_svg("ch05_sampling.svg", svg(w, h, "\n".join(b)))


# ── chapter 6: food webs, pyramids and interactions ───────────────────────
def ch06_foodweb():
    w, h = 760, 330
    b = [t(380, 24, "A FOOD WEB — MANY CHAINS JOINED TOGETHER", size=13.0, weight="bold")]

    def node(x, y, wd, label, col, light, size=8.6):
        b.append(rect(x, y, wd, 30, light, col, 5, 1.3))
        b.append(t(x + wd / 2, y + 20, label, size=size, weight="bold", fill=col))

    # producers
    node(60, 250, 118, "grasses", GREEN, GREEN_LIGHT)
    node(200, 250, 118, "shrubs & trees", GREEN, GREEN_LIGHT)
    node(340, 250, 118, "seeds & grain", GREEN, GREEN_LIGHT)
    # primary consumers
    node(60, 178, 118, "grasshoppers", BLUE, BLUE_LIGHT)
    node(200, 178, 118, "goats", BLUE, BLUE_LIGHT)
    node(340, 178, 118, "mice & rats", BLUE, BLUE_LIGHT)
    # secondary
    node(130, 112, 118, "lizards", PURPLE, PURPLE_LIGHT)
    node(270, 112, 118, "birds", PURPLE, PURPLE_LIGHT)
    # tertiary
    node(200, 50, 118, "snake / hawk", RED, RED_LIGHT)
    # decomposers
    node(480, 250, 150, "dead bodies & waste", AMBER, AMBER_LIGHT)
    node(480, 178, 150, "decomposers", AMBER, AMBER_LIGHT)

    def link(x1, y1, x2, y2, col=SLATE):
        b.append(arrow2(x1, y1, x2, y2, color=col, sw=1.3, size=5.6))

    link(119, 248, 119, 210)          # grass → grasshoppers
    link(259, 248, 259, 210)          # shrubs → goats
    link(399, 248, 399, 210)          # seeds → mice
    link(150, 176, 180, 144)          # grasshoppers → lizards
    link(230, 176, 210, 144)          # goats → lizards (goat meat)
    link(300, 176, 300, 144)          # mice → birds
    link(240, 110, 245, 82)           # lizards → snake
    link(320, 110, 290, 82)           # birds → hawk
    link(459, 262, 478, 262, AMBER)   # waste to decomposers
    link(539, 246, 539, 210, AMBER)

    b.append(rect(480, 40, 250, 126, "#F8FAFC", BORDER, 8, 1.1))
    b.append(t(605, 58, "How to read a food web", size=9.4, weight="bold", fill=NAVY))
    for i, s in enumerate(("Every arrow points from the food",
                           "to the feeder — the direction the",
                           "energy travels.",
                           "Decomposers sit outside the grazing",
                           "chains: dead bodies and waste feed",
                           "bacteria and fungi, which release",
                           "minerals back to the soil.")):
        b.append(t(605, 74 + i * 12, s, size=7.8, fill=SLATE))

    b.append(t(380, 300, "Remove one node and every arrow through it is lost — which is why food webs are more stable than single chains.", size=8.0, fill=MUTED))
    write_svg("ch06_foodweb.svg", svg(w, h, "\n".join(b)))


def ch06_pyramids():
    w, h = 760, 300
    b = [t(380, 24, "THREE PYRAMIDS — AND WHY ONLY ONE OF THEM NEVER INVERTS", size=12.6, weight="bold")]

    BARS = [("Pyramid of NUMBERS", ["one tree", "insects", "birds"], [58, 186, 88],
             ["inverts — a single tree can", "carry thousands of insects"]),
            ("Pyramid of BIOMASS", ["producers", "primary", "secondary"], [186, 120, 62],
             ["tapers here, but inverts", "briefly in spring plankton"]),
            ("Pyramid of ENERGY", ["producers", "primary", "secondary"], [186, 128, 70],
             ["never inverts — energy", "is lost at every step"])]

    for k, (title, labels, widths, note) in enumerate(BARS):
        cx = 140 + k * 240
        b.append(t(cx, 56, title, size=9.6, weight="bold", fill=NAVY))
        for i in range(3):
            y = 176 - i * 38
            col = [GREEN_MID, "#C7DBFB", "#DDD6FE"][i]
            bd = [NAVY, NAVY, NAVY][i]
            bdw = widths[i]
            b.append(rect(cx - bdw / 2, y, bdw, 30, col, bd, 4, 1.0))
            b.append(t(cx, y + 19, labels[i], size=7.8, weight="bold", fill=NAVY))
        b.append(t(cx, 224, note[0], size=7.6, fill=MUTED))
        b.append(t(cx, 236, note[1], size=7.6, fill=MUTED))

    b.append(rect(40, 252, 680, 40, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 270, "At each level about 90 % of the energy is lost as heat, movement and waste —", size=8.8, weight="bold", fill=GREEN))
    b.append(t(380, 285, "so only about a tenth reaches the next level, and a pyramid of energy always tapers.", size=8.8, fill=SLATE))
    write_svg("ch06_pyramids.svg", svg(w, h, "\n".join(b)))


def ch06_symbiosis():
    w, h = 760, 300
    b = [t(380, 24, "LIVING TOGETHER — THE FOUR INTERACTIONS THE EXAMINER ASKS FOR", size=12.2, weight="bold")]

    cards = [
        (40, "MUTUALISM", "both benefit", GREEN, GREEN_LIGHT,
         ["Rhizobium in root", "nodules of a legume:", "bacteria get sugar,", "plant gets nitrates"]),
        (220, "COMMENSALISM", "one benefits, one unaffected", BLUE, BLUE_LIGHT,
         ["Remora fish rides", "on a shark and eats", "the scraps; the shark", "is not affected"]),
        (400, "PARASITISM", "one benefits, one harmed", RED, RED_LIGHT,
         ["Plasmodium in a", "human: the parasite", "feeds on the host", "and causes malaria"]),
        (580, "PREDATION", "one eats the other", PURPLE, PURPLE_LIGHT,
         ["A hawk hunts mice;", "the predator is", "larger and faster than", "its prey"]),
    ]
    for x, head, sub, col, light, lines_ in cards:
        b.append(rect(x, 52, 160, 170, light, col, 8, 1.4))
        b.append(f'<rect x="{x}" y="52" width="160" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + 80, 74, head, size=9.4, weight="bold", fill=col))
        b.append(t(x + 80, 90, sub, size=7.8, fill=SLATE))
        for i, s in enumerate(lines_):
            b.append(t(x + 80, 112 + i * 14, s, size=7.8, fill=SLATE))

    b.append(rect(40, 236, 700, 48, "#F8FAFC", BORDER, 8, 1.1))
    b.append(t(380, 256, "Competition is the fifth: two species needing the same resource, and neither benefits.", size=8.8, weight="bold", fill=NAVY))
    b.append(t(380, 274, "Parasite and host co-evolve, which is why a parasite rarely kills its host outright.", size=8.4, fill=SLATE))
    write_svg("ch06_symbiosis.svg", svg(w, h, "\n".join(b)))


# ── chapter 7: cycles, succession, biomes ─────────────────────────────────
def elbow(pts, color=SLATE, sw=1.9):
    d = f"M {pts[0][0]} {pts[0][1]} " + " ".join(f"L {x} {y}" for x, y in pts[1:])
    out = [path(d, stroke=color, sw=sw)]
    import math
    (x1, y1), (x2, y2) = pts[-2], pts[-1]
    ang = math.atan2(y2 - y1, x2 - x1)
    L, Wd = 7.0, 3.4
    ax, ay = x2 - L * math.cos(ang), y2 - L * math.sin(ang)
    px, py = -math.sin(ang) * Wd, math.cos(ang) * Wd
    out.append(poly([(x2, y2), (ax + px, ay + py), (ax - px, ay - py)], color, color, 0.6))
    return "".join(out)


def ch07_carbon():
    w, h = 760, 420
    b = [t(380, 24, "THE CARBON CYCLE — ONE ATOM OF CARBON, ROUND AND ROUND", size=12.8, weight="bold")]

    b.append(box(280, 36, 200, 56, "CARBON DIOXIDE IN THE AIR", ["about 0.04 % of the air"], NAVY, "#F1F5F9"))
    b.append(box(50, 160, 200, 66, "GREEN PLANTS", ["take up CO2 and build", "carbohydrates"], GREEN, GREEN_LIGHT))
    b.append(box(510, 160, 200, 66, "ANIMALS", ["feed on plants and breathe", "the carbon back out"], BLUE, BLUE_LIGHT))
    b.append(box(280, 310, 200, 66, "DECOMPOSERS", ["bacteria and fungi break down", "dead bodies and waste"], PURPLE, PURPLE_LIGHT))
    b.append(box(540, 310, 170, 66, "FOSSIL FUELS", ["coal, oil and gas formed", "over millions of years"], AMBER, AMBER_LIGHT))

    def lab(x, y, s, col, anchor="middle"):
        b.append(t(x, y, s, size=7.5, fill=col, anchor=anchor))

    b.append(arrow2(296, 94, 218, 158, color=GREEN, sw=1.9))
    lab(232, 120, "photosynthesis", GREEN, "end")

    b.append(arrow2(252, 193, 508, 193, color=SLATE, sw=1.9))
    lab(380, 185, "feeding", SLATE)

    b.append(arrow2(600, 158, 470, 96, color=BLUE, sw=1.9))
    lab(610, 116, "respiration", BLUE, "start")

    b.append(arrow2(210, 228, 330, 308, color=GREEN, sw=1.9))
    lab(282, 276, "dead leaves", GREEN, "end")
    b.append(arrow2(560, 228, 440, 308, color=SLATE, sw=1.9))
    lab(496, 276, "dead bodies, dung", SLATE, "start")

    b.append(arrow2(380, 308, 380, 96, color=PURPLE, sw=1.9))
    lab(390, 248, "decay releases CO2", PURPLE, "start")

    b.append(arrow2(482, 343, 536, 343, color=AMBER, sw=1.6, size=7.0))
    b.append(elbow([(710, 330), (738, 330), (738, 64), (484, 64)], color=AMBER, sw=1.9))
    lab(700, 56, "burning", AMBER, "end")

    b.append(t(380, 402, "Carbon is recycled round the cycle again and again; energy is not — it flows once and leaves as heat.",
               size=8.0, fill=MUTED))
    write_svg("ch07_carbon.svg", svg(w, h, "\n".join(b)))


def ch07_nitrogen():
    w, h = 760, 470
    b = [t(380, 24, "THE NITROGEN CYCLE — FROM THE AIR TO A PROTEIN AND BACK", size=12.8, weight="bold")]

    b.append(box(250, 36, 260, 60, "NITROGEN GAS IN THE AIR", ["78 % of the air — but most living", "things cannot use it"], NAVY, "#F1F5F9"))
    b.append(box(40, 170, 240, 72, "NITRATES IN THE SOIL", ["the form that roots can absorb"], GREEN, GREEN_LIGHT))
    b.append(box(480, 170, 240, 72, "PLANTS", ["take up nitrate and build", "amino acids, then proteins"], GREEN, GREEN_LIGHT))
    b.append(box(480, 330, 240, 72, "ANIMALS", ["eat plants and build", "their own proteins"], BLUE, BLUE_LIGHT))
    b.append(box(40, 330, 240, 72, "AMMONIA IN THE SOIL", ["released from dead matter,", "dung and urine"], AMBER, AMBER_LIGHT))

    def lab(x, y, s, col, anchor="middle"):
        b.append(t(x, y, s, size=7.5, fill=col, anchor=anchor))

    b.append(arrow2(270, 98, 190, 168, color=GREEN, sw=1.9))
    lab(256, 142, "nitrogen fixation", GREEN, "start")
    b.append(arrow2(90, 168, 250, 98, color=RED, sw=1.9))
    lab(86, 150, "denitrification", RED, "end")

    b.append(arrow2(282, 206, 478, 206, color=GREEN, sw=1.9))
    lab(380, 198, "uptake by roots", GREEN)
    b.append(arrow2(600, 244, 600, 328, color=GREEN, sw=1.9))
    lab(610, 290, "feeding", GREEN, "start")
    b.append(arrow2(478, 366, 282, 366, color=AMBER, sw=1.9))
    lab(380, 358, "ammonification by decomposers", AMBER)
    b.append(arrow2(160, 328, 160, 244, color=BLUE, sw=1.9))
    lab(170, 290, "nitrification", BLUE, "start")

    b.append(rect(40, 418, 680, 42, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 435, "Fixation = N2 turned into nitrate: Rhizobium in root nodules, lightning, and the Haber process.", size=8.4, weight="bold", fill=GREEN))
    b.append(t(380, 451, "Nitrifying bacteria need oxygen; denitrifying bacteria work without it, so waterlogged soil loses its nitrogen.", size=8.4, fill=SLATE))
    write_svg("ch07_nitrogen.svg", svg(w, h, "\n".join(b)))


def ch07_succession():
    w, h = 760, 300
    b = [t(380, 24, "SUCCESSION — FROM BARE ROCK TO A CLIMAX FOREST", size=13.0, weight="bold")]

    stages = [("1", "Bare rock", ["no soil;", "nothing grows"], "#EDE9E4"),
              ("2", "Lichens", ["pioneers that", "break down rock"], "#DDE5DA"),
              ("3", "Mosses", ["hold a thin", "layer of soil"], "#CFE0C9"),
              ("4", "Grasses", ["roots deepen", "the soil"], "#BFD8B5"),
              ("5", "Shrubs", ["shade out", "the grasses"], "#A8CE9E"),
              ("6", "Climax forest", ["stable and", "self-renewing"], "#7FBF7B")]
    for i, (num, name, note, col) in enumerate(stages):
        x = 40 + i * 120
        b.append(rect(x, 56, 108, 120, col, "#FFFFFF", 8, 1.2))
        b.append(dot(x + 54, 80, 11, "#FFFFFF", NAVY, 1.2))
        b.append(t(x + 54, 84, num, size=9, weight="bold", fill=NAVY))
        b.append(t(x + 54, 112, name, size=8.6, weight="bold", fill=NAVY))
        b.append(t(x + 54, 136, note[0], size=7.4, fill=SLATE))
        b.append(t(x + 54, 150, note[1], size=7.4, fill=SLATE))
        if i < 5:
            b.append(arrow2(x + 109, 116, x + 119, 116, color=GREEN, sw=1.6, size=6.0))

    b.append(rect(40, 200, 680, 44, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 220, "Each stage changes the habitat so that the next stage can grow —", size=8.8, weight="bold", fill=GREEN))
    b.append(t(380, 236, "and the stable end point, where the community stops changing, is the climax community.", size=8.8, fill=SLATE))
    b.append(t(380, 268, "Primary succession starts on bare rock with no soil. Secondary succession starts where soil survives — after a fire or a clearing.", size=8.0, fill=MUTED))
    write_svg("ch07_succession.svg", svg(w, h, "\n".join(b)))


# ── chapter 8: pollution and conservation ─────────────────────────────────
def ch08_pollution():
    w, h = 760, 330
    b = [t(380, 24, "POLLUTION — THE SOURCE, THE POLLUTANT AND THE EFFECT", size=12.6, weight="bold")]

    rows = [("Air", "smoke and SO2 from factories and cars", "acid rain, asthma, corroded buildings", AMBER, AMBER_LIGHT),
            ("Air", "CO2 and methane from burning fuel and cattle", "the greenhouse effect and climate change", RED, RED_LIGHT),
            ("Air", "CFCs from old refrigerators and aerosols", "destroys the ozone layer", PURPLE, PURPLE_LIGHT),
            ("Water", "raw sewage and fertiliser run-off", "eutrophication: algae bloom, then fish die", BLUE, BLUE_LIGHT),
            ("Water", "oil spilled from tankers and pipelines", "birds and fish suffocate; habitats spoiled", NAVY, "#F1F5F9"),
            ("Land", "plastic and household waste", "soil and water contaminated for decades", GREEN, GREEN_LIGHT)]
    b.append(rect(40, 52, 680, 28, NAVY, NAVY, 6, 1.0))
    for x, head in ((70, "Where"), (180, "Source"), (450, "Effect")):
        b.append(t(x, 71, head, size=8.4, weight="bold", fill="#FFFFFF"))
    for i, (where, source, effect, col, light) in enumerate(rows):
        y = 80 + i * 32
        b.append(rect(40, y, 680, 32, light if i % 2 else "#FFFFFF", BORDER, 0, 0.8))
        b.append(t(70, y + 20, where, size=8.2, weight="bold", fill=col))
        b.append(t(180, y + 20, source, size=8.2, fill=SLATE, anchor="start"))
        b.append(t(450, y + 20, effect, size=8.2, fill=SLATE, anchor="start"))

    b.append(rect(40, 280, 680, 40, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 298, "A pollutant is a substance added to an environment faster than it can be broken down or removed.", size=8.6, weight="bold", fill=GREEN))
    b.append(t(380, 314, "Eutrophication is the chain the examiner wants: nutrients → algae → death → decay → oxygen gone → fish die.", size=8.4, fill=SLATE))
    write_svg("ch08_pollution.svg", svg(w, h, "\n".join(b)))


def ch08_conservation():
    w, h = 760, 300
    b = [t(380, 24, "CONSERVATION — KEEPING THE RESOURCE, NOT LOCKING IT AWAY", size=12.4, weight="bold")]

    b.append(box(40, 54, 216, 74, "WHY CONSERVE", ["food, medicine and timber;", "gene pools; water catchments;", "tourism and future generations"], GREEN, GREEN_LIGHT))
    b.append(box(272, 54, 216, 74, "IN SITU", ["protect the organism where", "it lives: national parks,", "reserves, forest guards"], BLUE, BLUE_LIGHT))
    b.append(box(504, 54, 216, 74, "EX SITU", ["protect it away from its", "habitat: zoos, seed banks,", "botanical gardens"], PURPLE, PURPLE_LIGHT))

    b.append(box(40, 148, 216, 74, "LAW AND POLICY", ["bans on hunting and logging,", "quota and permits,", "protected-area status"], AMBER, AMBER_LIGHT))
    b.append(box(272, 148, 216, 74, "EDUCATION", ["teach the value of the", "resource so that people", "protect it themselves"], GREEN, GREEN_LIGHT))
    b.append(box(504, 148, 216, 74, "SUSTAINABLE USE", ["harvest no faster than the", "resource renews: agroforestry,", "controlled logging and fishing"], BLUE, BLUE_LIGHT))

    b.append(rect(40, 240, 680, 44, "#F8FAFC", BORDER, 8, 1.1))
    b.append(t(380, 260, "Nigeria's own examples: Cross River and Yankari reserves, the Lekki and Oban conservation areas,", size=8.4, fill=SLATE))
    b.append(t(380, 276, "the Hadejia–Nguru wetlands, and the fight against desertification by shelter-belt planting in the north.", size=8.4, fill=SLATE))
    write_svg("ch08_conservation.svg", svg(w, h, "\n".join(b)))


def recap_cards_e():
    recap_card("recap_ch05.svg", "Chapter 5 recap card — ecology, populations and sampling", [
        ("Ecosystem", "The living community plus the non-living environment, working as one system."),
        ("Niche", "What an organism does in its habitat — its food, its shelter, its role. Two species cannot share one niche for long."),
        ("Population", "All the organisms of one species in one place at one time; its size changes with birth, death, immigration and emigration."),
        ("Sampling", "Quadrat for plants, transect for a changing habitat, capture–recapture for animals that move: N = (M × C) ÷ R."),
    ])


def recap_cards_f():
    recap_card("recap_ch06.svg", "Chapter 6 recap card — interactions, food webs and energy", [
        ("Food chain", "Producer → primary consumer → secondary consumer → tertiary consumer, with the arrow pointing to the feeder."),
        ("Food web", "Many chains joined: the more links, the more stable the community."),
        ("Energy", "About 90 % is lost at each level as heat, movement and waste, so only about a tenth passes on."),
        ("Interactions", "Mutualism (+/+), commensalism (+/0), parasitism (+/−), predation (+/−), competition (−/−)."),
    ])


def recap_cards_g():
    recap_card("recap_ch07.svg", "Chapter 7 recap card — cycles, succession and biomes", [
        ("Carbon cycle", "Photosynthesis takes CO2 in; respiration, decay and burning return it."),
        ("Nitrogen cycle", "Fixation → ammonia → nitrite → nitrate → plants → animals → ammonification → denitrification."),
        ("Succession", "Bare rock → lichens → mosses → grasses → shrubs → climax forest."),
        ("Biomes", "Rainforest, guinea savanna, Sudan savanna, Sahel and montane forest, each with its own climate and species."),
    ])


def recap_cards_h():
    recap_card("recap_ch08.svg", "Chapter 8 recap card — pollution, erosion and conservation", [
        ("Pollution", "A pollutant is added faster than it can be broken down: air, water and land are all affected."),
        ("Eutrophication", "Nutrients → algae bloom → decay → oxygen used up → fish die."),
        ("Erosion", "Deforestation and overgrazing expose soil; wind and rain carry it away."),
        ("Conservation", "In situ and ex situ protection, law, education and sustainable use — keeping the resource renewable."),
    ])
