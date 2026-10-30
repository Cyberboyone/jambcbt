"""Vector diagrams for Chapters 1–2 of JAMB Chemistry Volume 3.

Same two engines as Volumes 1–2: hand-written SVG for schematics, matplotlib
for anything with axes, so scales and trends are true.
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from common import (  # noqa: E402
    GREEN, GREEN_LIGHT, GREEN_MID, GREEN_BRIGHT, NAVY, SLATE, MUTED, BORDER,
    AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT,
    LIGHT_BG, rect, t, lines, arrow2, arrow, line, dot, poly, path, card, banner,
    recap_card, write_svg, svg, save, plt, np,
)

CHAPTERS = [
    "Metals &\nthe reactivity\nseries",
    "Groups 1\n& 2",
    "Aluminium,\niron & steel",
    "H, O\n& N",
    "Sulphur &\nthe halogens",
    "Industry &\nenvironment",
]
WEIGHTS = [3, 2, 3, 4, 4, 4]


def cover_banner():
    w, h = 760, 150
    b = [rect(0, 0, w, h, GREEN_LIGHT, GREEN, 10, 1.4),
         f'<rect x="0" y="0" width="{w}" height="6" rx="3" fill="{GREEN}"/>',
         t(380, 46, "METALS  •  EXTRACTION  •  NON-METALS  •  INDUSTRY", size=14.4, weight="bold"),
         t(380, 72, "The Reactivity Series, Groups 1 and 2, Aluminium and Iron,", size=11, fill=SLATE),
         t(380, 90, "Nitrogen and Sulphur Chemistry, the Major Processes and the Environment", size=11, fill=SLATE),
         t(380, 120, "240 drill questions · two 40-question CBT mocks · 120-question master bank · 40 rapid-fire pairs",
           size=9.4, fill=MUTED)]
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg=GREEN_LIGHT))


def utme_weight_chart():
    fig, ax = plt.subplots(figsize=(6.4, 2.55), dpi=160)
    y = np.arange(len(CHAPTERS))[::-1]
    bars = ax.barh(y, WEIGHTS, color=[GREEN if v >= 4 else GREEN_MID for v in WEIGHTS],
                   edgecolor=GREEN, linewidth=1.1, height=0.62)
    ax.set_yticks(y)
    ax.set_yticklabels([c.replace("\n", " ") for c in CHAPTERS], fontsize=8.4)
    ax.set_xlim(0, 5.4)
    ax.set_xlabel("typical questions per UTME Chemistry paper", fontsize=8.2)
    for b, v in zip(bars, WEIGHTS):
        ax.text(v + 0.12, b.get_y() + b.get_height() / 2, f"{v}",
                va="center", fontsize=8.6, color=NAVY, weight="bold")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(True, axis="x", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    ax.tick_params(axis="both", labelsize=8.2)
    fig.tight_layout()
    save(fig, "utme_weight.svg")


# ── Chapter 1: metals and the reactivity series ────────────────────────────
def ch01_reactivity():
    """The reactivity ladder, with the extraction method that goes with each rung."""
    w, h = 760, 436
    b = [t(380, 24, "THE REACTIVITY SERIES AND HOW EACH METAL IS WON", size=12.2, weight="bold", fill=NAVY),
         t(380, 42, "The higher a metal sits, the harder it is to reduce — and the more it costs to extract.",
           size=8.8, fill=MUTED)]

    metals = [
        ("K", "potassium", "electrolysis of the molten chloride", RED),
        ("Na", "sodium", "electrolysis of molten NaCl (Downs cell)", RED),
        ("Ca", "calcium", "electrolysis of molten CaCl₂", RED),
        ("Mg", "magnesium", "electrolysis of molten MgCl₂", AMBER),
        ("Al", "aluminium", "electrolysis of Al₂O₃ dissolved in cryolite", AMBER),
        ("Zn", "zinc", "reduction of the oxide with coke", BLUE),
        ("Fe", "iron", "reduction of the oxide in the blast furnace", BLUE),
        ("Pb", "lead", "reduction of the oxide with coke", BLUE),
        ("Cu", "copper", "roasting the sulphide, then reduction", GREEN),
        ("Ag", "silver", "found native, or by displacement", GREEN),
        ("Au", "gold", "found native — no extraction needed", GREEN),
    ]
    top, step = 64, 32
    for i, (sym, name, method, col) in enumerate(metals):
        y = top + i * step
        b.append(rect(24, y, 58, step - 5, "#FFFFFF", col, 5, 1.3))
        b.append(t(53, y + 18, sym, size=11.6, weight="bold", fill=col))
        b.append(t(92, y + 18, name, size=9.2, fill=SLATE, anchor="start"))
        b.append(t(196, y + 18, method, size=8.6, fill=SLATE, anchor="start"))

    # colour key, top right
    fam = [("ELECTROLYSIS", ["above zinc - too reactive", "for carbon"], RED),
           ("CARBON REDUCTION", ["zinc to lead - the oxide", "is reduced by coke"], BLUE),
           ("NATIVE OR DISPLACEMENT", ["copper, silver, gold -", "already easy to reduce"], GREEN)]
    for i, (label, note, col) in enumerate(fam):
        y = 70 + i * 52
        b.append(rect(516, y - 9, 8, 8, col, col, 2, 0))
        b.append(t(530, y - 1, label, size=7.8, weight="bold", fill=col, anchor="start"))
        b.append(t(530, y + 12, note[0], size=7.2, fill=MUTED, anchor="start"))
        b.append(t(530, y + 23, note[1], size=7.2, fill=MUTED, anchor="start"))

    b.append(line(24, top + 5 * step - 3, 500, top + 5 * step - 3, color=AMBER, sw=1.0, dash="5 4"))
    b.append(t(496, top + 5 * step - 7, "the carbon line", size=7.4, fill=AMBER, anchor="end"))
    write_svg("ch01_reactivity.svg", svg(w, h, "\n".join(b)))


def ch01_extraction():
    """The four stages every metal extraction shares."""
    w, h = 760, 238
    b = [t(380, 24, "FOUR STAGES FROM ORE TO METAL", size=12.2, weight="bold"),
         t(380, 42, "The chemistry changes from stage to stage; the order never does.", size=8.8, fill=MUTED)]
    stages = [
        ("1  CONCENTRATE", ["crush and grind the ore", "remove the gangue (sand, clay)", "froth flotation or magnetic separation"], GREEN),
        ("2  CONVERT", ["roast a sulphide in air", "or calcine a carbonate", "to leave the oxide"], AMBER),
        ("3  REDUCE", ["electrolysis if very reactive", "carbon if moderately reactive", "displacement if unreactive"], BLUE),
        ("4  REFINE", ["electrolytic refining", "or distillation of the metal", "to 99.9 % purity"], PURPLE),
    ]
    cw, gap = 172, 12
    for i, (head, body, col) in enumerate(stages):
        x = 22 + i * (cw + gap)
        b.append(rect(x, 62, cw, 92, "#FFFFFF", col, 8, 1.5))
        b.append(f'<rect x="{x}" y="62" width="{cw}" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + cw / 2, 88, head, size=9.4, weight="bold", fill=col))
        b.append(lines(x + cw / 2, 108, body, size=7.8, fill=SLATE, gap=13))
        if i < 3:
            b.append(arrow2(x + cw + 1, 108, x + cw + gap - 1, 108, color=GREEN, sw=1.6))
    b.append(rect(22, 168, 716, 46, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 188, "The choice in stage 3 is the whole of inorganic chemistry: a metal high in the series",
               size=8.6, fill=SLATE))
    b.append(t(380, 204, "cannot be reduced by carbon, because carbon is below it in the series.",
               size=8.6, fill=SLATE))
    write_svg("ch01_extraction.svg", svg(w, h, "\n".join(b)))


def ch01_alloy():
    """Pure metal layers slide; an alloy's different-sized atoms lock them."""
    w, h = 760, 214
    b = [t(380, 22, "WHY AN ALLOY IS HARDER THAN THE PURE METAL", size=12.2, weight="bold")]

    def panel(x0, label, caption, mode):
        out = []
        for row in range(4):
            for col in range(6):
                cy = 56 + row * 27
                cx = x0 + 34 + col * 30
                if mode == "shear":
                    cx += (3 - row) * 9
                small = mode == "alloy" and (row * 6 + col) % 3 == 0
                out.append(dot(cx, cy, 6.2 if small else 9.2,
                               fill=AMBER if small else GREEN_MID,
                               stroke="#FFFFFF", sw=1.2))
        out.append(t(x0 + 96, 178, label, size=9.0, weight="bold", fill=NAVY))
        out.append(t(x0 + 96, 193, caption, size=7.0, fill=MUTED))
        return out

    b += panel(24, "PURE METAL", "regular rows slide — soft and malleable", "pure")
    b += panel(272, "PURE METAL UNDER STRESS", "the planes slip, so it bends not breaks", "shear")
    b += panel(520, "ALLOY", "odd-sized atoms pin the layers — hard", "alloy")

    b.append(rect(20, 200, 720, 12, GREEN_LIGHT, GREEN, 4, 0.8))
    b.append(t(380, 209, "Steel is iron with carbon: the small carbon atoms sit between the iron layers and pin them.",
               size=6.9, fill=SLATE))
    write_svg("ch01_alloy.svg", svg(w, h, "\n".join(b)))


