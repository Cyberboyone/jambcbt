"""Volume 4 figures, part C: Chapter 3, magnetism and induction.

Every field diagram here follows the same convention as the book's text:
field lines leave a north pole and enter a south pole, the arrow on a wire
gives the conventional current, and the force is drawn with a single arrow
so that Fleming's left-hand rule can be read straight off the picture.
"""

from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from common import (
    AMBER, BLUE, BORDER, GREEN, LIGHT_BG, MUTED, NAVY, RED, SLATE,
    arrow2, dot, line, path, recap_card, rect, save, svg, t, write_svg,
)

FIGURES = ["ch03_field", "ch03_force", "ch03_induction", "ch03_transformer",
           "recap_ch03"]


# ── 3.1 fields ──────────────────────────────────────────────────────────────
def ch03_field():
    w, h = 680, 320
    b = [t(340, 20, "THREE FIELDS THE EXAMINER ASKS YOU TO DRAW", size=10.6, weight="bold")]

    P_W, P_H, P_Y = 214, 262, 34
    xs = [14, 236, 458]

    # (a) bar magnet
    b.append(rect(xs[0], P_Y, P_W, P_H, "#FFFFFF", BORDER, 6, 1.1))
    b.append(t(xs[0] + P_W / 2, P_Y + 16, "(a) A BAR MAGNET", size=8.4, weight="bold"))
    mx, my = xs[0] + 107, P_Y + 130
    b.append(rect(mx - 52, my - 16, 52, 32, "#FEE2E2", RED, 2, 1.2))
    b.append(rect(mx, my - 16, 52, 32, "#DBEAFE", BLUE, 2, 1.2))
    b.append(t(mx - 26, my + 5, "N", size=10, weight="bold", fill=RED))
    b.append(t(mx + 26, my + 5, "S", size=10, weight="bold", fill=BLUE))
    for sgn in (-1, 1):
        for lift in (46, 78):
            b.append(path(f"M {mx - 52} {my + sgn * 14} C {mx - 96} {my + sgn * lift}, "
                          f"{mx + 96} {my + sgn * lift}, {mx + 52} {my + sgn * 14}",
                          stroke=GREEN, sw=1.2))
            b.append(arrow2(mx + sgn * 10, my + sgn * (0.72 * lift),
                            mx + sgn * 10 + 18, my + sgn * (0.72 * lift - 2),
                            color=GREEN, sw=1.0, size=4.0))
    b.append(t(xs[0] + P_W / 2, P_Y + 214, "Lines leave N and enter S;", size=7.8, fill=SLATE))
    b.append(t(xs[0] + P_W / 2, P_Y + 228, "they never cross.", size=7.8, fill=SLATE))
    b.append(t(xs[0] + P_W / 2, P_Y + 248, "Like poles repel.", size=7.6, fill=MUTED))

    # (b) straight wire
    b.append(rect(xs[1], P_Y, P_W, P_H, "#FFFFFF", BORDER, 6, 1.1))
    b.append(t(xs[1] + P_W / 2, P_Y + 16, "(b) A STRAIGHT WIRE", size=8.4, weight="bold"))
    cx = xs[1] + P_W / 2
    b.append(rect(cx - 4, P_Y + 34, 8, 130, "#94A3B8", SLATE, 3, 1.0))
    b.append(arrow2(cx, P_Y + 156, cx, P_Y + 176, color=BLUE, sw=1.6, size=6))
    b.append(t(cx + 12, P_Y + 172, "current", size=7.8, fill=BLUE, anchor="start"))
    for k in range(3):
        rr = 18 + k * 16
        b.append(f'<circle cx="{cx}" cy="{P_Y + 99}" r="{rr}" fill="none" stroke="{GREEN}" '
                 f'stroke-width="1.2" stroke-dasharray="3 3"/>')
        b.append(arrow2(cx + rr - 3, P_Y + 99 - 2, cx + rr - 1, P_Y + 91, color=GREEN, sw=1.0, size=4.2))
    b.append(t(xs[1] + P_W / 2, P_Y + 214, "Concentric circles; right-hand grip:", size=7.8, fill=SLATE))
    b.append(t(xs[1] + P_W / 2, P_Y + 228, "thumb along current, fingers curl", size=7.8, fill=SLATE))
    b.append(t(xs[1] + P_W / 2, P_Y + 242, "with the field.", size=7.8, fill=SLATE))

    # (c) solenoid
    b.append(rect(xs[2], P_Y, P_W, P_H, "#FFFFFF", BORDER, 6, 1.1))
    b.append(t(xs[2] + P_W / 2, P_Y + 16, "(c) A SOLENOID", size=8.4, weight="bold"))
    cx3 = xs[2] + P_W / 2
    for k in range(6):
        xx = cx3 - 62 + k * 24
        b.append(f'<ellipse cx="{xx}" cy="{P_Y + 110}" rx="8" ry="46" fill="none" '
                 f'stroke="{SLATE}" stroke-width="1.4"/>')
    for dy in (-22, 0, 22):
        b.append(arrow2(cx3 - 78, P_Y + 110 + dy, cx3 - 100, P_Y + 110 + dy,
                        color=GREEN, sw=1.2, size=5.0))
        b.append(arrow2(cx3 + 100, P_Y + 110 + dy, cx3 + 78, P_Y + 110 + dy,
                        color=GREEN, sw=1.2, size=5.0))
    b.append(t(cx3 - 58, P_Y + 168, "N", size=8.6, weight="bold", fill=RED))
    b.append(t(cx3 + 58, P_Y + 168, "S", size=8.6, weight="bold", fill=BLUE))
    b.append(t(xs[2] + P_W / 2, P_Y + 214, "A coil behaves like a bar magnet;", size=7.8, fill=SLATE))
    b.append(t(xs[2] + P_W / 2, P_Y + 228, "more turns or more current,", size=7.8, fill=SLATE))
    b.append(t(xs[2] + P_W / 2, P_Y + 242, "stronger field.", size=7.8, fill=SLATE))

    write_svg("ch03_field.svg", svg(w, h, "\n".join(b)))


