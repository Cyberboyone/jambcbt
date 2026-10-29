"""Volume 3 diagrams — inheritance, variation and evolution."""

from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from common import (recap_card, GREEN, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, BORDER,
                    AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE,
                    PURPLE_LIGHT, write_svg, svg, t, lines, rect, arrow, arrow2, line,
                    card, save, dot, poly, path)


def _square(x, y, cw, ch, top, side, cells):
    b = []
    for i, g in enumerate(top):
        b.append(rect(x + cw + i * cw, y, cw, ch, GREEN_LIGHT, GREEN, 3, 1.1))
        b.append(t(x + cw + i * cw + cw / 2, y + ch / 2 + 5, g, size=12.5, weight="bold", fill=GREEN))
    for j, g in enumerate(side):
        b.append(rect(x, y + ch + j * ch, cw, ch, GREEN_LIGHT, GREEN, 3, 1.1))
        b.append(t(x + cw / 2, y + ch + j * ch + ch / 2 + 5, g, size=12.5, weight="bold", fill=GREEN))
    for j, row in enumerate(cells):
        for i, (label, col) in enumerate(row):
            cx, cy = x + cw + i * cw, y + ch + j * ch
            b.append(rect(cx, cy, cw, ch, "#FFFFFF", BORDER, 2, 1.0))
            b.append(t(cx + cw / 2, cy + ch / 2 + 5, label, size=12.5, weight="bold", fill=col))
    return b


def _chw(ch: str, size: float, sup: bool) -> float:
    factor = {"I": 0.33, "i": 0.30, "A": 0.74, "B": 0.72, "X": 0.74, "Y": 0.70,
              "b": 0.58, " ": 0.30, "o": 0.58, "r": 0.40}.get(ch, 0.62)
    return size * factor * (0.72 if sup else 1.0)


def genotype(cx, y, parts, size=10.4, fill=NAVY, weight="bold"):
    """Draw a genotype with true superscripts, centred on cx.

    parts is a list of (text, raised): raised parts are printed smaller and
    lifted four units, which is how an allele is written on paper.
    """
    widths = [sum(_chw(ch, size, bool(sup)) for ch in text) + 1.7 for text, sup in parts]
    x = cx - sum(widths) / 2
    out = []
    for (text, sup), w in zip(parts, widths):
        out.append(t(x, y - (4.2 if sup else 0), text, size=size * (0.72 if sup else 1.0),
                     fill=fill, anchor="start", weight=weight))
        x += w
    return "".join(out)


