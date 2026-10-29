"""Chemistry Volume 1 diagrams — front matter, chapters 1 and 2.

Every figure is hand-written SVG on the same 760-unit canvas as the
Mathematics and Biology volumes, so the series looks like one set of books.
"""

from __future__ import annotations

import matplotlib.pyplot as plt

from common import (recap_card, GREEN, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, BORDER,
                    AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE,
                    PURPLE_LIGHT, write_svg, svg, t, line, rect, arrow2, dot, poly, path, save)

CHAPTERS = ["1\nMatter", "2\nThe mole", "3\nGases", "4\nAtoms", "5\nPeriodic", "6\nBonding"]
WEIGHTS = [2, 3, 2, 3, 3, 3]


def box(x, y, w, h, head, body_lines=(), accent=GREEN, fill="#FFFFFF", head_size=9.2, body_size=7.6):
    out = [rect(x, y, w, h, fill, accent, 7, 1.4),
           f'<rect x="{x}" y="{y}" width="{w}" height="4.5" rx="2.2" fill="{accent}"/>',
           t(x + w / 2, y + 19, head, size=head_size, weight="bold", fill=NAVY if fill == "#FFFFFF" else accent)]
    for i, s in enumerate(body_lines):
        out.append(t(x + w / 2, y + 34 + i * 13, s, size=body_size, fill=SLATE))
    return "".join(out)


def darrow(x1, y1, x2, y2, color=SLATE, sw=1.8):
    return arrow2(x1, y1, x2, y2, color=color, sw=sw) + arrow2(x2, y2, x1, y1, color=color, sw=sw)


# ── front matter ───────────────────────────────────────────────────────────
def cover_banner():
    w, h = 760, 150
    b = [rect(0, 0, w, h, GREEN_LIGHT, GREEN, 10, 1.4),
         f'<rect x="0" y="0" width="{w}" height="6" rx="3" fill="{GREEN}"/>',
         t(380, 46, "MATTER  •  THE MOLE  •  ATOMS  •  BONDING", size=15, weight="bold"),
         t(380, 72, "Separation and Purity, the Mole and Stoichiometry, the Gas Laws,", size=11, fill=SLATE),
         t(380, 90, "Atomic Structure and Isotopes, the Periodic Table, Chemical Bonding", size=11, fill=SLATE),
         t(380, 120, "240 drill questions · two 40-question CBT mocks · 120-question master bank · 40 rapid-fire pairs",
           size=9.4, fill=MUTED)]
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg="#0E1F40"))


def utme_weight_chart():
    fig, ax = plt.subplots(figsize=(7.6, 3.0))
    colors = [GREEN if v >= 3 else (BLUE if v == 2 else PURPLE) for v in WEIGHTS]
    bars = ax.bar(CHAPTERS, WEIGHTS, color=colors, edgecolor="white", linewidth=1.1, width=0.66)
    for b, v in zip(bars, WEIGHTS):
        ax.text(b.get_x() + b.get_width() / 2, v + 0.07, str(v), ha="center",
                fontsize=10, color=NAVY, fontweight="bold")
    ax.set_ylim(0, 3.7)
    ax.set_ylabel("Typical questions")
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)
    ax.set_yticks([0, 1, 2, 3])
    ax.tick_params(axis="x", labelsize=7.6)
    ax.grid(axis="y", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "utme_weight.svg")


