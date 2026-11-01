"""Volume 1 figures, part C: elasticity, costs and market structure."""

from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from common import (
    AMBER, AMBER_LIGHT, BLUE, BLUE_LIGHT, BORDER, GREEN, GREEN_LIGHT, LIGHT_BG,
    MUTED, NAVY, PURPLE, PURPLE_LIGHT, RED, RED_LIGHT, SLATE,
    arrow2, axes_style, card, dot, line, lines, path, poly, recap_card, rect, save,
    svg, t, write_svg,
)

FIGURES = [
    "ch04_ped", "ch04_revenue", "ch04_income_cross", "ch04_pes", "recap_ch04",
    "ch05_production", "ch05_costs", "ch05_revenue", "recap_ch05",
    "ch06_spectrum", "ch06_perfect", "ch06_monopoly", "ch06_compare", "recap_ch06",
]


def ch04_ped():
    fig, axes = plt.subplots(1, 3, figsize=(6.6, 2.5))
    fig.suptitle("THREE DEMAND CURVES THROUGH ONE POINT", fontsize=9.2, color=NAVY, weight="bold", y=1.02)
    # PED = (1/slope) x (P/Q), so through a single point the FLAT curve is the
    # elastic one and the STEEP curve is the inelastic one.  All three pass
    # through (5, 5), where Q = 5 and P = 5, so the labels are exact.
    cases = [
        ("flat curve — elastic", 0.35, GREEN, ["|E| = 2.9", "a price cut", "raises revenue"]),
        ("unit elastic", 1.00, BLUE, ["|E| = 1.0", "revenue", "unchanged"]),
        ("steep curve — inelastic", 2.20, AMBER, ["|E| = 0.45", "a price cut", "loses revenue"]),
    ]
    for ax, (title, b, col, note) in zip(axes, cases):
        q = np.linspace(0, 10, 400)
        p = 5 - b * (q - 5)
        keep = (p >= 0.0) & (p <= 11.3)
        ax.plot(q[keep], p[keep], color=col, lw=1.9)
        ax.plot([5], [5], "o", color=NAVY, ms=4)
        ax.set_xlim(0, 10.4)
        ax.set_ylim(0, 11.5)
        ax.set_xlabel("quantity", fontsize=7.4)
        ax.set_ylabel("price", fontsize=7.4)
        ax.set_title(title, fontsize=7.6, color=NAVY)
        # Keep the note in the corner the curve does not run through.
        ax.text(0.97, 0.04, "\n".join(note), transform=ax.transAxes, ha="right",
                va="bottom", fontsize=6.9, color=col)
        for sp in ("top", "right"):
            ax.spines[sp].set_visible(False)
        ax.grid(color="#E2E8F0", lw=0.5)
        ax.set_axisbelow(True)
        ax.tick_params(labelsize=6.5)
    fig.tight_layout()
    save(fig, "ch04_ped.svg")


def ch04_revenue():
    fig, ax = plt.subplots(figsize=(5.6, 2.9))
    q = np.linspace(0, 10, 200)
    tr = 10 * q - 0.9 * q ** 2
    ax.plot(q, tr, color=PURPLE, lw=2.0)
    ax.axvline(10 / 1.8, color=SLATE, lw=0.9, ls=":")
    ax.text(10 / 1.8 + 0.18, max(tr) * 0.62, "|E| = 1\ntotal revenue\npeaks here", fontsize=7.2, color=NAVY)
    ax.text(0.85, max(tr) * 0.44, "elastic:\na price cut\nraises revenue", fontsize=7.2, color=GREEN)
    ax.text(7.05, max(tr) * 0.30, "inelastic:\na price cut\nloses revenue", fontsize=7.2, color=AMBER)
    ax.set_xlim(0, 10.4)
    ax.set_ylim(0, max(tr) * 1.18)
    ax.set_xlabel("quantity sold", fontsize=8)
    ax.set_ylabel("total revenue", fontsize=8)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("THE REVENUE TEST FOR ELASTICITY", fontsize=9.2, color=NAVY, weight="bold")
    save(fig, "ch04_revenue.svg")


