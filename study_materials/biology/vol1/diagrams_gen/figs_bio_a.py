"""Volume 1 diagrams — biology of cells, nutrition and transport.

Chapter 1 (variety of living things) and chapter 2 (cell structure) are drawn
here; later chapters add their own module as the volume grows.
"""

from __future__ import annotations

import matplotlib.pyplot as plt
from matplotlib.patches import Circle, Ellipse, FancyBboxPatch, Polygon, Rectangle, Wedge

from common import (OUT, GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE,
                    MUTED, BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE,
                    BLUE_LIGHT, PURPLE, PURPLE_LIGHT, write_svg, svg, t, lines,
                    rect, arrow, line, card, save)

plt.rcParams.update({"font.family": "DejaVu Sans"})


# ── front matter ────────────────────────────────────────────────────────────
def cover_banner():
    w, h = 760, 150
    b = [rect(0, 0, w, h, GREEN_LIGHT, GREEN, 10, 1.4),
         f'<rect x="0" y="0" width="{w}" height="6" rx="3" fill="{GREEN}"/>',
         t(380, 46, "CELLS  •  NUTRITION  •  TRANSPORT", size=15, weight="bold"),
         t(380, 72, "The Cell and Its Organelles, Cell Division, Photosynthesis,", size=11, fill=SLATE),
         t(380, 90, "Digestion, Plant and Animal Transport, Respiration, Excretion", size=11, fill=SLATE)]
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg=GREEN_LIGHT))


def utme_weight_chart():
    labels = ["Variety &\nclassific.", "Cell\nstructure", "Cell\ndivision", "Plant\nnutrition",
              "Animal\nnutrition", "Transport\nin plants", "Transport\nin animals",
              "Respiration", "Excretion &\nhomeostasis", "Support &\nmovement"]
    vals = [1, 2, 1, 2, 2, 2, 3, 2, 1, 1]
    fig, ax = plt.subplots(figsize=(7.6, 3.1))
    colors = [GREEN if v >= 3 else (BLUE if v == 2 else PURPLE) for v in vals]
    bars = ax.bar(labels, vals, color=colors, edgecolor="white", linewidth=1.1, width=0.66)
    for b, v in zip(bars, vals):
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


# ── chapter 1: the variety of living things ─────────────────────────────────
def ch01_kingdoms():
    w, h = 760, 300
    b = [t(380, 24, "THE FIVE KINGDOMS OF LIFE", size=13.5, weight="bold", fill=NAVY)]
    rows = [
        ("MONERA", "Prokaryotes — bacteria, cyanobacteria", "No nucleus, no membrane-bound organelles", GREEN),
        ("PROTISTA", "Eukaryotes — Amoeba, Paramecium, Euglena, Plasmodium", "Mostly single-celled; nucleus present", BLUE),
        ("FUNGI", "Moulds, yeasts, mushrooms, Rhizopus", "Heterotrophic, chitin walls, spores", PURPLE),
        ("PLANTAE", "Mosses, ferns, maize, mango", "Multicellular, cellulose walls, photosynthesis", GREEN_BRIGHT),
        ("ANIMALIA", "Sponges to mammals — including humans", "Multicellular, no cell wall, heterotrophic", AMBER),
    ]
    y = 46
    for name, ex, note, col in rows:
        b.append(rect(24, y, 150, 40, "#FFFFFF", col, 7, 1.5))
        b.append(t(99, y + 25, name, size=10.5, weight="bold", fill=col))
        b.append(rect(186, y, 550, 40, "#FFFFFF", BORDER, 7, 1.0))
        b.append(t(196, y + 17, ex, size=9.4, fill=NAVY, anchor="start"))
        b.append(t(196, y + 32, note, size=8.8, fill=MUTED, anchor="start"))
        y += 48
    b.append(t(380, 292, "Order of size: Monera < Protista < Fungi < Plantae/Animalia (cell number and organisation)",
                size=8.4, fill=MUTED))
    write_svg("ch01_kingdoms.svg", svg(w, h, "\n".join(b)))


