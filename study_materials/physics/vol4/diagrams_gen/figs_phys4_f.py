"""Volume 4 figures, part F: Chapter 6, radioactivity and nuclear energy."""

from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from common import (
    BLUE, BORDER, GREEN, MUTED, NAVY, RED, SLATE,
    arrow2, dot, line, poly, rect, recap_card, save, svg, t, write_svg,
)

FIGURES = ["ch06_decay", "ch06_penetration", "ch06_split", "recap_ch06"]


# ── 6.2 half-life ───────────────────────────────────────────────────────────
def ch06_decay():
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(6.2, 2.65))

    # (a) the decay curve
    t = np.linspace(0, 24, 400)
    N = 100 * 0.5 ** (t / 4.0)
    ax1.plot(t, N, color=GREEN, lw=2.2)
    for k in range(5):
        ax1.plot([4 * k, 4 * k], [0, 100 * 0.5 ** k], color=RED, lw=0.9, ls=":")
        ax1.plot([0, 4 * k], [100 * 0.5 ** k, 100 * 0.5 ** k], color=RED, lw=0.9, ls=":")
        if k:
            ax1.plot(4 * k, 100 * 0.5 ** k, "o", ms=3.6, color=RED)
    ax1.annotate("half-life\n4 days", xy=(4, 50), xytext=(6.0, 74),
                 fontsize=7.0, color=RED,
                 arrowprops=dict(arrowstyle="->", color=RED, lw=0.8))
    ax1.set_xlim(0, 24)
    ax1.set_ylim(0, 108)
    ax1.set_xlabel("time / days", fontsize=8)
    ax1.set_ylabel("nuclei left / %", fontsize=8)
    ax1.set_title("(a) every half-life halves what is left", fontsize=8.4, color=NAVY,
                  weight="bold")
    for s in ("top", "right"):
        ax1.spines[s].set_visible(False)
    ax1.grid(True, color="#E2E8F0", lw=0.7)
    ax1.set_axisbelow(True)

    # (b) the same decay as a count rate, halving step by step
    steps = ["0", "1", "2", "3", "4"]
    rates = [800, 400, 200, 100, 50]
    ax2.bar(steps, rates, color=GREEN, width=0.58, zorder=2)
    for x, r in zip(steps, rates):
        ax2.text(x, r + 22, str(r), ha="center", va="bottom", fontsize=7.2, color=NAVY)
    ax2.set_ylim(0, 940)
    ax2.set_xlabel("half-lives elapsed", fontsize=8)
    ax2.set_ylabel("count rate / min⁻¹", fontsize=8)
    ax2.set_title("(b) the count rate follows the same law", fontsize=8.4, color=NAVY,
                  weight="bold")
    for s in ("top", "right"):
        ax2.spines[s].set_visible(False)
    ax2.grid(True, axis="y", color="#E2E8F0", lw=0.7, zorder=0)
    ax2.set_axisbelow(True)

    fig.tight_layout()
    save(fig, "ch06_decay.svg")


# ── 6.3 penetrating power ───────────────────────────────────────────────────
def ch06_penetration():
    w, h = 680, 292
    b = [t(340, 20, "WHAT STOPS EACH RADIATION", size=10.6, weight="bold")]

    b.append(rect(14, 34, 652, 226, "#FFFFFF", BORDER, 7, 1.2))

    rows = [
        ("alpha", "two protons + two neutrons", RED),
        ("beta", "a fast electron from the nucleus", BLUE),
        ("gamma", "a very short electromagnetic wave", "#7C3AED"),
    ]

    for i, (name, note, col) in enumerate(rows):
        y = 86 + i * 58
        b.append(t(30, y, name, size=9.4, weight="bold", fill=col, anchor="start"))
        b.append(t(30, y + 13, note, size=7.2, fill=MUTED, anchor="start"))
        b.append(dot(272, y - 2, 6.4, NAVY))

        stop = {0: 336, 1: 452, 2: 616}[i]
        b.append(arrow2(282, y - 2, stop, y - 2, color=col, sw=1.6, size=5.5))

    b.append(t(272, 246, "source", size=6.8, fill=MUTED))

    def barrier(x, label, sub):
        b.append(rect(x, 66, 9, 160, "#E2E8F0", SLATE, 2, 1.2))
        b.append(t(x + 4.5, 246, label, size=8.0, weight="bold", fill=SLATE))
        b.append(t(x + 4.5, 257, sub, size=7.0, fill=MUTED))

    barrier(332, "paper", "or a few cm of air")
    barrier(448, "aluminium", "a few mm")
    barrier(612, "lead", "a few cm")

    write_svg("ch06_penetration.svg", svg(w, h, "\n".join(b)))