def ch04_income_cross():
    w, h = 660, 268
    b = [t(330, 20, "INCOME AND CROSS ELASTICITY: THE SIGN IS THE ANSWER", size=10.4, weight="bold")]
    b.append(rect(14, 36, 312, 150, "#FFFFFF", GREEN, 7, 1.3))
    b.append(t(170, 54, "INCOME ELASTICITY (Ey)", size=9.0, weight="bold", fill=GREEN))
    rows = [
        ("positive, > 1", "normal luxury — travel, cars"),
        ("positive, 0 to 1", "normal necessity — salt, bread"),
        ("negative", "inferior good — garri when income rises"),
    ]
    for i, (a, c) in enumerate(rows):
        b.append(t(28, 78 + i * 32, a, size=8.2, weight="bold", fill=NAVY, anchor="start"))
        b.append(t(28, 92 + i * 32, c, size=7.8, fill=SLATE, anchor="start"))
    b.append(rect(340, 36, 306, 150, "#FFFFFF", BLUE, 7, 1.3))
    b.append(t(493, 54, "CROSS ELASTICITY (Exy)", size=9.0, weight="bold", fill=BLUE))
    rows2 = [
        ("positive", "substitutes — tea and coffee"),
        ("negative", "complements — car and petrol"),
        ("zero", "unrelated — salt and tyres"),
    ]
    for i, (a, c) in enumerate(rows2):
        b.append(t(354, 78 + i * 32, a, size=8.2, weight="bold", fill=NAVY, anchor="start"))
        b.append(t(354, 92 + i * 32, c, size=7.8, fill=SLATE, anchor="start"))
    b.append(rect(14, 198, 632, 52, AMBER_LIGHT, AMBER, 7, 1.2))
    b.append(t(330, 218, "Exam move: the question gives you two goods and a price change; you are being asked for the sign,", size=8.5, fill=NAVY))
    b.append(t(330, 236, "and the sign names the relationship. Positive: substitutes. Negative: complements.", size=8.5, weight="bold", fill=AMBER))
    write_svg("ch04_income_cross.svg", svg(w, h, "\n".join(b)))


def ch04_pes():
    fig, ax = plt.subplots(figsize=(5.4, 2.9))
    q = np.linspace(0, 10, 200)
    # A flatter supply curve is the MORE elastic one: a small price rise buys a
    # large quantity response.  A steep curve is inelastic; a vertical one is
    # perfectly inelastic, because capacity cannot be increased at all.
    ax.plot(q, 1.4 + 0.40 * q, color=GREEN, lw=1.9)
    ax.plot(q, 1.4 + 1.50 * q, color=AMBER, lw=1.9)
    ax.plot([5.6, 5.6], [0, 9.0], color=RED, lw=1.7, ls="--")
    ax.text(6.5, 2.6, "elastic supply\n(output can rise)", fontsize=7.3, color=GREEN)
    ax.annotate("inelastic supply\n(capacity nearly full)", xy=(6.4, 11.0),
                xytext=(7.15, 6.4), fontsize=7.3, color=AMBER,
                arrowprops=dict(arrowstyle="->", color=AMBER, lw=0.9))
    ax.annotate("fixed capacity: perfectly\ninelastic, Pes = 0", xy=(5.62, 8.4),
                xytext=(0.35, 12.6), fontsize=7.3, color=RED,
                arrowprops=dict(arrowstyle="->", color=RED, lw=0.9))
    ax.set_xlim(0, 10.4)
    ax.set_ylim(0, 15.6)
    ax.set_xlabel("quantity supplied", fontsize=8)
    ax.set_ylabel("price", fontsize=8)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("SUPPLY ELASTICITY IS ABOUT TIME AND SPARE CAPACITY", fontsize=8.6, color=NAVY, weight="bold")
    save(fig, "ch04_pes.svg")


def recap_ch04():
    recap_card("recap_ch04.svg", "Chapter 4 in One Breath", [
        ("PED", "|E| > 1 elastic, = 1 unit, < 1 inelastic; measured as %ΔQ ÷ %ΔP."),
        ("Revenue test", "elastic → cut price to raise revenue; inelastic → raise price to raise revenue."),
        ("Income and cross", "Ey negative means inferior; Exy positive means substitutes."),
        ("PES", "time and spare capacity decide it; supply is more elastic in the long run."),
    ])


