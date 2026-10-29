"""Front matter, Chapter 1–4 figures for JAMB Mathematics Volume 3."""

from __future__ import annotations

import math

import numpy as np
import matplotlib.pyplot as plt
from matplotlib.patches import Arc, Circle, Polygon, Wedge, Rectangle

from common import (GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED,
                    LIGHT_BG, BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT,
                    PURPLE, PURPLE_LIGHT, save, svg, rect, t, line, arrow, write_svg)
from helpers import (canvas, seg, poly, dot, label, angle_arc, right_angle, ticks,
                     parallel_marks, arrow_arc, title, note, tri_panel)


# ══════════════════════════════════════════════════════════════════════ front
def cover_banner():
    w, h = 760, 200
    b = []
    b.append(f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="1.2"/>')
    b.append(t(380, 26, "SECTION III AT A GLANCE", size=11, fill=GREEN, weight="bold"))
    b.append(t(380, 46, "Geometry • Mensuration • Trigonometry", size=15, weight="bold"))
    items = [
        ("Angles & Polygons", "interior sum = (n − 2) × 180°"),
        ("Triangles", "Pythagoras • similarity • area"),
        ("Circles", "8 circle theorems, chord & tangent"),
        ("Mensuration", "plane areas • solids • frustum"),
        ("Trigonometry", "ratios • sine & cosine rules"),
        ("Bearings", "3-figure angles • elevation"),
    ]
    for i, (a, bb) in enumerate(items):
        r, c = divmod(i, 3)
        x = 22 + c * 244
        y = 62 + r * 62
        b.append(rect(x, y, 228, 50, "#FFFFFF", BORDER, 8, 1.2))
        b.append(f'<rect x="{x}" y="{y}" width="5" height="50" rx="2.5" fill="{GREEN}"/>')
        b.append(t(x + 128, y + 20, a, size=10, weight="bold"))
        b.append(t(x + 128, y + 36, bb, size=8.4, fill=MUTED))
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg=GREEN_LIGHT))


