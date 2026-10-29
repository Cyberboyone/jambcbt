"""Chemistry Volume 1 diagrams — chapters 5 and 6."""

from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from common import (recap_card, GREEN, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, BORDER,
                    AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE,
                    PURPLE_LIGHT, write_svg, svg, t, line, rect, arrow2, dot, poly, path, save)


def box(x, y, w, h, head, body_lines=(), accent=GREEN, fill="#FFFFFF", head_size=9.8, body_size=8.4):
    out = [rect(x, y, w, h, fill, accent, 7, 1.4),
           f'<rect x="{x}" y="{y}" width="{w}" height="4.5" rx="2.2" fill="{accent}"/>',
           t(x + w / 2, y + 20, head, size=head_size, weight="bold", fill=NAVY if fill == "#FFFFFF" else accent)]
    for i, s in enumerate(body_lines):
        out.append(t(x + w / 2, y + 36 + i * 14, s, size=body_size, fill=SLATE))
    return "".join(out)


# ── chapter 5 ──────────────────────────────────────────────────────────────
def ch05_periodic_trends():
    els = ["Na", "Mg", "Al", "Si", "P", "S", "Cl", "Ar"]
    radius = [186, 160, 143, 118, 110, 103, 99, 94]
    ie = [496, 738, 578, 786, 1012, 1000, 1251, 1521]

    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(7.6, 3.15))

    bars = ax1.bar(els, radius, color=GREEN, edgecolor="white", linewidth=1.0, width=0.68)
    for b, v in zip(bars, radius):
        ax1.text(b.get_x() + b.get_width() / 2, v + 4, str(v), ha="center", fontsize=7.6, color=NAVY)
    ax1.set_ylabel("atomic radius (pm)", fontsize=9.4)
    ax1.set_ylim(0, 215)
    ax1.set_title("Radius falls across a period", fontsize=10.2, color=NAVY, pad=6)
    ax1.tick_params(labelsize=8.6)
    ax1.spines["top"].set_visible(False)
    ax1.spines["right"].set_visible(False)
    ax1.grid(axis="y", color="#E2E8F0", lw=0.7)
    ax1.set_axisbelow(True)

    ax2.plot(els, ie, marker="o", color=BLUE, lw=2.0, ms=5)
    ax2.plot([2], [578], "o", ms=9, mfc="none", mec=RED, mew=1.6)
    ax2.plot([5], [1000], "o", ms=9, mfc="none", mec=RED, mew=1.6)
    ax2.set_ylabel("first ionisation energy (kJ mol⁻¹)", fontsize=9.0)
    ax2.set_ylim(300, 1700)
    ax2.set_title("Ionisation energy rises across a period", fontsize=10.2, color=NAVY, pad=6)
    ax2.tick_params(labelsize=8.6)
    ax2.spines["top"].set_visible(False)
    ax2.spines["right"].set_visible(False)
    ax2.grid(color="#E2E8F0", lw=0.7)
    ax2.set_axisbelow(True)

    fig.text(0.5, 0.062, "Across a period the nuclear charge grows while the shell stays the same: the atoms shrink and hold their electrons more tightly.",
             ha="center", va="bottom", fontsize=8.4, color=NAVY, fontweight="bold")
    fig.text(0.5, 0.005, "The two dips (circled) are at Al, where a lone 3p electron enters a new subshell, and at S, where a paired 3p electron repels its partner.",
             ha="center", va="bottom", fontsize=8.0, color=MUTED)
    fig.tight_layout(rect=(0, 0.12, 1, 1))
    save(fig, "ch05_periodic_trends.svg")


