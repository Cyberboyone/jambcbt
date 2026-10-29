"""Chapter 8–10 figures and the recap cards."""

from __future__ import annotations

import math

import numpy as np
import matplotlib.pyplot as plt
from matplotlib.patches import Arc, Circle, Polygon, Wedge, Rectangle, Ellipse, FancyArrowPatch

from common import (GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED,
                    LIGHT_BG, BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT,
                    PURPLE, PURPLE_LIGHT, save, svg, rect, t, write_svg)
from helpers import (canvas, seg, poly, dot, label, angle_arc, right_angle, ticks,
                     title, note, tri_panel)


# ═══════════════════════════════════════════════════════════════════ chapter 8
def ch08_line_features():
    fig, ax = plt.subplots(figsize=(5.6, 3.6))
    x = np.linspace(-1, 6, 2)
    y = 0.75 * x - 1.5
    ax.plot(x, y, color=GREEN, lw=2.0, label="y = 0.75x − 1.5")
    ax.axhline(0, color=SLATE, lw=1.0)
    ax.axvline(0, color=SLATE, lw=1.0)
    ax.set_xlim(-1, 6)
    ax.set_ylim(-2.5, 3.5)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    # gradient triangle
    ax.plot([2, 4], [0.75 * 2 - 1.5, 0.75 * 2 - 1.5], color=RED, lw=1.2)
    ax.plot([4, 4], [0.75 * 2 - 1.5, 0.75 * 4 - 1.5], color=RED, lw=1.2)
    ax.text(3, 0.75 * 2 - 1.5 - 0.28, "Δx = 2", color=RED, fontsize=8.6, ha="center")
    ax.text(4.12, 0.6, "Δy = 1.5", color=RED, fontsize=8.6)
    ax.text(3.0, 2.35, "gradient m = Δy/Δx = 0.75", color=RED, fontsize=9, fontweight="bold")
    ax.scatter([2], [-1.5 + 0.75 * 2], color=NAVY, s=22, zorder=5)
    ax.annotate("y-intercept (0, −1.5)", xy=(0, -1.5), xytext=(0.35, -2.25),
                fontsize=8.4, color=NAVY, arrowprops=dict(arrowstyle="->", color=NAVY, lw=0.9))
    ax.annotate("x-intercept (2, 0)", xy=(2, 0), xytext=(2.3, 0.35),
                fontsize=8.4, color=NAVY, arrowprops=dict(arrowstyle="->", color=NAVY, lw=0.9))
    ax.set_xlabel("x", fontsize=9)
    ax.set_ylabel("y", fontsize=9)
    ax.tick_params(labelsize=8)
    fig.tight_layout()
    save(fig, "ch08_line_features.svg")


def ch08_distance_midpoint():
    fig, ax = canvas(5.4, 3.2, xlim=(-0.8, 6.2), ylim=(-0.8, 4.6))
    P, Q = (1.0, 1.0), (5.0, 3.6)
    seg(ax, P, Q, GREEN, 2.0)
    seg(ax, P, (Q[0], P[1]), MUTED, 1.0, "--")
    seg(ax, (Q[0], P[1]), Q, MUTED, 1.0, "--")
    dot(ax, P, NAVY, 18); dot(ax, Q, NAVY, 18)
    M = ((P[0] + Q[0]) / 2, (P[1] + Q[1]) / 2)
    dot(ax, M, RED, 18)
    label(ax, P, "P(x₁, y₁)", dx=0.55, dy=-0.28, size=9)
    label(ax, Q, "Q(x₂, y₂)", dx=0.1, dy=0.3, size=9)
    label(ax, M, "M", dx=-0.28, dy=0.06, size=9, color=RED)
    label(ax, ((P[0] + Q[0]) / 2, P[1] - 0.25), "x₂ − x₁", size=8.6)
    label(ax, (Q[0] + 0.3, (P[1] + Q[1]) / 2), "y₂ − y₁", size=8.6)
    note(ax, "PQ = √[(x₂ − x₁)² + (y₂ − y₁)²]        M = ((x₁ + x₂)/2, (y₁ + y₂)/2)")
    save(fig, "ch08_distance_midpoint.svg")


