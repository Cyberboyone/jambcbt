"""Volume 1 diagrams — cell division, plant nutrition and animal nutrition."""

from __future__ import annotations

import numpy as np
import matplotlib.pyplot as plt
from matplotlib.patches import Circle, Ellipse, FancyBboxPatch, Polygon, Rectangle, Wedge

from common import (recap_card, OUT, GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE,
                    MUTED, BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE,
                    BLUE_LIGHT, PURPLE, PURPLE_LIGHT, write_svg, svg, t, lines,
                    rect, arrow, line, card, save)

plt.rcParams.update({"font.family": "DejaVu Sans"})


def _label(ax, text, xy, xytext, color=SLATE, size=7.4):
    ax.annotate(text, xy=xy, xytext=xytext, fontsize=size, color=color, ha="center",
                va="center",
                arrowprops=dict(arrowstyle="-", color=MUTED, lw=0.9, shrinkA=2, shrinkB=3))


# ── chapter 3: cell division ────────────────────────────────────────────────
def _cell(ax, cx, cy, w=1.5, h=1.5, fill="#FFFFFF"):
    ax.add_patch(Ellipse((cx, cy), w, h, facecolor=fill, edgecolor=SLATE, lw=1.3, zorder=2))


def _chromosome(ax, cx, cy, kind="x", colour=GREEN, s=1.0):
    """Draw a chromosome: 'x' = replicated (two chromatids), 'i' = single."""
    if kind == "dupli":
        ax.plot([cx - 0.10 * s, cx - 0.30 * s], [cy + 0.28 * s, cy - 0.30 * s], color=colour, lw=3.2,
                solid_capstyle="round", zorder=4)
        ax.plot([cx + 0.10 * s, cx + 0.30 * s], [cy + 0.30 * s, cy - 0.28 * s], color=colour, lw=3.2,
                solid_capstyle="round", zorder=4)
        ax.plot([cx - 0.05 * s, cx + 0.05 * s], [cy - 0.02 * s, cy + 0.02 * s], color=colour, lw=1.4, zorder=4)
    elif kind == "v":
        ax.plot([cx, cx - 0.28 * s], [cy - 0.25 * s, cy + 0.30 * s], color=colour, lw=3.2,
                solid_capstyle="round", zorder=4)
        ax.plot([cx, cx + 0.28 * s], [cy - 0.25 * s, cy + 0.30 * s], color=colour, lw=3.2,
                solid_capstyle="round", zorder=4)
    else:
        ax.plot([cx - 0.06 * s, cx + 0.06 * s], [cy + 0.28 * s, cy - 0.28 * s], color=colour, lw=3.4,
                solid_capstyle="round", zorder=4)


