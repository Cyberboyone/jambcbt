"""Volume 2 figures, part C: development, population, unemployment and institutions."""

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
    "ch05_growth_development", "ch05_population", "ch05_transition", "ch05_unemployment",
    "ch05_ppc_growth", "recap_ch05",
    "ch06_institutions", "ch06_weights", "ch06_data", "recap_ch06",
]


def ch05_growth_development():
    w, h = 680, 264
    b = [t(340, 20, "GROWTH IS A NUMBER; DEVELOPMENT IS A CONDITION", size=10.2, weight="bold")]
    b.append(rect(18, 40, 300, 168, "#FFFFFF", GREEN, 8, 1.4))
    b.append(rect(18, 40, 300, 26, GREEN, GREEN, 5, 1.0))
    b.append(t(168, 58, "GROWTH", size=9.4, weight="bold", fill="#FFFFFF"))
    for i, (head, sub) in enumerate([("one measure", "the rise in real GDP"),
                                    ("one question", "is output larger than last year?"),
                                    ("can be measured", "in naira, at constant prices"),
                                    ("says nothing about", "who received it")]):
        y = 88 + i * 30
        b.append(t(34, y, head, size=7.9, weight="bold", fill=GREEN, anchor="start"))
        b.append(t(34, y + 13, sub, size=7.7, fill=SLATE, anchor="start"))

    b.append(rect(336, 40, 326, 168, "#FFFFFF", BLUE, 8, 1.4))
    b.append(rect(336, 40, 326, 26, BLUE, BLUE, 5, 1.0))
    b.append(t(499, 58, "DEVELOPMENT", size=9.4, weight="bold", fill="#FFFFFF"))
    for i, (head, sub) in enumerate([("several measures", "income, health, schooling, inequality"),
                                    ("one question", "are people's lives better, and for whom?"),
                                    ("includes growth", "but is not implied by it"),
                                    ("the HDI", "income + life expectancy + schooling")]):
        y = 88 + i * 30
        b.append(t(352, y, head, size=7.9, weight="bold", fill=BLUE, anchor="start"))
        b.append(t(352, y + 13, sub, size=7.7, fill=SLATE, anchor="start"))

    b.append(t(340, 226, "A country can grow without developing — if the output goes to a few, or costs the many their health.",
               size=7.9, fill=MUTED))
    b.append(t(340, 244, "It can also develop without much growth, briefly — but not for long, and not for everybody.",
               size=7.9, fill=MUTED))
    write_svg("ch05_growth_development.svg", svg(w, h, "\n".join(b)))


def ch05_population():
    """Population pyramid: a broad-based, young structure."""
    fig, ax = plt.subplots(figsize=(5.0, 3.4))
    bands = ["0–14", "15–29", "30–44", "45–59", "60+"]
    males = [22.0, 15.5, 9.4, 5.2, 2.1]
    females = [21.4, 15.9, 9.7, 5.0, 2.4]
    y = np.arange(len(bands))
    ax.barh(y, [-m for m in males], color=BLUE, height=0.62)
    ax.barh(y, females, color=AMBER, height=0.62)
    ax.axvline(0, color=SLATE, lw=1.0)
    ax.set_yticks(y)
    ax.set_yticklabels(bands, fontsize=7.4)
    ax.set_xticks([-20, -10, 0, 10, 20])
    ax.set_xticklabels(["20", "10", "0", "10", "20"], fontsize=7)
    ax.set_xlabel("% of population", fontsize=8)
    ax.set_xlim(-25.5, 25.5)
    ax.set_ylabel("age band", fontsize=8)
    ax.annotate("a broad base: dependency is high\nand the labour force is young",
                xy=(19.0, 0.25), xytext=(3.4, 3.62), fontsize=7.1, color=NAVY,
                arrowprops=dict(arrowstyle="->", color=NAVY, lw=0.9,
                                connectionstyle="arc3,rad=-0.25"))
    # Label the two halves on the chart itself: there is no room for a legend
    # among bars this wide, and a legend would sit on top of the data.
    ax.text(-24.0, 4.30, "MALE", fontsize=7.6, color=BLUE, weight="bold", ha="left")
    ax.text(24.0, 4.30, "FEMALE", fontsize=7.6, color=AMBER, weight="bold", ha="right")
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6, axis="x")
    ax.set_axisbelow(True)
    ax.set_title("NIGERIA'S PYRAMID: MANY CHILDREN, FEW ELDERS", fontsize=8.8, color=NAVY, weight="bold")
    save(fig, "ch05_population.svg")


