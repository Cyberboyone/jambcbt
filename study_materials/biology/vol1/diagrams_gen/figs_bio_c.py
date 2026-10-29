"""Volume 1 diagrams — plant transport, animal transport, respiration,
excretion and support."""

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


# ── chapter 6: transport in plants ──────────────────────────────────────────
def ch06_transpiration():
    w, h = 760, 320
    b = [t(380, 24, "THE TRANSPIRATION PULL", size=13, weight="bold", fill=NAVY),
         # soil
         f'<rect x="0" y="270" width="760" height="50" fill="#FEF3C7"/>',
         t(380, 300, "SOIL — water enters the root hair by osmosis; mineral salts by active transport",
           size=8.6, fill=AMBER)]
    # root
    b.append(f'<path d="M 355 270 L 340 320 M 405 270 L 420 318 M 380 270 L 380 322" stroke="{AMBER}" '
             f'stroke-width="2.2" fill="none"/>')
    # stem outline
    b.append(rect(345, 120, 70, 152, "#F0FDF4", GREEN, 6, 1.6))
    # xylem (inner, dead, hollow)
    b.append(f'<rect x="368" y="120" width="10" height="152" fill="{RED}" opacity="0.85"/>')
    # phloem (outer)
    b.append(f'<rect x="382" y="120" width="8" height="152" fill="{BLUE}" opacity="0.85"/>')
    # leaves
    for (cx, cy, flip) in ((300, 96, -1), (460, 96, 1)):
        b.append(f'<ellipse cx="{cx}" cy="{cy}" rx="58" ry="26" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="1.6" '
                 f'transform="rotate({-18 * flip} {cx} {cy})"/>')
    b.append(f'<path d="M 380 120 L 300 96 M 380 120 L 460 96" stroke="{GREEN}" stroke-width="2.2"/>')
    # stomata arrows out of leaves
    b.append(arrow(352, 78, 318, 56, BLUE, 1.5, "an"))
    b.append(arrow(408, 78, 442, 56, BLUE, 1.5, "an"))
    b.append(t(300, 40, "water vapour lost", size=8.2, fill=BLUE))
    b.append(t(470, 40, "water vapour lost", size=8.2, fill=BLUE))
    b.append(t(380, 116, "", size=8))
    # labels
    b.append(t(368, 285, "xylem", size=8.2, weight="bold", fill=RED, anchor="end"))
    b.append(t(392, 285, "phloem", size=8.2, weight="bold", fill=BLUE, anchor="start"))
    b.append(t(560, 150, "Xylem: dead, hollow, lignified", size=8.8, weight="bold", fill=RED, anchor="start"))
    b.append(t(560, 168, "Water and mineral salts travel", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(560, 182, "UPWARDS only, from root to leaf,", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(560, 196, "pulled by transpiration.", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(560, 220, "Phloem: living cells with sieve", size=8.8, weight="bold", fill=BLUE, anchor="start"))
    b.append(t(560, 238, "plates; sugar and amino acids", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(560, 252, "travel UP and DOWN, from leaf", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(560, 266, "to root, by translocation.", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(120, 150, "Transpiration is the loss of", size=8.8, weight="bold", fill=NAVY, anchor="start"))
    b.append(t(120, 168, "water vapour from the leaves,", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(120, 182, "mostly through the stomata.", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(120, 206, "It pulls water up the xylem:", size=8.8, weight="bold", fill=NAVY, anchor="start"))
    b.append(t(120, 224, "transpiration pull.", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(120, 248, "Faster when: hot, dry, windy,", size=8.2, fill=SLATE, anchor="start"))
    b.append(t(120, 262, "bright — and when stomata open.", size=8.2, fill=SLATE, anchor="start"))
    write_svg("ch06_transpiration.svg", svg(w, h, "\n".join(b)))


def ch06_potometer():
    fig, ax = plt.subplots(figsize=(7.6, 3.2))
    ax.set_xlim(0, 11)
    ax.set_ylim(0, 4.6)
    ax.axis("off")
    # leafy shoot
    ax.plot([5.2, 5.2], [3.0, 4.35], color=GREEN, lw=2.6, zorder=3)
    for dx, dy in ((-0.55, 0.55), (0.55, 0.62), (-0.45, 0.95), (0.5, 1.05)):
        ax.add_patch(Ellipse((5.2 + dx, 2.95 + dy), 0.95, 0.42, angle=25 * np.sign(dx),
                             facecolor=GREEN_MID, edgecolor=GREEN, lw=1.1, zorder=4))
    # tubing (U shape)
    ax.plot([5.2, 5.2, 3.5, 3.5], [3.0, 2.3, 2.0, 1.2], color=SLATE, lw=7, solid_capstyle="round", zorder=2)
    ax.plot([5.2, 5.2, 3.5, 3.5], [3.0, 2.3, 2.0, 1.2], color="#FFFFFF", lw=4, solid_capstyle="round", zorder=3)
    ax.plot([3.5, 6.8], [1.2, 1.2], color=SLATE, lw=7, solid_capstyle="round", zorder=2)
    ax.plot([3.5, 6.8], [1.2, 1.2], color="#FFFFFF", lw=4, solid_capstyle="round", zorder=3)
    # water in the tube + air bubble
    ax.plot([3.5, 6.8], [1.35, 1.35], color=BLUE_LIGHT, lw=2.6, zorder=4)
    ax.add_patch(Circle((6.1, 1.2), 0.16, facecolor=GREEN_BRIGHT, edgecolor=SLATE, lw=1.0, zorder=5))
    # reservoir
    ax.add_patch(Rectangle((2.9, 0.55), 1.2, 0.75, facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.3, zorder=3))
    # scale
    for k in range(6):
        ax.plot([4.2 + k * 0.45, 4.2 + k * 0.45], [0.95, 1.12], color=SLATE, lw=1.0, zorder=5)
        ax.text(4.2 + k * 0.45, 0.78, str(k), fontsize=6.6, ha="center", color=MUTED)

    ax.text(5.4, 4.5, "A potometer measures the rate of water uptake — an estimate of transpiration",
            ha="center", fontsize=9.6, color=NAVY, fontweight="bold")
    _label(ax, "Leafy shoot (cut under water\nto avoid an air lock)", (5.2, 4.3), (8.3, 4.15))
    _label(ax, "Air bubble — moves along\nthe graduated tube", (6.1, 1.2), (8.6, 1.55))
    _label(ax, "Graduated capillary tube", (5.6, 1.35), (8.2, 0.6))
    _label(ax, "Reservoir of water", (3.5, 0.9), (2.1, 0.55))
    ax.text(1.3, 3.4, "Rate = distance the bubble\nmoves ÷ time taken", fontsize=8.4, color=SLATE)
    ax.text(1.3, 2.7, "Change one factor — light,\nwind, humidity, temperature —\nand the rate tells you its effect.",
            fontsize=8.0, color=MUTED)
    save(fig, "ch06_potometer.svg")


# ── chapter 7: transport in animals ─────────────────────────────────────────
def ch07_heart():
    fig, ax = plt.subplots(figsize=(7.6, 4.5))
    ax.set_xlim(0, 12)
    ax.set_ylim(-0.1, 6.2)
    ax.axis("off")

    def num(x, y, n, colour=GREEN):
        ax.add_patch(Circle((x, y), 0.17, facecolor=colour, edgecolor="white", lw=1.0, zorder=9))
        ax.text(x, y - 0.01, str(n), ha="center", va="center", fontsize=6.8, color="white",
                fontweight="bold", zorder=10)

    # heart outline
    pts = [[5.0, 5.55], [6.55, 5.45], [7.35, 4.75], [7.35, 3.35], [6.75, 1.95], [5.75, 1.05],
           [5.0, 0.80], [4.25, 1.05], [3.25, 1.95], [2.65, 3.35], [2.65, 4.75], [3.45, 5.45]]
    ax.add_patch(Polygon(pts, closed=True, facecolor="#FFF1F2", edgecolor=RED, lw=2.0, zorder=2))
    # chambers
    ax.add_patch(Ellipse((3.85, 4.55), 1.65, 1.30, facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.2, zorder=3))
    ax.add_patch(Ellipse((6.15, 4.55), 1.65, 1.30, facecolor=RED_LIGHT, edgecolor=RED, lw=1.2, zorder=3))
    ax.add_patch(Ellipse((3.90, 2.65), 2.00, 2.55, facecolor="#DBEAFE", edgecolor=BLUE, lw=1.4, zorder=3))
    ax.add_patch(Ellipse((6.10, 2.55), 2.10, 2.85, facecolor="#FEE2E2", edgecolor=RED, lw=1.4, zorder=3))
    # septum
    ax.plot([5.0, 5.0], [5.45, 0.95], color=RED, lw=2.0, zorder=5)
    # valves
    for vx in (3.90, 6.10):
        ax.plot([vx - 0.30, vx, vx + 0.30], [3.90, 4.16, 3.90], color=SLATE, lw=1.5, zorder=6)

    # great vessels as coloured arrows
    ax.annotate("", xy=(1.35, 5.55), xytext=(3.35, 5.05),
                arrowprops=dict(arrowstyle="-|>", color=BLUE, lw=3.2, shrinkA=0, shrinkB=0))
    ax.annotate("", xy=(3.55, 6.02), xytext=(4.35, 5.30),
                arrowprops=dict(arrowstyle="-|>", color=BLUE, lw=2.8, shrinkA=0, shrinkB=0))
    ax.annotate("", xy=(7.10, 6.02), xytext=(6.35, 5.25),
                arrowprops=dict(arrowstyle="-|>", color=RED, lw=3.4, shrinkA=0, shrinkB=0))
    ax.annotate("", xy=(7.15, 4.62), xytext=(8.85, 4.95),
                arrowprops=dict(arrowstyle="-|>", color=RED, lw=3.0, shrinkA=0, shrinkB=0))
    ax.annotate("", xy=(8.65, 1.45), xytext=(6.70, 1.85),
                arrowprops=dict(arrowstyle="-|>", color=RED, lw=2.6, shrinkA=0, shrinkB=0))
    ax.text(9.35, 1.25, "aorta", fontsize=7.2, color=RED)

    ax.text(3.85, 4.55, "RIGHT\nATRIUM", ha="center", va="center", fontsize=7.8, color=NAVY,
            fontweight="bold", zorder=7)
    ax.text(6.15, 4.55, "LEFT\nATRIUM", ha="center", va="center", fontsize=7.8, color=NAVY,
            fontweight="bold", zorder=7)
    ax.text(3.85, 2.55, "RIGHT\nVENTRICLE", ha="center", va="center", fontsize=7.8, color=NAVY,
            fontweight="bold", zorder=7)
    ax.text(6.20, 2.45, "LEFT\nVENTRICLE", ha="center", va="center", fontsize=7.8, color=NAVY,
            fontweight="bold", zorder=7)

    num(1.55, 5.42, 1)
    num(3.62, 5.82, 2)
    num(6.95, 5.82, 3)
    num(8.55, 4.78, 4)
    num(8.45, 1.32, 5)
    num(3.90, 4.02, 6)
    num(6.10, 4.02, 7)
    num(5.00, 3.15, 8)

    ax.text(5.6, 6.15, "The mammalian heart", ha="center", fontsize=10.6, color=NAVY,
            fontweight="bold")

    ax.text(0.10, 0.75, "1  Vena cava — deoxygenated blood from the body", fontsize=7.4, color=SLATE)
    ax.text(0.10, 0.49, "2  Pulmonary artery — deoxygenated blood to the lungs", fontsize=7.4, color=SLATE)
    ax.text(0.10, 0.23, "3  Aorta — oxygenated blood to the whole body", fontsize=7.4, color=SLATE)
    ax.text(0.10, -0.03, "4  Pulmonary vein — oxygenated blood from the lungs", fontsize=7.4, color=SLATE)
    ax.text(6.10, 0.75, "5  Right ventricle — pumps to the lungs only", fontsize=7.4, color=SLATE)
    ax.text(6.10, 0.49, "6  Tricuspid valve     7  Bicuspid (mitral) valve", fontsize=7.4, color=SLATE)
    ax.text(6.10, 0.23, "8  Septum — keeps the two sides apart", fontsize=7.4, color=SLATE)
    ax.text(6.10, -0.03, "The left ventricle wall is thicker: it pumps to the whole body.", fontsize=7.4, color=MUTED)
    save(fig, "ch07_heart.svg")


def ch07_circulation():
    w, h = 760, 300
    b = [t(380, 24, "DOUBLE CIRCULATION", size=13, weight="bold", fill=NAVY)]
    # boxes
    b.append(rect(56, 96, 104, 62, BLUE_LIGHT, BLUE, 8, 1.6))
    b.append(t(108, 122, "BODY", size=10, weight="bold", fill=NAVY))
    b.append(t(108, 140, "tissues and organs", size=7.6, fill=MUTED))
    b.append(rect(316, 96, 128, 62, "#FFFFFF", RED, 8, 1.8))
    b.append(t(380, 120, "HEART", size=10.5, weight="bold", fill=RED))
    b.append(t(380, 138, "right and left sides", size=7.6, fill=MUTED))
    b.append(rect(600, 96, 104, 62, "#FEE2E2", RED, 8, 1.6))
    b.append(t(652, 122, "LUNGS", size=10, weight="bold", fill=NAVY))
    b.append(t(652, 140, "gaseous exchange", size=7.6, fill=MUTED))

    b.append(arrow(140, 66, 214, 66, BLUE, 2.0, "an"))
    b.append(t(108, 56, "deoxygenated", size=8.2, weight="bold", fill=BLUE))
    b.append(rect(214, 44, 332, 46, "#FFFFFF", BLUE, 7, 1.2))
    b.append(t(380, 62, "RIGHT side of the heart → pulmonary artery → lungs", size=8.6, fill=NAVY))
    b.append(t(380, 80, "pulmonary circulation (short loop)", size=7.6, fill=MUTED))

    b.append(arrow(600, 66, 520, 66, RED, 2.0, "ar"))
    b.append(t(652, 56, "oxygenated", size=8.2, weight="bold", fill=RED))

    b.append(rect(214, 190, 332, 46, "#FFFFFF", RED, 7, 1.2))
    b.append(t(380, 208, "LEFT side of the heart → aorta → body", size=8.6, fill=NAVY))
    b.append(t(380, 226, "systemic circulation (long loop)", size=7.6, fill=MUTED))
    b.append(arrow(214, 213, 160, 213, RED, 2.0, "ar"))
    b.append(arrow(108, 190, 108, 168, BLUE, 2.0, "an"))
    b.append(arrow(160, 168, 300, 168, BLUE, 2.0, "an"))
    b.append(t(300, 250, "Blood passes through the heart twice in every complete circuit — that is what “double” means.",
                size=8.6, fill=MUTED))
    b.append(t(380, 278, "Advantage: the blood reaches the body at full pressure, and oxygenated and deoxygenated blood never mix.",
                size=8.4, fill=SLATE))
    write_svg("ch07_circulation.svg", svg(w, h, "\n".join(b)))


def ch07_blood_cells():
    fig, ax = plt.subplots(figsize=(7.6, 2.9))
    ax.set_xlim(0, 12)
    ax.set_ylim(0, 4.2)
    ax.axis("off")
    # red cells
    for i, (cx, cy) in enumerate([(1.4, 2.6), (2.4, 1.6), (3.4, 2.75), (2.0, 3.4)]):
        ax.add_patch(Ellipse((cx, cy), 0.95, 0.78, facecolor="#FCA5A5", edgecolor=RED, lw=1.2, alpha=0.9, zorder=2))
        ax.add_patch(Ellipse((cx, cy), 0.48, 0.36, facecolor="#FECACA", edgecolor=RED, lw=0.7, zorder=3))
    ax.text(2.3, 0.55, "Red blood cells (erythrocytes):\nbiconcave discs, no nucleus,\npacked with haemoglobin —\ncarry oxygen", ha="center",
            fontsize=7.8, color=SLATE)
    # white blood cell
    ax.add_patch(Circle((6.1, 2.5), 0.66, facecolor="#EDE9FE", edgecolor=PURPLE, lw=1.6, zorder=3))
    ax.add_patch(Polygon([[5.9, 2.75], [6.2, 2.62], [6.1, 2.35], [6.35, 2.2], [6.05, 2.2], [6.15, 1.95], [5.85, 2.25],
                          [5.7, 2.1], [5.75, 2.45]], closed=True, facecolor=PURPLE, alpha=0.75, zorder=4))
    ax.text(6.3, 0.55, "White blood cells (leucocytes):\nnucleus present, change shape,\ndefend the body — phagocytosis\nand antibodies", ha="center",
            fontsize=7.8, color=SLATE)
    # platelet
    for cx, cy in ((8.9, 2.75), (9.35, 2.3), (8.6, 2.2), (9.6, 2.9), (9.15, 3.3)):
        ax.add_patch(Polygon([[cx - 0.14, cy], [cx, cy + 0.16], [cx + 0.14, cy], [cx, cy - 0.16]],
                             closed=True, facecolor=GREEN_MID, edgecolor=GREEN, lw=1.0, zorder=3))
    ax.text(9.2, 0.55, "Platelets (thrombocytes):\ncell fragments; start clotting\nby converting fibrinogen\nto fibrin",
            ha="center", fontsize=7.8, color=SLATE)
    # plasma
    ax.add_patch(FancyBboxPatch((10.5, 1.5), 1.2, 1.9, boxstyle="round,pad=0.02,rounding_size=0.2",
                                facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.3, zorder=2))
    ax.text(11.1, 2.45, "PLASMA", ha="center", rotation=90, fontsize=8, color=BLUE, fontweight="bold")
    ax.text(11.1, 0.55, "Plasma: straw-coloured\nliquid; carries cells,\nfood, waste, hormones",
            ha="center", fontsize=7.8, color=SLATE)
    ax.text(5.9, 4.0, "The four components of blood", ha="center", fontsize=10.4, color=NAVY, fontweight="bold")
    save(fig, "ch07_blood_cells.svg")


# ── chapter 8: respiration ──────────────────────────────────────────────────
def ch08_alveolus():
    fig, ax = plt.subplots(figsize=(7.4, 3.4))
    ax.set_xlim(0, 11)
    ax.set_ylim(0, 4.8)
    ax.axis("off")
    # bronchiole
    ax.plot([0.6, 3.4], [3.7, 2.6], color=SLATE, lw=7, solid_capstyle="round", zorder=2)
    ax.plot([0.6, 3.4], [3.7, 2.6], color="#FFFFFF", lw=4, solid_capstyle="round", zorder=3)
    # alveolus sac
    ax.add_patch(Circle((4.7, 2.3), 1.30, facecolor="#FFF1F2", edgecolor=RED, lw=1.8, zorder=3))
    # capillary wrapping
    for t0 in np.linspace(-2.4, 2.4, 7):
        ax.plot([4.7 + 1.55 * np.cos(t0), 4.7 + 1.9 * np.cos(t0)],
                [2.3 + 1.55 * np.sin(t0), 2.3 + 1.9 * np.sin(t0)], color=BLUE, lw=3.2, zorder=4)

    # arrows inside alveolus (O2 in, CO2 out)
    ax.annotate("", xy=(5.6, 1.6), xytext=(4.2, 1.6),
                arrowprops=dict(arrowstyle="-|>", color=GREEN, lw=1.8))
    ax.annotate("", xy=(4.2, 3.0), xytext=(5.6, 3.0),
                arrowprops=dict(arrowstyle="-|>", color=PURPLE, lw=1.8))
    ax.text(4.9, 1.25, "O₂ in", fontsize=8.4, color=GREEN, ha="center", fontweight="bold")
    ax.text(4.9, 3.28, "CO₂ out", fontsize=8.4, color=PURPLE, ha="center", fontweight="bold")

    ax.text(7.6, 4.35, "An alveolus and its capillary", ha="center", fontsize=10.2,
            color=NAVY, fontweight="bold")
    _label(ax, "Thin wall — one cell thick,\nshort diffusion distance", (4.7, 3.6), (2.4, 4.45))
    _label(ax, "Film of moisture —\ngases dissolve first", (5.75, 3.35), (8.6, 4.05))
    _label(ax, "Capillary network —\nkeeps a steep gradient", (6.4, 1.3), (8.4, 1.1))
    _label(ax, "Large total surface area —\nhundreds of millions of alveoli", (4.1, 1.15), (2.0, 0.8))
    ax.text(0.55, 0.35, "Bronchiole", fontsize=8, color=MUTED)
    save(fig, "ch08_alveolus.svg")


def ch08_respiration_compare():
    w, h = 760, 290
    b = [t(380, 24, "AEROBIC AND ANAEROBIC RESPIRATION", size=13, weight="bold", fill=NAVY),
         rect(20, 42, 350, 210, "#FFFFFF", GREEN, 8, 1.5),
         rect(390, 42, 350, 210, "#FFFFFF", AMBER, 8, 1.5),
         f'<rect x="20" y="42" width="350" height="6" rx="3" fill="{GREEN}"/>',
         f'<rect x="390" y="42" width="350" height="6" rx="3" fill="{AMBER}"/>',
         t(195, 70, "AEROBIC", size=12, weight="bold", fill=GREEN),
         t(565, 70, "ANAEROBIC", size=12, weight="bold", fill=AMBER),
         t(195, 94, "glucose + oxygen →", size=9.6, fill=NAVY),
         t(195, 114, "carbon dioxide + water", size=9.6, weight="bold", fill=NAVY),
         t(195, 134, "+ a large amount of energy", size=9.6, fill=GREEN),
         t(565, 94, "glucose →", size=9.6, fill=NAVY),
         t(565, 114, "in muscle: lactic acid", size=9.6, weight="bold", fill=NAVY),
         t(565, 134, "in yeast: alcohol + CO₂", size=9.6, weight="bold", fill=NAVY),
         t(195, 160, "Energy released: about 38 ATP per glucose", size=8.4, fill=SLATE),
         t(195, 178, "Site: mitochondria (cytoplasm first)", size=8.4, fill=SLATE),
         t(195, 196, "Occurs: all the time, in every living cell", size=8.4, fill=SLATE),
         t(195, 214, "Oxygen: required", size=8.4, fill=SLATE),
         t(195, 232, "Products are harmless and easily removed", size=8.4, fill=SLATE),
         t(565, 160, "Energy released: about 2 ATP per glucose", size=8.4, fill=SLATE),
         t(565, 178, "Site: cytoplasm only", size=8.4, fill=SLATE),
         t(565, 196, "Occurs: when oxygen is short", size=8.4, fill=SLATE),
         t(565, 214, "Oxygen: not required", size=8.4, fill=SLATE),
         t(565, 232, "Lactic acid builds up — causes cramp", size=8.4, fill=SLATE),
         t(380, 274, "Both start with glucose and both release energy. The difference is whether oxygen is used and what is left over.",
           size=8.4, fill=MUTED)]
    write_svg("ch08_respiration_compare.svg", svg(w, h, "\n".join(b)))


# ── chapter 9: excretion ────────────────────────────────────────────────────
def ch09_nephron():
    fig, ax = plt.subplots(figsize=(7.8, 4.4))
    ax.set_xlim(0, 13.2)
    ax.set_ylim(-0.2, 5.9)
    ax.axis("off")

    def num(x, y, n, colour=GREEN):
        ax.add_patch(Circle((x, y), 0.17, facecolor=colour, edgecolor="white", lw=1.0, zorder=9))
        ax.text(x, y - 0.01, str(n), ha="center", va="center", fontsize=6.8, color="white",
                fontweight="bold", zorder=10)

    # 1 glomerulus inside Bowman's capsule
    ax.add_patch(Circle((2.6, 4.55), 0.72, facecolor="#FFFFFF", edgecolor=BLUE, lw=1.8, zorder=2))
    ax.add_patch(Circle((2.6, 4.55), 0.30, facecolor="#FCA5A5", edgecolor=RED, lw=1.4, zorder=3))
    for a in range(0, 360, 45):
        ax.plot([2.6 + 0.30 * np.cos(np.radians(a)), 2.6 + 0.58 * np.cos(np.radians(a))],
                [4.55 + 0.30 * np.sin(np.radians(a)), 4.55 + 0.58 * np.sin(np.radians(a))],
                color=RED, lw=0.8, zorder=3)
    # 2 proximal convoluted tubule
    xs = [3.32, 3.75, 3.68, 4.10, 3.98, 4.35, 4.20]
    ys = [4.55, 4.80, 4.35, 4.65, 4.20, 4.45, 4.00]
    ax.plot(xs, ys, color=GREEN, lw=3.2, solid_capstyle="round", zorder=3)
    # 3 loop of Henle
    ax.plot([4.20, 4.55, 4.55, 4.20], [4.00, 3.50, 1.45, 1.05], color=GREEN, lw=3.2,
            solid_capstyle="round", zorder=3)
    # 4 distal convoluted tubule
    xs = [4.20, 4.62, 4.42, 4.82, 4.62, 4.95]
    ys = [1.05, 1.35, 1.75, 2.05, 2.50, 2.85]
    ax.plot(xs, ys, color=GREEN, lw=3.2, solid_capstyle="round", zorder=3)
    # 5 collecting duct
    ax.plot([4.95, 4.95, 4.95], [2.85, 1.70, 0.55], color=PURPLE, lw=5.2, solid_capstyle="round", zorder=2)
    # peritubular capillary
    ax.plot([3.05, 3.55, 3.95, 3.95, 3.45], [5.10, 5.30, 5.05, 3.10, 1.75], color=RED, lw=1.5,
            ls=(0, (3, 2)), zorder=2)

    num(2.60, 4.55, 1)
    num(3.75, 4.80, 2)
    num(4.55, 2.30, 3)
    num(4.62, 1.35, 4)
    num(4.95, 1.55, 5)

    ax.text(6.1, 5.68, "The nephron — the functional unit of the kidney", ha="center",
            fontsize=10.4, color=NAVY, fontweight="bold")

    ax.text(6.05, 5.10, "1  Glomerulus — a knot of capillaries under pressure", fontsize=7.8, color=SLATE)
    ax.text(6.05, 4.80, "2  Bowman's capsule — ultrafiltration: water, glucose,", fontsize=7.8, color=SLATE)
    ax.text(6.32, 4.55, "amino acids, urea and salts are forced out", fontsize=7.8, color=SLATE)
    ax.text(6.05, 4.25, "3  Proximal tubule — selective reabsorption of all the", fontsize=7.8, color=SLATE)
    ax.text(6.32, 4.00, "glucose and amino acids, most of the water", fontsize=7.8, color=SLATE)
    ax.text(6.05, 3.70, "4  Loop of Henle — more water is reabsorbed, so the", fontsize=7.8, color=SLATE)
    ax.text(6.32, 3.45, "urine becomes concentrated", fontsize=7.8, color=SLATE)
    ax.text(6.05, 3.15, "5  Collecting duct — urine passes to the pelvis of the", fontsize=7.8, color=SLATE)
    ax.text(6.32, 2.90, "kidney, then the ureter, bladder and urethra", fontsize=7.8, color=SLATE)

    ax.text(6.05, 2.35, "What is FILTERED OUT", fontsize=8.6, color=RED, fontweight="bold")
    ax.text(6.05, 2.10, "water, glucose, amino acids, urea and salts —", fontsize=7.8, color=SLATE)
    ax.text(6.05, 1.85, "anything small enough to pass the filter", fontsize=7.8, color=SLATE)
    ax.text(6.05, 1.45, "What is KEPT IN THE BLOOD", fontsize=8.6, color=BLUE, fontweight="bold")
    ax.text(6.05, 1.20, "blood cells and large proteins — they are too big", fontsize=7.8, color=SLATE)
    ax.text(6.05, 0.95, "to pass, which is why they never appear in urine", fontsize=7.8, color=SLATE)
    ax.text(6.05, 0.50, "Urine therefore contains: urea, excess salts, excess water and any drugs.", fontsize=8.0, color=MUTED)
    save(fig, "ch09_nephron.svg")


def ch09_skin():
    fig, ax = plt.subplots(figsize=(7.6, 4.0))
    ax.set_xlim(0, 11)
    ax.set_ylim(0, 5.2)
    ax.axis("off")
    ax.add_patch(Rectangle((0.8, 4.55), 6.4, 0.45, facecolor="#FDE68A", edgecolor=AMBER, lw=1.2, zorder=2))
    ax.add_patch(Rectangle((0.8, 2.15), 6.4, 2.40, facecolor="#FEF3C7", edgecolor=AMBER, lw=1.2, zorder=1))
    ax.add_patch(Rectangle((0.8, 0.55), 6.4, 1.60, facecolor="#FEF9C3", edgecolor=AMBER, lw=1.2, zorder=1))
    # hair
    ax.plot([3.4, 3.3, 3.55], [5.35, 4.9, 4.55], color=SLATE, lw=2.0, zorder=4)
    ax.add_patch(FancyBboxPatch((3.08, 3.2), 0.5, 1.35, boxstyle="round,pad=0.02,rounding_size=0.2",
                                facecolor="#E7E5E4", edgecolor=SLATE, lw=1.0, zorder=3))
    ax.add_patch(Ellipse((3.33, 3.15), 0.36, 0.26, facecolor="#FCA5A5", edgecolor=RED, lw=1.0, zorder=4))
    # sweat gland
    ax.plot([5.4, 5.4, 5.1, 5.4, 5.2], [4.55, 3.4, 3.05, 2.7, 2.2], color=BLUE, lw=1.6, zorder=3)
    ax.add_patch(Circle((5.25, 1.95), 0.24, facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.1, zorder=3))
    ax.plot([5.4, 5.75], [4.6, 4.75], color=BLUE, lw=1.2, zorder=3)
    # blood vessels
    ax.plot([1.5, 6.6], [1.5, 1.5], color=RED, lw=2.0, zorder=3)
    ax.plot([1.5, 6.2], [1.2, 1.2], color=BLUE, lw=2.0, zorder=3)
    # fat layer
    ax.add_patch(Rectangle((0.8, 0.55), 6.4, 0.55, facecolor="#FDE68A", edgecolor=AMBER, lw=1.0, zorder=1))

    ax.text(4.0, 5.05, "A section through the skin", ha="center", fontsize=10.2, color=NAVY,
            fontweight="bold")
    _label(ax, "Epidermis — dead, keratinised\nouter cells; waterproof", (2.3, 4.8), (9.3, 4.85))
    _label(ax, "Dermis — sweat glands,\nblood vessels, nerve endings,\nhair follicles", (4.6, 3.0), (9.4, 3.4))
    _label(ax, "Hair follicle with a\nsebaceous gland", (3.33, 3.2), (1.6, 3.6))
    _label(ax, "Sweat gland — cools the\nbody by evaporation", (5.25, 1.95), (8.5, 2.15))
    _label(ax, "Blood capillaries — dilate to\nlose heat, constrict to keep it", (2.0, 1.5), (2.3, 0.75))
    _label(ax, "Fat (adipose) layer —\ninsulation", (6.6, 0.8), (8.6, 0.85))
    ax.text(8.3, 1.25, "Two jobs at once:\nexcretion of water, salts\nand urea, and temperature\ncontrol by sweating and\nby changing blood flow.", fontsize=8, color=SLATE)
    save(fig, "ch09_skin.svg")


# ── chapter 10: support and movement ────────────────────────────────────────
def ch10_skeleton():
    fig, ax = plt.subplots(figsize=(6.4, 4.6))
    ax.set_xlim(0, 8)
    ax.set_ylim(0, 7.6)
    ax.axis("off")
    ax.add_patch(Circle((4.0, 7.05), 0.42, facecolor="#FDE68A", edgecolor=AMBER, lw=1.3, zorder=3))
    # vertebral column
    for k in range(9):
        ax.add_patch(FancyBboxPatch((3.86, 5.35 + k * 0.16), 0.28, 0.12,
                                    boxstyle="round,pad=0.01,rounding_size=0.03",
                                    facecolor="#E7E5E4", edgecolor=SLATE, lw=0.8, zorder=2))
    # ribs
    for k in range(5):
        y = 6.05 + k * 0.15
        ax.add_patch(Wedge((4.0, y), 0.95 + k * 0.03, -10, 190, width=0.07,
                           facecolor="none", edgecolor=SLATE, lw=1.4, zorder=2))
    # clavicle + scapula
    ax.plot([3.1, 4.9], [6.5, 6.5], color=SLATE, lw=2.0, zorder=3)
    # pectoral girdle arms
    ax.plot([3.05, 2.5, 2.3], [6.4, 5.4, 4.3], color=SLATE, lw=2.2, zorder=3)
    ax.plot([4.95, 5.5, 5.7], [6.4, 5.4, 4.3], color=SLATE, lw=2.2, zorder=3)
    ax.add_patch(Circle((2.3, 4.2), 0.10, facecolor=GREEN, edgecolor=GREEN, zorder=4))
    ax.add_patch(Circle((5.7, 4.2), 0.10, facecolor=GREEN, edgecolor=GREEN, zorder=4))
    # pelvis
    ax.add_patch(Polygon([[3.3, 4.95], [4.7, 4.95], [4.95, 4.35], [4.3, 4.1], [3.7, 4.1], [3.05, 4.35]],
                         closed=True, facecolor="#E7E5E4", edgecolor=SLATE, lw=1.4, zorder=2))
    # legs
    ax.plot([3.75, 3.6, 3.75], [4.05, 2.3, 0.65], color=SLATE, lw=2.4, zorder=3)
    ax.plot([4.25, 4.4, 4.25], [4.05, 2.3, 0.65], color=SLATE, lw=2.4, zorder=3)
    ax.add_patch(Circle((3.72, 2.3), 0.10, facecolor=GREEN, edgecolor=GREEN, zorder=4))
    ax.add_patch(Circle((4.28, 2.3), 0.10, facecolor=GREEN, edgecolor=GREEN, zorder=4))
    ax.plot([3.6, 3.35], [0.65, 0.35], color=SLATE, lw=2.4, zorder=3)
    ax.plot([4.4, 4.65], [0.65, 0.35], color=SLATE, lw=2.4, zorder=3)

    ax.text(4.0, 7.6, "", fontsize=1)
    _label(ax, "Skull — protects the brain", (4.0, 7.05), (6.0, 7.25))
    _label(ax, "Vertebral column —\nsupports the body,\nprotects the spinal cord", (4.0, 5.6), (6.1, 6.05))
    _label(ax, "Rib cage — protects heart\nand lungs; aids breathing", (5.0, 6.35), (6.1, 6.85))
    _label(ax, "Pectoral girdle (shoulder)", (3.1, 6.45), (1.35, 6.75))
    _label(ax, "Humerus", (2.6, 5.4), (1.15, 5.45))
    _label(ax, "Pelvic girdle —\nsupports the abdominal organs", (3.3, 4.6), (1.4, 4.25))
    _label(ax, "Femur — the longest bone", (3.6, 3.4), (1.35, 3.3))
    _label(ax, "Tibia and fibula", (4.4, 1.7), (6.1, 1.55))
    _label(ax, "Joint (knee)", (3.72, 2.3), (1.6, 2.1))
    ax.text(0.25, 0.15, "Green dots mark joints: shoulder and hip are ball-and-socket; knee and elbow are hinge.",
            fontsize=7.6, color=MUTED)
    save(fig, "ch10_skeleton.svg")


def ch10_joints():
    fig, ax = plt.subplots(figsize=(7.6, 2.9))
    ax.set_xlim(0, 12)
    ax.set_ylim(0, 4.3)
    ax.axis("off")

    # hinge joint
    ax.add_patch(FancyBboxPatch((1.0, 2.05), 1.5, 0.55, boxstyle="round,pad=0.02,rounding_size=0.22",
                                facecolor="#E7E5E4", edgecolor=SLATE, lw=1.4, zorder=2))
    ax.add_patch(Circle((2.55, 2.32), 0.30, facecolor="#FDE68A", edgecolor=AMBER, lw=1.2, zorder=3))
    ax.add_patch(FancyBboxPatch((2.35, 0.75), 0.50, 1.35, boxstyle="round,pad=0.02,rounding_size=0.18",
                                facecolor="#E7E5E4", edgecolor=SLATE, lw=1.4, zorder=2))
    ax.annotate("", xy=(2.55, 1.05), xytext=(1.75, 1.65),
                arrowprops=dict(arrowstyle="<|-|>", color=GREEN, lw=1.3))
    ax.text(2.55, 3.9, "HINGE JOINT", ha="center", fontsize=9.4, color=NAVY, fontweight="bold")
    ax.text(2.55, 3.6, "elbow, knee, ankle", ha="center", fontsize=7.8, color=MUTED)
    ax.text(2.55, 0.4, "Movement in one plane only —\nlike a door on its hinges", ha="center",
            fontsize=7.6, color=SLATE)

    # ball and socket
    ax.add_patch(Circle((7.0, 2.5), 0.55, facecolor="#FDE68A", edgecolor=AMBER, lw=1.4, zorder=3))
    ax.add_patch(Wedge((7.0, 2.5), 0.80, 200, 340, width=0.22, facecolor="#E7E5E4", edgecolor=SLATE, lw=1.2, zorder=2))
    ax.add_patch(FancyBboxPatch((6.72, 0.55), 0.56, 1.30, boxstyle="round,pad=0.02,rounding_size=0.18",
                                facecolor="#E7E5E4", edgecolor=SLATE, lw=1.4, zorder=2))
    for a in (30, 90, 150, 210, 330):
        ax.annotate("", xy=(7.0 + 1.15 * np.cos(np.radians(a)), 1.15 + 1.15 * np.sin(np.radians(a)) + 1.35),
                    xytext=(7.0, 1.15), arrowprops=dict(arrowstyle="->", color=GREEN, lw=1.0))
    ax.text(7.0, 3.9, "BALL-AND-SOCKET JOINT", ha="center", fontsize=9.4, color=NAVY, fontweight="bold")
    ax.text(7.0, 3.6, "shoulder, hip", ha="center", fontsize=7.8, color=MUTED)
    ax.text(7.0, 0.4, "Movement in every direction —\nrotation, flexion, extension", ha="center",
            fontsize=7.6, color=SLATE)

    # pivot / gliding
    ax.add_patch(FancyBboxPatch((10.20, 2.05), 1.50, 0.50, boxstyle="round,pad=0.02,rounding_size=0.2",
                                facecolor="#E7E5E4", edgecolor=SLATE, lw=1.4, zorder=2))
    ax.add_patch(FancyBboxPatch((10.20, 1.50), 1.50, 0.50, boxstyle="round,pad=0.02,rounding_size=0.2",
                                facecolor="#E7E5E4", edgecolor=SLATE, lw=1.4, zorder=2))
    ax.annotate("", xy=(11.05, 2.55), xytext=(10.55, 2.55), arrowprops=dict(arrowstyle="<|-|>", color=GREEN, lw=1.3))
    ax.text(10.95, 3.9, "GLIDING JOINT", ha="center", fontsize=9.4, color=NAVY, fontweight="bold")
    ax.text(10.95, 3.6, "between vertebrae,\nwrist bones", ha="center", fontsize=7.8, color=MUTED)
    ax.text(10.95, 0.4, "Flat surfaces slide\nover one another", ha="center",
            fontsize=7.6, color=SLATE)
    save(fig, "ch10_joints.svg")


def ch10_muscle():
    fig, ax = plt.subplots(figsize=(7.6, 3.0))
    ax.set_xlim(0, 11.5)
    ax.set_ylim(0, 4.4)
    ax.axis("off")

    # bone
    ax.add_patch(FancyBboxPatch((4.6, 3.4), 2.3, 0.42, boxstyle="round,pad=0.02,rounding_size=0.2",
                                facecolor="#E7E5E4", edgecolor=SLATE, lw=1.4, zorder=2))
    ax.add_patch(FancyBboxPatch((1.4, 3.4), 0.55, 0.42, boxstyle="round,pad=0.02,rounding_size=0.18",
                                facecolor="#E7E5E4", edgecolor=SLATE, lw=1.4, zorder=2))
    ax.add_patch(Circle((4.6, 3.61), 0.20, facecolor="#FDE68A", edgecolor=AMBER, lw=1.2, zorder=4))
    # flexor (biceps)
    ax.plot([1.95, 2.9, 3.9, 4.5], [3.42, 2.55, 2.45, 3.35], color=RED, lw=7, solid_capstyle="round", zorder=3)
    # extensor (triceps)
    ax.plot([1.95, 2.9, 3.9, 4.5], [3.80, 3.55, 3.55, 3.80], color=BLUE, lw=5, solid_capstyle="round", zorder=3)
    ax.annotate("", xy=(2.9, 2.30), xytext=(2.35, 1.55), arrowprops=dict(arrowstyle="->", color=RED, lw=1.4))
    ax.text(1.5, 1.45, "flexor contracts →\narm bends (flexion)", fontsize=8, color=RED)
    ax.text(6.9, 2.2, "extensor relaxes", fontsize=8, color=BLUE)
    ax.annotate("", xy=(7.3, 3.45), xytext=(6.9, 2.35), arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.2))

    # antagonistic second panel: sarcomere / muscle types
    ax.add_patch(FancyBboxPatch((7.0, 0.55), 4.2, 1.6, boxstyle="round,pad=0.02,rounding_size=0.18",
                                facecolor="#F8FAFC", edgecolor=BORDER, lw=1.0, zorder=1))
    ax.text(9.1, 1.95, "Three kinds of muscle", fontsize=9, color=NAVY, fontweight="bold", ha="center")
    ax.text(7.2, 1.6, "• Skeletal (striated) — attached to bone, voluntary", fontsize=7.6, color=SLATE)
    ax.text(7.2, 1.30, "• Smooth — gut and blood vessels, involuntary", fontsize=7.6, color=SLATE)
    ax.text(7.2, 1.00, "• Cardiac — heart, involuntary, never tires", fontsize=7.6, color=SLATE)
    ax.text(9.0, 0.72, "Antagonistic pair: when one contracts the other must relax",
            fontsize=7.4, color=MUTED, ha="center")

    ax.text(3.3, 4.25, "A muscle can only pull — never push", ha="center", fontsize=10.2,
            color=NAVY, fontweight="bold")
    _label(ax, "Biceps (flexor)", (3.5, 2.55), (2.6, 1.85))
    ax.text(0.35, 3.75, "bone", fontsize=7.6, color=MUTED)
    save(fig, "ch10_muscle.svg")


# ── recap cards for chapters 6–10 ───────────────────────────────────────────
def recap_cards_c():
    card_ = recap_card

    card_("recap_ch06.svg", "Chapter 6 recap card — transport in plants", [
        ("Xylem", "Dead, hollow, lignified; water and minerals UP only; transpiration pull."),
        ("Phloem", "Living, sieve plates; sugar and amino acids UP and DOWN; translocation."),
        ("Transpiration", "Loss of water vapour from leaves; faster when hot, dry, windy, bright."),
        ("Root hair", "Long extension, large surface area, many mitochondria for active transport."),
    ])
    card_("recap_ch07.svg", "Chapter 7 recap card — transport in animals", [
        ("Double circulation", "Body → right heart → lungs → left heart → body; blood passes the heart twice."),
        ("Heart", "Right side deoxygenated to lungs; left side oxygenated to body; valves stop backflow."),
        ("Vessels", "Artery — thick, elastic, away; vein — valves, towards; capillary — one cell thick."),
        ("Blood", "Plasma; red cells (oxygen); white cells (defence); platelets (clotting)."),
    ])
    card_("recap_ch08.svg", "Chapter 8 recap card — respiration", [
        ("Aerobic", "Glucose + oxygen → CO₂ + water + much energy; mitochondria."),
        ("Anaerobic", "Glucose → lactic acid (muscle) or alcohol + CO₂ (yeast); little energy."),
        ("Alveolus", "Thin wall, large area, moist, good blood supply — four adaptations."),
        ("Breathing vs respiration", "Breathing moves air; respiration releases energy in cells."),
    ])
    card_("recap_ch09.svg", "Chapter 9 recap card — excretion and homeostasis", [
        ("Excretory organs", "Kidneys (urea), lungs (CO₂), skin (water, salts, urea), liver (bile pigments)."),
        ("Nephron", "Ultrafiltration in the capsule; selective reabsorption in the tubule."),
        ("Homeostasis", "Keeping the internal environment constant — negative feedback."),
        ("Skin", "Sweating and blood-flow changes control temperature; also excretes."),
    ])
    card_("recap_ch10.svg", "Chapter 10 recap card — support and movement", [
        ("Skeleton", "Support, protection, movement, blood cell formation, mineral store."),
        ("Joints", "Hinge (knee, elbow), ball-and-socket (shoulder, hip), gliding (vertebrae)."),
        ("Muscles", "Antagonistic pairs; flexor bends, extensor straightens; they only pull."),
        ("Plant support", "Turgor pressure in cells; lignified xylem; collenchyma and sclerenchyma."),
    ])