# ── chapter 2: the crossing square ────────────────────────────────────────
def ch02_monohybrid():
    w, h = 760, 400
    b = [t(380, 26, "A MONOHYBRID CROSS — TALL × SHORT, ALL THE WAY TO F2", size=13.0, weight="bold")]

    # parents
    b.append(t(120, 58, "PARENTS (P)", size=9.4, weight="bold", fill=MUTED))
    b.append(rect(44, 68, 156, 58, BLUE_LIGHT, BLUE, 8, 1.4))
    b.append(t(122, 92, "TT tall", size=12.5, weight="bold", fill=BLUE))
    b.append(t(122, 112, "homozygous", size=8.6, fill=SLATE))
    b.append(t(208, 102, "×", size=16, weight="bold"))
    b.append(rect(218, 68, 156, 58, RED_LIGHT, RED, 8, 1.4))
    b.append(t(296, 92, "tt short", size=12.5, weight="bold", fill=RED))
    b.append(t(296, 112, "homozygous", size=8.6, fill=SLATE))

    b.append(arrow2(378, 98, 424, 98, color=GREEN, sw=2.0))

    # F1
    b.append(t(548, 58, "F1 — every offspring identical", size=9.4, weight="bold", fill=MUTED))
    b.extend(_square(476, 74, 48, 36, ["T", "t"], ["T", "t"],
                     [[("Tt", NAVY), ("Tt", NAVY)], [("Tt", NAVY), ("Tt", NAVY)]]))
    b.append(t(548, 206, "all Tt — all tall", size=9.8, weight="bold", fill=NAVY))

    # F2
    b.append(t(120, 240, "F2 — cross the F1 with itself (Tt × Tt)", size=9.4, weight="bold", fill=MUTED))
    b.extend(_square(50, 254, 48, 36, ["T", "t"], ["T", "t"],
                     [[("TT", BLUE), ("Tt", NAVY)], [("Tt", NAVY), ("tt", RED)]]))
    b.append(t(122, 386, "3 tall : 1 short", size=9.8, weight="bold", fill=GREEN))

    # the ratios, spelled out
    b.append(rect(392, 254, 328, 118, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(556, 278, "Genotypes", size=9.4, weight="bold", fill=GREEN))
    b.append(t(556, 298, "1 TT : 2 Tt : 1 tt", size=11.0, weight="bold", fill=NAVY))
    b.append(t(556, 324, "Phenotypes", size=9.4, weight="bold", fill=GREEN))
    b.append(t(556, 344, "3 tall : 1 short", size=11.0, weight="bold", fill=NAVY))
    b.append(t(556, 364, "3 : 1 is a phenotype ratio; 1 : 2 : 1 is the genotype ratio", size=8.0, fill=MUTED))
    write_svg("ch02_monohybrid.svg", svg(w, h, "\n".join(b)))


def ch02_testcross():
    w, h = 760, 296
    b = [t(380, 24, "THE TEST CROSS — FINDING OUT WHICH GENOTYPE A TALL PLANT HAS", size=12.6, weight="bold")]

    b.append(t(190, 58, "IF THE PLANT IS TT", size=10.2, weight="bold", fill=BLUE))
    b.extend(_square(104, 70, 44, 40, ["T", "t"], ["T", "t"],
                     [[("Tt", NAVY), ("Tt", NAVY)], [("Tt", NAVY), ("Tt", NAVY)]]))
    b.append(t(192, 70 + 80 + 24, "all Tt — all tall", size=9.6, weight="bold", fill=NAVY))

    b.append(t(570, 58, "IF THE PLANT IS Tt", size=10.2, weight="bold", fill=RED))
    b.extend(_square(484, 70, 44, 40, ["T", "t"], ["t", "t"],
                     [[("Tt", NAVY), ("tt", RED)], [("Tt", NAVY), ("tt", RED)]]))
    b.append(t(572, 70 + 80 + 24, "1 tall : 1 short", size=9.6, weight="bold", fill=RED))

    b.append(rect(60, 214, 640, 66, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 236, "Rule: cross the unknown plant with a homozygous recessive (tt)", size=10.2, weight="bold", fill=GREEN))
    b.append(t(380, 256, "One short offspring proves the unknown parent carried t — so it was Tt.", size=9.0, fill=SLATE))
    b.append(t(380, 272, "No short offspring at all means it was TT (all the offspring are Tt).", size=9.0, fill=SLATE))
    write_svg("ch02_testcross.svg", svg(w, h, "\n".join(b)))


def ch02_pedigree():
    w, h = 760, 340
    b = [t(380, 24, "SEX LINKAGE — COLOUR BLINDNESS IN ONE FAMILY", size=13.0, weight="bold")]
    b.append(t(380, 46, "carrier mother × normal father: half the sons are colour blind, no daughter is", size=9.2, fill=MUTED))

    def male(cx, cy, label, affected=False):
        b.append(rect(cx - 15, cy - 15, 30, 30, RED_LIGHT if affected else "#FFFFFF",
                      RED if affected else NAVY, 2, 2.0))
        b.append(t(cx, cy + 32, label, size=8.6, fill=SLATE))

    def female(cx, cy, label, carrier=False):
        b.append(dot(cx, cy, 16, "#FFFFFF", RED if carrier else NAVY, 2.0))
        if carrier:
            b.append(dot(cx, cy, 4.5, RED))
        b.append(t(cx, cy + 34, label, size=8.6, fill=SLATE))

    female(250, 96, "carrier mother")
    b.append(genotype(250, 70, [("X", 0), ("B", 1), ("X", 0), ("b", 1)], size=10.0, fill=RED))
    b.append(line(266, 96, 320, 96, color=SLATE, sw=2.0))
    male(336, 96, "normal father")
    b.append(genotype(336, 70, [("X", 0), ("B", 1), ("Y", 0)], size=10.0, fill=NAVY))

    b.append(line(293, 112, 293, 150, color=SLATE, sw=1.6))
    b.append(line(150, 150, 450, 150, color=SLATE, sw=1.6))
    for cx, label, carrier, affected, sex in ((150, "carrier daughter", True, False, "f"),
                                              (250, "normal daughter", False, False, "f"),
                                              (350, "normal son", False, False, "m"),
                                              (450, "colour-blind son", False, True, "m")):
        b.append(line(cx, 150, cx, 172, color=SLATE, sw=1.6))
        if sex == "f":
            female(cx, 190, label, carrier=carrier)
        else:
            male(cx, 190, label, affected=affected)

    b.append(rect(504, 62, 232, 104, "#F8FAFC", BORDER, 8, 1.1))
    b.append(t(620, 82, "Key", size=9.4, weight="bold"))
    b.append(rect(518, 92, 13, 13, "#FFFFFF", NAVY, 1, 1.6))
    b.append(t(538, 103, "male", size=8.6, fill=SLATE, anchor="start"))
    b.append(dot(524, 120, 6.5, "#FFFFFF", NAVY, 1.6))
    b.append(t(538, 124, "female", size=8.6, fill=SLATE, anchor="start"))
    b.append(dot(524, 140, 3.5, RED))
    b.append(t(538, 144, "carries the allele", size=8.6, fill=SLATE, anchor="start"))
    b.append(rect(504, 176, 232, 34, RED_LIGHT, RED, 8, 1.1))
    b.append(t(620, 197, "sons get their X from the mother only", size=8.8, weight="bold", fill=RED))

    b.append(rect(60, 252, 640, 62, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 274, "A sex-linked recessive shows up in sons whenever the mother carries it,", size=9.4, weight="bold", fill=GREEN))
    b.append(t(380, 294, "because a son has only one X — there is no second copy to hide the allele.", size=9.4, weight="bold", fill=GREEN))
    write_svg("ch02_pedigree.svg", svg(w, h, "\n".join(b)))


def ch02_bloodgroups():
    w, h = 760, 330
    b = [t(380, 24, "MULTIPLE ALLELES — THE ABO BLOOD GROUPS", size=13.0, weight="bold")]
    b.append(t(380, 46, "one gene, three alleles (A, B and i), six genotypes, four phenotypes", size=9.2, fill=MUTED))

    rows = [("A", [("I", 0), ("A", 1), ("I", 0), ("A", 1), (" or ", 0), ("I", 0), ("A", 1), ("i", 0)],
             "A antigen on the red cell"),
            ("B", [("I", 0), ("B", 1), ("I", 0), ("B", 1), (" or ", 0), ("I", 0), ("B", 1), ("i", 0)],
             "B antigen on the red cell"),
            ("AB", [("I", 0), ("A", 1), ("I", 0), ("B", 1)], "both antigens — codominance"),
            ("O", [("i", 0), ("i", 0)], "neither antigen")]
    cols = [96, 210, 380, 640]
    heads = ["Blood group", "Genotype(s)", "What is on the red cell"]
    b.append(rect(60, 66, 640, 30, NAVY, NAVY, 6, 1.0))
    for cx, head in zip((cols[0], cols[1], (cols[2] + cols[3]) / 2), heads):
        b.append(t(cx, 86, head, size=9.2, weight="bold", fill="#FFFFFF"))
    for i, (grp, gen, what) in enumerate(rows):
        y = 96 + i * 40
        b.append(rect(60, y, 640, 40, "#FFFFFF" if i % 2 == 0 else "#F8FAFC", BORDER, 0, 0.8))
        b.append(t(cols[0], y + 25, grp, size=13, weight="bold", fill=GREEN))
        b.append(genotype(cols[1], y + 25, gen))
        b.append(t((cols[2] + cols[3]) / 2, y + 25, what, size=9.4, fill=SLATE))
    b.append(rect(60, 262, 640, 54, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 284, "The A and B alleles are codominant with each other, and both are dominant to i.", size=9.4, weight="bold", fill=GREEN))
    b.append(t(380, 302, "That is why a group AB parent × a group O parent gives only A and B children.", size=9.4, fill=SLATE))
    write_svg("ch02_bloodgroups.svg", svg(w, h, "\n".join(b)))


# ── chapter 3: variation and mutation ─────────────────────────────────────
def ch03_variation():
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(7.6, 2.9))

    h = np.random.default_rng(7).normal(170, 7, 4000)
    ax1.hist(h, bins=30, color=GREEN, edgecolor="white", linewidth=0.6)
    ax1.set_title("Continuous: body height", fontsize=9.5, color=NAVY, fontweight="bold")
    ax1.set_xlabel("height (cm)", fontsize=8)
    ax1.set_ylabel("number of students", fontsize=8)
    ax1.tick_params(labelsize=7)
    for s in ("top", "right"):
        ax1.spines[s].set_visible(False)
    ax1.grid(axis="y", color="#E2E8F0", lw=0.7)
    ax1.set_axisbelow(True)

    groups = ["O", "A", "B", "AB"]
    counts = [44, 30, 21, 5]
    ax2.bar(groups, counts, color=[GREEN, BLUE, AMBER, PURPLE], edgecolor="white", width=0.62)
    ax2.set_title("Discontinuous: ABO blood group", fontsize=9.5, color=NAVY, fontweight="bold")
    ax2.set_xlabel("blood group", fontsize=8)
    ax2.set_ylabel("number of students", fontsize=8)
    ax2.tick_params(labelsize=7)
    for s in ("top", "right"):
        ax2.spines[s].set_visible(False)
    ax2.grid(axis="y", color="#E2E8F0", lw=0.7)
    ax2.set_axisbelow(True)

    fig.tight_layout()
    save(fig, "ch03_variation.svg")


