"""Vector diagrams for Chapters 3–4 of JAMB Chemistry Volume 3."""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from common import (  # noqa: E402
    GREEN, GREEN_LIGHT, GREEN_MID, GREEN_BRIGHT, NAVY, SLATE, MUTED, BORDER,
    AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT,
    LIGHT_BG, rect, t, lines, arrow2, arrow, line, dot, poly, path, card,
    recap_card, write_svg, svg, save, plt, np,
)

FIGURES = [
    "ch03_blast", "ch03_bayer", "ch03_hall", "ch03_steel",
    "ch04_prep", "ch04_haber", "ch04_ostwald", "ch04_nitrogen",
    "recap_cards_b",
]


# ── Chapter 3: aluminium, iron and steel ───────────────────────────────────
def ch03_blast():
    """The blast furnace, with the chemistry matched to each temperature band."""
    w, h = 760, 440
    b = [t(380, 24, "THE BLAST FURNACE — TEMPERATURE BANDS AND THEIR REACTIONS",
           size=12.0, weight="bold"),
         t(380, 42, "The furnace is a counter-current reactor: solids fall, gases rise, and each band does one job.",
           size=8.2, fill=MUTED)]

    # furnace body
    body = [(300, 60), (460, 60), (480, 140), (480, 340), (450, 380), (310, 380), (280, 340), (280, 140)]
    b.append(poly(body, "#FFF7ED", "#9A3412", 1.6))
    b.append(t(364, 52, "charge: iron ore + coke + limestone", size=7.4, fill=SLATE, anchor="end"))

    bands = [
        ("200–400 °C", "moisture driven off", "CaCO₃ → CaO + CO₂", 78, 150, AMBER_LIGHT, AMBER),
        ("400–800 °C", "coke burns to CO", "CO₂ + C → 2CO", 150, 226, "#FFEDD5", "#C2410C"),
        ("800–1200 °C", "the ore is reduced", "Fe₂O₃ + 3CO → 2Fe + 3CO₂", 226, 302, "#FED7AA", "#9A3412"),
        ("1500 °C", "iron melts and falls", "CaO + SiO₂ → CaSiO₃ (slag)", 302, 372, "#FDBA74", "#7C2D12"),
    ]
    for (label, job, eqn, y0, y1, fillc, strokec) in bands:
        b.append(rect(288, y0, 184, y1 - y0 - 2, fillc, strokec, 4, 1.0))
        b.append(t(380, y0 + 16, label, size=7.6, weight="bold", fill="#78350F"))
        b.append(t(380, y0 + 29, job, size=6.9, fill=SLATE))

    # right-hand explanation column
    for (label, job, eqn, y0, y1, fillc, strokec) in bands:
        b.append(t(500, y0 + (y1 - y0) / 2 + 3, eqn, size=7.4, fill=NAVY, anchor="start"))
    b.append(t(226, 355, "slag (used in cement)", size=7.0, fill=MUTED, anchor="end"))

    # inputs and outputs
    b.append(arrow2(380, 44, 380, 60, color=AMBER, sw=1.6))
    b.append(arrow2(170, 200, 276, 200, color=GREEN, sw=2.0))
    b.append(t(160, 195, "hot air", size=8.0, fill=GREEN, anchor="end"))
    b.append(t(160, 208, "(preheated blast)", size=6.8, fill=MUTED, anchor="end"))
    b.append(arrow2(380, 380, 380, 404, color=RED, sw=1.8))
    b.append(t(380, 420, "molten iron (about 4 % carbon) → steel making", size=7.6, fill=RED))
    b.append(arrow2(276, 352, 232, 352, color=MUTED, sw=1.4))
    write_svg("ch03_blast.svg", svg(w, h, "\n".join(b)))