# ── 6.5 fission and fusion ──────────────────────────────────────────────────
def ch06_split():
    w, h = 680, 306
    b = [t(340, 20, "SPLITTING HEAVY NUCLEI, JOINING LIGHT ONES", size=10.6, weight="bold")]

    # left: fission
    b.append(rect(14, 34, 326, 240, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(177, 52, "FISSION", size=9.2, weight="bold", fill=GREEN))

    # incident neutron
    b.append(dot(30, 120, 3.2, BLUE))
    b.append(t(30, 104, "n", size=6.8, fill=BLUE))
    b.append(arrow2(38, 120, 46, 120, color=BLUE, sw=1.2, size=5))

    # parent
    b.append(dot(72, 120, 20, "#FDE68A", "#B45309", 1.4))
    b.append(t(72, 123, "U-235", size=7.2, weight="bold", fill="#92400E"))

    # the split: one arrow to each fragment
    b.append(arrow2(96, 114, 136, 96, color=MUTED, sw=1.3, size=5.5))
    b.append(arrow2(96, 126, 136, 144, color=MUTED, sw=1.3, size=5.5))

    # fragments
    b.append(dot(152, 92, 13, "#FCA5A5", "#B91C1C", 1.3))
    b.append(t(152, 95, "Ba", size=6.8, weight="bold", fill="#7F1D1D"))
    b.append(dot(152, 148, 10, "#BFDBFE", "#1D4ED8", 1.3))
    b.append(t(152, 151, "Kr", size=6.6, weight="bold", fill="#1E3A8A"))

    # three neutrons out
    for yy in (78, 120, 162):
        b.append(dot(206, yy, 3.4, BLUE))
        b.append(t(216, yy + 2.5, "n", size=6.8, fill=BLUE, anchor="start"))

    b.append(t(177, 208, "The nucleus splits asymmetrically — barium", size=7.5, fill=NAVY))
    b.append(t(177, 220, "and krypton are the usual fragments — and", size=7.5, fill=NAVY))
    b.append(t(177, 232, "two or three neutrons come out, each able", size=7.5, fill=NAVY))
    b.append(t(177, 244, "to split the next nucleus.", size=7.5, fill=NAVY))

    # right: fusion
    b.append(rect(350, 34, 316, 240, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(508, 52, "FUSION", size=9.2, weight="bold", fill=GREEN))

    b.append(dot(414, 108, 11, "#FCA5A5", "#B91C1C", 1.3))
    b.append(t(414, 111, "H", size=6.8, weight="bold", fill="#7F1D1D"))
    b.append(dot(450, 108, 13, "#BFDBFE", "#1D4ED8", 1.3))
    b.append(t(450, 111, "H", size=6.8, weight="bold", fill="#1E3A8A"))
    b.append(arrow2(472, 108, 516, 108, color=MUTED, sw=1.4, size=6))

    b.append(dot(552, 108, 17, "#FDE68A", "#B45309", 1.4))
    b.append(t(552, 112, "He", size=7.2, weight="bold", fill="#92400E"))
    b.append(dot(596, 82, 3.4, BLUE))
    b.append(t(606, 84.5, "n", size=6.8, fill=BLUE, anchor="start"))

    b.append(t(508, 176, "The Sun runs on this reaction. Four", size=7.5, fill=NAVY))
    b.append(t(508, 188, "protons become helium, and the mass", size=7.5, fill=NAVY))
    b.append(t(508, 200, "lost reappears as 26.7 MeV of energy.", size=7.5, fill=NAVY))
    b.append(t(508, 224, "Both reactions release energy because", size=7.4, fill=MUTED))
    b.append(t(508, 236, "the product is more tightly bound than", size=7.4, fill=MUTED))
    b.append(t(508, 248, "what went in: E = mc², from the mass defect.", size=7.4, fill=MUTED))

    write_svg("ch06_split.svg", svg(w, h, "\n".join(b)))


def recap_ch06():
    recap_card(
        "recap_ch06.svg",
        "Chapter 6 recap card — radioactivity and nuclear physics",
        [
            ("The three radiations",
             "alpha = ⁴₂He, beta = a fast electron, gamma = a photon. Alpha is the most ionising, gamma the most penetrating."),
            ("Decay equations",
             "Alpha: A − 4, Z − 2. Beta: A unchanged, Z + 1. Gamma: neither changes — only the energy does."),
            ("Half-life",
             "The time for half the nuclei to decay. After n half-lives the fraction left is (1/2)ⁿ; nothing outside the nucleus changes the rate."),
            ("Fission and fusion",
             "Fission splits a heavy nucleus, fusion joins light ones. Both release energy from the mass defect, E = mc²."),
        ],
    )