def ch01_virus():
    fig, ax = plt.subplots(figsize=(7.2, 3.2))
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 4.4)
    ax.axis("off")

    # capsid (icosahedral head) as a hexagon, tail, fibres
    head = Polygon([[3.2, 3.35], [4.3, 3.95], [5.4, 3.35], [5.4, 2.35], [4.3, 1.75], [3.2, 2.35]],
                   closed=True, facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.8, zorder=3)
    ax.add_patch(head)
    ax.plot([4.3, 4.3], [1.75, 1.25], color=BLUE, lw=2.4, zorder=3)
    ax.add_patch(Rectangle((4.02, 1.05), 0.56, 0.22, facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.4, zorder=3))
    for dx, dy in ((-0.35, -0.45), (0.35, -0.45), (-0.55, -0.15), (0.55, -0.15)):
        ax.plot([4.3 + dx * 0.55, 4.3 + dx], [1.05, 1.05 + dy], color=BLUE, lw=1.6, zorder=3)
    # genetic material
    ax.plot([3.9, 4.2, 4.0, 4.45, 4.3, 4.7], [2.2, 2.5, 2.9, 2.7, 3.2, 3.0], color=GREEN, lw=1.6, zorder=4)

    labels = [
        (2.0, 3.95, "Protein coat (capsid)\nbuilt from capsomeres", (3.25, 3.55)),
        (1.45, 2.5, "No cytoplasm, no nucleus,\nno organelles — not a cell", (3.22, 2.85)),
        (1.55, 1.2, "Tail and tail fibres for\nattachment to a host cell", (4.05, 1.02)),
        (7.3, 3.55, "Genetic material: DNA or RNA\n(the only part that enters)", (4.75, 3.0)),
        (7.4, 1.5, "Obligate parasite: reproduces\nonly inside a living host", (4.85, 1.9)),
    ]
    for x, y, text, xy in labels:
        ax.annotate(text, xy=xy, xytext=(x, y), fontsize=8.2, color=SLATE,
                    ha="center", va="center",
                    arrowprops=dict(arrowstyle="-", color=MUTED, lw=1.0,
                                    shrinkA=2, shrinkB=4))
    ax.text(5.0, 4.25, "Structure of a bacteriophage (a virus)", ha="center",
            fontsize=10.5, color=NAVY, fontweight="bold")
    save(fig, "ch01_virus.svg")


def ch01_nomenclature():
    w, h = 760, 240
    b = [t(380, 24, "BINOMIAL NOMENCLATURE — TWO NAMES, ALWAYS", size=13, weight="bold", fill=NAVY),
         rect(24, 40, 712, 66, "#FFFFFF", GREEN, 8, 1.4),
         t(60, 74, "Homo", size=22, weight="bold", fill=GREEN, anchor="middle", italic=True),
         t(190, 74, "sapiens", size=22, weight="bold", fill=NAVY, anchor="middle", italic=True),
         t(60, 94, "GENUS — capital letter", size=8.6, fill=MUTED),
         t(196, 94, "SPECIES — small letter", size=8.6, fill=MUTED),
         t(470, 68, "Genus + species, both italic", size=9.6, fill=SLATE, anchor="start"),
         t(470, 84, "in print; underlined when handwritten.", size=9.6, fill=SLATE, anchor="start"),
         t(380, 128, "Worked examples across the kingdoms", size=10, weight="bold", fill=SLATE, anchor="middle")]
    rows = [("Man", "Homo sapiens"), ("Maize", "Zea mays"), ("Housefly", "Musca domestica"),
            ("Cassava", "Manihot esculenta"), ("Amoeba", "Amoeba proteus"), ("Mango", "Mangifera indica")]
    x = 24
    for i, (common, sci) in enumerate(rows):
        col = i % 3
        row = i // 3
        cx = 24 + col * 238
        cy = 142 + row * 46
        b.append(rect(cx, cy, 228, 38, "#FFFFFF", BORDER, 6, 1.0))
        b.append(t(cx + 10, cy + 16, common, size=9, fill=MUTED, anchor="start"))
        b.append(t(cx + 10, cy + 31, sci, size=10.5, weight="bold", fill=NAVY, anchor="start", italic=True))
    b.append(t(380, 232, "Same genus, different species: Panthera leo (lion) and Panthera tigris (tiger) — but never Panthera Leo.",
                size=8.4, fill=MUTED))
    write_svg("ch01_nomenclature.svg", svg(w, h, "\n".join(b)))


# ── chapter 2: the cell ─────────────────────────────────────────────────────
def _label(ax, text, xy, xytext, color=SLATE):
    ax.annotate(text, xy=xy, xytext=xytext, fontsize=7.6, color=color, ha="center",
                va="center",
                arrowprops=dict(arrowstyle="-", color=MUTED, lw=0.9, shrinkA=2, shrinkB=3))


