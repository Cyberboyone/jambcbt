"""Volume 1 diagrams — chapters 3 to 6 (division, photosynthesis, digestion, transport in plants)."""

from __future__ import annotations

import matplotlib.pyplot as plt
from matplotlib.patches import (Arc, Circle, Ellipse, FancyBboxPatch, FancyArrowPatch,
                                Polygon, Rectangle, Wedge)

from common import (OUT, GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE,
                    MUTED, BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE,
                    BLUE_LIGHT, PURPLE, PURPLE_LIGHT, write_svg, svg, t, lines,
                    rect, arrow, line, card, save)

plt.rcParams.update({"font.family": "DejaVu Sans"})
plt.rcParams["svg.fonttype"] = "none"


# ── shared helpers ──────────────────────────────────────────────────────────
def _label(ax, text, xy, xytext, color=SLATE, size=7.6):
    ax.annotate(text, xy=xy, xytext=xytext, fontsize=size, color=color, ha="center",
                va="center", arrowprops=dict(arrowstyle="-", color=MUTED, lw=0.9,
                                             shrinkA=2, shrinkB=3))


def recap_card(name, title, rows):
    w, h = 700, 214
    b = [t(350, 26, title, size=13, weight="bold", fill=NAVY)]
    y = 44
    for head, body in rows:
        b.append(rect(18, y, 664, 34, "#FFFFFF", GREEN, 6, 1.1))
        b.append(t(30, y + 15, head, size=9.2, weight="bold", fill=GREEN, anchor="start"))
        b.append(t(30, y + 29, body, size=8.6, fill=SLATE, anchor="start"))
        y += 40
    b.append(t(350, 202, "Say each line aloud once; if you can say it, you can answer it.",
               size=8.2, fill=MUTED))
    write_svg(name, svg(w, h, "\n".join(b)))


def _chromosome(ax, x, y, colour, angle=0, n=1):
    """Draw a simple replicated chromosome as two curved chromatids."""
    for dx in (-0.055, 0.055):
        ax.add_patch(Ellipse((x + dx, y), 0.045, 0.30, angle=angle,
                             facecolor=colour, edgecolor="none", zorder=4, alpha=0.9))


# ── chapter 3 ───────────────────────────────────────────────────────────────
def ch03_mitosis():
    fig, axes = plt.subplots(1, 4, figsize=(8.4, 2.6))
    titles = ["Prophase", "Metaphase", "Anaphase", "Telophase"]
    for ax, title, stage in zip(axes, titles, range(4)):
        ax.set_xlim(0, 2)
        ax.set_ylim(0, 2)
        ax.axis("off")
        ax.add_patch(Circle((1, 1), 0.82, facecolor="#FFFDF5", edgecolor=AMBER, lw=1.6))
        ax.text(1, 1.92, title, ha="center", fontsize=9.5, color=NAVY, fontweight="bold")
        if stage == 0:      # chromosomes condense, scattered
            for (x, y, a) in ((0.7, 1.25, 20), (1.25, 1.2, -30), (0.75, 0.75, 60), (1.3, 0.8, 10)):
                _chromosome(ax, x, y, BLUE, a)
            ax.add_patch(Circle((1, 1), 0.62, facecolor="none", edgecolor=PURPLE, lw=1.2, ls=(0, (3, 2))))
        elif stage == 1:    # aligned at equator
            for i, x in enumerate((0.78, 1.0, 1.22)):
                _chromosome(ax, x, 1.0, BLUE, 0)
            ax.plot([1, 1], [0.2, 1.8], color=MUTED, lw=0.8, ls=(0, (4, 3)))
            ax.text(1, 0.12, "equator", ha="center", fontsize=6.8, color=MUTED)
        elif stage == 2:    # chromatids pulled apart
            for x in (0.62, 1.38):
                for y in (1.3, 1.0, 0.7):
                    _chromosome(ax, x, y, BLUE, 0)
            ax.annotate("", xy=(0.35, 1.0), xytext=(0.65, 1.0),
                        arrowprops=dict(arrowstyle="->", color=RED, lw=1.2))
            ax.annotate("", xy=(1.65, 1.0), xytext=(1.35, 1.0),
                        arrowprops=dict(arrowstyle="->", color=RED, lw=1.2))
        else:               # two nuclei
            for cx in (0.72, 1.28):
                ax.add_patch(Circle((cx, 1.0), 0.34, facecolor=GREEN_LIGHT, edgecolor=GREEN, lw=1.3))
                for y in (1.12, 0.88):
                    _chromosome(ax, cx, y, BLUE, 0)
            ax.plot([1, 1], [0.45, 1.55], color=SLATE, lw=1.4, ls=(0, (2, 2)))
            ax.text(1, 0.16, "cell plate", ha="center", fontsize=6.8, color=SLATE)
    fig.tight_layout()
    save(fig, "ch03_mitosis.svg")


