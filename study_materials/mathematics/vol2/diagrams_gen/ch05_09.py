"""Diagrams for Chapters 5-9, plus the nine chapter recap banners."""

from __future__ import annotations

import numpy as np
import matplotlib.pyplot as plt

from common import (
    GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, LIGHT_BG,
    BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE,
    PURPLE_LIGHT, write_svg, svg, t, lines, rect, arrow, line, card, banner,
    axes_style, save,
)


# ── Chapter 5: inequalities ────────────────────────────────────────────────
def ch05_number_line_notation():
    b = [t(450, 22, "INEQUALITY NOTATION ON THE NUMBER LINE", size=12, weight="bold")]
    rows = [
        ("x > 2", "open circle: 2 excluded", "open", 2, "right"),
        ("x ≤ 2", "solid circle: 2 included", "closed", 2, "left"),
        ("−1 ≤ x < 3", "solid at −1, open at 3", "both", (-1, 3), "between"),
        ("x < −1  or  x ≥ 2", "two separate rays", "two", (-1, 2), "outside"),
    ]
    for i, (label, note, kind, v, shape) in enumerate(rows):
        y = 62 + i * 56
        x0, x1 = 170, 690
        b.append(t(24, y + 5, label, size=11.5, weight="bold", anchor="start"))
        b.append(line(x0, y, x1, y, SLATE, 1.2))
        for tick in range(-2, 6):
            px = x0 + (tick + 2) * 65
            b.append(line(px, y - 5, px, y + 5, SLATE, 1))
            b.append(t(px, y + 20, str(tick), size=8.4, fill=MUTED))
        b.append(t(24, y + 26, note, size=8.4, fill=MUTED, anchor="start"))
        if shape == "right":
            px = x0 + (v + 2) * 65
            b.append(line(px, y, x1 - 6, y, GREEN, 3.4))
            b.append(f'<circle cx="{px}" cy="{y}" r="5.5" fill="#FFFFFF" stroke="{GREEN}" stroke-width="2"/>')
            b.append(arrow(x1 - 26, y, x1 - 4, y, GREEN, 1.6, "ag"))
        elif shape == "left":
            px = x0 + (v + 2) * 65
            b.append(line(x0 + 6, y, px, y, GREEN, 3.4))
            b.append(f'<circle cx="{px}" cy="{y}" r="5.5" fill="{GREEN}"/>')
            b.append(arrow(x0 + 26, y, x0 + 4, y, GREEN, 1.6, "ag"))
        elif shape == "between":
            a, c = (x0 + (v[0] + 2) * 65, x0 + (v[1] + 2) * 65)
            b.append(line(a, y, c, y, GREEN, 3.4))
            b.append(f'<circle cx="{a}" cy="{y}" r="5.5" fill="{GREEN}"/>')
            b.append(f'<circle cx="{c}" cy="{y}" r="5.5" fill="#FFFFFF" stroke="{GREEN}" stroke-width="2"/>')
        else:
            a, c = (x0 + (v[0] + 2) * 65, x0 + (v[1] + 2) * 65)
            b.append(line(x0 + 6, y, a, y, GREEN, 3.4))
            b.append(line(c, y, x1 - 6, y, GREEN, 3.4))
            b.append(f'<circle cx="{a}" cy="{y}" r="5.5" fill="#FFFFFF" stroke="{GREEN}" stroke-width="2"/>')
            b.append(f'<circle cx="{c}" cy="{y}" r="5.5" fill="{GREEN}"/>')
            b.append(arrow(x0 + 26, y, x0 + 4, y, GREEN, 1.6, "ag"))
            b.append(arrow(x1 - 26, y, x1 - 4, y, GREEN, 1.6, "ag"))
    b.append(t(450, 290, "Interval form: (2, ∞), (−∞, 2], [−1, 3), (−∞, −1) ∪ [2, ∞)", size=9.6, fill=NAVY))
    write_svg("ch05_number_line_notation.svg", svg(900, 306, "\n".join(b)))


