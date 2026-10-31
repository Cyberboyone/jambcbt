"""Volume 1 figures, part A: the cover, the weight chart and Chapter 1.

Economics is a subject of curves and flows, so the figures do two jobs: they
show a relationship (a curve, a shift, an intersection) and they name the
mistake the examiner builds the wrong option from.
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
    "ch01_scarcity", "ch01_ppc", "ch01_factors", "ch01_systems", "recap_ch01",
]


def cover_banner():
    w, h = 760, 190
    b = [rect(0, 0, w, h, "#0B2036", "#0B2036", 10, 1.0)]
    b.append(t(380, 32, "SCARCITY  ·  CHOICE  ·  PRICE", size=17, weight="bold", fill="#FFFFFF"))
    b.append(line(120, 44, 640, 44, color="#34D399", sw=1.2))
    chips = ["Scarcity and choice", "Opportunity cost", "The PPC", "Factors of production",
             "Economic systems", "Demand", "Supply", "Equilibrium", "Elasticity",
             "Utility", "Cost and revenue", "Market structures"]
    cols = 3
    for i, c in enumerate(chips):
        r, k = divmod(i, cols)
        x = 40 + k * 240
        y = 56 + r * 27
        b.append(rect(x, y, 220, 23, "#12314F", "#34D399", 5, 1.0))
        b.append(t(x + 110, y + 15.5, c, size=8.6, fill="#E2E8F0"))
    b.append(t(380, 178, "One model  ·  five curves  ·  forty questions", size=8.4, fill="#94A3B8"))
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg="#0B2036"))


def utme_weight():
    fig, ax = plt.subplots(figsize=(6.0, 2.7))
    chapters = ["1 The economic problem", "2 Demand and utility", "3 Supply and equilibrium",
                "4 Elasticity", "5 Production and cost", "6 Market structures"]
    weights = [4, 5, 5, 4, 4, 3]
    cols = [GREEN if v >= 5 else "#34D399" for v in weights]
    bars = ax.barh(chapters[::-1], weights[::-1], color=cols[::-1], height=0.62)
    for bar, v in zip(bars, weights[::-1]):
        ax.text(v + 0.08, bar.get_y() + bar.get_height() / 2, f"{v}", va="center",
                fontsize=8, color=NAVY)
    ax.set_xlim(0, 6.4)
    ax.set_xlabel("average questions in the forty-question Economics paper")
    ax.set_title("WHERE THE MICROECONOMICS MARKS SIT", fontsize=9.2, color=NAVY, weight="bold")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(axis="x", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "utme_weight.svg")


def ch01_scarcity():
    w, h = 680, 250
    b = [t(340, 20, "THE CHAIN EVERY ECONOMICS QUESTION IS BUILT ON", size=10.6, weight="bold")]
    boxes = [
        ("WANTS", "unlimited", GREEN),
        ("RESOURCES", "limited", AMBER),
        ("SCARCITY", "the gap", RED),
        ("CHOICE", "what to give up", BLUE),
        ("OPPORTUNITY COST", "the next best", PURPLE),
    ]
    x0, bw, gap = 14, 118, 16
    for i, (head, sub, col) in enumerate(boxes):
        x = x0 + i * (bw + gap)
        b.append(rect(x, 44, bw, 62, "#FFFFFF", col, 7, 1.5))
        b.append(t(x + bw / 2, 66, head, size=9.0, weight="bold", fill=col))
        b.append(t(x + bw / 2, 84, sub, size=8.2, fill=SLATE))
        if i < len(boxes) - 1:
            b.append(arrow2(x + bw + 2, 75, x + bw + gap - 2, 75, color=SLATE, sw=1.5, size=7))
    b.append(rect(14, 126, 652, 54, LIGHT_BG, BORDER, 7, 1.1))
    b.append(t(340, 146, "No scarcity → no price → no economics. A question that opens “because resources are limited”", size=8.8, fill=NAVY))
    b.append(t(340, 162, "is asking which of the four consequences follows, not whether scarcity is a bad thing.", size=8.8, fill=NAVY))
    b.append(rect(14, 192, 316, 46, AMBER_LIGHT, AMBER, 6, 1.2))
    b.append(t(172, 210, "FREE GOODS", size=9.0, weight="bold", fill=AMBER))
    b.append(t(172, 226, "air, sunlight — no price, no cost of choice", size=8.2, fill=SLATE))
    b.append(rect(350, 192, 316, 46, GREEN_LIGHT, GREEN, 6, 1.2))
    b.append(t(508, 210, "ECONOMIC GOODS", size=9.0, weight="bold", fill=GREEN))
    b.append(t(508, 226, "everything scarce enough to command a price", size=8.2, fill=SLATE))
    write_svg("ch01_scarcity.svg", svg(w, h, "\n".join(b)))


def ch01_ppc():
    fig, ax = plt.subplots(figsize=(5.4, 3.0))
    x = np.linspace(0, 10, 200)
    y = 10 * np.sqrt(1 - (x / 10) ** 2) ** 0.72
    ax.plot(x, y, color=GREEN, lw=2.0, label="PPC")
    x2 = np.linspace(0, 12.4, 200)
    y2 = 12.4 * np.sqrt(1 - (x2 / 12.4) ** 2) ** 0.72
    ax.plot(x2, y2, color="#34D399", lw=1.6, ls="--", label="PPC after growth")
    ax.plot([4.2], [7.0], "o", color=NAVY, ms=5)
    ax.annotate("A  on the curve\n(full employment)", (4.2, 7.0), (0.7, 9.9), fontsize=7.6,
                color=NAVY, arrowprops=dict(arrowstyle="-", color=SLATE, lw=0.8))
    ax.plot([3.0], [3.4], "o", color=AMBER, ms=5)
    ax.annotate("B  inside\n(unemployment)", (3.0, 3.4), (1.0, 5.2), fontsize=7.6,
                color=AMBER, arrowprops=dict(arrowstyle="-", color=SLATE, lw=0.8))
    ax.plot([7.6], [7.6], "o", color=RED, ms=5)
    ax.annotate("C  outside\n(unattainable)", (7.6, 7.6), (8.3, 4.6), fontsize=7.6,
                color=RED, arrowprops=dict(arrowstyle="-", color=SLATE, lw=0.8))
    ax.set_xlim(0, 13.4)
    ax.set_ylim(0, 13.4)
    ax.set_xlabel("capital goods")
    ax.set_ylabel("consumer goods")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.7)
    ax.set_axisbelow(True)
    ax.legend(fontsize=7.4, frameon=False, loc="lower right")
    ax.set_title("THE PRODUCTION POSSIBILITY CURVE", fontsize=9.2, color=NAVY, weight="bold")
    save(fig, "ch01_ppc.svg")


def ch01_factors():
    w, h = 680, 268
    b = [t(340, 20, "THE FOUR FACTORS OF PRODUCTION AND THEIR REWARDS", size=10.6, weight="bold")]
    rows = [
        ("LAND", "all natural resources", "RENT", GREEN),
        ("LABOUR", "human effort, mental and physical", "WAGES / SALARY", BLUE),
        ("CAPITAL", "goods made to make other goods", "INTEREST", AMBER),
        ("ENTREPRENEUR", "organises the other three, bears the risk", "PROFIT", PURPLE),
    ]
    y = 36
    for name, what, reward, col in rows:
        b.append(rect(14, y, 652, 48, "#FFFFFF", BORDER, 6, 1.1))
        b.append(rect(14, y, 6, 48, col, col, 2, 1.0))
        b.append(t(30, y + 20, name, size=9.2, weight="bold", fill=col, anchor="start"))
        b.append(t(150, y + 20, what, size=8.6, fill=SLATE, anchor="start"))
        b.append(t(470, y + 20, "reward:", size=8.0, fill=MUTED, anchor="start"))
        b.append(t(516, y + 20, reward, size=8.8, weight="bold", fill=NAVY, anchor="start"))
        b.append(t(150, y + 36, "", size=7))
        y += 54
    b.append(t(340, 258, "Capital is a produced means of production — money is not capital until it buys a machine.", size=8.4, fill=MUTED))
    write_svg("ch01_factors.svg", svg(w, h, "\n".join(b)))


def ch01_systems():
    w, h = 680, 262
    b = [t(340, 20, "THREE WAYS TO ANSWER THE THREE QUESTIONS", size=10.6, weight="bold")]
    cols = [
        ("MARKET", GREEN, ["what to produce: the price signal", "who gets it: whoever pays",
                           "strength: efficiency, choice", "weakness: inequality, public goods"]),
        ("COMMAND", RED, ["what to produce: the plan", "who gets it: the planner",
                          "strength: can mobilise fast", "weakness: shortages, no signal"]),
        ("MIXED", BLUE, ["what to produce: mostly price", "who gets it: price, plus tax and subsidy",
                         "strength: keeps the signal", "weakness: regulation can lag"]),
    ]
    for i, (head, col, items) in enumerate(cols):
        x = 14 + i * 222
        b.append(rect(x, 38, 210, 190, "#FFFFFF", col, 7, 1.4))
        b.append(rect(x, 38, 210, 26, col, col, 7, 1.0))
        b.append(t(x + 105, 55, head, size=9.4, weight="bold", fill="#FFFFFF"))
        for j, it in enumerate(items):
            b.append(t(x + 12, 82 + j * 34, it, size=8.2, fill=SLATE, anchor="start"))
    b.append(t(340, 248, "Nigeria is a mixed economy: a price system inside a framework of planning, tax and public enterprise.", size=8.4, fill=MUTED))
    write_svg("ch01_systems.svg", svg(w, h, "\n".join(b)))


def recap_ch01():
    recap_card("recap_ch01.svg", "Chapter 1 in One Breath", [
        ("Scarcity", "wants are unlimited and resources are limited, so every society must choose."),
        ("Opportunity cost", "the value of the next best alternative forgone — not the money spent."),
        ("PPC", "on the curve is efficient, inside is unemployment, outside is unattainable; growth shifts it out."),
        ("Factors", "land → rent, labour → wages, capital → interest, entrepreneur → profit."),
    ])
