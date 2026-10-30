"""Vector diagrams for Chapters 5–6 of JAMB Physics Volume 1.

Circular motion, gravitation, simple harmonic motion, elasticity, pressure,
flotation and viscosity.
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

FIGURES = ["ch05_circular", "ch05_gravity", "ch05_shm",
           "ch06_hooke", "ch06_hydraulic", "ch06_archimedes", "ch06_viscosity",
           "recap_ch05", "recap_ch06"]


# ── 5.1 circular motion ───────────────────────────────────────────────────────
def ch05_circular():
    w, h = 560, 262
    b = [t(280, 20, "CIRCULAR MOTION — THE SPEED STAYS CONSTANT, THE VELOCITY NEVER DOES",
           size=10.6, weight="bold")]

    cx, cy, r = 168.0, 152.0, 78.0
    b.append(f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="none" stroke="{BORDER}" stroke-width="1.4" '
             f'stroke-dasharray="5 4"/>')
    b.append(f'<circle cx="{cx}" cy="{cy}" r="3.4" fill="{NAVY}"/>')
    b.append(t(cx - 12, cy + 18, "C", size=9.4, weight="bold", fill=NAVY))

    th = np.radians(52)
    px, py = cx + r * np.cos(th), cy - r * np.sin(th)
    nx, ny = np.sin(th), np.cos(th)          # unit normal, pointing down-right

    # radius
    b.append(line(cx, cy, px, py, color=SLATE, sw=1.4, dash="4 3"))
    b.append(t((cx + px) / 2 + 14 * nx, (cy + py) / 2 + 14 * ny, "r",
               size=10, weight="bold", fill=SLATE))

    # velocity, tangential
    tx, ty = -np.sin(th), -np.cos(th)
    b.append(arrow2(px, py, px + 74 * tx, py + 74 * ty, color=GREEN, sw=2.4))
    b.append(t(px + 74 * tx - 8, py + 74 * ty - 4, "v", size=11, weight="bold", fill=GREEN, anchor="end"))

    # centripetal force, along the radius towards C
    fx, fy = px - 52 * np.cos(th), py + 52 * np.sin(th)
    b.append(arrow2(px, py, fx, fy, color=RED, sw=2.4))
    b.append(t((px + fx) / 2 - 14 * nx, (py + fy) / 2 - 14 * ny, "F", size=11, weight="bold", fill=RED))

    # the body
    b.append(f'<circle cx="{px}" cy="{py}" r="7" fill="{GREEN_MID}" stroke="{GREEN}" stroke-width="1.4"/>')

    b.append(rect(316, 58, 236, 30, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(324, 77, "v is a tangent: it turns as the body turns", size=8.0, fill=NAVY, anchor="start"))
    b.append(rect(316, 98, 236, 30, RED_LIGHT, RED, 6, 1.0))
    b.append(t(324, 117, "F points along the radius, to the centre", size=8.0, fill=NAVY, anchor="start"))
    b.append(rect(316, 138, 236, 46, "#FFFFFF", BORDER, 6, 1.0))
    b.append(t(324, 156, "v = ω r   ·   a = v²/r = ω² r", size=8.6, fill=NAVY, anchor="start"))
    b.append(t(324, 172, "F = m v² / r, always towards C", size=8.0, fill=MUTED, anchor="start"))

    b.append(t(280, 248, "remove the force and the body flies off along the tangent — that is the cut string",
               size=8.2, fill=MUTED))
    write_svg("ch05_circular.svg", svg(w, h, "\n".join(b)))


# ── 5.3 gravitation ──────────────────────────────────────────────────────────
def ch05_gravity():
    fig, ax = plt.subplots(figsize=(6.2, 2.55))
    r = np.linspace(1, 4.6, 400)
    f = 1 / r ** 2
    ax.plot(r, f, color=BLUE, lw=2.4, zorder=3)
    for rr, col in ((1.0, RED), (2.0, GREEN), (3.0, AMBER)):
        ax.plot([rr], [1 / rr ** 2], "o", color=col, ms=5.5, zorder=4)
        ax.vlines(rr, 0, 1 / rr ** 2, color=col, lw=0.9, ls=(0, (3, 3)))
        ax.hlines(1 / rr ** 2, 0, rr, color=col, lw=0.9, ls=(0, (3, 3)))
    ax.annotate("r", xy=(1.0, 1.0), xytext=(1.0, 1.12), fontsize=9, color=RED, ha="center")
    ax.annotate("2r  →  F/4", xy=(2.0, 0.25), xytext=(2.35, 0.62), fontsize=8.8, color=GREEN,
                arrowprops=dict(arrowstyle="->", color=GREEN, lw=1.0))
    ax.annotate("3r  →  F/9", xy=(3.0, 1 / 9), xytext=(3.3, 0.32), fontsize=8.8, color=AMBER,
                arrowprops=dict(arrowstyle="->", color=AMBER, lw=1.0))
    ax.set_xlabel("distance between the centres / r", fontsize=9)
    ax.set_ylabel("gravitational force / F", fontsize=9)
    ax.set_xlim(0, 4.6)
    ax.set_ylim(0, 1.15)
    ax.grid(color="#E2E8F0", lw=0.8)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.tick_params(labelsize=8.4)
    ax.set_title("the inverse-square law: double the distance and the force falls to a quarter",
                 fontsize=9.2, color=NAVY)
    save(fig, "ch05_gravity.svg")


# ── 5.4 simple harmonic motion ───────────────────────────────────────────────
def ch05_shm():
    w, h = 560, 262
    b = [t(280, 20, "SIMPLE HARMONIC MOTION — THE TWO GRAPHS THAT DEFINE IT",
           size=10.6, weight="bold")]

    # panel A: x against t
    x0, x1 = 44.0, 300.0
    ymid, amp = 116.0, 50.0
    b.append(line(x0 - 8, ymid, x1 + 10, ymid, color=SLATE, sw=1.2))
    b.append(line(x0, ymid - amp - 26, x0, ymid + amp + 12, color=SLATE, sw=1.2))
    b.append(t(x0 - 10, ymid - amp - 22, "x", size=9.2, weight="bold", fill=SLATE, anchor="end"))
    b.append(t(x1 + 8, ymid - 8, "t", size=9.2, weight="bold", fill=SLATE, anchor="start"))

    xs = np.linspace(0, 2 * np.pi * 1.55, 260)
    pts = " ".join(f"{x0 + (x1 - x0) * (i / (len(xs) - 1)):.1f},{ymid - amp * np.sin(v):.1f}"
                   for i, v in enumerate(xs))
    b.append(f'<polyline points="{pts}" fill="none" stroke="{GREEN}" stroke-width="2.2"/>')

    peak_t = np.pi / 2
    peakx = x0 + (x1 - x0) * (peak_t / (2 * np.pi * 1.55))
    b.append(line(x0, ymid - amp, peakx, ymid - amp, color=RED, sw=1.0, dash="3 3"))
    b.append(t(peakx - 8, ymid - amp - 6, "A", size=9.8, weight="bold", fill=RED, anchor="end"))

    t2 = peak_t + 2 * np.pi
    px2 = x0 + (x1 - x0) * (t2 / (2 * np.pi * 1.55))
    b.append(line(peakx, ymid + amp + 24, px2, ymid + amp + 24, color=BLUE, sw=1.2))
    for xx in (peakx, px2):
        b.append(line(xx, ymid + amp + 19, xx, ymid + amp + 29, color=BLUE, sw=1.2))
    b.append(t((peakx + px2) / 2, ymid + amp + 42, "T", size=9.8, weight="bold", fill=BLUE))
    b.append(t((x0 + x1) / 2, 246, "fastest through the centre, momentarily at rest at the edges", size=7.8, fill=MUTED))

    # panel B: a against x
    cx0, cx1 = 356.0, 528.0
    cymid = 116.0
    b.append(line(cx0 - 8, cymid, cx1 + 10, cymid, color=SLATE, sw=1.2))
    b.append(line((cx0 + cx1) / 2, cymid - 62, (cx0 + cx1) / 2, cymid + 58, color=SLATE, sw=1.2))
    b.append(t(cx1 + 8, cymid - 8, "x", size=9.2, weight="bold", fill=SLATE, anchor="start"))
    b.append(t((cx0 + cx1) / 2 - 8, cymid - 66, "a", size=9.2, weight="bold", fill=SLATE, anchor="end"))

    xa, ya = cx0 + 10, cymid - 44
    xb, yb = cx1 - 12, cymid + 44
    b.append(f'<line x1="{xa}" y1="{ya}" x2="{xb}" y2="{yb}" stroke="{PURPLE}" stroke-width="2.2"/>')
    b.append(t(xb, yb + 18, "a = −ω²x", size=9.0, weight="bold", fill=PURPLE, anchor="middle"))

    b.append(t((cx0 + cx1) / 2, 246, "acceleration proportional to displacement, and opposite to it",
               size=7.8, fill=MUTED))
    write_svg("ch05_shm.svg", svg(w, h, "\n".join(b)))


# ── 6.1 elasticity ───────────────────────────────────────────────────────────
def ch06_hooke():
    fig, ax = plt.subplots(figsize=(6.2, 2.6))
    x = np.linspace(0, 7, 200)
    ax.plot(x[x <= 4.2], x[x <= 4.2], color=GREEN, lw=2.4, zorder=3)
    ax.plot(x[x >= 4.2], x[x >= 4.2] * 0.65 + 1.47, color=RED, lw=2.2, ls=(0, (5, 3)), zorder=3)
    ax.plot([4.2], [4.2], "o", color=AMBER, ms=6, zorder=4)
    ax.annotate("elastic limit", xy=(4.2, 4.2), xytext=(4.5, 2.9), fontsize=8.8, color=AMBER,
                arrowprops=dict(arrowstyle="->", color=AMBER, lw=1.0))
    ax.annotate("gradient = the spring constant k", xy=(2.4, 2.4), xytext=(1.1, 5.4),
                fontsize=8.8, color=GREEN,
                arrowprops=dict(arrowstyle="->", color=GREEN, lw=1.0))
    ax.annotate("beyond it the wire stays stretched", xy=(6.2, 5.5), xytext=(4.6, 6.4),
                fontsize=8.4, color=RED,
                arrowprops=dict(arrowstyle="->", color=RED, lw=1.0))
    ax.set_xlabel("extension / cm", fontsize=9)
    ax.set_ylabel("force / N", fontsize=9)
    ax.set_xlim(0, 7)
    ax.set_ylim(0, 7.6)
    ax.grid(color="#E2E8F0", lw=0.8)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.tick_params(labelsize=8.4)
    ax.set_title("Hooke's law holds only up to the elastic limit", fontsize=9.2, color=NAVY)
    save(fig, "ch06_hooke.svg")


# ── 6.3 pressure ─────────────────────────────────────────────────────────────
def ch06_hydraulic():
    w, h = 560, 250
    b = [t(280, 20, "A HYDRAULIC PRESS — THE SAME PRESSURE AT EVERY POINT", size=10.8, weight="bold")]

    base_y = 196
    # small piston
    b.append(rect(60, base_y - 96, 42, 96, "#EFF6FF", BLUE, 2, 1.4))
    b.append(rect(58, base_y - 108, 46, 14, BLUE, BLUE, 3, 1.2))
    b.append(arrow2(81, base_y - 158, 81, base_y - 112, color=BLUE, sw=2.2))
    b.append(t(94, base_y - 136, "small force", size=8.0, fill=BLUE, anchor="start"))

    # large piston
    b.append(rect(360, base_y - 96, 130, 96, "#EFF6FF", BLUE, 2, 1.4))
    b.append(rect(356, base_y - 108, 138, 14, BLUE, BLUE, 3, 1.2))
    b.append(arrow2(425, base_y - 150, 425, base_y - 112, color=GREEN, sw=2.2))
    b.append(t(438, base_y - 136, "large force", size=8.0, fill=GREEN, anchor="start"))

    # connecting pipe
    b.append(rect(102, base_y - 30, 258, 30, "#EFF6FF", BLUE, 2, 1.2))

    b.append(t(81, base_y + 18, "area A₁", size=8.6, weight="bold", fill=BLUE))
    b.append(t(425, base_y + 18, "area A₂", size=8.6, weight="bold", fill=GREEN))
    b.append(t(280, 232, "p = F₁/A₁ = F₂/A₂, so F₂ = F₁ × A₂/A₁ — the force is multiplied, the work is not",
               size=8.4, fill=MUTED))
    write_svg("ch06_hydraulic.svg", svg(w, h, "\n".join(b)))


# ── 6.4 Archimedes ───────────────────────────────────────────────────────────
def ch06_archimedes():
    w, h = 560, 258
    b = [t(280, 20, "ARCHIMEDES' PRINCIPLE — THE UPTHRUST IS THE WEIGHT OF THE FLUID PUSHED ASIDE",
           size=9.8, weight="bold")]

    # beaker: walls and base, with water inside
    left, right, top, bot = 96.0, 306.0, 88.0, 234.0
    surf = 148.0
    b.append(rect(left, surf, right - left, bot - surf, "#DBEAFE", "#DBEAFE", 0, 0.5))
    b.append(line(left, surf, right, surf, color=BLUE, sw=1.6))
    b.append(path(f"M {left} {top} L {left} {bot} L {right} {bot} L {right} {top}", stroke=SLATE, sw=1.8))
    b.append(t(left + 4, surf - 6, "water surface", size=7.6, fill=BLUE, anchor="start"))

    # block, partly submerged
    bx, by, bw, bh = 168.0, 112.0, 66.0, 70.0
    b.append(rect(bx, by, bw, bh, GREEN_MID, GREEN, 4, 1.4))
    b.append(t(bx + bw / 2 - 2, by + 30, "block", size=8.0, weight="bold", fill=GREEN))

    # forces
    cx = bx + bw / 2
    b.append(arrow2(cx, by + 6, cx, 64, color=RED, sw=2.2))
    b.append(t(cx + 10, 74, "upthrust U", size=8.6, weight="bold", fill=RED, anchor="start"))
    b.append(arrow2(cx, by + bh - 6, cx, 222, color=NAVY, sw=2.2))
    b.append(t(cx + 10, 214, "weight W", size=8.6, weight="bold", fill=NAVY, anchor="start"))

    # notes
    b.append(rect(332, 62, 220, 42, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(340, 79, "U = weight of fluid displaced", size=8.2, fill=NAVY, anchor="start"))
    b.append(t(340, 94, "= ρ × V × g", size=8.2, fill=NAVY, anchor="start"))
    b.append(rect(332, 112, 220, 58, "#FFFFFF", BORDER, 6, 1.0))
    b.append(t(340, 129, "floats when U = W", size=8.2, fill=NAVY, anchor="start"))
    b.append(t(340, 144, "sinks when W > the upthrust", size=8.2, fill=MUTED, anchor="start"))
    b.append(t(340, 159, "apparent weight = W − U", size=8.2, fill=MUTED, anchor="start"))

    b.append(t(280, 250, "a body floats when it can displace its own weight of the fluid", size=8.2, fill=MUTED))
    write_svg("ch06_archimedes.svg", svg(w, h, "\n".join(b)))


# ── 6.6 viscosity ────────────────────────────────────────────────────────────
def ch06_viscosity():
    w, h = 560, 250
    b = [t(280, 20, "TERMINAL VELOCITY — WHEN THE DRAG CATCHES UP WITH THE WEIGHT", size=10.8, weight="bold")]

    b.append(rect(212, 52, 136, 178, "#FEF3C7", AMBER, 5, 1.3))
    b.append(t(280, 212, "viscous fluid", size=8.0, fill=AMBER))

    # ball with force arrows
    b.append(f'<circle cx="280" cy="120" r="13" fill="{GREEN_MID}" stroke="{GREEN}" stroke-width="1.4"/>')
    b.append(arrow2(280, 138, 280, 176, color=NAVY, sw=2.0))
    b.append(t(292, 166, "W", size=9.4, weight="bold", fill=NAVY, anchor="start"))
    b.append(arrow2(280, 102, 280, 72, color=RED, sw=2.0))
    b.append(t(292, 90, "drag", size=9.4, weight="bold", fill=RED, anchor="start"))

    b.append(rect(370, 60, 182, 92, "#FFFFFF", BORDER, 6, 1.0))
    b.append(t(378, 78, "at first W > drag,", size=8.2, fill=NAVY, anchor="start"))
    b.append(t(378, 93, "so the ball accelerates;", size=8.2, fill=NAVY, anchor="start"))
    b.append(t(378, 108, "the drag grows with speed", size=8.2, fill=NAVY, anchor="start"))
    b.append(t(378, 123, "until drag = W.", size=8.2, fill=NAVY, anchor="start"))
    b.append(t(378, 138, "Then v is constant.", size=8.2, weight="bold", fill=GREEN, anchor="start"))

    b.append(t(280, 242, "a parachute works by making the terminal velocity small", size=8.2, fill=MUTED))
    write_svg("ch06_viscosity.svg", svg(w, h, "\n".join(b)))


def recap_ch05():
    recap_card("recap_ch05.svg", "Chapter 5 recap card — circular motion, gravitation and SHM", [
        ("Circular motion", "v = ωr, and a body going round at constant speed is accelerating, because its "
                            "velocity keeps changing direction. The acceleration is v²/r, towards the centre."),
        ("Centripetal force", "F = m v²/r = m ω² r, always towards the centre. On a bend it is the friction; "
                              "for a satellite it is gravity; for a stone on a string it is the tension."),
        ("Gravitation", "F = G m₁ m₂ / r², an inverse square. g = G M / r² at the surface, and a satellite "
                        "orbits at v = √(G M / r)."),
        ("Simple harmonic motion", "a = −ω²x, so T = 2π/ω. A pendulum has T = 2π√(l/g) and a spring "
                                   "T = 2π√(m/k); the speed is greatest at the centre and zero at the ends."),
    ])


def recap_ch06():
    recap_card("recap_ch06.svg", "Chapter 6 recap card — properties of matter", [
        ("Elasticity", "Hooke's law F = k x up to the elastic limit; stress = F/A, strain = e/L, and "
                       "Young modulus E = stress/strain."),
        ("Density", "ρ = m/V in kg m⁻³, and relative density is the ratio of a substance's density to that "
                    "of water — the same number as its density in g cm⁻³."),
        ("Pressure", "p = F/A, and in a fluid p = ρ g h at depth h. A hydraulic press multiplies force "
                     "through the ratio of the areas, never the work."),
        ("Flotation", "Upthrust = weight of fluid displaced. A body floats when it displaces its own weight, "
                      "and surface tension, capillarity and viscosity are the three fluid effects left."),
    ])
