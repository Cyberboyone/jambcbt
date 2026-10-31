"""Volume 1 figures, part B: demand, supply and equilibrium."""

from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from common import (
    wrap_text,
    AMBER, AMBER_LIGHT, BLUE, BLUE_LIGHT, BORDER, GREEN, GREEN_LIGHT, LIGHT_BG,
    MUTED, NAVY, PURPLE, PURPLE_LIGHT, RED, RED_LIGHT, SLATE,
    arrow2, axes_style, card, dot, line, path, poly, recap_card, rect, save,
    svg, t, write_svg,
)

FIGURES = [
    "ch02_demand_curve", "ch02_schedule", "ch02_determinants", "ch02_utility",
    "recap_ch02",
    "ch03_supply_curve", "ch03_equilibrium", "ch03_four_step", "ch03_controls",
    "recap_ch03",
]


def _pair_axes(title):
    fig, axes = plt.subplots(1, 2, figsize=(6.4, 2.85))
    fig.suptitle(title, fontsize=9.2, color=NAVY, weight="bold", y=1.00)
    return fig, axes


def ch02_demand_curve():
    fig, (a1, a2) = _pair_axes("A MOVEMENT ALONG THE CURVE IS NOT A SHIFT OF THE CURVE")
    q = np.linspace(0, 10, 100)
    p = 10 - 0.8 * q

    a1.plot(q, p, color=GREEN, lw=2.0)
    a1.plot([2.5], [8.0], "o", color=SLATE, ms=4)
    a1.plot([5.5], [5.6], "o", color=SLATE, ms=4)
    a1.annotate("", (5.3, 5.8), (2.8, 7.8), arrowprops=dict(arrowstyle="->", color=RED, lw=1.2))
    a1.text(4.4, 7.9, "price falls,\nquantity rises", fontsize=7.2, color=RED)
    a1.text(6.4, 4.4, "D", fontsize=9, color=GREEN, weight="bold")
    a1.set_title("movement along (price changes)", fontsize=8.0, color=NAVY)

    a2.plot(q, p, color=GREEN, lw=2.0)
    a2.plot(q, p + 2.2, color=BLUE, lw=2.0)
    a2.plot(q, p - 2.0, color=AMBER, lw=2.0)
    a2.annotate("", (2.2, 8.1), (2.2, 10.2), arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.4))
    a2.annotate("", (2.2, 6.3), (2.2, 4.5), arrowprops=dict(arrowstyle="->", color=AMBER, lw=1.4))
    a2.text(2.6, 10.0, "increase", fontsize=7.2, color=BLUE)
    a2.text(2.6, 4.4, "decrease", fontsize=7.2, color=AMBER)
    a2.text(9.7, 3.6, "D", fontsize=9, color=GREEN, weight="bold")
    a2.set_title("shift (any non-price determinant)", fontsize=8.0, color=NAVY)

    for ax in (a1, a2):
        ax.set_xlim(0, 10.6)
        ax.set_ylim(0, 11.5)
        ax.set_xlabel("quantity", fontsize=8)
        ax.set_ylabel("price", fontsize=8)
        for s in ("top", "right"):
            ax.spines[s].set_visible(False)
        ax.grid(color="#E2E8F0", lw=0.6)
        ax.set_axisbelow(True)
        ax.tick_params(labelsize=7)
    fig.tight_layout()
    save(fig, "ch02_demand_curve.svg")