def ch08_parallel_perp():
    fig, ax = plt.subplots(figsize=(5.2, 3.3))
    x = np.linspace(-1, 5, 2)
    ax.plot(x, 2 * x - 1, color=GREEN, lw=1.9)
    ax.plot(x, 2 * x + 2, color=GREEN, lw=1.9, ls="--")
    ax.plot(x, -0.5 * x + 3, color=RED, lw=1.9)
    ax.axhline(0, color=SLATE, lw=1.0)
    ax.axvline(0, color=SLATE, lw=1.0)
    ax.set_xlim(-1, 5)
    ax.set_ylim(-2.5, 5.5)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.text(3.3, 2 * 3.3 + 2.1, "m = 2", color=GREEN, fontsize=9, fontweight="bold")
    ax.text(3.3, 2 * 3.3 - 1.1, "m = 2", color=GREEN, fontsize=9, fontweight="bold")
    ax.text(3.55, -0.5 * 3.55 + 2.6, "m = −½", color=RED, fontsize=9, fontweight="bold")
    ax.text(0.1, 5.0, "parallel: m₁ = m₂        perpendicular: m₁ × m₂ = −1",
            fontsize=9, color=NAVY, fontweight="bold")
    ax.tick_params(labelsize=8)
    fig.tight_layout()
    save(fig, "ch08_parallel_perp.svg")


def ch08_circle_equation():
    fig, ax = plt.subplots(figsize=(5.0, 3.6))
    th = np.linspace(0, 2 * np.pi, 300)
    cx, cy, r = 2.0, 1.5, 2.0
    ax.plot(cx + r * np.cos(th), cy + r * np.sin(th), color=GREEN, lw=2.0)
    ax.plot([cx, cx + r], [cy, cy], color=RED, lw=1.3)
    ax.scatter([cx], [cy], color=NAVY, s=26, zorder=5)
    ax.text(cx + r / 2, cy + 0.12, "r", color=RED, fontsize=9, ha="center")
    ax.text(cx - 0.15, cy - 0.28, "C(h, k)", fontsize=8.8, color=NAVY)
    ax.axhline(0, color=SLATE, lw=1.0)
    ax.axvline(0, color=SLATE, lw=1.0)
    ax.set_xlim(-1, 5.4)
    ax.set_ylim(-1.2, 4.3)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.text(0.0, 3.9, "(x − h)² + (y − k)² = r²", fontsize=10, fontweight="bold", color=GREEN)
    ax.text(0.0, -0.95, "x² + y² + 2gx + 2fy + c = 0  →  centre (−g, −f),  r = √(g² + f² − c)",
            fontsize=7.8, color=NAVY)
    ax.tick_params(labelsize=8)
    fig.tight_layout()
    save(fig, "ch08_circle_equation.svg")


# ═══════════════════════════════════════════════════════════════════ chapter 9
def ch09_sohcahtoa():
    fig, ax = canvas(5.6, 3.2, xlim=(-0.6, 6.0), ylim=(-0.6, 3.6))
    A, B, C = (0.8, 0.6), (4.8, 0.6), (4.8, 3.0)
    poly(ax, [A, B, C], fill=GREEN_LIGHT, edge=NAVY, lw=1.8)
    right_angle(ax, B, A, C, 0.26)
    angle_arc(ax, A, B, C, 0.55, RED, 1.5, "θ", 0.8, 10)
    label(ax, A, "A", dx=-0.22, dy=-0.2)
    label(ax, B, "B", dx=0.0, dy=-0.26)
    label(ax, C, "C", dx=0.24, dy=0.12)
    label(ax, ((A[0] + B[0]) / 2, 0.34), "adjacent", size=8.8, color=GREEN)
    label(ax, (5.05, 1.8), "opposite", size=8.8, color=AMBER)
    label(ax, (2.9, 1.9), "hypotenuse", size=8.8, color=BLUE)
    ax.text(0.0, 3.35, "sin θ = O/H      cos θ = A/H      tan θ = O/A",
            fontsize=10, color=NAVY, fontweight="bold")
    note(ax, "SOH  CAH  TOA — the three ratios that unlock every right-triangle question")
    save(fig, "ch09_sohcahtoa.svg")