def ch03_bayer():
    """Bauxite to aluminium in five linked stages."""
    w, h = 760, 300
    b = [t(380, 24, "FROM BAUXITE TO ALUMINIUM", size=12.2, weight="bold"),
         t(380, 42, "Two processes in series: Bayer purifies the ore, Hall–Héroult reduces the purified oxide.",
           size=8.4, fill=MUTED)]
    stages = [
        ("BAUXITE", ["Al₂O₃ with Fe₂O₃", "and SiO₂ impurities"], "#7C2D12", "#FED7AA"),
        ("DIGEST", ["hot NaOH, 150 °C", "Al₂O₃ dissolves", "Fe₂O₃ does not"], AMBER, AMBER_LIGHT),
        ("FILTER + SEED", ["cool and seed", "Al(OH)₃ precipitates", "impurities stay behind"], BLUE, BLUE_LIGHT),
        ("CALCINE", ["heat to 1200 °C", "2Al(OH)₃ → Al₂O₃", "+ 3H₂O"], PURPLE, PURPLE_LIGHT),
        ("ELECTROLYSE", ["Al₂O₃ in cryolite", "950 °C, carbon anodes", "4Al³⁺ + 12e⁻ → 4Al"], GREEN, GREEN_LIGHT),
    ]
    cw, gap = 138, 10
    for i, (head, body, col, light) in enumerate(stages):
        x = 16 + i * (cw + gap)
        b.append(rect(x, 60, cw, 150, light, col, 8, 1.5))
        b.append(t(x + cw / 2, 84, head, size=8.8, weight="bold", fill=col))
        b.append(lines(x + cw / 2, 104, body, size=7.0, fill=SLATE, gap=12))
        if i < 4:
            b.append(arrow2(x + cw + 1, 135, x + cw + gap - 1, 135, color=GREEN, sw=1.5))
    b.append(rect(16, 224, 728, 58, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 244, "Why not reduce alumina with carbon? Aluminium sits above carbon in the series,",
               size=8.2, fill=SLATE))
    b.append(t(380, 260, "so carbon cannot take the oxygen. Electricity has to do it — which is why aluminium",
               size=8.2, fill=SLATE))
    b.append(t(380, 276, "smelting is built beside a hydro-electric station, and why recycled aluminium saves 95 % of the energy.",
               size=8.2, fill=SLATE))
    write_svg("ch03_bayer.svg", svg(w, h, "\n".join(b)))


def ch03_hall():
    """Cross-section of a Hall–Héroult cell."""
    w, h = 760, 420
    b = [t(380, 24, "THE HALL–HÉROULT CELL", size=12.2, weight="bold"),
         t(380, 42, "A steel box lined with carbon, carbon anodes dipping in, and cryolite to melt the alumina at 950 °C.",
           size=8.2, fill=MUTED)]

    x0, y0, x1, y1 = 120, 120, 640, 320
    # steel shell
    b.append(rect(x0 - 8, y0 - 8, (x1 - x0) + 16, (y1 - y0) + 16, "#F1F5F9", SLATE, 6, 2.0))
    # carbon lining
    b.append(rect(x0, y0, x1 - x0, y1 - y0, "#334155", "#1E293B", 4, 1.2))
    # molten electrolyte
    b.append(rect(x0 + 16, y0 + 52, (x1 - x0) - 32, (y1 - y0) - 96, "#FDE68A", "#B45309", 3, 1.0))
    b.append(t(380, y0 + 92, "molten cryolite + dissolved Al₂O₃ at about 950 °C", size=8.0, fill="#7C2D12"))
    # aluminium pool
    b.append(rect(x0 + 16, y1 - 44, (x1 - x0) - 32, 34, "#CBD5E1", "#64748B", 3, 1.2))
    b.append(t(380, y1 - 22, "molten aluminium (cathode surface)", size=8.0, fill=NAVY))

    # anodes
    for ax in (250, 380, 510):
        b.append(rect(ax - 20, y0 - 26, 40, 74, "#1F2937", "#111827", 3, 1.2))
        b.append(line(ax, y0 - 26, ax, 60, color="#111827", sw=3.0))
        b.append(t(ax, 52, "carbon anode", size=6.8, fill=MUTED))
    b.append(line(230, 60, 530, 60, color="#111827", sw=2.4))
    b.append(t(556, 52, "positive (+)", size=7.4, fill=RED, anchor="start"))
    b.append(line(240, y1 + 24, 520, y1 + 24, color=SLATE, sw=2.0))
    b.append(t(380, y1 + 38, "negative (−) bus bar", size=7.4, fill=BLUE))

    b.append(t(660, 160, "O²⁻ → O₂ + 4e⁻", size=7.6, fill=RED, anchor="start"))
    b.append(t(660, 174, "the anodes burn", size=6.8, fill=MUTED, anchor="start"))
    b.append(t(660, 186, "away as CO₂", size=6.8, fill=MUTED, anchor="start"))
    b.append(t(660, 250, "Al³⁺ + 3e⁻ → Al", size=7.6, fill=BLUE, anchor="start"))
    b.append(t(660, 264, "liquid metal,", size=6.8, fill=MUTED, anchor="start"))
    b.append(t(660, 276, "tapped from below", size=6.8, fill=MUTED, anchor="start"))
    b.append(rect(24, 386, 712, 22, GREEN_LIGHT, GREEN, 5, 0.9))
    b.append(t(380, 401, "The anodes must be replaced regularly, which is the main running cost after electricity.",
               size=7.6, fill=SLATE))
    write_svg("ch03_hall.svg", svg(w, h, "\n".join(b)))