def ch03_mutation():
    w, h = 760, 320
    b = [t(380, 24, "MUTATION — ONE BASE CHANGED, ONE CHARACTERISTIC CHANGED", size=12.8, weight="bold")]

    b.append(t(150, 56, "Normal gene", size=9.6, weight="bold", fill=BLUE))
    for i, base in enumerate("CTT"):
        b.append(rect(96 + i * 34, 68, 30, 26, BLUE_LIGHT, BLUE, 4, 1.2))
        b.append(t(111 + i * 34, 86, base, size=12, weight="bold", fill=BLUE))
    b.append(arrow2(196, 82, 226, 82, color=SLATE, sw=1.8))
    b.append(rect(232, 68, 84, 26, "#F1F5F9", BORDER, 4, 1.0))
    b.append(t(274, 86, "glutamic acid", size=8.6, fill=SLATE))
    b.append(t(150, 116, "normal haemoglobin, round red cell", size=8.6, fill=MUTED))

    b.append(t(150, 160, "Mutated gene", size=9.6, weight="bold", fill=RED))
    for i, base in enumerate("CAT"):
        b.append(rect(96 + i * 34, 172, 30, 26, RED_LIGHT, RED, 4, 1.2))
        b.append(t(111 + i * 34, 190, base, size=12, weight="bold", fill=RED))
    b.append(arrow2(196, 186, 226, 186, color=SLATE, sw=1.8))
    b.append(rect(232, 172, 84, 26, "#F1F5F9", BORDER, 4, 1.0))
    b.append(t(274, 190, "valine", size=8.6, fill=SLATE))
    b.append(t(150, 220, "sickle haemoglobin, sickle cell", size=8.6, fill=MUTED))

    b.append(t(150, 250, "one base substituted: T → A", size=8.8, weight="bold", fill=MUTED))

    b.append(rect(360, 56, 356, 108, BLUE_LIGHT, BLUE, 8, 1.2))
    b.append(t(538, 76, "Gene mutation", size=9.8, weight="bold", fill=BLUE))
    b.append(t(538, 96, "one or a few bases changed — the protein is altered", size=8.6, fill=SLATE))
    b.append(t(538, 114, "sickle-cell anaemia, albinism, haemophilia", size=8.6, fill=SLATE))
    b.append(t(538, 132, "not visible under a microscope", size=8.6, fill=SLATE))
    b.append(t(538, 152, "can be inherited if it is in a gamete", size=8.6, fill=MUTED))

    b.append(rect(360, 176, 356, 108, AMBER_LIGHT, AMBER, 8, 1.2))
    b.append(t(538, 196, "Chromosome mutation", size=9.8, weight="bold", fill=AMBER))
    b.append(t(538, 216, "a whole chromosome or a piece of one is lost, doubled", size=8.6, fill=SLATE))
    b.append(t(538, 234, "or attached to the wrong partner", size=8.6, fill=SLATE))
    b.append(t(538, 252, "Down syndrome — an extra chromosome 21", size=8.6, fill=SLATE))
    b.append(t(538, 272, "visible in a karyotype", size=8.6, fill=MUTED))
    write_svg("ch03_mutation.svg", svg(w, h, "\n".join(b)))


