"""Volume 2 diagrams — hormones, chemical control and plant responses."""

from __future__ import annotations

import matplotlib.pyplot as plt

from common import (recap_card, GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE,
                    MUTED, BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE,
                    BLUE_LIGHT, PURPLE, PURPLE_LIGHT, write_svg, svg, t, lines,
                    rect, arrow, line, card, save)

plt.rcParams.update({"font.family": "DejaVu Sans"})


def dot(cx, cy, r, fill=GREEN, stroke="none", sw=1.0):
    st = f' stroke="{stroke}" stroke-width="{sw}"' if stroke != "none" else ""
    return f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="{fill}"{st}/>'


def poly(points, fill, stroke, sw=1.8):
    pts = " ".join(f"{x},{y}" for x, y in points)
    return f'<polygon points="{pts}" fill="{fill}" stroke="{stroke}" stroke-width="{sw}"/>'


def path(d, fill="none", stroke=SLATE, sw=1.8, dash=None):
    ds = f' stroke-dasharray="{dash}"' if dash else ""
    return f'<path d="{d}" fill="{fill}" stroke="{stroke}" stroke-width="{sw}" stroke-linecap="round"{ds}/>'


# ── chapter 3: the endocrine glands ────────────────────────────────────────
def ch03_endocrine():
    w, h = 760, 470
    b = [t(380, 26, "THE ENDOCRINE GLANDS AND WHERE THEY SIT", size=13.2, weight="bold", fill=NAVY)]

    # schematic body
    b.append(dot(380, 86, 34, "#F8FAFC", SLATE, 2.0))
    b.append(rect(368, 118, 24, 22, "#F8FAFC", SLATE, 2.0))
    b.append(poly([(316, 140), (444, 140), (456, 250), (436, 344), (324, 344), (304, 250)],
                  "#F8FAFC", SLATE, 2.0))
    b.append(path("M 316 150 q -46 40 -56 108", stroke=SLATE, sw=2.0))
    b.append(path("M 444 150 q 46 40 56 108", stroke=SLATE, sw=2.0))
    b.append(path("M 352 344 l -10 92", stroke=SLATE, sw=2.0))
    b.append(path("M 408 344 l 10 92", stroke=SLATE, sw=2.0))

    # glands
    glands = [
        ("Pituitary", 380, 104, RED, "right", 598, 100, "(master gland)"),
        ("Thyroid", 380, 138, AMBER, "left", 196, 132, "(neck, over the trachea)"),
        ("Thymus", 380, 178, PURPLE, "right", 598, 176, "(behind the sternum)"),
        ("Adrenal", 404, 236, RED, "right", 598, 232, "(above the kidneys)"),
        ("Pancreas", 356, 258, GREEN, "left", 196, 254, "(islets of Langerhans)"),
        ("Ovary", 356, 306, BLUE, "left", 196, 302, "(in the pelvis)"),
        ("Testis", 404, 356, BLUE, "right", 598, 352, "(in the scrotum)"),
    ]
    for name, x, y, col, side, lx, ly, note in glands:
        b.append(dot(x, y, 11, "#FFFFFF", col, 2.2))
        b.append(dot(x, y, 5, col))
        if side == "right":
            b.append(line(x + 12, y, lx - 10, ly - 2, color=col, sw=1.0))
            b.append(t(lx, ly, name, size=11, weight="bold", fill=col, anchor="start"))
            b.append(t(lx, ly + 14, note, size=8.2, fill=MUTED, anchor="start"))
        else:
            b.append(line(x - 12, y, lx + 10, ly - 2, color=col, sw=1.0))
            b.append(t(lx, ly, name, size=11, weight="bold", fill=col, anchor="end"))
            b.append(t(lx, ly + 14, note, size=8.2, fill=MUTED, anchor="end"))

    b.append(rect(24, 436, 712, 24, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(380, 452, "All these glands are ductless: they pour their hormones straight into the blood, which carries them to every cell.",
               size=8.8, fill=SLATE))
    write_svg("ch03_endocrine.svg", svg(w, h, "\n".join(b)))


def ch03_glucose():
    w, h = 760, 300
    b = [t(380, 26, "CONTROL OF BLOOD GLUCOSE — NEGATIVE FEEDBACK", size=13.0, weight="bold", fill=NAVY)]
    # centre normal band
    b.append(rect(300, 128, 160, 44, GREEN_LIGHT, GREEN, 8, 1.4))
    b.append(t(380, 146, "NORMAL RANGE", size=10.2, weight="bold", fill=GREEN))
    b.append(t(380, 162, "about 90 mg per 100 cm³", size=8.6, fill=SLATE))

    # left chain: glucose too high
    b.append(rect(24, 62, 210, 34, "#FFFFFF", AMBER, 7, 1.5))
    b.append(t(129, 83, "Blood glucose RISES", size=9.8, weight="bold", fill=AMBER))
    b.append(rect(24, 110, 210, 40, "#FFFFFF", AMBER, 7, 1.5))
    b.append(t(129, 127, "Pancreas (β cells) secretes", size=8.8, fill=SLATE))
    b.append(t(129, 141, "INSULIN", size=10.2, weight="bold", fill=AMBER))
    b.append(rect(24, 164, 210, 40, "#FFFFFF", AMBER, 7, 1.5))
    b.append(t(129, 181, "Liver and muscles take up", size=8.8, fill=SLATE))
    b.append(t(129, 195, "glucose → glycogen", size=8.8, fill=SLATE))
    b.append(rect(24, 218, 210, 34, "#FFFFFF", AMBER, 7, 1.5))
    b.append(t(129, 239, "Glucose falls back", size=9.8, weight="bold", fill=AMBER))
    for y in (97, 151, 205):
        b.append(poly([(123, y), (135, y), (129, y + 11)], AMBER, AMBER, 0))
    b.append(arrow(236, 235, 296, 176, color=AMBER, sw=1.6, marker="aa"))

    # right chain: glucose too low
    b.append(rect(526, 62, 210, 34, "#FFFFFF", BLUE, 7, 1.5))
    b.append(t(631, 83, "Blood glucose FALLS", size=9.8, weight="bold", fill=BLUE))
    b.append(rect(526, 110, 210, 40, "#FFFFFF", BLUE, 7, 1.5))
    b.append(t(631, 127, "Pancreas (α cells) secretes", size=8.8, fill=SLATE))
    b.append(t(631, 141, "GLUCAGON", size=10.2, weight="bold", fill=BLUE))
    b.append(rect(526, 164, 210, 40, "#FFFFFF", BLUE, 7, 1.5))
    b.append(t(631, 181, "Liver converts glycogen", size=8.8, fill=SLATE))
    b.append(t(631, 195, "back to glucose", size=8.8, fill=SLATE))
    b.append(rect(526, 218, 210, 34, "#FFFFFF", BLUE, 7, 1.5))
    b.append(t(631, 239, "Glucose rises back", size=9.8, weight="bold", fill=BLUE))
    for y in (97, 151, 205):
        b.append(poly([(625, y), (637, y), (631, y + 11)], BLUE, BLUE, 0))
    b.append(arrow(524, 235, 464, 176, color=BLUE, sw=1.6, marker="an"))

    b.append(t(380, 232, "Either way the change is", size=8.8, fill=MUTED))
    b.append(t(380, 246, "reversed — that is", size=8.8, fill=MUTED))
    b.append(t(380, 260, "negative feedback.", size=8.8, fill=MUTED))
    b.append(t(380, 120, "too high →", size=8.6, fill=AMBER))
    b.append(t(380, 196, "too low →", size=8.6, fill=BLUE))
    b.append(t(380, 288, "Insulin lowers blood glucose; glucagon raises it. Both come from the islets of Langerhans.",
               size=8.8, fill=SLATE))
    write_svg("ch03_glucose.svg", svg(w, h, "\n".join(b)))


def ch03_auxin():
    w, h = 760, 340
    b = [t(380, 26, "AUXIN AND PHOTOTROPISM — WHY A SHOOT BENDS TO THE LIGHT", size=12.8, weight="bold", fill=NAVY)]

    # ---- left panel: light from every direction
    b.append(rect(50, 54, 300, 220, "#FFFFFF", BORDER, 8, 1.2, dash="5 4"))
    b.append(rect(192, 130, 18, 130, "#FFFFFF", GREEN, 4, 1.8))
    b.append(path("M 201 130 q -16 -22 0 -38 q 16 16 0 38", fill=GREEN_MID, stroke=GREEN, sw=1.6))
    for y in (110, 160, 210):
        b.append(arrow(72, y, 112, y, color=AMBER, sw=1.6, marker="aa"))
        b.append(arrow(330, y, 290, y, color=AMBER, sw=1.6, marker="aa"))
    b.append(t(200, 78, "Light from all sides", size=9.4, fill=MUTED))
    b.append(t(200, 290, "Auxin spreads evenly, so every side", size=9.4, fill=SLATE))
    b.append(t(200, 304, "grows at the same rate: straight shoot.", size=9.4, fill=SLATE))

    # ---- right panel: light from the right, shoot bending towards it
    b.append(rect(410, 54, 300, 220, "#FFFFFF", BORDER, 8, 1.2, dash="5 4"))
    b.append(path("M 500 272 q 4 -74 22 -112 q 16 -32 54 -40", stroke=GREEN, sw=8))
    b.append(dot(582, 112, 15, GREEN_MID, GREEN, 1.8))
    for y in (100, 150, 200):
        b.append(arrow(690, y, 646, y, color=AMBER, sw=1.6, marker="aa"))
    for x, y in ((510, 210), (516, 190), (524, 170), (534, 150), (546, 134)):
        b.append(dot(x, y, 3.4, AMBER))
    b.append(t(560, 86, "auxin collects on the shaded side", size=8.8, fill=AMBER))
    b.append(line(560, 90, 528, 152, color=AMBER, sw=0.9))
    b.append(t(560, 290, "Cells on the shaded side elongate more,", size=9.4, fill=SLATE))
    b.append(t(560, 304, "so the shoot bends towards the light.", size=9.4, fill=SLATE))

    b.append(t(380, 326, "Auxin (indole acetic acid) is made in the shoot tip, moves away from light, and makes the shaded cells elongate.",
               size=8.8, fill=MUTED))
    write_svg("ch03_auxin.svg", svg(w, h, "\n".join(b)))


def recap_cards_c():
    recap_card("recap_ch03.svg", "Chapter 3 recap card — hormones and chemical control", [
        ("Hormone", "A chemical made by a ductless gland, carried in the blood, acting on target cells with the right receptor."),
        ("Glucose", "Insulin lowers blood glucose; glucagon raises it. Both come from the islets of Langerhans."),
        ("Pituitary", "The master gland: it makes growth hormone and ADH, and controls the thyroid, adrenal cortex and gonads."),
        ("Auxin", "Made in the shoot tip, moves away from light, makes shaded cells elongate — so the shoot bends to the light."),
    ])


# ── chapter 4: the flower ──────────────────────────────────────────────────
def ch04_flower():
    w, h = 760, 430
    b = [t(380, 26, "A COMPLETE FLOWER IN LONGITUDINAL SECTION", size=13.2, weight="bold", fill=NAVY)]
    cx = 380

    # legend strip under the title
    b.append(rect(24, 40, 348, 24, GREEN_LIGHT, GREEN, 5, 1.0))
    b.append(t(198, 56, "Male parts = stamen (anther + filament)", size=8.8, fill=GREEN))
    b.append(rect(388, 40, 348, 24, BLUE_LIGHT, BLUE, 5, 1.0))
    b.append(t(562, 56, "Female parts = carpel (stigma + style + ovary)", size=8.8, fill=BLUE))

    # pedicel and receptacle
    b.append(path(f"M {cx} 404 l 0 -52", stroke=AMBER, sw=8))
    b.append(poly([(cx - 30, 322), (cx + 30, 322), (cx + 13, 354), (cx - 13, 354)], AMBER_LIGHT, AMBER, 1.8))
    # sepals
    b.append(path(f"M {cx - 26} 320 q -54 -12 -66 -50 q 50 -10 70 30 Z", fill=GREEN_MID, stroke=GREEN, sw=1.6))
    b.append(path(f"M {cx + 26} 320 q 54 -12 66 -50 q -50 -10 -70 30 Z", fill=GREEN_MID, stroke=GREEN, sw=1.6))
    # petals (behind the sex organs)
    b.append(path(f"M {cx - 22} 316 q -104 -46 -104 -132 q 88 12 122 96 Z", fill=PURPLE_LIGHT, stroke=PURPLE, sw=1.8))
    b.append(path(f"M {cx + 22} 316 q 104 -46 104 -132 q -88 12 -122 96 Z", fill=PURPLE_LIGHT, stroke=PURPLE, sw=1.8))
    # ovary
    b.append(path(f"M {cx - 30} 322 q 30 -38 60 0 q -8 38 -30 38 q -22 0 -30 -38 Z", fill=BLUE_LIGHT, stroke=BLUE, sw=2.0))
    for ox, oy in ((-14, 330), (0, 334), (14, 330)):
        b.append(dot(cx + ox, oy, 5.4, "#FFFFFF", BLUE, 1.2))
    # style and stigma
    b.append(path(f"M {cx} 326 l 0 -100", stroke=BLUE, sw=4))
    b.append(dot(cx, 214, 13, BLUE_LIGHT, BLUE, 2.0))
    # stamen: filament curving out of the receptacle, anther at the top
    b.append(path(f"M {cx - 40} 318 q -26 -74 -14 -118", stroke=AMBER, sw=3.6))
    b.append(f'<rect x="{cx - 66}" y="182" width="22" height="17" rx="5" fill="{AMBER_LIGHT}" stroke="{AMBER}" stroke-width="1.6"/>')
    b.append(dot(cx - 55, 172, 4.4, AMBER))

    # left labels
    for label, lx, ly, tx, ty, col in (
        ("Petal (corolla)", 250, 118, 302, 176, PURPLE),
        ("Anther", 250, 186, 316, 190, AMBER),
        ("Filament", 250, 240, 336, 250, AMBER),
        ("Sepal (calyx)", 250, 286, 322, 300, GREEN),
    ):
        b.append(t(lx, ly, label, size=10.4, weight="bold", fill=col, anchor="end"))
        b.append(line(lx + 6, ly - 4, tx, ty, color=col, sw=1.0))

    # right labels
    for label, lx, ly, tx, ty, col in (
        ("Stigma", 520, 210, 396, 214, BLUE),
        ("Style", 520, 266, 386, 262, BLUE),
        ("Ovary (contains ovules)", 520, 322, 414, 322, BLUE),
        ("Receptacle", 520, 372, 400, 344, AMBER),
        ("Pedicel (flower stalk)", 640, 404, 386, 396, AMBER),
    ):
        b.append(t(lx, ly, label, size=10.4, weight="bold", fill=col, anchor="start"))
        b.append(line(lx - 6, ly - 4, tx, ty, color=col, sw=1.0))
    write_svg("ch04_flower.svg", svg(w, h, "\n".join(b)))


def ch04_pollination():
    w, h = 760, 300
    b = [t(380, 26, "POLLINATION — FOUR WAYS THE POLLEN GETS FROM ANTHER TO STIGMA", size=12.6, weight="bold", fill=NAVY)]
    cards = [
        ("WIND", "Maize, grass", "Light dusty pollen,\nlarge feathery stigmas,\nno scent, no nectar", AMBER),
        ("INSECT", "Hibiscus, mango", "Sticky pollen, bright\npetals, scent, nectar,\nsticky stigma", PURPLE),
        ("WATER", "Water lily", "Pollen floats on the\nsurface to a floating\nstigma", BLUE),
        ("ANIMAL", "Some tropical trees", "Birds and bats carry\npollen on feathers\nor fur", GREEN),
    ]
    x = 20
    for name, ex, body, col in cards:
        b.append(rect(x, 60, 170, 180, "#FFFFFF", col, 8, 1.8))
        b.append(f'<rect x="{x}" y="60" width="170" height="6" rx="3" fill="{col}"/>')
        b.append(t(x + 85, 92, name, size=12, weight="bold", fill=col))
        b.append(t(x + 85, 112, ex, size=8.8, fill=MUTED, italic=True))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 85, 140 + j * 16, ln, size=9.0, fill=SLATE))
        x += 182
    b.append(t(380, 264, "Self-pollination transfers pollen within one flower or plant; cross-pollination transfers it between two plants.",
               size=9.2, fill=MUTED))
    b.append(t(380, 282, "Cross-pollination is the more important source of genetic variation.", size=9.2, fill=MUTED))
    write_svg("ch04_pollination.svg", svg(w, h, "\n".join(b)))