def ch05_quadratic_sign_regions():
    fig, ax = plt.subplots(figsize=(7.4, 3.8))
    x = np.linspace(-0.4, 4.4, 400)
    y = (x - 1) * (x - 3)
    ax.plot(x, y, color=GREEN, lw=2.6, zorder=3)
    ax.fill_between(x, y, 0, where=(y > 0), color=GREEN_MID, alpha=0.55, zorder=1)
    ax.fill_between(x, y, 0, where=(y < 0), color=RED_LIGHT, alpha=0.9, zorder=1)
    ax.text(0.25, 2.4, "+", fontsize=22, color=GREEN, fontweight="bold")
    ax.text(2.0, -0.75, "−", fontsize=22, color=RED, fontweight="bold", ha="center")
    ax.text(3.8, 2.4, "+", fontsize=22, color=GREEN, fontweight="bold")
    ax.annotate("x = 1", (1, 0), textcoords="offset points", xytext=(-8, 14), fontsize=9.5,
                color=NAVY, fontweight="bold")
    ax.annotate("x = 3", (3, 0), textcoords="offset points", xytext=(6, 14), fontsize=9.5,
                color=NAVY, fontweight="bold")
    ax.set_title("(x − 1)(x − 3) > 0  ⇒  x < 1 or x > 3   (outside the roots)",
                 color=NAVY, fontsize=10.5, fontweight="bold", loc="left")
    axes_style(ax)
    ax.set_xlim(-0.4, 4.4)
    ax.set_ylim(-2.4, 4)
    save(fig, "ch05_quadratic_sign_regions.svg")


def ch05_sign_chart():
    b = [t(430, 22, "SIGN CHART (WAVY CURVE) FOR (x + 2)(x − 1)(x − 3)", size=11.5, weight="bold")]
    x0, x1, y = 70, 800, 150
    b.append(line(x0, y, x1, y, SLATE, 1.4))
    pts = [(-2, 170), (1, 390), (3, 610)]
    for v, px in pts:
        b.append(line(px, y - 14, px, y + 14, NAVY, 1.6))
        b.append(t(px, y + 34, f"x = {v}", size=10, weight="bold"))
        b.append(f'<circle cx="{px}" cy="{y}" r="5" fill="{NAVY}"/>')
    b.append(f'<path d="M {x0} {y - 30} Q 160 {y - 34} 170 {y} Q 180 {y + 34} 390 {y} '
             f'Q 500 {y - 34} 610 {y} Q 700 {y + 34} {x1} {y - 26}" fill="none" stroke="{GREEN}" stroke-width="2.6"/>')
    for px, s, col in [(110, "+", GREEN), (280, "−", RED), (500, "−", RED), (720, "+", GREEN)]:
        b.append(t(px, y - 46, s, size=22, weight="bold", fill=col))
    b.append(t(430, 232, "Signs alternate at every simple (odd-multiplicity) root:", size=9.6, fill=MUTED))
    b.append(t(430, 252, "positive / negative / negative / positive, read left to right.", size=9.6, fill=MUTED))
    b.append(t(430, 278, "Solution of (x + 2)(x − 1)(x − 3) ≥ 0:   −2 ≤ x ≤ 1  or  x ≥ 3", size=10.6,
               weight="bold", fill=NAVY))
    write_svg("ch05_sign_chart.svg", svg(860, 296, "\n".join(b)))


def ch05_modulus_interval():
    b = [t(450, 22, "MODULUS AS A DISTANCE:  |x − 2| < 3", size=12, weight="bold")]
    y = 120
    x0, x1 = 120, 780
    b.append(line(x0, y, x1, y, SLATE, 1.4))
    for v in (-1, 2, 5):
        px = 240 + (v + 1) * 75
        b.append(line(px, y - 8, px, y + 8, SLATE, 1.2))
        b.append(t(px, y + 26, str(v), size=9.4, fill=MUTED))
    a, c = 240, 690
    b.append(line(a, y, c, y, GREEN, 4))
    b.append(f'<circle cx="{a}" cy="{y}" r="6" fill="#FFFFFF" stroke="{GREEN}" stroke-width="2"/>')
    b.append(f'<circle cx="{c}" cy="{y}" r="6" fill="#FFFFFF" stroke="{GREEN}" stroke-width="2"/>')
    b.append(line(390, y - 46, 690, y - 46, AMBER, 1.4))
    b.append(arrow(390, y - 46, 380, y - 46, AMBER, 1.4, "aa"))
    b.append(t(540, y - 54, "distance 3 on each side of 2", size=9.4, fill=AMBER))
    b.append(f'<circle cx="390" cy="{y}" r="4" fill="{NAVY}"/>')
    b.append(t(390, y - 70, "centre x = 2", size=9.4, fill=NAVY, weight="bold"))
    b.append(t(450, 200, "−1 < x < 5, i.e. x ∈ (−1, 5)", size=13, weight="bold", fill=GREEN))
    b.append(t(450, 232, "|x − 2| > 3 would mean x < −1 or x > 5 — the two outer rays.", size=9.6, fill=MUTED))
    write_svg("ch05_modulus_interval.svg", svg(900, 250, "\n".join(b)))


