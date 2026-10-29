"""Chapter 5–7 figures: plane mensuration, solids, longitude and latitude."""

from __future__ import annotations

import math

import numpy as np
import matplotlib.pyplot as plt
from matplotlib.patches import Arc, Circle, Polygon, Wedge, Rectangle, Ellipse, FancyArrow

from common import (GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED,
                    LIGHT_BG, BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT,
                    PURPLE, PURPLE_LIGHT, save, svg, rect, t, write_svg)
from helpers import (canvas, seg, poly, dot, label, angle_arc, right_angle, ticks,
                     title, note, tri_panel)


# ═══════════════════════════════════════════════════════════════════ chapter 5
def ch05_area_shapes():
    fig, axes = tri_panel(w=7.2, h=2.5, n=4)
    # rectangle
    ax = axes[0]
    ax.add_patch(Rectangle((0, 0), 2.4, 1.5, facecolor=GREEN_LIGHT, edgecolor=NAVY, lw=1.6))
    label(ax, (1.2, -0.22), "b", size=9)
    label(ax, (-0.22, 0.75), "h", size=9)
    ax.set_title("Rectangle\nA = bh", fontsize=8.6, fontweight="bold")
    ax.set_xlim(-0.5, 2.9); ax.set_ylim(-0.5, 2.0)

    # parallelogram
    ax = axes[1]
    pts = [(0.3, 0), (2.4, 0), (2.9, 1.4), (0.8, 1.4)]
    poly(ax, pts, fill=BLUE_LIGHT, edge=NAVY, lw=1.6)
    seg(ax, (0.8, 0), (0.8, 1.4), RED, 1.2, "--")
    right_angle(ax, (0.8, 0), (2.4, 0), (0.8, 1.4), 0.16, color=RED)
    label(ax, (1.5, -0.22), "b", size=9)
    label(ax, (0.62, 0.7), "h", size=9, color=RED)
    ax.set_title("Parallelogram\nA = bh", fontsize=8.6, fontweight="bold")
    ax.set_xlim(-0.4, 3.3); ax.set_ylim(-0.5, 1.9)

    # trapezium
    ax = axes[2]
    pts = [(0, 0), (2.7, 0), (2.2, 1.4), (0.6, 1.4)]
    poly(ax, pts, fill=AMBER_LIGHT, edge=NAVY, lw=1.6)
    seg(ax, (0.6, 0), (0.6, 1.4), RED, 1.2, "--")
    label(ax, (1.35, -0.22), "b", size=9)
    label(ax, (1.4, 1.62), "a", size=9)
    label(ax, (0.44, 0.7), "h", size=9, color=RED)
    ax.set_title("Trapezium\nA = ½(a + b)h", fontsize=8.4, fontweight="bold")
    ax.set_xlim(-0.3, 3.0); ax.set_ylim(-0.5, 2.0)

    # kite / rhombus
    ax = axes[3]
    pts = [(0, 1.5), (1.1, 0.85), (0, -0.2), (-1.1, 0.85)]
    poly(ax, pts, fill=PURPLE_LIGHT, edge=NAVY, lw=1.6)
    seg(ax, (0, 1.5), (0, -0.2), MUTED, 1.0, "--")
    seg(ax, (-1.1, 0.85), (1.1, 0.85), MUTED, 1.0, "--")
    right_angle(ax, (0, 0.85), (1.1, 0.85), (0, 1.5), 0.16)
    label(ax, (0.12, 1.2), "d₁", size=8.6, ha="left")
    label(ax, (0.55, 0.98), "d₂", size=8.6)
    ax.set_title("Rhombus / kite\nA = ½ d₁ d₂", fontsize=8.6, fontweight="bold")
    ax.set_xlim(-1.5, 1.5); ax.set_ylim(-0.5, 1.9)
    fig.tight_layout()
    save(fig, "ch05_area_shapes.svg")


