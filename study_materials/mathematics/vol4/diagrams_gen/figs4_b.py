"""Volume 4 diagrams — statistics, permutations and probability (chapters 6–10)."""

from __future__ import annotations

import numpy as np
import matplotlib.pyplot as plt

from common import (GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED,
                    BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT,
                    PURPLE, PURPLE_LIGHT, write_svg, svg, t, lines, rect, arrow,
                    line, card, banner, save, esc)


# ── chapter 6: data representation ──────────────────────────────────────────
def ch06_chart_types():
    fig, axes = plt.subplots(1, 3, figsize=(7.7, 2.6))
    cats = ["A", "B", "C", "D"]
    vals = [8, 14, 11, 7]
    axes[0].bar(cats, vals, color=GREEN, width=0.6)
    axes[0].set_title("bar chart", fontsize=10, color=NAVY)
    axes[1].pie(vals, labels=cats, colors=[GREEN, BLUE, AMBER, PURPLE],
                autopct="%1.0f%%", textprops={"fontsize": 8.5})
    axes[1].set_title("pie chart", fontsize=10, color=NAVY)
    axes[2].plot(cats, vals, "o-", color=PURPLE, lw=1.8)
    axes[2].set_title("line graph", fontsize=10, color=NAVY)
    for ax in axes:
        ax.tick_params(labelsize=8)
        for s in ("top", "right"):
            ax.spines[s].set_visible(False)
    axes[1].set_xticks([])
    save(fig, "ch06_chart_types.svg")


def ch06_histogram():
    fig, ax = plt.subplots(figsize=(6.4, 3.0))
    edges = [0, 10, 20, 30, 40, 50]
    freqs = [6, 11, 17, 9, 4]
    widths = [10, 10, 10, 10, 10]
    ax.bar([e + 5 for e in edges[:-1]], freqs, width=9.2, color=GREEN, edgecolor="white")
    for e, f in zip([e + 5 for e in edges[:-1]], freqs):
        ax.text(e, f + 0.35, str(f), ha="center", fontsize=9, color=NAVY)
    ax.set_xticks(edges)
    ax.set_xlabel("class boundary")
    ax.set_ylabel("frequency")
    ax.set_ylim(0, 19)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(axis="y", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch06_histogram.svg")


def ch06_ogive():
    fig, ax = plt.subplots(figsize=(6.4, 3.0))
    bounds = [0, 10, 20, 30, 40, 50]
    cum = [0, 6, 17, 34, 43, 47]
    ax.plot(bounds, cum, "o-", color=BLUE, lw=2.0)
    ax.plot([20, 20], [0, 17], color=MUTED, ls=(0, (3, 3)), lw=1)
    ax.axhline(17, color=MUTED, ls=(0, (3, 3)), lw=1)
    ax.annotate("median read off\nthe cumulative curve", xy=(20, 17), xytext=(26, 9),
                fontsize=9, color=BLUE, arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.0))
    ax.set_xlabel("upper class boundary")
    ax.set_ylabel("cumulative frequency")
    ax.set_ylim(0, 52)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch06_ogive.svg")


def ch06_frequency_table():
    w, h = 760, 230
    b = [rect(0, 0, w, h, "#FFFFFF", GREEN, 10, 1.3),
         t(380, 26, "From Raw Data to a Grouped Frequency Table", size=12, weight="bold")]
    cols = ["Class", "Tally", "f", "Midpoint x", "f x"]
    widths = [110, 180, 70, 150, 110]
    x = 60
    for c, wd in zip(cols, widths):
        b.append(rect(x, 44, wd, 30, NAVY, NAVY, 0, 1))
        b.append(t(x + wd / 2, 64, c, size=9.4, weight="bold", fill="#FFFFFF"))
        x += wd
    rows = [("1 – 10", "||||  |||", "8", "5.5", "44"), ("11 – 20", "||||  ||||  |", "11", "15.5", "170.5"),
            ("21 – 30", "||||  ||||  ||||", "14", "25.5", "357"), ("31 – 40", "||||  ||", "7", "35.5", "248.5")]
    for r, row in enumerate(rows):
        x = 60
        y = 74 + r * 30
        for c, wd in zip(row, widths):
            b.append(rect(x, y, wd, 30, GREEN_LIGHT if r % 2 == 0 else "#FFFFFF", BORDER, 0, 0.8))
            b.append(t(x + wd / 2, y + 20, c, size=9.2, fill=SLATE))
            x += wd
    b.append(t(380, 216, "Mean of grouped data:  x̄ = Σfx / Σf", size=10, fill=GREEN))
    write_svg("ch06_frequency_table.svg", svg(w, h, "\n".join(b)))