def ch05_feasible_region():
    fig, ax = plt.subplots(figsize=(6.6, 4.2))
    x = np.linspace(0, 6, 300)
    ax.plot(x, 4 - x, color=GREEN, lw=2.2, label="x + y = 4")
    ax.plot(x, 6 - 2 * x, color=BLUE, lw=2.2, label="2x + y = 6")
    ax.plot([0, 0], [0, 6], color=SLATE, lw=1.4)
    ax.plot([0, 6], [0, 0], color=SLATE, lw=1.4)
    verts = [(0, 0), (3, 0), (2, 2), (0, 4)]
    ax.add_patch(plt.Polygon(verts, closed=True, facecolor=GREEN_MID, edgecolor=GREEN,
                             alpha=0.55, lw=1.6, zorder=2))
    for v in verts:
        ax.plot(*v, "o", ms=6, color=RED, zorder=5)
        ax.annotate(f"({v[0]}, {v[1]})", v, textcoords="offset points", xytext=(6, 6),
                    fontsize=9, color=RED, fontweight="bold")
    ax.set_xlim(-0.4, 5.6)
    ax.set_ylim(-0.4, 5.6)
    ax.set_title("Feasible region for x ≥ 0, y ≥ 0, x + y ≤ 4, 2x + y ≤ 6",
                 color=NAVY, fontsize=10, fontweight="bold", loc="left")
    ax.legend(frameon=False, fontsize=9, loc="upper right")
    axes_style(ax, grid=True)
    save(fig, "ch05_feasible_region.svg")


# ── Chapter 6: variation ───────────────────────────────────────────────────
def ch06_variation_family():
    b = [t(450, 22, "THE FOUR VARIATIONS AND THEIR EQUATIONS", size=12, weight="bold")]
    b.append(rect(310, 42, 280, 50, NAVY, NAVY, 8, 1))
    b.append(t(450, 73, "y varies ...", size=13, weight="bold", fill="#FFFFFF"))
    b.append(arrow(360, 94, 190, 130, GREEN, 1.6, "ag"))
    b.append(arrow(430, 94, 390, 130, BLUE, 1.6, "an"))
    b.append(arrow(470, 94, 520, 130, AMBER, 1.6, "aa"))
    b.append(arrow(540, 94, 700, 130, RED, 1.6, "ar"))
    cols = [(20, "DIRECTLY as x", "y = kx", "y/x = k (constant)", GREEN),
            (240, "INVERSELY as x", "y = k/x", "xy = k (constant)", BLUE),
            (460, "JOINTLY as x and z", "y = kxz", "y/(xz) = k", AMBER),
            (680, "PARTLY as x", "y = kx + c", "linear, not through O", RED)]
    for x, head, eq, note, col in cols:
        b.append(rect(x, 134, 200, 92, "#FFFFFF", col, 8, 1.5))
        b.append(t(x + 100, 156, head, size=8.8, weight="bold", fill=col))
        b.append(t(x + 100, 188, eq, size=15, weight="bold"))
        b.append(t(x + 100, 210, note, size=8.4, fill=MUTED))
    b.append(t(450, 252, "Find k from the given pair, then substitute the new value. Never round k before the final answer.",
               size=9.6, fill=NAVY))
    write_svg("ch06_variation_family.svg", svg(900, 268, "\n".join(b)))


def ch06_direct_vs_inverse():
    fig, axs = plt.subplots(1, 2, figsize=(8.0, 3.2))
    x = np.linspace(0.4, 5, 300)
    axs[0].plot(x, 2 * x, color=GREEN, lw=2.4)
    axs[0].set_title("Direct: y = 2x (straight line through O)", fontsize=9.6,
                     color=NAVY, fontweight="bold")
    axs[0].annotate("double x ⇒ double y", (2.4, 4.8), fontsize=9, color=GREEN)
    axs[1].plot(x, 2 / x, color=BLUE, lw=2.4)
    axs[1].set_title("Inverse: y = 2/x (rectangular hyperbola)", fontsize=9.6,
                     color=NAVY, fontweight="bold")
    axs[1].annotate("double x ⇒ halve y", (1.8, 1.1), fontsize=9, color=BLUE)
    for ax in axs:
        ax.set_xlim(0, 5.4)
        ax.set_ylim(0, 6)
        axes_style(ax)
        ax.tick_params(labelsize=8)
    fig.tight_layout()
    save(fig, "ch06_direct_vs_inverse.svg")


def ch06_joint_surface():
    fig = plt.figure(figsize=(6.6, 3.8))
    ax = fig.add_subplot(111, projection="3d")
    X, Y = np.meshgrid(np.linspace(0, 4, 30), np.linspace(0, 4, 30))
    Z = 0.5 * X * Y
    ax.plot_surface(X, Y, Z, cmap="Greens", edgecolor="none", alpha=0.9)
    ax.set_xlabel("x", fontsize=8.5)
    ax.set_ylabel("z", fontsize=8.5)
    ax.set_zlabel("y", fontsize=8.5)
    ax.set_title("Joint variation y = 0.5 x z: doubling either input doubles y", fontsize=9.4,
                 color=NAVY, fontweight="bold", pad=2)
    ax.tick_params(labelsize=7)
    ax.view_init(elev=24, azim=-58)
    save(fig, "ch06_joint_surface.svg")