def ch04_seed():
    w, h = 760, 340
    b = [t(380, 26, "A BEAN SEED IN LONGITUDINAL SECTION — AND WHAT EACH PART BECOMES", size=12.6, weight="bold", fill=NAVY)]

    # seed body
    b.append(path("M 250 120 q 90 -46 168 6 q 62 44 28 116 q -34 70 -122 52 q -80 -18 -84 -92 q -2 -56 10 -82 Z",
                  fill=AMBER_LIGHT, stroke=AMBER, sw=2.4))
    # cotyledon (outer) and second cotyledon (inner)
    b.append(path("M 286 148 q 74 -24 122 26 q 34 38 4 80 q -34 44 -96 22 q -56 -22 -50 -70 q 2 -36 20 -58 Z",
                  fill=GREEN_LIGHT, stroke=GREEN, sw=1.8))
    b.append(path("M 306 164 q 56 -14 92 20 q 26 30 2 56 q -28 30 -70 14 q -40 -16 -36 -50 q 2 -26 12 -40 Z",
                  fill="#FFFFFF", stroke=GREEN, sw=1.2))
    # embryo axis inside the inner cotyledon
    b.append(path("M 330 236 q 14 16 34 8 q 16 -8 10 -26", stroke=RED, sw=4.4))
    b.append(dot(332, 240, 6.4, RED))
    b.append(t(300, 268, "plumule", size=8.4, fill=RED, anchor="end"))
    b.append(line(302, 264, 322, 250, color=RED, sw=0.9))
    b.append(path("M 330 240 q -3 22 16 26", stroke=BLUE, sw=4.0))
    b.append(dot(346, 268, 6.0, BLUE))
    b.append(t(360, 282, "radicle", size=8.4, fill=BLUE, anchor="start"))
    b.append(line(358, 278, 350, 270, color=BLUE, sw=0.9))

    # micropyle
    b.append(dot(262, 214, 6.0, AMBER))

    # left labels
    b.append(t(226, 96, "Testa (seed coat)", size=10.4, weight="bold", fill=AMBER, anchor="end"))
    b.append(line(230, 100, 286, 124, color=AMBER, sw=1.0))
    b.append(t(226, 216, "Micropyle", size=10.4, weight="bold", fill=AMBER, anchor="end"))
    b.append(t(226, 230, "(water enters here)", size=8.4, fill=MUTED, anchor="end"))
    b.append(line(230, 212, 254, 214, color=AMBER, sw=1.0))

    # right labels
    b.append(t(520, 150, "Cotyledon", size=10.4, weight="bold", fill=GREEN, anchor="start"))
    b.append(t(520, 164, "(food store; becomes the", size=8.4, fill=MUTED, anchor="start"))
    b.append(t(520, 176, "first leaves)", size=8.4, fill=MUTED, anchor="start"))
    b.append(line(514, 146, 404, 168, color=GREEN, sw=1.0))
    b.append(t(520, 210, "Plumule — the young shoot", size=10.2, weight="bold", fill=RED, anchor="start"))
    b.append(line(514, 206, 350, 234, color=RED, sw=1.0))
    b.append(t(520, 286, "Radicle — the young root", size=10.2, weight="bold", fill=BLUE, anchor="start"))
    b.append(line(514, 282, 356, 270, color=BLUE, sw=1.0))

    b.append(t(380, 316, "Germination: water is absorbed through the micropyle → the testa splits → the radicle emerges first → "
                         "the plumule turns green.", size=8.8, fill=SLATE))
    b.append(t(380, 330, "The cotyledons shrivel as their stored food is used up; in a maize grain the store is the endosperm instead.",
               size=8.8, fill=MUTED))
    write_svg("ch04_seed.svg", svg(w, h, "\n".join(b)))