def ch05_production():
    fig, ax = plt.subplots(figsize=(5.6, 3.0))
    L = np.linspace(0, 10, 400)
    # TP = 1.2L^2 - 0.09L^3 gives the textbook three stages: MP rises, then falls
    # through AP at AP's peak (L = 6.67), and finally turns negative at L = 8.89.
    tp = 1.2 * L ** 2 - 0.09 * L ** 3
    mp = 2.4 * L - 0.27 * L ** 2
    ap = np.where(L > 1e-9, tp / np.maximum(L, 1e-9), 0.0)
    ax.plot(L, tp, color=GREEN, lw=2.0, label="TP")
    ax.plot(L, mp, color=BLUE, lw=1.7, label="MP")
    ax.plot(L, ap, color=AMBER, lw=1.7, label="AP")
    ax.axhline(0, color=SLATE, lw=0.8)
    l_ap_peak, l_mp_zero = 20 / 3, 80 / 9
    ax.axvline(l_ap_peak, color=SLATE, lw=0.9, ls=(0, (3, 3)))
    ax.axvline(l_mp_zero, color=SLATE, lw=0.9, ls=(0, (3, 3)))
    ax.text(3.1, 33.0, "stage I", fontsize=7.4, color=MUTED)
    ax.text(7.35, 33.0, "stage II", fontsize=7.4, color=MUTED)
    ax.text(9.55, 33.0, "III", fontsize=7.0, color=MUTED)
    ax.plot([l_ap_peak], [1.2 * l_ap_peak ** 2 - 0.09 * l_ap_peak ** 3], "o", color=NAVY, ms=4, zorder=5)
    ax.annotate("MP cuts AP at AP's peak", xy=(l_ap_peak + 0.08, 4.4), xytext=(4.55, 13.5),
                fontsize=7.1, color=AMBER,
                arrowprops=dict(arrowstyle="->", color=AMBER, lw=0.9))
    ax.annotate("TP peaks where MP = 0", xy=(l_mp_zero, 31.4), xytext=(5.05, 24.6),
                fontsize=7.1, color=GREEN,
                arrowprops=dict(arrowstyle="->", color=GREEN, lw=0.9))
    ax.set_xlim(0, 10.4)
    ax.set_ylim(-9, 36)
    ax.set_xlabel("units of the variable factor (labour)", fontsize=8)
    ax.set_ylabel("output / product", fontsize=8)
    ax.legend(fontsize=7.4, frameon=False, loc="upper left")
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("TOTAL, AVERAGE AND MARGINAL PRODUCT", fontsize=9.2, color=NAVY, weight="bold")
    save(fig, "ch05_production.svg")


def ch05_costs():
    fig, ax = plt.subplots(figsize=(5.6, 3.0))
    q = np.linspace(0.6, 10, 300)
    mc = 3 + 0.62 * (q - 4.6) ** 2
    avc = 4 + 0.16 * (q - 5.2) ** 2
    ac = avc + 6.0 / q
    afc = 6.0 / q
    ax.plot(q, mc, color=RED, lw=1.8, label="MC")
    ax.plot(q, ac, color=GREEN, lw=2.0, label="AC")
    ax.plot(q, avc, color=BLUE, lw=1.8, label="AVC")
    ax.plot(q, afc, color=AMBER, lw=1.6, ls="--", label="AFC")
    ax.set_xlim(0, 10.4)
    ax.set_ylim(0, 16)
    ax.set_xlabel("output", fontsize=8)
    ax.set_ylabel("cost per unit", fontsize=8)
    ax.text(5.6, 12.6, "MC cuts AC and AVC\nat their minimum points", fontsize=7.2, color=NAVY)
    ax.legend(fontsize=7.2, frameon=False, loc="upper right")
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("THE SHORT-RUN COST CURVES", fontsize=9.2, color=NAVY, weight="bold")
    save(fig, "ch05_costs.svg")


