"""Volume 2 figures, part A: national income, money and banking."""

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
    "cover_banner", "utme_weight",
    "ch01_circular", "ch01_three_methods", "ch01_gdp_gnp", "ch01_real_nominal",
    "ch01_multiplier", "recap_ch01",
    "ch02_functions", "ch02_credit", "ch02_money_multiplier", "ch02_cbn",
    "ch02_inflation", "ch02_phillips", "recap_ch02",
]


def cover_banner():
    w, h = 760, 190
    b = [rect(0, 0, w, h, "#0B2036", "#0B2036", 10, 1.0)]
    b.append(t(380, 32, "OUTPUT  ·  MONEY  ·  TRADE", size=17, weight="bold", fill="#FFFFFF"))
    b.append(line(120, 44, 640, 44, color="#34D399", sw=1.2))
    chips = ["National income", "GDP and GNP", "The multiplier", "Money and credit",
             "The central bank", "Inflation", "The budget", "Tax incidence",
             "Comparative advantage", "Tariffs and devaluation", "Development", "The naira"]
    cols = 3
    for i, c in enumerate(chips):
        r, k = divmod(i, cols)
        x = 40 + k * 240
        y = 56 + r * 27
        b.append(rect(x, y, 220, 23, "#12314F", "#34D399", 5, 1.0))
        b.append(t(x + 110, y + 15.5, c, size=8.6, fill="#E2E8F0"))
    b.append(t(380, 178, "Six chapters  ·  seventeen questions  ·  one national economy",
               size=8.4, fill="#94A3B8"))
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg="#0B2036"))


def utme_weight():
    fig, ax = plt.subplots(figsize=(6.0, 2.7))
    chapters = ["1 National income", "2 Money and banking", "3 Public finance",
                "4 International trade", "5 Development", "6 The Nigerian economy"]
    weights = [4, 3, 3, 3, 2, 2]
    cols = [GREEN if v >= 4 else "#34D399" for v in weights]
    bars = ax.barh(chapters[::-1], weights[::-1], color=cols[::-1], height=0.62)
    for bar, v in zip(bars, weights[::-1]):
        ax.text(v + 0.06, bar.get_y() + bar.get_height() / 2, f"{v}", va="center",
                fontsize=8, color=NAVY)
    ax.set_xlim(0, 4.9)
    ax.set_xlabel("average questions in the forty-question Economics paper")
    ax.set_title("WHERE THE MACROECONOMICS MARKS SIT", fontsize=9.2, color=NAVY, weight="bold")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(axis="x", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "utme_weight.svg")