def ch05_groups():
    w, h = 760, 350
    b = [t(380, 22, "THE MAIN GROUPS OF THE PERIODIC TABLE", size=13.2, weight="bold")]

    groups = ["I", "II", "III", "IV", "V", "VI", "VII", "0"]
    rows = [
        ("1", ["H", "", "", "", "", "", "", "He"]),
        ("2", ["Li", "Be", "B", "C", "N", "O", "F", "Ne"]),
        ("3", ["Na", "Mg", "Al", "Si", "P", "S", "Cl", "Ar"]),
        ("4", ["K", "Ca", "Ga", "Ge", "As", "Se", "Br", "Kr"]),
    ]
    metal = {"Li", "Be", "Na", "Mg", "Al", "K", "Ca", "Ga"}
    metalloid = {"B", "Si", "Ge", "As"}
    noble = {"He", "Ne", "Ar", "Kr"}

    x0, y0, cw, ch = 86, 44, 74, 40
    for i, g in enumerate(groups):
        b.append(t(x0 + cw * i + cw / 2, y0 + 16, g, size=10.0, weight="bold", fill=NAVY))
    for r, (label, cells) in enumerate(rows):
        y = y0 + 30 + r * ch
        b.append(t(x0 - 22, y + 25, label, size=9.6, weight="bold", fill=MUTED))
        for c, sym in enumerate(cells):
            x = x0 + cw * c
            if not sym:
                b.append(rect(x + 3, y, cw - 6, ch - 6, "#FFFFFF", "#E2E8F0", 5, 0.8))
                continue
            if sym in noble:
                fill, stroke = PURPLE_LIGHT, PURPLE
            elif sym in metalloid:
                fill, stroke = AMBER_LIGHT, AMBER
            elif sym in metal:
                fill, stroke = GREEN_LIGHT, GREEN
            else:
                fill, stroke = BLUE_LIGHT, BLUE
            b.append(rect(x + 3, y, cw - 6, ch - 6, fill, stroke, 5, 1.3))
            b.append(t(x + cw / 2, y + (ch - 6) / 2 + 5, sym, size=10.6, weight="bold", fill=NAVY))


    # legend
    y = 250
    for i, (lab, fill, stroke) in enumerate([("metal", GREEN_LIGHT, GREEN), ("metalloid", AMBER_LIGHT, AMBER),
                                             ("non-metal", BLUE_LIGHT, BLUE), ("noble gas", PURPLE_LIGHT, PURPLE)]):
        x = 96 + i * 160
        b.append(rect(x, y, 16, 12, fill, stroke, 3, 1.1))
        b.append(t(x + 22, y + 10, lab, size=8.0, fill=SLATE, anchor="start"))

    b.append(t(380, 292, "Group I — alkali metals · Group II — alkaline earth metals · Group VII — halogens · Group 0 — noble gases",
               size=8.2, fill=SLATE))
    b.append(t(380, 312, "Elements in the same group have the same number of outer-shell electrons, which is why their chemistry is so similar.",
               size=8.2, fill=NAVY, weight="bold"))
    b.append(t(380, 332, "Metallic character increases down a group, and towards the left across a period.",
               size=8.6, fill=RED, weight="bold"))
    write_svg("ch05_groups.svg", svg(w, h, "\n".join(b)))


# ── chapter 6 ──────────────────────────────────────────────────────────────
def _atom(cx, cy, r, sym, fill="#FFFFFF", stroke=SLATE, size=11.0):
    return (f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="{fill}" stroke="{stroke}" stroke-width="1.4"/>'
            + t(cx, cy + 4, sym, size=size, weight="bold", fill=NAVY))


def _pair(cx, cy, dx, dy, c1=BLUE, c2=RED):
    """Two shared electrons drawn on the line of a bond."""
    return dot(cx - dx, cy - dy, 2.6, c1) + dot(cx + dx, cy + dy, 2.6, c2)


def _dots_on_arc(cx, cy, r, angles, color=BLUE, size=2.7):
    out = []
    for a in angles:
        rad = np.deg2rad(a)
        out.append(dot(cx + r * np.cos(rad), cy + r * np.sin(rad), size, color))
    return "".join(out)


def _cross(cx, cy, col=RED, arm=3.4, sw=1.5):
    return (line(cx - arm, cy - arm, cx + arm, cy + arm, col, sw)
            + line(cx - arm, cy + arm, cx + arm, cy - arm, col, sw))