# ── chapter 1: separation and purity ──────────────────────────────────────
def ch01_separation():
    w, h = 760, 340
    b = [t(380, 24, "FOUR SEPARATION TECHNIQUES AND THE MIXTURE EACH ONE SUITS", size=12.4, weight="bold")]

    # ── 1 filtration ──────────────────────────────────────────────────────
    b.append(t(112, 52, "1 · FILTRATION", size=9.0, weight="bold", fill=GREEN))
    b.append(poly([(64, 82), (160, 82), (120, 134), (104, 134)], "#F8FBF9", NAVY, 1.3))
    b.append(line(70, 86, 112, 130, color=SLATE, sw=1.0))
    b.append(line(154, 86, 112, 130, color=SLATE, sw=1.0))
    for xx, yy in ((100, 108), (112, 120), (122, 108), (110, 100)):
        b.append(dot(xx, yy, 1.9, "#94A3B8"))
    b.append(rect(108, 134, 8, 18, "#E2E8F0", NAVY, 1, 1.0))
    b.append(dot(112, 158, 1.7, BLUE)); b.append(dot(112, 166, 1.7, BLUE))
    b.append(poly([(86, 200), (138, 200), (120, 176), (120, 172), (104, 172), (104, 176)], BLUE_LIGHT, NAVY, 1.2))
    b.append(t(112, 220, "an insoluble solid", size=7.4, fill=SLATE))
    b.append(t(112, 232, "from a liquid — the", size=7.4, fill=SLATE))
    b.append(t(112, 244, "solid stays on the paper", size=7.4, fill=SLATE))

    # ── 2 simple distillation ─────────────────────────────────────────────
    b.append(t(320, 52, "2 · SIMPLE DISTILLATION", size=9.0, weight="bold", fill=GREEN))
    b.append(dot(268, 174, 26, GREEN_LIGHT, NAVY, 1.3))                     # flask
    b.append(rect(262, 116, 12, 34, "#F8FBF9", NAVY, 2, 1.2))               # neck
    b.append(f'<ellipse cx="268" cy="186" rx="23" ry="11" fill="{BLUE_LIGHT}" stroke="{BLUE}" stroke-width="1.0"/>')
    b.append(line(274, 122, 318, 122, color=NAVY, sw=1.3))                  # side arm
    b.append(poly([(318, 112), (420, 136), (416, 150), (314, 126)], "#F1F5F9", NAVY, 1.2))  # condenser
    b.append(line(322, 126, 418, 144, color=BLUE, sw=1.1))
    b.append(path("M 418 144 L 444 144 L 444 152", stroke=NAVY, sw=1.3))    # delivery tube
    b.append(rect(430, 152, 28, 44, BLUE_LIGHT, BLUE, 4, 1.2))              # receiver
    b.append(line(432, 176, 456, 176, color=BLUE, sw=1.0))
    b.append(arrow2(268, 216, 268, 200, color=RED, sw=1.6, size=6.0))
    b.append(t(268, 230, "heat", size=7.2, fill=RED))
    b.append(t(370, 158, "cold water", size=7.0, fill=BLUE))
    b.append(t(320, 246, "the solvent from a solution", size=7.4, fill=SLATE))

    # ── 3 separating funnel ───────────────────────────────────────────────
    b.append(t(512, 52, "3 · SEPARATING FUNNEL", size=9.0, weight="bold", fill=GREEN))
    b.append(poly([(476, 86), (548, 86), (520, 168), (504, 168)], "#FFF8E6", NAVY, 1.3))
    b.append(poly([(484, 132), (540, 132), (520, 168), (504, 168)], BLUE_LIGHT, BLUE, 1.0))
    b.append(rect(508, 168, 8, 14, "#E2E8F0", NAVY, 1, 1.0))
    b.append(rect(502, 182, 20, 7, "#CBD5E1", NAVY, 1, 1.0))                # stopcock
    b.append(rect(506, 189, 12, 10, "#E2E8F0", NAVY, 1, 1.0))
    b.append(rect(488, 202, 48, 30, "#F8FAFC", NAVY, 3, 1.2))               # beaker
    b.append(line(488, 214, 536, 214, color=BLUE, sw=0.9, dash="3 2"))
    b.append(t(512, 246, "two immiscible liquids:", size=7.4, fill=SLATE))
    b.append(t(512, 258, "oil above water — run off", size=7.4, fill=SLATE))

    # ── 4 paper chromatography ────────────────────────────────────────────
    b.append(t(672, 52, "4 · CHROMATOGRAPHY", size=9.0, weight="bold", fill=GREEN))
    b.append(rect(638, 76, 68, 128, "#FFFFFF", NAVY, 2, 1.2))
    b.append(line(642, 98, 702, 98, color=BLUE, sw=0.9, dash="3 2"))
    b.append(t(706, 100, "solvent front", size=6.4, fill=MUTED, anchor="start"))
    b.append(line(642, 188, 702, 188, color=SLATE, sw=0.9, dash="3 2"))
    b.append(t(706, 190, "baseline", size=6.4, fill=MUTED, anchor="start"))
    b.append(dot(658, 188, 3.0, RED)); b.append(dot(672, 188, 3.0, BLUE)); b.append(dot(686, 188, 3.0, GREEN))
    b.append(dot(658, 152, 3.0, RED)); b.append(dot(672, 132, 3.0, BLUE)); b.append(dot(686, 118, 3.0, GREEN))
    b.append(t(672, 246, "the dyes in an ink, by how", size=7.4, fill=SLATE))
    b.append(t(672, 258, "far each one travels", size=7.4, fill=SLATE))

    b.append(rect(30, 274, 700, 56, "#F8FBF9", GREEN, 8, 1.1))
    b.append(t(380, 292, "Choose by the difference you can use: particle size (filtration), boiling point (distillation),", size=8.4, weight="bold", fill=GREEN))
    b.append(t(380, 308, "density and immiscibility (separating funnel), solubility and adsorption (chromatography),", size=8.4, weight="bold", fill=GREEN))
    b.append(t(380, 324, "or the ability to sublime (iodine from sand) and magnetic attraction (iron from sulphur).", size=8.4, fill=SLATE))
    write_svg("ch01_separation.svg", svg(w, h, "\n".join(b)))