# ── 3.2 force on a conductor ────────────────────────────────────────────────
def ch03_force():
    w, h = 680, 300
    b = [t(340, 20, "A CURRENT IN A MAGNETIC FIELD FEELS A FORCE: F = B I l", size=10.6,
           weight="bold")]

    # ── left: the motor effect
    b.append(rect(14, 34, 320, 252, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(174, 52, "THE MOTOR EFFECT", size=9.0, weight="bold", fill=GREEN))

    b.append(rect(34, 96, 56, 110, "#FEE2E2", RED, 4, 1.3))
    b.append(t(62, 156, "N", size=17, weight="bold", fill=RED))
    b.append(rect(254, 96, 56, 110, "#DBEAFE", BLUE, 4, 1.3))
    b.append(t(282, 156, "S", size=17, weight="bold", fill=BLUE))

    for k in range(4):
        yy = 116 + k * 24
        b.append(arrow2(94, yy, 250, yy, color="#94A3B8", sw=1.0, size=4.8))
    b.append(t(174, 208, "field B, N to S", size=7.8, fill=MUTED))

    # conductor into the page, at the centre
    cx, cy = 174, 151
    b.append(dot(cx, cy, 13, "#FFFFFF", NAVY, 1.6))
    b.append(line(cx - 6, cy - 6, cx + 6, cy + 6, color=NAVY, sw=1.6))
    b.append(line(cx - 6, cy + 6, cx + 6, cy - 6, color=NAVY, sw=1.6))
    b.append(t(cx + 20, cy + 26, "current into the page", size=7.6, fill=NAVY, anchor="start"))

    b.append(arrow2(cx, cy - 18, cx, cy - 62, color=GREEN, sw=2.4, size=9))
    b.append(t(cx, cy - 72, "force", size=8.4, weight="bold", fill=GREEN))

    b.append(t(174, 236, "Cross the two arrows and the third is the force;", size=7.9, fill=NAVY))
    b.append(t(174, 250, "that is Fleming's left-hand rule, and it is", size=7.9, fill=NAVY))
    b.append(t(174, 264, "what turns every electric motor.", size=7.9, fill=NAVY))

    # ── right: the rule and the formula
    b.append(rect(346, 34, 320, 252, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(506, 52, "THE RULE AND THE FORMULA", size=9.0, weight="bold", fill=GREEN))

    b.append(rect(360, 70, 292, 46, LIGHT_BG, BORDER, 5, 0.9))
    b.append(t(372, 88, "The formula", size=8.2, weight="bold", fill=NAVY, anchor="start"))
    b.append(t(372, 104, "F = B I l sinθ, with θ between B and I", size=8.0, fill=SLATE, anchor="start"))

    b.append(rect(360, 124, 292, 46, LIGHT_BG, BORDER, 5, 0.9))
    b.append(t(372, 142, "The unit of B", size=8.2, weight="bold", fill=NAVY, anchor="start"))
    b.append(t(372, 158, "the tesla: 1 T = 1 N per ampere per metre", size=8.0, fill=SLATE, anchor="start"))

    b.append(rect(360, 178, 292, 46, LIGHT_BG, BORDER, 5, 0.9))
    b.append(t(372, 196, "Largest force", size=8.2, weight="bold", fill=NAVY, anchor="start"))
    b.append(t(372, 212, "when the wire is at right angles to B", size=8.0, fill=SLATE, anchor="start"))

    b.append(t(506, 246, "Reverse the current: the force reverses.", size=8.0, fill=MUTED))
    b.append(t(506, 262, "Reverse the field: the force reverses too.", size=8.0, fill=MUTED))

    write_svg("ch03_force.svg", svg(w, h, "\n".join(b)))


# ── 3.3 induction ───────────────────────────────────────────────────────────
def ch03_induction():
    w, h = 680, 300
    b = [t(340, 20, "MOVE A MAGNET NEAR A COIL AND YOU MAKE A VOLTAGE", size=10.6,
           weight="bold")]

    # coil
    b.append(rect(14, 34, 320, 250, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(174, 52, "FARADAY'S EXPERIMENT", size=9.0, weight="bold", fill=GREEN))

    cx, cy = 150, 140
    for k in range(5):
        xx = cx - 40 + k * 20
        b.append(f'<ellipse cx="{xx}" cy="{cy}" rx="7" ry="40" fill="none" stroke="{SLATE}" '
                 f'stroke-width="1.5"/>')
    b.append(t(cx, cy + 60, "coil", size=8.0, fill=SLATE))

    # magnet moving in
    b.append(rect(40, cy - 12, 44, 24, "#FEE2E2", RED, 3, 1.2))
    b.append(t(62, cy + 4, "N", size=9, weight="bold", fill=RED))
    b.append(arrow2(88, cy, 118, cy, color=GREEN, sw=1.8, size=7))
    b.append(t(62, cy - 22, "magnet", size=7.8, fill=SLATE))

    # galvanometer
    b.append(dot(258, cy, 15, "#FFFFFF", GREEN, 1.4))
    b.append(t(258, cy + 4, "G", size=9.4, weight="bold", fill=GREEN))
    b.append(line(cx + 44, cy - 30, 258, cy - 15, color=SLATE, sw=1.2))
    b.append(line(cx + 44, cy + 30, 258, cy + 15, color=SLATE, sw=1.2))

    b.append(t(174, 226, "Move the magnet in: the needle deflects one way.", size=8.0, fill=NAVY))
    b.append(t(174, 240, "Hold it still: no deflection — no change, no e.m.f.", size=8.0, fill=NAVY))
    b.append(t(174, 254, "Pull it out: the needle deflects the other way.", size=8.0, fill=NAVY))
    b.append(t(174, 272, "Faster movement gives a bigger e.m.f.", size=7.8, fill=MUTED))

    # the law
    b.append(rect(346, 34, 320, 250, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(506, 52, "FARADAY'S AND LENZ'S LAWS", size=9.0, weight="bold", fill=GREEN))

    rows = [
        ("Faraday", "e.m.f. ∝ rate of change of flux"),
        ("Faraday, in symbols", "E = −N ΔΦ / Δt"),
        ("Lenz", "the induced current opposes the change"),
        ("Result", "a generator turns motion into e.m.f."),
    ]
    y = 74
    for head, body in rows:
        b.append(rect(360, y, 292, 40, LIGHT_BG, BORDER, 5, 0.9))
        b.append(t(372, y + 16, head, size=8.2, weight="bold", fill=NAVY, anchor="start"))
        b.append(t(372, y + 31, body, size=8.0, fill=SLATE, anchor="start"))
        y += 46

    b.append(t(506, 268, "Lenz's law is conservation of energy in disguise.", size=8.0, fill=MUTED))

    write_svg("ch03_induction.svg", svg(w, h, "\n".join(b)))


# ── 3.4 transformer ─────────────────────────────────────────────────────────
def ch03_transformer():
    w, h = 680, 300
    b = [t(340, 20, "THE TRANSFORMER: MORE TURNS, MORE VOLTS, LESS CURRENT", size=10.6,
           weight="bold")]

    # ── left: the machine
    b.append(rect(14, 34, 360, 252, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(194, 52, "TWO COILS ON ONE IRON CORE", size=9.0, weight="bold", fill=GREEN))

    # core frame
    b.append(rect(78, 74, 232, 34, "#E2E8F0", SLATE, 3, 1.2))
    b.append(rect(78, 158, 232, 34, "#E2E8F0", SLATE, 3, 1.2))
    b.append(rect(78, 74, 30, 118, "#E2E8F0", SLATE, 3, 1.2))
    b.append(rect(280, 74, 30, 118, "#E2E8F0", SLATE, 3, 1.2))
    b.append(t(194, 134, "iron core", size=8.0, fill=MUTED))

    # primary: 4 turns on the left leg
    for k in range(4):
        yy = 84 + k * 26
        b.append(f'<ellipse cx="93" cy="{yy}" rx="26" ry="8" fill="none" stroke="{BLUE}" stroke-width="2.0"/>')
    # secondary: 8 turns on the right leg
    for k in range(8):
        yy = 80 + k * 13
        b.append(f'<ellipse cx="295" cy="{yy}" rx="26" ry="5" fill="none" stroke="{GREEN}" stroke-width="1.7"/>')

    b.append(t(93, 216, "primary: 4 turns", size=8.2, weight="bold", fill=BLUE))
    b.append(t(93, 230, "240 V a.c. in", size=7.8, fill=SLATE))
    b.append(t(295, 216, "secondary: 8 turns", size=8.2, weight="bold", fill=GREEN))
    b.append(t(295, 230, "480 V a.c. out", size=7.8, fill=SLATE))
    b.append(t(194, 256, "Step-up: twice the turns, twice the voltage.", size=7.9, fill=NAVY))
    b.append(t(194, 270, "The current is halved, because the power is the same.", size=7.9, fill=NAVY))

    # ── right: the arithmetic
    b.append(rect(388, 34, 278, 252, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(527, 52, "THE THREE LINES", size=9.0, weight="bold", fill=GREEN))

    b.append(rect(402, 70, 250, 50, LIGHT_BG, BORDER, 5, 0.9))
    b.append(t(527, 90, "Vs / Vp = Ns / Np", size=9.6, weight="bold", fill=NAVY))
    b.append(t(527, 108, "turns ratio sets the voltage ratio", size=7.6, fill=MUTED))

    b.append(rect(402, 128, 250, 50, LIGHT_BG, BORDER, 5, 0.9))
    b.append(t(527, 148, "Vs Is = Vp Ip", size=9.6, weight="bold", fill=NAVY))
    b.append(t(527, 166, "for 100 % efficiency: power in = power out", size=7.6, fill=MUTED))

    b.append(rect(402, 186, 250, 50, LIGHT_BG, BORDER, 5, 0.9))
    b.append(t(527, 206, "Ns > Np: step-up", size=9.6, weight="bold", fill=NAVY))
    b.append(t(527, 224, "fewer turns: step-down", size=7.6, fill=MUTED))

    b.append(t(527, 258, "Only a.c. works: a steady d.c. gives", size=7.9, fill=NAVY))
    b.append(t(527, 272, "no changing flux, so no induced e.m.f.", size=7.9, fill=NAVY))

    write_svg("ch03_transformer.svg", svg(w, h, "\n".join(b)))


def recap_ch03():
    recap_card(
        "recap_ch03.svg",
        "Chapter 3 recap card — magnetism and induction",
        [
            ("Fields",
             "Lines leave N and enter S; a wire's field is concentric circles, ruled by the right-hand grip."),
            ("Force",
             "F = BIl sinθ. Fleming's left hand: field, current, force at right angles."),
            ("Induction",
             "E = −NΔΦ/Δt. An e.m.f. needs a *change* of flux; Lenz says the induced current opposes it."),
            ("Transformer",
             "Vs/Vp = Ns/Np, and VsIs = VpIp when losses are ignored. Step-up: more volts, fewer amps."),
        ],
    )
