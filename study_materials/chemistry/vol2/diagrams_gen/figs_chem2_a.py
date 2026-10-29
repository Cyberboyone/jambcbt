"""Vector diagrams for Chapters 1–2 of JAMB Chemistry Volume 2.

Physics/mathematics figures are drawn with matplotlib (so scales and curves
are true); schematics are hand-written SVG for exact control of boxes.
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from common import (  # noqa: E402
    GREEN, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, BORDER, AMBER, AMBER_LIGHT,
    RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT, LIGHT_BG,
    rect, t, lines, arrow2, line, dot, poly, path, recap_card, write_svg, svg, save,
    plt, np,
)

CHAPTERS = [
    "Acids,\nbases\n& salts",
    "Solutions &\nsolubility",
    "Chemical\nenergetics",
    "Rates of\nreaction",
    "Chemical\nequilibrium",
    "Redox &\nelectro-\nchemistry",
]
WEIGHTS = [5, 3, 3, 3, 3, 4]


def cover_banner():
    w, h = 760, 150
    b = [rect(0, 0, w, h, GREEN_LIGHT, GREEN, 10, 1.4),
         f'<rect x="0" y="0" width="{w}" height="6" rx="3" fill="{GREEN}"/>',
         t(380, 46, "ACIDS  •  ENERGY  •  RATES  •  EQUILIBRIUM  •  ELECTRONS", size=14.4, weight="bold"),
         t(380, 72, "pH and Titration, Solubility, Energetics, Kinetics,", size=11, fill=SLATE),
         t(380, 90, "Le Chatelier's Principle, Redox and Electrolysis", size=11, fill=SLATE),
         t(380, 120, "240 drill questions · two 40-question CBT mocks · 120-question master bank · 40 rapid-fire pairs",
           size=9.4, fill=MUTED)]
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg="#0E1F40"))


def utme_weight_chart():
    fig, ax = plt.subplots(figsize=(7.6, 3.0))
    colors = [GREEN if v >= 4 else (BLUE if v == 3 else PURPLE) for v in WEIGHTS]
    bars = ax.bar(range(len(CHAPTERS)), WEIGHTS, color=colors, edgecolor="white",
                  linewidth=1.1, width=0.66)
    for b, v in zip(bars, WEIGHTS):
        ax.text(b.get_x() + b.get_width() / 2, v + 0.08, str(v), ha="center",
                fontsize=10, color=NAVY, fontweight="bold")
    ax.set_ylim(0, 6.0)
    ax.set_xticks(range(len(CHAPTERS)))
    ax.set_xticklabels(CHAPTERS, fontsize=7.8)
    ax.set_ylabel("Typical questions")
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)
    ax.set_yticks([0, 1, 2, 3, 4, 5])
    ax.grid(axis="y", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "utme_weight.svg")


# ── chapter 1: acids, bases and salts ─────────────────────────────────────
def ch01_phscale():
    """A pH ladder with the colours of universal indicator and named examples."""
    w, h = 760, 268
    b = [t(380, 24, "THE pH SCALE: EVERY COLOUR, AND WHAT SITS ON IT", size=12.4, weight="bold")]
    n = 15
    x0, x1, y = 40, 720, 48
    colours = ["#B91C1C", "#C2410C", "#D97706", "#CA8A04", "#65A30D", "#16A34A", "#059669",
               "#0D9488", "#0891B2", "#0284C7", "#2563EB", "#4F46E5", "#6D28D9", "#7E22CE", "#581C87"]
    cw = (x1 - x0) / n
    for i in range(n):
        b.append(f'<rect x="{x0 + i * cw:.1f}" y="{y}" width="{cw:.1f}" height="34" fill="{colours[i]}"/>')
        b.append(t(x0 + i * cw + cw / 2, y + 22, str(i), size=10.5, fill="#FFFFFF", weight="bold"))
    b.append(rect(x0, y, x1 - x0, 34, "none", NAVY, 0, 1.2))

    items = [
        (x0 + 0.6 * cw, "stomach acid", "pH 1.5", RED),
        (x0 + 2.6 * cw, "lemon juice", "pH 2.5", AMBER),
        (x0 + 4.4 * cw, "black coffee", "pH 5", "#A16207"),
        (x0 + 6.9 * cw, "pure water", "pH 7", GREEN),
        (x0 + 8.6 * cw, "sea water", "pH 8", BLUE),
        (x0 + 10.6 * cw, "soap", "pH 10", PURPLE),
        (x0 + 12.6 * cw, "oven cleaner", "pH 13", "#581C87"),
    ]
    for x, _head, _sub, col in items:
        b.append(line(x, y + 34, x, y + 44, color=col, sw=1.0))
        b.append(dot(x, y + 47, 2.6, fill=col))

    zone_y = y + 74
    b.append(t(x0 + 2 * cw, zone_y, "ACIDIC · [H⁺] high", size=9.2, weight="bold", fill=RED))
    b.append(t((x0 + x1) / 2, zone_y, "NEUTRAL · pH 7 at 25 °C", size=9.2, weight="bold", fill=NAVY))
    b.append(t(x1 - 2 * cw, zone_y, "BASIC · [OH⁻] high", size=9.2, weight="bold", fill=PURPLE))

    for x, head, sub, _col in items:
        b.append(t(x, y + 98, head, size=8.2, fill=SLATE))
        b.append(t(x, y + 110, sub, size=8.2, fill=MUTED))

    b.append(rect(40, 196, 680, 56, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(380, 216, "Each step of 1 on the scale is a factor of 10 in [H⁺]  ·  pH = −log₁₀[H⁺]", size=9.4, fill=GREEN, weight="bold"))
    b.append(t(380, 234, "pH 2 is a hundred times more acidic than pH 4, and pH 12 is ten times more basic than pH 11.", size=8.2, fill=SLATE))
    write_svg("ch01_phscale.svg", svg(w, h, "\n".join(b)))


def ch01_titration():
    """Burette, conical flask and the reading that matters."""
    w, h = 760, 330
    b = [t(380, 24, "THE TITRATION APPARATUS, AND WHERE THE ERROR HIDES", size=12.4, weight="bold")]

    # burette
    bx, by, bw, bh = 120, 46, 18, 150
    b.append(rect(bx, by, bw, bh, "#FFFFFF", NAVY, 3, 1.4))
    b.append(rect(bx + 2, by + 34, bw - 4, bh - 36, BLUE_LIGHT, "#FFFFFF", 0, 0))
    for i in range(9):
        b.append(line(bx, by + 12 + i * 16, bx + 5, by + 12 + i * 16, color=BORDER, sw=0.8))
    b.append(t(bx - 8, by + 18, "0", size=7.6, fill=MUTED, anchor="end"))
    b.append(t(bx - 8, by + 130, "50", size=7.6, fill=MUTED, anchor="end"))
    b.append(t(bx - 12, by + 4, "burette", size=8.6, weight="bold", anchor="end"))
    b.append(line(bx + bw / 2, by, bx + bw / 2, 30, color=NAVY, sw=1.4))
    # tap and jet
    b.append(rect(bx - 6, by + bh, 30, 10, "#FFFFFF", NAVY, 3, 1.2))
    b.append(line(bx + bw / 2, by + bh + 10, bx + bw / 2, by + bh + 26, color=NAVY, sw=1.4))
    b.append(dot(bx + bw / 2, by + bh + 30, 2.4, fill=BLUE))
    b.append(t(bx + 34, by + bh + 26, "tap", size=7.6, fill=MUTED, anchor="start"))
    # flask
    fx, fy = bx + bw / 2, 240
    b.append(poly([(fx - 12, fy - 34), (fx + 12, fy - 34), (fx + 46, fy + 52), (fx - 46, fy + 52)],
                  "#FFFFFF", NAVY, 1.4))
    b.append(poly([(fx - 40, fy + 36), (fx + 40, fy + 36), (fx + 46, fy + 52), (fx - 46, fy + 52)],
                  "#FCE7D6", "none", 0))
    b.append(t(fx + 60, fy + 6, "conical flask", size=8.6, weight="bold", anchor="start"))
    b.append(t(fx + 60, fy + 20, "25.0 cm³ of acid", size=8.0, fill=SLATE, anchor="start"))
    b.append(t(fx + 60, fy + 32, "+ 2 drops of indicator", size=8.0, fill=SLATE, anchor="start"))
    # white tile
    b.append(rect(fx - 56, fy + 54, 112, 8, "#FFFFFF", BORDER, 2, 1.0))
    b.append(t(fx, fy + 76, "white tile — the colour change is easier to see", size=7.8, fill=MUTED))

    # the reading
    rx = 400
    b.append(rect(rx, 60, 330, 116, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(rx + 14, 82, "READING THE BURETTE", size=9.4, weight="bold", fill=GREEN, anchor="start"))
    for i, s in enumerate([
        "• Read at eye level, to the bottom of the meniscus.",
        "• Record the initial and the final reading, and subtract.",
        "• Two concordant titres within 0.10 cm³ are required.",
        "• Rinse the burette with the solution it will hold,",
        "   and the pipette with the solution it will deliver.",
    ]):
        b.append(t(rx + 14, 100 + i * 14, s, size=8.2, fill=SLATE, anchor="start"))
    b.append(rect(rx, 190, 330, 108, "#FFFFFF", BORDER, 7, 1.0))
    b.append(t(rx + 14, 210, "WHY THE MENISCUS IS READ AT THE BOTTOM", size=9.0, weight="bold", fill=NAVY, anchor="start"))
    for i, s in enumerate([
        "Water wets glass and curves downwards, so the",
        "lowest point is the true volume. A reading taken at",
        "the top of the curve is always too high — and a",
        "0.5 cm³ error in 25 cm³ is a 2 % error in the answer.",
    ]):
        b.append(t(rx + 14, 228 + i * 13, s, size=8.2, fill=SLATE, anchor="start"))
    write_svg("ch01_titration.svg", svg(w, h, "\n".join(b)))


def ch01_titration_curve():
    fig, ax = plt.subplots(figsize=(7.4, 3.5))
    v = np.linspace(0, 40, 900)

    def curve(ka, c_acid=0.1, v_acid=25.0, c_base=0.1):
        n_acid = c_acid * v_acid / 1000
        n_base = c_base * v / 1000
        vtot = (v_acid + v) / 1000
        lo, hi = np.full_like(v, 1e-14), np.full_like(v, 1.0)
        for _ in range(240):
            mid = np.sqrt(lo * hi)
            frac = ka / (ka + mid)
            oh = 1e-14 / mid
            f = (n_acid * frac + mid * vtot) - (n_base + oh * vtot)
            too_low = f > 0
            lo = np.where(too_low, mid, lo)
            hi = np.where(too_low, hi, mid)
        return -np.log10(np.sqrt(lo * hi))

    ax.plot(v, curve(1e6), color=GREEN, lw=2.2, label="strong acid (HCl) + strong base")
    ax.plot(v, curve(1.8e-5), color=BLUE, lw=2.2, label="weak acid (CH₃COOH) + strong base")
    ax.axhline(7, color=MUTED, lw=0.9, ls="--")
    ax.axvline(25, color=MUTED, lw=0.9, ls=":")
    ax.set_xlim(0, 40)
    ax.set_ylim(0, 14)
    ax.set_xlabel("volume of NaOH added / cm³")
    ax.set_ylabel("pH")
    ax.set_yticks([0, 2, 4, 6, 7, 8, 10, 12, 14])
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)
    ax.legend(fontsize=7.4, loc="upper left", frameon=False, bbox_to_anchor=(0.0, 1.0))

    ax.annotate("equivalence point, 25.0 cm³:\nboth curves jump through pH 7",
                xy=(25.0, 6.9), xytext=(27.0, 2.2), fontsize=7.2, color=SLATE,
                arrowprops=dict(arrowstyle="->", color=MUTED, lw=1.0))
    ax.annotate("the steep part — an indicator\nmust change somewhere in here",
                xy=(25.4, 10.6), xytext=(28.6, 12.4), fontsize=7.2, color=SLATE,
                arrowprops=dict(arrowstyle="->", color=MUTED, lw=1.0))
    ax.text(4.6, 9.0, "the weak acid starts higher —\nits 0.1 M solution is pH 2.9,\nnot 1.0", fontsize=7.0, color=BLUE, va="top")
    ax.text(9.0, 1.9, "the strong acid starts at pH 1.0", fontsize=7.0, color=GREEN, va="top")
    save(fig, "ch01_titration_curve.svg")


# ── chapter 2: solutions and solubility ───────────────────────────────────
def ch02_solubility():
    """Four real solubility curves, drawn from tabulated data (0–60 °C)."""
    fig, ax = plt.subplots(figsize=(7.4, 3.5))
    T = np.linspace(0, 60, 300)

    def through(points):
        xs, ys = zip(*points)
        return np.interp(T, xs, ys)

    kno3 = through([(0, 13.3), (10, 20.9), (20, 31.6), (30, 45.8), (40, 63.9), (50, 85.5), (60, 110)])
    nacl = through([(0, 35.7), (10, 35.8), (20, 36.0), (30, 36.3), (40, 36.6), (50, 37.0), (60, 37.3)])
    kcl = through([(0, 27.6), (10, 31.0), (20, 34.0), (30, 37.0), (40, 40.0), (50, 42.6), (60, 45.5)])
    ce = through([(0, 21.0), (10, 14.4), (20, 9.8), (30, 7.3), (40, 5.9), (50, 4.6), (60, 3.7)])

    ax.plot(T, kno3, color=GREEN, lw=2.1, label="KNO₃ — rises steeply")
    ax.plot(T, nacl, color=BLUE, lw=2.1, label="NaCl — almost flat")
    ax.plot(T, kcl, color=AMBER, lw=2.1, label="KCl — rises steadily")
    ax.plot(T, ce, color=RED, lw=2.1, label="Ce₂(SO₄)₃ — falls with temperature")
    ax.set_xlim(0, 60)
    ax.set_ylim(0, 120)
    ax.set_xticks([0, 10, 20, 30, 40, 50, 60])
    ax.set_xlabel("temperature / °C")
    ax.set_ylabel("solubility / g per 100 g water")
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)
    ax.legend(fontsize=7.4, loc="upper left", frameon=False)

    ax.plot([60, 60], [110, 45.5], color=MUTED, lw=0.8, ls=":")
    ax.annotate("", xy=(38, 63.9), xytext=(38, 36.6),
                arrowprops=dict(arrowstyle="<->", color=GREEN, lw=1.2))
    ax.text(44, 84, "saturated KNO₃ cooled from\n40 °C to 20 °C: about 32 g\ncrystallise per 100 g water",
            fontsize=7.0, color=SLATE, va="center")
    ax.text(30, 108, "the curve is the maximum that will dissolve", fontsize=7.0, color=MUTED, ha="center")
    save(fig, "ch02_solubility.svg")


def ch02_dilution():
    """Two beakers: dilution by a factor of ten, with the mole count unchanged."""
    w, h = 760, 300
    b = [t(380, 24, "DILUTION KEEPS THE MOLES AND CHANGES THE CONCENTRATION", size=12.2, weight="bold")]

    def beaker(cx, cy, label, conc, volume, moles, tint):
        b.append(path(f"M {cx - 46} {cy} L {cx - 38} {cy + 88} Q {cx} {cy + 98} {cx + 38} {cy + 88} L {cx + 46} {cy} Z",
                      fill="#FFFFFF", stroke=NAVY, sw=1.5))
        top = cy + 88 - 44
        b.append(path(f"M {cx - 43} {top} L {cx - 38} {cy + 88} Q {cx} {cy + 98} {cx + 38} {cy + 88} L {cx + 43} {top} Z",
                      fill=tint, stroke="none", sw=0))
        for i in range(moles):
            ang = i * 2.399
            px = cx + 26 * np.cos(ang)
            py = top + 16 + 30 * (0.5 + 0.5 * np.sin(ang * 1.7))
            b.append(dot(px, py, 3.0, fill=GREEN))
        b.append(t(cx, cy - 12, label, size=9.2, weight="bold"))
        b.append(t(cx, cy + 116, conc, size=8.4, fill=SLATE))
        b.append(t(cx, cy + 130, volume, size=8.4, fill=SLATE))

    beaker(150, 66, "0.10 M, 100 cm³", "0.10 mol dm⁻³", "100 cm³ = 0.010 mol", 3, "#DCFCE7")
    b.append(arrow2(230, 120, 330, 120, color=NAVY))
    b.append(t(280, 110, "add water", size=8.0, fill=SLATE))
    b.append(t(280, 136, "to 1 dm³", size=8.0, fill=SLATE))
    beaker(420, 66, "0.010 M, 1 dm³", "0.010 mol dm⁻³", "1000 cm³ = 0.010 mol", 3, "#DCFCE7")

    b.append(rect(510, 56, 220, 158, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(520, 76, "THE ONLY DILUTION FORMULA", size=8.8, weight="bold", fill=GREEN, anchor="start"))
    b.append(t(520, 100, "c₁V₁ = c₂V₂", size=14, weight="bold", fill=NAVY, anchor="start"))
    for i, s in enumerate([
        "Dilute 25.0 cm³ of 2.00 M to 250 cm³:",
        "c₂ = 2.00 × 25.0 ÷ 250 = 0.200 M.",
        "",
        "The moles never change: n = c₁V₁ = c₂V₂.",
    ]):
        b.append(t(520, 124 + i * 14, s, size=7.8, fill=SLATE, anchor="start"))
    write_svg("ch02_dilution.svg", svg(w, h, "\n".join(b)))


def recap_cards_a():
    recap_card("recap_ch01.svg", "Chapter 1 recap card — acids, bases and salts", [
        ("Definitions", "Acid gives H⁺, base accepts H⁺; strong acids ionise completely, weak ones only partly."),
        ("pH", "pH = −log[H⁺]; each unit is a factor of 10; pH + pOH = 14 at 25 °C."),
        ("Titration", "c₁V₁/n₁ = c₂V₂/n₂; the indicator must change on the steep part of the curve."),
        ("Salts", "Soluble salt by titration; insoluble by precipitation; ammonium salts by direct combination."),
    ])
    recap_card("recap_ch02.svg", "Chapter 2 recap card — solutions and solubility", [
        ("Concentration", "c = n ÷ V (mol dm⁻³) or mass ÷ V (g dm⁻³); 1 dm³ = 1000 cm³."),
        ("Dilution", "c₁V₁ = c₂V₂ — the moles are conserved, the volume is not."),
        ("Solubility", "g per 100 g water at a stated temperature; most solids rise, gases fall."),
        ("Crystallisation", "Cool a saturated solution, filter the crystals, wash and dry between filter papers."),
    ])