def ch03_meiosis():
    w, h = 760, 320
    b = [t(380, 22, "MEIOSIS — ONE CELL, FOUR CELLS, HALF THE CHROMOSOMES", size=12.4, weight="bold")]
    b.append(rect(24, 44, 150, 84, "#FFFFFF", GREEN, 8, 1.5))
    b.append(t(99, 66, "DIPLOID CELL", size=9.6, weight="bold", fill=GREEN))
    b.append(t(99, 84, "2n = 4", size=10, fill=NAVY))
    b.append(t(99, 112, "homologous pairs", size=7.6, fill=MUTED))
    b.append(arrow(178, 86, 232, 86, color=GREEN, sw=1.6))
    b.append(t(205, 76, "prophase I", size=7.4, fill=MUTED))
    b.append(t(205, 116, "crossing over", size=7.4, fill=RED))
    b.append(rect(236, 44, 150, 84, "#FFFFFF", BLUE, 8, 1.5))
    b.append(t(311, 66, "MEIOSIS I", size=9.6, weight="bold", fill=BLUE))
    b.append(t(311, 88, "pairs separate", size=8.4, fill=SLATE))
    b.append(t(311, 106, "2 haploid cells", size=8.4, fill=SLATE))
    b.append(arrow(390, 86, 444, 86, color=BLUE, sw=1.6))
    b.append(t(417, 76, "meiosis II", size=7.4, fill=MUTED))
    b.append(rect(448, 44, 150, 84, "#FFFFFF", PURPLE, 8, 1.5))
    b.append(t(523, 66, "CHROMATIDS SEPARATE", size=8, weight="bold", fill=PURPLE))
    b.append(t(523, 88, "like mitosis", size=8.4, fill=SLATE))
    b.append(t(523, 106, "4 haploid cells", size=8.4, fill=SLATE))
    b.append(arrow(600, 86, 654, 86, color=PURPLE, sw=1.6))
    b.append(rect(658, 44, 86, 84, "#FFFFFF", GREEN_BRIGHT, 8, 1.5))
    b.append(t(701, 70, "4 GAMETES", size=8.6, weight="bold", fill=GREEN_BRIGHT))
    b.append(t(701, 92, "n = 2", size=10, fill=NAVY))
    b.append(t(701, 112, "all different", size=7.4, fill=MUTED))

    b.append(rect(24, 150, 344, 150, GREEN_LIGHT, GREEN_MID, 8, 1.2))
    b.append(t(196, 174, "Two sources of variation", size=10, weight="bold", fill=GREEN))
    b.append(t(40, 200, "1. Crossing over (prophase I)", size=9, weight="bold", fill=NAVY, anchor="start"))
    b.append(t(40, 218, "Pieces of homologous chromatids are swapped,", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(40, 232, "so each chromosome carries a mixture of genes.", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(40, 256, "2. Independent assortment (metaphase I)", size=9, weight="bold", fill=NAVY, anchor="start"))
    b.append(t(40, 274, "Pairs line up at random, so gametes receive random", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(40, 288, "combinations of maternal and paternal chromosomes.", size=8.2, fill=SLATE, anchor="start"))

    b.append(rect(392, 150, 344, 150, BLUE_LIGHT, BLUE, 8, 1.2))
    b.append(t(564, 174, "What the examiner asks", size=10, weight="bold", fill=BLUE))
    b.append(t(408, 200, "• How many cells?  Four.", size=8.6, fill=SLATE, anchor="start"))
    b.append(t(408, 220, "• How many chromosomes?  Half the parent (n).", size=8.6, fill=SLATE, anchor="start"))
    b.append(t(408, 240, "• Where is crossing over?  Prophase I.", size=8.6, fill=SLATE, anchor="start"))
    b.append(t(408, 260, "• Why does it happen?  To make gametes and variation.", size=8.6, fill=SLATE, anchor="start"))
    b.append(t(408, 280, "• Are the four cells identical?  Never.", size=8.6, fill=SLATE, anchor="start"))
    write_svg("ch03_meiosis.svg", svg(w, h, "\n".join(b)))


# ── chapter 4 ───────────────────────────────────────────────────────────────
def ch04_leaf():
    fig, ax = plt.subplots(figsize=(7.0, 4.3))
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 6.3)
    ax.axis("off")

    # cuticle
    ax.add_patch(FancyBboxPatch((1.0, 4.55), 6.4, 0.16, boxstyle="round,pad=0.01",
                                facecolor=AMBER_LIGHT, edgecolor=AMBER, lw=1.2, zorder=3))
    # upper epidermis
    ax.add_patch(FancyBboxPatch((1.0, 4.05), 6.4, 0.50, boxstyle="round,pad=0.01",
                                facecolor="#F1F5F9", edgecolor=BORDER, lw=1.0, zorder=2))
    for i in range(10):
        ax.add_patch(Rectangle((1.15 + i * 0.63, 4.08), 0.56, 0.44, facecolor="#FAFAFA",
                               edgecolor=BORDER, lw=0.7, zorder=3))
    # palisade
    ax.add_patch(FancyBboxPatch((1.0, 2.85), 6.4, 1.18, boxstyle="round,pad=0.01",
                                facecolor=GREEN_LIGHT, edgecolor=GREEN_MID, lw=1.0, zorder=2))
    for i in range(13):
        ax.add_patch(Rectangle((1.08 + i * 0.49, 2.92), 0.40, 1.02, facecolor=GREEN_MID,
                               edgecolor=GREEN, lw=0.8, zorder=3))
        for j in range(4):
            ax.add_patch(Circle((1.20 + i * 0.49, 3.08 + j * 0.26), 0.055, facecolor=GREEN,
                                edgecolor="none", zorder=4))
    # spongy mesophyll with air spaces
    ax.add_patch(FancyBboxPatch((1.0, 1.55), 6.4, 1.28, boxstyle="round,pad=0.01",
                                facecolor="#FFFFFF", edgecolor=GREEN_MID, lw=1.0, zorder=2))
    import random
    random.seed(3)
    for i in range(22):
        cx = 1.25 + random.uniform(0, 5.9)
        cy = 1.72 + random.uniform(0, 0.95)
        ax.add_patch(Circle((cx, cy), 0.16, facecolor=GREEN_LIGHT, edgecolor=GREEN, lw=0.8, zorder=3))
    # lower epidermis with stomata
    ax.add_patch(FancyBboxPatch((1.0, 1.05), 6.4, 0.50, boxstyle="round,pad=0.01",
                                facecolor="#F1F5F9", edgecolor=BORDER, lw=1.0, zorder=2))
    for x in (2.9, 5.35):
        ax.add_patch(Wedge((x - 0.12, 1.30), 0.20, 90, 270, width=0.10, facecolor=GREEN, edgecolor=GREEN, zorder=4))
        ax.add_patch(Wedge((x + 0.12, 1.30), 0.20, -90, 90, width=0.10, facecolor=GREEN, edgecolor=GREEN, zorder=4))
    # vein
    ax.add_patch(Ellipse((7.75, 2.9), 0.55, 1.5, facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.3, zorder=3))
    ax.text(7.75, 2.9, "vein", rotation=90, ha="center", va="center", fontsize=7.4, color=BLUE, zorder=4)

    ax.text(4.1, 6.05, "A leaf in vertical section", ha="center", fontsize=10.5,
            color=NAVY, fontweight="bold")

    _label(ax, "Waxy cuticle\n(waterproof)", (2.2, 4.63), (2.2, 5.45))
    _label(ax, "Upper epidermis\n(transparent, no chloroplasts)", (5.4, 4.30), (8.9, 5.35))
    _label(ax, "Palisade mesophyll\n(most chloroplasts)", (2.8, 3.45), (1.95, 3.62), size=7.2)
    _label(ax, "Spongy mesophyll\n(air spaces for gas exchange)", (6.2, 2.15), (8.75, 0.62), size=7.2)
    _label(ax, "Stoma +\nguard cells", (2.9, 1.10), (1.3, 0.62))
    _label(ax, "Xylem and phloem", (7.75, 2.2), (9.2, 1.9))
    save(fig, "ch04_leaf.svg")


def ch04_limiting():
    fig, ax = plt.subplots(figsize=(6.8, 3.4))
    x = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    y_low = [0, 1.5, 3.0, 4.4, 5.4, 5.9, 6.0, 6.0, 6.0]
    y_high = [0, 2.2, 4.4, 6.3, 7.9, 9.1, 9.9, 10.0, 10.0]
    ax.plot(x, y_high, color=BLUE, lw=2.2, marker="o", ms=3.5, label="high CO₂")
    ax.plot(x, y_low, color=GREEN, lw=2.2, marker="o", ms=3.5, label="low CO₂")
    ax.axhline(10.0, color=BLUE, ls=(0, (3, 3)), lw=0.9)
    ax.annotate("light no longer limits\n(CO₂ is limiting)", xy=(6.2, 9.4), xytext=(4.3, 6.2),
                fontsize=8, color=BLUE, arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.0))
    ax.set_xlabel("Light intensity")
    ax.set_ylabel("Rate of photosynthesis")
    ax.set_xticks([])
    ax.set_yticks([])
    ax.set_ylim(0, 11.6)
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)
    ax.legend(frameon=False, fontsize=8.6, loc="lower right")
    ax.set_title("Limiting factors: the plateau is where another factor takes over",
                 fontsize=9.6, color=NAVY, fontweight="bold")
    save(fig, "ch04_limiting.svg")


