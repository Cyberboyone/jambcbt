"""Volume 2 figures, part B: public finance and international trade."""

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
    "ch03_budget", "ch03_tax_types", "ch03_laffer", "ch03_incidence", "recap_ch03",
    "ch04_comparative", "ch04_tariff", "ch04_devaluation", "ch04_bop", "recap_ch04",
]


def ch03_budget():
    """The three budget positions, drawn as bar pairs."""
    fig, ax = plt.subplots(figsize=(5.6, 2.7))
    cases = ["balanced", "surplus", "deficit"]
    revenue = [100, 100, 100]
    spending = [100, 84, 122]
    x = np.arange(3)
    ax.bar(x - 0.19, revenue, width=0.36, color=GREEN, label="revenue")
    ax.bar(x + 0.19, spending, width=0.36, color=AMBER, label="spending")
    ax.axhline(100, color=SLATE, lw=0.9, ls=":")
    ax.set_xticks(x)
    ax.set_xticklabels(["balanced\nR = E", "surplus\nR > E", "deficit\nR < E"], fontsize=7.6)
    for i, (r, e) in enumerate(zip(revenue, spending)):
        if e > r:
            ax.annotate("", (i + 0.36, r), (i + 0.36, e),
                        arrowprops=dict(arrowstyle="<->", color=RED, lw=1.1))
            ax.text(i + 0.42, (r + e) / 2, "borrowed", fontsize=6.8, color=RED, ha="left", va="center")
        elif e < r:
            ax.annotate("", (i - 0.36, e), (i - 0.36, r),
                        arrowprops=dict(arrowstyle="<->", color=GREEN, lw=1.1))
            ax.text(i - 0.42, (r + e) / 2, "saved", fontsize=6.8, color=GREEN, ha="right", va="center")
    ax.set_ylabel("₦ billion", fontsize=8)
    ax.set_ylim(0, 152)
    ax.set_xlim(-0.6, 2.75)
    ax.legend(fontsize=7.0, frameon=False, loc="upper left", ncol=2)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6, axis="y")
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("THE BUDGET IS A COMPARISON, NOT A NUMBER", fontsize=8.8, color=NAVY, weight="bold")
    save(fig, "ch03_budget.svg")


def ch03_tax_types():
    w, h = 680, 268
    b = [t(340, 20, "DIRECT AND INDIRECT — AND WHAT EACH ONE CAN DO", size=10.2, weight="bold")]
    cols = [(GREEN, "DIRECT TAX", "paid on income or profit by the person who bears it",
             ["PIT, company income tax, capital gains", "progressive: the rich pay a higher rate",
              "cannot be shifted; the burden stays put"]),
            (AMBER, "INDIRECT TAX", "paid on a good, collected by a seller, borne by whoever buys it",
             ["VAT, customs duty, excise", "regressive unless essentials are exempt",
              "can be shifted forward onto the consumer"])]
    for i, (col, head, sub, points) in enumerate(cols):
        x = 18 + i * 330
        b.append(rect(x, 40, 314, 176, "#FFFFFF", col, 8, 1.4))
        b.append(rect(x, 40, 314, 26, col, col, 5, 1.0))
        b.append(t(x + 157, 58, head, size=9.4, weight="bold", fill="#FFFFFF"))
        b.append(t(x + 157, 86, sub, size=7.8, fill=SLATE))
        for j, pt in enumerate(points):
            b.append(t(x + 16, 112 + j * 30, "•  " + pt, size=7.9, fill=SLATE, anchor="start"))
    b.append(t(340, 240, "The paper asks which tax is which far more often than it asks you to compute either.",
               size=7.9, fill=MUTED))
    b.append(t(340, 256, "If the taxpayer can pass it on, it is indirect — that single test settles almost every question.",
               size=7.9, weight="bold", fill=NAVY))
    write_svg("ch03_tax_types.svg", svg(w, h, "\n".join(b)))