def ch05_transition():
    """Demographic transition in four stages."""
    fig, ax = plt.subplots(figsize=(5.6, 2.8))
    t = np.linspace(0, 4, 400)
    births = 40 - 24 / (1 + np.exp(-(t - 1.9) * 3.0))
    deaths = 30 - 21 / (1 + np.exp(-(t - 1.2) * 2.2))
    ax.plot(t, births, color=GREEN, lw=1.9, label="birth rate")
    ax.plot(t, deaths, color=RED, lw=1.9, label="death rate")
    ax.fill_between(t, deaths, births, where=births > deaths, color=GREEN_LIGHT, alpha=0.8)
    for i, (lab, x) in enumerate([("stage 1", 0.5), ("stage 2", 1.5), ("stage 3", 2.6), ("stage 4", 3.6)]):
        ax.text(x, 6.0, lab, fontsize=7.0, color=MUTED, ha="center")
    ax.annotate("the gap is natural increase:\npopulation grows fastest here",
                xy=(2.0, 26), xytext=(2.25, 12.5), fontsize=7.0, color=NAVY,
                arrowprops=dict(arrowstyle="->", color=NAVY, lw=0.9))
    ax.set_xlim(0, 4)
    ax.set_ylim(0, 44)
    ax.set_xticks([])
    ax.set_xlabel("time", fontsize=8)
    ax.set_ylabel("rate per 1,000", fontsize=8)
    ax.legend(fontsize=7.0, frameon=False, loc="upper right")
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("THE DEMOGRAPHIC TRANSITION: DEATH RATES FALL FIRST", fontsize=8.6,
                 color=NAVY, weight="bold")
    save(fig, "ch05_transition.svg")


def ch05_unemployment():
    w, h = 680, 288
    b = [t(340, 20, "FOUR KINDS OF UNEMPLOYMENT, FOUR DIFFERENT CURES", size=10.2, weight="bold")]
    items = [
        ("FRICTIONAL", "between jobs, or just out of school; short and unavoidable", GREEN),
        ("STRUCTURAL", "the skill or the industry no longer exists where it is needed", BLUE),
        ("CYCLICAL", "demand has fallen in a slump; the jobs return when demand does", AMBER),
        ("SEASONAL", "harvest, harmattan, the school year — it recurs on a calendar", PURPLE),
    ]
    for i, (head, body, col) in enumerate(items):
        r, c = divmod(i, 2)
        x, y = 18 + c * 330, 42 + r * 92
        b.append(rect(x, y, 314, 78, "#FFFFFF", col, 7, 1.4))
        b.append(rect(x, y, 314, 5, col, col, 2.5, 1.0))
        b.append(t(x + 14, y + 26, head, size=8.2, weight="bold", fill=col, anchor="start"))
        for j, ln in enumerate(_wrap(body, 46)):
            b.append(t(x + 14, y + 44 + j * 13, ln, size=7.9, fill=SLATE, anchor="start"))

    b.append(rect(18, 232, 644, 44, LIGHT_BG, BORDER, 6, 1.0))
    b.append(t(340, 250, "The cure follows the name: retrain the structural, spend against the cyclical,", size=7.9, weight="bold", fill=NAVY))
    b.append(t(340, 265, "plan around the seasonal — and accept the frictional, because a labour market with none is frozen.", size=7.9, fill=SLATE))
    write_svg("ch05_unemployment.svg", svg(w, h, "\n".join(b)))


