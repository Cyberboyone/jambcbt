"""Vector diagrams for Chapters 5–6 of JAMB Chemistry Volume 2.

Equilibrium and electrochemistry. The two curve plots are matplotlib; the
cell diagram and the electrolysis tank are hand-written SVG.
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from common import (  # noqa: E402
    GREEN, GREEN_LIGHT, NAVY, SLATE, MUTED, BORDER, AMBER, AMBER_LIGHT,
    RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT,
    rect, t, lines, arrow2, line, dot, poly, path, recap_card, write_svg, svg, save,
    plt, np,
)


# ── chapter 5: equilibrium ────────────────────────────────────────────────
def ch05_equilibrium():
    """Concentration against time as a reaction settles into dynamic equilibrium."""
    fig, ax = plt.subplots(figsize=(7.4, 3.4))
    t_ = np.linspace(0, 60, 600)
    k, eq_a, eq_b = 0.072, 0.40, 0.60
    a = eq_a + (1.00 - eq_a) * np.exp(-k * t_)
    b = eq_b + (0.00 - eq_b) * np.exp(-k * t_)

    ax.plot(t_, a, color=BLUE, lw=2.2, label="[A] — the reactant, falling")
    ax.plot(t_, b, color=RED, lw=2.2, label="[B] — the product, rising")
    ax.axvline(35, color=MUTED, lw=0.9, ls=":")
    ax.text(36.2, 0.20, "after this point the concentrations are\nconstant — but both reactions still run",
            fontsize=7.4, color=SLATE)
    ax.text(36, 0.93, "the two rates become equal,\nwhich is the definition of equilibrium",
            fontsize=7.4, color=SLATE)
    ax.set_xlabel("time", fontsize=8)
    ax.set_ylabel("concentration / mol dm⁻³", fontsize=8)
    ax.set_xlim(0, 60)
    ax.set_ylim(0, 1.1)
    ax.set_xticks([])
    ax.grid(color="#E2E8F0", lw=0.8)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.legend(fontsize=7.4, frameon=False, loc="upper left", bbox_to_anchor=(0.02, 0.98))
    save(fig, "ch05_equilibrium.svg")


def ch05_lechatelier():
    """The three stresses and the direction each one pushes the equilibrium."""
    w, h = 760, 330
    b = [t(380, 24, "LE CHATELIER'S PRINCIPLE: THE SYSTEM PUSHES BACK", size=12.4, weight="bold")]

    x0, y0, bw, bh = 260, 78, 240, 168
    # the box representing the equilibrium mixture
    b.append(rect(x0, y0, bw, bh, GREEN_LIGHT, GREEN, 10, 1.4))
    b.append(t(x0 + bw / 2, y0 + 22, "A + B  ⇌  C + D", size=13, weight="bold"))
    b.append(t(x0 + bw / 2, y0 + 44, "at equilibrium", size=8.4, fill=MUTED))

    stresses = [
        ("raise the temperature", "the endothermic direction", RED),
        ("increase the pressure", "the side with fewer gas molecules", BLUE),
        ("add more of a reactant", "the forward reaction consumes it", GREEN),
        ("remove a product", "the forward reaction replaces it", PURPLE),
    ]
    ys = [96, 150, 204, 258]
    for (label, arrow, colour), y in zip(stresses, ys):
        b.append(t(250, y - 4, label, size=8.4, fill=colour, weight="bold", anchor="end"))
        b.append(arrow2(256, y, 300, y, color=colour, sw=1.8))

    # the other side: what the system does
    b.append(rect(520, 60, 214, 210, "#FFFFFF", BORDER, 8, 1.2))
    b.append(t(530, 80, "THE SYSTEM RESPONDS BY", size=8.6, weight="bold", fill=NAVY, anchor="start"))
    answers = [
        "absorbing heat — shifting in",
        "the endothermic direction",
        "",
        "moving to the side with fewer",
        "molecules, to lower the pressure",
        "",
        "using up the added reactant —",
        "shifting forward",
        "",
        "making more of the removed",
        "product — shifting forward",
    ]
    for i, s_ in enumerate(answers):
        b.append(t(530, 100 + i * 14, s_, size=7.8, fill=SLATE, anchor="start"))

    b.append(t(380, 300, "A catalyst changes neither the position nor the yield — it only makes equilibrium arrive sooner.",
               size=8.2, fill=MUTED))
    write_svg("ch05_lechatelier.svg", svg(w, h, "\n".join(b)))


def ch05_haber():
    """Yield of ammonia against pressure at three temperatures (saturating curves)."""
    fig, ax = plt.subplots(figsize=(7.4, 3.3))
    p = np.linspace(50, 350, 400)
    for temp, colour, k in [(300, BLUE, 0.0120), (450, GREEN, 0.0028), (600, RED, 0.0012)]:
        frac = (k * p) / (1 + k * p)
        ax.plot(p, 100 * frac, color=colour, lw=2.1, label=f"{temp} K")
    ax.set_xlabel("pressure / atm", fontsize=8)
    ax.set_ylabel("equilibrium yield of ammonia / %", fontsize=8)
    ax.set_xlim(50, 350)
    ax.set_ylim(0, 100)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.legend(title="temperature", fontsize=7.4, title_fontsize=7.4, frameon=False, loc="lower right")
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.text(58, 96,
            "High pressure and low temperature favour ammonia.\n"
            "But at a low temperature the reaction is too slow,\n"
            "so industry compromises at 450 °C and about 200 atm.",
            fontsize=7.0, color=SLATE, va="top", linespacing=1.5,
            bbox=dict(boxstyle="round,pad=0.35", facecolor="white", edgecolor="#CBD5E1", linewidth=0.6))
    save(fig, "ch05_haber.svg")


# ── chapter 6: redox and electrochemistry ─────────────────────────────────
def ch06_cell():
    """A zinc–copper galvanic cell, labelled, with the electrode equations alongside."""
    w, h = 760, 344
    b = [t(380, 24, "THE ZINC–COPPER CELL: ELECTRONS OUTSIDE, IONS INSIDE", size=12.4, weight="bold")]

    beakers = [
        (48, "Zn", "#D1D5DB", "zinc electrode (−)", "Zn²⁺(aq)", "#DCFCE7"),
        (300, "Cu", "#FCA5A5", "copper electrode (+)", "Cu²⁺(aq)", "#DBEAFE"),
    ]
    for bx, metal, colour, label, ion, tint in beakers:
        b.append(poly([(bx, 120), (bx + 176, 120), (bx + 164, 276), (bx + 12, 276)], "#FFFFFF", NAVY, 1.6))
        b.append(poly([(bx + 6, 158), (bx + 170, 158), (bx + 164, 276), (bx + 12, 276)], tint, "none", 0))
        b.append(rect(bx + 76, 76, 24, 150, colour, "#6B7280", 3, 1.2))
        b.append(t(bx + 88, 62, metal, size=10, weight="bold"))
        b.append(t(bx + 88, 292, label, size=8.2, fill=SLATE))
        b.append(t(bx + 88, 308, ion, size=8.0, fill=MUTED))

    # salt bridge between the two solutions
    b.append(path("M 220 232 Q 274 196 336 232", fill="none", stroke=PURPLE, sw=7))
    b.append(path("M 220 232 Q 274 196 336 232", fill="none", stroke="#FFFFFF", sw=2.2, dash="6 5"))
    b.append(t(274, 208, "salt bridge", size=8.0, fill=PURPLE, weight="bold"))

    # wires and voltmeter
    b.append(path("M 136 84 L 136 44 L 236 44", fill="none", stroke=NAVY, sw=2.0))
    b.append(path("M 388 84 L 388 44 L 320 44", fill="none", stroke=NAVY, sw=2.0))
    b.append(rect(244, 30, 64, 28, "#FFFFFF", NAVY, 5, 1.4))
    b.append(t(276, 49, "V", size=12, weight="bold"))
    b.append(arrow2(150, 100, 210, 100, color=GREEN, sw=1.8))
    b.append(t(180, 92, "e⁻", size=8.4, fill=GREEN, weight="bold"))

    b.append(t(300, 332, "Electrons travel from zinc to copper through the wire; the salt bridge completes the circuit inside.",
               size=7.8, fill=MUTED))

    # the electrode equations, right-hand column
    b.append(rect(508, 104, 240, 236, "#FFFFFF", BORDER, 7, 1.1))
    b.append(t(520, 124, "AT EACH ELECTRODE", size=8.4, weight="bold", fill=NAVY, anchor="start"))
    rows = [
        ("ANODE  (Zn)", "Zn → Zn²⁺ + 2e⁻", "oxidation", RED),
        ("CATHODE  (Cu)", "Cu²⁺ + 2e⁻ → Cu", "reduction", BLUE),
    ]
    y = 146
    for head, eq, kind, colour in rows:
        b.append(t(520, y, head, size=8.0, weight="bold", fill=colour, anchor="start"))
        b.append(t(520, y + 16, eq, size=8.4, fill=SLATE, anchor="start"))
        b.append(t(520, y + 30, kind, size=7.6, fill=MUTED, anchor="start"))
        y += 52
    b.append(line(520, y - 6, 736, y - 6, color=BORDER, sw=0.8))
    b.append(t(520, y + 12, "E°cell = E°(cathode) − E°(anode)", size=7.8, fill=SLATE, anchor="start"))
    b.append(t(520, y + 28, "= 0.34 − (−0.76) = 1.10 V", size=8.4, weight="bold", fill=NAVY, anchor="start"))
    b.append(t(520, y + 50, "The cell works because zinc is the", size=7.6, fill=SLATE, anchor="start"))
    b.append(t(520, y + 63, "more reactive of the two metals.", size=7.6, fill=SLATE, anchor="start"))
    write_svg("ch06_cell.svg", svg(w, h, "\n".join(b)))


def ch06_electrolysis():
    """Electrolysis of concentrated brine: tank in the middle, one electrode per side panel."""
    w, h = 760, 340
    b = [t(380, 24, "ELECTROLYSIS OF CONCENTRATED BRINE: THREE PRODUCTS, ONE TANK", size=12.2, weight="bold")]

    tx0, tx1, ty0, ty1 = 200, 560, 118, 296
    liq = 168
    b.append(poly([(tx0, ty0), (tx1, ty0), (tx1, ty1), (tx0, ty1)], "#FFFFFF", NAVY, 1.8))
    b.append(rect(tx0 + 3, liq, (tx1 - tx0) - 6, ty1 - liq - 3, "#FEF3C7", "none", 0, 0))
    b.append(t(380, 258, "concentrated NaCl(aq)", size=9.2, fill="#92400E", weight="bold"))

    anode_x, cathode_x = 282, 478
    for ex, label, colour in [(anode_x, "anode (+)", RED), (cathode_x, "cathode (−)", BLUE)]:
        b.append(rect(ex - 10, ty0 - 54, 20, 210, "#4B5563", "#1F2937", 2, 1.2))
        b.append(t(ex, ty0 - 60, label, size=8.4, weight="bold", fill=colour))

    # d.c. supply above the tank, clear of the title
    b.append(path(f"M {anode_x} {ty0 - 54} L {anode_x} 66 L 330 66", fill="none", stroke=NAVY, sw=1.8))
    b.append(path(f"M {cathode_x} {ty0 - 54} L {cathode_x} 66 L 430 66", fill="none", stroke=NAVY, sw=1.8))
    b.append(rect(336, 54, 88, 26, "#FFFFFF", NAVY, 4, 1.2))
    b.append(t(380, 71, "d.c. supply", size=7.6, weight="bold"))

    # left panel: chlorine
    b.append(rect(16, 108, 168, 96, "#FFFFFF", GREEN, 7, 1.2))
    b.append(t(26, 126, "AT THE ANODE", size=8.2, weight="bold", fill=GREEN, anchor="start"))
    b.append(t(26, 144, "2Cl⁻ → Cl₂ + 2e⁻", size=8.4, fill=SLATE, anchor="start"))
    b.append(t(26, 160, "oxidation", size=7.6, fill=MUTED, anchor="start"))
    b.append(t(26, 178, "pale green, pungent gas", size=7.6, fill=SLATE, anchor="start"))
    b.append(t(26, 194, "bleaches damp litmus", size=7.6, fill=SLATE, anchor="start"))
    b.append(arrow2(188, 150, anode_x - 14, 150, color=GREEN, sw=1.5))

    # right panel: hydrogen
    b.append(rect(576, 108, 168, 96, "#FFFFFF", BLUE, 7, 1.2))
    b.append(t(586, 126, "AT THE CATHODE", size=8.2, weight="bold", fill=BLUE, anchor="start"))
    b.append(t(586, 144, "2H₂O + 2e⁻ → H₂ + 2OH⁻", size=8.4, fill=SLATE, anchor="start"))
    b.append(t(586, 160, "reduction", size=7.6, fill=MUTED, anchor="start"))
    b.append(t(586, 178, "colourless gas, pops", size=7.6, fill=SLATE, anchor="start"))
    b.append(t(586, 194, "with a lighted splint", size=7.6, fill=SLATE, anchor="start"))
    b.append(arrow2(572, 150, cathode_x + 14, 150, color=BLUE, sw=1.5))

    b.append(t(380, 318, "The hydroxide ions left behind build up around the cathode: the third product is sodium hydroxide solution.",
               size=8.0, fill=MUTED))
    write_svg("ch06_electrolysis.svg", svg(w, h, "\n".join(b)))


def ch06_emf():
    """The electrochemical series, with the two JAMB cells marked."""
    w, h = 760, 352
    b = [t(380, 24, "THE ELECTROCHEMICAL SERIES: WHICH METAL GIVES UP ITS ELECTRONS", size=12.0, weight="bold")]

    series = [
        ("K → K⁺ + e⁻", "−2.92", RED),
        ("Ca → Ca²⁺ + 2e⁻", "−2.87", RED),
        ("Na → Na⁺ + e⁻", "−2.71", RED),
        ("Mg → Mg²⁺ + 2e⁻", "−2.36", RED),
        ("Zn → Zn²⁺ + 2e⁻", "−0.76", AMBER),
        ("Fe → Fe²⁺ + 2e⁻", "−0.44", AMBER),
        ("H₂ → 2H⁺ + 2e⁻", "0.00", NAVY),
        ("Cu → Cu²⁺ + 2e⁻", "+0.34", GREEN),
        ("Ag → Ag⁺ + e⁻", "+0.80", GREEN),
        ("Au → Au³⁺ + 3e⁻", "+1.50", GREEN),
    ]
    y = 54
    for rx, e, colour in series:
        b.append(rect(120, y, 400, 22, "#FFFFFF", colour, 4, 1.0))
        b.append(t(132, y + 15, rx, size=8.4, fill=SLATE, anchor="start"))
        b.append(t(508, y + 15, e, size=8.4, fill=colour, weight="bold", anchor="end"))
        y += 25

    b.append(t(320, 46, "half-reaction", size=8.0, fill=MUTED))
    b.append(t(508, 46, "E° / V", size=8.0, fill=MUTED, anchor="end"))

    b.append(rect(550, 70, 190, 96, RED_LIGHT, RED, 6, 1.0))
    b.append(t(560, 88, "MORE REACTIVE", size=8.4, weight="bold", fill=RED, anchor="start"))
    for i, s_ in enumerate(["loses electrons easily", "is the reducing agent", "is oxidised — the anode"]):
        b.append(t(560, 104 + i * 14, s_, size=7.4, fill=SLATE, anchor="start"))

    b.append(rect(550, 190, 190, 96, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(560, 208, "LESS REACTIVE", size=8.4, weight="bold", fill=GREEN, anchor="start"))
    for i, s_ in enumerate(["gains electrons easily", "is the oxidising agent", "is reduced — the cathode"]):
        b.append(t(560, 224 + i * 14, s_, size=7.4, fill=SLATE, anchor="start"))

    b.append(t(380, 334, "E°cell = E°(cathode) − E°(anode).  Zn/Cu: 0.34 − (−0.76) = 1.10 V.", size=8.4, fill=NAVY, weight="bold"))
    write_svg("ch06_emf.svg", svg(w, h, "\n".join(b)))


def recap_cards_d():
    recap_card("recap_ch05.svg", "Chapter 5 recap card — chemical equilibrium", [
        ("Dynamic", "At equilibrium the forward and reverse rates are equal; the concentrations are constant, not zero."),
        ("Le Chatelier", "A stress is opposed: heat, pressure, concentration. A catalyst changes the rate, not the position."),
        ("Kc", "Products over reactants, each raised to its coefficient; only temperature changes Kc."),
        ("Haber", "450 °C, 200 atm, iron catalyst — the compromise between yield and speed."),
    ])


def recap_cards_e():
    recap_card("recap_ch06.svg", "Chapter 6 recap card — redox and electrochemistry", [
        ("Redox", "Oxidation is loss of electrons (OIL); reduction is gain (RIG). Oxidation numbers track the electrons."),
        ("Cells", "Anode = oxidation = negative in a galvanic cell. Cathode = reduction = positive."),
        ("Electrolysis", "The battery forces the reaction: cathode attracts cations, anode attracts anions."),
        ("EMF", "E°cell = E°cathode − E°anode; a positive value means the cell works as written."),
    ])