def ch03_mitosis():
    fig, ax = plt.subplots(figsize=(7.8, 3.5))
    ax.set_xlim(0, 12)
    ax.set_ylim(0.1, 5.2)
    ax.axis("off")

    stages = [
        ("INTERPHASE", "DNA replicates;\ncell grows"),
        ("PROPHASE", "Chromosomes\ncondense; nuclear\nmembrane breaks"),
        ("METAPHASE", "Chromosomes line\nup at the equator"),
        ("ANAPHASE", "Chromatids move\nto opposite poles"),
        ("TELOPHASE", "Two nuclei form;\ncytoplasm divides"),
    ]
    for i, (name, note) in enumerate(stages):
        cx = 1.35 + i * 2.35
        ax.text(cx, 4.75, name, ha="center", fontsize=8.6, color=NAVY, fontweight="bold")
        _cell(ax, cx, 3.0, 1.6, 1.7, "#FFFFFF" if i else "#F8FAFC")
        if i == 0:
            ax.add_patch(Circle((cx, 3.0), 0.30, facecolor=PURPLE_LIGHT, edgecolor=PURPLE, lw=1.2, zorder=3))
            ax.plot([cx - 0.25, cx + 0.25], [2.85, 3.15], color=GREEN, lw=1.6, zorder=4)
        elif i == 1:
            ax.add_patch(Circle((cx, 3.0), 0.34, facecolor="none", edgecolor=PURPLE, lw=1.0,
                                ls=(0, (3, 2)), zorder=3))
            for dx, dy in ((-0.20, 0.18), (0.16, 0.14), (-0.05, -0.20), (0.22, -0.22)):
                _chromosome(ax, cx + dx, 3.0 + dy, "dupli", GREEN, 0.55)
        elif i == 2:
            ax.plot([cx - 0.68, cx + 0.68], [2.62, 2.62], color=SLATE, lw=0.8, ls=(0, (2, 2)), zorder=3)
            for k in range(4):
                _chromosome(ax, cx - 0.45 + k * 0.30, 2.62, "dupli", GREEN, 0.5)
        elif i == 3:
            for k in range(4):
                _chromosome(ax, cx - 0.55 + k * 0.16, 3.35, "v", GREEN, 0.42)
                _chromosome(ax, cx + 0.20 + k * 0.16, 2.62, "v", BLUE, 0.42)
            ax.annotate("", xy=(cx - 0.72, 3.25), xytext=(cx - 0.15, 3.25),
                        arrowprops=dict(arrowstyle="->", color=MUTED, lw=1.0))
            ax.annotate("", xy=(cx + 0.72, 2.72), xytext=(cx + 0.15, 2.72),
                        arrowprops=dict(arrowstyle="->", color=MUTED, lw=1.0))
        else:
            for dx in (-0.38, 0.38):
                ax.add_patch(Circle((cx + dx, 3.0), 0.40, facecolor="none", edgecolor=PURPLE, lw=1.1, zorder=3))
                _chromosome(ax, cx + dx, 3.0, "i", GREEN, 0.55)
            ax.plot([cx, cx], [2.15, 2.35], color=SLATE, lw=1.2, zorder=4)
        ax.text(cx, 3.0 - 1.05, note, ha="center", va="top", fontsize=6.6, color=SLATE)
        if i < 4:
            ax.annotate("", xy=(cx + 1.02, 3.0), xytext=(cx + 0.82, 3.0),
                        arrowprops=dict(arrowstyle="-|>", color=GREEN, lw=1.3))
    ax.text(6.0, 0.35,
            "Mitosis: one cell in, two identical cells out — each with the same chromosome number as the parent.",
            ha="center", fontsize=8.4, color=MUTED)
    save(fig, "ch03_mitosis.svg")


def ch03_meiosis_compare():
    w, h = 760, 300
    b = [t(380, 24, "MITOSIS AND MEIOSIS SIDE BY SIDE", size=13, weight="bold", fill=NAVY),
         rect(20, 40, 350, 232, "#FFFFFF", GREEN, 8, 1.5),
         rect(390, 40, 350, 232, "#FFFFFF", PURPLE, 8, 1.5),
         f'<rect x="20" y="40" width="350" height="6" rx="3" fill="{GREEN}"/>',
         f'<rect x="390" y="40" width="350" height="6" rx="3" fill="{PURPLE}"/>',
         t(195, 66, "MITOSIS", size=12, weight="bold", fill=GREEN),
         t(565, 66, "MEIOSIS", size=12, weight="bold", fill=PURPLE)]

    rows_a = [("Where", "Body (somatic) cells"),
              ("Divisions", "One"),
              ("Products", "2 daughter cells"),
              ("Chromosome number", "Same as the parent (2n → 2n)"),
              ("Genetic result", "Identical to the parent"),
              ("Crossing over", "Does not occur"),
              ("Purpose", "Growth and repair; asexual reproduction")]
    rows_b = [("Where", "Reproductive organs (gonads)"),
              ("Divisions", "Two, one after the other"),
              ("Products", "4 gametes"),
              ("Chromosome number", "Halved (2n → n)"),
              ("Genetic result", "All four different from each other"),
              ("Crossing over", "Occurs in prophase I"),
              ("Purpose", "Formation of gametes; variation")]
    y = 84
    for (k1, v1), (k2, v2) in zip(rows_a, rows_b):
        b.append(t(30, y + 12, k1, size=8.4, weight="bold", fill=SLATE, anchor="start"))
        b.append(t(140, y + 12, v1, size=8.6, fill=NAVY, anchor="start"))
        b.append(t(400, y + 12, k2, size=8.4, weight="bold", fill=SLATE, anchor="start"))
        b.append(t(510, y + 12, v2, size=8.6, fill=NAVY, anchor="start"))
        y += 27
    b.append(t(380, 288, "The one-line difference: meiosis halves the chromosome number and shuffles the genes; mitosis copies them.",
                size=8.2, fill=MUTED))
    write_svg("ch03_meiosis_compare.svg", svg(w, h, "\n".join(b)))


