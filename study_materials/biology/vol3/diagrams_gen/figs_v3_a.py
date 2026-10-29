"""Volume 3 diagrams — heredity.

Every figure is hand-written SVG on the same 760-unit canvas as Volumes 1 and
2, so the three books look like one series.
"""

from __future__ import annotations

import matplotlib.pyplot as plt

from common import (recap_card, OUT, GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE,
                    MUTED, BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE,
                    BLUE_LIGHT, PURPLE, PURPLE_LIGHT, write_svg, svg, t, lines,
                    rect, arrow, arrow2, line, card, save, dot, poly)


def pcol(i: int) -> str:
    """Deterministic colour for a chromosome so the same pair always matches."""
    return [BLUE, RED, PURPLE, AMBER, GREEN][i % 5]


def pcol_light(i: int) -> str:
    return [BLUE_LIGHT, RED_LIGHT, PURPLE_LIGHT, AMBER_LIGHT, GREEN_LIGHT][i % 5]


WEIGHTS = [3, 3, 2, 2, 3, 2, 2, 2, 2, 3]
TITLES = ["1\nGenetics", "2\nInheritance", "3\nVariation", "4\nEvolution", "5\nEcology",
          "6\nInteractions", "7\nCycles", "8\nConservation", "9\nApplied",
          "10\nPractical"]


# ── front matter ───────────────────────────────────────────────────────────
def cover_banner():
    w, h = 760, 150
    b = [rect(0, 0, w, h, GREEN_LIGHT, GREEN, 10, 1.4),
         f'<rect x="0" y="0" width="{w}" height="6" rx="3" fill="{GREEN}"/>',
         t(380, 46, "HEREDITY  •  EVOLUTION  •  ECOLOGY", size=15, weight="bold"),
         t(380, 72, "Chromosomes and Genes, the Crossing Square, Sex Linkage and Mutation,", size=11, fill=SLATE),
         t(380, 90, "Natural Selection, Food Webs, Nutrient Cycles, Conservation and Applied Biology", size=11, fill=SLATE),
         t(380, 120, "300 drill questions · two full CBT mock papers · 120-question master bank · 60 rapid-fire pairs",
           size=9.4, fill=MUTED)]
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg=GREEN_LIGHT))


def utme_weight_chart():
    fig, ax = plt.subplots(figsize=(7.6, 3.0))
    colors = [GREEN if v >= 3 else (BLUE if v == 2 else PURPLE) for v in WEIGHTS]
    bars = ax.bar(TITLES, WEIGHTS, color=colors, edgecolor="white", linewidth=1.1, width=0.66)
    for b, v in zip(bars, WEIGHTS):
        ax.text(b.get_x() + b.get_width() / 2, v + 0.07, str(v), ha="center",
                fontsize=10, color=NAVY, fontweight="bold")
    ax.set_ylim(0, 3.7)
    ax.set_ylabel("Typical questions")
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)
    ax.set_yticks([0, 1, 2, 3])
    ax.tick_params(axis="x", labelsize=7.0)
    ax.grid(axis="y", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "utme_weight.svg")


