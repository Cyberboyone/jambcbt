"""Volume 2 diagrams — the central nervous system and the sense organs."""

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


def ell(cx, cy, rx, ry, fill="#FFFFFF", stroke=SLATE, sw=1.6, dash=None):
    d = f' stroke-dasharray="{dash}"' if dash else ""
    return (f'<ellipse cx="{cx}" cy="{cy}" rx="{rx}" ry="{ry}" fill="{fill}" '
            f'stroke="{stroke}" stroke-width="{sw}"{d}/>')


def poly(points, fill, stroke, sw=1.8):
    pts = " ".join(f"{x},{y}" for x, y in points)
    return f'<polygon points="{pts}" fill="{fill}" stroke="{stroke}" stroke-width="{sw}"/>'


def path(d, fill="none", stroke=SLATE, sw=1.8, dash=None, cap="round"):
    ds = f' stroke-dasharray="{dash}"' if dash else ""
    return (f'<path d="{d}" fill="{fill}" stroke="{stroke}" stroke-width="{sw}" '
            f'stroke-linecap="{cap}"{ds}/>')


def callout(num, x, y, col=GREEN):
    return (dot(x, y, 9.5, "#FFFFFF", col, 1.6) +
            t(x, y + 3.6, str(num), size=9.4, weight="bold", fill=col))


# ── chapter 2: the brain ───────────────────────────────────────────────────
def ch02_brain():
    w, h = 760, 350
    b = [t(380, 26, "THE HUMAN BRAIN IN SECTION — THE PARTS THE EXAMINER ASKS FOR",
           size=13.0, weight="bold", fill=NAVY)]

    # cerebrum
    b.append(f'<ellipse cx="300" cy="130" rx="168" ry="84" fill="{BLUE_LIGHT}" stroke="{BLUE}" stroke-width="2.2"/>')
    for k in range(3):
        y0 = 84 + k * 32
        b.append(path(f"M 168 {y0} q 56 -20 112 0 t 112 0", stroke=BLUE, sw=1.1))
    # cerebellum
    b.append(f'<ellipse cx="512" cy="200" rx="78" ry="46" fill="{PURPLE_LIGHT}" stroke="{PURPLE}" stroke-width="2.2"/>')
    for k in range(3):
        b.append(path(f"M {442 + k * 10} {182 + k * 14} q 62 -8 132 0", stroke=PURPLE, sw=1.0))
    # brain stem and spinal cord
    b.append(poly([(396, 208), (432, 208), (438, 250), (418, 290), (396, 250)], "#FFFFFF", GREEN, 2.0))
    b.append(rect(400, 286, 36, 24, "#FFFFFF", GREEN, 3, 2.0))
    # hypothalamus and pituitary
    b.append(dot(352, 196, 13, AMBER_LIGHT, AMBER, 1.8))
    b.append(dot(348, 230, 7, RED_LIGHT, RED, 1.6))

    # left labels
    b.append(t(196, 58, "Cerebrum", size=11, weight="bold", fill=BLUE, anchor="end"))
    b.append(line(202, 54, 246, 74, color=BLUE, sw=1.0))
    b.append(t(286, 178, "Hypothalamus", size=10.2, weight="bold", fill=AMBER, anchor="end"))
    b.append(line(292, 182, 340, 194, color=AMBER, sw=1.0))
    b.append(t(286, 250, "Pituitary gland", size=10.2, weight="bold", fill=RED, anchor="end"))
    b.append(line(292, 246, 340, 232, color=RED, sw=1.0))
    # right labels
    b.append(t(604, 176, "Cerebellum", size=11, weight="bold", fill=PURPLE, anchor="start"))
    b.append(line(598, 180, 562, 190, color=PURPLE, sw=1.0))
    b.append(t(470, 262, "Medulla oblongata", size=10.2, weight="bold", fill=GREEN, anchor="start"))
    b.append(line(464, 258, 434, 246, color=GREEN, sw=1.0))
    b.append(t(470, 312, "Spinal cord", size=10.2, weight="bold", fill=GREEN, anchor="start"))
    b.append(line(464, 306, 438, 298, color=GREEN, sw=1.0))

    b.append(rect(24, 320, 712, 24, GREEN_LIGHT, GREEN, 6, 1.1))
    b.append(t(380, 336, "Cerebrum = thinking, memory, voluntary movement · Cerebellum = balance and coordination · "
                         "Medulla = breathing, heart rate", size=8.6, fill=SLATE))
    write_svg("ch02_brain.svg", svg(w, h, "\n".join(b)))


