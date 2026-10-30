"""Vector diagrams for Chapters 1–2 of JAMB Chemistry Volume 4.

Hand-written SVG for the schematics, matplotlib for anything with axes, so the
scales and the trends are true rather than sketched.
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
    "Alkanes &\ncrude oil",
    "Alkenes &\nalkynes",
    "Alcohols &\nacids",
    "Esters, soaps\n& polymers",
    "Food\nchemistry",
    "Practical\nchemistry",
]
WEIGHTS = [4, 4, 3, 3, 3, 3]


def cover_banner():
    w, h = 760, 150
    b = [rect(0, 0, w, h, GREEN_LIGHT, GREEN, 10, 1.4),
         f'<rect x="0" y="0" width="{w}" height="6" rx="3" fill="{GREEN}"/>',
         t(380, 46, "HYDROCARBONS  •  FUNCTIONAL GROUPS  •  FOOD  •  THE LABORATORY",
           size=13.6, weight="bold"),
         t(380, 72, "Crude Oil and the Alkanes, Alkenes and Alkynes, Alcohols and Acids,", size=11, fill=SLATE),
         t(380, 90, "Esters, Soaps and Polymers, Food Chemistry and the Practical Paper", size=11, fill=SLATE),
         t(380, 120, "240 drill questions · two 40-question CBT mocks · 120-question master bank · 40 rapid-fire pairs",
           size=9.4, fill=MUTED)]
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b)))


def utme_weight_chart():
    fig, ax = plt.subplots(figsize=(7.0, 2.45))
    cols = [GREEN if v >= 4 else GREEN_BRIGHT for v in WEIGHTS]
    bars = ax.bar(range(len(CHAPTERS)), WEIGHTS, color=cols, width=0.62, zorder=3,
                  edgecolor="white", linewidth=1.4)
    for i, (bar, v) in enumerate(zip(bars, WEIGHTS)):
        ax.text(bar.get_x() + bar.get_width() / 2, v + 0.12, str(v), ha="center",
                va="bottom", fontsize=11, color=NAVY, fontweight="bold")
    ax.set_xticks(range(len(CHAPTERS)))
    ax.set_xticklabels(CHAPTERS, fontsize=8.0)
    ax.set_ylim(0, 5.0)
    ax.set_ylabel("questions", fontsize=9)
    ax.set_yticks([0, 1, 2, 3, 4, 5])
    ax.grid(axis="y", color="#E2E8F0", lw=0.8, zorder=0)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.tick_params(labelsize=8.4)
    save(fig, "utme_weight.svg")


# ── Chapter 1 ──────────────────────────────────────────────────────────────
def ch01_crude_column():
    w, h = 560, 392
    b = [t(280, 22, "THE FRACTIONATING COLUMN — CRUDE OIL SPLIT BY BOILING POINT",
           size=11.2, weight="bold")]

    # tower
    x0, y0, tw = 150, 42, 116
    b.append(rect(x0, y0, tw, 300, "#FFFFFF", NAVY, 8, 1.5))
    for i in range(6):
        y = y0 + 20 + i * 46
        b.append(line(x0 + 8, y, x0 + tw - 8, y, color=BORDER, sw=1.0, dash="3 3"))

    fracs = [
        ("Refinery gas", "C₁–C₄", "bottled gas, LPG", RED),
        ("Petrol (gasoline)", "C₅–C₁₀", "cars — 40–180 °C", AMBER),
        ("Kerosene", "C₁₀–C₁₄", "stoves, jet fuel", AMBER),
        ("Diesel", "C₁₄–C₂₀", "lorries, generators", BLUE),
        ("Lubricating oil", "C₂₀–C₅₀", "machinery", PURPLE),
        ("Residue (bitumen)", "C₅₀+", "roads, roofing", SLATE),
    ]
    for i, (name, formula, use, col) in enumerate(fracs):
        y = 62 + i * 46
        b.append(rect(8, y - 15, 132, 34, GREEN_LIGHT if i % 2 == 0 else "#FFFFFF", col, 5, 1.0))
        b.append(t(74, y - 3, name, size=8.6, weight="bold", fill=NAVY))
        b.append(t(74, y + 10, formula, size=7.6, fill=MUTED))
        b.append(arrow2(142, y + 2, x0 + 6, y + 2, color=col, sw=1.3, size=5.5))

        b.append(rect(282, y - 15, 270, 34, "#FFFFFF", col, 5, 1.0))
        b.append(t(292, y - 3, use, size=8.4, fill=SLATE, anchor="start"))
        b.append(t(292, y + 10, name.lower(), size=7.2, fill=MUTED, anchor="start"))
        b.append(arrow2(x0 + tw + 4, y + 2, 278, y + 2, color=col, sw=1.3, size=5.5))

    b.append(t(x0 + tw / 2, y0 - 10, "cold at the top", size=7.8, fill=MUTED))
    b.append(t(x0 + tw / 2, y0 + 322, "hot at the bottom", size=7.8, fill=MUTED))
    b.append(t(280, 382, "The vapour rises and cools; each fraction condenses at the tray whose temperature matches its boiling range.",
               size=7.8, fill=MUTED))
    write_svg("ch01_crude_column.svg", svg(w, h, "\n".join(b)))


def ch01_bp_series():
    n = np.arange(1, 11)
    bp = np.array([-162, -89, -42, -1, 36, 69, 98, 126, 151, 174])
    fig, ax = plt.subplots(figsize=(7.0, 2.5))
    ax.plot(n, bp, "-o", color=GREEN, lw=2.0, ms=5.5, mfc="white", mew=1.6, zorder=3)
    for i, (x, y) in enumerate(zip(n, bp)):
        if i < 4:
            ax.annotate(f"{y}", (x, y), textcoords="offset points", xytext=(0, -14),
                        ha="center", fontsize=7.6, color=SLATE)
    ax.axhline(0, color=SLATE, lw=1.0, zorder=2)
    ax.annotate("methane\n−162 °C", (1, -162), textcoords="offset points", xytext=(16, 16),
                fontsize=7.6, color=MUTED)
    ax.annotate("decane\n174 °C", (10, 174), textcoords="offset points", xytext=(-8, -26),
                fontsize=7.6, color=MUTED)
    ax.set_xlabel("number of carbon atoms in the chain", fontsize=8.6)
    ax.set_ylabel("boiling point / °C", fontsize=8.6)
    ax.set_xticks(n)
    ax.set_ylim(-200, 210)
    ax.grid(color="#E2E8F0", lw=0.8, zorder=0)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.tick_params(labelsize=8)
    save(fig, "ch01_bp_series.svg")


def ch01_cracking():
    w, h = 560, 250
    b = [t(280, 22, "CRACKING — A LONG CHAIN BROKEN INTO A SHORT ONE AND AN ALKENE",
           size=10.6, weight="bold")]
    b.append(rect(14, 44, 210, 128, "#FFFFFF", NAVY, 8, 1.4))
    b.append(t(119, 62, "C₁₆H₃₄", size=15, weight="bold", fill=NAVY))
    b.append(t(119, 80, "hexadecane, from diesel", size=8.2, fill=MUTED))
    # chain drawn as zig-zag
    pts = [(34 + i * 15, 106 + (10 if i % 2 else -10)) for i in range(16)]
    b.append(path("M " + " L ".join(f"{x} {y}" for x, y in pts), stroke=SLATE, sw=1.6))

    b.append(arrow2(230, 108, 320, 108, color=AMBER, sw=2.0, size=9))
    b.append(t(275, 98, "heat", size=8.2, fill=AMBER, weight="bold"))
    b.append(t(275, 128, "≈ 500 °C", size=7.6, fill=MUTED))

    b.append(rect(326, 44, 220, 62, "#FFFFFF", GREEN, 8, 1.4))
    b.append(t(436, 64, "C₈H₁₈", size=12.5, weight="bold", fill=GREEN))
    b.append(t(436, 80, "octane — petrol", size=8.0, fill=MUTED))
    b.append(t(436, 96, "a saturated alkane", size=7.6, fill=MUTED))

    b.append(rect(326, 116, 220, 62, "#FFFFFF", BLUE, 8, 1.4))
    b.append(t(436, 136, "C₈H₁₆", size=12.5, weight="bold", fill=BLUE))
    b.append(t(436, 152, "octene — for polymers", size=8.0, fill=MUTED))
    b.append(t(436, 168, "one C=C double bond", size=7.6, fill=MUTED))

    b.append(t(280, 202, "C₁₆H₃₄ → C₈H₁₈ + C₈H₁₆", size=10.4, fill=NAVY))
    b.append(t(280, 224, "Cracking makes petrol from the heavy fractions nobody wants, and it supplies the alkenes the polymer industry lives on.",
               size=7.8, fill=MUTED))
    write_svg("ch01_cracking.svg", svg(w, h, "\n".join(b)))


def ch01_isomers():
    w, h = 560, 262
    b = [t(280, 22, "C₄H₁₀ HAS TWO ISOMERS — SAME FORMULA, DIFFERENT SKELETON",
           size=10.6, weight="bold")]

    # butane
    b.append(rect(12, 40, 262, 150, "#FFFFFF", GREEN, 8, 1.4))
    b.append(t(143, 60, "butane", size=10.4, weight="bold", fill=GREEN))
    b.append(t(143, 74, "straight chain — b.p. −0.5 °C", size=7.8, fill=MUTED))
    xs = [46, 96, 146, 196, 240]
    ys = [118, 96, 118, 96, 118]
    b.append(path("M " + " L ".join(f"{x} {y}" for x, y in zip(xs, ys)), stroke=NAVY, sw=2.0))
    for x, y, lab in zip(xs, ys, ["CH₃", "CH₂", "CH₂", "CH₂", "CH₃"]):
        b.append(t(x, y - 12, lab, size=8.6, fill=NAVY))
    b.append(t(143, 156, "every carbon on one line", size=8.0, fill=SLATE))

    # 2-methylpropane
    b.append(rect(286, 40, 262, 150, "#FFFFFF", AMBER, 8, 1.4))
    b.append(t(417, 60, "2-methylpropane", size=10.4, weight="bold", fill=AMBER))
    b.append(t(417, 74, "branched — b.p. −12 °C", size=7.8, fill=MUTED))
    b.append(path("M 340 128 L 390 128 L 440 128 L 490 128", stroke=NAVY, sw=2.0))
    b.append(path("M 390 128 L 390 100", stroke=NAVY, sw=2.0))
    b.append(t(340, 116, "CH₃", size=8.6, fill=NAVY))
    b.append(t(390, 92, "CH₃", size=8.6, fill=NAVY))
    b.append(t(440, 116, "CH₃", size=8.6, fill=NAVY))
    b.append(t(390, 146, "CH", size=8.6, fill=NAVY))
    b.append(t(490, 116, "CH₃", size=8.6, fill=NAVY))
    b.append(t(417, 170, "one carbon carries three methyl groups", size=8.0, fill=SLATE))

    b.append(t(280, 214, "Isomers have the same molecular formula but different structural formulae, so they have different physical properties.",
               size=8.2, fill=SLATE))
    b.append(t(280, 236, "The more branched the chain, the smaller the surface contact, the weaker the van der Waals force, and the lower the boiling point.",
               size=8.2, fill=MUTED))
    write_svg("ch01_isomers.svg", svg(w, h, "\n".join(b)))


def ch01_substitution():
    w, h = 560, 300
    b = [t(280, 22, "CHLORINATION OF METHANE — A SUBSTITUTION, ONE HYDROGEN AT A TIME",
           size=10.4, weight="bold")]
    b.append(t(280, 40, "UV light or 300 °C · the chlorine replaces a hydrogen; the hydrogen leaves as HCl",
               size=7.9, fill=MUTED))

    steps = [("CH₄", "chloromethane", "CH₃Cl"), ("CH₃Cl", "dichloromethane", "CH₂Cl₂"),
             ("CH₂Cl₂", "trichloromethane", "CHCl₃"), ("CHCl₃", "tetrachloromethane", "CCl₄")]
    y = 66
    for i, (start, name, product) in enumerate(steps):
        b.append(rect(12, y - 17, 100, 34, "#FFFFFF", NAVY, 6, 1.1))
        b.append(t(62, y - 2, start, size=10.4, weight="bold", fill=NAVY))
        b.append(t(62, y + 11, "the reagent", size=6.8, fill=MUTED))
        b.append(arrow2(118, y, 214, y, color=GREEN, sw=1.6, size=6.5))
        b.append(t(166, y - 6, "+ Cl₂ →", size=8.0, fill=GREEN, weight="bold"))
        b.append(t(166, y + 10, "UV", size=7.2, fill=MUTED))
        b.append(rect(220, y - 17, 124, 34, "#FFFFFF", GREEN, 6, 1.2))
        b.append(t(282, y - 2, product, size=10.4, weight="bold", fill=GREEN))
        b.append(t(282, y + 11, name, size=6.8, fill=MUTED))
        b.append(t(420, y + 1, "+ HCl", size=9.0, fill=SLATE, anchor="start"))
        y += 52

    b.append(rect(12, 262, 536, 30, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(280, 281, "The reaction does not stop at the first product: all four chloromethanes form in the same flask.",
               size=8.0, fill=NAVY))
    write_svg("ch01_substitution.svg", svg(w, h, "\n".join(b)))


# ── Chapter 2 ──────────────────────────────────────────────────────────────
def ch02_ethene_bond():
    w, h = 560, 300
    b = [t(280, 22, "ETHENE — ONE σ BOND AND ONE π BOND BETWEEN THE CARBONS",
           size=10.6, weight="bold")]
    b.append(t(280, 40, "All six atoms are coplanar, the H–C–H angle is about 120°, and the π cloud sits above and below the plane.",
               size=7.9, fill=MUTED))

    # left carbon and right carbon
    cx1, cx2, cy = 200, 360, 168
    for cx, lab in ((cx1, "C"), (cx2, "C")):
        b.append(dot(cx, cy, 26, "#FFFFFF", NAVY, 1.6))
        b.append(t(cx, cy + 5, lab, size=12.5, weight="bold", fill=NAVY))
    # sigma
    b.append(line(cx1 + 26, cy, cx2 - 26, cy, color=GREEN, sw=3.0))
    b.append(t(280, cy - 8, "σ", size=12, fill=GREEN, weight="bold"))
    # pi clouds
    for dy, lab in ((-44, "π cloud"), (52, "π cloud")):
        b.append(f'<ellipse cx="280" cy="{cy + dy}" rx="72" ry="17" fill="{BLUE}" opacity="0.18"/>')
        b.append(t(280, cy + dy + 4, "π", size=11, fill=BLUE, weight="bold"))

    for (ex, ey, lab) in [(120, 100, "H"), (120, 236, "H"), (280, 76, "H"), (280, 260, "H")]:
        pass
    # four hydrogens
    b.append(line(cx1, cy - 26, 150, 104, color=SLATE, sw=1.6))
    b.append(line(cx1, cy + 26, 150, 232, color=SLATE, sw=1.6))
    b.append(line(cx2, cy - 26, 410, 104, color=SLATE, sw=1.6))
    b.append(line(cx2, cy + 26, 410, 232, color=SLATE, sw=1.6))
    for (x, y) in ((150, 104), (150, 232), (410, 104), (410, 232)):
        b.append(dot(x, y, 15, "#FFFFFF", SLATE, 1.4))
        b.append(t(x, y + 4, "H", size=9.6, fill=NAVY))

    b.append(rect(12, 268, 258, 26, GREEN_LIGHT, GREEN, 5, 1.0))
    b.append(t(141, 285, "σ bond: head-on overlap, strong, free to rotate", size=7.8, fill=NAVY))
    b.append(rect(290, 268, 258, 26, BLUE_LIGHT, BLUE, 5, 1.0))
    b.append(t(419, 285, "π bond: sideways overlap, weak, locks the atoms flat", size=7.8, fill=NAVY))
    write_svg("ch02_ethene_bond.svg", svg(w, h, "\n".join(b)))


def ch02_addition_map():
    w, h = 560, 344
    b = [t(280, 22, "ETHENE IS AN ELECTRON-RICH TARGET — EVERY REAGENT ADDS ACROSS THE DOUBLE BOND",
           size=9.9, weight="bold")]
    cx, cy = 280, 172
    b.append(rect(cx - 62, cy - 32, 124, 64, "#FFFFFF", NAVY, 8, 1.6))
    b.append(t(cx, cy - 6, "CH₂=CH₂", size=12.4, weight="bold", fill=NAVY))
    b.append(t(cx, cy + 14, "ethene", size=8.0, fill=MUTED))

    nodes = [
        (-1, "H₂ / Ni, 150 °C", "CH₃CH₃ ethane", GREEN),
        (-1, "Br₂ in CCl₄", "CH₂BrCH₂Br", BLUE),
        (-1, "HCl (g)", "CH₃CH₂Cl", PURPLE),
        (1, "H₂O / H₃PO₄", "CH₃CH₂OH", GREEN),
        (1, "Cl₂", "CH₂ClCH₂Cl", BLUE),
        (1, "acidified KMnO₄", "a diol — decolourised", RED),
    ]
    left = [n for n in nodes if n[0] == -1]
    right = [n for n in nodes if n[0] == 1]
    ys = [74, 172, 270]
    for (_, reagent, product, col), y in zip(left, ys):
        b.append(rect(8, y - 26, 168, 52, "#FFFFFF", col, 7, 1.2))
        b.append(t(92, y - 8, reagent, size=7.9, weight="bold", fill=col))
        b.append(t(92, y + 8, product, size=7.6, fill=SLATE))
        b.append(arrow2(180, y, cx - 66, cy, color=col, sw=1.5, size=6))
    for (_, reagent, product, col), y in zip(right, ys):
        b.append(rect(384, y - 26, 168, 52, "#FFFFFF", col, 7, 1.2))
        b.append(t(468, y - 8, reagent, size=7.9, weight="bold", fill=col))
        b.append(t(468, y + 8, product, size=7.6, fill=SLATE))
        b.append(arrow2(380, y, cx + 66, cy, color=col, sw=1.5, size=6))

    b.append(t(280, 323, "Addition needs no light and no heat: the π electrons are offered to any electrophile that arrives.",
               size=8.0, fill=MUTED))
    write_svg("ch02_addition_map.svg", svg(w, h, "\n".join(b)))


def ch02_unsaturation_test():
    w, h = 560, 250
    b = [t(280, 22, "THE BROMINE WATER TEST — AN ALKENE DECOLOURISES IT, AN ALKANE DOES NOT",
           size=10.1, weight="bold")]

    # tube 1: alkane, stays orange
    b.append(rect(70, 52, 92, 150, "#FFFFFF", BORDER, 10, 1.4))
    b.append(f'<path d="M 74 150 L 74 198 Q 74 210 86 210 L 146 210 Q 158 210 158 198 L 158 150 Z" fill="{AMBER}" opacity="0.72"/>')
    b.append(t(116, 236, "hexane + bromine water", size=8.2, weight="bold", fill=NAVY))
    b.append(t(116, 250, "stays orange — no reaction", size=7.6, fill=MUTED))

    # tube 2: alkene, colourless
    b.append(rect(330, 52, 92, 150, "#FFFFFF", BORDER, 10, 1.4))
    b.append(f'<path d="M 334 150 L 334 198 Q 334 210 346 210 L 406 210 Q 418 210 418 198 L 418 150 Z" fill="#E2E8F0"/>')
    b.append(t(376, 236, "hexene + bromine water", size=8.2, weight="bold", fill=NAVY))
    b.append(t(376, 250, "decolourised — addition", size=7.6, fill=MUTED))

    b.append(t(203, 128, "no", size=10, fill=RED, weight="bold"))
    b.append(t(203, 146, "reaction", size=8.4, fill=RED))
    b.append(t(280, 96, "vs", size=11, fill=MUTED, weight="bold"))
    b.append(t(452, 120, "CH₂=CH₂", size=8.6, fill=GREEN, weight="bold"))
    b.append(t(452, 136, "+ Br₂", size=8.6, fill=GREEN))
    b.append(t(452, 152, "→", size=9, fill=GREEN))
    b.append(t(452, 168, "CH₂BrCH₂Br", size=8.2, fill=GREEN, weight="bold"))
    b.append(arrow2(430, 152, 462, 152, color=GREEN, sw=1.3, size=5))
    write_svg("ch02_unsaturation_test.svg", svg(w, h, "\n".join(b)))


def ch02_polyethene():
    w, h = 560, 240
    b = [t(280, 22, "ADDITION POLYMERISATION — THE DOUBLE BOND OPENS AND THE CHAIN GROWS",
           size=10.2, weight="bold")]

    def ethene(x, y):
        return [t(x, y, "CH₂", size=9.4, fill=NAVY, anchor="end"),
                t(x + 16, y, "=", size=9.4, fill=GREEN, weight="bold"),
                t(x + 26, y, "CH₂", size=9.4, fill=NAVY, anchor="start")]

    b += ethene(118, 90)
    b += ethene(118, 130)
    b += ethene(118, 170)
    b.append(t(118, 202, "many ethene molecules", size=7.8, fill=MUTED))
    b.append(arrow2(178, 130, 268, 130, color=GREEN, sw=1.8, size=8))
    b.append(t(222, 120, "heat, pressure,", size=7.4, fill=GREEN))
    b.append(t(222, 146, "a catalyst", size=7.4, fill=GREEN))

    # polymer chain
    x = 300
    for i in range(6):
        b.append(t(x + i * 42, 130, "CH₂", size=8.6, fill=NAVY))
        if i < 5:
            b.append(line(x + i * 42 + 22, 126, x + i * 42 + 24, 126, color=NAVY, sw=1.2))
    b.append(t(300, 152, "[ CH₂—CH₂ ]ₙ", size=10.2, weight="bold", fill=GREEN))
    b.append(t(400, 176, "poly(ethene) — a saturated chain", size=7.8, fill=MUTED))
    b.append(t(280, 220, "Nothing is lost: every atom of every monomer ends up in the polymer, which is why the empirical formula does not change.",
               size=8.0, fill=SLATE))
    write_svg("ch02_polyethene.svg", svg(w, h, "\n".join(b)))


def ch02_alkyne():
    w, h = 560, 268
    b = [t(280, 22, "ETHYNE — THE TRIPLE BOND, AND WHY IT IS SO MUCH MORE REACTIVE",
           size=10.4, weight="bold")]
    cx1, cx2, cy = 210, 350, 118
    b.append(dot(cx1, cy, 24, "#FFFFFF", NAVY, 1.6))
    b.append(dot(cx2, cy, 24, "#FFFFFF", NAVY, 1.6))
    b.append(t(cx1, cy + 5, "C", size=12, weight="bold"))
    b.append(t(cx2, cy + 5, "C", size=12, weight="bold"))
    for dy, col in ((-13, GREEN), (0, NAVY), (13, BLUE)):
        b.append(line(cx1 + 22, cy + dy, cx2 - 22, cy + dy, color=col, sw=2.6))
    b.append(t(280, cy - 30, "one σ + two π", size=8.4, fill=MUTED))
    b.append(line(cx1 - 22, cy, 176, cy, color=NAVY, sw=1.6))
    b.append(t(168, cy + 4, "H", size=10, fill=NAVY))
    b.append(line(cx2 + 22, cy, 384, cy, color=NAVY, sw=1.6))
    b.append(t(392, cy + 4, "H", size=10, fill=NAVY))
    b.append(t(280, cy + 52, "linear, 180°, C≡C 120 pm", size=8.2, fill=SLATE))

    b.append(rect(12, 186, 258, 70, "#FFFFFF", GREEN, 7, 1.2))
    b.append(t(141, 204, "Made from calcium carbide", size=8.6, weight="bold", fill=GREEN))
    b.append(t(141, 220, "CaC₂ + 2H₂O → C₂H₂ + Ca(OH)₂", size=8.2, fill=NAVY))
    b.append(t(141, 238, "the carbide is made in the electric furnace", size=7.4, fill=MUTED))
    b.append(t(141, 250, "CaO + 3C → CaC₂ + CO", size=7.6, fill=SLATE))

    b.append(rect(290, 186, 258, 70, "#FFFFFF", RED, 7, 1.2))
    b.append(t(419, 204, "The oxy-acetylene flame", size=8.6, weight="bold", fill=RED))
    b.append(t(419, 220, "2C₂H₂ + 5O₂ → 4CO₂ + 2H₂O", size=8.2, fill=NAVY))
    b.append(t(419, 238, "about 3000 °C — hot enough to weld steel", size=7.4, fill=MUTED))
    b.append(t(419, 250, "the only gas flame that hot", size=7.6, fill=SLATE))
    write_svg("ch02_alkyne.svg", svg(w, h, "\n".join(b)))


# ── recap cards ────────────────────────────────────────────────────────────
def recap_cards_a():
    recap_card("recap_ch01.svg", "Chapter 1 recap card — alkanes and crude oil", [
        ("The series",
         "Alkanes: CₙH₂ₙ₊₂, single bonds only, saturated, unreactive except towards oxygen and halogens. Boiling point rises with chain length; branching lowers it."),
        ("Crude oil",
         "A mixture separated in a fractionating column by boiling range: gas, petrol, kerosene, diesel, lubricating oil, bitumen, from top to bottom."),
        ("Cracking",
         "A long alkane is broken into a short alkane plus an alkene, or into smaller alkenes and hydrogen, at about 500 °C over a catalyst."),
        ("Chlorination",
         "CH₄ + Cl₂ → CH₃Cl + HCl in ultraviolet light. A substitution: one hydrogen is replaced, and the reaction goes on to CCl₄."),
    ])
    recap_card("recap_ch02.svg", "Chapter 2 recap card — alkenes and alkynes", [
        ("The series",
         "Alkenes: CₙH₂ₙ, one C=C, unsaturated. The π bond is the reactive part, so everything that happens is an addition."),
        ("The test",
         "Bromine water is decolourised by an alkene and not by an alkane; acidified KMnO₄ is decolourised as well."),
        ("Addition",
         "H₂/Ni, Br₂, HCl, H₂O/H₃PO₄, Cl₂ and acidified KMnO₄ all add across the double bond to give one product."),
        ("Polymerisation",
         "n CH₂=CH₂ → [CH₂—CH₂]ₙ under heat and pressure. Ethyne, C₂H₂, has a triple bond and burns at 3000 °C."),
    ])
