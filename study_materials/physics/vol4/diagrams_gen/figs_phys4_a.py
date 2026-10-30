"""Volume 4 figures, part A: the cover, the weight chart and Chapter 1.

Electricity is the one topic in the syllabus that is drawn rather than
described: a field, a circuit and a capacitor all mean more as a picture than
as a paragraph. Every figure here is measured against its canvas by
`tools/check_figs.py` before it goes into the book.
"""

from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from common import (
    AMBER, AMBER_LIGHT, BLUE, BLUE_LIGHT, BORDER, GREEN, GREEN_LIGHT, LIGHT_BG,
    MUTED, NAVY, PURPLE, PURPLE_LIGHT, RED, RED_LIGHT, SLATE,
    arrow2, axes_style, card, dot, line, path, poly, recap_card, rect, save,
    svg, t, write_svg,
)

FIGURES = [
    "cover_banner", "utme_weight",
    "ch01_charging", "ch01_coulomb", "ch01_field", "ch01_capacitor",
    "recap_ch01",
]


# ── cover ───────────────────────────────────────────────────────────────────
def cover_banner():
    w, h = 760, 176
    b = [rect(0, 0, w, h, "#0B2036", "#0B2036", 10, 1.0)]
    b.append(t(380, 34, "CHARGE · CURRENT · FIELD · ATOM", size=17, weight="bold", fill="#FFFFFF"))
    b.append(line(120, 46, 640, 46, color="#34D399", sw=1.2))
    chips = ["Electrostatics", "Capacitors", "Current electricity", "Resistance",
             "Magnetism", "Induction", "The transformer", "Semiconductors",
             "Logic gates", "The photoelectric effect", "Energy levels", "Radioactivity"]
    cols = 3
    for i, c in enumerate(chips):
        r, k = divmod(i, cols)
        x = 40 + k * 240
        y = 58 + r * 26
        b.append(rect(x, y, 220, 22, "#12314F", "#34D399", 5, 1.0))
        b.append(t(x + 110, y + 15, c, size=8.6, fill="#E2E8F0"))
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg="#0B2036"))


def utme_weight():
    fig, ax = plt.subplots(figsize=(6.0, 2.5))
    chapters = ["1 Electrostatics", "2 Current electricity", "3 Magnetism",
                "4 Electronics", "5 Atomic physics", "6 Radioactivity"]
    weights = [4, 4, 3, 3, 4, 4]
    cols = [GREEN if v >= 4 else "#34D399" for v in weights]
    bars = ax.barh(chapters[::-1], weights[::-1], color=cols[::-1], height=0.62)
    for bar, v in zip(bars, weights[::-1]):
        ax.text(v + 0.08, bar.get_y() + bar.get_height() / 2, f"{v}", va="center",
                fontsize=8, color=NAVY)
    ax.set_xlim(0, 5.2)
    ax.set_xlabel("average questions in a UTME paper")
    ax.set_title("WHERE THE ELECTRICITY AND ATOM MARKS SIT", fontsize=9.2, color=NAVY, weight="bold")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(axis="x", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "utme_weight.svg")