# ── chapter 4: evolution ──────────────────────────────────────────────────
def ch04_homologous():
    w, h = 760, 340
    b = [t(380, 26, "HOMOLOGOUS AND ANALOGOUS STRUCTURES", size=13.0, weight="bold")]
    b.append(t(380, 46, "same plan, different job (homologous)  ·  different plan, same job (analogous)", size=9.0, fill=MUTED))

    # the background panel is drawn first, so the limbs sit on top of it
    b.append(rect(56, 62, 380, 240, GREEN_LIGHT, GREEN, 8, 1.3))
    b.append(t(246, 84, "HOMOLOGOUS", size=10.4, weight="bold", fill=GREEN))

    def limb(x, label, note, col, light):
        b.append(line(x, 104, x, 152, color=col, sw=8))            # humerus
        b.append(dot(x, 104, 5, col))                               # shoulder joint
        b.append(line(x - 5, 154, x - 12, 196, color=col, sw=4.6))  # radius
        b.append(line(x + 5, 154, x + 12, 196, color=col, sw=4.6))  # ulna
        b.append(dot(x, 196, 4, col))                               # wrist
        for dx in (-19, -6.5, 6.5, 19):                             # digits
            b.append(line(x + dx * 0.5, 198, x + dx, 232, color=col, sw=3.4, ))
        b.append(t(x, 242, label, size=9.4, weight="bold"))
        b.append(t(x, 258, note, size=8.2, fill=MUTED))

    limb(120, "human arm", "grasping", NAVY, None)
    limb(246, "bat wing", "flying", BLUE, None)
    limb(372, "whale flipper", "swimming", PURPLE, None)
    b.append(t(246, 278, "the same bones in the same order:", size=8.6, weight="bold", fill=GREEN))
    b.append(t(246, 292, "one bone, two bones, several small bones, five digits", size=8.4, fill=SLATE))

    # analogous structures
    b.append(rect(462, 62, 240, 118, AMBER_LIGHT, AMBER, 8, 1.3))
    b.append(t(582, 84, "ANALOGOUS", size=10.4, weight="bold", fill=AMBER))
    b.append(path("M 512 122 q 30 -30 48 0 q -18 30 -48 0", fill="#FFFFFF", stroke=AMBER, sw=2.0))
    b.append(path("M 512 122 q 30 30 48 0 q -18 -30 -48 0", fill="#FFFFFF", stroke=AMBER, sw=2.0))
    b.append(t(536, 160, "insect wing", size=8.2, fill=SLATE))
    b.append(path("M 596 132 q 22 -28 50 -8 q 4 14 -16 20 q -20 4 -34 -12", fill=BLUE_LIGHT, stroke=BLUE, sw=2.0))
    b.append(t(624, 160, "bird wing", size=8.2, fill=SLATE))

    b.append(rect(462, 190, 240, 112, "#F8FAFC", BORDER, 8, 1.1))
    b.append(t(582, 210, "What each kind proves", size=9.2, weight="bold"))
    b.append(t(582, 230, "Homologous: common ancestry,", size=8.2, fill=SLATE))
    b.append(t(582, 246, "even when the jobs differ.", size=8.2, fill=SLATE))
    b.append(t(582, 264, "Analogous: the same job solved", size=8.2, fill=SLATE))
    b.append(t(582, 280, "twice by different ancestors —", size=8.2, fill=SLATE))
    b.append(t(582, 294, "no common ancestry implied.", size=8.2, fill=SLATE))
    write_svg("ch04_homologous.svg", svg(w, h, "\n".join(b)))