def ch03_crossing_over():
    fig, ax = plt.subplots(figsize=(6.6, 2.7))
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 4)
    ax.axis("off")
    # homologous pair, each already replicated
    ax.plot([1.2, 8.8], [2.55, 2.55], color=BLUE, lw=5.0, solid_capstyle="round", zorder=2)
    ax.plot([1.2, 8.8], [1.55, 1.55], color=GREEN, lw=5.0, solid_capstyle="round", zorder=2)
    # crossover swap
    ax.plot([4.1, 5.9], [2.55, 2.55], color=GREEN, lw=5.0, solid_capstyle="butt", zorder=3)
    ax.plot([4.1, 5.9], [1.55, 1.55], color=BLUE, lw=5.0, solid_capstyle="butt", zorder=3)
    ax.plot([4.1, 4.1], [1.55, 2.55], color=SLATE, lw=1.0, ls=(0, (2, 2)), zorder=4)
    ax.plot([5.9, 5.9], [1.55, 2.55], color=SLATE, lw=1.0, ls=(0, (2, 2)), zorder=4)
    ax.annotate("chiasma — the point\nwhere the chromatids cross", xy=(4.1, 2.05), xytext=(2.4, 0.55),
                fontsize=8.2, color=RED, ha="center",
                arrowprops=dict(arrowstyle="->", color=RED, lw=1.1))
    ax.annotate("paternal chromatid", xy=(2.4, 2.62), xytext=(1.7, 3.55), fontsize=8.2, color=BLUE,
                arrowprops=dict(arrowstyle="-", color=MUTED, lw=0.9))
    ax.annotate("maternal chromatid", xy=(2.4, 1.48), xytext=(2.2, 0.55), fontsize=8.2, color=GREEN,
                arrowprops=dict(arrowstyle="-", color=MUTED, lw=0.9))
    ax.text(6.9, 3.5, "Crossing over in prophase I of meiosis", ha="center", fontsize=10,
            color=NAVY, fontweight="bold")
    ax.text(6.9, 3.05, "Sections of chromatid are exchanged, so each gamete\ncarries a new mixture of the parents' genes.",
            ha="center", fontsize=8.4, color=SLATE)
    ax.text(6.9, 0.55, "This is the main source of genetic variation.", ha="center",
            fontsize=8.4, color=MUTED)
    save(fig, "ch03_crossing_over.svg")