def ch02_schedule():
    w, h = 560, 250
    b = [t(280, 20, "A DEMAND SCHEDULE BECOMES A DEMAND CURVE", size=10.4, weight="bold")]
    b.append(rect(30, 38, 230, 176, "#FFFFFF", BORDER, 7, 1.1))
    b.append(rect(30, 38, 230, 24, GREEN, GREEN, 7, 1.0))
    b.append(t(100, 54, "PRICE (₦)", size=8.4, weight="bold", fill="#FFFFFF"))
    b.append(t(212, 54, "QUANTITY", size=8.4, weight="bold", fill="#FFFFFF"))
    rows = [("10", "2"), ("8", "4"), ("6", "6"), ("4", "8"), ("2", "10")]
    for i, (p, q) in enumerate(rows):
        y = 78 + i * 25
        b.append(t(100, y, p, size=9.0, fill=NAVY))
        b.append(t(212, y, q, size=9.0, fill=NAVY))
        b.append(line(38, y + 8, 252, y + 8, color="#E2E8F0", sw=0.7))
    b.append(t(280, 230, "each ₦2 cut adds two units demanded", size=8.2, fill=MUTED))

    # a small plot
    x0, y0, pw, ph = 300, 46, 220, 168
    b.append(line(x0, y0 + ph, x0 + pw, y0 + ph, color=SLATE, sw=1.2))
    b.append(line(x0, y0, x0, y0 + ph, color=SLATE, sw=1.2))
    b.append(t(x0 + pw / 2, y0 + ph + 16, "quantity", size=8.0))
    b.append(t(x0 - 18, y0 + 10, "price", size=8.0))
    pts = []
    for p, q in rows:
        px = x0 + 12 + (int(q) / 10) * (pw - 26)
        py = y0 + (int(p) / 10) * (ph - 14)
        pts.append((px, py))
        b.append(dot(px, py, 3.0, GREEN))
    b.append(path("M " + " L ".join(f"{x:.1f},{y:.1f}" for x, y in pts), stroke=GREEN, sw=1.8))
    b.append(t(pts[-1][0] + 8, pts[-1][1] + 4, "D", size=9.0, weight="bold", fill=GREEN, anchor="start"))
    write_svg("ch02_schedule.svg", svg(w, h, "\n".join(b)))


def ch02_determinants():
    w, h = 680, 300
    b = [t(340, 20, "WHAT SHIFTS THE DEMAND CURVE", size=10.6, weight="bold")]
    items = [
        ("Income", "normal good: up → right", "inferior good: up → left", GREEN),
        ("Taste", "advertising, fashion", "right when the taste improves", BLUE),
        ("Price of related goods", "substitute dearer → right", "complement dearer → left", AMBER),
        ("Population", "more buyers", "right", PURPLE),
        ("Expectation", "fear of a price rise", "right, today", RED),
        ("Distribution of income", "the poor gain", "right, for basics", SLATE),
    ]
    for i, (head, l1, l2, col) in enumerate(items):
        r, k = divmod(i, 3)
        x, y = 14 + k * 222, 38 + r * 76
        b.append(rect(x, y, 210, 66, "#FFFFFF", col, 6, 1.2))
        b.append(t(x + 10, y + 17, head, size=8.8, weight="bold", fill=col, anchor="start"))
        b.append(t(x + 10, y + 33, l1, size=7.8, fill=SLATE, anchor="start"))
        b.append(t(x + 10, y + 47, l2, size=7.8, fill=MUTED, anchor="start"))
        b.append(t(x + 10, y + 60, "", size=6))
    b.append(rect(14, 200, 652, 78, RED_LIGHT, RED, 7, 1.2))
    b.append(t(340, 220, "THE TEST", size=9.2, weight="bold", fill=RED))
    b.append(t(340, 238, "Is the price of the good itself changing? If yes, the curve does not move — you slide along it.", size=8.6, fill=NAVY))
    b.append(t(340, 254, "If any other item on this page is changing, the whole curve shifts left or right.", size=8.6, fill=NAVY))
    b.append(t(340, 270, "A question that says “the price of a substitute falls” is a shift question wearing a price question's clothes.", size=8.6, weight="bold", fill=RED))
    write_svg("ch02_determinants.svg", svg(w, h, "\n".join(b)))


def ch02_utility():
    fig, (a1, a2) = _pair_axes("TOTAL UTILITY RISES, MARGINAL UTILITY FALLS")
    q = np.arange(1, 8)
    mu = np.array([10, 8, 6, 4, 2, 0.5, -1.0])
    tu = np.cumsum(mu)
    a1.plot(q, tu, "-o", color=GREEN, lw=1.8, ms=3.5)
    a1.set_title("total utility", fontsize=8.0, color=NAVY)
    a1.annotate("maximum where\nMU = 0", (6, tu[5]), (2.0, 14), fontsize=7.2, color=RED,
                arrowprops=dict(arrowstyle="->", color=RED, lw=0.9))
    a1.set_xlabel("units consumed", fontsize=8)
    a1.set_ylabel("utils", fontsize=8)
    a1.set_xlim(0, 8)
    a1.set_ylim(0, 34)

    a2.bar(q, mu, color=BLUE, width=0.55)
    a2.axhline(0, color=SLATE, lw=1.0)
    a2.set_title("marginal utility", fontsize=8.0, color=NAVY)
    a2.set_xlabel("units consumed", fontsize=8)
    a2.set_ylabel("utils per unit", fontsize=8)
    a2.set_xlim(0, 8)
    a2.set_ylim(-3, 12)
    a2.text(4.4, 8.6, "law of diminishing\nmarginal utility", fontsize=7.2, color=NAVY)

    for ax in (a1, a2):
        for s in ("top", "right"):
            ax.spines[s].set_visible(False)
        ax.grid(color="#E2E8F0", lw=0.6)
        ax.set_axisbelow(True)
        ax.tick_params(labelsize=7)
    fig.tight_layout()
    save(fig, "ch02_utility.svg")