# ── chapter 7: measures of location ─────────────────────────────────────────
def ch07_three_averages():
    fig, axes = plt.subplots(1, 3, figsize=(7.7, 2.5))
    data = [2, 3, 3, 4, 9]
    for ax, title, mark, col in zip(axes, ["mean", "median", "mode"], [4.2, 3, 3],
                                    [BLUE, PURPLE, AMBER]):
        ax.hist(data, bins=np.arange(1.5, 10.5, 1), color=GREEN_MID, edgecolor="white")
        ax.axvline(mark, color=col, lw=2)
        ax.set_title(f"{title} = {mark:g}", fontsize=10, color=col)
        ax.set_xticks([2, 3, 4, 9])
        ax.set_yticks([])
        ax.tick_params(labelsize=8)
        for s in ("top", "right", "left"):
            ax.spines[s].set_visible(False)
    save(fig, "ch07_three_averages.svg")


def ch07_grouped_median():
    fig, ax = plt.subplots(figsize=(6.6, 3.1))
    ax.bar([5.5, 15.5, 25.5, 35.5, 45.5], [6, 11, 17, 9, 4], width=9.2,
           color=GREEN_MID, edgecolor="white")
    ax.axhline(23.5, color=RED, ls=(0, (4, 3)), lw=1.3)
    ax.text(0.3, 24.6, "N/2 = 23.5", fontsize=9, color=RED)
    ax.axvline(20, color=MUTED, lw=0.9)
    ax.annotate("median class 20–30", xy=(22, 17), xytext=(27, 25.5), fontsize=9, color=NAVY,
                arrowprops=dict(arrowstyle="->", color=NAVY, lw=1.0))
    ax.set_xlabel("class midpoint")
    ax.set_ylabel("frequency")
    ax.set_ylim(0, 30)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(axis="y", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch07_grouped_median.svg")


def ch07_quartile_map():
    w, h = 760, 180
    b = [rect(0, 0, w, h, "#FFFFFF", PURPLE, 10, 1.3),
         t(380, 26, "The Five Numbers of a Distribution", size=12, weight="bold")]
    xs = [70, 200, 380, 560, 690]
    labels = ["min", "Q1", "median", "Q3", "max"]
    b.append(line(70, 100, 690, 100, color=NAVY, sw=1.6))
    b.append(f'<rect x="200" y="88" width="360" height="24" fill="{PURPLE_LIGHT}" stroke="{PURPLE}" stroke-width="1.2"/>')
    for x, lab in zip(xs, labels):
        b.append(line(x, 84, x, 116, color=PURPLE, sw=1.6))
        b.append(t(x, 136, lab, size=10, fill=NAVY))
    b.append(t(380, 166, "Q1 = lower quartile, Q3 = upper quartile; the box holds the middle 50% of the data", size=9, fill=SLATE))
    write_svg("ch07_quartile_map.svg", svg(w, h, "\n".join(b)))


# ── chapter 8: dispersion ───────────────────────────────────────────────────
def ch08_same_mean_diff_spread():
    fig, ax = plt.subplots(figsize=(6.6, 2.9))
    x = np.linspace(0, 20, 400)
    tight = np.exp(-((x - 10) ** 2) / 2)
    wide = 0.45 * np.exp(-((x - 10) ** 2) / 22)
    ax.plot(x, tight, color=GREEN, lw=2.2, label="small standard deviation")
    ax.plot(x, wide, color=RED, lw=2.2, label="large standard deviation")
    ax.axvline(10, color=MUTED, ls=(0, (3, 3)), lw=1)
    ax.text(10.2, 1.02, "same mean", fontsize=9, color=MUTED)
    ax.set_yticks([])
    ax.set_xlabel("value")
    for s in ("top", "right", "left"):
        ax.spines[s].set_visible(False)
    ax.legend(frameon=False, fontsize=9, loc="upper right")
    save(fig, "ch08_spread.svg")


def ch08_variance_flow():
    w, h = 760, 200
    b = [rect(0, 0, w, h, "#FFFFFF", BLUE, 10, 1.3),
         t(380, 26, "Variance in Four Moves", size=12, weight="bold")]
    steps = [("mean", "x̄ = Σx / n"), ("deviations", "x − x̄"),
             ("squares", "(x − x̄)²"), ("variance", "σ² = Σ(x − x̄)² / n")]
    for i, (title, formula) in enumerate(steps):
        x = 20 + i * 184
        b.append(rect(x, 58, 164, 74, BLUE_LIGHT, BLUE, 8, 1.3))
        b.append(t(x + 82, 84, title, size=10, weight="bold", fill=NAVY))
        b.append(t(x + 82, 110, formula, size=9.6, fill=SLATE))
        if i < 3:
            b.append(arrow(x + 168, 95, x + 184, 95, color=BLUE, sw=1.3, marker="an"))
    b.append(t(380, 168, "standard deviation σ = √variance — same units as the data", size=9.5, fill=GREEN))
    write_svg("ch08_variance_flow.svg", svg(w, h, "\n".join(b)))


def ch08_grouped_sd():
    w, h = 760, 210
    b = [rect(0, 0, w, h, "#FFFFFF", GREEN, 10, 1.3),
         t(380, 26, "Standard Deviation of Grouped Data", size=12, weight="bold")]
    rows = [("Class", "f", "x", "fx", "x²", "fx²"),
            ("1 – 10", "8", "5.5", "44", "30.25", "242"),
            ("11 – 20", "11", "15.5", "170.5", "240.25", "2642.75"),
            ("21 – 30", "14", "25.5", "357", "650.25", "9103.5"),
            ("31 – 40", "7", "35.5", "248.5", "1260.25", "8821.75"),
            ("Total", "40", "—", "820", "—", "20810")]
    xs = [55, 175, 275, 375, 475, 600]
    widths = [120, 100, 100, 100, 125, 105]
    for r, row in enumerate(rows):
        for c, (x, wd) in enumerate(zip(xs, widths)):
            head = r == 0
            tot = r == len(rows) - 1
            fill = NAVY if head else (GREEN_LIGHT if tot else "#FFFFFF")
            stroke = NAVY if head else BORDER
            b.append(rect(x, 46 + r * 26, wd, 26, fill, stroke, 0, 0.9))
            col = "#FFFFFF" if head else (SLATE if not tot else NAVY)
            weight = "bold" if (head or tot) else "normal"
            b.append(t(x + wd / 2, 64 + r * 26, row[c], size=9, fill=col, weight=weight))
    b.append(t(380, 200, "σ = √(Σfx²/n − (Σfx/n)²) = √(520.25 − 420.25) = 10", size=9.6, fill=GREEN))
    write_svg("ch08_grouped_sd.svg", svg(w, h, "\n".join(b)))


# ── chapter 9: permutations and combinations ────────────────────────────────
def ch09_arrangement_tree():
    w, h = 760, 230
    b = [rect(0, 0, w, h, "#FFFFFF", PURPLE, 10, 1.3),
         t(380, 26, "Arranging 3 letters: 3 × 2 × 1 = 6 orders", size=12, weight="bold")]
    firsts = ["A", "B", "C"]
    for i, f in enumerate(firsts):
        x = 90 + i * 220
        b.append(rect(x, 52, 90, 34, PURPLE_LIGHT, PURPLE, 6, 1.2))
        b.append(t(x + 45, 74, f"first: {f}", size=9.4, fill=NAVY))
        second = [c for c in firsts if c != f]
        for j, c2 in enumerate(second):
            xx = x - 30 + j * 75
            b.append(rect(xx, 104, 66, 30, "#FFFFFF", BORDER, 6, 1.0))
            b.append(t(xx + 33, 124, f"{f}{c2}", size=9.2, fill=SLATE))
            b.append(line(x + 45, 86, xx + 33, 104, color=BORDER, sw=1.0))
            third = [c for c in firsts if c not in (f, c2)][0]
            b.append(t(xx + 33, 152, f"{f}{c2}{third}", size=8.8, fill=PURPLE, weight="bold"))
    b.append(t(380, 196, "6 arrangements in all — and $^3P_3 = 3! = 6$", size=10, fill=SLATE))
    write_svg("ch09_arrangement_tree.svg", svg(w, h, "\n".join(b)))


def ch09_perm_vs_comb():
    w, h = 760, 200
    b = [rect(0, 0, w, h, "#FFFFFF", GREEN, 10, 1.3),
         t(380, 26, "Order matters, or it does not?", size=12, weight="bold")]
    b.append(rect(22, 48, 350, 122, GREEN_LIGHT, GREEN, 8, 1.4))
    b.append(t(197, 76, "PERMUTATION — order matters", size=10.5, weight="bold", fill=GREEN))
    b.append(t(197, 102, "AB and BA are different", size=9.4, fill=SLATE))
    b.append(t(197, 126, "$^n P_r = n! / (n-r)!$", size=10.2))
    b.append(t(197, 152, "arrangements, queues, passwords,", size=8.8, fill=SLATE))
    b.append(t(197, 166, "podium finishes, ranks", size=8.8, fill=SLATE))
    b.append(rect(388, 48, 350, 122, BLUE_LIGHT, BLUE, 8, 1.4))
    b.append(t(563, 76, "COMBINATION — order does not matter", size=10.5, weight="bold", fill=BLUE))
    b.append(t(563, 102, "AB and BA are the same choice", size=9.4, fill=SLATE))
    b.append(t(563, 126, "$^n C_r = n! / (r!(n-r)!)$", size=10.2))
    b.append(t(563, 152, "committees, teams, selections,", size=8.8, fill=SLATE))
    b.append(t(563, 166, "cards from a pack", size=8.8, fill=SLATE))
    write_svg("ch09_perm_vs_comb.svg", svg(w, h, "\n".join(b)))


# ── chapter 10: probability ─────────────────────────────────────────────────
def ch10_sample_space():
    fig, ax = plt.subplots(figsize=(5.6, 3.2))
    ax.set_xlim(0, 7)
    ax.set_ylim(0, 7)
    ax.set_aspect("equal")
    for i in range(1, 7):
        for j in range(1, 7):
            ax.add_patch(plt.Rectangle((i, j), 1, 1, fill=True,
                                       facecolor=GREEN_MID if (i + j) == 7 else "#FFFFFF",
                                       edgecolor=BORDER, lw=0.8))
            ax.text(i + 0.5, j + 0.5, f"{i+j}", ha="center", va="center", fontsize=8,
                    color=NAVY)
    ax.set_xticks(np.arange(1.5, 6.6, 1))
    ax.set_xticklabels(range(1, 7), fontsize=8)
    ax.set_yticks(np.arange(1.5, 6.6, 1))
    ax.set_yticklabels(range(1, 7), fontsize=8)
    ax.set_xlabel("die 1")
    ax.set_ylabel("die 2")
    ax.set_title("36 equally likely outcomes; the shaded sum is 7", fontsize=9.5, color=NAVY)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    save(fig, "ch10_sample_space.svg")


def ch10_venn_rules():
    fig, ax = plt.subplots(figsize=(5.8, 3.0))
    from matplotlib.patches import Circle
    ax.add_patch(Circle((2.4, 2), 1.5, facecolor=GREEN_MID, edgecolor=GREEN, lw=1.6, alpha=0.85))
    ax.add_patch(Circle((3.9, 2), 1.5, facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.6, alpha=0.85))
    ax.text(1.8, 2, "A", fontsize=12, color=NAVY)
    ax.text(4.5, 2, "B", fontsize=12, color=NAVY)
    ax.text(3.15, 2, "A and B", fontsize=9, color=NAVY)
    ax.text(3.15, 0.25, "P(A or B) = P(A) + P(B) − P(A and B)", fontsize=10, color=NAVY)
    ax.set_xlim(0.4, 6)
    ax.set_ylim(-0.1, 4)
    ax.axis("off")
    save(fig, "ch10_venn_rules.svg")


def ch10_tree():
    w, h = 760, 260
    b = [rect(0, 0, w, h, "#FFFFFF", AMBER, 10, 1.3),
         t(380, 26, "Two draws without replacement — a tree keeps the denominators honest", size=11, weight="bold")]
    # root
    b.append(f'<circle cx="80" cy="140" r="7" fill="{NAVY}"/>')
    b.append(t(80, 168, "start", size=9, fill=SLATE))
    branches = [("first: red", "3/5", 150, RED), ("first: blue", "2/5", 230, BLUE)]
    for i, (label, p, y, col) in enumerate(branches):
        b.append(line(88, 140, 300, y, color=col, sw=1.6))
        b.append(t(210, y - 8, label, size=9, fill=col))
        b.append(t(160, y + 16, p, size=9.4, fill=NAVY, weight="bold"))
        secs = [("same colour", "2/4" if i == 0 else "1/4"), ("other colour", "2/4" if i == 0 else "3/4")]
        for j, (lab, q) in enumerate(secs):
            yy = y - 34 + j * 68
            b.append(line(300, y, 500, yy, color=col, sw=1.2, dash="4,3"))
            b.append(t(520, yy - 6, lab, size=8.8, fill=SLATE, anchor="start"))
            b.append(t(500, yy + 14, q, size=9, fill=NAVY, weight="bold", anchor="start"))
            b.append(t(600, yy + 14, "", size=9))
    b.append(t(620, 60, "multiply along", size=9, fill=MUTED))
    b.append(t(620, 76, "the branches", size=9, fill=MUTED))
    write_svg("ch10_tree.svg", svg(w, h, "\n".join(b)))


def ch10_complement():
    w, h = 760, 150
    b = [rect(0, 0, w, h, "#FFFFFF", NAVY, 10, 1.3),
         t(380, 30, "P(not A) = 1 − P(A)", size=14, weight="bold", fill=GREEN)]
    b.append(t(380, 62, "The probabilities of an event and its complement always add to 1.", size=10, fill=SLATE))
    b.append(t(380, 92, "Questions that say “at least one”, “none”, or “not” are usually one subtraction.", size=10, fill=SLATE))
    b.append(t(380, 120, "P(at least one) = 1 − P(none)", size=11, fill=NAVY))
    write_svg("ch10_complement.svg", svg(w, h, "\n".join(b)))


# ── recap cards ─────────────────────────────────────────────────────────────
RECAPS = {
    "ch01": ("Limits", ["Substitute first", "0/0 means factorise", "Both sides must agree"]),
    "ch02": ("Differentiation", ["Power rule n x^(n-1)", "Product, quotient, chain", "f'(x) is the gradient"]),
    "ch03": ("Applications of dy/dx", ["f'(x) = 0 at turning points", "f'' decides max or min", "Rate = derivative of time"]),
    "ch04": ("Integration", ["x^(n+1)/(n+1) + c", "Definite: F(b) − F(a)", "Integration reverses dy/dx"]),
    "ch05": ("Area & motion", ["Area = integral of y dx", "Split at roots: signed area", "Velocity integrates to distance"]),
    "ch06": ("Representing data", ["Bar: categories", "Histogram: grouped numbers", "Ogive: cumulative"]),
    "ch07": ("Averages", ["Mean = Σx/n", "Median = middle value", "Mode = most frequent"]),
    "ch08": ("Dispersion", ["Range = max − min", "Variance = mean square deviation", "SD = √variance"]),
    "ch09": ("Perms & combs", ["Order matters: nPr", "Order ignored: nCr", "0! = 1"]),
    "ch10": ("Probability", ["P = favourable/total", "Add for or, multiply for and", "Complement: 1 − P"]),
}


def recap_cards():
    for key, (title, points) in RECAPS.items():
        w, h = 560, 180
        b = [rect(0, 0, w, h, "#FFFFFF", GREEN, 10, 1.3),
             rect(70, 18, 420, 32, NAVY, NAVY, 6, 0),
             t(280, 40, title, size=13, weight="bold", fill="#FFFFFF")]
        for i, p in enumerate(points):
            y = 78 + i * 30
            b.append(f'<circle cx="86" cy="{y - 4}" r="4" fill="{GREEN}"/>')
            b.append(t(102, y, p, size=10.5, fill=SLATE, anchor="start"))
        write_svg(f"recap_{key}.svg", svg(w, h, "\n".join(b)))