# ── chapter 4: photosynthesis ───────────────────────────────────────────────
def ch04_leaf():
    fig, ax = plt.subplots(figsize=(7.8, 4.2))
    ax.set_xlim(0, 12.4)
    ax.set_ylim(0, 5.4)
    ax.axis("off")

    L, R = 3.4, 8.9          # leaf body
    # upper epidermis
    ax.add_patch(Rectangle((L, 4.15), R - L, 0.30, facecolor="#FEF3C7", edgecolor=AMBER, lw=1.2, zorder=2))
    # palisade
    for k in range(7):
        ax.add_patch(FancyBboxPatch((L + 0.14 + k * 0.755, 3.24), 0.44, 0.78,
                                    boxstyle="round,pad=0.02,rounding_size=0.08",
                                    facecolor=GREEN_MID, edgecolor=GREEN, lw=1.1, zorder=3))
        ax.add_patch(Circle((L + 0.36 + k * 0.755, 3.80), 0.10, facecolor="#FFFFFF",
                            edgecolor=GREEN, lw=0.8, zorder=4))
    # spongy mesophyll
    rng = np.random.default_rng(3)
    for k in range(14):
        cx = L + 0.30 + (k % 7) * 0.755 + rng.uniform(-0.05, 0.05)
        cy = 2.62 - (k // 7) * 0.66 + rng.uniform(-0.04, 0.04)
        ax.add_patch(Circle((cx, cy), 0.24, facecolor="#DCFCE7", edgecolor=GREEN, lw=1.0, zorder=3))
    # lower epidermis
    ax.add_patch(Rectangle((L, 1.30), R - L, 0.26, facecolor="#FEF3C7", edgecolor=AMBER, lw=1.2, zorder=4))
    # stomata
    for sx in (L + 1.3, R - 1.4):
        ax.add_patch(Ellipse((sx, 1.43), 0.52, 0.28, facecolor="#FFFFFF", edgecolor=SLATE, lw=1.2, zorder=5))
        ax.add_patch(Ellipse((sx, 1.43), 0.28, 0.18, facecolor="#E2E8F0", edgecolor=SLATE, lw=0.8, zorder=6))
    # vein
    ax.add_patch(Ellipse((6.15, 1.95), 1.55, 0.60, facecolor=RED_LIGHT, edgecolor=RED, lw=1.3, zorder=3))
    ax.add_patch(Ellipse((6.15, 1.95), 1.05, 0.32, facecolor="#FFFFFF", edgecolor=RED, lw=0.9, zorder=4))
    # cuticle
    ax.plot([L, R], [4.49, 4.49], color=BLUE, lw=2.2, zorder=3)

    ax.text(6.15, 5.22, "Vertical section through a leaf", ha="center", fontsize=10.4,
            color=NAVY, fontweight="bold")

    # left-hand labels
    for (tx, ty, xy, txt) in [
        (1.60, 4.62, (3.6, 4.49), "Waxy cuticle —\ntransparent and waterproof"),
        (1.60, 3.95, (3.55, 4.28), "Upper epidermis —\ntransparent, lets light through"),
        (1.60, 2.35, (3.9, 1.92), "Vascular bundle (vein) —\nxylem brings water,\nphloem takes sugar away"),
    ]:
        ax.annotate(txt, xy=xy, xytext=(tx, ty), fontsize=7.2, color=SLATE, ha="center", va="center",
                    arrowprops=dict(arrowstyle="-", color=MUTED, lw=0.9, shrinkA=2, shrinkB=3))

    # right-hand labels
    for (tx, ty, xy, txt) in [
        (11.15, 3.75, (8.35, 3.60), "Palisade mesophyll —\nmain photosynthetic layer"),
        (11.15, 2.55, (8.75, 2.55), "Spongy mesophyll —\nair spaces for gas flow"),
        (11.15, 1.42, (8.75, 1.43), "Stoma — a guarded\nopening for gas exchange"),
    ]:
        ax.annotate(txt, xy=xy, xytext=(tx, ty), fontsize=7.2, color=SLATE, ha="center", va="center",
                    arrowprops=dict(arrowstyle="-", color=MUTED, lw=0.9, shrinkA=2, shrinkB=3))

    ax.text(6.15, 0.55, "Palisade cells are packed with chloroplasts and sit nearest the light; the air spaces of the spongy layer let carbon dioxide reach them.",
            ha="center", fontsize=7.6, color=MUTED)
    save(fig, "ch04_leaf.svg")


def ch04_photosynthesis():
    w, h = 760, 300
    b = [t(380, 24, "PHOTOSYNTHESIS — WHAT GOES IN, WHAT COMES OUT", size=13, weight="bold", fill=NAVY),
         rect(24, 60, 168, 76, GREEN_LIGHT, GREEN, 8, 1.5),
         rect(24, 156, 168, 76, BLUE_LIGHT, BLUE, 8, 1.5),
         rect(300, 92, 176, 112, "#FFFFFF", GREEN, 9, 1.8),
         rect(566, 60, 170, 76, GREEN_LIGHT, GREEN_BRIGHT, 8, 1.5),
         rect(566, 156, 170, 76, AMBER_LIGHT, AMBER, 8, 1.5),
         t(108, 88, "RAW MATERIALS", size=8.6, weight="bold", fill=GREEN),
         t(108, 108, "Carbon dioxide", size=9.6, fill=NAVY),
         t(108, 124, "from the air, through stomata", size=7.6, fill=MUTED),
         t(108, 184, "Water", size=9.6, fill=NAVY),
         t(108, 200, "from the soil, by the roots", size=7.6, fill=MUTED),
         t(388, 120, "6CO₂ + 6H₂O", size=11.4, weight="bold", fill=NAVY),
         t(388, 146, "chlorophyll + light", size=8.6, fill=GREEN),
         t(388, 172, "C₆H₁₂O₆ + 6O₂", size=11.4, weight="bold", fill=NAVY),
         t(388, 192, "glucose + oxygen", size=7.8, fill=MUTED),
         t(651, 88, "PRODUCTS", size=8.6, weight="bold", fill=GREEN_BRIGHT),
         t(651, 110, "Glucose (C₆H₁₂O₆)", size=9.6, fill=NAVY),
         t(651, 126, "used for energy, starch, cellulose", size=7.6, fill=MUTED),
         t(651, 184, "Oxygen", size=9.6, fill=NAVY),
         t(651, 200, "released through the stomata", size=7.6, fill=MUTED),
         arrow(196, 98, 296, 120, GREEN, 1.8),
         arrow(196, 194, 296, 172, BLUE, 1.8),
         arrow(480, 120, 562, 98, GREEN_BRIGHT, 1.8),
         arrow(480, 172, 562, 194, AMBER, 1.8),
         t(380, 250, "Light energy is trapped by chlorophyll and stored as chemical energy in glucose.",
           size=9, fill=SLATE),
         t(380, 272, "Where: the chloroplasts of the palisade mesophyll.  When: in daylight.  Raw materials: carbon dioxide and water.",
           size=8.2, fill=MUTED)]
    write_svg("ch04_photosynthesis.svg", svg(w, h, "\n".join(b)))


def ch04_limiting_factors():
    fig, axs = plt.subplots(1, 3, figsize=(7.8, 2.6))
    x = np.linspace(0, 10, 200)

    def curve(ax, xs, ys, xl, yl, title):
        ax.plot(xs, ys, color=GREEN, lw=2.2)
        ax.set_xlabel(xl, fontsize=8)
        ax.set_ylabel(yl, fontsize=8)
        ax.set_title(title, fontsize=9, color=NAVY, fontweight="bold")
        ax.tick_params(labelsize=7)
        for s in ("top", "right"):
            ax.spines[s].set_visible(False)
        ax.set_ylim(0, 1.15)
        ax.set_xlim(0, 10)

    curve(axs[0], x, 1 - np.exp(-x / 2.6), "Light intensity", "Rate of photosynthesis", "Light")
    xs = np.linspace(0.2, 10, 200)
    curve(axs[1], xs, 1 - np.exp(-xs / 3.2), "Carbon dioxide concentration", "", "CO₂")
    axs[2].plot([0, 10], [0.25, 1.0], color=BLUE, lw=2.2)
    axs[2].set_xlabel("Temperature (°C)", fontsize=8)
    axs[2].set_title("Temperature", fontsize=9, color=NAVY, fontweight="bold")
    axs[2].tick_params(labelsize=7)
    for s in ("top", "right"):
        axs[2].spines[s].set_visible(False)
    axs[2].set_xlim(0, 10)
    axs[2].set_ylim(0, 1.15)
    axs[2].annotate("enzymes\ndenature", xy=(8.6, 0.92), xytext=(5.4, 0.45), fontsize=7.4, color=RED,
                    arrowprops=dict(arrowstyle="->", color=RED, lw=1.0))
    fig.suptitle("The rate levels off when a factor becomes limiting", fontsize=10, color=NAVY)
    fig.tight_layout(rect=(0, 0, 1, 0.92))
    save(fig, "ch04_limiting_factors.svg")


# ── chapter 5: animal nutrition ─────────────────────────────────────────────
def ch05_alimentary():
    fig, ax = plt.subplots(figsize=(7.8, 4.6))
    ax.set_xlim(0, 12)
    ax.set_ylim(-0.2, 6.1)
    ax.axis("off")

    def seg(p0, p1, colour, lw=16):
        ax.plot([p0[0], p1[0]], [p0[1], p1[1]], color=SLATE, lw=lw, solid_capstyle="round", zorder=2)
        ax.plot([p0[0], p1[0]], [p0[1], p1[1]], color=colour, lw=lw - 2.4, solid_capstyle="round", zorder=3)

    def num(x, y, n, colour=GREEN):
        ax.add_patch(Circle((x, y), 0.17, facecolor=colour, edgecolor="white", lw=1.0, zorder=9))
        ax.text(x, y - 0.01, str(n), ha="center", va="center", fontsize=6.8, color="white",
                fontweight="bold", zorder=10)

    # 1 mouth, 2 oesophagus
    ax.add_patch(Ellipse((2.15, 5.75), 0.90, 0.38, facecolor="#FFFFFF", edgecolor=SLATE, lw=1.6, zorder=4))
    seg((2.15, 5.55), (2.15, 4.80), "#E0F2FE", 12)
    # 3 stomach
    ax.add_patch(FancyBboxPatch((1.55, 3.55), 1.20, 1.30, boxstyle="round,pad=0.02,rounding_size=0.52",
                                facecolor="#FFF7ED", edgecolor=AMBER, lw=1.8, zorder=4))
    # 4 duodenum
    seg((2.75, 3.85), (4.55, 3.72), "#FECDD3", 14)

    # small intestine inside the colonic frame
    runs = [
        [(4.40, 3.78), (5.60, 4.10), (6.80, 3.86), (8.10, 4.12), (8.55, 3.86)],
        [(8.55, 3.86), (8.30, 3.28), (7.05, 3.52), (5.80, 3.26), (4.55, 3.50), (4.32, 3.24)],
        [(4.32, 3.24), (4.62, 2.62), (5.90, 2.86), (7.15, 2.58), (8.30, 2.82), (8.55, 2.55)],
    ]
    for run in runs:
        for a, b in zip(run[:-1], run[1:]):
            seg(a, b, "#FECDD3", 15)

    # colon frame
    seg((8.95, 2.30), (8.95, 4.85), RED, 16)
    seg((8.95, 4.85), (4.00, 4.85), RED, 16)
    seg((4.00, 4.85), (4.00, 2.30), RED, 16)
    seg((4.00, 2.30), (4.00, 1.55), RED, 18)
    ax.add_patch(Circle((4.00, 1.32), 0.17, facecolor=RED_LIGHT, edgecolor=RED, lw=1.2, zorder=5))
    ax.add_patch(Circle((8.95, 2.15), 0.28, facecolor=RED_LIGHT, edgecolor=RED, lw=1.4, zorder=5))
    ax.plot([9.05, 9.30, 9.40], [1.95, 1.68, 1.80], color=RED, lw=3.0, zorder=4, solid_capstyle="round")

    # 9 liver, 10 gall bladder, 11 pancreas
    ax.add_patch(Polygon([[2.85, 5.05], [4.75, 5.30], [5.15, 4.75], [3.85, 4.42], [2.78, 4.62]],
                         closed=True, facecolor="#FCA5A5", edgecolor=RED, lw=1.3, alpha=0.8, zorder=3))
    ax.add_patch(Ellipse((4.72, 4.52), 0.34, 0.19, facecolor=GREEN_MID, edgecolor=GREEN, lw=1.1, zorder=6))
    ax.add_patch(Ellipse((5.55, 3.05), 0.80, 0.32, angle=-14, facecolor=AMBER_LIGHT, edgecolor=AMBER,
                         lw=1.3, zorder=6))

    num(2.15, 5.75, 1)
    num(2.15, 5.15, 2)
    num(1.90, 3.85, 3)
    num(3.40, 3.80, 4)
    num(6.55, 2.72, 5)
    num(8.95, 2.15, 6)
    num(8.95, 3.85, 7)
    num(4.00, 1.62, 8)
    num(3.72, 4.92, 9, RED)
    num(4.72, 4.30, 10, GREEN)
    num(5.55, 3.30, 11, AMBER)

    ax.text(6.0, 6.0, "The human alimentary canal", ha="center", fontsize=10.6,
            color=NAVY, fontweight="bold")

    ax.text(0.10, 0.72, "1  Mouth — teeth cut and grind; saliva contains amylase", fontsize=7.4, color=SLATE)
    ax.text(0.10, 0.46, "2  Oesophagus — peristalsis pushes food to the stomach", fontsize=7.4, color=SLATE)
    ax.text(0.10, 0.20, "3  Stomach — hydrochloric acid and pepsin digest protein", fontsize=7.4, color=SLATE)
    ax.text(0.10, -0.06, "4  Duodenum — bile (from the liver) and pancreatic juice", fontsize=7.4, color=SLATE)
    ax.text(6.10, 0.72, "5  Ileum — villi absorb the digested food", fontsize=7.4, color=SLATE)
    ax.text(6.10, 0.46, "6  Caecum and appendix — little function in humans", fontsize=7.4, color=SLATE)
    ax.text(6.10, 0.20, "7  Colon — absorbs water and mineral salts   8  Rectum — stores faeces", fontsize=7.4, color=SLATE)
    ax.text(6.10, -0.06, "9  Liver (makes bile)   10 Gall bladder (stores bile)   11 Pancreas", fontsize=7.4, color=SLATE)
    save(fig, "ch05_alimentary.svg")


def ch05_villus():
    fig, ax = plt.subplots(figsize=(6.8, 3.4))
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 5)
    ax.axis("off")
    # intestinal wall
    ax.add_patch(Rectangle((1.0, 0.6), 8.0, 3.4, facecolor="#F8FAFC", edgecolor=BORDER, lw=1.2, zorder=1))
    # villi (finger-like projections)
    for k in range(4):
        cx = 2.1 + k * 1.85
        ax.add_patch(FancyBboxPatch((cx - 0.42, 3.95), 0.84, 1.35, boxstyle="round,pad=0.02,rounding_size=0.42",
                                    facecolor="#FFFFFF", edgecolor=GREEN, lw=1.6, zorder=3))
        # lacteal
        ax.add_patch(Ellipse((cx, 4.2), 0.20, 0.62, facecolor=AMBER_LIGHT, edgecolor=AMBER, lw=1.0, zorder=4))
        # capillary network
        for dy in (0.12, -0.06, -0.24):
            ax.add_patch(Ellipse((cx, 4.55 + dy), 0.62, 0.13, facecolor=RED_LIGHT, edgecolor=RED, lw=0.8, zorder=4))
        # epithelial brush border
        for b in range(8):
            ax.plot([cx - 0.40 + b * 0.115, cx - 0.40 + b * 0.115], [5.30, 5.45], color=GREEN, lw=0.8, zorder=4)
    ax.text(5.0, 0.95, "Lining of the small intestine (ileum)", ha="center", fontsize=9.6, color=MUTED)
    ax.text(5.0, 4.95, "A villus: the absorbing unit of the ileum", ha="center", fontsize=10.2,
            color=NAVY, fontweight="bold")
    _label(ax, "Microvilli (brush border)\nincrease surface area", (4.0, 5.36), (7.95, 4.75))
    _label(ax, "Thin epithelium —\nshort diffusion distance", (2.55, 4.9), (8.9, 3.95))
    _label(ax, "Capillary network —\nabsorbs glucose and\namino acids", (3.1, 4.55), (8.6, 2.9))
    _label(ax, "Lacteal — absorbs\nfatty acids and glycerol", (3.95, 4.2), (1.1, 2.35))
    _label(ax, "Rich blood supply keeps\na steep diffusion gradient", (6.4, 4.4), (8.5, 1.6))
    save(fig, "ch05_villus.svg")