def ch01_circular():
    """The circular flow: two boxes, four counter-flows, and the chips that add to or leak from it."""
    w, h = 700, 340
    b = [t(350, 20, "THE CIRCULAR FLOW: TWO BOXES, FOUR FLOWS, THREE LEAKS AND THREE INJECTIONS",
           size=9.4, weight="bold")]

    # injections band
    b.append(rect(18, 34, 664, 46, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(60, 62, "INJECTIONS", size=8.2, weight="bold", fill=GREEN, anchor="start"))
    for i, lab in enumerate(["investment (I)", "government spending (G)", "exports (X)"]):
        x = 168 + i * 162
        b.append(rect(x, 44, 148, 26, "#FFFFFF", GREEN, 5, 1.0))
        b.append(t(x + 74, 61, lab, size=7.8, fill=SLATE))

    b.append(rect(30, 128, 168, 80, "#FFFFFF", GREEN, 8, 1.6))
    b.append(rect(30, 128, 168, 6, GREEN, GREEN, 3, 1.0))
    b.append(t(114, 158, "HOUSEHOLDS", size=10.0, weight="bold", fill=GREEN))
    b.append(t(114, 178, "own the factors", size=8.2, fill=SLATE))
    b.append(t(114, 194, "buy the output", size=8.2, fill=SLATE))

    b.append(rect(502, 128, 168, 80, "#FFFFFF", BLUE, 8, 1.6))
    b.append(rect(502, 128, 168, 6, BLUE, BLUE, 3, 1.0))
    b.append(t(586, 158, "FIRMS", size=10.0, weight="bold", fill=BLUE))
    b.append(t(586, 178, "hire the factors", size=8.2, fill=SLATE))
    b.append(t(586, 194, "produce the output", size=8.2, fill=SLATE))

    b.append(arrow2(202, 120, 500, 120, color=SLATE, sw=1.5, size=7))
    b.append(t(350, 110, "factor services: land · labour · capital · enterprise", size=7.8, fill=SLATE))
    b.append(arrow2(500, 148, 202, 148, color=GREEN, sw=1.5, size=7))
    b.append(t(350, 166, "factor incomes: rent · wages · interest · profit", size=7.8, fill=GREEN))
    b.append(arrow2(202, 208, 500, 208, color=AMBER, sw=1.5, size=7))
    b.append(t(350, 200, "consumer spending on goods and services", size=7.8, fill=AMBER))
    b.append(arrow2(500, 236, 202, 236, color=SLATE, sw=1.5, size=7))
    b.append(t(350, 254, "goods and services delivered", size=7.8, fill=SLATE))

    # withdrawals band
    b.append(rect(18, 264, 664, 46, RED_LIGHT, RED, 7, 1.2))
    b.append(t(60, 292, "WITHDRAWALS", size=8.2, weight="bold", fill=RED, anchor="start"))
    for i, lab in enumerate(["saving (S)", "taxes (T)", "imports (M)"]) if False else enumerate(
            ["saving (S)", "taxes (T)", "imports (M)"]):
        x = 168 + i * 162
        b.append(rect(x, 274, 148, 26, "#FFFFFF", RED, 5, 1.0))
        b.append(t(x + 74, 291, lab, size=7.8, fill=SLATE))

    b.append(t(350, 330, "When injections exceed withdrawals the flow grows and national income rises; when withdrawals exceed injections it falls.",
               size=7.8, fill=MUTED))
    write_svg("ch01_circular.svg", svg(w, h, "\n".join(b)))


def ch01_three_methods():
    """Three routes to one number."""
    w, h = 680, 250
    b = [t(340, 20, "THREE ROUTES TO THE SAME NUMBER", size=10.6, weight="bold")]
    cols = [
        ("OUTPUT", "the value added by every", "firm, summed by sector", GREEN),
        ("INCOME", "rent + wages + interest", "+ profit, all summed", BLUE),
        ("EXPENDITURE", "C + I + G + (X − M)", "spent by final users", AMBER),
    ]
    for i, (head, l1, l2, col) in enumerate(cols):
        x = 24 + i * 216
        b.append(rect(x, 44, 200, 92, "#FFFFFF", col, 7, 1.4))
        b.append(rect(x, 44, 200, 5, col, col, 2.5, 1.0))
        b.append(t(x + 100, 70, head, size=9.4, weight="bold", fill=col))
        b.append(t(x + 100, 92, l1, size=8.0, fill=SLATE))
        b.append(t(x + 100, 108, l2, size=8.0, fill=SLATE))
        b.append(arrow2(x + 100, 140, x + 100, 168, color=col, sw=1.6, size=7))

    b.append(rect(150, 172, 380, 44, GREEN_LIGHT, GREEN, 8, 1.5))
    b.append(t(340, 191, "GROSS DOMESTIC PRODUCT", size=10.0, weight="bold", fill=GREEN))
    b.append(t(340, 208, "the three totals must agree — the identity is the check", size=7.9, fill=SLATE))
    b.append(t(340, 236, "Nigeria publishes all three; the paper usually quotes the expenditure form.",
               size=8.0, fill=MUTED))
    write_svg("ch01_three_methods.svg", svg(w, h, "\n".join(b)))


def ch01_gdp_gnp():
    """The bridge from domestic to national product."""
    w, h = 660, 210
    b = [t(330, 20, "FROM DOMESTIC PRODUCT TO NATIONAL PRODUCT", size=10.4, weight="bold")]
    b.append(rect(18, 60, 150, 64, "#FFFFFF", GREEN, 7, 1.4))
    b.append(t(93, 86, "GDP", size=13.0, weight="bold", fill=GREEN))
    b.append(t(93, 106, "what is made here", size=7.8, fill=SLATE))

    b.append(rect(186, 60, 176, 64, "#FFFFFF", BLUE, 7, 1.4))
    b.append(t(274, 82, "+ income earned abroad", size=8.2, fill=SLATE))
    b.append(t(274, 100, "− income sent home", size=8.2, fill=SLATE))
    b.append(t(274, 116, "= net factor income", size=7.8, weight="bold", fill=BLUE))

    b.append(rect(380, 60, 150, 64, "#FFFFFF", AMBER, 7, 1.4))
    b.append(t(455, 86, "GNP", size=13.0, weight="bold", fill=AMBER))
    b.append(t(455, 106, "what is earned here", size=7.8, fill=SLATE))

    b.append(rect(548, 60, 96, 64, "#FFFFFF", PURPLE, 7, 1.4))
    b.append(t(596, 82, "÷ population", size=7.8, fill=SLATE))
    b.append(t(596, 100, "= per capita", size=7.8, weight="bold", fill=PURPLE))

    b.append(arrow2(170, 92, 184, 92, color=SLATE, sw=1.4, size=6))
    b.append(arrow2(364, 92, 378, 92, color=SLATE, sw=1.4, size=6))
    b.append(arrow2(532, 92, 546, 92, color=SLATE, sw=1.4, size=6))

    b.append(t(330, 152, "GNP = GDP + net factor income from abroad", size=9.2, weight="bold", fill=NAVY))
    b.append(t(330, 172, "A country with many foreign firms on its soil has GDP above GNP:", size=8.2, fill=SLATE))
    b.append(t(330, 188, "the output is made here, but the profit leaves with the owner.", size=8.2, fill=SLATE))
    write_svg("ch01_gdp_gnp.svg", svg(w, h, "\n".join(b)))


def ch01_real_nominal():
    fig, ax = plt.subplots(figsize=(5.6, 2.9))
    yrs = np.arange(2016, 2025)
    nominal = 100 * 1.13 ** (yrs - 2016)
    real = 100 * 1.028 ** (yrs - 2016)
    ax.plot(yrs, nominal, "-o", color=RED, lw=1.9, ms=3.6, label="nominal (current prices)")
    ax.plot(yrs, real, "-o", color=GREEN, lw=1.9, ms=3.6, label="real (constant prices)")
    ax.fill_between(yrs, real, nominal, color=RED_LIGHT, alpha=0.55)
    ax.annotate("the gap is mostly\nprice change, not output",
                xy=(2023.0, (nominal[7] + real[7]) / 2), xytext=(2019.4, 175),
                fontsize=7.2, color=RED,
                arrowprops=dict(arrowstyle="->", color=RED, lw=0.9))
    ax.set_xlabel("year", fontsize=8)
    ax.set_ylabel("index, 2016 = 100", fontsize=8)
    ax.legend(fontsize=7.2, frameon=False, loc="upper left")
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("NOMINAL GDP CAN GROW WITHOUT ANY REAL GROWTH", fontsize=8.8, color=NAVY, weight="bold")
    save(fig, "ch01_real_nominal.svg")


def ch01_multiplier():
    fig, ax = plt.subplots(figsize=(5.6, 2.8))
    mpc = 0.8
    rounds = np.arange(0, 9)
    spend = 100 * mpc ** rounds
    ax.bar(rounds, spend, color=GREEN, width=0.58)
    ax.plot(rounds, np.cumsum(spend), "-o", color=AMBER, lw=1.8, ms=3.4)
    total = 100 / (1 - mpc)
    ax.axhline(total, color=NAVY, lw=0.9, ls=":")
    ax.annotate(f"the series sums to ₦{total:.0f}m  (k = 1 ÷ 0.2 = 5)", xy=(7.55, total + 4),
                xytext=(3.15, total - 96), fontsize=7.3, color=NAVY,
                arrowprops=dict(arrowstyle="->", color=NAVY, lw=0.9))
    ax.text(1.55, 268, "each round is MPC times\nthe round before", fontsize=7.2, color=GREEN)
    ax.set_xlabel("round of spending", fontsize=8)
    ax.set_ylabel("₦ million spent", fontsize=8)
    ax.set_xlim(-0.6, 8.6)
    ax.set_ylim(0, 545)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6, axis="y")
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("A ₦100 MILLION INJECTION WITH MPC 0.8 BECOMES ₦500 MILLION", fontsize=8.2,
                 color=NAVY, weight="bold")
    save(fig, "ch01_multiplier.svg")