def ch05_revenue():
    fig, ax = plt.subplots(figsize=(5.6, 2.9))
    q = np.linspace(0, 10, 200)
    tr = 8.0 * q
    tc = 6 + 2.2 * q + 0.38 * q ** 2
    ax.plot(q, tr, color=GREEN, lw=2.0, label="TR")
    ax.plot(q, tc, color=RED, lw=2.0, label="TC")
    idx = np.argmin(np.abs(tr - tc))
    ax.fill_between(q[:idx], tr[:idx], tc[:idx], color=RED_LIGHT, alpha=0.7)
    ax.fill_between(q[idx:], tr[idx:], tc[idx:], color=GREEN_LIGHT, alpha=0.8)
    ax.axhline(6, color=SLATE, lw=0.9, ls=":")
    ax.text(7.9, 6.6, "fixed cost", fontsize=7.2, color=SLATE)
    ax.text(6.1, 47, "profit", fontsize=8.0, color=GREEN)
    ax.annotate("break-even, where TR meets TC", xy=(1.0, 7.8), xytext=(2.9, 2.0),
                fontsize=7.3, color=NAVY,
                arrowprops=dict(arrowstyle="->", color=NAVY, lw=0.9))
    ax.set_xlim(0, 10.4)
    ax.set_ylim(0, 62)
    ax.set_xlabel("output", fontsize=8)
    ax.set_ylabel("₦", fontsize=8)
    ax.legend(fontsize=7.4, frameon=False, loc="upper left")
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("PROFIT IS TR MINUS TC", fontsize=8.8, color=NAVY, weight="bold")
    save(fig, "ch05_revenue.svg")


def recap_ch05():
    recap_card("recap_ch05.svg", "Chapter 5 in One Breath", [
        ("Short run", "at least one factor is fixed; the long run allows every factor to change."),
        ("Diminishing returns", "MP falls first, then AP, then TP — the three stages follow."),
        ("Costs", "MC cuts AC and AVC at their minimum; AFC falls throughout."),
        ("Profit", "maximised where MR = MC; shut down below the minimum AVC."),
    ])


def ch06_spectrum():
    w, h = 680, 250
    b = [t(340, 20, "THE SPECTRUM FROM MANY SELLERS TO ONE", size=10.6, weight="bold")]
    b.append(rect(30, 48, 620, 26, "#E2E8F0", BORDER, 13, 1.0))
    stops = [(60, ("PERFECT", "COMPETITION"), GREEN),
             (232, ("MONOPOLISTIC", "COMPETITION"), BLUE),
             (404, ("OLIGOPOLY",), AMBER),
             (576, ("MONOPOLY",), RED)]
    for x, label, col in stops:
        b.append(dot(x, 61, 9, col))
        b.append(lines(x, 92, list(label), size=8.4, gap=12, fill=col, weight="bold"))
    b.append(t(146, 122, "many · identical", size=7.6, fill=MUTED))
    b.append(t(318, 122, "many · differentiated", size=7.6, fill=MUTED))
    b.append(t(470, 122, "few · interdependent", size=7.6, fill=MUTED))
    b.append(t(600, 122, "one · blocked entry", size=7.6, fill=MUTED))
    b.append(rect(14, 146, 652, 88, LIGHT_BG, BORDER, 7, 1.1))
    b.append(t(340, 166, "POWER GROWS TO THE RIGHT; OUTPUT FALLS AND PRICE RISES", size=8.8, weight="bold", fill=NAVY))
    b.append(t(340, 186, "Perfect competition: price = marginal cost, and the firm is a price taker.", size=8.4, fill=SLATE))
    b.append(t(340, 202, "Monopoly: price above marginal cost, output below the competitive level, and entry blocked.", size=8.4, fill=SLATE))
    b.append(t(340, 220, "Oligopoly and monopolistic competition sit between, and the exam asks which assumption has been relaxed.", size=8.4, weight="bold", fill=GREEN))
    write_svg("ch06_spectrum.svg", svg(w, h, "\n".join(b)))


def ch06_perfect():
    fig, ax = plt.subplots(figsize=(5.2, 2.8))
    q = np.linspace(0, 10, 100)
    p = 6.0
    ax.plot(q, np.full_like(q, p), color=GREEN, lw=2.0)
    ax.plot(q, 2 + 0.45 * q, color=RED, lw=1.7, label="MC")
    ax.plot(q, 3.4 + 0.22 * q, color=AMBER, lw=1.5, ls="--", label="AC")
    ax.axhline(p, color=GREEN, lw=0.8, ls=":")
    ax.text(0.25, p + 0.45, "P = AR = MR: the price line is demand", fontsize=7.4, color=GREEN)
    ax.plot([8.0], [p], "o", color=NAVY, ms=5)
    ax.annotate("MR = MC\nprofit is maximised", (8.0, p), (5.0, 8.4), fontsize=7.2, color=NAVY,
                arrowprops=dict(arrowstyle="->", color=SLATE, lw=0.8))
    ax.set_xlim(0, 10.4)
    ax.set_ylim(0, 11.5)
    ax.set_xlabel("output", fontsize=8)
    ax.set_ylabel("price / cost", fontsize=8)
    ax.legend(fontsize=7.2, frameon=False, loc="lower right")
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("A PRICE TAKER FACES A HORIZONTAL DEMAND CURVE", fontsize=9.0, color=NAVY, weight="bold")
    save(fig, "ch06_perfect.svg")