def ch05_dentition():
    w, h = 760, 230
    b = [t(380, 24, "DENTITION: HERBIVORE, CARNIVORE, OMNIVORE", size=12.6, weight="bold", fill=NAVY)]

    def tooth(x, y, kind, colour):
        if kind == "incisor":
            b.append(f'<rect x="{x - 9}" y="{y}" width="18" height="30" rx="4" fill="{colour}" stroke="{SLATE}" stroke-width="1.1"/>')
        elif kind == "canine":
            b.append(f'<polygon points="{x - 9},{y + 28} {x},{y - 6} {x + 9},{y + 28}" fill="{colour}" stroke="{SLATE}" stroke-width="1.1"/>')
        elif kind == "premolar":
            b.append(f'<path d="M {x - 11} {y + 30} L {x - 11} {y + 8} Q {x - 11} {y} {x - 4} {y} L {x + 4} {y} '
                     f'Q {x + 11} {y} {x + 11} {y + 8} L {x + 11} {y + 30} Z" fill="{colour}" stroke="{SLATE}" stroke-width="1.1"/>')
        else:
            b.append(f'<path d="M {x - 12} {y + 30} L {x - 12} {y + 6} Q {x - 12} {y - 4} {x - 3} {y - 4} L {x + 3} {y - 4} '
                     f'Q {x + 12} {y - 4} {x + 12} {y + 6} L {x + 12} {y + 30} Z" fill="{colour}" stroke="{SLATE}" stroke-width="1.1"/>')

    panels = [
        ("HERBIVORE (e.g. sheep, cow)", [("incisor", 3), ("premolar", 3)], GREEN,
         "No upper incisors (ruminants)\\nWide ridged molars for grinding\\nGap (diastema) after the incisors"),
        ("CARNIVORE (e.g. dog, cat)", [("canine", 2), ("premolar", 2)], RED,
         "Large pointed canines for tearing\\nSharp carnassial teeth shear flesh\\nJaws move up and down only"),
        ("OMNIVORE (e.g. human)", [("incisor", 2), ("canine", 1), ("premolar", 2), ("molar", 2)], BLUE,
         "All four types present\\nCutting, tearing and grinding\\nSecond dentition (milk → permanent)"),
    ]
    x0 = 20
    for title, seq, colour, note in panels:
        b.append(rect(x0, 40, 236, 154, "#FFFFFF", colour, 8, 1.4))
        b.append(f'<rect x="{x0}" y="40" width="236" height="5" rx="2.5" fill="{colour}"/>')
        b.append(t(x0 + 118, 60, title, size=8.6, weight="bold", fill=colour))
        tooth_x = x0 + 30
        for kind, count in seq:
            for _ in range(count):
                tooth(tooth_x, 76, kind, GREEN_MID if colour == GREEN else ("#FECACA" if colour == RED else BLUE_LIGHT))
                tooth_x += 30 if kind != "canine" else 26
            tooth_x += 6
        for i, ln in enumerate(note.split("\\n")):
            b.append(t(x0 + 118, 138 + i * 15, ln, size=7.8, fill=SLATE))
        x0 += 248
    b.append(t(380, 214, "Dental formula for an adult human: incisors 2/2, canines 1/1, premolars 2/2, molars 3/3 — 32 teeth in all.",
                size=8.2, fill=MUTED))
    write_svg("ch05_dentition.svg", svg(w, h, "\n".join(b)))