def ch02_animal_cell():
    fig, ax = plt.subplots(figsize=(7.4, 4.6))
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 5.6)
    ax.axis("off")
    ax.add_patch(Ellipse((4.6, 2.8), 5.6, 4.4, facecolor="#FFF7ED", edgecolor=AMBER, lw=2.2, zorder=1))
    ax.add_patch(Ellipse((4.6, 2.8), 5.9, 4.7, facecolor="none", edgecolor=AMBER, lw=1.0, ls=(0, (3, 2)), zorder=1))
    # nucleus with chromatin + nucleolus
    ax.add_patch(Circle((3.4, 2.9), 0.78, facecolor=PURPLE_LIGHT, edgecolor=PURPLE, lw=1.8, zorder=3))
    ax.add_patch(Circle((3.5, 2.95), 0.26, facecolor=PURPLE, edgecolor=PURPLE, lw=0.8, zorder=4))
    for sx, sy in ((0.5, 0.2), (-0.45, 0.3), (0.1, -0.4)):
        ax.plot([3.4 + sx * 0.8, 3.4 + sy * 1.1], [2.9 + sy * 0.7, 2.9 + sx * 0.9],
                color=PURPLE, lw=1.0, zorder=4)
    # mitochondria
    for (mx, my, ang) in ((5.6, 3.7, 25), (5.9, 1.9, -20), (2.9, 1.55, 10)):
        ax.add_patch(Ellipse((mx, my), 0.95, 0.48, angle=ang, facecolor=RED_LIGHT,
                             edgecolor=RED, lw=1.4, zorder=3))
        for k in range(3):
            ax.plot([mx - 0.3 + k * 0.3, mx - 0.22 + k * 0.3], [my - 0.14, my + 0.14],
                    color=RED, lw=1.0, zorder=4)
    # rough ER around nucleus
    for i, rr in enumerate((1.05, 1.25)):
        ax.add_patch(Wedge((3.4, 2.9), rr, -55, 135, width=0.07, facecolor=BLUE, edgecolor="none", zorder=2))
    for a in range(-50, 130, 18):
        import math
        ax.add_patch(Circle((3.4 + 1.15 * math.cos(math.radians(a)), 2.9 + 1.15 * math.sin(math.radians(a))),
                            0.035, facecolor=BLUE, edgecolor="none", zorder=5))
    # Golgi stacks
    for k in range(4):
        ax.add_patch(FancyBboxPatch((6.15, 2.55 + k * 0.17), 0.85 - k * 0.06, 0.09, boxstyle="round,pad=0.01",
                                    facecolor=GREEN_MID, edgecolor=GREEN, lw=1.0, zorder=3))
    # vacuole (small), lysosome, ribosomes, cytoskeleton
    ax.add_patch(Circle((4.7, 1.3), 0.30, facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.2, zorder=3))
    ax.add_patch(Circle((6.4, 1.35), 0.20, facecolor=AMBER_LIGHT, edgecolor=AMBER, lw=1.2, zorder=3))
    import numpy as np
    rng = np.random.default_rng(4)
    for _ in range(26):
        ax.add_patch(Circle((4.6 + rng.uniform(-2.2, 2.2), 2.8 + rng.uniform(-1.8, 1.8)), 0.035,
                            facecolor=SLATE, edgecolor="none", zorder=6))
    ax.text(4.6, 5.35, "A typical animal cell (eukaryotic)", ha="center", fontsize=10.5,
            color=NAVY, fontweight="bold")

    _label(ax, "Cell membrane\n(partially permeable)", (4.6, 5.02), (7.6, 5.15))
    _label(ax, "Nucleus: chromatin +\nnucleolus, DNA", (3.4, 3.55), (1.2, 4.55))
    _label(ax, "Nuclear membrane\nwith pores", (4.05, 3.35), (1.0, 3.6))
    _label(ax, "Rough endoplasmic\nreticulum + ribosomes", (2.6, 2.4), (0.95, 1.9))
    _label(ax, "Mitochondrion\n(aerobic respiration)", (5.6, 3.95), (7.8, 4.2))
    _label(ax, "Golgi apparatus\n(packaging)", (6.6, 2.9), (9.0, 2.9))
    _label(ax, "Lysosome\n(digestive enzymes)", (6.4, 1.35), (8.6, 1.15))
    _label(ax, "Small vacuole", (4.7, 1.05), (4.4, 0.35))
    _label(ax, "No cell wall,\nno chloroplasts", (4.6, 0.62), (2.2, 0.35), color=RED)
    save(fig, "ch02_animal_cell.svg")