def recap_ch01():
    recap_card("recap_ch01.svg", "Chapter 1 in One Breath", [
        ("GDP", "the value of output produced inside the country in a year, whoever owns the firm."),
        ("GNP", "GDP plus net factor income from abroad — what the country's residents earn."),
        ("Three methods", "output, income and expenditure must give the same total; the identity is the check."),
        ("Real vs nominal", "deflate nominal GDP by the price index; only real GDP measures output."),
        ("Multiplier", "k = 1 ÷ (1 − MPC); the total change is k times the initial injection."),
    ])


def ch02_functions():
    w, h = 680, 262
    b = [t(340, 20, "THE FOUR JOBS OF MONEY — AND WHAT FAILS WITHOUT EACH", size=10.2, weight="bold")]
    items = [
        ("MEDIUM OF EXCHANGE", "it ends barter, so the double coincidence of wants disappears", GREEN),
        ("UNIT OF ACCOUNT", "prices are quoted in one scale, so goods can be compared", BLUE),
        ("STORE OF VALUE", "income can be carried forward — badly, if inflation is high", AMBER),
        ("STANDARD OF DEFERRED PAYMENT", "debts and contracts are written in it, so credit is possible", PURPLE),
    ]
    for i, (head, body, col) in enumerate(items):
        r, c = divmod(i, 2)
        x, y = 18 + c * 330, 42 + r * 92
        b.append(rect(x, y, 314, 78, "#FFFFFF", col, 7, 1.4))
        b.append(rect(x, y, 314, 5, col, col, 2.5, 1.0))
        b.append(t(x + 14, y + 26, head, size=8.2, weight="bold", fill=col, anchor="start"))
        for j, ln in enumerate(_wrap(body, 46)):
            b.append(t(x + 14, y + 44 + j * 13, ln, size=7.9, fill=SLATE, anchor="start"))
    b.append(t(340, 250, "Liquidity is the fifth property, and the one the paper tests: cash is the most liquid asset and the worst store of value.",
               size=7.8, fill=MUTED))
    write_svg("ch02_functions.svg", svg(w, h, "\n".join(b)))