def ch04_selection():
    w, h = 760, 330
    b = [t(380, 24, "NATURAL SELECTION IN FIVE STEPS", size=13.0, weight="bold")]

    steps = [
        ("1", "Variation", ["individuals", "differ — and some", "of the difference", "is inherited"]),
        ("2", "Competition", ["far more young", "are produced", "than can", "possibly survive"]),
        ("3", "Selection", ["the best", "adapted survive", "and go on", "to breed"]),
        ("4", "Inheritance", ["their alleles", "are passed to", "the next", "generation"]),
        ("5", "Change", ["the population", "shifts, and the", "shift is", "evolution"]),
    ]
    for i, (num, head, body) in enumerate(steps):
        x = 56 + i * 132
        b.append(rect(x, 60, 118, 118, "#FFFFFF", GREEN, 8, 1.4))
        b.append(f'<rect x="{x}" y="60" width="118" height="5" rx="2.5" fill="{GREEN}"/>')
        b.append(dot(x + 20, 84, 11, GREEN))
        b.append(t(x + 20, 88, num, size=10, weight="bold", fill="#FFFFFF"))
        b.append(t(x + 62, 88, head, size=9.2, weight="bold"))
        for j, ln in enumerate(body):
            b.append(t(x + 59, 112 + j * 14, ln, size=7.8, fill=SLATE))
        if i < 4:
            b.append(arrow2(x + 120, 120, x + 130, 120, color=GREEN, sw=1.6, size=6.5))

    # moth graph
    ax_left, ax_bottom, ax_w, ax_h = 90, 262, 300, 50
    b.append(line(ax_left, ax_bottom, ax_left + ax_w, ax_bottom, color=SLATE, sw=1.4))
    b.append(line(ax_left, ax_bottom, ax_left, ax_bottom - ax_h, color=SLATE, sw=1.4))
    pts_dark = [(0, 4), (10, 8), (20, 22), (30, 58), (40, 84), (50, 96)]
    pts_light = [(0, 96), (10, 90), (20, 74), (30, 40), (40, 16), (50, 6)]
    for pts, col in ((pts_light, "#CBD5E1"), (pts_dark, NAVY)):
        poly_pts = [(ax_left + p[0] * (ax_w / 50), ax_bottom - p[1] * (ax_h / 100)) for p in pts]
        d = "M " + " L ".join(f"{x:.1f} {y:.1f}" for x, y in poly_pts)
        b.append(path(d, stroke=col, sw=2.6))
    b.append(t(ax_left + ax_w / 2, ax_bottom + 34, "1850 → 1950 (soot on the trunks)", size=8.2, fill=SLATE))
    b.append(t(ax_left + 8, ax_bottom - ax_h - 8, "moths (%)", size=7.6, fill=MUTED, anchor="start"))
    b.append(t(ax_left + ax_w - 6, ax_bottom - ax_h - 8, "dark", size=8.0, fill=NAVY, anchor="end"))
    b.append(t(ax_left + ax_w - 6, ax_bottom - 8, "pale", size=8.0, fill=MUTED, anchor="end"))

    b.append(rect(430, 196, 270, 110, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(565, 216, "The peppered moth", size=9.6, weight="bold", fill=GREEN))
    b.append(t(565, 236, "Soot killed the lichen on tree trunks,", size=8.4, fill=SLATE))
    b.append(t(565, 252, "so pale moths were seen and eaten and", size=8.4, fill=SLATE))
    b.append(t(565, 268, "dark moths survived. After clean-air laws", size=8.4, fill=SLATE))
    b.append(t(565, 284, "the pale form returned — evolution in", size=8.4, fill=SLATE))
    b.append(t(565, 298, "twenty years, and it was observed.", size=8.4, fill=SLATE))
    write_svg("ch04_selection.svg", svg(w, h, "\n".join(b)))


def ch04_fossils():
    w, h = 760, 344
    b = [t(380, 26, "THE FOSSIL RECORD — OLDER ROCKS, SIMPLER FORMS", size=12.8, weight="bold")]
    b.append(t(380, 46, "a rock face, read from the top down: youngest at the top, oldest at the bottom", size=8.8, fill=MUTED))

    bands = [("Youngest rock", "horses and modern mammals", 10.4, "#F1F5F9"),
             ("", "large mammals and birds", 8.6, "#EAE4DC"),
             ("", "dinosaurs and ferns", 7.0, "#DFD8CE"),
             ("", "early reptiles and fish", 5.6, "#D6CEC5"),
             ("Oldest rock", "single-celled organisms only", 3.8, "#CCC4BA")]
    for i, (label, what, radius, col) in enumerate(bands):
        y = 62 + i * 54
        b.append(rect(60, y, 380, 50, col, BORDER, 3, 1.0))
        text = f"{label} — {what}" if label else what
        b.append(t(76, y + 29, text, size=8.6, weight="bold" if label else "normal", fill=NAVY if label else SLATE, anchor="start"))
        b.append(dot(408, y + 25, radius * 0.9, "#FFFFFF", SLATE, 1.3))

    b.append(t(408, 336, "fossil size decreases downwards", size=7.4, fill=MUTED))

    b.append(rect(470, 62, 232, 246, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(586, 84, "What fossils prove", size=9.8, weight="bold", fill=GREEN))
    for i, s2 in enumerate(("The species of the past are",
                            "not the species alive today.",
                            "",
                            "Simpler forms lie in older rock,",
                            "so life has changed over time.",
                            "",
                            "Transitional fossils such as",
                            "Archaeopteryx carry the features",
                            "of two groups at once: one group",
                            "can be ancestral to another.",
                            "",
                            "Radiometric dating dates the rock,",
                            "so the order in the strata is an",
                            "order in time, not an opinion.")):
        b.append(t(586, 108 + i * 14.5, s2, size=8.0, fill=SLATE))
    write_svg("ch04_fossils.svg", svg(w, h, "\n".join(b)))


def recap_cards_b():
    recap_card("recap_ch02.svg", "Chapter 2 recap card — inheritance, probability and sex linkage", [
        ("Monohybrid", "Tt × Tt gives 1 TT : 2 Tt : 1 tt and 3 tall : 1 short. The 3 : 1 is the phenotype ratio."),
        ("Test cross", "Cross with a homozygous recessive: any recessive offspring proves the parent was heterozygous."),
        ("Sex linkage", "Sons take their only X from the mother, so a recessive allele she carries shows in half her sons."),
        ("Probability", "Multiply the chance of each gamete; each fertilisation is independent of the last."),
    ])


def recap_cards_c():
    recap_card("recap_ch03.svg", "Chapter 3 recap card — variation, mutation and adaptation", [
        ("Continuous", "Height, mass, leaf length: a range of values, measured, controlled by many genes plus environment."),
        ("Discontinuous", "Blood group, sex, tongue-rolling: distinct classes, counted, controlled by one or a few genes."),
        ("Mutation", "A change in the base sequence of DNA; most are harmful, some are neutral, a few are useful."),
        ("Adaptation", "An inherited feature that helps an organism survive in its habitat — the raw material of natural selection."),
    ])


def recap_cards_d():
    recap_card("recap_ch04.svg", "Chapter 4 recap card — evolution and the evidence for it", [
        ("Evolution", "A change in the inherited characteristics of a population over many generations."),
        ("Natural selection", "Variation, competition, selection, inheritance, change — the five steps in order."),
        ("Evidence", "Fossils, homologous structures, vestigial organs, embryos, biochemical similarities, observed selection."),
        ("Speciation", "Isolation stops gene flow; the separated populations accumulate differences until they cannot interbreed."),
    ])
