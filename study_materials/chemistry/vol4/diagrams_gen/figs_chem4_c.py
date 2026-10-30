"""Vector diagrams for Chapters 5–6 of JAMB Chemistry Volume 4."""

from __future__ import annotations

import math
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from common import (  # noqa: E402
    GREEN, GREEN_LIGHT, GREEN_MID, GREEN_BRIGHT, NAVY, SLATE, MUTED, BORDER,
    AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT,
    LIGHT_BG, rect, t, lines, arrow2, arrow, line, dot, poly, path, card, banner,
    recap_card, write_svg, svg, save, plt, np, wrap_text,
)

FIGURES = [
    "ch06_separation",
    "ch05_sugar_tree", "ch05_glucose", "ch05_starch_cellulose", "ch05_peptide",
    "ch05_food_tests", "ch05_denature", "ch06_titration", "ch06_chromatography",
    "ch06_recrystallisation", "ch06_gas_tests", "ch06_cation_flow",
    "recap_cards_c",
]


def ch05_sugar_tree():
    w, h = 560, 300
    b = [t(280, 22, "THE CARBOHYDRATES — ONE FAMILY, THREE SIZES", size=10.8, weight="bold")]
    b.append(rect(196, 44, 168, 40, GREEN, GREEN, 7, 0))
    b.append(t(280, 62, "CARBOHYDRATES", size=10.0, weight="bold", fill="#FFFFFF"))
    b.append(t(280, 77, "Cₓ(H₂O)ᵧ", size=7.6, fill="#D1FAE5"))

    groups = [
        ("MONOSACCHARIDES", "one unit", ["glucose", "fructose"], GREEN, 93),
        ("DISACCHARIDES", "two units", ["maltose", "sucrose", "lactose"], BLUE, 280),
        ("POLYSACCHARIDES", "many units", ["starch", "glycogen", "cellulose"], PURPLE, 467),
    ]
    for head, sub, items, col, cx in groups:
        b.append(line(280, 84, 280, 108, color=BORDER, sw=1.2))
        b.append(line(cx, 108, 280, 108, color=BORDER, sw=1.2))
        b.append(line(cx, 108, cx, 124, color=col, sw=1.4))
        b.append(rect(cx - 84, 124, 168, 44, "#FFFFFF", col, 7, 1.4))
        b.append(t(cx, 142, head, size=8.0, weight="bold", fill=col))
        b.append(t(cx, 158, sub, size=7.4, fill=MUTED))
        y = 180
        for it in items:
            b.append(t(cx, y, it, size=8.2, fill=NAVY))
            y += 15
    b.append(rect(12, 248, 536, 44, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(280, 266, "Hydrolysis takes every one of them back to glucose; condensation builds them up and releases water.",
               size=8.0, fill=NAVY))
    b.append(t(280, 284, "The test for a reducing sugar is Benedict's solution — brick-red copper(I) oxide on warming.",
               size=7.8, fill=MUTED))
    write_svg("ch05_sugar_tree.svg", svg(w, h, "\n".join(b)))


def ch05_glucose():
    w, h = 560, 274
    b = [t(280, 22, "GLUCOSE — THE OPEN CHAIN AND THE RING IT ACTUALLY FORMS", size=10.5, weight="bold")]

    # open chain
    b.append(rect(8, 40, 268, 170, "#FFFFFF", BORDER, 7, 1.1))
    b.append(t(142, 58, "open chain", size=8.4, weight="bold", fill=NAVY))
    y = 84
    for i, (c, sub) in enumerate([("CHO", ""), ("CHOH", ""), ("CHOH", ""), ("CHOH", ""),
                                  ("CHOH", ""), ("CH₂OH", "")]):
        b.append(t(60, y + i * 21, c, size=8.4, fill=NAVY, anchor="start"))
    b.append(t(142, 196, "C₆H₁₂O₆ — an aldohexose", size=7.6, fill=MUTED))

    # ring
    b.append(rect(286, 40, 266, 170, "#FFFFFF", GREEN, 7, 1.1))
    b.append(t(419, 58, "the ring in solution", size=8.4, weight="bold", fill=GREEN))
    cx, cy, r = 419, 128, 52
    ang = [90, 30, -30, -90, -150, 150]
    pts = [(cx + r * math.cos(math.radians(a)), cy - r * math.sin(math.radians(a))) for a in ang]
    b.append(poly(pts, "#FFFFFF", GREEN, 1.6))
    b.append(t(pts[0][0], pts[0][1] - 8, "O", size=9.4, fill=RED, weight="bold"))
    for i, p in enumerate(pts[1:], start=1):
        b.append(t(p[0], p[1] + 4, "C", size=8.4, fill=NAVY))
    b.append(t(419, 202, "a six-membered ring — the hemiacetal", size=7.6, fill=MUTED))

    b.append(rect(8, 220, 544, 44, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(280, 238, "Carbon 1 is the anomeric carbon: it still has an –OH that can open back to the aldehyde.", size=8.0, fill=NAVY))
    b.append(t(280, 256, "That open aldehyde is what reduces Benedict's reagent, which is why glucose is a reducing sugar.", size=7.8, fill=MUTED))
    write_svg("ch05_glucose.svg", svg(w, h, "\n".join(b)))


def ch05_starch_cellulose():
    w, h = 560, 300
    b = [t(280, 22, "STARCH AND CELLULOSE — SAME MONOMER, DIFFERENT LINK", size=10.8, weight="bold")]
    b.append(t(280, 40, "both are chains of glucose; only the geometry of the glycosidic bond differs",
               size=7.9, fill=MUTED))

    for i, (title, sub, col, link) in enumerate((
            ("STARCH", "α-1,4 links — the chain coils", AMBER, "α"),
            ("CELLULOSE", "β-1,4 links — the chain stays straight", GREEN, "β"))):
        x = 12 + i * 272
        b.append(rect(x, 56, 264, 190, "#FFFFFF", col, 7, 1.3))
        b.append(t(x + 132, 76, title, size=9.4, weight="bold", fill=col))
        b.append(t(x + 132, 93, sub, size=7.4, fill=MUTED))
        # chain of hexagons
        n = 5
        for k in range(n):
            cxx = x + 42 + k * 45
            cyy = 140 if title == "CELLULOSE" else 140 + (6 if k % 2 else -6)
            r = 17
            pts = [(cxx + r * math.cos(math.radians(a)), cyy - r * math.sin(math.radians(a)))
                   for a in range(90, 450, 60)]
            b.append(poly(pts, "#FFFFFF", col, 1.2))
            if k < n - 1:
                b.append(t(cxx + 22, cyy - 16, link, size=7.4, fill=col, weight="bold"))
                b.append(line(cxx + 17, cyy, cxx + 28, cyy, color=col, sw=1.2))
        b.append(t(x + 132, 196, "digested by human enzymes" if title == "STARCH" else "not digested by human enzymes",
                   size=7.4, fill=NAVY))
        b.append(t(x + 132, 214, "energy store; turns iodine blue-black" if title == "STARCH" else "structural; gives cotton and wood their strength",
                   size=7.0, fill=MUTED))
        b.append(t(x + 132, 232, "amylose and amylopectin" if title == "STARCH" else "β-glucose units alternate, so the chain is flat",
                   size=7.0, fill=MUTED))

    b.append(rect(12, 256, 536, 34, "#FFFBEB", AMBER, 6, 1.0))
    b.append(t(280, 276, "Ruminants and termites carry the enzyme we lack; that is the whole reason grass feeds a cow and not a candidate.",
               size=7.8, fill=NAVY))
    write_svg("ch05_starch_cellulose.svg", svg(w, h, "\n".join(b)))


def ch05_peptide():
    w, h = 560, 288
    b = [t(280, 22, "AMINO ACIDS JOIN HEAD TO TAIL — THE PEPTIDE BOND", size=10.8, weight="bold")]

    def aa(x, y, r_label, col):
        out = [rect(x - 62, y - 34, 124, 68, "#FFFFFF", col, 7, 1.3)]
        out.append(t(x, y - 12, "H₂N–CH–COOH", size=7.4, fill=NAVY))
        out.append(t(x, y + 8, "|", size=8, fill=SLATE))
        out.append(t(x, y + 24, r_label, size=8.0, fill=col, weight="bold"))
        return out

    b += aa(96, 108, "R", GREEN)
    b += aa(280, 108, "R′", BLUE)
    b.append(t(188, 112, "+", size=12, fill=MUTED, weight="bold"))
    b.append(arrow2(196, 160, 340, 160, color=AMBER, sw=1.8, size=7))
    b.append(t(268, 150, "condensation", size=7.4, fill=AMBER))
    b.append(t(268, 176, "− H₂O", size=7.4, fill=MUTED))

    b.append(rect(120, 190, 320, 54, "#FFFFFF", PURPLE, 7, 1.3))
    b.append(t(280, 212, "H₂N–CH(R)–CO–NH–CH(R′)–COOH", size=8.2, fill=NAVY, weight="bold"))
    b.append(t(280, 232, "a dipeptide — the –CO–NH– is the peptide bond", size=7.4, fill=MUTED))

    b.append(t(280, 262, "A chain of many amino acids is a polypeptide; a protein is one or more folded polypeptides.", size=8.0, fill=SLATE))
    b.append(t(280, 278, "Hydrolysis — boiling with dilute acid or alkali, or an enzyme — puts the amino acids back.", size=7.8, fill=MUTED))
    write_svg("ch05_peptide.svg", svg(w, h, "\n".join(b)))


def ch05_food_tests():
    w, h = 560, 316
    b = [t(280, 22, "THE FIVE FOOD TESTS — LEARN THE COLOUR, NOT THE PROCEDURE", size=10.4, weight="bold")]

    rows = [
        ("Reducing sugar", "Benedict's solution, warm 3–5 min", "blue → brick-red precipitate", RED),
        ("Starch", "a drop of iodine solution", "brown → blue-black", NAVY),
        ("Protein", "Biuret reagent (NaOH + CuSO₄)", "blue → violet", PURPLE),
        ("Fat or oil", "rub on paper, or emulsify with water", "translucent stain, milky emulsion", AMBER),
        ("Water", "anhydrous copper(II) sulphate", "white → blue", BLUE),
    ]
    y = 46
    for name, reagent, result, col in rows:
        b.append(rect(8, y, 544, 46, "#FFFFFF", col, 6, 1.1))
        b.append(rect(8, y, 6, 46, col, col, 3, 0))
        b.append(t(20, y + 19, name, size=8.8, weight="bold", fill=NAVY, anchor="start"))
        b.append(t(20, y + 35, reagent, size=7.2, fill=MUTED, anchor="start"))
        b.append(t(322, y + 27, "→", size=9, fill=col, weight="bold"))
        b.append(t(340, y + 27, result, size=7.8, fill=col, weight="bold", anchor="start"))
        y += 52

    b.append(t(280, 310, "A positive test is a colour or a smell, never a guess: write what you saw, then what it proves.",
               size=7.8, fill=MUTED))
    write_svg("ch05_food_tests.svg", svg(w, h, "\n".join(b)))


def ch05_denature():
    w, h = 560, 254
    b = [t(280, 22, "DENATURATION — THE SHAPE IS LOST, THE SEQUENCE IS NOT", size=10.6, weight="bold")]

    # native protein: coiled chain
    b.append(rect(10, 40, 250, 176, "#FFFFFF", GREEN, 7, 1.2))
    b.append(t(135, 60, "native protein", size=8.6, weight="bold", fill=GREEN))
    pts = []
    for i in range(60):
        tt = i / 59 * 4 * math.pi
        pts.append((135 + 12 * tt * math.cos(tt) * 0.55 + 10 * math.cos(tt),
                    118 + 12 * tt * math.sin(tt) * 0.55 + 12 * math.sin(tt)))
    b.append(path("M " + " L ".join(f"{x:.1f} {y:.1f}" for x, y in pts), stroke=GREEN, sw=1.8))
    b.append(t(135, 200, "folded, soluble, biologically active", size=7.4, fill=MUTED))

    b.append(arrow2(270, 128, 320, 128, color=AMBER, sw=1.8, size=7))
    b.append(t(295, 118, "heat, acid,", size=6.8, fill=AMBER))
    b.append(t(295, 146, "alcohol, heavy", size=6.8, fill=AMBER))
    b.append(t(295, 160, "metal ions", size=6.8, fill=AMBER))

    b.append(rect(326, 40, 226, 176, "#FFFFFF", RED, 7, 1.2))
    b.append(t(439, 60, "denatured", size=8.6, weight="bold", fill=RED))
    for k in range(7):
        y0 = 82 + k * 17
        b.append(path(f"M 348 {y0} Q 380 {y0 - 12} 412 {y0} T 476 {y0}",
                      stroke=RED, sw=1.5, dash="6 4" if k % 2 else None))
    b.append(t(439, 200, "unfolded, insoluble, no longer works", size=7.4, fill=MUTED))

    b.append(t(280, 236, "Denaturation breaks the hydrogen bonds and the hydrophobic folding, not the peptide bonds — so the amino-acid sequence survives.",
               size=7.8, fill=NAVY))
    write_svg("ch05_denature.svg", svg(w, h, "\n".join(b)))


# ── Chapter 6 ──────────────────────────────────────────────────────────────
def ch06_titration():
    w, h = 560, 424
    b = [t(280, 22, "THE TITRATION SET — WHAT HANGS FROM WHAT, AND WHAT YOU READ", size=10.4, weight="bold")]

    # retort stand
    b.append(rect(16, 392, 146, 9, "#E2E8F0", SLATE, 3, 1.2))
    b.append(rect(28, 70, 9, 324, "#E2E8F0", SLATE, 3, 1.2))
    b.append(rect(37, 128, 56, 7, "#E2E8F0", SLATE, 3, 1.0))
    b.append(t(24, 414, "retort stand", size=6.8, fill=MUTED, anchor="start"))

    # burette
    b.append(rect(94, 58, 18, 222, "#FFFFFF", SLATE, 3, 1.4))
    b.append(f'<rect x="97" y="116" width="12" height="160" fill="{PURPLE}" opacity="0.50"/>')
    for k in range(6):
        yk = 70 + k * 30
        b.append(line(94, yk, 88, yk, color=SLATE, sw=0.8))
    b.append(t(84, 62, "0.00", size=6.6, fill=MUTED, anchor="end"))
    b.append(t(84, 152, "10", size=6.4, fill=MUTED, anchor="end"))
    b.append(t(84, 242, "20", size=6.4, fill=MUTED, anchor="end"))
    # tap and jet
    b.append(path("M 94 280 L 112 280 L 108 294 L 98 294 Z", fill="#E2E8F0", stroke=SLATE, sw=1.0))
    b.append(line(103, 294, 103, 322, color=SLATE, sw=1.2))
    b.append(t(103, 46, "burette — the acid of unknown concentration", size=6.8, fill=PURPLE))

    # conical flask
    b.append(path("M 94 326 L 94 340 L 58 380 L 58 392 L 148 392 L 148 380 L 112 340 L 112 326 Z",
                  fill="none", stroke=SLATE, sw=1.5))
    b.append(f'<path d="M 66 374 L 140 374 L 146 388 L 60 388 Z" fill="{GREEN}" opacity="0.25"/>')
    b.append(t(280, 414, "conical flask: 25.0 cm³ of alkali + 3 drops of indicator",
               size=7.0, fill=GREEN, anchor="middle"))

    # right panel
    b.append(rect(196, 54, 356, 340, "#FFFFFF", GREEN, 7, 1.2))
    b.append(t(374, 74, "The routine", size=9.0, weight="bold", fill=GREEN))
    steps = [
        "Rinse the burette with the acid, then fill it.",
        "Pipette 25.0 cm³ of alkali into the flask.",
        "Add two or three drops of indicator.",
        "Run the acid in, swirling, until the first",
        "permanent colour change — the end point.",
        "Record the burette reading to 0.05 cm³.",
        "Repeat until two titres agree within 0.10 cm³.",
        "Average the concordant titres only.",
    ]
    y = 96
    for st in steps:
        b.append(t(208, y, "•", size=7.6, fill=GREEN, anchor="start"))
        b.append(t(218, y, st, size=7.5, fill=NAVY, anchor="start"))
        y += 19

    b.append(line(208, 250, 540, 250, color=BORDER, sw=0.8))
    b.append(t(208, 270, "moles of acid  =  c(acid) × V(acid) ÷ 1000", size=7.6, fill=NAVY, anchor="start"))
    b.append(t(208, 288, "moles of alkali =  c(alkali) × 25.0 ÷ 1000", size=7.6, fill=NAVY, anchor="start"))
    b.append(t(208, 308, "Use the equation to get the ratio, then solve for c(acid).", size=7.4, fill=SLATE, anchor="start"))
    b.append(t(208, 330, "Read the burette at eye level, at the bottom of the meniscus.", size=7.4, fill=MUTED, anchor="start"))
    b.append(t(208, 348, "The end point is where the indicator changes, not the equivalence point.", size=7.4, fill=MUTED, anchor="start"))
    write_svg("ch06_titration.svg", svg(w, h, "\n".join(b)))


def ch06_chromatography():
    w, h = 560, 288
    b = [t(280, 22, "PAPER CHROMATOGRAPHY — SEPARATING BY HOW FAST EACH DYE TRAVELS", size=10.2, weight="bold")]

    # paper strip
    b.append(rect(60, 52, 130, 200, "#FFFFFF", BORDER, 4, 1.2))
    b.append(line(60, 108, 190, 108, color=MUTED, sw=1.0, dash="4 3"))
    b.append(t(40, 106, "origin", size=6.8, fill=MUTED, anchor="end"))
    for x, col, y in ((86, RED, 72), (110, AMBER, 92), (134, BLUE, 128), (158, GREEN, 158)):
        b.append(dot(x, y, 6, col, "none"))
    b.append(line(60, 206, 190, 206, color=BLUE, sw=1.4))
    b.append(t(125, 220, "solvent front", size=6.8, fill=BLUE))
    b.append(t(125, 266, "the paper is stood in the solvent,", size=6.8, fill=MUTED))
    b.append(t(125, 278, "and the solvent is allowed to climb", size=6.8, fill=MUTED))

    b.append(rect(216, 52, 332, 130, "#FFFFFF", GREEN, 7, 1.2))
    b.append(t(382, 72, "Rf is a constant for a substance in a given solvent", size=8.4, weight="bold", fill=GREEN))
    b.append(t(382, 100, "Rf  =  distance moved by the spot", size=9.4, fill=NAVY))
    b.append(t(382, 118, "      ─────────────────────────", size=9.4, fill=NAVY))
    b.append(t(382, 136, "      distance moved by the solvent front", size=9.4, fill=NAVY))
    b.append(t(382, 162, "0 ≤ Rf ≤ 1 · a pure substance gives one spot · Rf depends on the solvent", size=7.4, fill=MUTED))

    b.append(rect(216, 194, 332, 34, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(382, 215, "Identify a dye by comparing its Rf with a known sample run beside it.", size=7.8, fill=NAVY))
    b.append(rect(216, 236, 332, 34, "#FFFBEB", AMBER, 6, 1.0))
    b.append(t(382, 257, "The same idea separates pigments, inks, sugars and amino acids.", size=7.8, fill=NAVY))
    write_svg("ch06_chromatography.svg", svg(w, h, "\n".join(b)))


def ch06_recrystallisation():
    w, h = 560, 226
    b = [t(280, 22, "RECRYSTALLISATION — THE STANDARD WAY TO PURIFY A SOLID", size=10.4, weight="bold")]
    steps = [
        ("1 · Dissolve", "in the minimum of hot solvent", GREEN),
        ("2 · Filter hot", "to remove the insoluble impurity", BLUE),
        ("3 · Cool slowly", "the pure solid crystallises", PURPLE),
        ("4 · Filter and dry", "wash with a little cold solvent", AMBER),
    ]
    for i, (head, sub, col) in enumerate(steps):
        x = 8 + i * 138
        b.append(rect(x, 46, 128, 84, "#FFFFFF", col, 7, 1.3))
        b.append(f'<rect x="{x}" y="46" width="128" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + 64, 74, head, size=8.4, weight="bold", fill=NAVY))
        b.append(t(x + 64, 98, sub, size=7.0, fill=SLATE))
        if i < 3:
            b.append(arrow2(x + 130, 88, x + 136, 88, color=GREEN, sw=1.4, size=5))

    b.append(rect(8, 146, 544, 70, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(280, 164, "Purity is checked by melting point: a pure solid melts sharply at one temperature, an impure one over a range.", size=7.8, fill=NAVY))
    b.append(t(280, 182, "The yield is the mass obtained ÷ the mass expected × 100 %, and it is always below 100 %.", size=7.8, fill=NAVY))
    b.append(t(280, 200, "Losses come from solubility in the wash, from crystals left on the filter paper and from the impurity removed.", size=7.6, fill=MUTED))
    write_svg("ch06_recrystallisation.svg", svg(w, h, "\n".join(b)))


def ch06_gas_tests():
    w, h = 560, 292
    b = [t(280, 22, "THE GAS TESTS — A TEST IS A SENTENCE WITH AN OBSERVATION IN IT", size=10.2, weight="bold")]
    rows = [
        ("O₂", "relights a glowing splint", GREEN),
        ("H₂", "burns with a squeaky pop", BLUE),
        ("CO₂", "turns limewater milky; clears in excess", SLATE),
        ("NH₃", "turns damp red litmus blue; pungent", PURPLE),
        ("Cl₂", "bleaches damp litmus; yellow-green", AMBER),
        ("SO₂", "turns acidified dichromate green; choking", RED),
        ("H₂O (vapour)", "turns anhydrous CuSO₄ from white to blue", BLUE),
        ("HCl", "white fumes with ammonia; damp blue litmus red", SLATE),
    ]
    for i, (gas, obs, col) in enumerate(rows):
        col_i, row_i = i % 2, i // 2
        x = 8 + col_i * 272
        y = 44 + row_i * 58
        b.append(rect(x, y, 264, 50, "#FFFFFF", col, 6, 1.1))
        b.append(rect(x, y, 48, 50, col, col, 5, 0))
        b.append(t(x + 24, y + 30, gas, size=9.0, weight="bold", fill="#FFFFFF"))
        b.append(t(x + 58, y + 22, obs.split(";")[0], size=7.4, fill=NAVY, anchor="start"))
        if ";" in obs:
            b.append(t(x + 58, y + 37, obs.split(";")[1].strip(), size=7.0, fill=MUTED, anchor="start"))

    b.append(t(280, 282, "Say what you did, what you saw and what it proves — in that order, and in one line.",
               size=7.8, fill=MUTED))
    write_svg("ch06_gas_tests.svg", svg(w, h, "\n".join(b)))


def ch06_cation_flow():
    w, h = 560, 372
    b = [t(280, 22, "IDENTIFYING A CATION WITH SODIUM HYDROXIDE, THEN AMMONIA", size=10.2, weight="bold")]
    b.append(rect(186, 40, 188, 32, NAVY, NAVY, 6, 0))
    b.append(t(280, 61, "add NaOH (aq), drop by drop", size=8.0, weight="bold", fill="#FFFFFF"))

    cols = [
        ("White precipitate", BLUE,
         ["Pb²⁺, Zn²⁺ or Al³⁺ dissolve", "in excess NaOH", "Ca²⁺ does not dissolve", "it gives a brick-red flame"],
         "Zn²⁺ and Al³⁺ dissolve in excess NH₃; Pb²⁺ does not."),
        ("Pale blue precipitate", BLUE,
         ["Cu²⁺ dissolves in excess", "ammonia to a deep blue", "solution — that deep blue", "is the identification"],
         "Fe²⁺ is green, not blue; do not confuse them."),
        ("Green precipitate", GREEN,
         ["Fe²⁺ — insoluble in excess", "NaOH and in excess NH₃", "the precipitate turns", "brown on standing in air"],
         "That browning is Fe²⁺ oxidised to Fe³⁺ by the air."),
        ("No precipitate", AMBER,
         ["NH₄⁺: warm the mixture", "and ammonia is given off", "test the gas with damp", "red litmus — it turns blue"],
         "Na⁺ and K⁺ give no precipitate either; use a flame test."),
    ]
    for i, (head, col, lines_body, foot) in enumerate(cols):
        cx = 74 + i * 138
        b.append(line(280, 72, 280, 88, color=BORDER, sw=1.2))
        b.append(line(cx, 88, 280, 88, color=BORDER, sw=1.2))
        b.append(line(cx, 88, cx, 98, color=col, sw=1.4))
        b.append(rect(cx - 64, 98, 128, 30, "#FFFFFF", col, 5, 1.3))
        b.append(t(cx, 117, head, size=7.4, weight="bold", fill=col))
        b.append(rect(cx - 64, 132, 128, 96, GREEN_LIGHT, BORDER, 5, 0.9))
        for j, ln in enumerate(lines_body):
            b.append(t(cx - 56, 148 + j * 17, ln, size=6.6, fill=NAVY, anchor="start"))
        for j, ln in enumerate(wrap_text(foot, 6.4, 120)):
            b.append(t(cx - 56, 240 + j * 12, ln, size=6.4, fill=MUTED, anchor="start"))

    b.append(rect(8, 276, 544, 84, "#FFFFFF", BORDER, 6, 1.0))
    b.append(t(280, 296, "Then confirm with a flame test: Na yellow · K lilac · Ca brick-red · Cu blue-green · Ba apple-green · Li crimson",
               size=7.6, fill=NAVY))
    b.append(t(280, 316, "A precipitate that dissolves in excess reagent is worth two marks; a colour alone is worth one.",
               size=7.6, fill=SLATE))
    b.append(t(280, 336, "Always add the reagent in excess before writing “insoluble”: the second observation is the discriminating one.",
               size=7.6, fill=MUTED))
    write_svg("ch06_cation_flow.svg", svg(w, h, "\n".join(b)))



def ch06_separation():
    w, h = 560, 314
    b = [t(280, 22, "CHOOSING A SEPARATION METHOD — ASK WHAT IS DIFFERENT", size=10.4, weight="bold")]
    rows = [
        ("A solid is insoluble in the liquid", "filtration, then wash and dry the residue", GREEN),
        ("A solid is dissolved and wanted pure", "crystallisation or recrystallisation", BLUE),
        ("Two liquids mix and boil far apart", "fractional distillation", PURPLE),
        ("Two liquids do not mix", "a separating funnel; run off the lower layer", AMBER),
        ("One liquid, one dissolved solid", "simple distillation, or evaporation to crystallisation", RED),
        ("The colours are different but the solubilities are close", "paper chromatography", SLATE),
        ("One solid sublimes (ammonium chloride, iodine)", "sublimation: heat, and collect the vapour", GREEN),
        ("One component is magnetic (iron from sulphur)", "a magnet, or a magnet wrapped in paper", BLUE),
    ]
    y = 44
    for q, a, col in rows:
        b.append(rect(8, y, 544, 28, "#FFFFFF", col, 5, 1.0))
        b.append(t(16, y + 18, q, size=7.6, fill=NAVY, anchor="start"))
        b.append(arrow2(258, y + 14, 280, y + 14, color=col, sw=1.2, size=5))
        b.append(t(290, y + 18, a, size=7.6, fill=col, anchor="start", weight="bold"))
        y += 31
    b.append(t(280, 308, "The method is chosen by the property that differs: solubility, boiling point, density, particle size or magnetism.",
               size=7.8, fill=MUTED))
    write_svg("ch06_separation.svg", svg(w, h, "\n".join(b)))


def recap_cards_c():
    recap_card("recap_ch05.svg", "Chapter 5 recap card — food chemistry", [
        ("Sugars",
         "Monosaccharides (glucose, fructose), disaccharides (maltose, sucrose, lactose) and polysaccharides (starch, glycogen, cellulose). Benedict's test is positive for the reducing ones."),
        ("Starch",
         "A polymer of α-glucose; iodine turns it blue-black; hydrolysis with acid or amylase gives glucose. Cellulose is β-glucose and we cannot digest it."),
        ("Proteins",
         "Amino acids joined by peptide bonds. Biuret gives violet. Heat, acid, alcohol and heavy-metal ions denature them without breaking the peptide bond."),
        ("Fats and oils",
         "Esters of glycerol and fatty acids. Oils are unsaturated; the emulsion test gives a milky suspension."),
    ])
    recap_card("recap_ch06.svg", "Chapter 6 recap card — practical chemistry", [
        ("Apparatus",
         "Burette for the acid, pipette for the alkali, conical flask for the indicator. Read the burette at the bottom of the meniscus, at eye level."),
        ("Titration",
         "n = cV/1000. Average only the concordant titres; the indicator changes at the end point, not at the equivalence point."),
        ("Separation",
         "Filtration, crystallisation, distillation and chromatography, chosen by the property that differs."),
        ("Tests",
         "Gas, flame, cation with NaOH then NH₃, and anion with acid then barium or silver nitrate. Observation first, conclusion second."),
    ])