def recap_ch02():
    recap_card("recap_ch02.svg", "Chapter 2 in One Breath", [
        ("Law of demand", "price up → quantity demanded down, other things equal."),
        ("Move or shift", "the good's own price moves you along the curve; anything else shifts it."),
        ("Exceptions", "Giffen goods, Veblen goods and expectations can break the law — name them."),
        ("Utility", "utility is maximised where MUx/Px = MUy/Py and the budget is spent."),
    ])


def ch03_supply_curve():
    fig, ax = plt.subplots(figsize=(5.4, 2.9))
    q = np.linspace(0, 10, 100)
    ax.plot(q, 2 + 0.7 * q, color=GREEN, lw=2.0)
    ax.plot(q, 4 + 0.7 * q, color=BLUE, lw=2.0, ls="--")
    ax.plot(q, 0.4 + 0.7 * q, color=AMBER, lw=2.0, ls="--")
    ax.annotate("", (7.0, 6.9), (7.0, 8.9), arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.4))
    ax.annotate("", (7.0, 6.9), (7.0, 5.3), arrowprops=dict(arrowstyle="->", color=AMBER, lw=1.4))
    ax.text(7.3, 8.2, "S shifts right:\ncheaper inputs,\nbetter technology,\nmore sellers", fontsize=7.0, color=BLUE)
    ax.text(7.3, 4.6, "S shifts left:\ndearer inputs,\ntax, bad weather", fontsize=7.0, color=AMBER)
    ax.text(9.2, 8.9, "S", fontsize=9, color=GREEN, weight="bold")
    ax.set_xlim(0, 10.6)
    ax.set_ylim(0, 11.5)
    ax.set_xlabel("quantity supplied", fontsize=8)
    ax.set_ylabel("price", fontsize=8)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("THE SUPPLY CURVE SLOPES UP; ITS SHIFTS DO NOT", fontsize=9.2, color=NAVY, weight="bold")
    save(fig, "ch03_supply_curve.svg")


def ch03_equilibrium():
    fig, ax = plt.subplots(figsize=(5.4, 3.0))
    q = np.linspace(0, 10, 200)
    d = 10 - 0.8 * q
    s = 1 + 0.75 * q
    ax.plot(q, d, color=GREEN, lw=2.0)
    ax.plot(q, s, color=BLUE, lw=2.0)
    qe = (10 - 1) / (0.75 + 0.8)
    pe = 10 - 0.8 * qe
    ax.plot([qe], [pe], "o", color=NAVY, ms=5)
    ax.axhline(pe, 0, qe / 10, color=SLATE, lw=0.8, ls=":")
    ax.axvline(qe, 0, pe / 10, color=SLATE, lw=0.8, ls=":")
    ax.text(qe + 0.1, pe - 0.9, "E: no surplus,\nno shortage", fontsize=7.4, color=NAVY)
    ax.fill_between(q, d, s, where=(s > d), color=RED_LIGHT, alpha=0.55)
    ax.fill_between(q, d, s, where=(s < d), color=BLUE_LIGHT, alpha=0.55)
    ax.text(2.2, 8.9, "surplus\nprice is pushed down", fontsize=7.2, color=RED)
    ax.text(6.6, 3.0, "shortage\nprice is pulled up", fontsize=7.2, color=BLUE)
    ax.text(9.3, 3.4, "D", fontsize=9, color=GREEN, weight="bold")
    ax.text(9.3, 9.4, "S", fontsize=9, color=BLUE, weight="bold")
    ax.set_xlim(0, 10.4)
    ax.set_ylim(0, 11.5)
    ax.set_xlabel("quantity", fontsize=8)
    ax.set_ylabel("price", fontsize=8)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("EQUILIBRIUM IS THE PRICE WITH NO PRESSURE TO MOVE", fontsize=9.2, color=NAVY, weight="bold")
    save(fig, "ch03_equilibrium.svg")