def ch02_credit():
    """Credit creation as a table-like flow with the deposit multiplier beside it."""
    w, h = 680, 300
    b = [t(340, 20, "HOW ONE ₦100,000 DEPOSIT BECOMES ₦500,000 OF MONEY", size=10.2, weight="bold")]
    b.append(rect(18, 38, 400, 232, "#FFFFFF", BORDER, 8, 1.1))
    heads = ["Round", "New deposit", "Cash reserve (20%)", "New loan"]
    xs = [40, 130, 250, 340]
    for x, hd in zip(xs, heads):
        b.append(t(x, 58, hd, size=7.8, weight="bold", fill=NAVY, anchor="start"))
    rows = [
        ("1", "100,000", "20,000", "80,000"),
        ("2", "80,000", "16,000", "64,000"),
        ("3", "64,000", "12,800", "51,200"),
        ("4", "51,200", "10,240", "40,960"),
        ("5", "40,960", "8,192", "32,768"),
    ]
    for i, row in enumerate(rows):
        y = 82 + i * 30
        b.append(line(30, y + 8, 406, y + 8, color="#E2E8F0", sw=0.7))
        for x, cell in zip(xs, row):
            b.append(t(x, y, cell, size=8.0, fill=SLATE, anchor="start"))
    b.append(t(40, 250, "…and so on, each round 80 per cent of the one before", size=7.8, fill=MUTED, anchor="start"))
    b.append(t(40, 264, "Total deposits = 100,000 × 5 = ₦500,000", size=8.4, weight="bold", fill=GREEN, anchor="start"))

    b.append(rect(432, 38, 230, 232, GREEN_LIGHT, GREEN, 8, 1.3))
    b.append(t(547, 62, "THE TWO MULTIPLIERS", size=8.6, weight="bold", fill=GREEN))
    b.append(t(547, 88, "credit multiplier", size=8.0, fill=SLATE))
    b.append(t(547, 106, "= 1 ÷ reserve ratio", size=8.6, weight="bold", fill=NAVY))
    b.append(t(547, 124, "= 1 ÷ 0.20 = 5", size=8.6, weight="bold", fill=GREEN))
    b.append(line(452, 140, 642, 140, color=GREEN, sw=0.8))
    b.append(t(547, 162, "money multiplier", size=8.0, fill=SLATE))
    b.append(t(547, 180, "= 1 ÷ (reserve + cash", size=8.6, weight="bold", fill=NAVY))
    b.append(t(547, 196, "+ excess reserve ratios)", size=8.6, weight="bold", fill=NAVY))
    b.append(t(547, 222, "Banks create deposits,", size=7.9, fill=SLATE))
    b.append(t(547, 238, "not wealth: every loan is", size=7.9, fill=SLATE))
    b.append(t(547, 254, "also somebody's debt.", size=7.9, fill=SLATE))
    write_svg("ch02_credit.svg", svg(w, h, "\n".join(b)))