def ch03_laffer():
    fig, ax = plt.subplots(figsize=(5.4, 2.8))
    r = np.linspace(0, 1, 300)
    rev = r * (1 - r)
    ax.plot(r * 100, rev * 100, color=GREEN, lw=2.0)
    ax.plot([50], [25], "o", color=NAVY, ms=5)
    ax.annotate("maximum revenue:\nthe rate beyond this\nreduces the yield",
                xy=(50, 25), xytext=(56, 12), fontsize=7.1, color=NAVY,
                arrowprops=dict(arrowstyle="->", color=NAVY, lw=0.9))
    ax.axvspan(0, 50, color=GREEN_LIGHT, alpha=0.6)
    ax.axvspan(50, 100, color=RED_LIGHT, alpha=0.6)
    ax.text(20, 4, "raising the rate\nraises revenue", fontsize=7.1, color=GREEN, ha="center")
    ax.text(80, 4, "raising the rate\nloses revenue", fontsize=7.1, color=RED, ha="center")
    ax.set_xlabel("tax rate (%)", fontsize=8)
    ax.set_ylabel("tax revenue (index)", fontsize=8)
    ax.set_xlim(0, 100)
    ax.set_ylim(0, 30)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("THE LAFFER CURVE: TWO RATES, THE SAME REVENUE, DIFFERENT ECONOMIES",
                 fontsize=7.9, color=NAVY, weight="bold")
    save(fig, "ch03_laffer.svg")


def ch03_incidence():
    """Who really pays: the burden follows elasticity, not the statute."""
    fig, (a1, a2) = plt.subplots(1, 2, figsize=(6.6, 2.9))
    fig.suptitle("THE SIDE THAT CANNOT ESCAPE BEARS THE TAX", fontsize=8.8, color=NAVY, weight="bold", y=1.02)
    q = np.linspace(0, 10, 400)
    TAX = 3.0

    def panel(ax, slope_d, title, before_xy):
        d = 12 - slope_d * q
        s0 = 1 + 1.0 * q
        s1 = s0 + TAX
        q0 = (12 - 1) / (slope_d + 1.0)
        p0 = 1 + q0
        q1 = (12 - 1 - TAX) / (slope_d + 1.0)
        pb = 12 - slope_d * q1           # price the buyer now pays
        ps = pb - TAX                    # price the seller keeps
        buyer = round((pb - p0) / TAX * 100)
        seller = 100 - buyer
        keep = (d >= 0) & (d <= 13.4)
        ax.plot(q[keep], d[keep], color=GREEN, lw=1.9)
        ax.plot(q, s0, color=BLUE, lw=1.4)
        ax.plot(q, s1, color=BLUE, lw=1.4, ls="--")
        for p_level, colour in ((pb, RED), (ps, GREEN), (p0, SLATE)):
            ax.hlines(p_level, 0, 10, color=colour, lw=0.8, ls=":")
        ax.plot([q0], [p0], "o", color=SLATE, ms=3.6)
        ax.annotate("", (q1, ps), (q1, pb),
                    arrowprops=dict(arrowstyle="<->", color=RED, lw=1.3, mutation_scale=8))
        ax.plot([q1], [pb], "o", color=NAVY, ms=4.5, zorder=5)
        # level labels sit at the right edge, inside the axes
        ax.text(9.85, pb + 0.34, f"buyer pays ₦{pb:.2f}", fontsize=6.8, color=RED, ha="right",
                bbox=dict(facecolor="white", edgecolor="none", pad=1.0, alpha=0.9))
        ax.text(9.85, ps - 0.72, f"seller keeps ₦{ps:.2f}", fontsize=6.8, color=GREEN, ha="right",
                bbox=dict(facecolor="white", edgecolor="none", pad=1.0, alpha=0.9))
        ax.annotate(f"before the tax ₦{p0:.2f}", xy=(q0, p0), xytext=before_xy,
                    fontsize=6.7, color=SLATE,
                    arrowprops=dict(arrowstyle="->", color=SLATE, lw=0.8),
                    bbox=dict(facecolor="white", edgecolor="none", pad=1.0, alpha=0.9))
        ax.text(q1 - 0.18, (pb + ps) / 2, "₦3 tax", fontsize=6.7, color=RED,
                va="center", ha="right",
                bbox=dict(facecolor="white", edgecolor="none", pad=0.8, alpha=0.85))
        ax.set_title(title, fontsize=7.4, color=NAVY)
        ax.text(9.85, 12.9, f"buyer {buyer}%  ·  seller {seller}%",
                fontsize=6.9, color=NAVY, ha="right", weight="bold")

    panel(a1, 3.50, "steep demand (inelastic): the buyer pays most of it", (5.6, 1.4))
    panel(a2, 0.30, "flat demand (elastic): the seller absorbs most of it", (7.4, 3.6))

    for ax in (a1, a2):
        ax.set_xlim(0, 10)
        ax.set_ylim(0, 13.4)
        ax.set_xlabel("quantity", fontsize=7.4)
        ax.set_ylabel("price", fontsize=7.4)
        for sp in ("top", "right"):
            ax.spines[sp].set_visible(False)
        ax.grid(color="#E2E8F0", lw=0.5)
        ax.set_axisbelow(True)
        ax.tick_params(labelsize=6.5)
    fig.tight_layout()
    save(fig, "ch03_incidence.svg")