# ── 1.1 charging ────────────────────────────────────────────────────────────
def ch01_charging():
    w, h = 680, 312
    b = [t(340, 20, "TWO WAYS TO PUT A CHARGE ON A BODY", size=10.6, weight="bold")]

    # ── panel A: friction
    b.append(rect(14, 34, 310, 264, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(169, 52, "CHARGING BY FRICTION", size=9.2, weight="bold", fill=GREEN))

    b.append(rect(40, 70, 150, 20, "#CBD5E1", SLATE, 3, 1.2))
    b.append(t(115, 104, "polythene rod", size=8.4, fill=SLATE))
    for i in range(4):
        b.append(t(60 + i * 34, 66, "−", size=13, weight="bold", fill=BLUE))

    b.append(rect(40, 150, 150, 20, "#FDE68A", AMBER, 3, 1.2))
    b.append(t(115, 184, "silk cloth", size=8.4, fill=SLATE))
    for i in range(4):
        b.append(t(60 + i * 34, 146, "+", size=12, weight="bold", fill=RED))

    b.append(arrow2(118, 140, 118, 118, color=GREEN, sw=1.6, size=7))
    b.append(t(196, 132, "electrons", size=8.2, fill=GREEN, anchor="start"))
    b.append(t(196, 144, "move up", size=8.2, fill=GREEN, anchor="start"))

    b.append(t(169, 214, "Equal and opposite charges appear:", size=8.6, fill=NAVY))
    b.append(t(169, 228, "the rod gains −, the cloth gains +.", size=8.6, fill=NAVY))
    b.append(t(169, 252, "Only electrons move. Protons", size=8.4, fill=MUTED))
    b.append(t(169, 265, "never leave the nucleus.", size=8.4, fill=MUTED))

    # ── panel B: induction
    b.append(rect(336, 34, 330, 264, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(501, 52, "CHARGING BY INDUCTION", size=9.2, weight="bold", fill=GREEN))

    # neutral sphere on a stand
    cx, cy, r = 500, 118, 30
    b.append(dot(cx, cy, r, "#F1F5F9", SLATE, 1.5))
    b.append(rect(cx - 3, cy + r, 6, 26, "#94A3B8", "#94A3B8", 2, 1.0))
    b.append(rect(cx - 26, cy + r + 26, 52, 7, "#94A3B8", "#94A3B8", 2, 1.0))
    b.append(t(cx, cy + r + 52, "metal sphere on an insulating stand", size=8.2, fill=SLATE))

    # charged rod brought near
    b.append(rect(352, 110, 54, 16, "#CBD5E1", SLATE, 3, 1.2))
    for i in range(3):
        b.append(t(364 + i * 16, 106, "−", size=12, weight="bold", fill=BLUE))
    b.append(arrow2(410, 118, 444, 118, color=RED, sw=1.6, size=7))
    b.append(t(392, 146, "charged rod", size=8.2, fill=SLATE))

    # induced charges inside the sphere
    b.append(t(cx - 14, cy + 5, "+", size=12, weight="bold", fill=RED))
    b.append(t(cx + 10, cy + 5, "−", size=13, weight="bold", fill=BLUE))

    # earth wire
    b.append(line(560, 118, 600, 118, color=SLATE, sw=1.6))
    b.append(arrow2(600, 118, 600, 150, color=SLATE, sw=1.6, size=7))
    b.append(t(614, 140, "earth", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(580, 100, "electrons", size=8.2, fill=GREEN))
    b.append(t(580, 88, "leave", size=8.2, fill=GREEN))

    b.append(t(501, 214, "Earth the far side, remove the rod,", size=8.6, fill=NAVY))
    b.append(t(501, 228, "and the sphere is left positively", size=8.6, fill=NAVY))
    b.append(t(501, 242, "charged — with no contact at all.", size=8.6, fill=NAVY))
    b.append(t(501, 268, "The rod never loses any charge.", size=8.4, fill=MUTED))

    write_svg("ch01_charging.svg", svg(w, h, "\n".join(b)))


# ── 1.2 Coulomb ─────────────────────────────────────────────────────────────
def ch01_coulomb():
    fig, ax = plt.subplots(figsize=(6.0, 2.7))
    r = np.linspace(0.42, 4.0, 300)
    F = 1.0 / r**2
    ax.plot(r, F, color=GREEN, lw=2.0)
    pts_r = np.array([1.0, 2.0, 3.0, 4.0])
    ax.plot(pts_r, 1.0 / pts_r**2, "o", color=NAVY, ms=4.6, zorder=3)
    for x0 in (1.0, 2.0):
        ax.annotate("", xy=(2 * x0, 0.06), xytext=(x0, 0.06),
                    arrowprops=dict(arrowstyle="<->", color=MUTED, lw=1.0))
    ax.annotate("double r → quarter F", xy=(2.2, 0.20), fontsize=8.2, color=NAVY)
    ax.annotate("triple r → one-ninth F", xy=(2.35, 0.09), fontsize=8.2, color=MUTED)
    ax.set_xlim(0, 4.3)
    ax.set_ylim(0, 1.25)
    ax.set_xlabel("separation r (arbitrary units)")
    ax.set_ylabel("force F (arbitrary units)")
    ax.set_title("COULOMB'S LAW: F ALLS AS 1/r²", fontsize=9.2, color=NAVY, weight="bold")
    axes_style(ax, "separation r (arbitrary units)", "force F (arbitrary units)", zero=False)
    save(fig, "ch01_coulomb.svg")


# ── 1.3 electric fields ─────────────────────────────────────────────────────
def _field_panel(x, y, w, h, title, draw):
    out = [rect(x, y, w, h, "#FFFFFF", BORDER, 6, 1.1),
           t(x + w / 2, y + 16, title, size=8.4, weight="bold", fill=NAVY)]
    out.append(draw(x + w / 2, y + 18 + (h - 24) / 2, w, h - 24))
    return "\n".join(out)


def ch01_field():
    w, h = 680, 330
    b = [t(340, 20, "FIELD LINES SHOW THE FORCE A POSITIVE CHARGE WOULD FEEL", size=10.6, weight="bold")]

    W, H = 214, 138
    xs = [14, 236, 458]
    ys = [34, 186]

    # (a) isolated positive charge
    def draw_pos(cx, cy, ww, hh):
        out = [dot(cx, cy, 7, RED)]
        for k in range(8):
            a = k * np.pi / 4
            out.append(arrow2(cx + 12 * np.cos(a), cy + 12 * np.sin(a),
                              cx + 42 * np.cos(a), cy + 42 * np.sin(a),
                              color=GREEN, sw=1.3, size=5.5))
        return "\n".join(out)

    # (b) isolated negative charge
    def draw_neg(cx, cy, ww, hh):
        out = [dot(cx, cy, 7, BLUE)]
        for k in range(8):
            a = k * np.pi / 4
            out.append(arrow2(cx + 42 * np.cos(a), cy + 42 * np.sin(a),
                              cx + 12 * np.cos(a), cy + 12 * np.sin(a),
                              color=GREEN, sw=1.3, size=5.5))
        return "\n".join(out)

    # (c) unlike pair: three arcs from + to −, and straight lines between
    def draw_pair(cx, cy, ww, hh):
        left, right = cx - 46, cx + 46
        out = [dot(left, cy, 7, RED), dot(right, cy, 7, BLUE)]
        for dy in (-14, 0, 14):
            out.append(arrow2(left + 9, cy + dy, right - 9, cy + dy,
                              color=GREEN, sw=1.2, size=5.0))
        for k, (lift, spread) in enumerate(((26, 16), (44, 26), (58, 34))):
            out.append(path(f"M {left} {cy - spread} C {left + 14} {cy - lift - 16}, "
                            f"{right - 14} {cy - lift - 16}, {right} {cy - spread}",
                            stroke=GREEN, sw=1.1))
            out.append(path(f"M {left} {cy + spread} C {left + 14} {cy + lift + 16}, "
                            f"{right - 14} {cy + lift + 16}, {right} {cy + spread}",
                            stroke=GREEN, sw=1.1))
        return "\n".join(out)

    # (d) like pair
    def draw_like(cx, cy, ww, hh):
        left, right = cx - 40, cx + 40
        out = [dot(left, cy, 7, RED), dot(right, cy, 7, RED)]
        out.append(path(f"M {left + 8} {cy - 6} C {left + 30} {cy - 46}, "
                        f"{right - 30} {cy - 46}, {right - 8} {cy - 6}",
                        stroke=GREEN, sw=1.2))
        for s in (-1, 1):
            out.append(arrow2(left, cy + s * 12, left - 26, cy + s * 30, color=GREEN, sw=1.2, size=5.0))
            out.append(arrow2(right, cy + s * 12, right + 26, cy + s * 30, color=GREEN, sw=1.2, size=5.0))
        return "\n".join(out)

    # (e) uniform field between plates
    def draw_uniform(cx, cy, ww, hh):
        out = []
        top, bot = cy - 34, cy + 34
        out.append(rect(cx - 62, top - 8, 124, 8, RED, RED, 2, 1.0))
        out.append(rect(cx - 62, bot, 124, 8, BLUE, BLUE, 2, 1.0))
        out.append(t(cx - 78, top - 2, "+", size=11, weight="bold", fill=RED, anchor="end"))
        out.append(t(cx - 78, bot + 9, "−", size=12, weight="bold", fill=BLUE, anchor="end"))
        for k in range(5):
            x = cx - 48 + k * 24
            out.append(arrow2(x, top + 3, x, bot - 3, color=GREEN, sw=1.2, size=5.5))
        return "\n".join(out)

    # (f) field round a point, spacing
    def draw_radial(cx, cy, ww, hh):
        out = [dot(cx, cy, 7, RED)]
        for k in range(6):
            a = k * np.pi / 3
            for rr in (16, 30, 44):
                out.append(dot(cx + rr * np.cos(a), cy + rr * np.sin(a), 2.0, GREEN))
            out.append(arrow2(cx + 12 * np.cos(a), cy + 12 * np.sin(a),
                              cx + 50 * np.cos(a), cy + 50 * np.sin(a),
                              color=GREEN, sw=1.2, size=5.5))
        return "\n".join(out)

    panels = [
        ("(a) positive charge: lines out", draw_pos),
        ("(b) negative charge: lines in", draw_neg),
        ("(c) unlike pair: attraction", draw_pair),
    ]
    panels2 = [
        ("(d) like pair: repulsion", draw_like),
        ("(e) uniform field between plates", draw_uniform),
        ("(f) crowded lines = strong field", draw_radial),
    ]
    for row, (yy, group) in enumerate(((ys[0], panels), (ys[1], panels2))):
        for k, (title, draw) in enumerate(group):
            b.append(_field_panel(xs[k], yy, W, H, title, draw))

    write_svg("ch01_field.svg", svg(w, h, "\n".join(b)))


# ── 1.4 capacitor ───────────────────────────────────────────────────────────
def ch01_capacitor():
    w, h = 660, 292
    b = [t(330, 20, "A CAPACITOR STORES CHARGE ON TWO PLATES, NOT CURRENT", size=10.6, weight="bold")]

    # ── left: the plates
    b.append(rect(14, 34, 318, 244, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(173, 52, "TWO PLATES OF AREA A, d APART", size=9.0, weight="bold", fill=GREEN))

    xl, xr, ytop, ybot = 104, 244, 80, 184
    b.append(rect(xl, ytop, 10, ybot - ytop, RED, RED, 2, 1.0))
    b.append(rect(xr, ytop, 10, ybot - ytop, BLUE, BLUE, 2, 1.0))
    b.append(t(xl + 5, ytop - 10, "+Q", size=9.6, weight="bold", fill=RED))
    b.append(t(xr + 5, ytop - 10, "−Q", size=9.6, weight="bold", fill=BLUE))

    for i in range(4):
        yy = ytop + 16 + i * 28
        b.append(arrow2(xl + 16, yy, xr - 6, yy, color=GREEN, sw=1.2, size=5.5))

    # separation marker
    b.append(line(xl + 10, ybot + 14, xr, ybot + 14, color=SLATE, sw=1.0, dash="3 3"))
    b.append(arrow2((xl + xr + 10) / 2, ybot + 26, xl + 10, ybot + 26, color=SLATE, sw=1.0, size=4.5))
    b.append(arrow2((xl + xr + 10) / 2, ybot + 26, xr, ybot + 26, color=SLATE, sw=1.0, size=4.5))
    b.append(t((xl + xr) / 2 + 5, ybot + 40, "d", size=9.4, weight="bold", fill=SLATE))

    b.append(t(173, 246, "Field E = V/d, uniform between the plates.", size=8.4, fill=NAVY))
    b.append(t(173, 264, "Equal and opposite charge +Q on each plate.", size=8.2, fill=MUTED))

    # ── right: the formulae
    b.append(rect(344, 34, 302, 244, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(495, 52, "THE THREE LINES TO KNOW", size=9.0, weight="bold", fill=GREEN))

    rows = [
        ("Definition", "C = Q / V", "one farad = one coulomb per volt"),
        ("Geometry", "C = ε₀εᵣA / d", "bigger A or smaller d gives bigger C"),
        ("Energy stored", "W = ½CV² = ½QV", "the work done charging it"),
    ]
    y = 74
    for head, formula, note in rows:
        b.append(rect(358, y, 274, 56, LIGHT_BG, BORDER, 5, 1.0))
        b.append(t(370, y + 17, head, size=8.4, weight="bold", fill=SLATE, anchor="start"))
        b.append(t(478, y + 30, formula, size=10.4, weight="bold", fill=NAVY))
        b.append(t(478, y + 46, note, size=7.8, fill=MUTED))
        y += 64

    b.append(t(495, 262, "The dielectric raises C by εᵣ; at fixed Q the p.d. falls.", size=8.2, fill=NAVY))
    b.append(t(495, 276, "Charged, it blocks d.c. — and it passes a.c.", size=8.2, fill=MUTED))

    write_svg("ch01_capacitor.svg", svg(w, h, "\n".join(b)))


# ── recap card ──────────────────────────────────────────────────────────────
def recap_ch01():
    recap_card(
        "recap_ch01.svg",
        "Chapter 1 recap card — electrostatics",
        [
            ("The two laws",
             "Like charges repel, unlike attract. Charge is conserved and comes in "
             "multiples of e = 1.6 × 10⁻¹⁹ C."),
            ("Coulomb",
             "F = kq₁q₂/r² with k = 9.0 × 10⁹; inverse square, so doubling r quarters F."),
            ("Field and potential",
             "E = F/q, and between parallel plates E = V/d. Field lines run from + to −."),
            ("The capacitor",
             "C = Q/V, C = ε₀ε_rA/d, W = ½CV². A capacitor stores charge; it does not pass d.c."),
        ],
    )