# ── Chapter 2: Groups 1 and 2 ─────────────────────────────────────────────
def ch02_group1():
    """Melting point and density down Group 1 — two trends in opposite directions."""
    mp = {"Li": 180, "Na": 98, "K": 63, "Rb": 39, "Cs": 28}
    dens = {"Li": 0.53, "Na": 0.97, "K": 0.86, "Rb": 1.53, "Cs": 1.87}
    x = list(mp.keys())
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(6.6, 2.5), dpi=160)

    ax1.plot(x, [mp[k] for k in x], "o-", color=GREEN, lw=2.0, ms=6, mfc="white", mew=1.8)
    for k in x:
        ax1.annotate(f"{mp[k]}", (k, mp[k]), textcoords="offset points", xytext=(0, 7),
                     ha="center", fontsize=7.6, color=NAVY)
    ax1.set_title("melting point / °C", fontsize=9.2, color=NAVY)
    ax1.set_ylim(0, 210)
    ax1.set_ylabel("°C", fontsize=8)

    ax2.plot(x, [dens[k] for k in x], "s-", color=BLUE, lw=2.0, ms=5, mfc="white", mew=1.8)
    for k in x:
        ax2.annotate(f"{dens[k]:.2f}", (k, dens[k]), textcoords="offset points", xytext=(0, 7),
                     ha="center", fontsize=7.6, color=NAVY)
    ax2.set_title("density / g cm⁻³", fontsize=9.2, color=NAVY)
    ax2.set_ylim(0, 2.3)
    ax2.set_ylabel("g cm⁻³", fontsize=8)

    for ax in (ax1, ax2):
        for s in ("top", "right"):
            ax.spines[s].set_visible(False)
        ax.grid(True, color="#E2E8F0", lw=0.7)
        ax.set_axisbelow(True)
        ax.tick_params(labelsize=8)
        ax.set_xlabel("element, down the group", fontsize=8)
    fig.tight_layout()
    save(fig, "ch02_group1.svg")