def ch03_steel():
    """What carbon does to iron — three steels side by side."""
    w, h = 760, 250
    b = [t(380, 22, "CARBON IS THE WHOLE DIFFERENCE", size=12.2, weight="bold"),
         t(380, 40, "Iron with less than 0.1 % carbon is soft; above 2 % it is no longer steel but cast iron.",
           size=8.4, fill=MUTED)]
    rows = [
        ("MILD STEEL", "0.05–0.25 % C", "soft, ductile, easy to weld", "car bodies, nails, pipes, ships", GREEN, GREEN_LIGHT),
        ("MEDIUM CARBON", "0.25–0.6 % C", "stronger, harder, less ductile", "rails, gears, crankshafts", AMBER, AMBER_LIGHT),
        ("HIGH CARBON", "0.6–1.5 % C", "very hard, brittle", "tools, blades, springs", PURPLE, PURPLE_LIGHT),
    ]
    for i, (name, pc, prop, use, col, light) in enumerate(rows):
        y = 58 + i * 60
        b.append(rect(20, y, 720, 50, light, col, 7, 1.2))
        b.append(t(112, y + 22, name, size=9.4, weight="bold", fill=col))
        b.append(t(112, y + 38, pc, size=7.6, fill=SLATE))
        b.append(t(390, y + 31, prop, size=8.2, fill=NAVY))
        b.append(t(620, y + 31, use, size=8.0, fill=NAVY))
    b.append(t(380, 240, "Adding chromium and nickel gives stainless steel: a Cr₂O₃ skin that stops rust forming.",
               size=7.6, fill=SLATE))
    write_svg("ch03_steel.svg", svg(w, h, "\n".join(b)))


# ── Chapter 4: hydrogen, oxygen and nitrogen ───────────────────────────────
def ch04_prep():
    """Three laboratory preparations, drawn side by side."""
    w, h = 760, 300
    b = [t(380, 22, "THREE GASES YOU MUST BE ABLE TO PREPARE", size=12.2, weight="bold"),
         t(380, 40, "Each is a displacement or a decomposition; each is collected by the method its density and solubility allow.",
           size=8.0, fill=MUTED)]

    def panel(x, title, reagents, method, collect, col, light):
        out = [rect(x, 56, 232, 196, light, col, 8, 1.4)]
        out.append(t(x + 116, 78, title, size=9.6, weight="bold", fill=col))
        out.append(t(x + 116, 100, reagents, size=7.4, fill=NAVY))
        out.append(lines(x + 116, 122, method, size=6.9, fill=SLATE, gap=11))
        out.append(rect(x + 12, 190, 208, 44, "#FFFFFF", col, 6, 0.9))
        out.append(t(x + 116, 208, "collected:", size=6.6, fill=MUTED))
        out.append(t(x + 116, 224, collect, size=7.4, fill=NAVY))
        return out

    b += panel(16, "OXYGEN", "2H₂O₂ → 2H₂O + O₂",
               ["hydrogen peroxide,", "manganese(IV) oxide catalyst", "no heating needed"],
               "over water, or downward delivery", GREEN, GREEN_LIGHT)
    b += panel(264, "HYDROGEN", "Zn + 2HCl → ZnCl₂ + H₂",
               ["granulated zinc +", "dilute hydrochloric acid", "copper(II) sulphate speeds it up"],
               "over water (it is insoluble)", BLUE, BLUE_LIGHT)
    b += panel(512, "AMMONIA", "2NH₄Cl + Ca(OH)₂ → CaCl₂ + 2NH₃ + 2H₂O",
               ["heat the solid mixture", "dry with calcium oxide", "never with calcium chloride"],
               "upward delivery (lighter than air)", PURPLE, PURPLE_LIGHT)
    b.append(t(380, 274, "Ammonia is the only one of the three that must be kept dry: it dissolves in water as fast as it forms.",
               size=7.6, fill=SLATE))
    write_svg("ch04_prep.svg", svg(w, h, "\n".join(b)))