def ch09_special_triangles():
    fig, axes = tri_panel(w=7.2, h=2.8, n=2)
    ax = axes[0]
    A, B, C = (0, 0), (2.0, 0), (0, 2.0)
    poly(ax, [A, B, C], fill=GREEN_LIGHT, edge=NAVY, lw=1.6)
    right_angle(ax, A, C, B, 0.24)
    angle_arc(ax, B, A, C, 0.3, RED, 1.3, "45°", 0.5, 8.4)
    angle_arc(ax, C, A, B, 0.3, RED, 1.3, "45°", 0.5, 8.4)
    label(ax, (1.0, -0.22), "1", size=9)
    label(ax, (-0.22, 1.0), "1", size=9)
    label(ax, (1.15, 1.15), "√2", size=9)
    ax.set_title("45° – 45° – 90°", fontsize=9, fontweight="bold")
    ax.set_xlim(-0.5, 2.6); ax.set_ylim(-0.5, 2.5)

    ax = axes[1]
    A, B, C = (0, 0), (1.9, 0), (0, 1.1)
    poly(ax, [A, B, C], fill=BLUE_LIGHT, edge=NAVY, lw=1.6)
    right_angle(ax, A, B, C, 0.22)
    angle_arc(ax, B, A, C, 0.4, RED, 1.3, "60°", 0.62, 8.4)
    angle_arc(ax, C, A, B, 0.34, RED, 1.3, "30°", 0.56, 8.4)
    label(ax, (0.95, -0.22), "√3", size=9)
    label(ax, (-0.24, 0.55), "1", size=9)
    label(ax, (1.1, 0.65), "2", size=9)
    ax.set_title("30° – 60° – 90°", fontsize=9, fontweight="bold")
    ax.set_xlim(-0.5, 2.3); ax.set_ylim(-0.5, 1.7)
    fig.tight_layout()
    save(fig, "ch09_special_triangles.svg")


def ch09_unit_circle_cast():
    fig, ax = canvas(5.6, 4.0, xlim=(-1.9, 1.9), ylim=(-1.7, 1.7))
    ax.add_patch(Circle((0, 0), 1.2, facecolor="none", edgecolor=NAVY, lw=1.6))
    ax.annotate("", xy=(1.75, 0), xytext=(-1.75, 0), arrowprops=dict(arrowstyle="->", color=SLATE, lw=1.0))
    ax.annotate("", xy=(0, 1.5), xytext=(0, -1.5), arrowprops=dict(arrowstyle="->", color=SLATE, lw=1.0))
    quads = [("ALL +", 0.62, 0.72, GREEN), ("SIN +", -0.62, 0.72, BLUE),
             ("TAN +", -0.62, -0.78, AMBER), ("COS +", 0.62, -0.78, PURPLE)]
    for txt, x, y, col in quads:
        ax.text(x, y, txt, fontsize=11, color=col, fontweight="bold", ha="center")
        ax.text(x, y - 0.28, {"ALL +": "all positive", "SIN +": "sin only", "TAN +": "tan only",
                              "COS +": "cos only"}[txt], fontsize=7.4, color=col, ha="center")
    for ang in (0, 90, 180, 270):
        a = math.radians(ang)
        dot(ax, (1.2 * math.cos(a), 1.2 * math.sin(a)), NAVY, 12)
    ax.text(1.3, 0.1, "0°/360°", fontsize=7.6, color=NAVY)
    ax.text(-0.05, 1.35, "90°", fontsize=7.6, color=NAVY, ha="right")
    ax.text(-1.32, 0.1, "180°", fontsize=7.6, color=NAVY)
    ax.text(0.05, -1.42, "270°", fontsize=7.6, color=NAVY)
    save(fig, "ch09_unit_circle_cast.svg")


def ch09_sine_graph():
    fig, ax = plt.subplots(figsize=(6.6, 2.6))
    x = np.linspace(0, 360, 500)
    ax.plot(x, np.sin(np.radians(x)), color=GREEN, lw=2.0)
    ax.axhline(0, color=SLATE, lw=1.0)
    ax.set_xticks([0, 90, 180, 270, 360])
    ax.set_yticks([-1, 0, 1])
    ax.set_xlim(0, 360)
    ax.set_ylim(-1.35, 1.35)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    for xx, yy, lab in ((90, 1, "max 1"), (270, -1, "min −1"), (180, 0, "180°"), (0, 0, "0°")):
        ax.text(xx, yy + (0.14 if yy >= 0 else -0.22), lab, fontsize=7.8, color=NAVY, ha="center")
    ax.set_title("y = sin x:  period 360°, amplitude 1", fontsize=9.4, color=NAVY, fontweight="bold")
    ax.tick_params(labelsize=7.6)
    fig.tight_layout()
    save(fig, "ch09_sine_graph.svg")


def ch09_cosine_graph():
    fig, ax = plt.subplots(figsize=(6.6, 2.6))
    x = np.linspace(0, 360, 500)
    ax.plot(x, np.cos(np.radians(x)), color=BLUE, lw=2.0)
    ax.plot(x, np.sin(np.radians(x)), color=GREEN, lw=1.2, ls="--")
    ax.axhline(0, color=SLATE, lw=1.0)
    ax.set_xticks([0, 90, 180, 270, 360])
    ax.set_yticks([-1, 0, 1])
    ax.set_xlim(0, 360)
    ax.set_ylim(-1.35, 1.35)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.text(6, 1.08, "cos", color=BLUE, fontsize=9, fontweight="bold")
    ax.text(300, 0.55, "sin (dashed)", color=GREEN, fontsize=8)
    ax.set_title("y = cos x: starts at 1, crosses zero at 90°", fontsize=9.4, color=NAVY, fontweight="bold")
    ax.tick_params(labelsize=7.6)
    fig.tight_layout()
    save(fig, "ch09_cosine_graph.svg")