def ch02_plant_cell():
    fig, ax = plt.subplots(figsize=(7.8, 4.5))
    ax.set_xlim(0, 12.3)
    ax.set_ylim(0, 5.6)
    ax.axis("off")

    # wall + membrane
    ax.add_patch(FancyBboxPatch((2.55, 0.6), 5.5, 4.4, boxstyle="round,pad=0.02,rounding_size=0.35",
                                facecolor=GREEN_LIGHT, edgecolor=GREEN, lw=2.4, zorder=1))
    ax.add_patch(FancyBboxPatch((2.72, 0.76), 5.16, 4.08, boxstyle="round,pad=0.02,rounding_size=0.3",
                                facecolor="#FFFFFF", edgecolor=GREEN, lw=1.0, zorder=2))
    # central vacuole
    ax.add_patch(FancyBboxPatch((5.05, 1.2), 2.6, 3.3, boxstyle="round,pad=0.02,rounding_size=0.3",
                                facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.4, zorder=3))
    # nucleus
    ax.add_patch(Circle((3.5, 1.75), 0.55, facecolor=PURPLE_LIGHT, edgecolor=PURPLE, lw=1.6, zorder=4))
    ax.add_patch(Circle((3.58, 1.8), 0.19, facecolor=PURPLE, edgecolor=PURPLE, lw=0.6, zorder=5))
    # chloroplasts (left column, clear of the vacuole)
    for (cx, cy, ang) in ((3.35, 4.25, -20), (3.95, 3.55, 15), (3.25, 3.05, 35)):
        ax.add_patch(Ellipse((cx, cy), 0.92, 0.44, angle=ang, facecolor=GREEN_MID,
                             edgecolor=GREEN, lw=1.3, zorder=5))
        for k in range(3):
            ax.add_patch(Ellipse((cx - 0.25 + k * 0.25, cy), 0.13, 0.22, angle=ang,
                                 facecolor=GREEN, edgecolor="none", zorder=6))
    # plasmodesma hint
    ax.plot([2.63, 2.63], [2.55, 2.9], color=GREEN, lw=2.2, zorder=6)

    ax.text(5.3, 5.33, "A typical plant cell (eukaryotic)", ha="center", fontsize=10.5,
            color=NAVY, fontweight="bold")

    _label(ax, "Cell wall (cellulose)\nfully permeable", (2.57, 4.45), (1.35, 4.95))
    _label(ax, "Cell membrane\njust inside the wall", (2.73, 3.3), (1.3, 3.55))
    _label(ax, "Chloroplasts: chlorophyll\nfor photosynthesis", (3.35, 4.25), (1.45, 2.55))
    _label(ax, "Nucleus", (3.5, 1.2), (3.0, 0.35))
    _label(ax, "Large central vacuole\n(cell sap, keeps turgor)", (7.65, 3.3), (9.55, 3.75))
    _label(ax, "Cytoplasm", (4.55, 1.0), (6.3, 0.4))
    _label(ax, "Fixed shape; no centrioles\nor lysosomes (mostly)", (7.6, 1.6), (9.85, 1.35),
           color=GREEN)
    save(fig, "ch02_plant_cell.svg")


def ch02_bacterium():
    fig, ax = plt.subplots(figsize=(7.2, 3.0))
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 4.0)
    ax.axis("off")
    ax.add_patch(FancyBboxPatch((2.7, 1.15), 4.4, 1.75, boxstyle="round,pad=0.02,rounding_size=0.8",
                                facecolor=GREEN_LIGHT, edgecolor=GREEN, lw=2.2, zorder=2))
    ax.add_patch(FancyBboxPatch((2.86, 1.3), 4.08, 1.45, boxstyle="round,pad=0.02,rounding_size=0.7",
                                facecolor="#FFFFFF", edgecolor=GREEN, lw=1.0, zorder=3))
    # nucleoid (circular DNA) — no membrane
    ax.add_patch(Ellipse((4.4, 2.05), 1.25, 0.72, facecolor="none", edgecolor=PURPLE, lw=1.8, zorder=4))
    ax.add_patch(Ellipse((4.4, 2.05), 1.05, 0.52, facecolor="none", edgecolor=PURPLE, lw=1.4, zorder=4))
    # plasmid
    ax.add_patch(Ellipse((6.1, 2.3), 0.42, 0.28, facecolor="none", edgecolor=BLUE, lw=1.5, zorder=4))
    # ribosomes
    import numpy as np
    rng = np.random.default_rng(7)
    for _ in range(18):
        ax.add_patch(Circle((3.1 + rng.uniform(0, 3.5), 1.45 + rng.uniform(0, 1.15)), 0.032,
                            facecolor=SLATE, edgecolor="none", zorder=5))
    # flagellum
    xs = [7.1, 7.5, 7.9, 8.3, 8.7]
    ys = [2.0, 2.35, 1.85, 2.3, 1.95]
    ax.plot(xs, ys, color=MUTED, lw=1.6, zorder=2)
    ax.text(5.0, 3.72, "A bacterium — prokaryotic cell", ha="center", fontsize=10.5,
            color=NAVY, fontweight="bold")
    _label(ax, "Cell wall + capsule", (4.6, 2.92), (4.3, 3.45))
    _label(ax, "Cell membrane", (3.9, 1.32), (2.5, 0.85))
    _label(ax, "Circular DNA in the\nnucleoid — no nuclear membrane", (4.4, 2.05), (2.6, 3.3))
    _label(ax, "Plasmid (extra DNA)", (6.1, 2.3), (7.3, 3.35))
    _label(ax, "No mitochondria, no ER,\nno chloroplasts, no nucleus", (5.0, 1.35), (6.6, 0.6), color=RED)
    _label(ax, "Flagellum (movement)", (8.3, 2.3), (9.2, 1.0))
    save(fig, "ch02_bacterium.svg")