def ch04_haber():
    """The Haber loop: feed, compress, convert, cool, separate, recycle."""
    w, h = 800, 300
    b = [t(400, 22, "THE HABER PROCESS — A LOOP, NOT A LINE", size=12.2, weight="bold"),
         t(400, 40, "Unreacted nitrogen and hydrogen are recycled, so the converter is fed again and again.",
           size=8.2, fill=MUTED)]

    boxes = [
        ("FEED", ["N₂ from air", "H₂ from natural gas", "ratio 1 : 3"], 16, 66, GREEN),
        ("COMPRESS", ["200 atm", "the gases are", "squeezed together"], 172, 66, AMBER),
        ("CONVERTER", ["iron catalyst", "450 °C", "N₂ + 3H₂ ⇌ 2NH₃"], 328, 66, RED),
        ("COOL", ["the mixture is", "cooled so that", "ammonia liquefies"], 484, 66, BLUE),
        ("SEPARATE", ["liquid NH₃", "drawn off; unreacted", "gases return"], 640, 66, PURPLE),
    ]
    for (head, body, x, y, col) in boxes:
        b.append(rect(x, y, 140, 108, "#FFFFFF", col, 7, 1.5))
        b.append(t(x + 70, y + 20, head, size=8.0, weight="bold", fill=col))
        b.append(lines(x + 70, y + 40, body, size=6.8, fill=SLATE, gap=12))
        if x < 640:
            b.append(arrow2(x + 142, y + 54, x + 154, y + 54, color=GREEN, sw=1.5))

    # recycle loop
    b.append(path("M 710 176 L 710 236 L 398 236 L 398 178", stroke=AMBER, sw=1.6, dash="5 4"))
    b.append(arrow2(398, 210, 398, 178, color=AMBER, sw=1.6))
    b.append(t(554, 251, "recycle: unreacted N₂ and H₂ go back to the compressor", size=7.2, fill=AMBER))

    b.append(rect(20, 262, 760, 26, GREEN_LIGHT, GREEN, 5, 0.9))
    b.append(t(400, 279, "Yield per pass is only about 15 % — the loop, not the yield, is what makes the process economic.",
               size=7.6, fill=SLATE))
    write_svg("ch04_haber.svg", svg(w, h, "\n".join(b)))