def ch06_monopoly():
    fig, ax = plt.subplots(figsize=(5.2, 2.9))
    q = np.linspace(0, 10, 200)
    d = 12 - 1.0 * q
    mr = 12 - 2.0 * q
    mc = 2 + 0.6 * q
    ax.plot(q, d, color=GREEN, lw=2.0, label="D = AR")
    ax.plot(q, mr, color=BLUE, lw=1.7, ls="--", label="MR")
    ax.plot(q, mc, color=RED, lw=1.7, label="MC")
    qm = (12 - 2) / 2.6
    pm = 12 - qm
    ax.plot([qm, qm], [0, pm], color=SLATE, lw=0.8, ls=":")
    ax.plot([0, qm], [pm, pm], color=SLATE, lw=0.8, ls=":")
    ax.plot([qm], [pm], "o", color=NAVY, ms=5)
    ax.annotate("price is read off the\ndemand curve, above MC", (qm, pm), (0.4, 13.4), fontsize=7.2,
                color=NAVY, arrowprops=dict(arrowstyle="->", color=SLATE, lw=0.8))
    ax.set_xlim(0, 10.4)
    ax.set_ylim(0, 15)
    ax.set_xlabel("output", fontsize=8)
    ax.set_ylabel("price / revenue", fontsize=8)
    ax.legend(fontsize=7.2, frameon=False, loc="upper right")
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("A MONOPOLIST CHOOSES OUTPUT WHERE MR = MC, THEN RAISES PRICE", fontsize=8.6, color=NAVY, weight="bold")
    save(fig, "ch06_monopoly.svg")


def ch06_compare():
    w, h = 680, 300
    b = [t(340, 20, "THE FOUR STRUCTURES SIDE BY SIDE", size=10.6, weight="bold")]
    heads = ["the test", "perfect", "monopolistic", "oligopoly", "monopoly"]
    xs = [14, 150, 282, 414, 546]
    widths = [132, 128, 128, 128, 120]
    for x, wd, hd in zip(xs, widths, heads):
        b.append(rect(x, 34, wd, 24, NAVY, NAVY, 4, 1.0))
        b.append(t(x + wd / 2, 50, hd, size=8.2, weight="bold", fill="#FFFFFF"))
    rows = [
        ("sellers", "very many", "many", "few", "one"),
        ("product", "identical", "differentiated", "either", "unique"),
        ("entry", "free", "free", "blocked", "blocked"),
        ("price control", "none", "some", "mutual", "considerable"),
        ("demand curve", "horizontal", "downward, flat", "kinked", "downward, steep"),
        ("long-run profit", "normal", "normal", "possible", "possible"),
    ]
    for i, row in enumerate(rows):
        y = 62 + i * 33
        fill = "#FFFFFF" if i % 2 == 0 else LIGHT_BG
        b.append(rect(14, y, 652, 31, fill, BORDER, 3, 0.9))
        b.append(t(80, y + 20, row[0], size=8.0, weight="bold", fill=NAVY))
        for x, wd, cell in zip(xs[1:], widths[1:], row[1:]):
            b.append(t(x + wd / 2, y + 20, cell, size=7.8, fill=SLATE))
    b.append(rect(14, 266, 652, 26, GREEN_LIGHT, GREEN, 4, 0.9))
    b.append(t(340, 283, "Read down a column, not across a row: each structure is one test relaxed.",
               size=8.3, weight="bold", fill=GREEN))
    write_svg("ch06_compare.svg", svg(w, h, "\n".join(b)))


def recap_ch06():
    recap_card("recap_ch06.svg", "Chapter 6 in One Breath", [
        ("Tests", "number of sellers, product, entry, information — four tests, four structures."),
        ("Perfect competition", "P = AR = MR, horizontal demand, normal profit in the long run."),
        ("Monopoly", "MR below AR, output at MR = MC, price read off the demand curve."),
        ("Efficiency", "competition maximises consumer surplus; monopoly transfers it to the producer."),
    ])