def ch06_partial_line():
    fig, ax = plt.subplots(figsize=(6.8, 3.4))
    x = np.linspace(0, 5, 200)
    ax.plot(x, 3 + 2 * x, color=RED, lw=2.4)
    ax.plot([0], [3], "o", ms=7, color=NAVY)
    ax.annotate("c = 3: the part that does NOT vary with x", (0, 3), textcoords="offset points",
                xytext=(14, 10), fontsize=9, color=NAVY)
    ax.annotate("gradient k = 2", (2.6, 8.2), fontsize=9, color=RED)
    ax.set_title("Partial variation y = kx + c: a straight line that misses the origin",
                 fontsize=9.8, color=NAVY, fontweight="bold", loc="left")
    ax.set_xlim(0, 5.2)
    ax.set_ylim(0, 14)
    axes_style(ax)
    save(fig, "ch06_partial_line.svg")


# ── Chapter 7: progressions ────────────────────────────────────────────────
def ch07_ap_gp_terms():
    fig, axs = plt.subplots(1, 2, figsize=(8.2, 3.0))
    n = np.arange(1, 11)
    ap = 3 + 4 * (n - 1)
    gp = 3 * 2 ** (n - 1)
    axs[0].stem(n, ap, basefmt=" ", linefmt=GREEN, markerfmt="o")
    axs[0].set_title("A.P. 3, 7, 11, ... : add d = 4", fontsize=9.6, color=NAVY, fontweight="bold")
    axs[0].set_ylim(0, 45)
    axs[1].stem(n, gp, basefmt=" ", linefmt=AMBER, markerfmt="o")
    axs[1].set_title("G.P. 3, 6, 12, ... : multiply by r = 2", fontsize=9.6, color=NAVY, fontweight="bold")
    axs[1].set_ylim(0, 3300)
    for ax in axs:
        ax.set_xlabel("term number n", fontsize=8.8)
        ax.set_ylabel("value of term", fontsize=8.8)
        ax.tick_params(labelsize=7.5)
        for s in ("top", "right"):
            ax.spines[s].set_visible(False)
        ax.grid(color="#E2E8F0", lw=0.7)
    fig.tight_layout()
    save(fig, "ch07_ap_gp_terms.svg")


def ch07_gp_convergence():
    fig, ax = plt.subplots(figsize=(7.0, 3.4))
    n = np.arange(0, 15)
    for a, r, col, lab in [(8, 0.5, GREEN, "r = ½: converges to 16"),
                           (8, 1.5, AMBER, "r = 1.5: diverges"),
                           (8, -0.5, BLUE, "r = −½: converges (oscillating)")]:
        s = a * (1 - r ** (n + 1)) / (1 - r)
        ax.plot(n, s, "o-", color=col, lw=1.8, ms=4, label=lab)
    ax.axhline(16, color=GREEN, ls="--", lw=1)
    ax.annotate("limit S∞ = a/(1 − r) = 16", (6, 16.6), fontsize=9, color=GREEN)
    ax.set_xlabel("number of terms summed")
    ax.set_ylabel("partial sum Sₙ")
    ax.set_title("Sum to infinity exists only when |r| < 1", fontsize=10, color=NAVY,
                 fontweight="bold", loc="left")
    ax.legend(frameon=False, fontsize=8.4)
    ax.set_ylim(0, 70)
    axes_style(ax)
    save(fig, "ch07_gp_convergence.svg")