def ch05_circle_measures():
    fig, ax = canvas(6.0, 3.6, xlim=(-2.6, 2.6), ylim=(-2.0, 2.0))
    O = (0, 0)
    R = 1.7
    ax.add_patch(Circle(O, R, facecolor="none", edgecolor=BORDER, lw=1.2, ls=":"))
    ax.add_patch(Wedge(O, R, 0, 130, facecolor=GREEN_MID, alpha=0.75, edgecolor=NAVY, lw=1.3))
    ax.add_patch(Arc(O, 2 * R + 0.14, 2 * R + 0.14, theta1=0, theta2=130, color=RED, lw=3.0))
    label(ax, (1.25, 1.45), "arc  =  (θ/360) × 2πr", size=9, color=RED)
    label(ax, (0.55, 0.42), "θ", size=10, color=GREEN)
    angle_arc(ax, O, (R, 0), (R * math.cos(math.radians(130)), R * math.sin(math.radians(130))), 0.55, GREEN, 1.4)
    seg(ax, O, (R, 0), NAVY, 1.3)
    seg(ax, O, (R * math.cos(math.radians(130)), R * math.sin(math.radians(130))), NAVY, 1.3)
    label(ax, (0.9, -0.28), "r", size=9)
    label(ax, (-0.55, 1.95), "sector area = (θ/360) × πr²", size=9, color=GREEN)
    label(ax, (0, -1.95), "circumference = 2πr      area of circle = πr²", size=9, color=NAVY)
    save(fig, "ch05_circle_measures.svg")


def ch05_composite_area():
    fig, ax = canvas(6.0, 3.4, xlim=(-0.5, 7.0), ylim=(-0.6, 4.4))
    # L-shape: outer 6 x 4 minus 3.5 x 2
    outer = [(0, 0), (6, 0), (6, 4), (3.5, 4), (3.5, 2), (0, 2)]
    poly(ax, outer, fill=GREEN_LIGHT, edge=NAVY, lw=1.8)
    seg(ax, (0, 2), (3.5, 2), NAVY, 1.2, "--")
    seg(ax, (3.5, 2), (3.5, 4), NAVY, 1.2, "--")
    # dimensions
    ax.annotate("", xy=(0, -0.3), xytext=(6, -0.3), arrowprops=dict(arrowstyle="<->", color=SLATE, lw=1.0))
    label(ax, (3, -0.55), "6 m", size=9)
    ax.annotate("", xy=(-0.3, 0), xytext=(-0.3, 4), arrowprops=dict(arrowstyle="<->", color=SLATE, lw=1.0))
    label(ax, (-0.75, 2), "4 m", size=9)
    ax.annotate("", xy=(3.5, 4.3), xytext=(6, 4.3), arrowprops=dict(arrowstyle="<->", color=SLATE, lw=1.0))
    label(ax, (4.75, 4.55), "2.5 m", size=9)
    ax.annotate("", xy=(3.7, 2.2), xytext=(3.7, 4), arrowprops=dict(arrowstyle="<->", color=SLATE, lw=1.0))
    label(ax, (4.05, 3.1), "2 m", size=9)
    label(ax, (1.7, 1.0), "A₁ = 6 × 2\n= 12 m²", size=9, color=GREEN)
    label(ax, (4.8, 3.0), "A₂ = 2.5 × 2\n= 5 m²", size=9, color=GREEN)
    note(ax, "Split a composite shape into rectangles, or subtract the missing rectangle from the enclosing one — never guess the area")
    save(fig, "ch05_composite_area.svg")


# ═══════════════════════════════════════════════════════════════════ chapter 6
def _cuboid(ax, x, y, w, h, d, fill=GREEN_LIGHT, edge=NAVY):
    front = [(x, y), (x + w, y), (x + w, y + h), (x, y + h)]
    poly(ax, front, fill=fill, edge=edge, lw=1.6)
    off = np.array([d, d])
    back = [tuple(np.array(p) + off) for p in front]
    poly(ax, back, fill="none", edge=edge, lw=1.2)
    for p, q in zip(front, back):
        seg(ax, p, q, edge, 1.0)


