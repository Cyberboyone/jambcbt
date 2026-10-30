"""Vector diagrams for Chapters 3–4 of JAMB Physics Volume 1.

Forces, moments, collisions, work at an angle, pulleys and the energy chain.
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from common import (  # noqa: E402
    GREEN, GREEN_LIGHT, GREEN_MID, GREEN_BRIGHT, NAVY, SLATE, MUTED, BORDER,
    AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT,
    LIGHT_BG, rect, t, lines, arrow2, arrow, line, dot, poly, path, card, banner,
    recap_card, write_svg, svg, save, plt, np,
)

FIGURES = ["ch03_force_map", "ch03_friction", "ch03_moments", "ch03_collision",
           "recap_ch03", "ch04_work_angle", "ch04_pulley", "ch04_energy_chain",
           "recap_ch04"]


def ch03_force_map():
    w, h = 560, 264
    b = [t(280, 20, "THE FORCES ON THE SYLLABUS, SORTED BY HOW THEY ACT",
           size=11, weight="bold")]

    b.append(rect(8, 34, 262, 218, "#FFFFFF", GREEN, 8, 1.2))
    b.append(rect(8, 34, 262, 24, GREEN_LIGHT, GREEN, 8, 1.0))
    b.append(t(139, 50, "CONTACT — THE BODIES TOUCH", size=9.0, weight="bold", fill=GREEN))
    contact = [("normal reaction", "perpendicular to the surface"),
               ("tension", "along a string, away from the body"),
               ("friction", "along a surface, against sliding"),
               ("upthrust", "upward push of a fluid"),
               ("air resistance", "against the motion through a fluid")]
    y = 76
    for name, note in contact:
        b.append(t(18, y, name, size=9.0, weight="bold", fill=NAVY, anchor="start"))
        b.append(t(18, y + 13, note, size=8.0, fill=SLATE, anchor="start"))
        y += 34

    b.append(rect(282, 34, 270, 218, "#FFFFFF", BLUE, 8, 1.2))
    b.append(rect(282, 34, 270, 24, BLUE_LIGHT, BLUE, 8, 1.0))
    b.append(t(417, 50, "NON-CONTACT — ACTION AT A DISTANCE", size=9.0, weight="bold", fill=BLUE))
    distant = [("weight", "the Earth's pull, W = m g, always down"),
               ("magnetic", "between poles, and on a current"),
               ("electrostatic", "between charges, like repels like"),
               ("gravitational", "between any two masses")]
    y = 76
    for name, note in distant:
        b.append(t(292, y, name, size=9.0, weight="bold", fill=NAVY, anchor="start"))
        b.append(t(292, y + 13, note, size=8.0, fill=SLATE, anchor="start"))
        y += 40
    b.append(t(417, 236, "a free-body diagram shows only the forces on the body", size=7.6, fill=MUTED))
    write_svg("ch03_force_map.svg", svg(w, h, "\n".join(b)))


def ch03_friction():
    fig, ax = plt.subplots(figsize=(6.2, 2.7))
    F = np.linspace(0, 10, 200)
    lim = 6.0
    fr = np.where(F <= lim, F, lim - 0.4)
    ax.plot(F[F <= lim], F[F <= lim], color=GREEN, lw=2.4, zorder=3)
    ax.plot([lim, 10], [lim - 0.4, lim - 0.4], color=BLUE, lw=2.4, zorder=3)
    ax.plot([lim], [lim], "o", color=RED, ms=5, zorder=4)
    ax.annotate("limiting friction", xy=(lim, lim), xytext=(6.4, 7.6),
                fontsize=8.4, color=RED,
                arrowprops=dict(arrowstyle="->", color=RED, lw=1.0))
    ax.annotate("sliding friction (slightly less)", xy=(8.2, lim - 0.4), xytext=(4.6, 3.0),
                fontsize=8.4, color=BLUE,
                arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.0))
    ax.text(1.1, 3.1, "static: F = applied force", fontsize=8.4, color=GREEN, rotation=31)
    ax.set_xlabel("applied force / N", fontsize=9)
    ax.set_ylabel("friction / N", fontsize=9)
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 9)
    ax.grid(color="#E2E8F0", lw=0.8)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.tick_params(labelsize=8.4)
    ax.set_title("friction rises with the pull until it can rise no further", fontsize=9.2, color=NAVY)
    save(fig, "ch03_friction.svg")


def ch03_moments():
    w, h = 560, 252
    b = [t(280, 20, "MOMENTS ABOUT A PIVOT — BALANCING A METRE RULE", size=11, weight="bold")]

    x0, x1 = 56.0, 528.0
    def cm(c):
        return x0 + (x1 - x0) * c / 100

    rule_top = 102
    b.append(rect(x0, rule_top, x1 - x0, 12, "#F1F5F9", SLATE, 3, 1.4))
    for c in range(0, 101, 10):
        x = cm(c)
        b.append(line(x, rule_top + 12, x, rule_top + 19, color=SLATE, sw=0.9))
        if c != 40:
            b.append(t(x, rule_top + 30, str(c), size=7.2, fill=MUTED))

    # pivot under the rule
    px = cm(40)
    b.append(poly([(px - 13, rule_top + 12), (px + 13, rule_top + 12), (px, rule_top + 34)], GREEN_MID, GREEN, 1.4))
    b.append(t(px, rule_top + 48, "pivot at 40 cm", size=8.2, weight="bold", fill=GREEN))

    def load(c, label, colour):
        x = cm(c)
        b.append(arrow2(x, 64, x, rule_top - 5, color=colour, sw=2.0))
        b.append(rect(x - 18, 38, 36, 22, "#FFFFFF", colour, 4, 1.2))
        b.append(t(x, 53, label, size=8.2, weight="bold", fill=colour))

    load(10, "6.0 N", BLUE)
    load(50, "2.0 N", AMBER)
    load(80, "4.0 N", PURPLE)

    def span(ca, cb, y, label, colour):
        xa, xb = cm(ca), cm(cb)
        b.append(f'<line x1="{xa}" y1="{y}" x2="{xb}" y2="{y}" stroke="{colour}" stroke-width="1.2"/>')
        for xx in (xa, xb):
            b.append(f'<line x1="{xx}" y1="{y-5}" x2="{xx}" y2="{y+5}" stroke="{colour}" stroke-width="1.2"/>')
        b.append(t((xa + xb) / 2, y + 15, label, size=8.2, fill=colour))

    span(10, 40, 180, "30 cm", BLUE)
    span(40, 80, 212, "40 cm", PURPLE)

    b.append(t(280, 244, "6.0 × 30 = 180 N cm anticlockwise  ·  4.0 × 40 + 2.0 × 10 = 180 N cm clockwise",
               size=8.2, fill=MUTED))
    write_svg("ch03_moments.svg", svg(w, h, "\n".join(b)))


def ch03_collision():
    w, h = 560, 250
    b = [t(280, 20, "A PERFECTLY INELASTIC COLLISION — MOMENTUM IS CONSERVED, ENERGY IS NOT",
           size=10.4, weight="bold")]

    # before
    b.append(t(60, 52, "before", size=8.6, weight="bold", fill=MUTED, anchor="start"))
    b.append(rect(80, 66, 70, 40, BLUE_LIGHT, BLUE, 5, 1.3))
    b.append(t(115, 91, "m₁", size=9.6, weight="bold", fill=BLUE))
    b.append(arrow2(158, 86, 210, 86, color=BLUE, sw=2.0))
    b.append(t(184, 76, "u₁", size=8.6, fill=BLUE))

    b.append(rect(290, 66, 70, 40, PURPLE_LIGHT, PURPLE, 5, 1.3))
    b.append(t(325, 91, "m₂", size=9.6, weight="bold", fill=PURPLE))
    b.append(t(325, 122, "at rest", size=8.2, fill=MUTED))

    b.append(line(30, 140, 530, 140, color=BORDER, sw=1.0, dash="4 3"))

    # after
    b.append(t(60, 168, "after", size=8.6, weight="bold", fill=MUTED, anchor="start"))
    b.append(rect(170, 182, 150, 40, GREEN_LIGHT, GREEN, 5, 1.3))
    b.append(t(245, 207, "m₁ + m₂", size=9.6, weight="bold", fill=GREEN))
    b.append(arrow2(324, 202, 400, 202, color=GREEN, sw=2.0))
    b.append(t(362, 192, "v", size=8.6, fill=GREEN))

    b.append(rect(8, 228, 544, 18, "#FFFFFF", BORDER, 4, 0.8))
    b.append(t(280, 240, "m₁u₁ = (m₁ + m₂)v   ·   lost kinetic energy becomes heat and sound",
               size=8.4, fill=MUTED))
    write_svg("ch03_collision.svg", svg(w, h, "\n".join(b)))


def recap_ch03():
    recap_card("recap_ch03.svg", "Chapter 3 recap card — forces, moments and momentum", [
        ("Newton's laws", "1: no resultant force, no change of motion. 2: F = m a. 3: equal and opposite, on "
                          "different bodies. In a lift, R = m(g ± a)."),
        ("Friction", "Opposes sliding, proportional to the reaction and not to the area: F ≤ μR at the "
                     "limit. μ is a pure ratio, with no unit."),
        ("Equilibrium", "No resultant force and no resultant moment. Moment = F × perpendicular distance; "
                        "take moments about the point where the unknown force acts."),
        ("Momentum", "p = mv, and Ft = mv − mu. Conserved in every collision with no external force; kinetic "
                     "energy conserved only in elastic ones."),
    ])


def ch04_work_angle():
    w, h = 560, 258
    b = [t(280, 20, "WORK DONE BY A FORCE AT AN ANGLE TO THE MOTION", size=11, weight="bold")]

    ground = 176
    b.append(line(36, ground, 524, ground, color=SLATE, sw=1.6))
    for x in range(36, 524, 24):
        b.append(line(x, ground, x - 10, ground + 10, color=BORDER, sw=0.9))

    # block at the start and, dashed, at the end
    b.append(rect(76, 138, 56, 38, GREEN_MID, GREEN, 4, 1.3))
    b.append(t(104, 162, "m", size=9.6, weight="bold", fill=GREEN))
    b.append(rect(374, 138, 56, 38, "#FFFFFF", BORDER, 4, 1.2, dash="4 3"))
    b.append(t(402, 162, "m", size=9.6, fill=MUTED))

    # displacement
    b.append(arrow2(134, 194, 372, 194, color=SLATE, sw=1.6))
    b.append(t(253, 210, "displacement s", size=8.8, fill=SLATE))

    # the force, applied at the top corner of the block
    ox, oy = 132.0, 138.0
    ang = np.radians(30)
    L = 138
    ex, ey = ox + L * np.cos(ang), oy - L * np.sin(ang)
    b.append(arrow2(ox, oy, ex, ey, color=RED, sw=2.4))
    b.append(t(ex + 10, ey + 2, "F", size=11, weight="bold", fill=RED, anchor="start"))

    # angle arc between the two components
    r = 54
    b.append(path(f"M {ox+r} {oy} A {r} {r} 0 0 0 {ox+r*np.cos(ang):.1f} {oy-r*np.sin(ang):.1f}",
                  stroke=SLATE, sw=1.1))
    b.append(t(ox + 62, oy - 8, "θ", size=9.4, fill=SLATE))

    # components
    b.append(arrow2(ox, oy, ox + L * np.cos(ang), oy, color=BLUE, sw=1.8))
    b.append(arrow2(ox, oy, ox, oy - L * np.sin(ang), color=PURPLE, sw=1.8))
    b.append(t(ox + L * np.cos(ang) - 6, oy - 8, "F cos θ", size=9.0, weight="bold", fill=BLUE, anchor="end"))
    b.append(t(ox - 10, oy - L * np.sin(ang) + 16, "F sin θ", size=9.0, weight="bold", fill=PURPLE, anchor="end"))

    # the working is only along s
    b.append(rect(8, 222, 544, 26, GREEN_LIGHT, GREEN, 6, 1.1))
    b.append(t(280, 239, "W = F s cos θ   ·   the perpendicular component does no work at all",
               size=9.0, fill=NAVY))
    write_svg("ch04_work_angle.svg", svg(w, h, "\n".join(b)))


def _ceiling(ox, top, half=62):
    b = [line(ox - half, top, ox + half, top, color=SLATE, sw=2.4)]
    for x in range(int(ox - half), int(ox + half), 12):
        b.append(line(x, top, x - 7, top - 7, color=BORDER, sw=0.9))
    return b


def _wheel(cx, cy, r):
    return (f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="#FFFFFF" stroke="{SLATE}" stroke-width="1.6"/>'
            f'<circle cx="{cx}" cy="{cy}" r="2.4" fill="{SLATE}"/>')


def _pulley_system(ox, top, sections, label, vr):
    b = _ceiling(ox, top)

    if sections == 1:
        # one fixed wheel: the rope only changes direction
        b.append(_wheel(ox, top + 34, 22))
        b.append(line(ox, top, ox, top + 12, color=SLATE, sw=1.8))
        b.append(path(f"M {ox-22} {top+34} L {ox-22} {top+118}", stroke=BLUE, sw=1.8))
        b.append(path(f"M {ox+22} {top+34} L {ox+22} {top+84}", stroke=BLUE, sw=1.8))
        b.append(rect(ox - 50, top + 118, 56, 26, GREEN_MID, GREEN, 4, 1.2))
        b.append(t(ox - 22, top + 135, "load", size=8.2, weight="bold", fill=GREEN))
        b.append(arrow2(ox + 22, top + 84, ox + 22, top + 114, color=BLUE, sw=1.8))
        b.append(t(ox + 34, top + 106, "effort", size=8.0, fill=BLUE, anchor="start"))
    elif sections == 2:
        # rope fixed at the ceiling, round a movable wheel, over a fixed wheel
        b.append(_wheel(ox + 22, top + 30, 18))
        b.append(line(ox + 22, top, ox + 22, top + 12, color=SLATE, sw=1.8))
        b.append(_wheel(ox - 22, top + 84, 22))
        b.append(path(f"M {ox-44} {top} L {ox-44} {top+84}", stroke=BLUE, sw=1.8))
        b.append(path(f"M {ox-44} {top+84} A 22 22 0 0 0 {ox} {top+84}", stroke=BLUE, sw=1.8))
        b.append(path(f"M {ox} {top+84} L {ox+4} {top+30}", stroke=BLUE, sw=1.8))
        b.append(path(f"M {ox+22} {top+48} L {ox+22} {top+112}", stroke=BLUE, sw=1.8))
        b.append(line(ox - 22, top + 106, ox - 22, top + 118, color=SLATE, sw=1.8))
        b.append(rect(ox - 50, top + 118, 56, 26, GREEN_MID, GREEN, 4, 1.2))
        b.append(t(ox - 22, top + 135, "load", size=8.2, weight="bold", fill=GREEN))
        b.append(arrow2(ox + 22, top + 108, ox + 22, top + 140, color=BLUE, sw=1.8))
        b.append(t(ox + 34, top + 128, "effort", size=8.0, fill=BLUE, anchor="start"))
    else:
        # three rope sections supporting one movable block
        for dx in (-30, 0, 30):
            b.append(_wheel(ox + dx, top + 24, 12))
            b.append(line(ox + dx, top, ox + dx, top + 12, color=SLATE, sw=1.6))
            b.append(path(f"M {ox+dx} {top+36} L {ox+dx} {top+96}", stroke=BLUE, sw=1.8))
        b.append(rect(ox - 46, top + 96, 92, 26, GREEN_MID, GREEN, 4, 1.2))
        b.append(t(ox, top + 113, "load", size=8.2, weight="bold", fill=GREEN))
        b.append(path(f"M {ox+38} {top+34} Q {ox+50} {top+48} {ox+50} {top+66}", stroke=BLUE, sw=1.8))
        b.append(arrow2(ox + 50, top + 66, ox + 50, top + 96, color=BLUE, sw=1.8))
        b.append(t(ox + 58, top + 88, "effort", size=8.0, fill=BLUE, anchor="start"))

    b.append(t(ox, top + 168, label, size=8.8, weight="bold", fill=NAVY))
    b.append(t(ox, top + 184, f"VR = {vr}", size=9.2, weight="bold", fill=GREEN))
    return b


def ch04_pulley():
    w, h = 560, 286
    b = [t(280, 20, "THREE PULLEY SYSTEMS — FORCE IS TRADED FOR DISTANCE", size=11, weight="bold")]
    b += _pulley_system(105, 44, 1, "single fixed pulley", "1")
    b += _pulley_system(285, 44, 2, "single movable pulley", "2")
    b += _pulley_system(455, 44, 3, "block and tackle", "3")
    b.append(rect(8, 254, 544, 24, GREEN_LIGHT, GREEN, 6, 1.1))
    b.append(t(280, 270, "efficiency = MA / VR × 100 %, and MA can never exceed VR", size=9.0, fill=NAVY))
    write_svg("ch04_pulley.svg", svg(w, h, "\n".join(b)))


def ch04_energy_chain():
    w, h = 560, 176
    b = [t(280, 20, "ONE QUANTITY IN FIVE FORMS — THE CONSERVATION OF ENERGY", size=11, weight="bold")]
    names = [("chemical", "fuel, food"), ("kinetic", "1/2 m v²"), ("potential", "m g h"),
             ("electrical", "current"), ("heat", "always")]
    cols = [GREEN, BLUE, PURPLE, AMBER, RED]
    bw, gap = 90, 20
    for i, (name, note) in enumerate(names):
        x = 20 + i * (bw + gap)
        b.append(rect(x, 44, bw, 58, "#FFFFFF", cols[i], 7, 1.3))
        b.append(rect(x, 44, bw, 6, cols[i], cols[i], 2, 0.8))
        b.append(t(x + bw / 2, 74, name, size=9.0, weight="bold", fill=cols[i]))
        b.append(t(x + bw / 2, 90, note, size=7.6, fill=SLATE))
        if i < len(names) - 1:
            b.append(arrow2(x + bw + 2, 73, x + bw + gap - 2, 73, color=MUTED, sw=1.3))

    b.append(t(280, 128, "energy moves from form to form, and the total never changes",
               size=8.8, fill=SLATE))
    b.append(t(280, 150, "every conversion ends in heat, which is why no machine is 100 % efficient",
               size=8.8, fill=MUTED))
    write_svg("ch04_energy_chain.svg", svg(w, h, "\n".join(b)))


def recap_ch04():
    recap_card("recap_ch04.svg", "Chapter 4 recap card — work, energy, power and machines", [
        ("Work", "W = F s cos θ: only the component along the motion does work, and a perpendicular force "
                 "does none. Unit: the joule."),
        ("Energy", "Ek = 1/2 m v², Ep = m g h. The total is conserved: a fall converts potential into kinetic, "
                   "a rise converts it back."),
        ("Power", "P = W/t = F v, in watts. A high power means energy transferred quickly, not a large store "
                  "of it."),
        ("Machines", "MA = load/effort, VR = effort distance/load distance, efficiency = MA/VR × 100 %. "
                     "Never above 100 %: friction and the weight of the parts."),
    ])