# ── recap cards for chapters 3–5 ────────────────────────────────────────────
def recap_cards_b():
    card_ = recap_card
    card_("recap_ch03.svg", "Chapter 3 recap card — cell division", [
        ("Mitosis", "Body cells; one division; two identical 2n cells; growth and repair."),
        ("Meiosis", "Gonads; two divisions; four n gametes; all genetically different."),
        ("Chromosome number", "Human body cell 46 (23 pairs); gamete 23; after fertilisation 46."),
        ("Variation", "Crossing over in prophase I and independent assortment in metaphase I."),
    ])
    card_("recap_ch04.svg", "Chapter 4 recap card — photosynthesis", [
        ("Equation", "6CO₂ + 6H₂O → C₆H₁₂O₆ + 6O₂, in the presence of light and chlorophyll."),
        ("Site", "Chloroplasts of the palisade mesophyll; light trapped by chlorophyll."),
        ("Leaf adaptations", "Thin, wide, transparent epidermis, air spaces, veins, stomata."),
        ("Limiting factors", "Light, carbon dioxide and temperature — each levels the rate off."),
    ])
    card_("recap_ch05.svg", "Chapter 5 recap card — animal nutrition", [
        ("Food classes", "Carbohydrates, proteins, fats, vitamins, minerals, water, roughage."),
        ("Enzymes", "Amylase → starch; protease → protein; lipase → fat. Name substrate and product."),
        ("Absorption", "Villi in the ileum: large area, thin wall, good blood supply, lacteal."),
        ("Teeth", "Herbivore grinding molars, carnivore canines, omnivore all four types."),
    ])