def recap_cards_d():
    recap_card("recap_ch04.svg", "Chapter 4 recap card — reproduction in plants", [
        ("Flower", "Sepals protect the bud; petals attract pollinators; stamen = anther + filament; carpel = stigma + style + ovary."),
        ("Pollination", "Transfer of pollen from anther to stigma. Wind flowers are dull and dusty; insect flowers are bright and sticky."),
        ("Fertilisation", "The pollen tube grows down the style, the male gamete fuses with the egg, and the ovule becomes the seed."),
        ("Dispersal", "Wind, water, animals and explosive mechanisms — each seed is built for the method it uses."),
    ])


# ── chapter 5: animal reproduction ─────────────────────────────────────────
def ch05_repro_systems():
    w, h = 760, 390
    b = [t(380, 26, "THE HUMAN REPRODUCTIVE SYSTEMS — SCHEMATIC FRONT VIEW", size=12.8, weight="bold", fill=NAVY)]
    b.append(t(190, 52, "MALE", size=11.5, weight="bold", fill=BLUE))
    b.append(t(570, 52, "FEMALE", size=11.5, weight="bold", fill=PURPLE))
    b.append(line(380, 40, 380, 358, color=BORDER, sw=1.0, dash="4 4"))

    # ================= male =================
    # bladder
    b.append(path("M 152 92 q 22 -22 44 0 q 20 20 0 38 q -22 20 -44 0 q -20 -18 0 -38 Z",
                  fill=BLUE_LIGHT, stroke=BLUE, sw=1.8))
    # ureter into bladder
    b.append(path("M 174 132 l 0 10", stroke=BLUE, sw=3.0))
    # vas deferens: from bladder down and out to the testis
    b.append(path("M 186 116 q 50 24 52 66 q 2 26 -4 44", stroke=BLUE, sw=3.2))
    b.append(dot(234, 226, 4, BLUE))
    # prostate
    b.append(path("M 156 194 q 18 -12 36 0 q 9 14 -3 26 q -15 12 -30 0 q -12 -12 -3 -26 Z",
                  fill=BLUE_LIGHT, stroke=BLUE, sw=1.8))
    # urethra
    b.append(path("M 174 224 l 0 46", stroke=BLUE, sw=4.0))
    # penis
    b.append(path("M 174 268 q 22 0 22 24 q 0 26 -22 26 q -22 0 -22 -26 q 0 -24 22 -24 Z",
                  fill=BLUE_LIGHT, stroke=BLUE, sw=1.8))
    # testis in scrotum
    b.append(path("M 226 246 q 22 4 24 22 q 2 20 -20 22 q -24 2 -28 -18 q -4 -22 24 -26 Z",
                  fill=BLUE_LIGHT, stroke=BLUE, sw=1.8))
    b.append(path("M 216 260 q 18 -6 26 8", stroke=BLUE, sw=1.0))

    for label, lx, ly, tx, ty, anchor in (
        ("bladder", 108, 96, 150, 108, "end"),
        ("vas deferens", 108, 150, 190, 156, "end"),
        ("prostate gland", 108, 208, 152, 208, "end"),
        ("urethra", 108, 246, 166, 248, "end"),
        ("penis", 108, 292, 156, 292, "end"),
        ("testis", 300, 250, 252, 250, "start"),
    ):
        b.append(t(lx, ly, label, size=9.4, weight="bold", fill=BLUE, anchor=anchor))
        b.append(line(lx + (6 if anchor == "start" else -6), ly - 4, tx, ty, color=BLUE, sw=0.9))
    b.append(t(300, 266, "sperm and", size=8.2, fill=MUTED, anchor="start"))
    b.append(t(300, 278, "testosterone", size=8.2, fill=MUTED, anchor="start"))

    # ================= female =================
    # bladder
    b.append(path("M 552 92 q 18 -18 36 0 q 16 16 0 32 q -18 16 -36 0 q -16 -14 0 -32 Z",
                  fill=PURPLE_LIGHT, stroke=PURPLE, sw=1.6))
    # uterus (pear shape)
    b.append(path("M 552 168 q 18 -10 36 0 q 10 26 0 54 q -18 14 -36 0 q -10 -28 0 -54 Z",
                  fill=PURPLE_LIGHT, stroke=PURPLE, sw=2.0))
    # cervix
    b.append(path("M 560 222 q 10 -4 20 0 l 0 30 q -10 4 -20 0 Z", fill="#FFFFFF", stroke=PURPLE, sw=1.8))
    # vagina
    b.append(path("M 560 252 l 20 0 l -2 44 q -8 6 -16 0 Z", fill="#F8FAFC", stroke=PURPLE, sw=1.6))
    # oviducts with fimbriae, ending in ovaries
    b.append(path("M 556 168 q -30 -6 -44 -16", stroke=PURPLE, sw=3.0))
    b.append(path("M 584 168 q 30 -6 44 -16", stroke=PURPLE, sw=3.0))
    # fimbriae at the ovarian end of each oviduct
    for dx, dy in ((-40, -20), (-46, -12), (-40, -4)):
        b.append(line(512, 152, 512 + dx + 14, 152 + dy, color=PURPLE, sw=1.3))
        b.append(line(628, 152, 628 - dx - 14, 152 + dy, color=PURPLE, sw=1.3))
    b.append(dot(500, 146, 13, "#FFFFFF", PURPLE, 1.8))
    b.append(dot(640, 146, 13, "#FFFFFF", PURPLE, 1.8))

    for label, lx, ly, tx, ty, anchor in (
        ("bladder", 508, 96, 548, 106, "end"),
        ("uterus", 508, 176, 546, 180, "end"),
        ("oviduct", 660, 148, 640, 148, "start"),
        ("ovary", 508, 210, 500, 160, "end"),
        ("cervix", 660, 230, 588, 232, "start"),
        ("vagina", 660, 282, 586, 278, "start"),
    ):
        b.append(t(lx, ly, label, size=9.4, weight="bold", fill=PURPLE, anchor=anchor))
        b.append(line(lx + (6 if anchor == "start" else -6), ly - 4, tx, ty, color=PURPLE, sw=0.9))

    b.append(rect(24, 344, 712, 24, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(380, 360, "Fertilisation happens in the upper oviduct; the zygote then travels to the uterus and implants in the lining.",
               size=8.8, fill=SLATE))
    write_svg("ch05_systems.svg", svg(w, h, "\n".join(b)))


def ch05_menstrual():
    import numpy as np
    w, h = 760, 420
    b = [t(380, 26, "THE MENSTRUAL CYCLE — HORMONES, THE OVARY AND THE UTERUS", size=12.6, weight="bold", fill=NAVY)]
    L, R, T, B = 96, 716, 62, 212

    def x(day):
        return L + (R - L) * (day - 1) / 27.0

    def y(v):
        return B - (B - T) * v / 100.0

    b.append(rect(L, T, R - L, B - T, "#FFFFFF", BORDER, 6, 1.0))
    for d in range(1, 29, 2):
        b.append(line(x(d), B, x(d), B + 5, color=BORDER, sw=0.9))
        if d in (1, 7, 14, 21, 28):
            b.append(t(x(d), B + 17, str(d), size=7.8, fill=MUTED))
    for v in (0, 25, 50, 75, 100):
        b.append(line(L - 5, y(v), L, y(v), color=BORDER, sw=0.9))
        b.append(t(L - 10, y(v) + 3.5, str(v), size=7.6, fill=MUTED, anchor="end"))

    days = np.arange(1, 29)
    fsh = 100 * np.exp(-((days - 3) ** 2) / 26) * 0.75 + 10
    lh = 100 * np.exp(-((days - 14) ** 2) / 4.5) + 8
    oes = 92 * (1 - np.exp(-((days - 6) / 6.2) ** 2)) * np.exp(-((days - 13.2) ** 2) / 90)
    prog = 95 * np.exp(-((days - 20) ** 2) / 34)

    def curve(vals, col, sw=2.3):
        pts = " ".join(f"{x(d):.1f},{y(min(max(v, 0), 100)):.1f}" for d, v in zip(days, vals))
        return f'<polyline points="{pts}" fill="none" stroke="{col}" stroke-width="{sw}"/>'

    for vals, col in ((fsh, BLUE), (lh, RED), (oes, PURPLE), (prog, GREEN)):
        b.append(curve(vals, col))

    for i, (label, col) in enumerate((("FSH", BLUE), ("LH", RED), ("oestrogen", PURPLE), ("progesterone", GREEN))):
        lx = 110 + i * 152
        b.append(line(lx, 246, lx + 26, 246, color=col, sw=2.6))
        b.append(t(lx + 32, 250, label, size=8.8, fill=col, anchor="start"))


    # events strip
    b.append(t(x(3), 300, "menstruation", size=9.4, weight="bold", fill=RED))
    b.append(t(x(14), 300, "ovulation", size=9.4, weight="bold", fill=RED))
    b.append(line(x(14), B, x(14), 290, color=RED, sw=1.2, dash="4 3"))

    # uterus lining band
    b2 = 336
    b.append(t(88, b2 - 2, "uterus lining", size=8.6, fill=MUTED, anchor="end"))
    b.append(rect(x(1), b2 - 9, x(5) - x(1), 9, "#FECACA", RED, 0, 0.9))
    b.append(rect(x(5), b2 - 9, x(28) - x(5), 9, GREEN_MID, GREEN, 0, 0.9))
    b.append(t(x(3), b2 + 20, "shed (days 1–5)", size=8.6, fill=RED))
    b.append(t(x(18), b2 + 20, "rebuilt, then maintained until day 28", size=8.6, fill=GREEN))

    b.append(t(380, 386, "FSH grows the follicle; oestrogen repairs the lining; the LH surge triggers ovulation on about day 14;",
               size=8.8, fill=SLATE))
    b.append(t(380, 402, "progesterone from the corpus luteum maintains the lining — and falls if no pregnancy begins.",
               size=8.8, fill=SLATE))
    write_svg("ch05_cycle.svg", svg(w, h, "\n".join(b)))


def ch05_fertilisation():
    w, h = 760, 320
    b = [t(380, 26, "FROM FERTILISATION TO BIRTH — WHERE EACH EVENT HAPPENS", size=12.6, weight="bold", fill=NAVY)]
    steps = [
        ("1", "Ovulation", "An egg is released\nfrom the ovary", PURPLE),
        ("2", "Fertilisation", "In the upper oviduct;\nthe zygote forms", BLUE),
        ("3", "Cleavage", "The zygote divides\nas it travels down", BLUE),
        ("4", "Implantation", "The embryo sinks\ninto the uterus lining", GREEN),
        ("5", "Placenta", "Exchange of food,\noxygen and waste", GREEN_BRIGHT),
        ("6", "Birth", "Uterine contractions\npush the baby out", RED),
    ]
    x = 18
    for n, name, sub, col in steps:
        b.append(rect(x, 70, 112, 130, "#FFFFFF", col, 8, 1.8))
        b.append(dot(x + 20, 88, 11, col))
        b.append(t(x + 20, 92, n, size=9.6, weight="bold", fill="#FFFFFF"))
        b.append(t(x + 62, 96, name, size=10.4, weight="bold", fill=col))
        for j, ln in enumerate(sub.split("\n")):
            b.append(t(x + 56, 132 + j * 14, ln, size=8.6, fill=SLATE))
        if x < 620:
            b.append(arrow(x + 113, 135, x + 126, 135, color=MUTED, sw=2.2, marker="an"))
        x += 126
    b.append(rect(24, 220, 712, 60, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 242, "The embryo is cushioned by amniotic fluid and receives food and oxygen through the placenta and umbilical cord.",
               size=9.2, fill=SLATE))
    b.append(t(380, 262, "Maternal and foetal blood never mix: substances diffuse across the placental membrane.", size=9.2, fill=SLATE))
    b.append(t(380, 302, "Gestation in the human is about nine months, or roughly 280 days.", size=8.8, fill=MUTED))
    write_svg("ch05_fertilisation.svg", svg(w, h, "\n".join(b)))


def recap_cards_e():
    recap_card("recap_ch05.svg", "Chapter 5 recap card — reproduction in animals", [
        ("Gametes", "Sperm is small and motile with a tail; the ovum is large and stores food. Both are haploid."),
        ("Cycle", "FSH grows the follicle, oestrogen repairs the lining, LH triggers ovulation, progesterone maintains the lining."),
        ("Fertilisation", "In the upper oviduct. The zygote divides and implants in the uterus about a week later."),
        ("Pregnancy", "Placenta exchanges food, oxygen and waste; amniotic fluid cushions; gestation is about nine months."),
    ])