# ── chapter 5 ───────────────────────────────────────────────────────────────
def ch05_canal():
    w, h = 760, 360
    b = [t(380, 22, "THE HUMAN ALIMENTARY CANAL — IN ORDER", size=12.6, weight="bold")]
    # central tube
    organs = [
        ("MOUTH", "amylase", GREEN),
        ("OESOPHAGUS", "peristalsis", BLUE),
        ("STOMACH", "pepsin + acid", PURPLE),
        ("DUODENUM", "pancreatic enzymes + bile", AMBER),
        ("ILEUM", "absorption", GREEN_BRIGHT),
        ("COLON", "water absorbed", BLUE),
        ("RECTUM / ANUS", "egestion", RED),
    ]
    y = 44
    for i, (name, job, col) in enumerate(organs):
        b.append(rect(30, y, 190, 34, "#FFFFFF", col, 6, 1.4))
        b.append(t(125, y + 21, name, size=9.2, weight="bold", fill=col))
        b.append(rect(240, y, 250, 34, "#FFFFFF", BORDER, 6, 1.0))
        b.append(t(365, y + 21, job, size=8.4, fill=SLATE))
        if i < len(organs) - 1:
            b.append(arrow(125, y + 34, 125, y + 44, color=MUTED, sw=1.2))
        y += 44
    b.append(rect(516, 60, 226, 110, GREEN_LIGHT, GREEN_MID, 8, 1.2))
    b.append(t(629, 82, "Glands that add enzymes", size=9.4, weight="bold", fill=GREEN))
    for j, s in enumerate(["Salivary glands → mouth", "Gastric glands → stomach",
                           "Pancreas → duodenum", "Liver (bile) → duodenum",
                           "Intestinal glands → ileum"]):
        b.append(t(528, 102 + j * 16, "• " + s, size=8, fill=SLATE, anchor="start"))
    b.append(rect(516, 190, 226, 120, BLUE_LIGHT, BLUE, 8, 1.2))
    b.append(t(629, 212, "Where absorption happens", size=9.4, weight="bold", fill=BLUE))
    b.append(t(528, 234, "• Stomach: water, alcohol, some drugs", size=8, fill=SLATE, anchor="start"))
    b.append(t(528, 252, "• Ileum: almost everything else", size=8, fill=SLATE, anchor="start"))
    b.append(t(528, 270, "• Colon: water and mineral salts", size=8, fill=SLATE, anchor="start"))
    b.append(t(528, 292, "The ileum is folded into villi to give", size=7.8, fill=MUTED, anchor="start"))
    b.append(t(528, 304, "a huge surface area.", size=7.8, fill=MUTED, anchor="start"))
    write_svg("ch05_canal.svg", svg(w, h, "\n".join(b)))


def ch05_dentition():
    w, h = 760, 290
    b = [t(380, 22, "TEETH AND DIET — THREE DENTITIONS", size=12.6, weight="bold")]
    data = [("HERBIVORE (cow)", "0.0.3.3 ÷ 3.1.3.3", "broad ridged molars grind grass", GREEN),
            ("CARNIVORE (dog)", "3.1.4.2 ÷ 3.1.4.3", "long canines tear flesh; carnassials shear", RED),
            ("OMNIVORE (human)", "2.1.2.3 ÷ 2.1.2.3", "mixed teeth for a mixed diet", BLUE)]
    x = 22
    for name, formula, note, col in data:
        b.append(rect(x, 42, 232, 210, "#FFFFFF", col, 9, 1.5))
        b.append(f'<rect x="{x}" y="42" width="232" height="6" rx="3" fill="{col}"/>')
        b.append(t(x + 116, 70, name, size=9.6, weight="bold", fill=col))
        b.append(t(x + 116, 92, formula, size=10.6, weight="bold", fill=NAVY))
        # tooth row
        widths = [10, 6, 16, 20] if col == GREEN else ([8, 20, 14, 16] if col == RED else [12, 8, 16, 20])
        kinds = ["I", "C", "P", "M"]
        tx = x + 26
        for kind, wd in zip(kinds, widths):
            b.append(f'<rect x="{tx}" y="112" width="{wd}" height="54" rx="3" fill="{col}" opacity="0.22" stroke="{col}"/>')
            b.append(t(tx + wd / 2, 184, kind, size=8, weight="bold", fill=col))
            tx += wd + 4
        b.append(t(x + 116, 214, note, size=7.8, fill=SLATE))
        x += 244
    b.append(t(380, 276, "Dental formulae count the teeth in ONE HALF of each jaw — multiply by 4 for the total. Human: (2+1+2+3) × 4 = 32.",
               size=8.2, fill=MUTED))
    write_svg("ch05_dentition.svg", svg(w, h, "\n".join(b)))


# ── chapter 6 ───────────────────────────────────────────────────────────────
def ch06_root():
    fig, ax = plt.subplots(figsize=(7.0, 3.9))
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 5.4)
    ax.axis("off")
    # soil
    ax.add_patch(Rectangle((0, 0), 10, 2.2, facecolor="#FDF6EC", edgecolor="none", zorder=0))
    ax.text(0.35, 0.3, "soil water + mineral salts", fontsize=7.4, color=AMBER)
    # root hair cell: body + hair
    ax.add_patch(Rectangle((3.6, 1.55), 2.4, 2.4, facecolor=GREEN_LIGHT, edgecolor=GREEN, lw=2.0, zorder=2))
    ax.add_patch(Polygon([[3.6, 2.05], [1.1, 1.35], [1.05, 1.55], [3.6, 2.45]],
                         closed=True, facecolor=GREEN_LIGHT, edgecolor=GREEN, lw=1.6, zorder=2))
    ax.add_patch(Circle((4.5, 2.75), 0.42, facecolor=PURPLE_LIGHT, edgecolor=PURPLE, lw=1.3, zorder=3))
    ax.add_patch(Circle((4.5, 2.75), 0.14, facecolor=PURPLE, edgecolor=PURPLE, lw=0.6, zorder=4))
    for (x, y) in ((5.2, 2.0), (5.4, 2.5), (5.15, 3.1), (4.1, 1.95), (4.6, 1.75)):
        ax.add_patch(Ellipse((x, y), 0.22, 0.13, facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=0.8, zorder=3))
    # water arrows
    for (x0, y0) in ((0.5, 1.0), (0.9, 0.75), (1.6, 0.9)):
        ax.annotate("", xy=(x0 + 0.55, y0 + 0.25), xytext=(x0, y0),
                    arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.4))
    ax.text(1.2, 1.75, "H₂O in by osmosis", fontsize=7.6, color=BLUE)
    # xylem upward
    ax.add_patch(Rectangle((4.45, 3.95), 0.7, 1.35, facecolor="#E2E8F0", edgecolor=SLATE, lw=1.2, zorder=2))
    ax.annotate("", xy=(4.8, 5.25), xytext=(4.8, 4.05),
                arrowprops=dict(arrowstyle="->", color=SLATE, lw=2.0))
    ax.text(5.35, 4.65, "up the xylem\nto the leaf", fontsize=7.8, color=SLATE)
    ax.text(4.6, 5.32, "Transpiration stream", fontsize=9.6, color=NAVY, fontweight="bold", ha="center")
    _label(ax, "root hair\n(large surface area)", (2.3, 1.75), (1.6, 3.4))
    _label(ax, "nucleus", (4.5, 2.75), (3.15, 3.55))
    _label(ax, "mitochondria for\nactive transport", (5.3, 2.3), (7.6, 2.9))
    _label(ax, "cortex cells carry\nwater inwards", (6.9, 2.2), (8.2, 1.35))
    ax.text(9.0, 4.9, "Minerals are taken up\nby ACTIVE TRANSPORT\n(needs energy)",
            fontsize=7.6, color=RED, ha="center")
    save(fig, "ch06_root.svg")