# ── chapter 1: chromosomes, genes and meiosis ─────────────────────────────
def ch01_chromosome():
    w, h = 760, 350
    b = [t(380, 26, "FROM DNA TO A CHROMOSOME — AND A HOMOLOGOUS PAIR", size=13.0, weight="bold")]

    # left: DNA double helix drawn as a ladder
    b.append(t(120, 56, "DNA double helix", size=10.4, weight="bold", fill=GREEN))
    for i in range(9):
        y = 76 + i * 14
        b.append(line(80, y, 160, y, color=BORDER, sw=1.4))
        b.append(dot(80, y, 2.8, BLUE))
        b.append(dot(160, y, 2.8, RED))
    b.append(line(80, 76, 80, 188, color=BLUE, sw=3.0))
    b.append(line(160, 76, 160, 188, color=RED, sw=3.0))
    b.append(t(120, 210, "two strands, four bases", size=8.8, fill=MUTED))
    b.append(t(120, 224, "A pairs with T, G with C", size=8.8, fill=MUTED))

    b.append(arrow2(190, 132, 236, 132, color=GREEN, sw=2.0))

    # middle: a gene is a stretch of DNA
    b.append(t(340, 56, "A gene is a length of that DNA", size=10.4, weight="bold", fill=GREEN))
    b.append(rect(262, 108, 156, 40, "#FFFFFF", BORDER, 5, 1.2))
    for i in range(5):
        b.append(rect(267 + i * 29.5, 113, 26, 30,
                      [BLUE_LIGHT, RED_LIGHT, GREEN_LIGHT, AMBER_LIGHT, PURPLE_LIGHT][i], BORDER, 3, 1.0))
    b.append(t(340, 168, "each block is one gene — one protein", size=8.8, fill=MUTED))
    b.append(t(340, 182, "its position is called the locus", size=8.8, fill=MUTED))

    b.append(arrow2(436, 132, 480, 132, color=GREEN, sw=2.0))

    # right: a condensed chromosome
    b.append(t(610, 56, "Condensed chromosome", size=10.4, weight="bold", fill=GREEN))
    b.append(rect(596, 76, 20, 92, BLUE_LIGHT, BLUE, 9, 1.8))
    b.append(rect(624, 76, 20, 92, BLUE_LIGHT, BLUE, 9, 1.8))
    b.append(dot(620, 122, 7, BLUE))
    b.append(line(648, 96, 672, 96, color=MUTED, sw=0.9, dash="3 3"))
    b.append(t(676, 99, "sister chromatids", size=8.4, fill=SLATE, anchor="start"))
    b.append(line(648, 122, 672, 122, color=MUTED, sw=0.9, dash="3 3"))
    b.append(t(676, 125, "centromere", size=8.4, fill=SLATE, anchor="start"))

    # bottom strip: a homologous pair
    b.append(rect(60, 250, 640, 78, "#F8FAFC", BORDER, 8, 1.1))
    b.append(t(84, 276, "Homologous pair", size=9.8, weight="bold", fill=NAVY, anchor="start"))
    b.append(rect(196, 262, 15, 46, BLUE_LIGHT, BLUE, 7, 1.6))
    b.append(rect(217, 262, 15, 46, BLUE_LIGHT, BLUE, 7, 1.6))
    b.append(rect(258, 262, 15, 46, RED_LIGHT, RED, 7, 1.6))
    b.append(rect(279, 262, 15, 46, RED_LIGHT, RED, 7, 1.6))
    b.append(t(318, 278, "one chromosome from the mother (blue) and one from the father (red),", size=9.2, fill=SLATE, anchor="start"))
    b.append(t(318, 296, "carrying the same genes in the same order at the same loci.", size=9.2, fill=SLATE, anchor="start"))
    write_svg("ch01_chromosome.svg", svg(w, h, "\n".join(b)))


