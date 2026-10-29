"""Cover, weighting chart and diagrams for Chapters 1-4."""

from __future__ import annotations

import numpy as np
import matplotlib.pyplot as plt

from common import (
    GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, LIGHT_BG,
    BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE,
    PURPLE_LIGHT, OUT, write_svg, svg, t, lines, rect, arrow, line, card,
    axes_style, save,
)


# ── Cover & weighting ──────────────────────────────────────────────────────
def cover_banner():
    b = []
    # parabola motif
    b.append(f'<path d="M 40 176 Q 120 24 200 176" fill="none" stroke="{GREEN_BRIGHT}" stroke-width="3"/>')
    b.append(f'<line x1="24" y1="176" x2="216" y2="176" stroke="{BORDER}" stroke-width="1.2"/>')
    b.append(f'<line x1="120" y1="176" x2="120" y2="40" stroke="{BORDER}" stroke-width="1" stroke-dasharray="4 4"/>')
    b.append(t(120, 196, "y = ax² + bx + c", size=11, fill="#A7F3D0"))
    b.append(t(120, 210, "parabola: vertex, roots, discriminant", size=8.4, fill="#94A3B8"))

    # matrix motif
    x0 = 300
    b.append(f'<path d="M {x0} 52 h -10 v 110 h 10" fill="none" stroke="{GREEN_BRIGHT}" stroke-width="2.4"/>')
    b.append(f'<path d="M {x0 + 96} 52 h 10 v 110 h -10" fill="none" stroke="{GREEN_BRIGHT}" stroke-width="2.4"/>')
    for r, row in enumerate([("a", "b"), ("c", "d")]):
        for c, s in enumerate(row):
            b.append(t(x0 + 22 + c * 46, 96 + r * 44, s, size=19, fill="#E2E8F0", italic=True))
    b.append(t(x0 + 48, 196, "2 × 2 matrix & determinant", size=11, fill="#A7F3D0"))
    b.append(t(x0 + 48, 210, "ad − bc; inverse; Cramer's rule", size=8.4, fill="#94A3B8"))

    # progression motif
    xs, y = 520, 120
    for i in range(5):
        b.append(f'<circle cx="{xs + i * 34}" cy="{y}" r="4.6" fill="{GREEN_BRIGHT}"/>')
    b.append(t(xs + 68, y - 18, "A.P.  +d", size=10, fill="#A7F3D0"))
    for i in range(5):
        b.append(f'<circle cx="{xs + i * 34}" cy="{y + 52}" r="{3.2 + i * 1.6:.1f}" fill="{AMBER}"/>')
    b.append(t(xs + 68, y + 96, "G.P.  ×r", size=10, fill="#FCD34D"))

    body = (f'<rect x="0" y="0" width="760" height="220" rx="12" fill="#0F2942" stroke="#1E3A5F"/>'
            + "\n".join(b))
    write_svg("cover_banner.svg", svg(760, 220, body, bg="#0F2942"))


def utme_weight_chart():
    chapters = ["Change of\nsubject", "Polynomials", "Quadratics", "Simultaneous\nequations",
                "Inequalities", "Variation", "Progressions", "Binary\noperations", "Matrices"]
    vals = [0.8, 0.7, 1.6, 1.3, 0.9, 1.0, 1.4, 0.6, 1.2]
    fig, ax = plt.subplots(figsize=(7.8, 4.0))
    colors = [GREEN if v >= 1.2 else GREEN_BRIGHT if v >= 0.9 else GREEN_MID for v in vals]
    bars = ax.barh(chapters[::-1], vals[::-1], color=colors[::-1], edgecolor=GREEN, linewidth=1.0)
    for b, v in zip(bars, vals[::-1]):
        ax.text(v + 0.04, b.get_y() + b.get_height() / 2, f"{v:.1f}", va="center",
                fontsize=9.5, color=NAVY, fontweight="bold")
    ax.set_xlim(0, 1.95)
    ax.set_xlabel("Typical number of questions per UTME paper (Section II total ≈ 9–11)")
    ax.set_title("Where the 9–11 Section II questions come from", color=NAVY,
                 fontweight="bold", fontsize=12, loc="left")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(axis="x", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "utme_algebra_weight.svg")