def ch02_money_multiplier():
    fig, ax = plt.subplots(figsize=(5.4, 2.7))
    r = np.linspace(0.04, 0.40, 200)
    ax.plot(r * 100, 1 / r, color=GREEN, lw=2.0)
    ax.plot([20], [5], "o", color=NAVY, ms=5)
    ax.annotate("reserve ratio 20%\nmultiplier 5", xy=(20, 5), xytext=(22.5, 12.5),
                fontsize=7.2, color=NAVY,
                arrowprops=dict(arrowstyle="->", color=NAVY, lw=0.9))
    ax.set_xlabel("cash reserve ratio (%)", fontsize=8)
    ax.set_ylabel("credit multiplier", fontsize=8)
    ax.set_ylim(0, 26)
    ax.set_xlim(4, 40)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("A HIGHER RESERVE RATIO SHRINKS THE MULTIPLIER", fontsize=8.8, color=NAVY, weight="bold")
    save(fig, "ch02_money_multiplier.svg")


def ch02_cbn():
    w, h = 680, 278
    b = [t(340, 20, "THE CENTRAL BANK'S FOUR LEVERS", size=10.4, weight="bold")]
    items = [
        ("OPEN MARKET OPERATIONS", "sell bills to drain liquidity, buy them to release it", GREEN),
        ("RESERVE REQUIREMENTS", "raise the ratio to shrink the credit multiplier", BLUE),
        ("POLICY RATE", "the MPR sets the floor for every other interest rate", AMBER),
        ("MORAL SUASION & SELECTIVE CREDIT", "persuasion, and caps on lending to chosen sectors", PURPLE),
    ]
    for i, (head, body, col) in enumerate(items):
        r, c = divmod(i, 2)
        x, y = 18 + c * 330, 44 + r * 88
        b.append(rect(x, y, 314, 78, "#FFFFFF", col, 7, 1.4))
        b.append(rect(x, y, 314, 5, col, col, 2.5, 1.0))
        b.append(t(x + 14, y + 26, head, size=8.0, weight="bold", fill=col, anchor="start"))
        for j, ln in enumerate(_wrap(body, 42)):
            b.append(t(x + 14, y + 46 + j * 13, ln, size=7.9, fill=SLATE, anchor="start"))
    b.append(rect(18, 226, 644, 42, LIGHT_BG, BORDER, 7, 1.1))
    b.append(t(340, 244, "TO FIGHT INFLATION: sell bills, raise the reserve ratio, raise the MPR — dearer credit, less spending.",
               size=7.8, weight="bold", fill=RED))
    b.append(t(340, 260, "TO FIGHT UNEMPLOYMENT: the same levers in reverse — cheaper credit, more spending.",
               size=7.8, weight="bold", fill=GREEN))
    write_svg("ch02_cbn.svg", svg(w, h, "\n".join(b)))