def ch06_prism_cylinder():
    fig, axes = tri_panel(w=7.2, h=3.0, n=2)
    ax = axes[0]
    _cuboid(ax, 0, 0, 2.2, 1.4, 0.6, fill=GREEN_LIGHT)
    label(ax, (1.1, -0.25), "b", size=9)
    label(ax, (-0.25, 0.7), "h", size=9)
    label(ax, (2.34, 0.75), "l", size=9, color=GREEN)
    ax.set_title("Cuboid:  V = lbh\nS.A. = 2(lb + lh + bh)", fontsize=8.6, fontweight="bold")
    ax.set_xlim(-0.6, 3.6); ax.set_ylim(-0.6, 2.5)

    ax = axes[1]
    ax.add_patch(Rectangle((0, 0), 1.6, 2.0, facecolor=BLUE_LIGHT, edgecolor=NAVY, lw=1.5))
    ax.add_patch(Ellipse((0.8, 2.0), 1.6, 0.44, facecolor="white", edgecolor=NAVY, lw=1.4))
    ax.add_patch(Arc((0.8, 0), 1.6, 0.44, theta1=180, theta2=360, color=NAVY, lw=1.4))
    ax.plot([0, 0], [0, 2.0], color=MUTED, lw=1.0, ls=":")
    label(ax, (0.8, -0.27), "diameter 2r", size=8.2)
    label(ax, (-0.22, 1.0), "h", size=9)
    ax.annotate("", xy=(0.8, 2.0), xytext=(1.6, 2.0), arrowprops=dict(arrowstyle="->", color=RED, lw=1.0))
    label(ax, (1.25, 2.14), "r", size=9, color=RED)
    ax.set_title("Cylinder:  V = πr²h\ncurved S.A. = 2πrh, total = 2πr(r + h)", fontsize=8.2, fontweight="bold")
    ax.set_xlim(-0.6, 2.4); ax.set_ylim(-0.5, 2.7)
    fig.tight_layout()
    save(fig, "ch06_prism_cylinder.svg")


def ch06_pyramid_cone():
    fig, axes = tri_panel(w=7.2, h=3.1, n=2)
    ax = axes[0]
    base = [(0, 0), (2.2, 0), (2.7, 0.5), (0.5, 0.5)]
    poly(ax, base, fill=GREEN_LIGHT, edge=NAVY, lw=1.5)
    apex = (1.35, 2.2)
    for p in base:
        seg(ax, p, apex, NAVY, 1.2)
    seg(ax, (0, 0), (2.2, 0), NAVY, 1.7)
    seg(ax, (1.1, 0), apex, RED, 1.2, "--")
    right_angle(ax, (1.1, 0), (2.2, 0), apex, 0.18, color=RED)
    label(ax, (1.1, -0.24), "base", size=9)
    label(ax, (1.22, 1.1), "h", size=9, color=RED)
    ax.set_title("Pyramid:  V = ⅓ × base area × h", fontsize=8.8, fontweight="bold")
    ax.set_xlim(-0.4, 3.2); ax.set_ylim(-0.5, 2.6)

    ax = axes[1]
    ax.add_patch(Ellipse((0.9, 0), 1.8, 0.5, facecolor=GREEN_LIGHT, edgecolor=NAVY, lw=1.5))
    apex = (0.9, 2.3)
    seg(ax, (0, 0), apex, NAVY, 1.4)
    seg(ax, (1.8, 0), apex, NAVY, 1.4)
    seg(ax, (0.9, 0), apex, RED, 1.2, "--")
    seg(ax, (0.9, 0), (1.8, 0), MUTED, 1.0, ":")
    right_angle(ax, (0.9, 0), (1.8, 0), apex, 0.18, color=RED)
    label(ax, (1.38, 0.16), "r", size=9)
    label(ax, (1.02, 1.1), "h", size=9, color=RED)
    label(ax, (0.2, 1.35), "l", size=9, color=GREEN)
    ax.set_title("Cone:  V = ⅓πr²h\ncurved S.A. = πrl", fontsize=8.8, fontweight="bold")
    ax.set_xlim(-0.4, 2.6); ax.set_ylim(-0.5, 2.7)
    fig.tight_layout()
    save(fig, "ch06_pyramid_cone.svg")