# ── Chapter 1 ──────────────────────────────────────────────────────────────
def ch01_undo_machine():
    b = [t(450, 26, "FORWARD: the formula builds y from x", size=12, weight="bold")]
    y0 = 70
    boxes = [(110, "× 3"), (255, "+ 2"), (400, "(  )²")]
    b.append(rect(24, y0 - 24, 54, 48, GREEN_LIGHT, GREEN, 8, 1.6))
    b.append(t(51, y0 + 6, "x", size=16, weight="bold", fill=GREEN))
    prev = 78
    for x, lab in boxes:
        b.append(arrow(prev, y0, x - 4, y0))
        b.append(rect(x, y0 - 24, 84, 48, "#FFFFFF", NAVY, 8, 1.4))
        b.append(t(x + 42, y0 + 6, lab, size=14, weight="bold"))
        prev = x + 88
    b.append(arrow(prev, y0, 540, y0))
    b.append(rect(544, y0 - 24, 54, 48, GREEN_LIGHT, GREEN, 8, 1.6))
    b.append(t(571, y0 + 6, "y", size=16, weight="bold", fill=GREEN))

    y1 = 200
    b.append(t(450, 150, "REVERSE: undo the operations, last first", size=12, weight="bold", fill=GREEN))
    b.append(rect(544, y1 - 24, 54, 48, GREEN_LIGHT, GREEN, 8, 1.6))
    b.append(t(571, y1 + 6, "y", size=16, weight="bold", fill=GREEN))
    back = [(400, "√"), (255, "− 2"), (110, "÷ 3")]
    prev = 544
    for x, lab in back:
        b.append(arrow(prev, y1, x + 88, y1, GREEN, 1.8, "ag"))
        b.append(rect(x, y1 - 24, 84, 48, GREEN_LIGHT, GREEN, 8, 1.4))
        b.append(t(x + 42, y1 + 6, lab, size=14, weight="bold", fill=GREEN))
        prev = x
    b.append(arrow(prev, y1, 80, y1, GREEN, 1.8, "ag"))
    b.append(t(51, y1 + 6, "x", size=16, weight="bold", fill=GREEN))

    b.append(t(300, 250, "x  →  ×3  →  +2  →  square  →  y = (3x + 2)²", size=10.5, fill=MUTED))
    b.append(t(300, 272, "x  ←  ÷3  ←  −2  ←  √    ←  x = (√y − 2)/3", size=10.5, fill=MUTED))
    write_svg("ch01_undo_machine.svg", svg(900, 290, "\n".join(b)))