def ch06_ionic_covalent():
    w, h = 760, 300
    b = [t(380, 22, "IONIC AND COVALENT BONDING — DOT-AND-CROSS", size=13.2, weight="bold")]

    # ── panel A: sodium chloride
    b.append(t(140, 46, "A · IONIC (NaCl)", size=9.6, weight="bold", fill=GREEN))
    b.append(_atom(72, 132, 22, "Na", GREEN_LIGHT, GREEN, 10.4))
    b.append(t(72, 172, "loses its one", size=7.2, fill=MUTED))
    b.append(t(72, 183, "outer electron", size=7.2, fill=MUTED))
    b.append(arrow2(100, 132, 128, 132, color=GREEN, sw=1.4, size=7))
    b.append(t(114, 124, "e⁻", size=7.6, fill=GREEN, weight="bold"))
    b.append(_atom(198, 132, 26, "", BLUE_LIGHT, BLUE))
    b.append(t(198, 136, "Cl", size=12.0, weight="bold", fill=NAVY))
    for a in range(0, 360, 45):
        rad = np.deg2rad(a)
        b.append(_cross(198 + 30 * np.cos(rad), 132 + 30 * np.sin(rad)))
    b.append(t(198, 74, "[Cl]⁻ — eight electrons,", size=7.2, fill=SLATE))
    b.append(t(198, 85, "one gained from sodium", size=7.2, fill=SLATE))
    b.append(t(140, 208, "Na⁺ and Cl⁻ are held by the", size=7.8, fill=SLATE))
    b.append(t(140, 220, "attraction between opposite charges", size=7.8, fill=SLATE))

    # ── panel B: water
    ox, oy = 380, 118
    b.append(t(380, 46, "B · COVALENT (H₂O)", size=9.6, weight="bold", fill=BLUE))
    b.append(_atom(ox, oy, 26, "O", BLUE_LIGHT, BLUE, 12.0))
    b.append(_atom(318, 182, 17, "H", "#FFFFFF", SLATE, 9.6))
    b.append(_atom(442, 182, 17, "H", "#FFFFFF", SLATE, 9.6))
    b.append(line(362, 136, 331, 168, SLATE, 1.2))
    b.append(line(398, 136, 429, 168, SLATE, 1.2))
    b.append(_pair(346.5, 152, 2.0, 2.0, BLUE, RED))
    b.append(_pair(413.5, 152, 2.0, 2.0, BLUE, RED))
    for a in (-38, -62, -118, -142):
        rad = np.deg2rad(a)
        b.append(dot(ox + 34 * np.cos(rad), oy + 34 * np.sin(rad), 2.6, RED))
    b.append(t(380, 216, "two bonding pairs and two lone pairs", size=7.8, fill=SLATE))

    # ── panel C: carbon dioxide
    b.append(t(620, 46, "C · DOUBLE BONDS (CO₂)", size=9.6, weight="bold", fill=PURPLE))
    b.append(_atom(620, 130, 24, "C", PURPLE_LIGHT, PURPLE, 11.4))
    b.append(_atom(534, 130, 22, "O", BLUE_LIGHT, BLUE))
    b.append(_atom(706, 130, 22, "O", BLUE_LIGHT, BLUE))
    b.append(line(558, 122, 596, 122, SLATE, 1.0))
    b.append(line(558, 138, 596, 138, SLATE, 1.0))
    b.append(line(644, 122, 682, 122, SLATE, 1.0))
    b.append(line(644, 138, 682, 138, SLATE, 1.0))
    for cx in (570, 584):
        b.append(_pair(cx, 122, 0, 2.2, BLUE, BLUE))
        b.append(_pair(cx, 138, 0, 2.2, RED, RED))
    for cx in (656, 670):
        b.append(_pair(cx, 122, 0, 2.2, BLUE, BLUE))
        b.append(_pair(cx, 138, 0, 2.2, RED, RED))
    for a in (90, 270):
        rad = np.deg2rad(a)
        b.append(dot(534 + 32 * np.cos(rad), 130 + 32 * np.sin(rad), 2.6, BLUE))
        b.append(dot(706 + 32 * np.cos(rad), 130 + 32 * np.sin(rad), 2.6, BLUE))
    b.append(t(620, 216, "O = C = O — two shared pairs in each bond", size=7.8, fill=SLATE))

    b.append(rect(24, 246, 712, 40, GREEN_LIGHT, GREEN, 8, 1.1))
    b.append(t(380, 263, "Ionic: electrons are transferred, and the ions then attract one another.   Covalent: electrons are shared between two atoms.",
               size=8.4, weight="bold", fill=GREEN))
    b.append(t(380, 279, "Crosses show electrons that came from one atom; dots show electrons from the other — the origin is the only difference.",
               size=8.0, fill=SLATE))
    write_svg("ch06_ionic_covalent.svg", svg(w, h, "\n".join(b)))