def ch04_ostwald():
    """Ammonia to nitric acid in three catalytic steps."""
    w, h = 760, 290
    b = [t(380, 22, "THE OSTWALD PROCESS — AMMONIA TO NITRIC ACID", size=12.2, weight="bold"),
         t(380, 40, "Three steps, two catalysts, one product: the acid that makes fertilisers and explosives.",
           size=8.2, fill=MUTED)]
    steps = [
        ("1  OXIDISE", "4NH₃ + 5O₂ → 4NO + 6H₂O", ["platinum–rhodium gauze", "900 °C", "exothermic"], RED, RED_LIGHT),
        ("2  OXIDISE AGAIN", "2NO + O₂ → 2NO₂", ["no catalyst needed", "cool to about 50 °C", "brown gas appears"], AMBER, AMBER_LIGHT),
        ("3  ABSORB", "4NO₂ + O₂ + 2H₂O → 4HNO₃", ["trickle down a packed tower", "counter-current water", "60 % acid"], GREEN, GREEN_LIGHT),
    ]
    for i, (head, eqn, notes, col, light) in enumerate(steps):
        x = 24 + i * 244
        b.append(rect(x, 62, 220, 156, light, col, 8, 1.5))
        b.append(t(x + 110, 86, head, size=9.2, weight="bold", fill=col))
        b.append(t(x + 110, 112, eqn, size=7.6, fill=NAVY))
        b.append(lines(x + 110, 138, notes, size=7.0, fill=SLATE, gap=12))
        if i < 2:
            b.append(arrow2(x + 221, 140, x + 241, 140, color=GREEN, sw=1.6))
    b.append(rect(24, 234, 712, 44, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(380, 252, "The first step is the only one that needs a catalyst, and it is the step that decides the cost:",
               size=7.8, fill=SLATE))
    b.append(t(380, 268, "platinum is poisoned by arsenic impurities, so the ammonia must be very pure.",
               size=7.8, fill=SLATE))
    write_svg("ch04_ostwald.svg", svg(w, h, "\n".join(b)))


def ch04_nitrogen():
    """The nitrogen cycle as a ring of six stages."""
    w, h = 760, 434
    b = [t(380, 24, "THE NITROGEN CYCLE", size=12.2, weight="bold"),
         t(380, 42, "Nitrogen gas is inert; every living thing needs it as nitrate or ammonium, and bacteria do the conversion.",
           size=8.2, fill=MUTED)]

    ring = [("N₂ in the air", "inert; 78 % of the atmosphere", 380, 80, GREEN, GREEN_LIGHT),
            ("nitrogen fixation", "lightning, bacteria, Haber", 614, 150, AMBER, AMBER_LIGHT),
            ("nitrates and ammonium", "nitrifying bacteria make them", 614, 284, AMBER, AMBER_LIGHT),
            ("plants absorb nitrate", "assimilation into protein", 380, 352, GREEN, GREEN_LIGHT),
            ("animals eat plants", "protein passes along the chain", 146, 284, BLUE, BLUE_LIGHT),
            ("decomposition and denitrification", "bacteria return N₂ to the air", 146, 150, PURPLE, PURPLE_LIGHT)]
    for (label, sub, cx, cy, col, light) in ring:
        b.append(rect(cx - 90, cy - 28, 180, 56, light, col, 9, 1.4))
        if label.startswith("decomposition"):
            b.append(t(cx, cy - 12, "decomposition and", size=8.4, weight="bold", fill=col))
            b.append(t(cx, cy + 2, "denitrification", size=8.4, weight="bold", fill=col))
            b.append(t(cx, cy + 17, sub, size=6.6, fill=MUTED))
        else:
            b.append(t(cx, cy - 6, label, size=8.6, weight="bold", fill=col))
            b.append(t(cx, cy + 11, sub, size=6.8, fill=MUTED))

    arcs = [(472, 100, 514, 114),
            (614, 180, 614, 252),
            (520, 308, 478, 330),
            (288, 332, 246, 310),
            (146, 252, 146, 180),
            (240, 122, 286, 106)]
    for (x1, y1, x2, y2) in arcs:
        b.append(arrow2(x1, y1, x2, y2, color=GREEN, sw=1.5))

    b.append(rect(24, 388, 712, 32, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(380, 408, "The Haber process short-circuits the cycle: it fixes nitrogen industrially, without bacteria.",
               size=7.6, fill=SLATE))
    write_svg("ch04_nitrogen.svg", svg(w, h, "\n".join(b)))


def recap_cards_b():
    recap_card("recap_ch03.svg", "Chapter 3 recap card — aluminium, iron and steel", [
        ("Blast furnace",
         "Charge: ore + coke + limestone. C + O₂ → CO₂; CO₂ + C → 2CO; Fe₂O₃ + 3CO → 2Fe + 3CO₂; CaCO₃ → CaO + CO₂; CaO + SiO₂ → CaSiO₃."),
        ("Hall–Héroult",
         "Alumina dissolved in cryolite at 950 °C. Cathode: Al³⁺ + 3e⁻ → Al. Anode: 2O²⁻ → O₂ + 4e⁻; the carbon anodes burn away."),
        ("Why electrolysis",
         "Aluminium is above carbon, so carbon cannot reduce it. Aluminium smelting therefore follows cheap electricity."),
        ("Steel",
         "Carbon content sets the properties: mild (0.05–0.25 %), medium (0.25–0.6 %), high (0.6–1.5 %). Chromium and nickel give stainless steel."),
    ])
    recap_card("recap_ch04.svg", "Chapter 4 recap card — hydrogen, oxygen and nitrogen", [
        ("Preparation",
         "O₂ from H₂O₂ + MnO₂; H₂ from Zn + dilute HCl; NH₃ from NH₄Cl + Ca(OH)₂, dried with CaO and collected upward."),
        ("Haber",
         "N₂ + 3H₂ ⇌ 2NH₃, iron catalyst, 450 °C, 200 atm, ΔH = −92 kJ mol⁻¹. Ammonia is liquefied out and the unreacted gases recycled."),
        ("Ostwald",
         "4NH₃ + 5O₂ → 4NO + 6H₂O over Pt/Rh at 900 °C; 2NO + O₂ → 2NO₂; 4NO₂ + O₂ + 2H₂O → 4HNO₃."),
        ("Nitrogen cycle",
         "Fixation (bacteria, lightning, Haber) → nitrates → plants → animals → decomposition → ammonium → nitrification → denitrification back to N₂."),
    ])