def ch01_purity():
    w, h = 760, 330
    b = [t(380, 24, "MELTING POINT — HOW A PURE SUBSTANCE IS RECOGNISED", size=12.6, weight="bold")]

    ox, oy = 96, 272
    b.append(line(ox, oy, 680, oy, color=NAVY, sw=1.4))
    b.append(line(ox, oy, ox, 62, color=NAVY, sw=1.4))
    b.append(t(104, 74, "temperature", size=8.2, fill=MUTED, anchor="start"))
    b.append(t(680, 290, "time of heating", size=8.2, fill=MUTED, anchor="end"))

    # pure: rise, a long flat plateau, then rise again
    b.append(path("M 96 246 L 210 186 L 250 158", stroke=GREEN, sw=2.0))
    b.append(line(250, 158, 430, 158, color=GREEN, sw=3.6))
    b.append(path("M 430 158 L 470 128 L 560 114", stroke=GREEN, sw=2.0))

    # impure: lower, with a gradual softening instead of a plateau
    b.append(path("M 96 246 L 190 216 L 260 204 L 340 196 L 420 190 L 470 172 L 540 162", stroke=AMBER, sw=2.0))
    b.append(line(268, 203, 418, 190, color=AMBER, sw=3.0))

    # melting point marker, inside the plot and above the axis
    b.append(line(340, 158, 340, 266, color=BORDER, sw=0.9, dash="3 3"))
    b.append(t(340, 262, "m.p. of the pure solid", size=7.4, fill=MUTED))

    # legend
    b.append(line(600, 80, 640, 80, color=GREEN, sw=3.2))
    b.append(t(648, 83, "pure: a sharp plateau at a", size=7.6, fill=GREEN, anchor="start"))
    b.append(t(648, 95, "constant temperature", size=7.6, fill=GREEN, anchor="start"))
    b.append(line(600, 118, 640, 118, color=AMBER, sw=3.2))
    b.append(t(648, 121, "impure: melts lower and", size=7.6, fill=AMBER, anchor="start"))
    b.append(t(648, 133, "over a range of temperature", size=7.6, fill=AMBER, anchor="start"))

    b.append(t(150, 210, "liquid", size=7.4, fill=MUTED, anchor="start"))

    b.append(rect(60, 300, 640, 22, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(380, 315, "A pure solid melts sharply; an impurity lowers the melting point and spreads it over a range.", size=8.4, weight="bold", fill=GREEN))
    write_svg("ch01_purity.svg", svg(w, h, "\n".join(b)))


# ── chapter 2: the mole ───────────────────────────────────────────────────
def ch02_mole():
    w, h = 760, 330
    b = [t(380, 24, "THE MOLE IS THE HUB — EVERY ROAD LEADS TO IT AND FROM IT", size=12.6, weight="bold")]

    b.append(box(300, 132, 160, 56, "1 MOLE", ["6.02 × 10²³ particles"], GREEN, GREEN_LIGHT, head_size=11.0, body_size=7.6))
    b.append(box(292, 40, 176, 54, "PARTICLES", ["× 6.02 × 10²³ (or ÷)"], BLUE, BLUE_LIGHT))
    b.append(box(40, 132, 190, 56, "MASS", ["n = m ÷ M_r"], AMBER, AMBER_LIGHT))
    b.append(box(530, 132, 190, 56, "GAS VOLUME", ["n = V ÷ 24 dm³ at r.t.p."], PURPLE, PURPLE_LIGHT))
    b.append(box(280, 244, 200, 58, "CONCENTRATION", ["n = c × V (in dm³)"], RED, RED_LIGHT))

    b.append(darrow(380, 96, 380, 130, color=BLUE, sw=1.6))
    b.append(darrow(232, 160, 298, 160, color=AMBER, sw=1.6))
    b.append(darrow(462, 160, 528, 160, color=PURPLE, sw=1.6))
    b.append(darrow(380, 190, 380, 242, color=RED, sw=1.6))

    b.append(t(390, 112, "count the particles", size=7.4, fill=BLUE, anchor="start"))
    b.append(t(266, 150, "weigh it", size=7.4, fill=AMBER))
    b.append(t(496, 150, "measure the gas", size=7.4, fill=PURPLE))
    b.append(t(390, 220, "titrate it", size=7.4, fill=RED, anchor="start"))

    b.append(rect(40, 306, 680, 18, "#F8FAFC", BORDER, 5, 0.9))
    b.append(t(380, 319, "One mole of any substance contains 6.02 × 10²³ particles and has a mass equal to its M_r in grams.", size=8.2, fill=NAVY))
    write_svg("ch02_mole.svg", svg(w, h, "\n".join(b)))


def ch02_stoich():
    w, h = 760, 250
    b = [t(380, 24, "FOUR STEPS FROM AN EQUATION TO AN ANSWER", size=12.6, weight="bold")]

    steps = [("1 · BALANCE", ["the equation", "first"], GREEN, GREEN_LIGHT),
             ("2 · RATIO", ["moles of wanted ÷", "moles of given"], BLUE, BLUE_LIGHT),
             ("3 · MOLES", ["of the substance", "you are asked about"], AMBER, AMBER_LIGHT),
             ("4 · CONVERT", ["to mass, gas volume", "or concentration"], PURPLE, PURPLE_LIGHT)]
    for i, (head, body, col, light) in enumerate(steps):
        x = 24 + i * 182
        b.append(rect(x, 60, 166, 74, light, col, 7, 1.4))
        b.append(f'<rect x="{x}" y="60" width="166" height="4.5" rx="2.2" fill="{col}"/>')
        b.append(t(x + 83, 82, head, size=9.0, weight="bold", fill=col))
        b.append(t(x + 83, 102, body[0], size=7.6, fill=SLATE))
        b.append(t(x + 83, 116, body[1], size=7.6, fill=SLATE))
        if i < 3:
            b.append(arrow2(x + 168, 97, x + 178, 97, color=SLATE, sw=1.6, size=6.4))

    b.append(rect(24, 152, 712, 84, "#F8FBF9", GREEN, 8, 1.1))
    b.append(t(380, 172, "Worked pattern:  CaCO₃ → CaO + CO₂", size=9.0, weight="bold", fill=GREEN))
    b.append(t(380, 192, "10 g of CaCO₃ (M_r 100) = 0.1 mol → ratio 1 : 1 → 0.1 mol CaO → 0.1 × 56 = 5.6 g of CaO", size=8.2, fill=SLATE))
    b.append(t(380, 210, "…and 0.1 mol of CO₂, which is 0.1 × 24 = 2.4 dm³ at r.t.p., or 0.1 × 22.4 = 2.24 dm³ at s.t.p.", size=8.2, fill=SLATE))
    b.append(t(380, 228, "Never convert grams of one substance directly into grams of another — go through moles.", size=8.2, weight="bold", fill=NAVY))
    write_svg("ch02_stoich.svg", svg(w, h, "\n".join(b)))


# ── recap cards ───────────────────────────────────────────────────────────
def recap_cards_a():
    recap_card("recap_ch01.svg", "Chapter 1 recap card — matter, separation and purity", [
        ("States and changes", "Solid, liquid, gas; melting, boiling, sublimation are physical; burning and rusting are chemical."),
        ("Mixtures", "Elements, compounds and mixtures differ in how they can be separated and in fixed composition."),
        ("Separation", "Filtration for an insoluble solid; distillation for a solvent; the funnel for immiscible liquids; chromatography for dyes."),
        ("Purity", "A pure substance has a sharp, constant melting point; impurities lower it and broaden it."),
    ])
    recap_card("recap_ch02.svg", "Chapter 2 recap card — chemical combination and the mole", [
        ("The mole", "1 mol = 6.02 × 10²³ particles, and its mass in grams equals the M_r."),
        ("Three roads", "n = m ÷ M_r · n = V ÷ 24 (gas at r.t.p.) · n = c × V (solution, V in dm³)."),
        ("Formulae", "Empirical = simplest ratio; molecular = empirical × n, found from M_r."),
        ("Stoichiometry", "Balance, ratio, moles, convert — and never skip the equation."),
    ])