def ch01_formula_families():
    b = [t(450, 24, "THE SIX FAMILIES AND THEIR FIRST MOVE", size=12, weight="bold")]
    data = [
        ("A.  y = ax + b", ["Subject multiplied, then added.", "First: subtract b.", "Then divide by a."], GREEN),
        ("B.  y = a / x", ["Subject in a denominator.", "First: cross-multiply.", "Then divide by y."], BLUE),
        ("C.  ax + bx = c", ["Subject appears twice.", "First: factorise x out.", "Never divide it away."], AMBER),
        ("D.  T = 2π√(l/g)", ["Subject under a root.", "First: divide, then square", "the whole side; then invert."], PURPLE),
        ("E.  y = aˣ", ["Subject in the exponent.", "First: take logarithms", "of both sides."], RED),
        ("F.  2πr² + 2πhr = A", ["Subject squared and linear.", "First: arrange as a", "quadratic; keep the valid root."], SLATE),
    ]
    for i, (title, body, col) in enumerate(data):
        cx = 20 + (i % 3) * 293
        cy = 48 + (i // 3) * 138
        b.append(card(cx, cy, 280, 122, title, body, col, title_size=10.5, body_size=9))
    write_svg("ch01_formula_families.svg", svg(900, 320, "\n".join(b)))


# ── Chapter 2 ──────────────────────────────────────────────────────────────
def ch02_synthetic_division():
    b = [t(450, 24, "SYNTHETIC DIVISION:  (2x³ − 5x² − 4x + 3) ÷ (x − 3)", size=12, weight="bold")]
    x0, y0, cw, rh = 120, 70, 62, 44
    coeffs = ["2", "−5", "−4", "3"]
    # header row
    b.append(t(x0 - 46, y0 + 26, "3", size=14, weight="bold", fill=RED))
    for i, c in enumerate(coeffs):
        b.append(rect(x0 + i * cw, y0, cw, rh, NAVY, NAVY, 4, 1))
        b.append(t(x0 + i * cw + cw / 2, y0 + 27, c, size=13, weight="bold", fill="#FFFFFF"))
    # bring down
    b.append(arrow(x0 + cw / 2, y0 + rh + 4, x0 + cw / 2, y0 + rh + 30, GREEN, 1.8, "ag"))
    row2 = y0 + rh + 34
    b.append(rect(x0, row2, cw, rh, GREEN_LIGHT, GREEN, 4, 1.3))
    b.append(t(x0 + cw / 2, row2 + 27, "2", size=13, weight="bold", fill=GREEN))
    # products
    row3 = row2 + rh + 4
    prods = ["", "6", "3", "−3"]
    for i, p in enumerate(prods):
        if p:
            b.append(rect(x0 + i * cw, row3, cw, rh, RED_LIGHT, RED, 4, 1.2, dash="4 3"))
            b.append(t(x0 + i * cw + cw / 2, row3 + 27, p, size=13, weight="bold", fill=RED))
    # sums
    row4 = row3 + rh + 4
    sums = ["", "1", "−1", "0"]
    for i, s in enumerate([""] + ["2", "1", "−1", "0"][1:]):
        if s:
            b.append(rect(x0 + i * cw, row4, cw, rh, BLUE_LIGHT, BLUE, 4, 1.2))
            b.append(t(x0 + i * cw + cw / 2, row4 + 27, s, size=13, weight="bold", fill=BLUE))
    b.append(t(x0 - 60, row4 + 27, "=", size=14, anchor="end"))
    # annotations
    ax0 = x0 + 4 * cw + 26
    b.append(t(ax0, y0 + 27, "coefficients of f(x), in descending order", size=9.4, anchor="start", fill=MUTED))
    b.append(t(ax0, row2 + 20, "bring down the leading coefficient", size=9.4, anchor="start", fill=GREEN))
    b.append(t(ax0, row3 + 20, "multiply by 3, write the product", size=9.4, anchor="start", fill=RED))
    b.append(t(ax0, row4 + 20, "add: quotient 2x² + x − 1,", size=9.4, anchor="start", fill=BLUE))
    b.append(t(ax0, row4 + 36, "remainder 0  ⇒  (x − 3) is a factor", size=9.4, anchor="start", fill=BLUE))
    write_svg("ch02_synthetic_division.svg", svg(900, 300, "\n".join(b)))


def ch02_factor_theorem_flow():
    b = [t(450, 24, "REMAINDER & FACTOR THEOREM IN ONE PICTURE", size=12, weight="bold")]
    b.append(rect(30, 62, 150, 62, NAVY, NAVY, 8, 1))
    b.append(lines(105, 88, ["polynomial f(x)", "and divisor (x − a)"], size=9.2, fill="#FFFFFF"))
    b.append(arrow(184, 93, 236, 93))
    b.append(rect(240, 62, 150, 62, BLUE_LIGHT, BLUE, 8, 1.3))
    b.append(lines(315, 88, ["substitute x = a", "compute f(a)"], size=9.2, fill=NAVY))
    b.append(arrow(394, 93, 446, 93))
    b.append(rect(450, 62, 130, 62, AMBER_LIGHT, AMBER, 8, 1.3))
    b.append(t(515, 88, "f(a) = ?", size=14, weight="bold", fill=AMBER))
    b.append(arrow(515, 128, 380, 176, GREEN, 1.8, "ag"))
    b.append(arrow(515, 128, 640, 176, RED, 1.8, "ar"))
    b.append(rect(230, 180, 300, 66, GREEN_LIGHT, GREEN, 8, 1.4))
    b.append(lines(380, 204, ["f(a) = 0  ⇒  (x − a) IS a factor", "and the quotient is exact"], size=9.4, fill=GREEN))
    b.append(rect(560, 180, 300, 66, RED_LIGHT, RED, 8, 1.4))
    b.append(lines(710, 204, ["f(a) ≠ 0  ⇒  not a factor, and", "the remainder equals f(a)"], size=9.4, fill=RED))
    b.append(t(450, 272, "Degree 3 divisor (ax + b): substitute x = −b/a.   Degree 2 divisor: divide, then check the remainder is zero.",
               size=9.2, fill=MUTED))
    write_svg("ch02_factor_theorem_flow.svg", svg(900, 290, "\n".join(b)))


def ch02_grid_multiplication():
    b = [t(380, 24, "THE GRID (BOX) METHOD:  (2x + 3)(x − 4)", size=12, weight="bold")]
    x0, y0, cw, ch = 120, 66, 150, 74
    b.append(t(x0 + cw + cw / 2, y0 - 10, "x", size=14, weight="bold", fill=GREEN))
    b.append(t(x0 + cw + cw * 1.5, y0 - 10, "− 4", size=14, weight="bold", fill=GREEN))
    b.append(t(x0 - 16, y0 + ch / 2 + 6, "2x", size=14, weight="bold", fill=BLUE, anchor="end"))
    b.append(t(x0 - 16, y0 + ch * 1.5 + 6, "+ 3", size=14, weight="bold", fill=BLUE, anchor="end"))
    cells = [("2x²", GREEN_LIGHT, GREEN), ("− 8x", AMBER_LIGHT, AMBER),
             ("3x", BLUE_LIGHT, BLUE), ("− 12", RED_LIGHT, RED)]
    for i, (lab, bg, st) in enumerate(cells):
        r, c = i // 2, i % 2
        x, y = x0 + c * cw, y0 + r * ch
        b.append(rect(x, y, cw, ch, bg, st, 5, 1.4))
        b.append(t(x + cw / 2, y + ch / 2 + 9, lab, size=20, weight="bold", fill=st))
    b.append(t(380, 268, "Add the four cells:  2x² − 8x + 3x − 12  =  2x² − 5x − 12", size=12.5, weight="bold", fill=NAVY))
    b.append(t(380, 292, "The grid makes every product visible, so no term is ever dropped.", size=9.4, fill=MUTED))
    write_svg("ch02_grid_multiplication.svg", svg(760, 310, "\n".join(b)))


def ch02_cubic_shape():
    fig, ax = plt.subplots(figsize=(7.2, 3.9))
    x = np.linspace(-1.8, 4.2, 400)
    y = (x + 1) * (x - 2) * (x - 3)
    ax.plot(x, y, color=GREEN, lw=2.6, zorder=3)
    for r in (-1, 2, 3):
        ax.plot([r], [0], "o", ms=7, color=NAVY, zorder=4)
        ax.annotate(f"x = {r}", (r, 0), textcoords="offset points", xytext=(6, 12),
                    fontsize=9.5, color=NAVY, fontweight="bold")
    ax.annotate("local maximum", (0.786, 2.1), textcoords="offset points", xytext=(-60, 26),
                fontsize=9, color=AMBER, arrowprops=dict(arrowstyle="->", color=AMBER))
    ax.annotate("local minimum", (2.88, -1.9), textcoords="offset points", xytext=(40, -28),
                fontsize=9, color=RED, arrowprops=dict(arrowstyle="->", color=RED))
    ax.set_title("y = (x + 1)(x − 2)(x − 3): three roots, two turning points, opposite end behaviour",
                 color=NAVY, fontsize=11, fontweight="bold", loc="left")
    axes_style(ax)
    ax.set_xlim(-1.8, 4.2)
    ax.set_ylim(-7, 7)
    save(fig, "ch02_cubic_shape.svg")


# ── Chapter 3 ──────────────────────────────────────────────────────────────
def ch03_three_forms():
    b = [t(450, 24, "ONE QUADRATIC, THREE DISGUISES", size=12, weight="bold")]
    boxes = [(20, "STANDARD", "y = ax² + bx + c", ["2x² − 8x + 6", "read c as the y-intercept"], GREEN),
             (320, "FACTORISED", "y = a(x − p)(x − q)", ["2(x − 1)(x − 3)", "read p, q as the roots"], BLUE),
             (620, "VERTEX", "y = a(x − h)² + k", ["2(x − 2)² − 2", "read (h, k) as the turning point"], PURPLE)]
    for x, head, form, body, col in boxes:
        b.append(rect(x, 54, 260, 120, "#FFFFFF", col, 8, 1.5))
        b.append(t(x + 130, 78, head, size=9.6, weight="bold", fill=col))
        b.append(t(x + 130, 104, form, size=13, weight="bold"))
        b.append(lines(x + 130, 128, body, size=9, fill=MUTED, gap=16))
    b.append(arrow(282, 114, 318, 114, AMBER, 1.6, "aa"))
    b.append(arrow(602, 114, 618, 114, AMBER, 1.6, "aa"))
    b.append(t(300, 100, "expand", size=8.6, fill=AMBER))
    b.append(t(610, 100, "complete", size=8.6, fill=AMBER))
    b.append(t(610, 142, "the square", size=8.6, fill=AMBER))
    b.append(t(450, 210, "All three describe the same parabola: a = 2 (upright, narrow), vertex (2, −2), roots 1 and 3.",
               size=9.6, fill=MUTED))
    write_svg("ch03_three_forms.svg", svg(900, 230, "\n".join(b)))


def ch03_discriminant_gallery():
    fig, axs = plt.subplots(1, 3, figsize=(8.4, 2.9))
    x = np.linspace(-3, 3, 400)
    cases = [(x ** 2 - 4, "Δ > 0: two real roots", [-2, 2], GREEN),
             (x ** 2, "Δ = 0: one repeated root", [0], AMBER),
             (x ** 2 + 1, "Δ < 0: no real roots", [], RED)]
    for ax, (y, title, roots, col) in zip(axs, cases):
        ax.plot(x, y, color=col, lw=2.4)
        for r in roots:
            ax.plot([r], [0], "o", ms=7, color=NAVY, zorder=4)
        ax.set_title(title, fontsize=9.8, color=NAVY, fontweight="bold")
        ax.set_ylim(-3, 6)
        ax.set_xlim(-3, 3)
        axes_style(ax)
        ax.tick_params(labelsize=8)
        ax.set_xlabel("x", fontsize=9)
        ax.set_ylabel("y", fontsize=9)
    fig.tight_layout()
    save(fig, "ch03_discriminant_gallery.svg")


def ch03_completing_square():
    b = [t(400, 24, "COMPLETING THE SQUARE AS A PICTURE:  x² + bx", size=12, weight="bold")]
    # big square x by x
    b.append(rect(70, 60, 150, 150, GREEN_LIGHT, GREEN, 4, 1.4))
    b.append(t(145, 140, "x²", size=20, weight="bold", fill=GREEN))
    b.append(t(145, 48, "x", size=11, fill=GREEN))
    b.append(t(58, 140, "x", size=11, fill=GREEN))
    # two rectangles b/2 by x
    b.append(rect(220, 60, 75, 150, BLUE_LIGHT, BLUE, 4, 1.4))
    b.append(t(257, 140, "½bx", size=13, weight="bold", fill=BLUE))
    b.append(rect(70, 210, 150, 75, BLUE_LIGHT, BLUE, 4, 1.4))
    b.append(t(145, 253, "½bx", size=13, weight="bold", fill=BLUE))
    # small completing square
    b.append(rect(220, 210, 75, 75, AMBER_LIGHT, AMBER, 4, 1.4))
    b.append(t(257, 253, "¼b²", size=13, weight="bold", fill=AMBER))
    b.append(t(257, 300, "the piece needed to complete", size=8.8, fill=AMBER))
    b.append(arrow(300, 248, 336, 200, NAVY, 1.4, "an"))
    b.append(t(300, 292, "", size=8))
    # result
    b.append(rect(390, 90, 360, 130, "#FFFFFF", NAVY, 8, 1.4))
    b.append(t(570, 118, "x² + bx + ¼b² = (x + ½b)²", size=17, weight="bold"))
    b.append(t(570, 148, "so   x² + bx = (x + ½b)² − ¼b²", size=13, fill=SLATE))
    b.append(t(570, 180, "In general:  x² + bx = (x + b/2)² − (b/2)²", size=11, fill=GREEN))
    b.append(t(570, 202, "and for ax² + bx + c, take out a first.", size=9.4, fill=MUTED))
    write_svg("ch03_completing_square.svg", svg(780, 320, "\n".join(b)))


def ch03_parabola_features():
    fig, ax = plt.subplots(figsize=(7.4, 4.0))
    x = np.linspace(-0.4, 4.4, 400)
    y = x ** 2 - 4 * x + 3
    ax.plot(x, y, color=GREEN, lw=2.6)
    ax.plot([1, 3], [0, 0], "o", ms=7, color=NAVY, zorder=5)
    ax.plot([2], [-1], "o", ms=7, color=RED, zorder=5)
    ax.plot([0], [3], "o", ms=6, color=AMBER, zorder=5)
    ax.axvline(2, color=RED, ls="--", lw=1.2)
    ax.annotate("roots: x = 1, x = 3", (2, 0), textcoords="offset points", xytext=(-20, 26),
                fontsize=9.5, color=NAVY)
    ax.annotate("vertex (2, −1)\nminimum", (2, -1), textcoords="offset points", xytext=(46, -6),
                fontsize=9.5, color=RED, arrowprops=dict(arrowstyle="->", color=RED))
    ax.annotate("axis of symmetry x = 2", (2, 2.4), textcoords="offset points", xytext=(10, 6),
                fontsize=9, color=RED)
    ax.annotate("y-intercept (0, 3) = c", (0, 3), textcoords="offset points", xytext=(12, 8),
                fontsize=9, color=AMBER)
    ax.set_title("y = x² − 4x + 3: every quadratic graph question reads these four features",
                 color=NAVY, fontsize=10.5, fontweight="bold", loc="left")
    axes_style(ax)
    ax.set_xlim(-0.6, 4.6)
    ax.set_ylim(-2, 6)
    save(fig, "ch03_parabola_features.svg")


def ch03_root_coefficient_map():
    b = [t(430, 24, "FROM COEFFICIENTS TO ROOTS — AND BACK", size=12, weight="bold")]
    b.append(rect(230, 50, 400, 56, NAVY, NAVY, 8, 1))
    b.append(t(430, 84, "a x² + b x + c = 0 ,   a ≠ 0", size=17, weight="bold", fill="#FFFFFF"))
    b.append(arrow(360, 108, 210, 152, GREEN, 1.8, "ag"))
    b.append(arrow(500, 108, 650, 152, GREEN, 1.8, "ag"))
    b.append(rect(40, 156, 340, 92, GREEN_LIGHT, GREEN, 8, 1.4))
    b.append(t(210, 182, "SUM OF ROOTS", size=9.4, weight="bold", fill=GREEN))
    b.append(t(210, 212, "α + β = − b / a", size=19, weight="bold", fill=GREEN))
    b.append(t(210, 236, "note the MINUS sign", size=9, fill=MUTED))
    b.append(rect(480, 156, 340, 92, BLUE_LIGHT, BLUE, 8, 1.4))
    b.append(t(650, 182, "PRODUCT OF ROOTS", size=9.4, weight="bold", fill=BLUE))
    b.append(t(650, 212, "α β = c / a", size=19, weight="bold", fill=BLUE))
    b.append(t(650, 236, "no sign change", size=9, fill=MUTED))
    b.append(rect(40, 264, 780, 62, "#FFFFFF", AMBER, 8, 1.4))
    b.append(t(430, 286, "Building the equation from the roots:   x² − (α + β)x + (α β) = 0", size=12.5, weight="bold"))
    b.append(t(430, 310, "α² + β² = (α + β)² − 2αβ        (α − β)² = (α + β)² − 4αβ", size=10.4, fill=SLATE))
    write_svg("ch03_root_coefficient_map.svg", svg(860, 340, "\n".join(b)))


# ── Chapter 4 ──────────────────────────────────────────────────────────────
def ch04_three_cases_lines():
    fig, axs = plt.subplots(1, 3, figsize=(8.4, 2.9))
    x = np.linspace(-1, 5, 200)
    cases = [
        ("Unique solution", [(2 * x + 1, GREEN), (-x + 4, BLUE)], (1, 3)),
        ("No solution (parallel)", [(2 * x + 1, GREEN), (2 * x - 3, BLUE)], None),
        ("Infinitely many (same line)", [(x + 1, GREEN), (2 * x + 2, BLUE)], None),
    ]
    for ax, (title, legs, pt) in zip(axs, cases):
        for y, col in legs:
            ax.plot(x, y, color=col, lw=2.2)
        if pt:
            ax.plot([pt[0]], [pt[1]], "o", ms=7, color=RED, zorder=5)
        ax.set_title(title, fontsize=9.6, color=NAVY, fontweight="bold")
        ax.set_xlim(-1, 5)
        ax.set_ylim(-3, 7)
        axes_style(ax)
        ax.tick_params(labelsize=8)
    fig.tight_layout()
    save(fig, "ch04_three_cases_lines.svg")


def ch04_elimination_flow():
    b = [t(450, 24, "THE ELIMINATION ENGINE", size=12, weight="bold")]
    steps = [("1", "Match coefficients", "multiply each equation by\nthe LCM of the coefficients"),
             ("2", "Add or subtract", "the matched variable\nvanishes (watch the signs)"),
             ("3", "Solve the survivor", "one equation,\none unknown"),
             ("4", "Back-substitute", "put the value into the\nsimpler original equation"),
             ("5", "Check both", "the pair must satisfy\nBOTH equations")]
    for i, (n, head, body) in enumerate(steps):
        x = 14 + i * 176
        b.append(rect(x, 54, 160, 118, "#FFFFFF", GREEN if i % 2 == 0 else BLUE, 8, 1.4))
        b.append(f'<circle cx="{x + 22}" cy="{72}" r="12" fill="{NAVY}"/>')
        b.append(t(x + 22, 77, n, size=11, weight="bold", fill="#FFFFFF"))
        b.append(t(x + 92, 76, head, size=9.6, weight="bold"))
        for j, s in enumerate(body.split("\n")):
            b.append(t(x + 80, 100 + j * 15, s, size=8.2, fill=SLATE))
        if i < 4:
            b.append(arrow(x + 162, 112, x + 174, 112, AMBER, 1.4, "aa"))
    b.append(t(450, 200, "Word problems: define the two unknowns in words FIRST, then translate each sentence into one equation.",
               size=9.4, fill=MUTED))
    write_svg("ch04_elimination_flow.svg", svg(900, 216, "\n".join(b)))


def ch04_line_parabola():
    fig, axs = plt.subplots(1, 3, figsize=(8.4, 3.0))
    x = np.linspace(-2.2, 3.2, 400)
    para = x ** 2 - 2 * x
    cases = [("No intersection\n(no real solution)", -6.0, RED),
             ("One intersection\n(tangent: repeated root)", -4.0, AMBER),
             ("Two intersections\n(two solutions)", 0.0, GREEN)]
    for ax, (title, b, col) in zip(axs, cases):
        ax.plot(x, para, color=GREEN, lw=2.2)
        ax.plot(x, 2 * x + b, color=col, lw=2.2)
        ax.set_title(title, fontsize=9.4, color=NAVY, fontweight="bold")
        ax.set_xlim(-2.2, 3.2)
        ax.set_ylim(-3, 5)
        axes_style(ax)
        ax.tick_params(labelsize=8)
    fig.suptitle("Line meets parabola: substitute, then read the discriminant", fontsize=10.5,
                 color=NAVY, fontweight="bold", x=0.02, ha="left")
    fig.tight_layout()
    save(fig, "ch04_line_parabola.svg")


def ch04_three_by_three_cascade():
    b = [t(450, 22, "THREE UNKNOWNS BY CASCADE", size=12, weight="bold")]
    b.append(rect(30, 44, 250, 108, "#FFFFFF", NAVY, 8, 1.4))
    b.append(t(155, 66, "THE SYSTEM", size=9.2, weight="bold", fill=NAVY))
    b.append(lines(155, 88, ["(1)  x + y + z = 6", "(2)  2x − y + z = 3", "(3)  x + 2y − z = 2"],
                   size=9, fill=SLATE, gap=17))
    b.append(arrow(284, 98, 318, 98))
    b.append(rect(322, 44, 250, 108, BLUE_LIGHT, BLUE, 8, 1.4))
    b.append(t(447, 66, "ELIMINATE x", size=9.2, weight="bold", fill=BLUE))
    b.append(lines(447, 88, ["(2) − 2(1)  ⇒  −3y − z = −9", "(3) − (1)   ⇒   y − 2z = −4"],
                   size=9, fill=SLATE, gap=17))
    b.append(arrow(576, 98, 610, 98, BLUE, 1.6, "an"))
    b.append(rect(614, 44, 256, 108, AMBER_LIGHT, AMBER, 8, 1.4))
    b.append(t(742, 66, "SOLVE THE PAIR", size=9.2, weight="bold", fill=AMBER))
    b.append(lines(742, 88, ["y = 2z − 4", "−3(2z − 4) − z = −9", "⇒ z = 3, y = 2"],
                   size=9, fill=SLATE, gap=17))
    b.append(arrow(742, 154, 742, 184, AMBER, 1.6, "aa"))
    b.append(rect(500, 188, 380, 62, GREEN_LIGHT, GREEN, 8, 1.4))
    b.append(t(690, 212, "Back-substitute:  x + 2 + 3 = 6  ⇒  x = 1", size=11, weight="bold", fill=GREEN))
    b.append(t(690, 236, "Solution (1, 2, 3); check all three original equations.", size=8.8, fill=MUTED))
    b.append(t(190, 216, "Always eliminate the same", size=9, fill=MUTED))
    b.append(t(190, 232, "variable from both pairs.", size=9, fill=MUTED))
    write_svg("ch04_three_by_three_cascade.svg", svg(900, 268, "\n".join(b)))