def ch06_transpiration():
    w, h = 760, 250
    b = [t(380, 22, "WHAT CHANGES THE RATE OF TRANSPIRATION", size=12.4, weight="bold")]
    up = [("Bright light", "stomata open wider"),
          ("High temperature", "more energy to evaporate"),
          ("Wind", "removes the humid layer")]
    down = [("High humidity", "smaller water-potential gradient"),
            ("Water shortage", "stomata close to save water"),
            ("Still, cool night", "stomata closed, air saturated")]
    b.append(rect(22, 44, 348, 176, GREEN_LIGHT, GREEN_MID, 8, 1.2))
    b.append(t(196, 68, "INCREASES the rate", size=9.6, weight="bold", fill=GREEN))
    y = 92
    for name, why in up:
        b.append(t(40, y, "▲  " + name, size=8.8, weight="bold", fill=NAVY, anchor="start"))
        b.append(t(40, y + 16, why, size=8, fill=SLATE, anchor="start"))
        y += 42
    b.append(rect(390, 44, 348, 176, RED_LIGHT, "#FCA5A5", 8, 1.2))
    b.append(t(564, 68, "DECREASES the rate", size=9.6, weight="bold", fill=RED))
    y = 92
    for name, why in down:
        b.append(t(408, y, "▼  " + name, size=8.8, weight="bold", fill=NAVY, anchor="start"))
        b.append(t(408, y + 16, why, size=8, fill=SLATE, anchor="start"))
        y += 42
    b.append(t(380, 238, "Everything works through one quantity: the steepness of the water-potential gradient between the leaf and the air.",
               size=8.2, fill=MUTED))
    write_svg("ch06_transpiration.svg", svg(w, h, "\n".join(b)))


def recap_cards_b():
    recap_card("recap_ch03.svg", "Chapter 3 recap card — cell division", [
        ("Mitosis", "One division, two identical diploid cells: growth, repair, asexual reproduction."),
        ("Meiosis", "Two divisions, four different haploid cells: gametes and variation."),
        ("Crossing over", "Prophase I, between homologous chromosomes — the source of new gene combinations."),
        ("The numbers", "Gamete = 2n ÷ 2. Zygote = n + n. Mitosis leaves 2n unchanged."),
    ])
    recap_card("recap_ch04.svg", "Chapter 4 recap card — photosynthesis", [
        ("Equation", "CO₂ + water → glucose + oxygen, using light and chlorophyll."),
        ("Leaf", "Palisade at the top for light, spongy in the middle for gases, stomata below."),
        ("Limiting factor", "Whichever of light, CO₂ or temperature is in shortest supply."),
        ("Minerals", "Magnesium for chlorophyll, nitrogen for protein, iron for chlorophyll formation."),
    ])
    recap_card("recap_ch05.svg", "Chapter 5 recap card — animal nutrition", [
        ("Tests", "Iodine → blue-black (starch); Benedict's → brick-red (sugar); Biuret → violet (protein)."),
        ("Enzymes", "Amylase (mouth, duodenum), pepsin (stomach), lipase and trypsin (duodenum)."),
        ("Absorption", "Ileum villi: large area, thin wall, capillaries, lacteals."),
        ("Dentition", "Human 2.1.2.3 ÷ 2.1.2.3 = 32 teeth; herbivore grinds, carnivore shears."),
    ])
    recap_card("recap_ch06.svg", "Chapter 6 recap card — transport in plants", [
        ("Uptake", "Water by osmosis through root hairs; minerals by active transport."),
        ("Xylem", "Dead, lignified, upward: water and mineral salts only."),
        ("Phloem", "Living, with sieve plates, both ways: sugars and amino acids."),
        ("Transpiration", "Faster when hot, dry, bright and windy; driven by the pull from the leaves."),
    ])


# ── chapter 7 ───────────────────────────────────────────────────────────────
def ch07_heart():
    fig, ax = plt.subplots(figsize=(6.6, 4.1))
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 6.55)
    ax.axis("off")

    # heart outline
    ax.add_patch(FancyBboxPatch((3.0, 0.9), 4.0, 4.4, boxstyle="round,pad=0.06,rounding_size=0.55",
                                facecolor="#FFF1F2", edgecolor=RED, lw=1.8, zorder=2))
    ax.plot([5.0, 5.0], [1.0, 5.2], color=RED, lw=1.6, ls=(0, (5, 3)), zorder=3)
    # chambers: viewer's LEFT = organ's RIGHT
    ax.add_patch(FancyBboxPatch((3.25, 3.35), 1.5, 1.6, boxstyle="round,pad=0.03,rounding_size=0.25",
                                facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.4, zorder=3))
    ax.add_patch(FancyBboxPatch((3.25, 1.35), 1.5, 1.6, boxstyle="round,pad=0.03,rounding_size=0.25",
                                facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.4, zorder=3))
    ax.add_patch(FancyBboxPatch((5.25, 3.35), 1.5, 1.6, boxstyle="round,pad=0.03,rounding_size=0.25",
                                facecolor=RED_LIGHT, edgecolor=RED, lw=1.4, zorder=3))
    ax.add_patch(FancyBboxPatch((5.25, 1.35), 1.5, 1.6, boxstyle="round,pad=0.03,rounding_size=0.25",
                                facecolor=RED_LIGHT, edgecolor=RED, lw=2.4, zorder=3))
    ax.text(4.0, 4.15, "Right atrium\n(deoxygenated)", ha="center", va="center", fontsize=7.6, color=NAVY, zorder=5)
    ax.text(4.0, 2.15, "Right\nventricle", ha="center", va="center", fontsize=7.8, color=NAVY, zorder=5)
    ax.text(6.0, 4.15, "Left atrium\n(oxygenated)", ha="center", va="center", fontsize=7.6, color=NAVY, zorder=5)
    ax.text(6.0, 2.15, "Left\nventricle", ha="center", va="center", fontsize=7.8, color=NAVY, zorder=5)
    ax.text(6.0, 1.42, "thick wall", ha="center", fontsize=6.2, color=RED, zorder=5)

    # aorta arch
    ax.add_patch(Arc((5.9, 5.3), 2.3, 1.7, theta1=0, theta2=185, color=RED, lw=5.0, zorder=4))
    ax.annotate("", xy=(7.6, 4.75), xytext=(7.6, 5.5), arrowprops=dict(arrowstyle="->", color=RED, lw=1.4))
    ax.text(9.55, 5.35, "aorta → body", fontsize=8.2, color=RED, ha="right")
    # vena cava
    ax.plot([3.75, 3.75], [4.95, 5.75], color=BLUE, lw=5.0, zorder=4)
    ax.plot([2.45, 3.55], [5.75, 5.75], color=BLUE, lw=5.0, zorder=4)
    ax.annotate("", xy=(3.9, 5.05), xytext=(3.9, 5.5), arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.4))
    ax.text(0.1, 5.85, "vena cava\nfrom body", fontsize=8.2, color=BLUE)
    # pulmonary artery
    ax.annotate("", xy=(1.15, 3.4), xytext=(3.6, 2.6),
                arrowprops=dict(arrowstyle="->", color=BLUE, lw=3.0, shrinkA=0, shrinkB=0), zorder=1)
    ax.text(0.1, 3.5, "pulmonary artery\n→ lungs", fontsize=8.2, color=BLUE)
    # pulmonary vein
    ax.annotate("", xy=(5.55, 3.7), xytext=(1.35, 1.75),
                arrowprops=dict(arrowstyle="->", color=RED, lw=3.0, shrinkA=0, shrinkB=0), zorder=1)
    ax.text(0.1, 1.6, "pulmonary veins\n← lungs", fontsize=8.2, color=RED)
    # valves
    for x in (4.15, 5.85):
        ax.add_patch(Polygon([[x - 0.14, 3.28], [x + 0.14, 3.28], [x, 2.98]], closed=True,
                             facecolor=NAVY, edgecolor=NAVY, zorder=5))
    _label(ax, "tricuspid valve", (4.15, 3.05), (3.05, 0.62))
    _label(ax, "bicuspid valve", (5.85, 3.05), (7.6, 0.62))
    ax.text(5.0, 6.34, "Right side: deoxygenated   •   Left side: oxygenated",
            ha="center", fontsize=8.4, color=SLATE)
    save(fig, "ch07_heart.svg")