def ch07_geometric_series_square():
    b = [t(400, 22, "WHY  ½ + ¼ + ⅛ + ... = 1", size=12, weight="bold")]
    x0, y0, s = 90, 46, 240
    b.append(rect(x0, y0, s, s, "#FFFFFF", NAVY, 3, 1.6))
    b.append(rect(x0, y0, s / 2, s, GREEN_MID, GREEN, 0, 1.2))
    b.append(t(x0 + s / 4, y0 + s / 2, "½", size=18, weight="bold", fill=GREEN))
    b.append(rect(x0 + s / 2, y0, s / 2, s / 2, BLUE_LIGHT, BLUE, 0, 1.2))
    b.append(t(x0 + 3 * s / 4, y0 + s / 4, "¼", size=15, weight="bold", fill=BLUE))
    b.append(rect(x0 + s / 2, y0 + s / 2, s / 4, s / 2, AMBER_LIGHT, AMBER, 0, 1.2))
    b.append(t(x0 + 5 * s / 8, y0 + 3 * s / 4, "⅛", size=12, weight="bold", fill=AMBER))
    b.append(rect(x0 + 3 * s / 4, y0 + s / 2, s / 4, s / 4, RED_LIGHT, RED, 0, 1.2))
    b.append(t(x0 + 7 * s / 8, y0 + 5 * s / 8, "¹⁄₁₆", size=9, weight="bold", fill=RED))
    b.append(t(x0 + s / 2, y0 + s + 26, "area of the unit square = 1", size=10, fill=NAVY))
    b.append(rect(380, 60, 420, 190, "#FFFFFF", GREEN, 8, 1.4))
    b.append(t(590, 88, "S∞ = a / (1 − r)", size=20, weight="bold", fill=GREEN))
    b.append(lines(590, 120, ["a = ½,  r = ½", "S∞ = ½ ÷ (1 − ½) = ½ ÷ ½ = 1"], size=11, fill=SLATE, gap=20))
    b.append(t(590, 178, "The square is never over-filled and never", size=9.2, fill=MUTED))
    b.append(t(590, 194, "under-filled: the sum is exactly 1.", size=9.2, fill=MUTED))
    b.append(t(590, 226, "|r| < 1 is the condition, not r < 1.", size=9.6, fill=RED, weight="bold"))
    write_svg("ch07_geometric_series_square.svg", svg(820, 320, "\n".join(b)))


def ch07_ap_pairing():
    b = [t(430, 22, "GAUSS PAIRING: Sₙ = n/2 (a + l)", size=12, weight="bold")]
    a, l, n = 3, 21, 10
    terms = [a + 2 * i for i in range(n)]
    x0, y0, dx = 110, 74, 58
    for i, v in enumerate(terms):
        b.append(f'<circle cx="{x0 + i * dx}" cy="{y0}" r="15" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="1.3"/>')
        b.append(t(x0 + i * dx, y0 + 5, str(v), size=10, weight="bold", fill=GREEN))
    b.append(t(x0 + 5 * dx - dx / 2, y0 - 34, "first term a = 3  ...  last term l = 21", size=9.4, fill=MUTED))
    # pairing arcs
    for i in range(5):
        xa, xb = x0 + i * dx, x0 + (n - 1 - i) * dx
        yy = y0 + 34 + i * 0
        b.append(f'<path d="M {xa} {y0 + 20} Q {(xa + xb) / 2} {y0 + 74 + i * 9} {xb} {y0 + 20}" '
                 f'fill="none" stroke="{BLUE}" stroke-width="1.2" opacity="0.75"/>')
    b.append(t(430, 168, "Each pair sums to a + l = 24.  There are n/2 pairs.", size=10.4, fill=NAVY))
    b.append(rect(180, 188, 500, 48, GREEN_LIGHT, GREEN, 8, 1.3))
    b.append(t(430, 218, "S₁₀ = 10/2 × (3 + 21) = 5 × 24 = 120", size=14, weight="bold", fill=GREEN))
    b.append(t(430, 262, "Check: Sₙ = n/2 [2a + (n − 1)d] = 5[6 + 18] = 120 ✓", size=9, fill=MUTED))
    write_svg("ch07_ap_pairing.svg", svg(860, 276, "\n".join(b)))


# ── Chapter 8: binary operations ──────────────────────────────────────────
def ch08_operation_table():
    b = [t(410, 22, "OPERATION TABLE FOR  a * b = (a + b) mod 5  ON  {0, 1, 2, 3, 4}", size=11.5, weight="bold")]
    x0, y0, c = 120, 50, 52
    b.append(rect(x0, y0, c, c, NAVY, NAVY, 3, 1))
    b.append(t(x0 + c / 2, y0 + c / 2 + 5, "*", size=15, weight="bold", fill="#FFFFFF"))
    for i in range(5):
        b.append(rect(x0 + c + i * c, y0, c, c, NAVY, NAVY, 3, 1))
        b.append(t(x0 + c + i * c + c / 2, y0 + c / 2 + 5, str(i), size=12, weight="bold", fill="#FFFFFF"))
        b.append(rect(x0, y0 + c + i * c, c, c, NAVY, NAVY, 3, 1))
        b.append(t(x0 + c / 2, y0 + c + i * c + c / 2 + 5, str(i), size=12, weight="bold", fill="#FFFFFF"))
    for r in range(5):
        for col in range(5):
            v = (r + col) % 5
            fill = GREEN_LIGHT if v == r else "#FFFFFF"
            if v == 0:
                fill = AMBER_LIGHT
            b.append(rect(x0 + c + col * c, y0 + c + r * c, c, c, fill, BORDER, 3, 1))
            b.append(t(x0 + c + col * c + c / 2, y0 + c + r * c + c / 2 + 5, str(v), size=11,
                       weight="bold", fill=NAVY))
    b.append(t(690, 96, "identity element e = 0", size=10, weight="bold", fill=RED))
    b.append(t(690, 116, "because a * 0 = a for every a.", size=8.8, fill=MUTED))
    b.append(t(690, 148, "inverse of 1 is 4, of 2 is 3,", size=9.4, fill=AMBER))
    b.append(t(690, 164, "of 0 is 0 (self-inverse),", size=9.4, fill=AMBER))
    b.append(t(690, 180, "of 3 is 2, of 4 is 1.", size=9.4, fill=AMBER))
    b.append(t(690, 212, "The table is symmetric about the", size=8.8, fill=MUTED))
    b.append(t(690, 228, "leading diagonal ⇒ commutative.", size=8.8, fill=MUTED))
    b.append(t(690, 258, "Closure: every entry is in the set.", size=8.8, fill=MUTED))
    write_svg("ch08_operation_table.svg", svg(830, 340, "\n".join(b)))