def ch06_structures():
    w, h = 760, 340
    b = [t(380, 22, "FOUR KINDS OF STRUCTURE AND WHAT THEY DO TO A MELTING POINT", size=13.0, weight="bold")]

    panels = [(26, "IONIC", "NaCl", GREEN, GREEN_LIGHT),
              (212, "SIMPLE MOLECULAR", "I₂", BLUE, BLUE_LIGHT),
              (398, "GIANT COVALENT", "diamond", AMBER, AMBER_LIGHT),
              (584, "METALLIC", "iron", PURPLE, PURPLE_LIGHT)]
    for x, title, ex, col, light in panels:
        b.append(rect(x, 40, 160, 176, "#FFFFFF", col, 8, 1.3))
        b.append(f'<rect x="{x}" y="40" width="160" height="4.5" rx="2.2" fill="{col}"/>')
        b.append(t(x + 80, 62, title, size=8.6, weight="bold", fill=col))
        b.append(t(x + 80, 76, ex, size=7.6, fill=MUTED))

    # ionic lattice
    for r in range(4):
        for c in range(4):
            cx, cy = 46 + c * 30, 100 + r * 28
            sym = "+" if (r + c) % 2 == 0 else "−"
            b.append(dot(cx, cy, 8.5, "#FFFFFF", GREEN, 1.1))
            b.append(t(cx, cy + 4, sym, size=9.6, weight="bold", fill=GREEN))

    # simple molecular — four separate little molecules
    for (cx, cy) in ((228, 104), (300, 104), (264, 156)):
        b.append(dot(cx - 9, cy, 9, BLUE_LIGHT, BLUE, 1.1))
        b.append(dot(cx + 9, cy, 9, BLUE_LIGHT, BLUE, 1.1))
    b.append(t(264, 190, "weak forces between molecules", size=7.0, fill=MUTED))

    # giant covalent — a small diamond network
    nodes = [(438, 92), (478, 92), (418, 130), (458, 130), (498, 130), (438, 168), (478, 168)]
    edges = [(0, 2), (1, 3), (2, 3), (3, 4), (2, 5), (3, 6), (4, 6), (5, 6), (0, 3), (1, 4)]
    for i, j in edges:
        b.append(line(nodes[i][0], nodes[i][1], nodes[j][0], nodes[j][1], AMBER, 1.0))
    for (cx, cy) in nodes:
        b.append(dot(cx, cy, 6.2, AMBER_LIGHT, AMBER, 1.0))

    # metallic
    for r in range(3):
        for c in range(3):
            cx, cy = 610 + c * 44, 104 + r * 34
            b.append(dot(cx, cy, 9.5, PURPLE_LIGHT, PURPLE, 1.1))
            b.append(t(cx, cy + 4, "+", size=9.4, weight="bold", fill=PURPLE))
    b.append(dot(600, 196, 2.2, PURPLE))
    b.append(t(612, 199, "= delocalised electron", size=6.8, fill=PURPLE, anchor="start"))
    rng = np.random.default_rng(7)
    for _ in range(14):
        cx, cy = rng.uniform(592, 736), rng.uniform(92, 178)
        b.append(dot(cx, cy, 2.2, PURPLE))

    # properties
    props = [("high m.p. · conducts when molten", GREEN),
             ("low m.p. · does not conduct", BLUE),
             ("very high m.p. · hard · no conduction", AMBER),
             ("conducts · malleable · ductile", PURPLE)]
    for (x, _, _, _, _), (p, col) in zip(panels, props):
        b.append(rect(x, 226, 160, 44, "#FFFFFF", col, 7, 1.0))
        words = p.split(" · ")
        for i, wd in enumerate(words):
            b.append(t(x + 80, 242 + i * 12, wd, size=7.4, fill=SLATE))

    b.append(rect(26, 288, 708, 40, GREEN_LIGHT, GREEN, 8, 1.1))
    b.append(t(380, 305, "Melting point tells you the structure: strong continuous bonds throughout a giant structure give a high melting point,",
               size=8.4, weight="bold", fill=GREEN))
    b.append(t(380, 320, "weak forces between separate molecules give a low one — and only mobile ions or electrons can carry a current.",
               size=8.4, fill=SLATE))
    write_svg("ch06_structures.svg", svg(w, h, "\n".join(b)))


# ── recap cards ───────────────────────────────────────────────────────────
def recap_cards_d():
    recap_card("recap_ch05.svg", "Chapter 5 recap card — the periodic table and periodicity", [
        ("Layout", "Groups are columns (same outer electrons), periods are rows (same number of shells)."),
        ("Across a period", "Nuclear charge rises, radius falls, ionisation energy rises, metallic character falls."),
        ("Down a group", "A new shell is added: radius rises, ionisation energy falls, metallic character rises."),
        ("Groups to know", "I alkali metals, II alkaline earth, VII halogens, 0 noble gases, plus the transition block."),
    ])
    recap_card("recap_ch06.svg", "Chapter 6 recap card — chemical bonding", [
        ("Ionic", "Metal gives electrons to a non-metal: ions, giant lattice, high m.p., conducts when molten."),
        ("Covalent", "Two non-metals share pairs: simple molecules (low m.p.) or giant covalent (diamond, silica)."),
        ("Metallic", "Positive ions in a sea of delocalised electrons: conducts, malleable, ductile."),
        ("Forces", "Intermolecular forces are weak; hydrogen bonds are the strongest of them — hence ice floats."),
    ])


def recap_cards_e():
    pass