# ══════════════════════════════════════════════════════════════════ chapter 10
def ch10_bearings():
    fig, ax = canvas(5.6, 4.0, xlim=(-1.6, 3.6), ylim=(-1.4, 3.6))
    O = (0.0, 0.0)
    ax.annotate("", xy=(0, 3.1), xytext=O, arrowprops=dict(arrowstyle="->", color=NAVY, lw=1.4))
    ax.annotate("", xy=(3.1, 0), xytext=O, arrowprops=dict(arrowstyle="->", color=MUTED, lw=1.0, ls=":"))
    label(ax, (0, 3.25), "N", size=10)
    label(ax, (3.25, 0), "E", size=9, color=MUTED)
    # bearing 060
    a = math.radians(60)
    P = (2.4 * math.sin(a), 2.4 * math.cos(a))
    seg(ax, O, P, GREEN, 2.0)
    dot(ax, P, GREEN, 16)
    label(ax, P, "P", dx=0.22, dy=0.16, color=GREEN)
    angle_arc(ax, O, (0, 3.0), P, 1.05, RED, 1.6, "060°", 1.35, 9)
    # bearing 150 to Q
    a2 = math.radians(150)
    Q = (2.0 * math.sin(a2), 2.0 * math.cos(a2))
    seg(ax, O, Q, BLUE, 2.0)
    dot(ax, Q, BLUE, 16)
    label(ax, Q, "Q", dx=-0.24, dy=0.14, color=BLUE)
    angle_arc(ax, O, (0, 3.0), Q, 1.55, AMBER, 1.6, "150°", 1.9, 9)
    note(ax, "A bearing is measured clockwise from North and written with three digits: 060°, 150°, 245°")
    save(fig, "ch10_bearings.svg")


def ch10_elevation():
    fig, ax = canvas(6.0, 3.2, xlim=(-0.5, 6.4), ylim=(-0.6, 4.2))
    A, B = (0.6, 0.5), (5.6, 0.5)
    seg(ax, A, B, NAVY, 1.6)
    T = (5.6, 3.4)
    seg(ax, A, T, GREEN, 1.8)
    seg(ax, B, T, NAVY, 1.8)
    right_angle(ax, B, A, T, 0.24)
    angle_arc(ax, A, B, T, 0.62, RED, 1.5, "elevation", 0.95, 8.4)
    label(ax, ((A[0] + B[0]) / 2, 0.24), "horizontal distance", size=8.4)
    label(ax, (5.78, 2.0), "height h", size=8.4, color=GREEN, ha="left")
    # depression from T
    seg(ax, T, (T[0] - 1.6, T[1]), MUTED, 1.0, ":")
    angle_arc(ax, T, (T[0] - 1.0, T[1]), A, 0.55, BLUE, 1.3, "depression", 0.9, 8.0)
    ax.text(0.2, 3.95, "tan(elevation) = h / horizontal distance", fontsize=9, color=NAVY, fontweight="bold")
    save(fig, "ch10_elevation.svg")


def ch10_sine_rule():
    fig, ax = canvas(5.4, 3.2, xlim=(-0.6, 6.0), ylim=(-0.8, 3.6))
    A, B, C = (0.6, 0.5), (5.2, 0.5), (3.6, 3.1)
    poly(ax, [A, B, C], fill=GREEN_LIGHT, edge=NAVY, lw=1.7)
    for p, s, dx, dy in ((A, "A", -0.25, -0.15), (B, "B", 0.25, -0.15), (C, "C", 0.0, 0.28)):
        dot(ax, p, NAVY, 14)
        label(ax, p, s, dx=dx, dy=dy, size=9.5)
    angle_arc(ax, A, B, C, 0.5, RED, 1.2, "A", 0.75, 8.4)
    angle_arc(ax, B, A, C, 0.5, RED, 1.2, "B", 0.75, 8.4)
    angle_arc(ax, C, A, B, 0.42, RED, 1.2, "C", 0.64, 8.4)
    label(ax, (2.9, 0.22), "c", size=9.5, color=GREEN)
    label(ax, (4.5, 1.9), "a", size=9.5, color=GREEN)
    label(ax, (2.0, 1.9), "b", size=9.5, color=GREEN)
    ax.text(0.0, 3.4, "a / sin A = b / sin B = c / sin C", fontsize=9.6, color=NAVY, fontweight="bold")
    save(fig, "ch10_sine_rule.svg")