def ch08_property_map():
    b = [t(450, 22, "FIVE PROPERTIES YOU MUST BE ABLE TO TEST", size=12, weight="bold")]
    data = [("CLOSURE", ["a * b stays in S", "for every pair a, b"], GREEN),
            ("COMMUTATIVE", ["a * b = b * a", "table symmetric"], BLUE),
            ("ASSOCIATIVE", ["(a * b) * c", "= a * (b * c)"], PURPLE),
            ("IDENTITY", ["a * e = e * a = a", "solve for e"], AMBER),
            ("INVERSE", ["a * b = e", "b is the inverse of a"], RED)]
    for i, (head, body, col) in enumerate(data):
        x = 14 + i * 176
        b.append(card(x, 48, 160, 108, head, body, col, title_size=10, body_size=8.8))
    b.append(rect(120, 176, 660, 66, "#FFFFFF", NAVY, 8, 1.3))
    b.append(t(450, 200, "Find the identity by solving   a * e = a   with a kept general.", size=10.4, weight="bold"))
    b.append(t(450, 224, "Then find the inverse of a by solving   a * b = e   for b.", size=10.4, fill=SLATE))
    write_svg("ch08_property_map.svg", svg(900, 258, "\n".join(b)))


# ── Chapter 9: matrices ───────────────────────────────────────────────────
def ch09_matrix_anatomy():
    b = [t(450, 22, "MATRIX ANATOMY", size=12, weight="bold")]
    x0, y0, cw, chh = 90, 60, 70, 46
    A = [["a₁₁", "a₁₂", "a₁₃"], ["a₂₁", "a₂₂", "a₂₃"]]
    b.append(f'<path d="M {x0 - 12} {y0 - 8} h -12 v {2 * chh + 16} h 12" fill="none" stroke="{NAVY}" stroke-width="2"/>')
    b.append(f'<path d="M {x0 + 3 * cw + 12} {y0 - 8} h 12 v {2 * chh + 16} h -12" fill="none" stroke="{NAVY}" stroke-width="2"/>')
    for r in range(2):
        for col in range(3):
            b.append(rect(x0 + col * cw, y0 + r * chh, cw, chh, "#FFFFFF", BORDER, 3, 1))
            b.append(t(x0 + col * cw + cw / 2, y0 + r * chh + chh / 2 + 5, A[r][col], size=11))
    b.append(t(x0 + 1.5 * cw, y0 - 20, "3 columns", size=9.2, fill=GREEN))
    b.append(t(x0 - 24, y0 + chh, "2 rows", size=9.2, fill=GREEN, anchor="end"))
    b.append(t(x0 + 1.5 * cw, y0 + 2 * chh + 28, "order 2 × 3 (rows × columns)", size=9.6, weight="bold", fill=NAVY))
    b.append(arrow(x0 + 3 * cw + 36, y0 + chh, x0 + 3 * cw + 76, y0 + chh, AMBER, 1.6, "aa"))
    b.append(t(x0 + 3 * cw + 56, y0 + chh - 12, "transpose", size=8.4, fill=AMBER))
    x1 = x0 + 3 * cw + 96
    for r in range(3):
        for col in range(2):
            b.append(rect(x1 + col * cw, y0 + r * chh, cw, chh, GREEN_LIGHT, GREEN, 3, 1))
            b.append(t(x1 + col * cw + cw / 2, y0 + r * chh + chh / 2 + 5, A[col][r], size=11, fill=GREEN))
    b.append(t(x1 + cw, y0 + 3 * chh + 28, "order 3 × 2  (Aᵀ)", size=9.6, weight="bold", fill=GREEN))
    b.append(t(450, 262, "Only square matrices (n × n) have determinants and inverses.", size=9.4, fill=MUTED))
    write_svg("ch09_matrix_anatomy.svg", svg(900, 282, "\n".join(b)))