def recap_ch03():
    recap_card("recap_ch03.svg", "Chapter 3 in One Breath", [
        ("Budget", "revenue against expenditure: balanced, surplus or deficit — the word names the gap."),
        ("Fiscal policy", "spending and tax to steer demand; expansionary when unemployment is the problem."),
        ("Direct tax", "on income, paid by the earner, progressive, cannot be shifted."),
        ("Indirect tax", "on spending, collected by the seller, regressive in effect, shifted to the buyer."),
        ("Incidence", "the burden settles on the less elastic side, whatever the statute says."),
    ])


def ch04_comparative():
    """Comparative advantage, worked with two countries and two goods."""
    w, h = 680, 296
    b = [t(340, 20, "COMPARATIVE ADVANTAGE: COMPARE OPPORTUNITY COST, NOT OUTPUT", size=9.9, weight="bold")]

    # the input-requirement table
    b.append(rect(18, 38, 300, 150, "#FFFFFF", BORDER, 7, 1.1))
    b.append(rect(18, 38, 300, 26, LIGHT_BG, BORDER, 6, 1.0))
    for x, hd, anc in ((34, "hours of labour", "start"),
                       (176, "1 bag of rice", "middle"),
                       (272, "1 bale of cloth", "middle")):
        b.append(t(x, 55, hd, size=7.6, weight="bold", fill=NAVY, anchor=anc))
    rows = [("Nigeria", "2", "4"), ("Ghana", "3", "3")]
    for i, (name, rice, cloth) in enumerate(rows):
        y = 88 + i * 34
        b.append(line(28, y + 12, 308, y + 12, color="#E2E8F0", sw=0.7))
        b.append(t(34, y, name, size=8.4, weight="bold", fill=SLATE, anchor="start"))
        b.append(t(176, y, rice, size=8.4, fill=SLATE))
        b.append(t(272, y, cloth, size=8.4, fill=SLATE))
    b.append(t(168, 174, "both countries, both goods, in hours", size=7.2, fill=MUTED))

    # the comparison
    b.append(rect(336, 38, 326, 150, "#FFFFFF", GREEN, 7, 1.3))
    b.append(t(499, 58, "WHO GIVES UP LESS?", size=8.4, weight="bold", fill=GREEN))
    b.append(t(352, 80, "1 bag of rice costs Nigeria 2 h = ½ bale of cloth", size=7.7, fill=SLATE, anchor="start"))
    b.append(t(352, 98, "1 bag of rice costs Ghana 3 h = 1 bale of cloth", size=7.7, fill=SLATE, anchor="start"))
    b.append(t(352, 124, "Nigeria has the comparative advantage in rice.", size=7.9, weight="bold", fill=GREEN, anchor="start"))
    b.append(t(352, 146, "Ghana needs 1 hour of cloth time to save 1 hour of rice", size=7.6, fill=SLATE, anchor="start"))
    b.append(t(352, 160, "time; Nigeria needs 2. So cloth is Ghana's comparative", size=7.6, fill=SLATE, anchor="start"))
    b.append(t(352, 174, "advantage, rice is Nigeria's, and both gain from trade.", size=7.6, fill=SLATE, anchor="start"))

    b.append(rect(18, 200, 644, 36, LIGHT_BG, BORDER, 6, 1.0))
    b.append(t(340, 217, "Absolute advantage compares productivity; comparative advantage compares opportunity cost.",
               size=8.0, weight="bold", fill=NAVY))
    b.append(t(340, 231, "A country can be worse at everything and still gain from trade — provided it is least bad at something.",
               size=7.7, fill=SLATE))
    b.append(t(340, 258, "Write the opportunity cost of ONE unit of each good in terms of the other before you look at the options.",
               size=7.9, fill=MUTED))
    b.append(t(340, 276, "The examiner's favourite trap is to give you absolute advantage and ask about comparative advantage.",
               size=7.9, fill=MUTED))
    write_svg("ch04_comparative.svg", svg(w, h, "\n".join(b)))