def ch02_flame():
    """Flame-test colours, drawn as a strip so the examiner's wording sits beside each."""
    w, h = 760, 240
    tests = [("Li⁺", "crimson", "#DC2626"), ("Na⁺", "golden yellow", "#F59E0B"),
             ("K⁺", "lilac", "#A78BFA"), ("Ca²⁺", "brick red", "#B45309"),
             ("Ba²⁺", "apple green", "#84CC16"), ("Cu²⁺", "blue-green", "#06B6D4")]
    b = [t(380, 22, "FLAME TESTS — THE SIX THE PAPER USES", size=12.2, weight="bold"),
         t(380, 40, "A clean nichrome wire, concentrated hydrochloric acid, and the flame held at the edge of the blue cone.",
           size=8.2, fill=MUTED)]
    cw = 118
    for i, (ion, colour, hexc) in enumerate(tests):
        x = 16 + i * cw
        b.append(rect(x, 52, cw - 8, 140, "#FFFFFF", BORDER, 7, 1.1))
        cx = x + (cw - 8) / 2
        b.append(poly([(cx - 30, 148), (cx, 70), (cx + 30, 148)], hexc, "none", 0))
        b.append(t(cx, 166, ion, size=9.8, weight="bold", fill=NAVY))
        b.append(t(cx, 182, colour, size=7.8, fill=SLATE))
    b.append(rect(16, 202, 728, 26, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(380, 219, "Sodium's yellow is so intense it masks every other colour: a dirty wire always reads as sodium.",
               size=7.8, fill=SLATE))
    write_svg("ch02_flame.svg", svg(w, h, "\n".join(b)))


def ch02_group2():
    """Solubility of Group 2 hydroxides and sulphates, both real data sets."""
    els = ["Mg", "Ca", "Sr", "Ba"]
    oh = [0.0012, 0.17, 0.41, 3.9]
    so4 = [35.0, 0.21, 0.013, 0.00024]
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(6.6, 2.5), dpi=160)

    ax1.plot(els, oh, "o-", color=GREEN, lw=2.0, ms=6, mfc="white", mew=1.8)
    for e, v in zip(els, oh):
        ax1.annotate(f"{v:g}", (e, v), textcoords="offset points", xytext=(0, 7),
                     ha="center", fontsize=7.4, color=NAVY)
    ax1.set_title("hydroxide solubility / g per 100 g water", fontsize=8.4, color=NAVY)
    ax1.set_ylim(0, 4.4)

    ax2.semilogy(els, so4, "s-", color=RED, lw=2.0, ms=5, mfc="white", mew=1.8)
    for e, v in zip(els, so4):
        ax2.annotate(f"{v:g}", (e, v), textcoords="offset points", xytext=(0, 7),
                     ha="center", fontsize=7.4, color=NAVY)
    ax2.set_title("sulphate solubility / g per 100 g water (log scale)", fontsize=8.4, color=NAVY)

    for ax in (ax1, ax2):
        for s in ("top", "right"):
            ax.spines[s].set_visible(False)
        ax.grid(True, color="#E2E8F0", lw=0.7)
        ax.set_axisbelow(True)
        ax.tick_params(labelsize=8)
        ax.set_xlabel("element, down the group", fontsize=8)
    fig.tight_layout()
    save(fig, "ch02_group2.svg")