def ch02_levels():
    w, h = 760, 210
    b = [t(380, 24, "FROM CELL TO ORGANISM — THE LEVELS OF ORGANISATION", size=12.6, weight="bold", fill=NAVY)]
    items = [("CELL", "muscle cell", GREEN), ("TISSUE", "muscle tissue", BLUE),
             ("ORGAN", "stomach", PURPLE), ("SYSTEM", "digestive system", AMBER),
             ("ORGANISM", "the whole body", GREEN_BRIGHT)]
    x = 18
    for i, (name, ex, col) in enumerate(items):
        b.append(rect(x, 70, 132, 78, "#FFFFFF", col, 9, 1.6))
        b.append(f'<rect x="{x}" y="70" width="132" height="6" rx="3" fill="{col}"/>')
        b.append(t(x + 66, 100, name, size=11, weight="bold", fill=col))
        b.append(t(x + 66, 122, ex, size=8.8, fill=SLATE))
        b.append(t(x + 66, 138, ["smallest living unit", "similar cells, one job",
                                 "tissues working together", "organs working together",
                                 "all systems together"][i], size=7.6, fill=MUTED))
        if i < 4:
            b.append(arrow(x + 134, 109, x + 146, 109, color=MUTED, sw=1.4, marker="an"))
        x += 148
    b.append(t(380, 182, "In the exam a “level of organisation” question is answered by naming the level and one concrete example from it.",
                size=8.4, fill=MUTED))
    write_svg("ch02_levels.svg", svg(w, h, "\n".join(b)))


def recap_cards():
    def card_(name, title, rows):
        w, h = 700, 210
        b = [t(350, 26, title, size=13, weight="bold", fill=NAVY)]
        y = 46
        for head, body in rows:
            b.append(rect(18, y, 664, 34, "#FFFFFF", GREEN, 6, 1.1))
            b.append(t(30, y + 15, head, size=9.2, weight="bold", fill=GREEN, anchor="start"))
            b.append(t(30, y + 29, body, size=8.8, fill=SLATE, anchor="start"))
            y += 40
        b.append(t(350, 200, "Say each line aloud once; if you can say it, you can answer it.",
                    size=8.2, fill=MUTED))
        write_svg(name, svg(w, h, "\n".join(b)))

    card_("recap_ch01.svg", "Chapter 1 recap card — the variety of living things", [
        ("Seven characteristics", "Movement, respiration, sensitivity, growth, reproduction, excretion, nutrition (MRS GREN)."),
        ("Five kingdoms", "Monera, Protista, Fungi, Plantae, Animalia — the exam wants the kingdom and the reason."),
        ("Virus is not a cell", "No cytoplasm, nucleus or organelles; DNA/RNA in a protein coat; parasite only."),
        ("Binomial name", "Genus (capital) + species (small letter), both italic: Homo sapiens, Zea mays."),
    ])
    card_("recap_ch02.svg", "Chapter 2 recap card — the cell", [
        ("Prokaryote vs eukaryote", "No nucleus/organelles vs true nucleus and membrane-bound organelles."),
        ("Plant vs animal cell", "Wall, chloroplast, large vacuole vs centrioles, lysosomes, no wall."),
        ("Organelle jobs", "Mitochondrion = respiration; chloroplast = photosynthesis; ribosome = protein; Golgi = packaging."),
        ("Levels", "Cell → tissue → organ → system → organism, each with a named example."),
    ])