def ch05_ppc_growth():
    """Growth shifts the PPC; development also asks where inside it the economy sits."""
    fig, ax = plt.subplots(figsize=(5.4, 2.9))
    x0 = np.linspace(0, 10.4, 400)
    x1 = np.linspace(0, 12.6, 400)
    y0 = 10.0 * np.sqrt(np.clip(1 - (x0 / 10.4) ** 2, 0, 1))
    y1 = 11.6 * np.sqrt(np.clip(1 - (x1 / 12.6) ** 2, 0, 1))
    ax.plot(x0, y0, color=GREEN, lw=2.0)
    ax.plot(x1, y1, color=BLUE, lw=2.0, ls="--")
    ax.text(0.35, 9.15, "before", fontsize=7.4, color=GREEN, weight="bold")
    ax.text(0.35, 11.35, "after growth", fontsize=7.4, color=BLUE, weight="bold")
    ax.annotate("", (4.2, np.interp(4.2, x1, y1) + 0.2), (4.2, np.interp(4.2, x0, y0) + 0.2),
                arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.2))
    ax.text(4.9, 12.35, "growth moves the whole curve out", fontsize=7.1, color=BLUE)
    ax.plot([3.0], [3.2], "o", color=RED, ms=6)
    ax.annotate("inside: unused capacity", xy=(3.05, 3.0), xytext=(0.35, 1.15),
                fontsize=7.1, color=RED,
                arrowprops=dict(arrowstyle="->", color=RED, lw=0.9))
    ax.set_xlabel("capital goods", fontsize=8)
    ax.set_ylabel("consumer goods", fontsize=8)
    ax.set_xlim(0, 13.4)
    ax.set_ylim(0, 13.2)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("GROWTH MOVES THE CURVE; DEVELOPMENT MOVES YOU TO IT", fontsize=8.4,
                 color=NAVY, weight="bold")
    save(fig, "ch05_ppc_growth.svg")


def recap_ch05():
    recap_card("recap_ch05.svg", "Chapter 5 in One Breath", [
        ("Growth vs development", "growth is more output; development is better lives, measured by the HDI."),
        ("HDI", "income, life expectancy and schooling, each indexed 0 to 1, then averaged."),
        ("Population", "a broad-based pyramid means high dependency and a fast-growing labour force."),
        ("Dependency ratio", "under-15s and over-64s divided by the working-age population, times 100."),
        ("Unemployment", "frictional, structural, cyclical, seasonal — the name gives the cure."),
    ])


def ch06_institutions():
    w, h = 680, 300
    b = [t(340, 20, "WHO DOES WHAT: THE INSTITUTIONS THE PAPER NAMES", size=10.0, weight="bold")]
    items = [
        ("CBN", "Central Bank of Nigeria", "issues the naira, holds reserves, sets the MPR", GREEN),
        ("NBS", "National Bureau of Statistics", "publishes GDP, inflation and unemployment figures", BLUE),
        ("FIRS", "Federal Inland Revenue Service", "collects company tax, VAT and the federal share", AMBER),
        ("SEC", "Securities and Exchange Commission", "regulates the capital market and the exchange", PURPLE),
        ("NDIC", "Nigeria Deposit Insurance Corporation", "insures deposits, so a bank failure is survivable", RED),
        ("FCC", "Fiscal Responsibility Commission", "watches the federal budget and the debt rule", SLATE),
    ]
    for i, (abbr, name, job, col) in enumerate(items):
        r, c = divmod(i, 2)
        x, y = 18 + c * 330, 40 + r * 82
        b.append(rect(x, y, 314, 70, "#FFFFFF", col, 7, 1.4))
        b.append(rect(x, y, 5, 70, col, col, 2.5, 1.0))
        b.append(t(x + 18, y + 24, abbr, size=10.4, weight="bold", fill=col, anchor="start"))
        b.append(t(x + 78, y + 24, name, size=7.6, fill=NAVY, anchor="start"))
        for j, ln in enumerate(_wrap(job, 52)):
            b.append(t(x + 18, y + 44 + j * 12, ln, size=7.6, fill=SLATE, anchor="start"))
    b.append(t(340, 292, "One abbreviation per institution is enough for the paper — but it must be the right one.",
               size=7.9, fill=MUTED))
    write_svg("ch06_institutions.svg", svg(w, h, "\n".join(b)))