def ch07_circulation():
    w, h = 760, 252
    b = [t(380, 20, "DOUBLE CIRCULATION — FOLLOW ONE DROP OF BLOOD", size=12.2, weight="bold")]
    steps = [
        ("VENa CAva", "from the body", BLUE),
        ("RIGHT ATRIUM", "tricuspid valve", BLUE),
        ("RIGHT VENTRICLE", "semilunar valve", BLUE),
        ("LUNGS", "gas exchange", BLUE),
        ("LEFT ATRIUM", "bicuspid valve", RED),
        ("LEFT VENTRICLE", "semilunar valve", RED),
        ("AORTA", "to the body", RED),
    ]
    steps = [("VENA CAVA", s, c) for (_, s, c) in steps[:1]] + steps[1:]
    x = 20
    for i, (name, sub, col) in enumerate(steps):
        b.append(rect(x, 48, 92, 66, "#FFFFFF", col, 6, 1.4))
        b.append(rect(x, 48, 92, 20, col, col, 6, 0))
        b.append(t(x + 46, 62, name, size=7.4, weight="bold", fill="#FFFFFF"))
        b.append(t(x + 46, 94, sub, size=6.8, fill=SLATE))
        if i < len(steps) - 1:
            b.append(arrow(x + 92, 81, x + 104, 81, color=MUTED, sw=1.3))
        x += 106
    b.append(rect(20, 140, 348, 86, BLUE_LIGHT, BLUE, 8, 1.2))
    b.append(t(194, 162, "Pulmonary circuit (right heart)", size=9.2, weight="bold", fill=BLUE))
    b.append(t(36, 184, "Deoxygenated blood: heart → lungs → heart.", size=8.4, fill=NAVY, anchor="start"))
    b.append(t(36, 202, "Low pressure protects the delicate lungs.", size=8, fill=SLATE, anchor="start"))
    b.append(rect(392, 140, 348, 86, RED_LIGHT, "#FCA5A5", 8, 1.2))
    b.append(t(566, 162, "Systemic circuit (left heart)", size=9.2, weight="bold", fill=RED))
    b.append(t(408, 184, "Oxygenated blood: heart → body → heart.", size=8.4, fill=NAVY, anchor="start"))
    b.append(t(408, 202, "High pressure reaches fingers, toes, brain.", size=8, fill=SLATE, anchor="start"))
    b.append(t(380, 244, "One complete circuit passes through the heart TWICE. The pulmonary artery is the only artery with deoxygenated blood; the pulmonary vein, the only vein with oxygenated blood.",
               size=7.6, fill=MUTED))
    write_svg("ch07_circulation.svg", svg(w, h, "\n".join(b)))


def recap_ch07():
    recap_card("recap_ch07.svg", "Chapter 7 recap card — transport in animals", [
        ("Blood", "Plasma carries the cargo; red cells carry oxygen; white cells defend; platelets clot."),
        ("Vessels", "Artery = thick wall, away. Vein = thin wall, valves, back. Capillary = one cell, exchange."),
        ("Heart", "Right deoxygenated, left oxygenated; vena cava in, aorta out; valves stop backflow."),
        ("Lymph", "Overflow tissue fluid, returned without a pump; lacteals absorb fats; nodes filter."),
    ])


# ── chapter 8 ───────────────────────────────────────────────────────────────
def ch08_alveolus():
    fig, ax = plt.subplots(figsize=(6.6, 3.4))
    ax.set_xlim(0, 9)
    ax.set_ylim(0, 5.0)
    ax.axis("off")
    # alveolus
    ax.add_patch(Wedge((4.5, 1.0), 2.2, 20, 160, facecolor="#FFF7ED", edgecolor=AMBER, lw=1.8, zorder=2))
    ax.add_patch(Wedge((4.5, 1.0), 2.2, 20, 160, facecolor="none", edgecolor=AMBER, lw=4.5, alpha=0.25, zorder=1))
    ax.text(4.5, 1.45, "air space", fontsize=8.4, color=AMBER, ha="center")
    # capillary hugging the wall
    for i, x in enumerate([3.05, 3.85, 4.65]):
        ax.add_patch(Circle((x + 0.4 * i, 3.28 - 0.08 * abs(i - 1)), 0.30, facecolor=RED, edgecolor="#991B1B", lw=1.0, zorder=4))
    ax.plot([(3.05 + 0.4 * i) for i in range(3)], [3.28 - 0.08 * abs(i - 1) for i in range(3)],
            color="#991B1B", lw=3.4, zorder=3, solid_capstyle="round")
    ax.annotate("", xy=(5.6, 4.3), xytext=(5.6, 3.55), arrowprops=dict(arrowstyle="->", color="#991B1B", lw=1.6))
    ax.text(5.75, 3.95, "capillary: blood flows\nunder the alveolar wall", fontsize=7.6, color="#991B1B")
    # diffusion arrows
    for (x0, y0, dx, dy, col, lab, lx, ly) in [
        (3.6, 2.05, 0.2, 1.0, GREEN, "O₂ → blood", 2.4, 4.6),
        (5.0, 3.0, -0.2, -1.0, BLUE, "CO₂ → air", 6.9, 4.6)]:
        ax.annotate("", xy=(x0 + dx, y0 + dy), xytext=(x0, y0),
                    arrowprops=dict(arrowstyle="->", color=col, lw=2.0))
        ax.text(lx, ly, lab, fontsize=8.6, color=col, ha="center", fontweight="bold")
    ax.text(4.5, 4.85, "The exchange surface: one cell thick, moist, richly supplied with blood.",
            ha="center", fontsize=8.6, color=NAVY, fontweight="bold")
    ax.text(4.5, 0.35, "≈ 300 million alveoli in two lungs give ~70 m² of surface — about a badminton court.",
            ha="center", fontsize=7.6, color=MUTED)
    for (x, y) in ((1.0, 4.3), (0.6, 3.4), (1.3, 3.7)):
        ax.add_patch(Circle((x, y), 0.09, facecolor=GREEN, edgecolor="none"))
    ax.text(0.65, 2.6, "inhaled air:\nrich in O₂", fontsize=7.2, color=GREEN, ha="center")
    for (x, y) in ((8.0, 2.3), (8.35, 2.9), (7.75, 3.3)):
        ax.add_patch(Circle((x, y), 0.09, facecolor=BLUE, edgecolor="none"))
    ax.text(8.05, 1.7, "exhaled air:\nrich in CO₂", fontsize=7.2, color=BLUE, ha="center")
    save(fig, "ch08_alveolus.svg")