def ch04_tariff():
    fig, ax = plt.subplots(figsize=(5.6, 3.0))
    q = np.linspace(0, 13, 300)
    d = 14 - 0.75 * q
    s_dom = 2 + 0.6 * q
    pw, pw_t = 4.6, 6.1
    ax.plot(q, d, color=GREEN, lw=1.9)
    ax.plot(q, s_dom, color=BLUE, lw=1.7)
    ax.axhline(pw, color=AMBER, lw=1.5)
    ax.axhline(pw_t, color=RED, lw=1.4, ls="--")
    ax.text(0.2, pw - 0.75, "world price", fontsize=7.0, color=AMBER)
    ax.text(0.2, pw_t + 0.3, "world price + tariff", fontsize=7.0, color=RED)
    ax.text(1.55, 13.35, "D", fontsize=8.5, color=GREEN, weight="bold")
    ax.text(12.15, s_dom[-1] + 0.55, "S", fontsize=8.5, color=BLUE, weight="bold")

    qs1 = (pw - 2) / 0.6
    qd1 = (14 - pw) / 0.75
    qs2 = (pw_t - 2) / 0.6
    qd2 = (14 - pw_t) / 0.75
    ax.axvline(qs1, 0, pw / 15, color=SLATE, lw=0.7, ls=":")
    ax.axvline(qd1, 0, pw / 15, color=SLATE, lw=0.7, ls=":")
    ax.axvline(qs2, 0, pw_t / 15, color=RED, lw=0.7, ls=":")
    ax.axvline(qd2, 0, pw_t / 15, color=RED, lw=0.7, ls=":")
    ax.annotate("", (qs1, pw - 0.55), (qd1, pw - 0.55),
                arrowprops=dict(arrowstyle="<|-|>", color=SLATE, lw=1.0, mutation_scale=8))
    ax.text((qs1 + qd1) / 2, pw - 1.45, "imports before the tariff", fontsize=6.9, color=SLATE, ha="center")
    ax.annotate("", (qs2, pw_t + 0.55), (qd2, pw_t + 0.55),
                arrowprops=dict(arrowstyle="<|-|>", color=RED, lw=1.0, mutation_scale=8))
    ax.text((qs2 + qd2) / 2, pw_t + 0.9, "imports after", fontsize=6.9, color=RED, ha="center")
    ax.set_xlim(0, 13)
    ax.set_ylim(0, 14.4)
    ax.set_xlabel("quantity", fontsize=8)
    ax.set_ylabel("price", fontsize=8)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("A TARIFF RAISES THE PRICE AND CUTS THE IMPORT", fontsize=8.8, color=NAVY, weight="bold")
    save(fig, "ch04_tariff.svg")