def ch06_sphere():
    fig, ax = canvas(4.6, 3.0, xlim=(-2.0, 2.0), ylim=(-1.6, 1.6))
    ax.add_patch(Circle((0, 0), 1.3, facecolor=GREEN_LIGHT, edgecolor=NAVY, lw=1.7))
    ax.add_patch(Ellipse((0, 0), 2.6, 0.7, facecolor="none", edgecolor=MUTED, lw=1.0, ls=":"))
    ax.annotate("", xy=(0, 0), xytext=(1.3, 0), arrowprops=dict(arrowstyle="->", color=RED, lw=1.2))
    label(ax, (0.65, 0.16), "r", size=9, color=RED)
    label(ax, (0, -1.45), "V = (4/3)πr³      S.A. = 4πr²", size=10, color=NAVY)
    save(fig, "ch06_sphere.svg")


def ch06_frustum():
    fig, ax = canvas(5.0, 3.2, xlim=(-2.0, 2.0), ylim=(-1.4, 1.9))
    ax.add_patch(Ellipse((0, -0.9), 2.6, 0.6, facecolor=GREEN_LIGHT, edgecolor=NAVY, lw=1.4))
    ax.add_patch(Ellipse((0, 1.1), 1.3, 0.4, facecolor=GREEN_MID, edgecolor=NAVY, lw=1.4))
    seg(ax, (-1.3, -0.9), (-0.65, 1.1), NAVY, 1.4)
    seg(ax, (1.3, -0.9), (0.65, 1.1), NAVY, 1.4)
    seg(ax, (0, -0.9), (0, 1.1), RED, 1.1, "--")
    # radii drawn inside each base
    seg(ax, (0, -0.9), (1.3, -0.9), GREEN, 1.1)
    seg(ax, (0, 1.1), (0.65, 1.1), GREEN, 1.1)
    label(ax, (0.62, -0.72), "R", size=9, color=GREEN)
    label(ax, (0.32, 1.24), "r", size=9, color=GREEN)
    label(ax, (0.16, 0.1), "h", size=9, color=RED)
    label(ax, (0, -1.5), "Frustum volume = (1/3)πh(R² + Rr + r²)", size=9.4)
    save(fig, "ch06_frustum.svg")


def ch06_solids_table():
    w, h = 760, 300
    b = [t(380, 22, "The seven solids that supply every UTME mensuration question", size=10, fill=GREEN, weight="bold")]
    rows = [("Cube", "a³", "6a²"), ("Cuboid", "lbh", "2(lb + lh + bh)"),
            ("Prism", "area of cross-section × length", "2 × base area + perimeter × length"),
            ("Cylinder", "πr²h", "2πr(r + h)"),
            ("Cone", "⅓πr²h", "πr(r + l)"),
            ("Sphere", "(4/3)πr³", "4πr²"),
            ("Frustum", "(1/3)πh(R² + Rr + r²)", "π(R + r)l + πR² + πr²")]
    cw = [130, 270, 300]
    heads = ["Solid", "Volume", "Total surface area"]
    x0, y0 = 30, 36
    cx = x0
    for wd, hd in zip(cw, heads):
        b.append(f'<rect x="{cx}" y="{y0}" width="{wd - 6}" height="28" rx="4" fill="{NAVY}"/>')
        b.append(t(cx + (wd - 6) / 2, y0 + 19, hd, size=9, fill="#FFFFFF", weight="bold"))
        cx += wd
    for r, row in enumerate(rows):
        y = y0 + 30 + r * 30
        fill = "#FFFFFF" if r % 2 == 0 else GREEN_LIGHT
        cx = x0
        for wd, val in zip(cw, row):
            b.append(f'<rect x="{cx}" y="{y}" width="{wd - 6}" height="28" rx="3" fill="{fill}" stroke="{BORDER}" stroke-width="0.8"/>')
            b.append(t(cx + (wd - 6) / 2, y + 19, val, size=8.8, weight="bold" if val == row[1] else "normal"))
            cx += wd
    write_svg("ch06_solids_table.svg", svg(w, h, "\n".join(b)))