def ch08_lungs():
    fig, ax = plt.subplots(figsize=(6.8, 3.9))
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 5.9)
    ax.axis("off")
    # trachea
    ax.add_patch(Rectangle((4.6, 4.15), 0.8, 1.5, facecolor="#F1F5F9", edgecolor=SLATE, lw=1.6, zorder=3))
    for y in (4.32, 4.58, 4.84, 5.1, 5.36):
        ax.plot([4.6, 5.4], [y, y], color=SLATE, lw=0.7, zorder=4)
    # bronchi
    ax.plot([4.62, 3.6], [4.2, 3.3], color=SLATE, lw=6.0, solid_capstyle="round", zorder=3)
    ax.plot([5.38, 6.4], [4.2, 3.3], color=SLATE, lw=6.0, solid_capstyle="round", zorder=3)
    # bronchioles
    for bx, dr in ((3.6, -1), (6.4, 1)):
        for dy, fy in ((0.5, 0.65), (0.0, 0.15), (-0.45, -0.3)):
            ax.plot([bx, bx + dr * 0.9], [3.3 + dy, 3.3 + dy + fy], color=SLATE, lw=2.6,
                    solid_capstyle="round", zorder=3)
            ax.plot([bx + dr * 0.9, bx + dr * 1.35], [3.3 + dy + fy, 3.3 + dy + fy + 0.18], color=SLATE, lw=1.4, zorder=3)
    # alveoli clusters
    for cx, cy in ((2.2, 4.35), (2.35, 3.3), (2.25, 2.65), (7.6, 4.35), (7.45, 3.3), (7.55, 2.65)):
        for k in range(6):
            ax.add_patch(Circle((cx + 0.16 * (k % 3), cy + 0.14 * (k // 3)), 0.085,
                                facecolor=AMBER_LIGHT, edgecolor=AMBER, lw=0.7, zorder=4))
    # lungs outline
    for cx in (2.9, 7.1):
        ax.add_patch(Ellipse((cx, 2.9), 3.3, 4.4, facecolor="none", edgecolor="#FCA5A5", lw=1.7, zorder=2))
    # diaphragm
    x = [1.2 + 0.1 * i for i in range(77)]
    y = [0.95 + 0.25 * (1 - ((xx - 5.0) / 3.85) ** 2) for xx in x]
    ax.plot(x, y, color=PURPLE, lw=3.0, zorder=5)
    ax.text(5.0, 0.42, "diaphragm — contracts and flattens on inhalation",
            ha="center", fontsize=7.8, color=PURPLE)
    _label(ax, "nose and\ntrachea", (5.0, 5.3), (7.35, 5.35))
    _label(ax, "bronchus", (4.15, 3.75), (0.85, 5.1))
    _label(ax, "bronchiole", (6.9, 3.75), (9.1, 5.0))
    _label(ax, "alveoli\n(gas exchange)", (2.35, 3.45), (0.9, 2.5))
    _label(ax, "lungs surrounded by\nribs (intercostal muscles)", (4.4, 1.85), (3.0, 1.35))
    ax.text(5.0, 5.85, "Inhalation: ribs up and out, diaphragm down → volume rises → pressure falls → air flows in",
            ha="center", fontsize=8.0, color=NAVY, fontweight="bold")
    save(fig, "ch08_lungs.svg")


def recap_ch08():
    recap_card("recap_ch08.svg", "Chapter 8 recap card — respiration and gas exchange", [
        ("Aerobic", "Glucose + oxygen → CO₂ + water + ~36 ATP; the everyday route."),
        ("Anaerobic in muscle", "Glucose → lactic acid + ~2 ATP; brief, builds an oxygen debt."),
        ("Anaerobic in yeast", "Glucose → ethanol + CO₂ + ~2 ATP; fermentation."),
        ("Breathing", "Ribs and diaphragm change volume and pressure; keeps alveolar gradients steep."),
    ])


# ── chapter 9 ───────────────────────────────────────────────────────────────
def ch09_kidney():
    import numpy as np
    fig, ax = plt.subplots(figsize=(6.3, 3.8))
    ax.set_xlim(0, 8.4)
    ax.set_ylim(0, 5.8)
    ax.axis("off")

    # bean outline: circle with a dent on the right (the hilum)
    th = np.linspace(0, 2 * np.pi, 400)
    cx, cy, r = 4.3, 3.1, 2.25
    dent = 1.15 * np.exp(-((th) ** 2) / 0.30)          # dent centred at th = 0 (pointing right/+x)
    rr = r * (1 - dent.clip(max=0.42))
    xs = cx + rr * np.cos(th)
    ys = cy + 0.92 * rr * np.sin(th)
    ax.plot(xs, ys, color=RED, lw=2.0, zorder=3)
    ax.fill(xs, ys, facecolor=RED_LIGHT, edgecolor="none", zorder=1)
    rr2 = rr * 0.82
    xs2 = cx + rr2 * np.cos(th)
    ys2 = cy + 0.94 * rr2 * np.sin(th)
    ax.fill(xs2, ys2, facecolor="#FECACA", edgecolor="none", zorder=2)
    # pelvis at the hilum (right side)
    hx, hy = 6.35, 3.1
    ax.add_patch(Polygon([[5.9, 3.7], [6.35, 4.0], [6.6, 3.35], [6.6, 2.85], [6.35, 2.2], [5.9, 2.5]],
                         closed=True, facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.6, zorder=5))
    ax.add_patch(Rectangle((6.35, 1.15), 0.34, 1.25, facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.3, zorder=5))
    # medulla pyramids: tips point at the pelvis
    for (tx, ty) in ((3.0, 4.35), (4.2, 4.75), (5.15, 4.15), (5.35, 2.15), (4.1, 1.55), (2.9, 1.9)):
        dx, dy = hx - tx, hy - ty
        n = np.hypot(dx, dy)
        ux, uy = dx / n, dy / n
        px, py = -uy, ux
        tipx, tipy = tx + ux * 0.55, ty + uy * 0.55
        ax.add_patch(Polygon([[tx + 0.42 * px, ty + 0.42 * py], [tx - 0.42 * px, ty - 0.42 * py], [tipx, tipy]],
                             closed=True, facecolor="#FCA5A5", edgecolor=RED, lw=0.9, zorder=4))
    # vessels above
    ax.plot([5.2, 6.9], [5.15, 5.15], color=RED, lw=3.8, zorder=4)
    ax.plot([5.2, 6.9], [5.5, 5.5], color=BLUE, lw=3.8, zorder=4)
    ax.text(8.0, 5.62, "renal artery\n(blood in)", fontsize=7.2, color=RED, ha="center")
    ax.text(8.0, 4.75, "renal vein\n(cleaned blood)", fontsize=7.2, color=BLUE, ha="center")

    _label(ax, "cortex\n(glomeruli here)", (2.9, 5.35), (1.3, 5.5))
    _label(ax, "medulla\n(loops of Henle)", (3.0, 4.4), (1.1, 4.2))
    _label(ax, "pelvis\n(urine collects)", (6.2, 3.2), (3.6, 1.05))
    _label(ax, "ureter → bladder", (6.55, 1.7), (7.6, 0.7))
    ax.text(1.6, 0.7, "Blood enters full of urea;\nthe nephrons filter it.",
            fontsize=7.6, color=MUTED, ha="left")
    save(fig, "ch09_kidney.svg")

def ch09_nephron():
    w, h = 780, 330
    b = [t(390, 20, "ONE NEPHRON — THE KIDNEY'S WORKING UNIT", size=12.4, weight="bold")]
    y0 = 56
    b.append(rect(20, y0, 300, 62, "#FFFFFF", BLUE, 7, 1.5))
    b.append(t(170, y0 + 18, "GLOMERULUS + BOWMAN'S CAPSULE", size=8.6, weight="bold", fill=BLUE))
    b.append(t(170, y0 + 38, "Ultrafiltration: pressure forces water, salts,", size=7.8, fill=SLATE))
    b.append(t(170, y0 + 52, "glucose and urea out of the blood.", size=7.8, fill=SLATE))
    b.append(arrow(324, y0 + 31, 362, y0 + 31, color=MUTED, sw=1.3))
    b.append(rect(366, y0, 258, 62, "#FFFFFF", GREEN, 7, 1.5))
    b.append(t(495, y0 + 18, "PROXIMAL TUBULE", size=8.6, weight="bold", fill=GREEN))
    b.append(t(495, y0 + 38, "Selective reabsorption: ALL glucose, most salts", size=7.8, fill=SLATE))
    b.append(t(495, y0 + 52, "and much water return to the blood here.", size=7.8, fill=SLATE))
    b.append(arrow(628, y0 + 31, 666, y0 + 31, color=MUTED, sw=1.3))
    b.append(rect(670, y0, 92, 62, "#FFFFFF", PURPLE, 7, 1.5))
    b.append(t(716, y0 + 22, "LOOP OF", size=8.4, weight="bold", fill=PURPLE))
    b.append(t(716, y0 + 36, "HENLE", size=8.4, weight="bold", fill=PURPLE))
    b.append(t(716, y0 + 52, "more water out", size=6.8, fill=SLATE))
    b.append(arrow(716, y0 + 66, 716, y0 + 96, color=MUTED, sw=1.3))
    y1 = 158
    b.append(rect(366, y1 + 44, 258, 62, "#FFFFFF", AMBER, 7, 1.5))
    b.append(t(495, y1 + 62, "DISTAL TUBULE", size=8.6, weight="bold", fill=AMBER))
    b.append(t(495, y1 + 82, "Reabsorption fine-tuned by hormones (ADH).", size=7.8, fill=SLATE))
    b.append(t(495, y1 + 96, "Adjusts salt and water to the body's needs.", size=7.8, fill=SLATE))
    b.append(arrow(716, y0 + 100, 716, y1 + 55, color=MUTED, sw=1.3))
    b.append(line(716, y1 + 55, 628, y1 + 74))
    b.append(arrow(362, y1 + 74, 320, y1 + 74, color=MUTED, sw=1.3))
    b.append(rect(20, y1 + 44, 296, 62, "#FFFFFF", RED, 7, 1.5))
    b.append(t(168, y1 + 62, "COLLECTING DUCT", size=8.6, weight="bold", fill=RED))
    b.append(t(168, y1 + 82, "ADH controls final water reabsorption here.", size=7.8, fill=SLATE))
    b.append(t(168, y1 + 96, "What is left = urine: water, urea, excess salts.", size=7.8, fill=SLATE))
    b.append(rect(20, y1 + 128, 742, 40, GREEN_LIGHT, GREEN_MID, 7, 1.1))
    b.append(t(390, y1 + 150, "Rule for every exam question: nothing useful is lost in urine — glucose, proteins and blood cells are never found in a healthy person's urine.",
               size=7.9, fill=NAVY))
    write_svg("ch09_nephron.svg", svg(w, h, "\n".join(b)))


def ch09_skin():
    fig, ax = plt.subplots(figsize=(6.8, 3.6))
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 5.4)
    ax.axis("off")
    ax.add_patch(Rectangle((0.5, 3.6), 9, 0.35, facecolor="#FDE68A", edgecolor=AMBER, lw=1.2, zorder=3))
    ax.add_patch(Rectangle((0.5, 1.7), 9, 1.9, facecolor="#FFF1F2", edgecolor="#FCA5A5", lw=1.2, zorder=2))
    ax.add_patch(Rectangle((0.5, 0.6), 9, 1.1, facecolor=AMBER_LIGHT, edgecolor=AMBER, lw=1.0, zorder=1))
    for i in range(9):
        for j in range(2):
            ax.add_patch(Ellipse((1.1 + i * 0.95, 0.85 + j * 0.55), 0.5, 0.34, facecolor="#FBBF24",
                                 edgecolor=AMBER, lw=0.6, zorder=1))
    # hair
    ax.plot([2.2, 2.55], [1.15, 4.6], color=f"#57534E", lw=2.6, zorder=4)
    ax.add_patch(Circle((2.2, 1.05), 0.22, facecolor=AMBER_LIGHT, edgecolor=AMBER, lw=1.2, zorder=4))
    # sweat gland coil
    ax.add_patch(Circle((6.4, 0.95), 0.34, facecolor="none", edgecolor=BLUE, lw=2.0, zorder=4))
    ax.add_patch(Circle((6.4, 0.95), 0.17, facecolor="none", edgecolor=BLUE, lw=1.4, zorder=4))
    ax.plot([6.4, 6.15, 6.35, 6.4], [1.28, 2.3, 3.2, 3.98], color=BLUE, lw=1.4, zorder=4)
    # blood vessels
    ax.plot([0.7, 9.4], [1.95, 1.95], color=RED, lw=1.8, zorder=3)
    ax.plot([0.7, 9.4], [1.72, 1.72], color=RED, lw=1.2, ls=(0, (4, 3)), zorder=3)
    _label(ax, "epidermis (protective\nouter layer)", (1.3, 3.78), (1.5, 5.05))
    _label(ax, "dermis", (4.6, 2.7), (4.6, 4.7))
    _label(ax, "hair + follicle", (2.55, 4.2), (4.0, 5.2))
    _label(ax, "sweat gland", (6.4, 0.95), (8.6, 0.55))
    _label(ax, "capillaries\n(vasodilate when hot)", (8.3, 1.95), (8.4, 3.05))
    _label(ax, "fat layer (insulation)", (3.4, 1.0), (3.4, 0.25))
    ax.text(5.0, 5.3, "The skin: a thermostat made of sweat, vessels, hair and fat.",
            ha="center", fontsize=9.2, color=NAVY, fontweight="bold")
    save(fig, "ch09_skin.svg")


def recap_ch09():
    recap_card("recap_ch09.svg", "Chapter 9 recap card — excretion and homeostasis", [
        ("Organs", "Kidneys → urea+salts+water; lungs → CO₂; skin → sweat; liver → bile pigments."),
        ("Nephron", "Glomerulus filters by pressure; tubules reabsorb everything useful."),
        ("Urine", "Never contains glucose or protein in a healthy person — both are reabsorbed."),
        ("Feedback", "Hypothalamus → pituitary → ADH → collecting duct permeability; correcting as it goes."),
    ])


# ── chapter 10 ──────────────────────────────────────────────────────────────
def ch10_skeleton():
    fig, ax = plt.subplots(figsize=(6.2, 4.6))
    ax.set_xlim(0, 9)
    ax.set_ylim(0, 6.6)
    ax.axis("off")
    cx = 4.1
    # skull
    ax.add_patch(Ellipse((cx, 5.72), 1.06, 0.92, facecolor="#FFF7ED", edgecolor=AMBER, lw=1.7, zorder=3))
    # spine
    ax.plot([cx, cx], [5.25, 3.4], color=AMBER, lw=5.5, zorder=2)
    for y in (5.05, 4.82, 4.59, 4.36, 4.13, 3.9, 3.67):
        ax.plot([cx - 0.16, cx + 0.16], [y, y], color=AMBER, lw=0.8, zorder=3)
    # ribs
    for i, w in enumerate((0.85, 1.15, 1.32, 1.3)):
        y = 4.72 - 0.42 * i
        ax.add_patch(Arc((cx, y + 0.16), 2 * w, 1.05, theta1=200, theta2=340,
                         color=AMBER, lw=1.6, zorder=3))
    ax.add_patch(Rectangle((cx - 0.1, 3.62), 0.2, 1.35, facecolor=AMBER, edgecolor="none", zorder=4))
    # pelvis
    ax.add_patch(Ellipse((cx, 3.18), 1.7, 0.62, facecolor="none", edgecolor=AMBER, lw=1.9, zorder=3))
    # arms
    for dx in (-1, 1):
        ax.plot([cx, cx + dx * 1.75], [4.85, 4.72], color=GREEN, lw=2.3, zorder=3)
        ax.plot([cx + dx * 1.75, cx + dx * 2.0], [4.72, 3.6], color=GREEN, lw=2.3, zorder=3)
        ax.plot([cx + dx * 2.0, cx + dx * 2.05], [3.6, 2.95], color=GREEN, lw=1.6, zorder=3)
    # legs
    for dx in (-1, 1):
        ax.plot([cx + dx * 0.45, cx + dx * 0.62], [3.18, 1.9], color=GREEN, lw=2.7, zorder=3)
        ax.plot([cx + dx * 0.62, cx + dx * 0.72], [1.9, 0.7], color=GREEN, lw=2.7, zorder=3)
        ax.plot([cx + dx * 0.72, cx + dx * 1.12], [0.7, 0.62], color=GREEN, lw=1.7, zorder=3)
    ax.text(cx, 6.45, "The human skeleton — axial (amber) and appendicular (green)",
            ha="center", fontsize=9.4, color=NAVY, fontweight="bold")
    _label(ax, "skull", (cx + 0.55, 5.85), (1.05, 6.25))
    _label(ax, "vertebral column\n(33 vertebrae)", (cx + 0.35, 4.4), (6.9, 5.5))
    _label(ax, "ribs + sternum", (cx - 1.05, 4.5), (1.15, 4.6))
    _label(ax, "humerus, radius, ulna", (cx - 1.9, 3.9), (1.15, 3.25))
    _label(ax, "pectoral girdle", (cx + 1.4, 4.85), (6.95, 6.2))
    _label(ax, "pelvic girdle", (cx + 0.85, 3.18), (6.6, 3.15))
    _label(ax, "femur, tibia, fibula", (cx + 0.72, 1.6), (7.0, 1.45))
    save(fig, "ch10_skeleton.svg")


def ch10_joints():
    w, h = 780, 262
    b = [t(390, 20, "FOUR MOVABLE JOINTS — AND THE MOVEMENT EACH ALLOWS", size=12.2, weight="bold")]
    data = [
        ("HINGE", "elbow, knee", "bends and straightens\nin ONE plane only", GREEN, "↕"),
        ("BALL-AND-SOCKET", "shoulder, hip", "movement in EVERY\ndirection — widest range", BLUE, "⟳"),
        ("PIVOT", "atlas–axis (neck)", "rotation — turning\nthe head left and right", PURPLE, "↻"),
        ("GLIDING", "wrist, ankle", "flat surfaces slide\nover one another", AMBER, "⇄"),
    ]
    x = 22
    for name, example, desc, col, glyph in data:
        b.append(rect(x, 44, 180, 172, "#FFFFFF", col, 8, 1.5))
        b.append(rect(x, 44, 180, 8, col, col, 4, 0))
        b.append(t(x + 90, 72, name, size=9.8, weight="bold", fill=col))
        b.append(t(x + 90, 118, glyph, size=34, weight="bold", fill=col))
        b.append(t(x + 90, 152, example, size=8.8, weight="bold", fill=NAVY))
        yy = 176
        for seg in desc.split("\n"):
            b.append(t(x + 90, yy, seg, size=7.6, fill=SLATE))
            yy += 15
        x += 188
    b.append(t(390, 240, "Also know the IMMOVABLE joints (skull sutures) and the SLIGHTLY-MOVABLE joints between vertebrae.",
               size=8.2, fill=MUTED))
    write_svg("ch10_joints.svg", svg(w, h, "\n".join(b)))


def ch10_muscles():
    fig, ax = plt.subplots(figsize=(6.8, 3.7))
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 5.5)
    ax.axis("off")

    def arm(ox, bent):
        bx, by = ox, 2.5          # shoulder
        ex, ey = (ox + 2.2, 2.5) if bent else (ox + 2.2, 2.05)  # elbow
        hx, hy = (ox + 3.5, 3.6) if bent else (ox + 4.2, 2.05)  # hand
        # bones
        ax.plot([bx, ex], [by, ey], color=AMBER, lw=4.6, solid_capstyle="round", zorder=3)
        ax.plot([ex, hx], [ey, hy], color=AMBER, lw=3.8, solid_capstyle="round", zorder=3)
        # biceps
        bx2y = ey + 0.55 if bent else ey + 0.42
        ax.plot([bx + 0.35, (bx + ex) / 2 + 0.55], [by + 0.18, bx2y], color=RED, lw=5.4 if bent else 2.4,
                solid_capstyle="round", zorder=4)
        ax.plot([(bx + ex) / 2 + 0.55, hx - 0.75], [bx2y, hy - 0.5], color=RED, lw=5.4 if bent else 2.4,
                solid_capstyle="round", zorder=4)
        # triceps
        tx2y = ey - 0.45 if not bent else ey - 0.5
        lw = 2.4 if bent else 5.4
        ax.plot([bx + 0.3, (bx + ex) / 2 + 0.62], [by - 0.16, tx2y], color=BLUE, lw=lw,
                solid_capstyle="round", zorder=4)
        ax.plot([(bx + ex) / 2 + 0.62, hx - 0.8], [tx2y, hy - 0.75], color=BLUE, lw=lw,
                solid_capstyle="round", zorder=4)
        ax.add_patch(Circle((ex, ey), 0.16, facecolor=NAVY, edgecolor=NAVY, zorder=5))
        return bx, by, ex, ey, hx, hy

    bx, by, ex, ey, hx, hy = arm(0.4, bent=True)
    ax.text(2.7, 4.9, "ELBOW BENDS", ha="center", fontsize=9.4, color=NAVY, fontweight="bold")
    ax.text(2.7, 4.55, "biceps contracts (thick, short)  •  triceps relaxes", ha="center", fontsize=7.8, color=SLATE)
    ax.annotate("", xy=(4.15, 4.15), xytext=(3.3, 3.35),
                arrowprops=dict(arrowstyle="->", color=RED, lw=1.8))
    ax.text(4.35, 4.0, "pull", fontsize=7.4, color=RED)

    bx, by, ex, ey, hx, hy = arm(5.2, bent=False)
    ax.text(7.6, 3.7, "ELBOW STRAIGHTENS", ha="center", fontsize=9.4, color=NAVY, fontweight="bold")
    ax.text(7.6, 3.35, "triceps contracts (thick, short)  •  biceps relaxes", ha="center", fontsize=7.8, color=SLATE)
    ax.annotate("", xy=(9.35, 1.55), xytext=(8.6, 1.1),
                arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.8))
    ax.text(9.5, 1.45, "push? no — still a pull", fontsize=7.2, color=BLUE, ha="right")

    ax.plot([0.4, 9.6], [0.55, 0.55], color=BORDER, lw=1.0)
    ax.text(5.0, 0.25, "Muscles can only PULL, never push. That is why they work in antagonistic pairs — one pulls one way, the other pulls back.",
            ha="center", fontsize=8.0, color=NAVY, fontweight="bold")
    ax.text(0.7, 2.15, "red = biceps", fontsize=7.4, color=RED)
    ax.text(0.7, 1.85, "blue = triceps", fontsize=7.4, color=BLUE)
    save(fig, "ch10_muscles.svg")


def recap_ch10():
    recap_card("recap_ch10.svg", "Chapter 10 recap card — support and movement", [
        ("Skeleton", "Supports, protects, gives levers, stores minerals, makes blood cells."),
        ("Joints", "Hinge (elbow), ball-and-socket (shoulder), pivot (neck), gliding (wrist)."),
        ("Muscles", "Only pull — so they work in antagonistic pairs like biceps and triceps."),
        ("Plants", "Turgor pressure, lignified xylem, collenchyma and sclerenchyma do the same job."),
    ])