def ch04_devaluation():
    """Devaluation: cheaper exports, dearer imports, a J-curve before the improvement."""
    fig, ax = plt.subplots(figsize=(5.5, 2.9))
    t = np.linspace(0, 10, 400)
    tb = np.where(t < 4.2, -1.0 - 1.6 * np.exp(-((t - 2.0) ** 2) / 0.9), -2.6 + 2.9 * (1 - np.exp(-(t - 4.2) / 2.1)))
    ax.plot(t, tb + 1.0, color=GREEN, lw=2.0)
    ax.axhline(1.0, color=SLATE, lw=0.9, ls=":")
    ax.axvline(4.2, color=RED, lw=1.0, ls="--")
    ax.text(4.35, 2.35, "devaluation", fontsize=7.2, color=RED)
    ax.annotate("the J-curve: the balance\nworsens before it improves",
                xy=(2.0, -0.35), xytext=(2.55, -2.1), fontsize=7.1, color=NAVY,
                arrowprops=dict(arrowstyle="->", color=NAVY, lw=0.9))
    ax.set_xlabel("months after devaluation", fontsize=8)
    ax.set_ylabel("trade balance", fontsize=8)
    ax.set_ylim(-3.0, 3.2)
    ax.set_xlim(0, 10)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("DEVALUATION AND THE J-CURVE", fontsize=8.8, color=NAVY, weight="bold")
    save(fig, "ch04_devaluation.svg")


def ch04_bop():
    w, h = 680, 300
    b = [t(340, 20, "THE BALANCE OF PAYMENTS IN TWO ACCOUNTS", size=10.4, weight="bold")]

    b.append(rect(18, 40, 318, 196, "#FFFFFF", GREEN, 8, 1.4))
    b.append(rect(18, 40, 318, 26, GREEN, GREEN, 5, 1.0))
    b.append(t(177, 58, "CURRENT ACCOUNT", size=9.2, weight="bold", fill="#FFFFFF"))
    cur = [("visible trade", "goods: exports − imports"),
           ("invisible trade", "services: shipping, tourism, insurance"),
           ("income", "interest, profit and dividends crossing the border"),
           ("transfers", "remittances, grants, aid")]
    for i, (head, sub) in enumerate(cur):
        y = 84 + i * 38
        b.append(t(34, y, head, size=8.0, weight="bold", fill=GREEN, anchor="start"))
        b.append(t(34, y + 14, sub, size=7.6, fill=SLATE, anchor="start"))

    b.append(rect(346, 40, 316, 196, "#FFFFFF", BLUE, 8, 1.4))
    b.append(rect(346, 40, 316, 26, BLUE, BLUE, 5, 1.0))
    b.append(t(504, 58, "CAPITAL (FINANCIAL) ACCOUNT", size=8.6, weight="bold", fill="#FFFFFF"))
    cap = [("direct investment", "a firm builds a factory in another country"),
           ("portfolio investment", "shares, bonds, treasury bills"),
           ("loans and credit", "IMF, World Bank, commercial banks"),
           ("reserves", "the CBN's holdings of foreign exchange")]
    for i, (head, sub) in enumerate(cap):
        y = 84 + i * 38
        b.append(t(362, y, head, size=8.0, weight="bold", fill=BLUE, anchor="start"))
        b.append(t(362, y + 14, sub, size=7.6, fill=SLATE, anchor="start"))

    b.append(rect(18, 248, 644, 40, LIGHT_BG, BORDER, 6, 1.0))
    b.append(t(340, 264, "The two accounts must balance: a current-account deficit is financed by a capital-account surplus.",
               size=7.9, weight="bold", fill=NAVY))
    b.append(t(340, 280, "Which is why a country that cannot export must borrow, sell assets, or draw down reserves.",
               size=7.7, fill=SLATE))
    write_svg("ch04_bop.svg", svg(w, h, "\n".join(b)))


def recap_ch04():
    recap_card("recap_ch04.svg", "Chapter 4 in One Breath", [
        ("Comparative advantage", "compare opportunity cost, not output: specialise where the sacrifice is least."),
        ("Tariff", "a tax on imports: price up, quantity imported down, consumers lose more than the revenue."),
        ("Quota", "a physical limit on imports; the gain goes to whoever holds the licence."),
        ("Devaluation", "cheaper exports and dearer imports — with a J-curve before the balance improves."),
        ("Balance of payments", "current plus capital account; the deficit is financed, never wished away."),
    ])