def ch02_eye():
    w, h = 760, 400
    cx, cy, R = 372, 200, 122
    b = [t(380, 26, "THE HUMAN EYE IN SECTION — LATERAL VIEW", size=13.0, weight="bold", fill=NAVY)]
    b.append(dot(cx, cy, R, "#FFFFFF", SLATE, 2.4))
    b.append(dot(cx, cy, R - 9, "none", AMBER, 5.0))
    b.append(dot(cx, cy, R - 17, "none", BLUE, 4.0))
    b.append(dot(cx, cy, R - 24, "#F8FAFC", "none"))
    # cornea
    b.append(path(f"M {cx - 86} {cy - 84} Q {cx - 152} {cy} {cx - 86} {cy + 84}",
                  fill=GREEN_LIGHT, stroke=GREEN, sw=2.4))
    # lens
    b.append(ell(cx - 64, cy, 24, 54, BLUE_LIGHT, BLUE, 2.2))
    # iris above and below the lens
    b.append(poly([(cx - 40, cy - 78), (cx - 66, cy - 66), (cx - 66, cy - 40), (cx - 40, cy - 50)],
                  "#FFFFFF", NAVY, 1.6))
    b.append(poly([(cx - 40, cy + 78), (cx - 66, cy + 66), (cx - 66, cy + 40), (cx - 40, cy + 50)],
                  "#FFFFFF", NAVY, 1.6))
    # ciliary body
    b.append(path(f"M {cx - 60} {cy - 62} L {cx - 8} {cy - 92}", stroke=AMBER, sw=3.0))
    b.append(path(f"M {cx - 60} {cy + 62} L {cx - 8} {cy + 92}", stroke=AMBER, sw=3.0))
    # optic nerve
    b.append(path(f"M {cx + 104} {cy + 46} q 66 26 118 44", stroke=PURPLE, sw=9))

    # left labels (strict column, anchor end) — kept clear of the eyeball itself
    for label, lx, ly, tx, ty, col in (
        ("Ciliary body", 208, 92, 336, 124, AMBER),
        ("Cornea", 208, 132, 240, 148, GREEN),
        ("Iris and pupil", 208, 196, 300, 160, NAVY),
        ("Lens", 208, 252, 300, 238, BLUE),
    ):
        b.append(t(lx, ly, label, size=10.6, weight="bold", fill=col, anchor="end"))
        b.append(line(lx + 4, ly - 4, tx, ty, color=col, sw=1.0))

    # right labels
    for label, lx, ly, tx, ty, col in (
        ("Retina", 520, 140, 478, 150, BLUE),
        ("Optic nerve", 604, 274, 566, 258, PURPLE),
        ("Sclera (outer coat)", 536, 306, 462, 276, SLATE),
    ):
        b.append(t(lx, ly, label, size=10.6, weight="bold", fill=col, anchor="start"))
        b.append(line(lx - 4, ly - 4, tx, ty, color=col, sw=1.0))

    b.append(rect(24, 352, 712, 34, GREEN_LIGHT, GREEN, 6, 1.1))
    b.append(t(380, 368, "Light path: cornea → aqueous humour → pupil → lens → vitreous humour → retina → optic nerve → brain.",
               size=9.0, fill=SLATE))
    b.append(t(380, 382, "The cornea does most of the bending; the lens adjusts the focus (accommodation).", size=8.8, fill=MUTED))
    write_svg("ch02_eye.svg", svg(w, h, "\n".join(b)))


