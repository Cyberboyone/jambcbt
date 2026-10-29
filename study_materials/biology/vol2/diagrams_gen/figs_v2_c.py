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
