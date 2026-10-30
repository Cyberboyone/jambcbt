"""Vector diagrams for Chapters 3–4 of JAMB Chemistry Volume 4."""

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

FIGURES = [
    "fg_map",
    "ch03_fermentation", "ch03_distillation", "ch03_oxidation_ladder",
    "ch03_alcohol_reactions", "ch03_ethanoic_acid", "ch04_esterification",
    "ch04_soap_micelle", "ch04_saponification", "ch04_polymer_types",
    "recap_cards_b",
]



def fg_map():
    w, h = 560, 402
    b = [t(280, 22, "THE FUNCTIONAL-GROUP MAP — EVERY CONVERSION IN THIS VOLUME", size=10.4, weight="bold")]
    b.append(t(280, 40, "Follow the arrows: each one is a reagent with a condition, and each one is a question the examiner can ask.", size=7.6, fill=MUTED))

    def node(y, name, group, col):
        b.append(rect(84, y - 20, 150, 40, "#FFFFFF", col, 6, 1.4))
        b.append(t(159, y - 2, name, size=8.8, weight="bold", fill=col))
        b.append(t(159, y + 13, group, size=6.8, fill=MUTED))

    node(80, "ALKANE", "no functional group", GREEN)
    node(150, "HALOALKANE", "–X", SLATE)
    node(220, "ALKANOL", "–OH", BLUE)
    node(290, "ALKANAL / KETONE", "–CHO or –CO–", AMBER)
    node(360, "ALKANOIC ACID", "–COOH", RED)

    for y1, y2, label in ((100, 130, "Cl₂, UV"), (170, 200, "NaOH (aq), warm"),
                          (240, 270, "dichromate, distil"), (310, 340, "dichromate, reflux")):
        b.append(arrow2(159, y1, 159, y2, color=GREEN, sw=1.4, size=6))
        b.append(t(168, (y1 + y2) / 2 + 3, label, size=6.4, fill=GREEN, anchor="start"))

    def side(y, name, sub, col):
        b.append(rect(292, y - 18, 128, 36, "#FFFFFF", col, 6, 1.3))
        b.append(t(356, y - 2, name, size=8.4, weight="bold", fill=col))
        b.append(t(356, y + 12, sub, size=6.6, fill=MUTED))

    side(80, "ALKENE", "C=C — addition", PURPLE)
    b.append(arrow2(238, 80, 288, 80, color=PURPLE, sw=1.3, size=6))
    side(220, "ALKOXIDE", "sodium salt", BLUE)
    b.append(arrow2(238, 220, 288, 220, color=BLUE, sw=1.3, size=6))
    side(360, "ESTER", "–COO– with an alcohol", RED)
    b.append(arrow2(238, 360, 288, 360, color=RED, sw=1.3, size=6))
    side(140, "POLY(ALKENE)", "n monomers, nothing lost", PURPLE)
    b.append(arrow2(356, 100, 356, 120, color=PURPLE, sw=1.2, size=5))

    b.append(rect(432, 56, 122, 300, GREEN_LIGHT, BORDER, 6, 1.0))
    b.append(t(493, 74, "The two chains", size=8.4, weight="bold", fill=NAVY))
    b.append(t(440, 96, "From petroleum:", size=7.0, fill=GREEN, weight="bold", anchor="start"))
    for i, ln in enumerate(("alkane → haloalkane", "→ alkanol → alkanal", "→ alkanoic acid", "→ ester → fat → soap")):
        b.append(t(440, 114 + i * 14, ln, size=6.5, fill=SLATE, anchor="start"))
    b.append(t(440, 190, "From sugar:", size=7.0, fill=AMBER, weight="bold", anchor="start"))
    for i, ln in enumerate(("glucose → ethanol", "→ ethanoic acid", "→ ester", "starch → glucose")):
        b.append(t(440, 208 + i * 14, ln, size=6.5, fill=SLATE, anchor="start"))
    b.append(t(440, 284, "Every arrow is one", size=6.4, fill=MUTED, anchor="start"))
    b.append(t(440, 296, "reagent and one", size=6.4, fill=MUTED, anchor="start"))
    b.append(t(440, 308, "condition. Learn", size=6.4, fill=MUTED, anchor="start"))
    b.append(t(440, 320, "them in pairs.", size=6.4, fill=MUTED, anchor="start"))

    b.append(t(280, 392, "A functional group is a reactive centre: the hydrocarbon skeleton decides the physical properties, and the group decides the chemistry.",
               size=7.6, fill=MUTED))
    write_svg("fg_map.svg", svg(w, h, "\n".join(b)))