def ch02_ear():
    w, h = 760, 340
    b = [t(380, 26, "THE HUMAN EAR — OUTER, MIDDLE AND INNER", size=13.0, weight="bold", fill=NAVY)]
    # pinna
    b.append(path("M 60 140 q -26 -46 16 -74 q 40 -30 62 6 q 14 26 -4 48 q -20 26 -74 20 Z",
                  fill=AMBER_LIGHT, stroke=AMBER, sw=2.0))
    # auditory canal
    b.append(rect(96, 140, 130, 30, "#F8FAFC", AMBER, 5, 1.8))
    # eardrum
    b.append(line(228, 132, 228, 178, color=RED, sw=3.4))
    # ossicles
    b.append(dot(252, 145, 9, RED_LIGHT, RED, 1.6))
    b.append(dot(272, 160, 8, RED_LIGHT, RED, 1.6))
    b.append(poly([(288, 150), (306, 142), (310, 162), (292, 168)], RED_LIGHT, RED, 1.4))
    # middle-ear cavity outline
    b.append(path("M 236 128 q 40 -14 78 6 q 16 30 -6 56 q -44 14 -72 -6 Z",
                  fill="#FFFFFF", stroke=BORDER, sw=1.0, dash="4 3"))
    # cochlea (spiral)
    b.append(dot(372, 168, 46, PURPLE_LIGHT, PURPLE, 2.2))
    b.append(path("M 372 168 m 34 0 a 34 34 0 1 1 -20 -30 a 24 24 0 1 0 12 22 a 14 14 0 1 1 -8 -12",
                  stroke=PURPLE, sw=1.8))
    # semicircular canals
    for dx, dy, r in ((-26, -62, 22), (4, -72, 20), (30, -56, 18)):
        b.append(f'<ellipse cx="{372 + dx}" cy="{168 + dy}" rx="{r}" ry="{r * 0.8}" fill="none" '
                 f'stroke="{PURPLE}" stroke-width="2.0"/>')
    # Eustachian tube: from the middle-ear cavity downwards, clear of the cochlea
    b.append(path("M 300 186 q -18 40 -62 62", stroke=GREEN, sw=6))
    # oval window arrow
    b.append(arrow(314, 152, 330, 164, color=RED, sw=1.4, marker="ar"))

    b += [
        callout(1, 40, 100), t(34, 86, "Pinna", size=10.6, weight="bold", fill=AMBER, anchor="start"),
        callout(2, 156, 202), t(150, 220, "Auditory canal", size=10.4, weight="bold", fill=AMBER),
        callout(3, 214, 112), t(206, 100, "Eardrum", size=10.4, weight="bold", fill=RED, anchor="end"),
        callout(4, 268, 194), t(262, 212, "Ossicles", size=10.4, weight="bold", fill=RED),
        callout(5, 446, 138), t(458, 124, "Semicircular canals", size=10.2, weight="bold", fill=PURPLE, anchor="start"),
        callout(6, 446, 196), t(458, 202, "Cochlea", size=10.4, weight="bold", fill=PURPLE, anchor="start"),
        callout(7, 232, 268), t(224, 286, "Eustachian tube", size=10.4, weight="bold", fill=GREEN, anchor="end"),
    ]
    b.append(rect(24, 296, 712, 32, GREEN_LIGHT, GREEN, 6, 1.1))
    b.append(t(380, 311, "Sound: pinna → canal → eardrum (vibrates) → ossicles (amplify) → oval window → cochlea "
                         "(receptors) → auditory nerve → brain.", size=8.6, fill=SLATE))
    b.append(t(380, 323, "The semicircular canals do not hear: they detect the position and movement of the head (balance).",
               size=8.6, fill=MUTED))
    write_svg("ch02_ear.svg", svg(w, h, "\n".join(b)))


def ch02_reflex_arc():
    w, h = 760, 292
    b = [t(380, 26, "THE REFLEX ARC — THE FIVE COMPONENTS, IN ORDER", size=13.0, weight="bold", fill=NAVY)]
    nodes = [
        ("RECEPTOR", "skin, retina,\near", AMBER),
        ("SENSORY\nNEURONE", "dorsal root\ninto the cord", BLUE),
        ("RELAY\nNEURONE", "inside the\nspinal cord", GREEN),
        ("MOTOR\nNEURONE", "ventral root\nout of the cord", GREEN_BRIGHT),
        ("EFFECTOR", "muscle or\ngland", RED),
    ]
    x = 20
    for i, (name, sub, col) in enumerate(nodes):
        b.append(rect(x, 62, 128, 108, "#FFFFFF", col, 8, 1.8))
        b.append(f'<rect x="{x}" y="62" width="128" height="6" rx="3" fill="{col}"/>')
        for j, ln in enumerate(name.split("\n")):
            b.append(t(x + 64, 96 + j * 15, ln, size=11.0, weight="bold", fill=col))
        for j, ln in enumerate(sub.split("\n")):
            b.append(t(x + 64, 138 + j * 12, ln, size=8.4, fill=MUTED))
        if i < len(nodes) - 1:
            b.append(arrow(x + 129, 116, x + 147, 116, color=MUTED, sw=2.6, marker="an"))
        x += 148

    b.append(rect(20, 190, 720, 44, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 210, "Impulse in: receptor → sensory neurone → spinal cord.   Impulse out: relay neurone → motor neurone → effector.",
               size=9.4, fill=SLATE))
    b.append(t(380, 226, "No decision by the brain is needed, which is why the response is faster than a voluntary action.", size=9.4, fill=SLATE))
    b.append(t(380, 258, "Examples: withdrawal from a hot object · knee jerk · pupil constriction · blinking · coughing and sneezing.",
               size=9.2, fill=MUTED))
    write_svg("ch02_reflexarc.svg", svg(w, h, "\n".join(b)))


def recap_cards_b():
    recap_card("recap_ch02.svg", "Chapter 2 recap card — brain, senses and reflexes", [
        ("Brain", "Cerebrum thinks and starts voluntary movement; cerebellum balances; medulla runs breathing and the heart."),
        ("Eye", "Cornea and lens focus light on the retina; rods see in dim light, cones see colour; the optic nerve leaves the eyeball."),
        ("Ear", "Eardrum → ossicles → cochlea for hearing; semicircular canals for balance."),
        ("Reflex", "Receptor → sensory neurone → relay → motor neurone → effector, with the cord doing the thinking."),
    ])