def ch02_inflation():
    fig, (a1, a2) = plt.subplots(1, 2, figsize=(6.6, 2.7))
    fig.suptitle("TWO KINDS OF INFLATION, TWO DIFFERENT CURVES THAT MOVE", fontsize=8.8,
                 color=NAVY, weight="bold", y=1.02)
    q = np.linspace(0.5, 9.5, 200)

    # demand-pull: AD shifts right along an upward-sloping AS
    as_ = 2 + 1.1 * (q - 0.5)
    ad0 = 12 - 0.85 * q
    ad1 = 15 - 0.85 * q
    a1.plot(q, as_, color=GREEN, lw=1.9)
    a1.plot(q, ad0, color=BLUE, lw=1.7)
    a1.plot(q, ad1, color=BLUE, lw=1.7, ls="--")
    a1.text(8.6, 1.6, "AS", fontsize=8, color=GREEN)
    a1.text(0.75, 11.2, "AD₀ → AD₁", fontsize=7.4, color=BLUE)
    a1.annotate("", (7.9, 12 - 0.85 * 7.9), (7.9, 15 - 0.85 * 7.9),
                arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.2))
    a1.set_title("demand-pull: too much money chasing goods", fontsize=7.6, color=NAVY)

    # cost-push: AS shifts left along a given AD
    ad = 13 - 0.9 * q
    as0 = 1 + 1.0 * (q - 0.5)
    as1 = 4 + 1.0 * (q - 0.5)
    a2.plot(q, ad, color=BLUE, lw=1.8)
    a2.plot(q, as0, color=GREEN, lw=1.7)
    a2.plot(q, as1, color=RED, lw=1.7, ls="--")
    a2.text(8.9, 4.9, "AD", fontsize=8, color=BLUE)
    a2.text(0.7, 3.2, "AS₀ → AS₁", fontsize=7.4, color=RED)
    a2.annotate("", (3.4, 1 + 1.0 * 2.9), (3.4, 4 + 1.0 * 2.9),
                arrowprops=dict(arrowstyle="->", color=RED, lw=1.2))
    a2.set_title("cost-push: the same demand, dearer costs", fontsize=7.6, color=NAVY)

    for ax in (a1, a2):
        ax.set_xlim(0, 10)
        ax.set_ylim(0, 13)
        ax.set_xlabel("real output", fontsize=7.4)
        ax.set_ylabel("price level", fontsize=7.4)
        for sp in ("top", "right"):
            ax.spines[sp].set_visible(False)
        ax.grid(color="#E2E8F0", lw=0.5)
        ax.set_axisbelow(True)
        ax.tick_params(labelsize=6.5)
    fig.tight_layout()
    save(fig, "ch02_inflation.svg")


def ch02_phillips():
    fig, ax = plt.subplots(figsize=(5.5, 2.9))
    u = np.linspace(2.2, 9.5, 200)
    pi = 12 - 14 * np.log(u / 2.2) / np.log(11 / 2.2) * 0.85
    pi = np.clip(pi, 0.2, 12)
    ax.plot(u, pi, color=GREEN, lw=2.0)
    ax.plot(u + 1.6, pi, color=RED, lw=1.7, ls="--")
    # At a fixed unemployment rate the curve shifts UP: the same jobless rate now
    # comes with more inflation, because expectations have been revised.
    def curve(uu, shift=0.0):
        return np.clip(12 - 14 * np.log((uu + shift) / 2.2) / np.log(11 / 2.2) * 0.85, 0.2, 12)

    ax.annotate("", (5.0, curve(5.0, 1.6)), (5.0, curve(5.0)),
                arrowprops=dict(arrowstyle="->", color=RED, lw=1.3))
    ax.text(5.25, curve(5.0) + 1.0, "at the same unemployment\nthe curve shifts up", fontsize=7.0, color=RED)
    ax.text(3.0, 2.0, "short-run trade-off:\nless unemployment, more inflation", fontsize=7.1, color=GREEN)
    ax.set_xlabel("unemployment rate (%)", fontsize=8)
    ax.set_ylabel("inflation rate (%)", fontsize=8)
    ax.set_xlim(2, 11)
    ax.set_ylim(0, 13)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.6)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=7)
    ax.set_title("THE PHILLIPS CURVE IS A SHORT-RUN TRADE-OFF, NOT A LAW", fontsize=8.6,
                 color=NAVY, weight="bold")
    save(fig, "ch02_phillips.svg")


def recap_ch02():
    recap_card("recap_ch02.svg", "Chapter 2 in One Breath", [
        ("Money", "a medium of exchange, unit of account, store of value and standard of deferred payment."),
        ("Credit", "banks create deposits; the credit multiplier is 1 ÷ the reserve ratio."),
        ("Central bank", "banker to government, lender of last resort, issuer and monetary-policy authority."),
        ("Inflation", "demand-pull shifts AD; cost-push shifts AS — and cost-push also cuts output."),
        ("Instruments", "open market operations, reserve ratio, policy rate, moral suasion."),
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