def ch09_determinant_area():
    fig, ax = plt.subplots(figsize=(5.6, 4.2))
    ax.add_patch(plt.Polygon([(0, 0), (1, 0), (1, 1), (0, 1)], closed=True, facecolor=BLUE_LIGHT,
                             edgecolor=BLUE, alpha=0.7, lw=1.6))
    ax.add_patch(plt.Polygon([(0, 0), (3, 0), (4, 2), (1, 2)], closed=True, facecolor=GREEN_MID,
                             edgecolor=GREEN, alpha=0.55, lw=1.8))
    ax.annotate("unit square, area 1", (0.5, 0.5), fontsize=9, color=BLUE, ha="center")
    ax.annotate("image, area 6 = |det|", (2.4, 1.15), fontsize=9.5, color=GREEN, ha="center",
                fontweight="bold")
    ax.annotate("", xy=(3, 0), xytext=(0, 0), arrowprops=dict(arrowstyle="->", color=NAVY, lw=2))
    ax.annotate("", xy=(1, 2), xytext=(0, 0), arrowprops=dict(arrowstyle="->", color=NAVY, lw=2))
    ax.text(1.5, -0.35, "(3, 0)", fontsize=9, color=NAVY, ha="center")
    ax.text(1.15, 2.15, "(1, 2)", fontsize=9, color=NAVY)
    ax.set_xlim(-0.6, 4.8)
    ax.set_ylim(-0.8, 2.8)
    ax.set_aspect("equal")
    ax.grid(color="#E2E8F0", lw=0.7)
    ax.set_title("det [[3, 1], [0, 2]] = 6 = area scale factor", fontsize=10, color=NAVY,
                 fontweight="bold", loc="left")
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    save(fig, "ch09_determinant_area.svg")


def ch09_matrix_transform():
    fig, ax = plt.subplots(figsize=(6.4, 4.0))
    tri = np.array([[0, 0], [2, 0], [0, 1]])
    R = np.array([[0, -1], [1, 0]])
    img = tri @ R.T
    ax.add_patch(plt.Polygon(tri, closed=True, facecolor=BLUE_LIGHT, edgecolor=BLUE, alpha=0.8, lw=1.6))
    ax.add_patch(plt.Polygon(img, closed=True, facecolor=GREEN_MID, edgecolor=GREEN, alpha=0.7, lw=1.6))
    ax.annotate("original", (0.55, 0.28), fontsize=9, color=BLUE)
    ax.annotate("rotated 90° anticlockwise", (-1.35, 0.95), fontsize=9, color=GREEN)
    for pt, lab in [((2, 0), "(2, 0)"), ((0, 1), "(0, 1)")]:
        ax.plot(*pt, "o", ms=5, color=BLUE)
        ax.annotate(lab, pt, textcoords="offset points", xytext=(5, -12), fontsize=8.5, color=BLUE)
    for pt, lab in [((0, 2), "(0, 2)"), ((-1, 0), "(−1, 0)")]:
        ax.plot(*pt, "o", ms=5, color=GREEN)
        ax.annotate(lab, pt, textcoords="offset points", xytext=(6, 6), fontsize=8.5, color=GREEN)
    ax.set_xlim(-2.2, 2.8)
    ax.set_ylim(-0.8, 2.6)
    ax.set_aspect("equal")
    ax.grid(color="#E2E8F0", lw=0.7)
    ax.axhline(0, color=SLATE, lw=1)
    ax.axvline(0, color=SLATE, lw=1)
    ax.set_title("Matrix [[0, −1], [1, 0]] rotates every point through 90°", fontsize=10,
                 color=NAVY, fontweight="bold", loc="left")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    save(fig, "ch09_matrix_transform.svg")


def ch09_inverse_flow():
    b = [t(450, 22, "SOLVING A MATRIX EQUATION", size=12, weight="bold")]
    steps = [("AX = B", "the system written\nas one matrix equation", NAVY),
             ("A⁻¹AX = A⁻¹B", "multiply BOTH sides\non the LEFT by A⁻¹", BLUE),
             ("IX = A⁻¹B", "A⁻¹A = I, the identity", AMBER),
             ("X = A⁻¹B", "the solution vector", GREEN)]
    for i, (eq, note, col) in enumerate(steps):
        x = 20 + i * 218
        b.append(rect(x, 54, 196, 108, "#FFFFFF", col, 8, 1.5))
        b.append(t(x + 98, 92, eq, size=17, weight="bold", fill=col))
        for j, s in enumerate(note.split("\n")):
            b.append(t(x + 98, 120 + j * 15, s, size=8.6, fill=MUTED))
        if i < 3:
            b.append(arrow(x + 198, 108, x + 214, 108, AMBER, 1.4, "aa"))
    b.append(rect(120, 186, 660, 56, RED_LIGHT, RED, 8, 1.3))
    b.append(t(450, 210, "CRITICAL: matrix multiplication is NOT commutative — never multiply on the right.", size=10.2,
               weight="bold", fill=RED))
    b.append(t(450, 232, "If det A = 0, A⁻¹ does not exist and the system has no unique solution.", size=9.2, fill=MUTED))
    write_svg("ch09_inverse_flow.svg", svg(900, 256, "\n".join(b)))