def utme_weight_chart():
    names = ["Geometry\n& angles", "Mensuration", "Circle\ntheorems",
             "Trig ratios\n& bearings", "Coordinate\ngeometry", "Loci &\nconstruction"]
    vals = [3, 3, 1, 2, 1, 1]
    fig, ax = plt.subplots(figsize=(7.2, 2.9))
    cols = [GREEN, GREEN_BRIGHT, BLUE, AMBER, PURPLE, MUTED]
    bars = ax.bar(names, vals, color=cols, width=0.62, edgecolor="white", linewidth=1.2)
    for bar, v in zip(bars, vals):
        ax.text(bar.get_x() + bar.get_width() / 2, v + 0.06, str(v), ha="center",
                va="bottom", fontsize=10, fontweight="bold", color=NAVY)
    ax.set_ylim(0, 3.7)
    ax.set_ylabel("Questions per paper", fontsize=9, color=SLATE)
    ax.set_title("Where the 8–10 Section III questions come from",
                 fontsize=10.5, color=NAVY, fontweight="bold", pad=8)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.tick_params(labelsize=8.4, colors=SLATE)
    ax.grid(axis="y", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    fig.tight_layout()
    save(fig, "utme_geometry_weight.svg")


# ═══════════════════════════════════════════════════════════════════ chapter 1
def ch01_angle_types():
    names = [("Acute", "< 90°", 55, GREEN), ("Right", "= 90°", 90, BLUE),
             ("Obtuse", "90°–180°", 130, AMBER), ("Straight", "= 180°", 178, PURPLE),
             ("Reflex", "> 180°", 250, RED)]
    fig, axes = plt.subplots(1, 5, figsize=(7.2, 1.9))
    for ax, (nm, sub, deg, col) in zip(axes, names):
        ax.set_axis_off()
        ax.set_aspect("equal")
        v = (0.0, 0.0)
        p1 = (1.25, 0)
        p2 = (1.25 * math.cos(math.radians(deg)), 1.25 * math.sin(math.radians(deg)))
        seg(ax, v, p1, NAVY, 1.7)
        seg(ax, v, p2, NAVY, 1.7)
        if deg > 180:                      # reflex: draw the inner (major) arc
            ax.add_patch(Arc(v, 0.85, 0.85, theta1=math.degrees(math.radians(deg)),
                             theta2=360, color=col, lw=2.2))
        else:
            ax.add_patch(Arc(v, 0.85, 0.85, theta1=0, theta2=deg, color=col, lw=2.2))
        dot(ax, v, NAVY, 12)
        ax.set_xlim(-1.45, 1.45)
        ax.set_ylim(-1.0, 1.45)
        ax.set_title(nm, fontsize=9, color=col, fontweight="bold", pad=2)
        ax.text(0, -0.92, sub, ha="center", fontsize=7.6, color=col)
    fig.subplots_adjust(left=0.01, right=0.99, top=0.86, bottom=0.03, wspace=0.05)
    save(fig, "ch01_angle_types.svg")


def ch01_parallel_lines():
    fig, ax = canvas(7.0, 3.4, xlim=(-0.4, 7.4), ylim=(-0.4, 4.6))
    # two horizontal parallels
    y1, y2 = 1.2, 3.2
    seg(ax, (0, y1), (7, y1), NAVY, 2.0)
    seg(ax, (0, y2), (7, y2), NAVY, 2.0)
    parallel_marks(ax, (5.9, y1), (6.4, y1), 1)
    parallel_marks(ax, (5.9, y2), (6.4, y2), 1)
    # transversal through both
    seg(ax, (1.2, 0.1), (4.6, 4.4), GREEN, 2.0)
    # intersection points
    def y_on(x):
        return y1 + (x - 1.2) * (4.4 - 0.1) / (4.6 - 1.2)
    x_at = lambda y: 1.2 + (y - 0.1) * (4.6 - 1.2) / (4.4 - 0.1)
    pa = (x_at(y1), y1)
    pb = (x_at(y2), y2)
    dot(ax, pa)
    dot(ax, pb)
    # angle wedges at each intersection (four per point), labelled
    for p, names, side in ((pa, ["1", "2", "3", "4"], 1), (pb, ["5", "6", "7", "8"], 1)):
        right = (p[0] + 1.0, p[1])
        left = (p[0] - 1.0, p[1])
        up = (p[0], p[1] + 0.9)
        down = (p[0], p[1] - 0.9)
        angle_arc(ax, p, right, up, 0.30, RED, 1.2, names[0], 0.48, 8)
        angle_arc(ax, p, left, up, 0.30, BLUE, 1.2, names[1], 0.48, 8)
        angle_arc(ax, p, left, down, 0.34, AMBER, 1.2, names[2], 0.52, 8)
        angle_arc(ax, p, right, down, 0.34, PURPLE, 1.2, names[3], 0.52, 8)
    note(ax, "∠1 = ∠4 = ∠5 = ∠8 (vertically opposite / alternate)   ∠1 = ∠5 (corresponding)   ∠1 + ∠8 = 180° (co-interior)",
         y=-0.03)
    save(fig, "ch01_parallel_lines.svg")


def ch01_polygon_table():
    w, h = 760, 250
    b = [t(380, 24, "Interior angle sum = (n − 2) × 180°   •   each interior angle (regular) = (n − 2) × 180° ÷ n",
           size=10, fill=GREEN, weight="bold")]
    rows = [("Triangle", 3, "180°", "60°"), ("Quadrilateral", 4, "360°", "90°"),
            ("Pentagon", 5, "540°", "108°"), ("Hexagon", 6, "720°", "120°"),
            ("Octagon", 8, "1 080°", "135°"), ("Decagon", 10, "1 440°", "144°")]
    x0, y0 = 30, 40
    cw = [150, 80, 200, 260]
    heads = ["Polygon", "Sides n", "Interior angle sum", "Each interior angle"]
    cx = x0
    for wd, hd in zip(cw, heads):
        b.append(f'<rect x="{cx}" y="{y0}" width="{wd - 6}" height="30" rx="4" fill="{NAVY}"/>')
        b.append(t(cx + (wd - 6) / 2, y0 + 20, hd, size=9, fill="#FFFFFF", weight="bold"))
        cx += wd
    for r, (nm, n, s, each) in enumerate(rows):
        y = y0 + 32 + r * 30
        fill = "#FFFFFF" if r % 2 == 0 else GREEN_LIGHT
        cx = x0
        for wd, val in zip(cw, [nm, str(n), s, each]):
            b.append(f'<rect x="{cx}" y="{y}" width="{wd - 6}" height="28" rx="3" fill="{fill}" stroke="{BORDER}" stroke-width="0.8"/>')
            b.append(t(cx + (wd - 6) / 2, y + 19, val, size=9.4, weight="bold" if val == s else "normal",
                       fill=NAVY))
            cx += wd
    write_svg("ch01_polygon_table.svg", svg(w, h, "\n".join(b)))


def ch01_exterior_angles():
    fig, ax = canvas(5.6, 3.4, xlim=(-2.4, 2.4), ylim=(-1.8, 1.9))
    n = 6
    R = 1.35
    pts = [(R * math.cos(math.radians(90 + i * 360 / n)),
            R * math.sin(math.radians(90 + i * 360 / n))) for i in range(n)]
    poly(ax, pts, fill=GREEN_LIGHT, edge=NAVY, lw=1.8)
    for i, p in enumerate(pts):
        dot(ax, p, NAVY, 18)
        # extended side (dotted) and turn angle
        q = pts[(i + 1) % n]
        v = np.array(q) - np.array(p)
        ext = np.array(q) + v / np.linalg.norm(v) * 0.7
        seg(ax, q, (ext[0], ext[1]), MUTED, 1.0, "--")
        seg(ax, q, p, NAVY, 1.6)
    # one clearly marked exterior angle at the top-right vertex
    i = 1
    q = pts[i]
    p = pts[i - 1]
    nxt = pts[(i + 1) % n]
    angle_arc(ax, q, p, nxt, 0.42, RED, 1.6, "72°", 0.62, 9)
    label(ax, (0, -0.15), "exterior angles\nadd to 360°", size=9.5, color=GREEN)
    note(ax, "At each vertex the interior and exterior angles are supplementary: 120° + 60° = 180°")
    save(fig, "ch01_exterior_angles.svg")


# ═══════════════════════════════════════════════════════════════════ chapter 2
def ch02_triangle_types():
    fig, axes = tri_panel(w=7.2, h=2.3, n=4)
    specs = [
        ([(0, 0), (2.0, 0), (0.55, 1.55)], "Scalene", "no equal sides"),
        ([(0, 0), (1.8, 0), (0.9, 1.7)], "Isosceles", "two equal sides"),
        ([(0, 0), (1.7, 0), (0.85, 1.47)], "Equilateral", "three equal sides"),
        ([(0, 0), (1.9, 0), (0, 1.35)], "Right-angled", "one 90° angle"),
    ]
    for ax, (pts, nm, sub) in zip(axes, specs):
        poly(ax, pts, fill=GREEN_LIGHT, edge=NAVY, lw=1.8)
        for p in pts:
            dot(ax, p, NAVY, 14)
        if nm == "Isosceles":
            ticks(ax, pts[0], pts[2]); ticks(ax, pts[1], pts[2])
        if nm == "Equilateral":
            for a, b in ((0, 1), (1, 2), (2, 0)):
                ticks(ax, pts[a], pts[b])
        if nm == "Right-angled":
            right_angle(ax, pts[0], pts[1], pts[2], 0.26)
        ax.set_title(f"{nm}\n{sub}", fontsize=9, color=NAVY, fontweight="bold")
        ax.autoscale_view()
        ax.set_xlim(-0.35, 2.3)
        ax.set_ylim(-0.35, 2.1)
    fig.tight_layout()
    save(fig, "ch02_triangle_types.svg")


def ch02_congruence():
    fig, axes = tri_panel(w=7.2, h=2.4, n=4)
    specs = [("SSS", "3 sides equal"), ("SAS", "2 sides + included angle"),
             ("ASA", "2 angles + included side"), ("RHS", "right angle, hypotenuse, side")]
    for ax, (nm, sub) in zip(axes, specs):
        if nm == "RHS":
            A, B, C = (0, 0), (1.9, 0), (0, 1.3)
        else:
            A, B, C = (0, 0), (1.9, 0), (0.6, 1.4)
        poly(ax, [A, B, C], fill=GREEN_LIGHT, edge=NAVY, lw=1.7)
        if nm == "SSS":
            ticks(ax, A, B); ticks(ax, B, C, double=True); ticks(ax, C, A)
        elif nm == "SAS":
            ticks(ax, A, B); ticks(ax, A, C)
            angle_arc(ax, A, B, C, 0.32, RED, 1.4)
        elif nm == "ASA":
            angle_arc(ax, A, B, C, 0.34, RED, 1.4)
            angle_arc(ax, B, A, C, 0.34, RED, 1.4)
            ticks(ax, A, B)
        else:
            right_angle(ax, A, B, C, 0.24)
            ticks(ax, A, C); ticks(ax, B, C, double=True)
        ax.set_title(f"{nm}\n{sub}", fontsize=8.6, color=NAVY, fontweight="bold")
        ax.set_xlim(-0.3, 2.2)
        ax.set_ylim(-0.3, 1.8)
    fig.tight_layout()
    save(fig, "ch02_congruence.svg")


def ch02_similarity():
    fig, ax = canvas(6.4, 3.2, xlim=(-0.5, 7.0), ylim=(-0.5, 4.2))
    A, B, C = (0.3, 0.4), (3.0, 0.4), (1.5, 2.3)
    poly(ax, [A, B, C], fill=GREEN_LIGHT, edge=NAVY, lw=1.8)
    # larger similar triangle with scale 2 about A
    k = 1.7
    A2 = A
    B2 = (A[0] + (B[0] - A[0]) * k, A[1])
    C2 = (A[0] + (C[0] - A[0]) * k, A[1] + (C[1] - A[1]) * k)
    poly(ax, [A2, B2, C2], fill="none", edge=AMBER, lw=1.8, ls="--")
    for p, s in ((A, "A"), (B, "B"), (C, "C")):
        dot(ax, p, NAVY, 16)
        label(ax, p, s, dx=-0.16, dy=-0.16, size=10)
    label(ax, B2, "B′", dx=0.05, dy=-0.2, size=10, color=AMBER)
    label(ax, C2, "C′", dx=0.05, dy=0.18, size=10, color=AMBER)
    label(ax, ((A[0] + B[0]) / 2, A[1] - 0.2), "3", size=9, color=GREEN)
    label(ax, ((A2[0] + B2[0]) / 2, A[1] - 0.2), "5.1", size=9, color=AMBER)
    angle_arc(ax, A, B, C, 0.4, RED, 1.3)
    angle_arc(ax, A2, B2, C2, 0.55, RED, 1.3)
    note(ax, "Same shape, different size: corresponding angles equal, corresponding sides in a constant ratio 1 : 1.7\nareas are in the ratio 1 : 1.7² = 1 : 2.89")
    save(fig, "ch02_similarity.svg")


def ch02_pythagoras():
    fig, ax = canvas(6.4, 4.2, xlim=(-4.7, 6.6), ylim=(-4.0, 5.2))
    A, B, C = (0, 0), (3, 0), (0, 4)   # 3-4-5, right angle at A
    poly(ax, [A, B, C], fill=GREEN_LIGHT, edge=NAVY, lw=2)
    right_angle(ax, A, B, C, 0.32)

    # square on AB (below)
    ax.add_patch(Rectangle((0, -3), 3, 3, facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.4, alpha=0.9))
    # square on AC (left)
    ax.add_patch(Rectangle((-4, 0), 4, 4, facecolor=AMBER_LIGHT, edgecolor=AMBER, lw=1.4, alpha=0.9))
    # square on BC, built outward from the triangle
    u = np.array(B, float) - np.array(C, float)
    n = np.array([-u[1], u[0]]) / np.linalg.norm(u)   # candidate normal
    mid = (np.array(B, float) + np.array(C, float)) / 2
    if np.dot(n, mid - np.array(A, float)) < 0:       # make it point away from A
        n = -n
    p1, p2 = np.array(C, float), np.array(B, float)
    L = np.linalg.norm(u)
    p3, p4 = p2 + n * L, p1 + n * L
    ax.add_patch(Polygon([p1, p2, p3, p4], closed=True, facecolor=RED_LIGHT,
                         edgecolor=RED, lw=1.4, alpha=0.85))
    label(ax, (1.5, -1.5), "b² = 9", size=11, color=BLUE)
    label(ax, (-2, 2), "a² = 16", size=11, color=AMBER)
    label(ax, (3.35, 2.35), "c² = 25", size=11, color=RED)
    label(ax, (1.5, -0.28), "3", size=10)
    label(ax, (-0.3, 2.0), "4", size=10)
    label(ax, (1.45, 2.1), "5", size=10)
    note(ax, "Pythagoras: 3² + 4² = 5²   •   the square on the hypotenuse equals the sum of the squares on the other two sides")
    save(fig, "ch02_pythagoras.svg")


def ch02_area_formulas():
    fig, axes = tri_panel(w=7.2, h=2.4, n=3)
    # base × height
    ax = axes[0]
    A, B, C = (0, 0), (2.6, 0), (1.1, 1.5)
    poly(ax, [A, B, C], fill=GREEN_LIGHT, edge=NAVY, lw=1.7)
    seg(ax, C, (1.1, 0), RED, 1.3, "--")
    right_angle(ax, (1.1, 0), B, C, 0.16)
    label(ax, (1.3, -0.2), "b", size=9)
    label(ax, (1.2, 0.75), "h", size=9, color=RED)
    ax.set_title("A = ½ b h", fontsize=9.4, fontweight="bold")
    # Heron
    ax = axes[1]
    A, B, C = (0, 0), (2.4, 0), (0.8, 1.5)
    poly(ax, [A, B, C], fill=BLUE_LIGHT, edge=NAVY, lw=1.7)
    label(ax, (1.2, -0.2), "c", size=9)
    label(ax, (0.25, 0.8), "b", size=9)
    label(ax, (1.75, 0.9), "a", size=9)
    ax.set_title("Heron:  √[s(s−a)(s−b)(s−c)]", fontsize=8.6, fontweight="bold")
    # equilateral
    ax = axes[2]
    A, B, C = (0, 0), (2.2, 0), (1.1, 1.9)
    poly(ax, [A, B, C], fill=AMBER_LIGHT, edge=NAVY, lw=1.7)
    seg(ax, C, (1.1, 0), AMBER, 1.3, "--")
    for a, b in ((0, 1), (1, 2), (2, 0)):
        ticks(ax, [A, B, C][a], [A, B, C][b])
    ax.set_title("Equilateral:  A = (√3/4) a²", fontsize=8.8, fontweight="bold")
    for ax in axes:
        ax.set_xlim(-0.3, 2.8)
        ax.set_ylim(-0.45, 2.1)
    fig.tight_layout()
    save(fig, "ch02_area_formulas.svg")


# ═══════════════════════════════════════════════════════════════════ chapter 3
def ch03_circle_parts():
    fig, ax = canvas(6.4, 4.2, xlim=(-1.5, 5.2), ylim=(-2.3, 2.5))
    O = (0, 0)
    R = 2.0
    ax.add_patch(Circle(O, R, facecolor="none", edgecolor=NAVY, lw=1.9))
    dot(ax, O, NAVY, 20)
    label(ax, O, "O", dx=-0.22, dy=-0.18, size=10)
    # radius
    seg(ax, O, (R, 0), GREEN, 1.8)
    label(ax, (1.0, 0.2), "radius r", size=9, color=GREEN)
    # diameter
    seg(ax, (-R, 0), (R, 0), MUTED, 1.2, "--")
    # chord
    A = (-1.2, 1.6)
    B = (1.2, 1.6)
    seg(ax, A, B, BLUE, 2.0)
    label(ax, (0, 1.78), "chord", size=9, color=BLUE)
    # arc marker on right side
    arc = Arc(O, 2 * R - 0.12, 2 * R - 0.12, theta1=-55, theta2=55, color=AMBER, lw=3.2)
    ax.add_patch(arc)
    label(ax, (2.28, -0.6), "arc", size=9, color=AMBER, ha="left")
    # sector fill
    ax.add_patch(Wedge(O, R, -55, 0, facecolor=GREEN_MID, alpha=0.55, edgecolor="none"))
    label(ax, (1.35, -0.55), "sector", size=8.6, color=GREEN)
    # segment fill (above chord)
    theta = math.degrees(math.asin(1.6 / R))
    th = math.asin(1.6 / R)
    seg_pts = [(R * math.cos(a), R * math.sin(a)) for a in np.linspace(th, math.pi - th, 40)]
    seg_pts = [(-1.2, 1.6)] + seg_pts + [(1.2, 1.6)]
    ax.add_patch(Polygon(seg_pts, closed=True, facecolor=PURPLE_LIGHT, edgecolor="none", alpha=0.8))
    label(ax, (0, 1.15), "segment", size=8.6, color=PURPLE)
    # tangent
    T = (0, -R)
    seg(ax, (-1.6, -R), (1.6, -R), RED, 2.0)
    dot(ax, T, RED, 18)
    right_angle(ax, T, (1.4, -R), O, 0.26, color=RED)
    label(ax, (1.35, -2.28), "tangent (touches at one point)", size=8.6, color=RED, ha="right")
    note(ax, "Radius ⊥ tangent at the point of contact", y=-0.12)
    save(fig, "ch03_circle_parts.svg")


def ch03_angle_at_centre():
    fig, ax = canvas(5.8, 3.6, xlim=(-2.3, 2.3), ylim=(-1.6, 2.2))
    O = (0, 0)
    R = 1.8
    ax.add_patch(Circle(O, R, facecolor="none", edgecolor=NAVY, lw=1.7))
    A = (R * math.cos(math.radians(215)), R * math.sin(math.radians(215)))
    B = (R * math.cos(math.radians(325)), R * math.sin(math.radians(325)))
    P = (R * math.cos(math.radians(75)), R * math.sin(math.radians(75)))
    for p in (A, B, P):
        dot(ax, p, NAVY, 16)
    seg(ax, O, A, GREEN, 1.6)
    seg(ax, O, B, GREEN, 1.6)
    seg(ax, P, A, BLUE, 1.6)
    seg(ax, P, B, BLUE, 1.6)
    label(ax, O, "O", dx=-0.2, dy=-0.16, size=10)
    label(ax, A, "A", dx=-0.2, dy=-0.12, size=10)
    label(ax, B, "B", dx=0.2, dy=-0.12, size=10)
    label(ax, P, "P", dx=0.0, dy=0.24, size=10)
    angle_arc(ax, O, A, B, 0.42, RED, 1.8, "2θ", 0.66, 10)
    angle_arc(ax, P, A, B, 0.34, RED, 1.8, "θ", 0.54, 10)
    note(ax, "Angle at the centre = 2 × angle at the circumference, standing on the same arc AB")
    save(fig, "ch03_angle_at_centre.svg")


def ch03_semicircle():
    fig, ax = canvas(5.4, 3.0, xlim=(-2.3, 2.3), ylim=(-0.7, 2.0))
    O = (0, 0)
    R = 1.9
    ax.add_patch(Arc(O, 2 * R, 2 * R, theta1=0, theta2=180, color=NAVY, lw=2.0))
    seg(ax, (-R, 0), (R, 0), NAVY, 1.8)
    A, B = (-R, 0), (R, 0)
    P = (R * math.cos(math.radians(62)), R * math.sin(math.radians(62)))
    seg(ax, A, P, GREEN, 1.6)
    seg(ax, B, P, GREEN, 1.6)
    right_angle(ax, P, A, B, 0.24, color=RED)
    for p, s, dx, dy in ((A, "A", -0.2, -0.16), (B, "B", 0.2, -0.16), (P, "P", 0.0, 0.22)):
        dot(ax, p, NAVY, 16)
        label(ax, p, s, dx=dx, dy=dy, size=10)
    dot(ax, O, NAVY, 12)
    label(ax, O, "O", dx=0, dy=-0.22, size=9)
    note(ax, "The angle in a semicircle is a right angle: ∠APB = 90° when AB is a diameter")
    save(fig, "ch03_semicircle.svg")


def ch03_cyclic_quad():
    fig, ax = canvas(5.6, 3.4, xlim=(-2.2, 2.2), ylim=(-1.9, 2.0))
    O = (0, 0)
    R = 1.75
    ax.add_patch(Circle(O, R, facecolor="none", edgecolor=NAVY, lw=1.7))
    angs = [105, 200, 300, 20]
    names = ["A", "B", "C", "D"]
    pts = [(R * math.cos(math.radians(a)), R * math.sin(math.radians(a))) for a in angs]
    poly(ax, pts, fill=GREEN_LIGHT, edge=GREEN, lw=1.7)
    for p, nm in zip(pts, names):
        dot(ax, p, NAVY, 16)
        label(ax, p, nm, dx=0.16 * np.sign(p[0] + 1e-9), dy=0.16 * np.sign(p[1] + 1e-9), size=10)
    angle_arc(ax, pts[0], pts[1], pts[3], 0.34, RED, 1.4, "70°", 0.56, 9)
    angle_arc(ax, pts[2], pts[1], pts[3], 0.34, RED, 1.4, "110°", 0.56, 9)
    note(ax, "Cyclic quadrilateral: opposite angles are supplementary (70° + 110° = 180°)")
    save(fig, "ch03_cyclic_quad.svg")


def ch03_tangent_radius():
    fig, ax = canvas(5.2, 3.0, xlim=(-2.1, 2.3), ylim=(-1.7, 1.7))
    O = (0, 0)
    R = 1.45
    ax.add_patch(Circle(O, R, facecolor="none", edgecolor=NAVY, lw=1.8))
    T = (R, 0)
    seg(ax, O, T, GREEN, 1.7)
    seg(ax, (R, -1.25), (R, 1.25), RED, 2.0)
    dot(ax, O, NAVY, 16)
    dot(ax, T, RED, 18)
    right_angle(ax, T, (R, 1.1), O, 0.24, color=RED)
    label(ax, O, "O", dx=-0.2, dy=-0.16)
    label(ax, T, "T", dx=0.2, dy=-0.18, color=RED)
    label(ax, (0.7, 0.18), "r", size=9, color=GREEN)
    note(ax, "A tangent is perpendicular to the radius at the point of contact — the basis of every tangent-length question")
    save(fig, "ch03_tangent_radius.svg")


def ch03_alternate_segment():
    fig, ax = canvas(5.8, 3.3, xlim=(-2.3, 2.3), ylim=(-1.7, 2.1))
    O = (0, 0)
    R = 1.7
    ax.add_patch(Circle(O, R, facecolor="none", edgecolor=NAVY, lw=1.7))
    T = (0, -R)
    seg(ax, (-1.8, -R), (1.8, -R), RED, 2.0)
    # chord from T to A
    A = (R * math.cos(math.radians(150)), R * math.sin(math.radians(150)))
    B = (R * math.cos(math.radians(40)), R * math.sin(math.radians(40)))
    P = (R * math.cos(math.radians(105)), R * math.sin(math.radians(105)))
    seg(ax, T, A, GREEN, 1.8)
    seg(ax, A, P, BLUE, 1.4)
    seg(ax, P, T, BLUE, 1.4)
    angle_arc(ax, T, A, (1.6, -R), 0.34, RED, 1.5, "x", 0.55, 9)
    angle_arc(ax, P, A, T, 0.30, RED, 1.5, "x", 0.50, 9)
    for p, s, dx, dy in ((T, "T", 0.0, -0.24), (A, "A", -0.2, 0.1), (P, "P", 0.0, 0.22)):
        dot(ax, p, NAVY, 15)
        label(ax, p, s, dx=dx, dy=dy, size=9.5)
    note(ax, "Alternate segment: the angle between tangent and chord equals the angle in the alternate segment")
    save(fig, "ch03_alternate_segment.svg")


def ch03_chord_bisector():
    fig, ax = canvas(5.4, 3.1, xlim=(-2.2, 2.2), ylim=(-1.8, 1.8))
    O = (0, 0)
    R = 1.6
    ax.add_patch(Circle(O, R, facecolor="none", edgecolor=NAVY, lw=1.8))
    A = (-1.25, 1.0)
    B = (1.25, 1.0)
    seg(ax, A, B, BLUE, 2.0)
    seg(ax, O, (0, 1.0), GREEN, 1.5, "--")
    right_angle(ax, (0, 1.0), B, O, 0.22, color=RED)
    ticks(ax, A, (0, 1.0)); ticks(ax, (0, 1.0), B)
    for p, s, dx, dy in ((O, "O", 0.0, -0.22), (A, "A", -0.18, 0.14), (B, "B", 0.18, 0.14)):
        dot(ax, p, NAVY, 15)
        label(ax, p, s, dx=dx, dy=dy, size=9.5)
    note(ax, "The perpendicular from the centre to a chord bisects the chord — and conversely")
    save(fig, "ch03_chord_bisector.svg")


def ch03_sector_segment():
    fig, axes = tri_panel(w=7.0, h=2.6, n=2)
    ax = axes[0]
    O = (0, 0)
    R = 1.6
    ax.add_patch(Wedge(O, R, 0, 120, facecolor=GREEN_MID, edgecolor=NAVY, lw=1.5))
    seg(ax, O, (R, 0), NAVY, 1.4)
    seg(ax, O, (R * math.cos(math.radians(120)), R * math.sin(math.radians(120))), NAVY, 1.4)
    angle_arc(ax, O, (R, 0), (R * math.cos(math.radians(120)), R * math.sin(math.radians(120))), 0.42, RED, 1.5, "θ", 0.62, 9)
    ax.set_title("Sector:  A = (θ/360)πr²     arc = (θ/360)2πr", fontsize=8.6, fontweight="bold")
    ax.set_xlim(-1.9, 1.9); ax.set_ylim(-0.9, 1.9)

    ax = axes[1]
    th = math.radians(120)
    pts = [(0, 0)] + [(R * math.cos(a), R * math.sin(a)) for a in np.linspace(0, th, 40)]
    ax.add_patch(Polygon(pts, closed=True, facecolor=PURPLE_LIGHT, edgecolor=NAVY, lw=1.5))
    seg(ax, (R, 0), (R * math.cos(th), R * math.sin(th)), NAVY, 1.3, "--")
    ax.set_title("Segment:  sector − triangle OAB", fontsize=8.8, fontweight="bold")
    ax.set_xlim(-1.9, 1.9); ax.set_ylim(-0.9, 1.9)
    fig.tight_layout()
    save(fig, "ch03_sector_segment.svg")


# ═══════════════════════════════════════════════════════════════════ chapter 4
def ch04_perp_bisector():
    fig, ax = canvas(5.8, 3.3, xlim=(-0.6, 5.8), ylim=(-0.7, 3.6))
    A, B = (0.8, 0.4), (4.6, 0.4)
    seg(ax, A, B, NAVY, 1.8)
    dot(ax, A, NAVY, 16); dot(ax, B, NAVY, 16)
    label(ax, A, "A", dx=-0.2, dy=-0.18); label(ax, B, "B", dx=0.2, dy=-0.18)
    M = ((A[0] + B[0]) / 2, (A[1] + B[1]) / 2)
    r = 2.0
    for c, col in ((A, GREEN), (B, BLUE)):
        ax.add_patch(Arc(c, 2 * r, 2 * r, theta1=-80, theta2=80, color=col, lw=1.2, ls="--"))
    # intersection points of the two arcs
    d = B[0] - A[0]
    h = math.sqrt(r ** 2 - (d / 2) ** 2)
    P1 = (M[0], M[1] + h)
    P2 = (M[0], M[1] - h)
    seg(ax, P1, P2, RED, 1.8)
    dot(ax, M, RED, 14)
    right_angle(ax, M, B, P1, 0.22, color=RED)
    label(ax, P1, "P", dx=0.0, dy=0.22, size=9.5, color=RED)
    label(ax, P2, "Q", dx=0.0, dy=-0.24, size=9.5, color=RED)
    note(ax, "Equal arcs from A and B meet at P and Q; the line PQ is the perpendicular bisector of AB")
    save(fig, "ch04_perp_bisector.svg")


def ch04_angle_bisector():
    fig, ax = canvas(5.4, 3.2, xlim=(-0.5, 5.4), ylim=(-0.5, 3.6))
    V = (0.6, 0.4)
    P = (5.0, 0.4)
    Q = (3.4, 3.1)
    seg(ax, V, P, NAVY, 1.8)
    seg(ax, V, Q, NAVY, 1.8)
    r = 1.5
    ax.add_patch(Arc(V, 2 * r, 2 * r, theta1=3, theta2=57, color=GREEN, lw=1.2, ls="--"))
    # points of arc intersection with the arms
    u1 = np.array(P) - np.array(V); u1 = u1 / np.linalg.norm(u1)
    u2 = np.array(Q) - np.array(V); u2 = u2 / np.linalg.norm(u2)
    C = np.array(V) + u1 * r
    D = np.array(V) + u2 * r
    seg(ax, C, D, MUTED, 1.0, ":")
    for c, col in ((C, GREEN), (D, GREEN)):
        ax.add_patch(Arc(c, 1.9, 1.9, theta1=-10, theta2=80, color=col, lw=1.0, ls="--"))
    # bisector direction
    bis = u1 + u2
    bis = bis / np.linalg.norm(bis)
    E = np.array(V) + bis * 3.9
    seg(ax, V, E, RED, 1.8)
    label(ax, V, "V", dx=-0.22, dy=-0.18)
    label(ax, tuple(E), "bisector", dx=0.1, dy=0.2, size=9, color=RED, ha="left")
    angle_arc(ax, V, P, E, 0.62, AMBER, 1.3, "x", 0.8, 9)
    angle_arc(ax, V, E, Q, 0.86, AMBER, 1.3, "x", 1.04, 9)
    note(ax, "Equal arcs from the arms give two points; the line through V and their intersection bisects the angle")
    save(fig, "ch04_angle_bisector.svg")


def ch04_loci():
    fig, axes = tri_panel(w=7.2, h=2.2, n=4)
    # 1: fixed distance from a point
    ax = axes[0]
    ax.add_patch(Circle((0, 0), 1.1, facecolor="none", edgecolor=GREEN, lw=1.8))
    dot(ax, (0, 0), RED, 14)
    ax.set_title("Fixed distance\nfrom a point → circle", fontsize=8.2, fontweight="bold")
    # 2: fixed distance from a line
    ax = axes[1]
    seg(ax, (-1.3, -0.5), (1.3, -0.5), NAVY, 1.6)
    seg(ax, (-1.3, 0.5), (1.3, 0.5), GREEN, 1.8, "--")
    seg(ax, (-1.3, -1.5), (1.3, -1.5), GREEN, 1.8, "--")
    ax.set_title("Fixed distance\nfrom a line → 2 parallels", fontsize=8.2, fontweight="bold")
    # 3: equidistant from two points
    ax = axes[2]
    A, B = (-0.9, -0.7), (0.9, -0.7)
    seg(ax, A, B, NAVY, 1.5)
    dot(ax, A, RED, 12); dot(ax, B, RED, 12)
    seg(ax, (0, -1.6), (0, 1.5), GREEN, 1.8)
    right_angle(ax, (0, -0.7), B, (0, 1.2), 0.18)
    ax.set_title("Equidistant from\ntwo points → bisector", fontsize=8.2, fontweight="bold")
    # 4: equidistant from two lines
    ax = axes[3]
    seg(ax, (-1.3, -1.2), (1.3, 1.2), NAVY, 1.5)
    seg(ax, (-1.3, 1.2), (1.3, -1.2), NAVY, 1.5)
    seg(ax, (-1.4, 0), (1.4, 0), GREEN, 1.7)
    seg(ax, (0, -1.4), (0, 1.4), GREEN, 1.7)
    ax.set_title("Equidistant from\ntwo lines → 2 bisectors", fontsize=8.2, fontweight="bold")
    for ax in axes:
        ax.set_xlim(-1.6, 1.6); ax.set_ylim(-1.6, 1.6)
    fig.tight_layout()
    save(fig, "ch04_loci.svg")