def ch03_four_step():
    w, h = 680, 246
    b = [t(340, 20, "THE FOUR-STEP ANSWER TO EVERY SHIFT QUESTION", size=10.6, weight="bold")]
    steps = [
        ("1", "Which curve?", "Demand or supply — never both unless the question says so.", GREEN),
        ("2", "Which way?", "Right (increase) or left (decrease), and say why.", BLUE),
        ("3", "New crossing", "The new equilibrium price and quantity, relative to the old.", AMBER),
        ("4", "Check the trap", "A price change alone never shifts either curve.", RED),
    ]
    for i, (n, head, body, col) in enumerate(steps):
        x = 14 + i * 166
        b.append(rect(x, 40, 156, 130, "#FFFFFF", col, 7, 1.3))
        b.append(dot(x + 22, 60, 12, col))
        b.append(t(x + 22, 64, n, size=10, weight="bold", fill="#FFFFFF"))
        b.append(t(x + 10, 90, head, size=8.8, weight="bold", fill=col, anchor="start"))
        for j, ln in enumerate(wrap_text(body, 7.6, 136)):
            b.append(t(x + 10, 108 + j * 13, ln, size=7.6, fill=SLATE, anchor="start"))
    b.append(rect(14, 182, 652, 52, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(340, 202, "The exam almost always asks one of two things: the direction of the price, or the direction of the quantity.", size=8.6, fill=NAVY))
    b.append(t(340, 220, "Answer in that order and the explanation writes itself.", size=8.6, weight="bold", fill=GREEN))
    write_svg("ch03_four_step.svg", svg(w, h, "\n".join(b)))


def ch03_controls():
    fig, (a1, a2) = _pair_axes("A CEILING SITS BELOW THE PRICE; A FLOOR SITS ABOVE IT")
    q = np.linspace(0, 10, 200)
    d = 10 - 0.8 * q
    s = 1 + 0.75 * q

    a1.plot(q, d, color=GREEN, lw=1.8)
    a1.plot(q, s, color=BLUE, lw=1.8)
    a1.axhline(3.4, color=RED, lw=1.5, ls="--")
    a1.text(0.2, 3.7, "ceiling", fontsize=7.4, color=RED)
    a1.annotate("", (8.2, 3.4), (3.0, 3.4), arrowprops=dict(arrowstyle="<->", color=RED, lw=0.9))
    a1.text(4.6, 2.6, "shortage", fontsize=7.4, color=RED)
    a1.set_title("price ceiling → shortage, queues, black market", fontsize=7.6, color=NAVY)

    a2.plot(q, d, color=GREEN, lw=1.8)
    a2.plot(q, s, color=BLUE, lw=1.8)
    a2.axhline(7.6, color=AMBER, lw=1.5, ls="--")
    a2.text(0.2, 7.9, "floor", fontsize=7.4, color=AMBER)
    a2.annotate("", (3.0, 7.6), (8.2, 7.6), arrowprops=dict(arrowstyle="<->", color=AMBER, lw=0.9))
    a2.text(4.4, 6.9, "surplus", fontsize=7.4, color=AMBER)
    a2.set_title("price floor → surplus, unsold stock, quotas", fontsize=7.6, color=NAVY)

    for ax in (a1, a2):
        ax.set_xlim(0, 10.4)
        ax.set_ylim(0, 11.5)
        ax.set_xlabel("quantity", fontsize=8)
        ax.set_ylabel("price", fontsize=8)
        for sp in ("top", "right"):
            ax.spines[sp].set_visible(False)
        ax.grid(color="#E2E8F0", lw=0.6)
        ax.set_axisbelow(True)
        ax.tick_params(labelsize=7)
    fig.tight_layout()
    save(fig, "ch03_controls.svg")


def recap_ch03():
    recap_card("recap_ch03.svg", "Chapter 3 in One Breath", [
        ("Law of supply", "price up → quantity supplied up, other things equal."),
        ("Equilibrium", "surplus pushes the price down, shortage pulls it up; E is where neither exists."),
        ("Shift method", "curve, direction, new crossing, and the trap: own price never shifts a curve."),
        ("Controls", "a ceiling below equilibrium creates a shortage; a floor above it creates a surplus."),
    ])