# ── Recap banners ─────────────────────────────────────────────────────────
def recaps():
    banner("recap_ch01.svg", "CHAPTER 1 RECAP — Change of Subject of Formula",
           [("Undo operations\nin reverse order", GREEN), ("Subject twice?\nFactorise, never divide", AMBER),
            ("Denominator:\ncross-multiply first", BLUE), ("Square: isolate,\nthen take the root", RED)],
           "Transpose first, substitute second — one piece of algebra, one piece of arithmetic.")
    banner("recap_ch02.svg", "CHAPTER 2 RECAP — Polynomials & Factor Theorem",
           [("f(a) = remainder\non division by (x − a)", GREEN), ("f(a) = 0\n⇒ (x − a) is a factor", AMBER),
            ("Degree 3: find one\nroot, then divide", BLUE), ("Fully factorise:\nrepeat until linear", RED)],
           "For (ax + b) substitute x = −b/a, not x = b/a.")
    banner("recap_ch03.svg", "CHAPTER 3 RECAP — Quadratic Equations",
           [("Δ = b² − 4ac\ndecides the roots", GREEN), ("Sum = −b/a,\nproduct = c/a", AMBER),
            ("Complete the square\nfor the vertex", BLUE), ("a > 0: minimum;\na < 0: maximum", RED)],
           "Never lose a root: factorise, or apply the full formula with ±.")
    banner("recap_ch04.svg", "CHAPTER 4 RECAP — Simultaneous Equations",
           [("Match coefficients,\nthen add or subtract", GREEN), ("Linear + quadratic:\nsubstitute, solve", AMBER),
            ("Check the pair in\nBOTH equations", BLUE), ("3 unknowns: eliminate\nthe same variable twice", RED)],
           "Number of intersection points = number of solutions; parallel means none.")
    banner("recap_ch05.svg", "CHAPTER 5 RECAP — Inequalities",
           [("Flip the sign when\nmultiplying by −1", GREEN), ("Quadratic: roots\nsplit the line", AMBER),
            ("'Outside' for >,\n'inside' for <", BLUE), ("Test a point to\ncheck the region", RED)],
           "Shade the feasible side by testing (0, 0) — unless the boundary passes through it.")
    banner("recap_ch06.svg", "CHAPTER 6 RECAP — Variation",
           [("Direct: y/x = k\n(increase together)", GREEN), ("Inverse: xy = k\n(one rises, one falls)", AMBER),
            ("Joint: y/(xz) = k", BLUE), ("Partial: y = kx + c\n(line misses origin)", RED)],
           "Find k from the stated pair before touching the new value.")
    banner("recap_ch07.svg", "CHAPTER 7 RECAP — Sequences & Series",
           [("AP: Tₙ = a + (n−1)d\nSₙ = n/2(2a + (n−1)d)", GREEN), ("GP: Tₙ = ar^(n−1)\nSₙ = a(1−rⁿ)/(1−r)", AMBER),
            ("S∞ exists only\nwhen |r| < 1", BLUE), ("'Sum to infinity'\nmeans r between −1 and 1", RED)],
           "Count terms carefully: from 1 to n inclusive there are n terms, not n − 1.")
    banner("recap_ch08.svg", "CHAPTER 8 RECAP — Binary Operations",
           [("Substitute literally,\nthen compute", GREEN), ("Identity: solve\na * e = a", AMBER),
            ("Inverse: solve\na * b = e", BLUE), ("Commutative: table\nis symmetric", RED)],
           "If the operation is not commutative, check the order in which a and b enter.")
    banner("recap_ch09.svg", "CHAPTER 9 RECAP — Matrices & Determinants",
           [("Multiply: row × column,\norder matters", GREEN), ("det [[a,b],[c,d]]\n= ad − bc", AMBER),
            ("A⁻¹ = (1/det) ×\nswapped, negated", BLUE), ("3 × 3 determinant:\nexpand along a row", RED)],
           "No inverse when det = 0; a system then has no unique solution.")