def ch03_fermentation():
    w, h = 560, 280
    b = [t(280, 22, "FERMENTATION — GLUCOSE TO ETHANOL WITH YEAST", size=10.8, weight="bold")]
    b.append(t(280, 40, "C₆H₁₂O₆ → 2C₂H₅OH + 2CO₂ · yeast enzymes · 25–35 °C · no air", size=8.4, fill=MUTED))

    # flask
    b.append(path("M 150 96 L 150 132 Q 150 148 136 156 L 104 176 Q 84 188 84 208 L 84 232 Q 84 246 98 246 L 202 246 Q 216 246 216 232 L 216 208 Q 216 188 196 176 L 164 156 Q 150 148 150 132 L 150 96",
                  fill="#FFFFFF", stroke=SLATE, sw=1.6))
    b.append(f'<path d="M 90 190 L 90 232 Q 90 240 100 240 L 200 240 Q 210 240 210 232 L 210 190 Z" fill="{AMBER}" opacity="0.28"/>')
    b.append(t(150, 224, "glucose + yeast", size=8.2, fill=NAVY))
    b.append(t(150, 262, "the flask is kept warm and closed", size=7.6, fill=MUTED))

    # bung & delivery tube
    b.append(rect(132, 82, 36, 18, "#E2E8F0", SLATE, 3, 1.2))
    b.append(path("M 150 82 L 150 60 L 300 60", fill="none", stroke=SLATE, sw=1.8))
    b.append(path("M 300 60 L 300 210", fill="none", stroke=SLATE, sw=1.8))

    # test tube limewater
    b.append(rect(278, 200, 44, 74, "#FFFFFF", SLATE, 8, 1.4))
    b.append(f'<path d="M 282 226 L 282 268 Q 282 272 288 272 L 312 272 Q 318 272 318 268 L 318 226 Z" fill="#F1F5F9"/>')
    b.append(t(300, 292, "limewater", size=7.6, fill=MUTED))

    b.append(rect(340, 84, 208, 108, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(444, 104, "What the limewater proves", size=8.6, weight="bold", fill=GREEN))
    b.append(t(444, 122, "CO₂ turns it milky:", size=7.8, fill=NAVY))
    b.append(t(444, 138, "Ca(OH)₂ + CO₂ → CaCO₃ + H₂O", size=7.6, fill=NAVY))
    b.append(t(444, 158, "Excess CO₂ clears it again:", size=7.8, fill=NAVY))
    b.append(t(444, 174, "CaCO₃ + H₂O + CO₂ → Ca(HCO₃)₂", size=7.6, fill=NAVY))

    b.append(rect(340, 202, 208, 70, "#FFFBEB", AMBER, 7, 1.2))
    b.append(t(444, 220, "Why the flask must be closed", size=8.4, weight="bold", fill=AMBER))
    b.append(t(444, 236, "air oxidises the ethanol to ethanoic acid,", size=7.6, fill=NAVY))
    b.append(t(444, 250, "and the alcohol is lost as vapour.", size=7.6, fill=NAVY))
    b.append(t(444, 264, "The bung keeps both the air and the vapour in.", size=7.4, fill=MUTED))
    write_svg("ch03_fermentation.svg", svg(w, h, "\n".join(b)))


def ch03_distillation():
    w, h = 560, 268
    b = [t(280, 22, "FRACTIONAL DISTILLATION — THE ALCOHOL IS BOILED OUT AND CONDENSED BACK",
           size=10.2, weight="bold")]
    b.append(t(280, 40, "the thermometer bulb sits at the side arm; the fraction is collected at a fixed boiling point",
               size=7.8, fill=MUTED))

    # round-bottom flask
    b.append(f'<circle cx="120" cy="168" r="42" fill="#FFFFFF" stroke="{SLATE}" stroke-width="1.6"/>')
    b.append(f'<path d="M 88 186 Q 120 206 152 186 L 152 166 Q 120 186 88 166 Z" fill="{AMBER}" opacity="0.30"/>')
    b.append(t(120, 172, "ethanol +", size=7.8, fill=NAVY))
    b.append(t(120, 184, "water", size=7.8, fill=NAVY))
    b.append(line(120, 126, 120, 108, color=SLATE, sw=1.8))
    b.append(t(120, 236, "heated to about 78 °C", size=7.6, fill=MUTED))

    # still head
    b.append(path("M 108 108 L 132 108 L 132 96 L 108 96 Z", fill="#E2E8F0", stroke=SLATE, sw=1.2))
    b.append(path("M 132 100 L 250 100", fill="none", stroke=SLATE, sw=2.0))
    b.append(line(120, 96, 120, 62, color=SLATE, sw=1.6))
    b.append(rect(112, 52, 16, 12, "#FFFFFF", SLATE, 3, 1.2))
    b.append(t(120, 46, "thermometer", size=7.4, fill=MUTED))

    # condenser
    b.append(path("M 250 100 L 340 148", fill="none", stroke=SLATE, sw=2.0))
    b.append(path("M 236 118 L 330 168 L 344 142 L 250 92 Z", fill=BLUE_LIGHT, stroke=BLUE, sw=1.0))
    b.append(t(296, 110, "condenser", size=7.4, fill=BLUE))
    b.append(t(296, 182, "cold water in at the bottom", size=7.0, fill=BLUE))

    # receiver
    b.append(rect(330, 186, 54, 66, "#FFFFFF", SLATE, 8, 1.4))
    b.append(f'<path d="M 334 216 L 334 244 Q 334 248 340 248 L 374 248 Q 380 248 380 244 L 380 216 Z" fill="{GREEN}" opacity="0.22"/>')
    b.append(t(357, 266, "distillate", size=7.4, fill=MUTED))

    b.append(rect(408, 70, 140, 160, "#FFFFFF", GREEN, 7, 1.2))
    b.append(t(478, 88, "What separates", size=8.6, weight="bold", fill=GREEN))
    b.append(t(478, 108, "ethanol 78 °C", size=7.8, fill=NAVY))
    b.append(t(478, 124, "water 100 °C", size=7.8, fill=NAVY))
    b.append(t(478, 148, "The vapour is richer in", size=7.6, fill=SLATE))
    b.append(t(478, 162, "the more volatile liquid,", size=7.6, fill=SLATE))
    b.append(t(478, 176, "so the distillate is a", size=7.6, fill=SLATE))
    b.append(t(478, 190, "mixture — never pure.", size=7.6, fill=SLATE))
    b.append(t(478, 210, "A fractionating column", size=7.6, fill=MUTED))
    b.append(t(478, 222, "gives a sharper split.", size=7.6, fill=MUTED))
    write_svg("ch03_distillation.svg", svg(w, h, "\n".join(b)))


def ch03_oxidation_ladder():
    w, h = 560, 356
    b = [t(280, 22, "THE OXIDATION LADDER — WHAT KIND OF ALCOHOL DECIDES WHAT YOU GET",
           size=10.3, weight="bold")]
    b.append(t(280, 40, "acidified potassium dichromate(VI), orange → green, is the reagent in every case",
               size=7.8, fill=MUTED))

    for x, lab, col in ((100, "PRIMARY", GREEN), (280, "SECONDARY", BLUE), (458, "TERTIARY", PURPLE)):
        b.append(rect(x - 74, 56, 148, 26, col, col, 5, 0))
        b.append(t(x, 74, lab, size=8.8, weight="bold", fill="#FFFFFF"))

    boxes = {
        100: [("RCH₂OH", "the alcohol", 108, GREEN),
              ("RCHO", "an aldehyde", 168, AMBER),
              ("RCOOH", "a carboxylic acid", 228, RED)],
        280: [("R₂CHOH", "the alcohol", 108, BLUE),
              ("R₂C=O", "a ketone", 168, PURPLE)],
        458: [("R₃COH", "the alcohol", 108, PURPLE)],
    }
    for x, items in boxes.items():
        for formula, name, y, col in items:
            b.append(rect(x - 74, y - 18, 148, 44, "#FFFFFF", col, 6, 1.3))
            b.append(t(x, y - 1, formula, size=10.4, weight="bold", fill=col))
            b.append(t(x, y + 15, name, size=7.2, fill=MUTED))
    b.append(arrow2(100, 136, 100, 158, color=AMBER, sw=1.4, size=6))
    b.append(t(88, 150, "distil off", size=6.8, fill=AMBER, anchor="end"))
    b.append(arrow2(100, 196, 100, 216, color=RED, sw=1.4, size=6))
    b.append(t(88, 210, "reflux", size=6.8, fill=RED, anchor="end"))
    b.append(arrow2(280, 136, 280, 158, color=PURPLE, sw=1.4, size=6))
    b.append(t(366, 150, "no further", size=6.8, fill=PURPLE, anchor="start"))

    b.append(rect(12, 268, 536, 76, "#FFFFFF", BORDER, 6, 1.0))
    b.append(t(280, 288, "The tertiary alcohol has no hydrogen on the carbon carrying the OH, so it cannot be oxidised without breaking the skeleton.",
               size=7.8, fill=NAVY))
    b.append(t(280, 306, "That is why it resists acidified dichromate and the orange colour simply stays — the standard negative test.",
               size=7.8, fill=MUTED))
    b.append(t(280, 330, "A primary alcohol oxidised in air for a week goes all the way to the acid; the aldehyde is only caught if it is distilled off as it forms.",
               size=7.6, fill=SLATE))
    write_svg("ch03_oxidation_ladder.svg", svg(w, h, "\n".join(b)))


def ch03_alcohol_reactions():
    w, h = 560, 300
    b = [t(280, 22, "ETHANOL — FIVE REACTIONS THE EXAMINER ASKS FOR", size=10.6, weight="bold")]
    cx, cy = 280, 160
    b.append(rect(cx - 66, cy - 30, 132, 60, "#FFFFFF", NAVY, 9, 1.7))
    b.append(t(cx, cy - 2, "C₂H₅OH", size=12.6, weight="bold", fill=NAVY))
    b.append(t(cx, cy + 16, "ethanol", size=7.8, fill=MUTED))

    left = [("with sodium", "2C₂H₅OH + 2Na → 2C₂H₅ONa + H₂", GREEN),
            ("with acidified dichromate", "CH₃CHO, then CH₃COOH", AMBER),
            ("dehydration, Al₂O₃, 300 °C", "C₂H₄ + H₂O", BLUE)]
    right = [("with ethanoic acid, H₂SO₄", "CH₃COOC₂H₅ + H₂O", PURPLE),
             ("burning in air", "2CO₂ + 3H₂O", RED),
             ("with phosphorus(V) chloride", "C₂H₅Cl + POCl₃ + HCl", SLATE)]
    for i, (a, p, col) in enumerate(left):
        y = 84 + i * 76
        b.append(rect(6, y - 26, 170, 52, "#FFFFFF", col, 6, 1.2))
        b.append(t(91, y - 8, a, size=7.4, weight="bold", fill=col))
        b.append(t(91, y + 9, p, size=7.0, fill=SLATE))
        b.append(arrow2(180, y, cx - 70, cy, color=col, sw=1.4, size=5.5))
    for i, (a, p, col) in enumerate(right):
        y = 84 + i * 76
        b.append(rect(384, y - 26, 170, 52, "#FFFFFF", col, 6, 1.2))
        b.append(t(469, y - 8, a, size=7.4, weight="bold", fill=col))
        b.append(t(469, y + 9, p, size=7.0, fill=SLATE))
        b.append(arrow2(380, y, cx + 70, cy, color=col, sw=1.4, size=5.5))
    b.append(t(280, 288, "The first three show the O–H bond breaking; the last three show the whole molecule reacting.",
               size=8.0, fill=MUTED))
    write_svg("ch03_alcohol_reactions.svg", svg(w, h, "\n".join(b)))


def ch03_ethanoic_acid():
    w, h = 560, 296
    b = [t(280, 22, "ETHANOIC ACID IS A WEAK ACID — AND A WEAK ACID REACTS SLOWLY BUT COMPLETELY",
           size=9.9, weight="bold")]
    b.append(t(280, 40, "CH₃COOH ⇌ CH₃COO⁻ + H⁺ · about 1 % ionised in 0.1 M solution · pH about 3", size=8.2, fill=MUTED))

    rows = [
        ("with a carbonate", "2CH₃COOH + Na₂CO₃ → 2CH₃COONa + H₂O + CO₂", "effervescence — the test that separates it from a phenol", GREEN),
        ("with a reactive metal", "2CH₃COOH + Mg → (CH₃COO)₂Mg + H₂", "steady bubbling, the metal dissolves", BLUE),
        ("with a base", "CH₃COOH + NaOH → CH₃COONa + H₂O", "warm, no visible change — neutralisation", PURPLE),
        ("with an alcohol", "CH₃COOH + C₂H₅OH ⇌ CH₃COOC₂H₅ + H₂O", "a sweet smell; needs concentrated H₂SO₄", AMBER),
        ("with chlorine", "CH₃COOH + Cl₂ → CH₂ClCOOH + HCl", "in sunlight; gives a stronger acid", RED),
    ]
    y = 62
    for name, eq, obs, col in rows:
        b.append(rect(8, y, 544, 40, "#FFFFFF" if y % 80 == 62 else GREEN_LIGHT, col, 5, 1.0))
        b.append(t(14, y + 16, name, size=7.8, weight="bold", fill=col, anchor="start"))
        b.append(t(150, y + 16, eq, size=7.8, fill=NAVY, anchor="start"))
        b.append(t(14, y + 31, obs, size=7.0, fill=MUTED, anchor="start"))
        y += 46
    write_svg("ch03_ethanoic_acid.svg", svg(w, h, "\n".join(b)))


# ── Chapter 4 ──────────────────────────────────────────────────────────────
def ch04_esterification():
    w, h = 560, 286
    b = [t(280, 22, "ESTERIFICATION — AN ACID AND AN ALCOHOL JOIN AND WATER IS LOST",
           size=10.4, weight="bold")]

    def mol(x, y, formula, name, col):
        return [rect(x - 66, y - 24, 132, 48, "#FFFFFF", col, 6, 1.3),
                t(x, y - 2, formula, size=11.4, weight="bold", fill=col),
                t(x, y + 14, name, size=7.4, fill=MUTED)]

    b += mol(110, 100, "CH₃COOH", "ethanoic acid", GREEN)
    b += mol(110, 190, "C₂H₅OH", "ethanol", BLUE)
    b.append(t(110, 132, "+", size=12, fill=MUTED, weight="bold"))
    b.append(t(110, 148, "↓", size=12, fill=MUTED, weight="bold"))
    b.append(arrow2(196, 146, 300, 146, color=AMBER, sw=2.0, size=8))
    b.append(t(248, 134, "conc. H₂SO₄", size=7.6, fill=AMBER, weight="bold"))
    b.append(t(248, 162, "warm, reflux", size=7.2, fill=MUTED))

    b += mol(400, 118, "CH₃COOC₂H₅", "ethyl ethanoate", PURPLE)
    b.append(t(400, 156, "an ester — sweet, fruity smell", size=7.8, fill=SLATE))
    b.append(arrow2(400, 170, 400, 216, color=SLATE, sw=1.4, size=6))
    b += mol(400, 242, "H₂O", "water — from the acid's OH and the alcohol's H", SLATE)

    b.append(rect(8, 246, 250, 30, GREEN_LIGHT, GREEN, 5, 1.0))
    b.append(t(133, 265, "Acid + alcohol ⇌ ester + water", size=8.0, fill=NAVY))
    b.append(rect(290, 246, 262, 30, "#FFFBEB", AMBER, 5, 1.0))
    b.append(t(421, 265, "The reaction is reversible — H₂SO₄ removes the water", size=7.6, fill=NAVY))
    write_svg("ch04_esterification.svg", svg(w, h, "\n".join(b)))


def ch04_soap_micelle():
    w, h = 560, 338
    b = [t(280, 22, "HOW SOAP WORKS — A LONG TAIL THAT LOVES OIL AND A HEAD THAT LOVES WATER",
           size=9.7, weight="bold")]

    # single soap ion
    b.append(rect(12, 40, 536, 62, "#FFFFFF", BORDER, 6, 1.0))
    b.append(dot(60, 71, 15, GREEN, "none"))
    b.append(t(60, 75, "Na⁺", size=7.2, fill="#FFFFFF", weight="bold"))
    b.append(line(76, 71, 130, 71, color=SLATE, sw=2.2))
    b.append(t(150, 66, "the ionic head — hydrophilic", size=7.4, fill=GREEN, anchor="start"))
    b.append(t(150, 82, "the hydrocarbon tail, C₁₇H₃₅ — hydrophobic", size=7.4, fill=MUTED, anchor="start"))

    # grease drop with micelle
    b.append(f'<circle cx="170" cy="196" r="62" fill="{AMBER}" opacity="0.22" stroke="{AMBER}" stroke-width="1.2"/>')
    b.append(t(170, 200, "grease", size=8.4, fill=AMBER, weight="bold"))
    for ang in range(0, 360, 45):
        import math
        a = math.radians(ang)
        x1, y1 = 170 + 64 * math.cos(a), 196 + 64 * math.sin(a)
        x2, y2 = 170 + 92 * math.cos(a), 196 + 92 * math.sin(a)
        b.append(line(x1, y1, x2, y2, color=SLATE, sw=1.8))
        b.append(dot(x2 + 6 * math.cos(a), y2 + 6 * math.sin(a), 5.5, GREEN, "none"))
    b.append(t(170, 326, "tails in the grease, heads in the water", size=7.6, fill=MUTED))

    # explanation
    b.append(rect(292, 130, 258, 132, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(421, 150, "Why the grease lifts", size=8.8, weight="bold", fill=GREEN, anchor="middle"))
    b.append(t(302, 170, "1 · The tails dissolve in the grease and the heads", size=7.4, fill=NAVY, anchor="start"))
    b.append(t(302, 184, "     stay in the water, so the drop is surrounded.", size=7.4, fill=NAVY, anchor="start"))
    b.append(t(302, 204, "2 · The micelle carries a negative surface charge,", size=7.4, fill=NAVY, anchor="start"))
    b.append(t(302, 218, "     so the drops repel and cannot join again.", size=7.4, fill=NAVY, anchor="start"))
    b.append(t(302, 238, "3 · Agitation lifts the micelles into the water and", size=7.4, fill=NAVY, anchor="start"))
    b.append(t(302, 252, "     the rinse carries them away.", size=7.4, fill=NAVY, anchor="start"))
    write_svg("ch04_soap_micelle.svg", svg(w, h, "\n".join(b)))


def ch04_saponification():
    w, h = 560, 262
    b = [t(280, 22, "SAPONIFICATION — BOILING A FAT WITH ALKALI TO MAKE SOAP",
           size=10.4, weight="bold")]
    steps = [
        ("Fat or oil", "a triglyceride", "glyceryl triester", AMBER),
        ("+ NaOH (aq)", "boiled, about 100 °C", "the alkali is in excess", BLUE),
        ("Soap + glycerol", "sodium salts of the acids", "the soap is salted out", GREEN),
    ]
    for i, (head, l1, l2, col) in enumerate(steps):
        x = 12 + i * 184
        b.append(rect(x, 48, 172, 96, "#FFFFFF", col, 8, 1.4))
        b.append(f'<rect x="{x}" y="48" width="172" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + 86, 74, head, size=10.0, weight="bold", fill=NAVY))
        b.append(t(x + 86, 94, l1, size=7.6, fill=SLATE))
        b.append(t(x + 86, 110, l2, size=7.6, fill=MUTED))
        if i < 2:
            b.append(arrow2(x + 176, 96, x + 186, 96, color=GREEN, sw=1.6, size=6))

    b.append(rect(12, 158, 536, 88, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(280, 176, "The equation, in the form the examiner wants", size=8.4, weight="bold", fill=GREEN))
    b.append(t(280, 198, "fat + 3NaOH → 3RCOONa + C₃H₅(OH)₃", size=10.2, fill=NAVY, weight="bold"))
    b.append(t(280, 218, "ester + alkali → soap + glycerol", size=8.2, fill=SLATE))
    b.append(t(280, 236, "Salt (NaCl) is added to precipitate the soap: it is insoluble in the concentrated brine.", size=7.6, fill=MUTED))
    write_svg("ch04_saponification.svg", svg(w, h, "\n".join(b)))


def ch04_polymer_types():
    w, h = 560, 316
    b = [t(280, 22, "TWO WAYS TO BUILD A POLYMER", size=11.0, weight="bold")]

    # addition
    b.append(rect(6, 40, 268, 250, "#FFFFFF", GREEN, 8, 1.4))
    b.append(t(140, 60, "ADDITION", size=9.4, weight="bold", fill=GREEN))
    b.append(t(140, 76, "one monomer, nothing lost", size=7.6, fill=MUTED))
    b.append(t(140, 104, "n CH₂=CH₂", size=9.4, fill=NAVY))
    b.append(t(140, 122, "→ [CH₂—CH₂]ₙ", size=9.4, fill=GREEN, weight="bold"))
    b.append(t(140, 148, "poly(ethene), PVC, polypropene,", size=7.6, fill=SLATE))
    b.append(t(140, 162, "polystyrene, PTFE", size=7.6, fill=SLATE))
    b.append(rect(18, 180, 244, 100, GREEN_LIGHT, GREEN, 5, 0.9))
    b.append(t(140, 198, "Monomer must be unsaturated.", size=7.6, fill=NAVY))
    b.append(t(140, 216, "The empirical formula does not change.", size=7.6, fill=NAVY))
    b.append(t(140, 234, "Thermoplastic: softens on heating.", size=7.6, fill=NAVY))
    b.append(t(140, 252, "No small molecule is eliminated.", size=7.6, fill=NAVY))
    b.append(t(140, 270, "Molecular mass ≈ n × monomer mass.", size=7.6, fill=NAVY))

    # condensation
    b.append(rect(286, 40, 268, 250, "#FFFFFF", PURPLE, 8, 1.4))
    b.append(t(420, 60, "CONDENSATION", size=9.4, weight="bold", fill=PURPLE))
    b.append(t(420, 76, "two monomers, water lost", size=7.6, fill=MUTED))
    b.append(t(420, 104, "n H₂N–R–NH₂ + n HOOC–R'–COOH", size=7.6, fill=NAVY))
    b.append(t(420, 122, "→ [–NH–R–NHCO–R'–CO–]ₙ + 2n H₂O", size=7.6, fill=PURPLE, weight="bold"))
    b.append(t(420, 148, "nylon, terylene (PET), proteins", size=7.6, fill=SLATE))
    b.append(t(420, 162, "and starch are all condensation", size=7.6, fill=SLATE))
    b.append(rect(298, 180, 244, 100, PURPLE_LIGHT, PURPLE, 5, 0.9))
    b.append(t(420, 198, "Each monomer needs two groups.", size=7.6, fill=NAVY))
    b.append(t(420, 216, "A small molecule (water, HCl) is lost", size=7.6, fill=NAVY))
    b.append(t(420, 230, "at every link.", size=7.6, fill=NAVY))
    b.append(t(420, 250, "Often thermosetting: it does not", size=7.6, fill=NAVY))
    b.append(t(420, 264, "soften again on heating.", size=7.6, fill=NAVY))
    write_svg("ch04_polymer_types.svg", svg(w, h, "\n".join(b)))


def recap_cards_b():
    recap_card("recap_ch03.svg", "Chapter 3 recap card — alcohols and acids", [
        ("Alcohols",
         "CₙH₂ₙ₊₁OH. Ethanol is made by fermentation of glucose or by hydration of ethene; it boils at 78 °C and is a good solvent."),
        ("Oxidation",
         "Primary → aldehyde → carboxylic acid; secondary → ketone; tertiary resists. Acidified dichromate turns orange to green."),
        ("Ethanoic acid",
         "A weak acid: partial ionisation, pH about 3, reacts with carbonates, metals, bases and alcohols, and with chlorine in sunlight."),
        ("Esters",
         "Acid + alcohol ⇌ ester + water with concentrated H₂SO₄. Esters are the sweet smell of fruit and the base of fats and oils."),
    ])
    recap_card("recap_ch04.svg", "Chapter 4 recap card — esters, soaps and polymers", [
        ("Fats and oils",
         "Triglycerides: three fatty acids on glycerol. Oils are unsaturated and liquid; fats are saturated and solid."),
        ("Soap",
         "Boiling a fat with NaOH gives soap and glycerol. The ion has a hydrocarbon tail and an ionic head, so it forms micelles."),
        ("Hard water",
         "Calcium and magnesium ions form a scum with soap; a detergent does not, because its calcium salt is soluble."),
        ("Polymers",
         "Addition: an unsaturated monomer, nothing lost. Condensation: two monomers, a small molecule lost at every link."),
    ])