def ch02_hydroxide_flow():
    """What happens when Group 1 and Group 2 oxides meet water — one page map."""
    w, h = 760, 268
    b = [t(380, 22, "OXIDES, HYDROXIDES AND THE pH THAT FOLLOWS", size=12.2, weight="bold"),
         t(380, 40, "Every Group 1 and Group 2 oxide is basic; the more reactive the metal, the more vigorously the oxide reacts.",
           size=8.0, fill=MUTED)]
    rows = [
        ("Na₂O + H₂O", "2NaOH", "strong alkali, pH 13–14", RED),
        ("MgO + H₂O", "Mg(OH)₂", "weakly alkaline, sparingly soluble", AMBER),
        ("CaO + H₂O", "Ca(OH)₂", "limewater, pH about 12", AMBER),
        ("Na₂O₂ + 2H₂O", "2NaOH + H₂O₂", "peroxide, not a simple oxide", BLUE),
    ]
    for i, (lhs, rhs, note, col) in enumerate(rows):
        y = 64 + i * 46
        b.append(rect(20, y, 216, 34, "#FFFFFF", col, 6, 1.2))
        b.append(t(128, y + 22, lhs, size=9.6, fill=NAVY))
        b.append(arrow2(240, y + 17, 288, y + 17, color=col, sw=1.5))
        b.append(rect(292, y, 200, 34, "#FFFFFF", col, 6, 1.2))
        b.append(t(392, y + 22, rhs, size=9.6, fill=NAVY))
        b.append(arrow2(496, y + 17, 540, y + 17, color=col, sw=1.5))
        b.append(t(548, y + 22, note, size=8.4, fill=SLATE, anchor="start"))
    b.append(rect(20, 254, 720, 0.1, "#FFFFFF", "#FFFFFF", 0, 0))
    write_svg("ch02_hydroxide_flow.svg", svg(w, h, "\n".join(b)))


# ── recap cards ────────────────────────────────────────────────────────────
def recap_cards_a():
    recap_card("recap_ch01.svg", "Chapter 1 recap card — metals and extraction", [
        ("Reactivity series",
         "K Na Ca Mg Al Zn Fe Pb Cu Ag Au, decreasing in reactivity. Above zinc: electrolysis. Zinc to lead: carbon. Below: native or displacement."),
        ("Ores",
         "A metal is found as an oxide, sulphide or carbonate. The ore must be concentrated before the metal can be won."),
        ("Reduction",
         "Carbon removes oxygen only from metals below it in the series; a very reactive metal must be reduced by electricity."),
        ("Alloys",
         "A different-sized atom pins the layers, so the alloy is harder than the pure metal. Steel is iron plus carbon."),
    ])
    recap_card("recap_ch02.svg", "Chapter 2 recap card — Groups 1 and 2", [
        ("Group 1",
         "Soft, low melting, low density, one outer electron. Reactivity rises down the group; they are stored under oil."),
        ("Group 2",
         "Harder and denser, two outer electrons. Reactivity rises down the group; magnesium burns with a white flame."),
        ("With water",
         "2Na + 2H₂O → 2NaOH + H₂; Ca + 2H₂O → Ca(OH)₂ + H₂. The solution is alkaline in both cases."),
        ("Flame tests",
         "Li crimson, Na yellow, K lilac, Ca brick-red, Ba apple-green, Cu blue-green. Clean the wire in acid first."),
    ])