def ch10_cosine_rule():
    fig, ax = canvas(5.4, 3.2, xlim=(-0.6, 6.0), ylim=(-0.8, 3.6))
    A, B, C = (0.6, 0.5), (5.2, 0.5), (2.4, 2.9)
    poly(ax, [A, B, C], fill=BLUE_LIGHT, edge=NAVY, lw=1.7)
    angle_arc(ax, A, B, C, 0.62, RED, 1.4, "θ", 0.9, 9.5)
    for p, s, dx, dy in ((A, "A", -0.25, -0.15), (B, "B", 0.25, -0.15), (C, "C", 0.0, 0.28)):
        dot(ax, p, NAVY, 14)
        label(ax, p, s, dx=dx, dy=dy, size=9.5)
    label(ax, (2.9, 0.22), "b", size=9.5, color=GREEN)
    label(ax, (1.35, 1.85), "c", size=9.5, color=GREEN)
    label(ax, (3.95, 1.85), "a", size=9.5, color=GREEN)
    ax.text(0.0, 3.4, "a² = b² + c² − 2bc cos A", fontsize=9.8, color=NAVY, fontweight="bold")
    save(fig, "ch10_cosine_rule.svg")


# ═══════════════════════════════════════════════════════════════════ recaps
RECAPS = {
    1: ("Angles & Polygons", ["Angle sum of n-gon = (n − 2)180°",
                              "Exterior angles always total 360°",
                              "Parallel lines: alternate equal, co-interior 180°"]),
    2: ("Triangles", ["A + B + C = 180°",
                      "Congruence: SSS, SAS, ASA, RHS",
                      "Similar: equal angles, sides in ratio k, areas k²"]),
    3: ("Circle Theorems", ["Angle at centre = 2 × angle at edge",
                            "Angle in semicircle = 90°",
                            "Tangent ⟂ radius; alternate segment"]),
    4: ("Construction & Loci", ["Perpendicular bisector = equal arcs",
                                "Angle bisector = equal arcs",
                                "Locus: circle, parallels, bisectors"]),
    5: ("Plane Mensuration", ["A = ½bh, ½(a+b)h, ½d₁d₂",
                              "Sector: (θ/360)πr², arc (θ/360)2πr",
                              "Segment = sector − triangle"]),
    6: ("Solids", ["Prism/cylinder: V = base × length",
                   "Cone/pyramid: V = ⅓ base × height",
                   "Sphere: V = 4/3 πr³, S.A. = 4πr²"]),
    7: ("Longitude & Latitude", ["1° of latitude = 111 km (approx.)",
                                 "Small circle radius = R cos(lat)",
                                 "Longitude difference × 4 min = time difference"]),
    8: ("Coordinate Geometry", ["m = (y₂ − y₁)/(x₂ − x₁)",
                                "Parallel m₁ = m₂; perpendicular m₁m₂ = −1",
                                "Circle: (x − h)² + (y − k)² = r²"]),
    9: ("Trigonometric Ratios", ["SOH CAH TOA",
                                 "sin²θ + cos²θ = 1; tan θ = sin θ/cos θ",
                                 "Special angles 30°, 45°, 60°"]),
    10: ("Bearings & Triangles", ["Bearing: clockwise from North, 3 digits",
                                  "Sine rule: a/sin A = b/sin B",
                                  "Cosine rule: a² = b² + c² − 2bc cos A"]),
}


def recap_cards():
    for n, (title_, bullets) in RECAPS.items():
        w, h = 320, 150
        b = []
        b.append(f'<rect x="0" y="0" width="{w}" height="{h}" rx="9" fill="#FFFFFF" stroke="{BORDER}" stroke-width="1.2"/>')
        b.append(f'<rect x="0" y="0" width="{w}" height="30" rx="9" fill="{NAVY}"/>')
        b.append(f'<rect x="0" y="21" width="{w}" height="9" fill="{NAVY}"/>')
        b.append(t(w / 2, 20, f"{n}. {title_}", size=10.5, fill="#FFFFFF", weight="bold"))
        for i, line in enumerate(bullets):
            b.append(f'<circle cx="16" cy="{48 + i * 30}" r="3.2" fill="{GREEN}"/>')
            b.append(t(28, 52 + i * 30, line, size=7.6, fill="#334155", anchor="start"))
        write_svg(f"recap_ch{n:02d}.svg", svg(w, h, "\n".join(b)))