# ═══════════════════════════════════════════════════════════════════ chapter 7
def ch07_latitude_globe():
    fig, ax = canvas(5.4, 4.2, xlim=(-2.0, 2.0), ylim=(-2.0, 2.0))
    R = 1.7
    ax.add_patch(Circle((0, 0), R, facecolor=BLUE_LIGHT, edgecolor=NAVY, lw=1.6, alpha=0.55))
    # equator
    ax.add_patch(Ellipse((0, 0), 2 * R, 0.5 * R, facecolor="none", edgecolor=GREEN, lw=1.8))
    # latitude circles
    for lat, col in ((30, AMBER), (60, PURPLE), (-30, AMBER), (-60, PURPLE)):
        y = R * math.sin(math.radians(lat))
        rx = R * math.cos(math.radians(lat))
        ax.add_patch(Ellipse((0, y), 2 * rx, 0.34 * rx + 0.12, facecolor="none",
                             edgecolor=col, lw=1.2, ls="--"))
        label(ax, (rx + 0.16, y), f"{abs(lat)}°{'N' if lat > 0 else 'S'}", size=8, color=col, ha="left")
    # meridian ellipse (through poles)
    ax.add_patch(Ellipse((0, 0), 0.55 * R, 2 * R, facecolor="none", edgecolor=MUTED, lw=1.0, ls=":"))
    label(ax, (0, 1.86), "N pole", size=8.4)
    label(ax, (0, -1.9), "S pole", size=8.4)
    label(ax, (-0.95, 0.16), "equator", size=8.4, color=GREEN)
    ax.annotate("", xy=(0.2, R * math.sin(math.radians(30))), xytext=(0, 0),
                arrowprops=dict(arrowstyle="->", color=RED, lw=1.0))
    label(ax, (0.32, 0.36), "θ", size=8.6, color=RED)
    save(fig, "ch07_latitude_globe.svg")


def ch07_great_circle():
    fig, axes = tri_panel(w=7.2, h=2.7, n=2)
    ax = axes[0]
    R = 1.5
    ax.add_patch(Circle((0, 0), R, facecolor=BLUE_LIGHT, edgecolor=NAVY, lw=1.4, alpha=0.5))
    ax.add_patch(Ellipse((0, 0), 2 * R, 0.55 * R, facecolor="none", edgecolor=GREEN, lw=1.8))
    ax.set_title("Same longitude: distance along\na great circle = θ × 2πR/360", fontsize=8.2, fontweight="bold")
    ax.set_xlim(-1.9, 1.9); ax.set_ylim(-1.9, 1.9)

    ax = axes[1]
    ax.add_patch(Circle((0, 0), R, facecolor=BLUE_LIGHT, edgecolor=NAVY, lw=1.4, alpha=0.5))
    lat = 40
    y = R * math.sin(math.radians(lat))
    rx = R * math.cos(math.radians(lat))
    ax.add_patch(Ellipse((0, y), 2 * rx, 0.4 * rx, facecolor="none", edgecolor=AMBER, lw=1.6))
    ax.plot([-rx, rx], [y, y], color=RED, lw=1.6)
    dot(ax, (-rx, y), RED, 16); dot(ax, (rx, y), RED, 16)
    ax.set_title("Same latitude: radius of the small\ncircle = R cos(lat)", fontsize=8.2, fontweight="bold")
    ax.set_xlim(-1.9, 1.9); ax.set_ylim(-1.9, 1.9)
    fig.tight_layout()
    save(fig, "ch07_great_circle.svg")