def ch06_weights():
    """Where the forty marks sit."""
    fig, ax = plt.subplots(figsize=(5.4, 2.8))
    labels = ["Basic concepts", "Demand & supply", "Elasticity", "Production & cost",
              "Market structure", "National economy", "Development"]
    marks = [4, 8, 4, 4, 3, 12, 5]
    y = np.arange(len(labels))
    ax.barh(y, marks, color=GREEN, height=0.6)
    for i, m in enumerate(marks):
        ax.text(m + 0.25, i, str(m), va="center", fontsize=7.4, color=NAVY)
    ax.set_yticks(y)
    ax.set_yticklabels(labels, fontsize=7.4)
    ax.invert_yaxis()
    ax.set_xlabel("average questions in the forty-question paper", fontsize=7.6)
    ax.set_xlim(0, 14)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6, axis="x")
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("WHERE THE FORTY MARKS SIT", fontsize=8.8, color=NAVY, weight="bold")
    save(fig, "ch06_weights.svg")


def ch06_data():
    """Five numbers a candidate should be able to discuss sensibly."""
    w, h = 680, 250
    b = [t(340, 20, "FIVE NUMBERS, AND WHAT EACH ONE MEASURES", size=10.2, weight="bold")]
    rows = [
        ("GDP growth", "the year-on-year change in real GDP", "output"),
        ("Headline inflation", "the change in the CPI over twelve months", "prices"),
        ("MPR", "the policy rate the CBN sets", "the cost of credit"),
        ("Unemployment rate", "the share of the labour force without work and seeking it", "jobs"),
        ("External reserves", "foreign exchange held by the CBN", "the ability to pay for imports"),
    ]
    b.append(rect(18, 38, 644, 176, "#FFFFFF", BORDER, 7, 1.1))
    for x, hd in ((34, "the statistic"), (300, "what it actually measures"), (556, "it is about")):
        b.append(t(x, 58, hd, size=7.7, weight="bold", fill=NAVY, anchor="start"))
    for i, (name, meaning, about) in enumerate(rows):
        y = 84 + i * 26
        b.append(line(28, y + 9, 652, y + 9, color="#E2E8F0", sw=0.7))
        b.append(t(34, y, name, size=8.0, weight="bold", fill=SLATE, anchor="start"))
        b.append(t(300, y, meaning, size=7.8, fill=SLATE, anchor="start"))
        b.append(t(556, y, about, size=7.8, fill=GREEN, anchor="start"))
    b.append(t(340, 230, "The paper does not expect the current figure; it expects you to know what the figure would mean.",
               size=7.9, fill=MUTED))
    b.append(t(340, 246, "Quote a number only if you are sure of it — a wrong figure costs the mark a description would have won.",
               size=7.9, fill=MUTED))
    write_svg("ch06_data.svg", svg(w, h, "\n".join(b)))


def recap_ch06():
    recap_card("recap_ch06.svg", "Chapter 6 in One Breath", [
        ("CBN", "monetary policy, the naira, the reserves and the banking system's lender of last resort."),
        ("NBS / FIRS", "the statistics office publishes the data; the revenue service collects the tax."),
        ("Weights", "the national economy carries about a third of the paper — more than any chapter."),
        ("Data questions", "name what the statistic measures before you quote any number."),
        ("Nigeria's structure", "an oil-revenue, import-dependent, young and urbanising economy."),
    ])


def _wrap(s: str, n: int) -> list[str]:
    words, out, cur = s.split(), [], ""
    for word in words:
        trial = f"{cur} {word}".strip()
        if not cur or len(trial) <= n:
            cur = trial
        else:
            out.append(cur)
            cur = word
    if cur:
        out.append(cur)
    return out