def ch01_meiosis():
    w, h = 760, 372
    b = [t(380, 26, "MEIOSIS — ONE DIPLOID CELL BECOMES FOUR HAPLOID CELLS", size=13.0, weight="bold")]

    def cell(cx, cy, r):
        b.append(dot(cx, cy, r, "#FFFFFF", SLATE, 1.6))

    def chrom(cx, cy, col, light, hgt=26, tilt=0):
        b.append(f'<rect x="{cx - 5}" y="{cy - hgt / 2}" width="10" height="{hgt}" rx="5" '
                 f'fill="{light}" stroke="{col}" stroke-width="1.5" '
                 f'transform="rotate({tilt} {cx} {cy})"/>')

    # 1. diploid cell
    cell(92, 120, 44)
    for i, dx in enumerate((-21, -7, 7, 21)):
        chrom(92 + dx, 120, pcol(0 if i < 2 else 1), pcol_light(0 if i < 2 else 1), 34)
    b.append(t(92, 186, "Diploid cell", size=9.8, weight="bold"))
    b.append(t(92, 202, "2n = 4, two pairs", size=8.6, fill=MUTED))

    b.append(arrow2(146, 120, 182, 120, color=GREEN, sw=2.0))
    b.append(t(164, 104, "interphase", size=8.2, fill=MUTED))
    b.append(t(164, 140, "DNA copied", size=8.2, fill=MUTED))

    # 2. prophase I: pairing and crossing over
    cell(252, 120, 44)
    chrom(240, 108, BLUE, BLUE_LIGHT, 40)
    chrom(254, 108, RED, RED_LIGHT, 40)
    chrom(240, 148, RED, RED_LIGHT, 24)
    chrom(254, 148, BLUE, BLUE_LIGHT, 24)
    b.append(t(252, 186, "Prophase I", size=9.8, weight="bold"))
    b.append(t(252, 202, "homologues pair and cross over", size=8.6, fill=MUTED))

    b.append(arrow2(306, 120, 342, 120, color=GREEN, sw=2.0))

    # 3. after meiosis I: two cells
    cell(404, 78, 34)
    chrom(396, 78, BLUE, BLUE_LIGHT, 28)
    chrom(412, 78, RED, RED_LIGHT, 28)
    cell(404, 166, 34)
    chrom(396, 166, RED, RED_LIGHT, 28)
    chrom(412, 166, BLUE, BLUE_LIGHT, 28)
    b.append(t(404, 216, "Meiosis I — homologues separate", size=9.8, weight="bold"))
    b.append(t(404, 232, "two haploid cells, 2n → n", size=8.6, fill=MUTED))

    b.append(arrow2(448, 120, 484, 120, color=GREEN, sw=2.0))

    # 4. after meiosis II: four cells
    for i, cy in enumerate((54, 106, 166, 218)):
        cell(548, cy, 22)
        chrom(548, cy, BLUE if i % 2 == 0 else RED, BLUE_LIGHT if i % 2 == 0 else RED_LIGHT, 24)
    b.append(t(548, 258, "Meiosis II — chromatids separate", size=9.8, weight="bold"))
    b.append(t(548, 274, "four different haploid gametes", size=8.6, fill=MUTED))

    # bottom strip: why it matters
    b.append(rect(60, 292, 640, 66, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(84, 314, "Why the examiner keeps asking:", size=9.6, weight="bold", fill=GREEN, anchor="start"))
    b.append(t(84, 334, "meiosis halves the chromosome number (so fertilisation restores it) and shuffles the alleles", size=9.0, fill=SLATE, anchor="start"))
    b.append(t(84, 350, "by crossing over and independent assortment — which is where all heritable variation comes from.", size=9.0, fill=SLATE, anchor="start"))
    write_svg("ch01_meiosis.svg", svg(w, h, "\n".join(b)))


# ── chapter 2: inheritance ────────────────────────────────────────────────
def _square(b, x, y, cw, ch, gametes_top, gametes_side, cells):
    """Draw a crossing square with gamete headers and result cells."""
    b.append(t(x + cw / 2, y - 8, "", size=8))
    for i, g in enumerate(gametes_top):
        b.append(rect(x + cw + i * cw, y, cw, ch, GREEN_LIGHT, GREEN, 3, 1.1))
        b.append(t(x + cw + i * cw + cw / 2, y + ch / 2 + 5, g, size=12.5, weight="bold", fill=GREEN))
    for j, g in enumerate(gametes_side):
        b.append(rect(x, y + ch + j * ch, cw, ch, GREEN_LIGHT, GREEN, 3, 1.1))
        b.append(t(x + cw / 2, y + ch + j * ch + ch / 2 + 5, g, size=12.5, weight="bold", fill=GREEN))
    for j, row in enumerate(cells):
        for i, (label, col) in enumerate(row):
            cx = x + cw + i * cw
            cy = y + ch + j * ch
            b.append(rect(cx, cy, cw, ch, "#FFFFFF", BORDER, 2, 1.0))
            b.append(t(cx + cw / 2, cy + ch / 2 + 5, label, size=12.5, weight="bold", fill=col))




def ch02_monohybrid():
    w, h = 760, 330
    b = [t(380, 24, "A MONOHYBRID CROSS — TALL × SHORT, ALL THE WAY TO F2", size=13.0, weight="bold")]

    # parents
    b.append(t(120, 62, "PARENTS (P)", size=9.6, weight="bold", fill=MUTED))
    b.append(rect(46, 74, 148, 56, BLUE_LIGHT, BLUE, 8, 1.4))
    b.append(t(120, 98, "TT tall", size=12.5, weight="bold", fill=BLUE))
    b.append(t(120, 118, "homozygous", size=8.6, fill=SLATE))
    b.append(rect(214, 74, 148, 56, RED_LIGHT, RED, 8, 1.4))
    b.append(t(288, 98, "tt short", size=12.5, weight="bold", fill=RED))
    b.append(t(288, 118, "homozygous", size=8.6, fill=SLATE))
    b.append(t(191, 106, "×", size=16, weight="bold"))

    # F1 square
    _square(b, 396, 62, 44, 40, ["T", "t"], ["T", "t"],
            [[("Tt", NAVY), ("Tt", NAVY)], [("Tt", NAVY), ("Tt", NAVY)]])
    b.append(t(490, 62 + 40 * 2 + 26, "F1: every offspring is Tt — all tall", size=9.8, weight="bold", fill=NAVY))

    # F1 selfing arrow
    b.append(arrow(380, 190, 380, 236, color=GREEN, sw=2.0, marker="ag"))

    # F2 square
    b.append(t(120, 258, "F2 = F1 × F1 (Tt × Tt)", size=9.8, weight="bold"))
    _square(b, 46, 268, 44, 40, ["T", "t"], ["T", "t"],
            [[("TT", BLUE), ("Tt", NAVY)], [("Tt", NAVY), ("tt", RED)]])
    b.append(t(120, 268 + 40 * 2 + 26, "3 tall : 1 short", size=9.8, weight="bold", fill=GREEN))

    # the ratio explained
    b.append(rect(392, 250, 344, 66, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(564, 270, "Genotype 1 TT : 2 Tt : 1 tt", size=10.0, weight="bold", fill=GREEN))
    b.append(t(564, 288, "Phenotype 3 tall : 1 short", size=10.0, weight="bold", fill=GREEN))
    b.append(t(564, 306, "the 3 : 1 is a *phenotype* ratio, not a genotype ratio", size=8.6, fill=SLATE))
    write_svg("ch02_monohybrid.svg", svg(w, h, "\n".join(b)))


def ch02_testcross():
    w, h = 760, 300
    b = [t(380, 24, "THE TEST CROSS — HOW TO FIND OUT WHICH GENOTYPE YOU HAVE", size=12.6, weight="bold")]

    b.append(t(190, 58, "IF THE PLANT IS TT", size=10.2, weight="bold", fill=BLUE))
    _square(b, 108, 72, 44, 40, ["T", "t"], ["T", "t"],
            [[("Tt", NAVY), ("Tt", NAVY)], [("Tt", NAVY), ("Tt", NAVY)]])
    b.append(t(196, 72 + 80 + 26, "all Tt — all tall", size=9.6, weight="bold", fill=NAVY))

    b.append(t(570, 58, "IF THE PLANT IS Tt", size=10.2, weight="bold", fill=RED))
    _square(b, 488, 72, 44, 40, ["T", "t"], ["t", "t"],
            [[("Tt", NAVY), ("tt", RED)], [("Tt", NAVY), ("tt", RED)]])
    b.append(t(576, 72 + 80 + 26, "1 tall : 1 short", size=9.6, weight="bold", fill=RED))

    b.append(rect(60, 214, 640, 74, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 236, "Rule: cross the unknown with a homozygous recessive", size=10.4, weight="bold", fill=GREEN))
    b.append(t(380, 256, "Any short offspring proves the unknown parent carried the recessive allele.", size=9.4, fill=SLATE))
    b.append(t(380, 274, "No short offspring at all (all tall) means it was homozygous dominant.", size=9.4, fill=SLATE))
    write_svg("ch02_testcross.svg", svg(w, h, "\n".join(b)))


def ch02_pedigree():
    w, h = 760, 330
    b = [t(380, 24, "SEX LINKAGE — COLOUR BLINDNESS IN ONE FAMILY", size=13.0, weight="bold")]
    b.append(t(380, 46, "Carrier mother × normal father: half the sons are colour blind, no daughter is", size=9.4, fill=MUTED))

    def male(cx, cy, label, col=NAVY, affected=False):
        b.append(rect(cx - 16, cy - 16, 32, 32, RED_LIGHT if affected else "#FFFFFF", RED if affected else col, 2, 2.0))
        b.append(t(cx, cy + 34, label, size=9.0, fill=SLATE))

    def female(cx, cy, label, carrier=False, affected=False):
        fill = RED_LIGHT if affected else "#FFFFFF"
        stroke = RED if (affected or carrier) else NAVY
        b.append(dot(cx, cy, 17, fill, stroke, 2.0))
        if carrier:
            b.append(dot(cx, cy, 5, RED))
        b.append(t(cx, cy + 36, label, size=9.0, fill=SLATE))

    # grandparents
    female(250, 96, "carrier mother")
    b.append(t(250, 96 - 26, "XᴮXᵇ", size=10.0, weight="bold", fill=RED))
    b.append(line(266, 96, 322, 96, color=SLATE, sw=2.0))
    male(338, 96, "normal father")
    b.append(t(338, 96 - 26, "XᴮY", size=10.0, weight="bold", fill=NAVY))

    # children
    for i, (cx, label, carrier, affected, sex) in enumerate((
            (150, "daughter", True, False, "f"),
            (250, "daughter", False, False, "f"),
            (350, "son", False, False, "m"),
            (450, "son", False, True, "m"))):
        b.append(line(294 + (i - 1.5) * 0, 112, 294, 150, color=BORDER, sw=1.0))
    # generational connector
    b.append(line(294, 112, 294, 150, color=SLATE, sw=1.6))
    b.append(line(150, 150, 450, 150, color=SLATE, sw=1.6))
    for cx, label, carrier, affected, sex in ((150, "carrier daughter", True, False, "f"),
                                              (250, "normal daughter", False, False, "f"),
                                              (350, "normal son", False, False, "m"),
                                              (450, "colour-blind son", False, True, "m")):
        b.append(line(cx, 150, cx, 176, color=SLATE, sw=1.6))
        if sex == "f":
            female(cx, 194, label, carrier=carrier, affected=affected)
        else:
            male(cx, 194, label, affected=affected)

    # key
    b.append(rect(500, 66, 236, 96, "#F8FAFC", BORDER, 8, 1.1))
    b.append(t(618, 86, "Key", size=9.6, weight="bold"))
    b.append(rect(518, 98, 14, 14, "#FFFFFF", NAVY, 1, 1.6))
    b.append(t(540, 110, "= male", size=8.8, fill=SLATE, anchor="start"))
    b.append(dot(525, 128, 7, "#FFFFFF", NAVY, 1.6))
    b.append(t(540, 132, "= female", size=8.8, fill=SLATE, anchor="start"))
    b.append(dot(525, 148, 3.5, RED))
    b.append(t(540, 152, "= carries the allele", size=8.8, fill=SLATE, anchor="start"))
    b.append(t(618, 178, "father (XᴮY) gives a daughter his Xᴮ,", size=8.4, fill=MUTED))
    b.append(t(618, 192, "so no daughter can be affected.", size=8.4, fill=MUTED))

    # summary strip
    b.append(rect(60, 256, 640, 58, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 278, "Sons get their X from the mother only — so a sex-linked recessive", size=9.6, weight="bold", fill=GREEN))
    b.append(t(380, 298, "shows up in sons whenever the mother carries it.", size=9.6, weight="bold", fill=GREEN))
    write_svg("ch02_pedigree.svg", svg(w, h, "\n".join(b)))


def recap_cards_a():
    recap_card("recap_ch01.svg", "Chapter 1 recap card — chromosomes, genes and meiosis", [
        ("Gene", "A length of DNA that codes for one protein. Its position on the chromosome is the locus; alternative forms are alleles."),
        ("Chromosome", "DNA coiled round histone protein. Humans have 46 in 23 homologous pairs; gametes have 23."),
        ("Meiosis", "Two divisions that halve the chromosome number and shuffle the alleles by crossing over and independent assortment."),
        ("Why it matters", "Gametes must be haploid so that fertilisation restores the diploid number — and variation is the raw material of evolution."),
    ])
    recap_card("recap_ch02.svg", "Chapter 2 recap card — inheritance, probability and sex linkage", [
        ("Monohybrid", "Tt × Tt gives 1 TT : 2 Tt : 1 tt genotypes and 3 tall : 1 short phenotypes."),
        ("Test cross", "Cross the unknown with a homozygous recessive: any recessive offspring proves it was heterozygous."),
        ("Sex linkage", "The X carries genes the Y does not, so a recessive allele on the X shows in sons whose mother carries it."),
        ("Probability", "Each fertilisation is independent: multiply the chance of each gamete, never add the parents' ratios."),
    ])
