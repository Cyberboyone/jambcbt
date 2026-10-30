"""Vector diagrams for Chapters 5–6 of JAMB Chemistry Volume 3."""

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
    "ch05_contact", "ch05_halogen_strip", "ch05_displacement",
    "ch05_silver_halides", "ch05_halogen_bp", "ch05_sulphuric", "recap_cards_c",
    "ch06_nigeria", "ch06_greenhouse", "ch06_water", "ch06_pollution",
    "ch06_waste", "recap_cards_c",
]


# ── Chapter 5: sulphur and the halogens ────────────────────────────────────
def ch05_contact():
    """The Contact process as a five-stage strip with a recycle loop."""
    w, h = 760, 300
    b = [t(380, 24, "THE CONTACT PROCESS — SULPHUR TO SULPHURIC ACID", size=12.0, weight="bold"),
         t(380, 42, "One reversible step does the work, and that step is the one the conditions are chosen for.",
           size=8.2, fill=MUTED)]

    stages = [
        ("BURN", ["S + O₂ → SO₂", "sulphur burnt", "in dry air"], AMBER),
        ("PURIFY", ["dust and arsenic", "removed: they poison", "the catalyst"], AMBER),
        ("CONVERT", ["2SO₂ + O₂ ⇌ 2SO₃", "V₂O₅, 450 °C", "1–2 atm"], RED),
        ("ABSORB", ["SO₃ in 98 %", "H₂SO₄ → oleum", "H₂S₂O₇"], BLUE),
        ("DILUTE", ["oleum + water", "→ concentrated", "H₂SO₄"], GREEN),
    ]
    x0, y0, bw, bh, gap = 24, 80, 128, 108, 18
    for i, (head, body, col) in enumerate(stages):
        x = x0 + i * (bw + gap)
        b.append(rect(x, y0, bw, bh, "#FFFFFF", col, 7, 1.5))
        b.append(t(x + bw / 2, y0 + 22, head, size=8.4, weight="bold", fill=col))
        b.append(lines(x + bw / 2, y0 + 40, body, size=6.9, fill=SLATE, gap=13))
        if i < 4:
            b.append(arrow2(x + bw + 2, y0 + 60, x + bw + gap - 2, y0 + 60, color=GREEN, sw=1.4))

    # recycle of unreacted SO2 and O2 back into the converter
    b.append(path("M 420 80 L 420 60 L 340 60 L 340 78", stroke=AMBER, sw=1.3, dash="4 3"))
    b.append(arrow2(340, 66, 340, 80, color=AMBER, sw=1.3))

    b.append(rect(20, 206, 720, 30, RED_LIGHT, RED, 5, 0.9))
    b.append(t(380, 225, "450 °C and 1–2 atm are a compromise: low enough for a good yield, high enough for a workable rate.",
               size=7.5, fill=SLATE))
    b.append(rect(20, 246, 720, 34, GREEN_LIGHT, GREEN, 5, 0.9))
    b.append(t(380, 261, "Unreacted SO₂ and O₂ are recycled to the converter.", size=7.5, fill=SLATE))
    b.append(t(380, 273, "Never absorb SO₃ in water: the mist is too fine to collect. Absorb it in 98 % acid first.",
               size=7.5, fill=SLATE))
    write_svg("ch05_contact.svg", svg(w, h, "\n".join(b)))


def ch05_halogen_strip():
    """The four halogens as a colour-and-data strip."""
    w, h = 760, 330
    b = [t(380, 24, "THE HALOGENS — A GROUP THAT GOES THE OTHER WAY", size=12.0, weight="bold"),
         t(380, 42, "Colour deepens, density rises and reactivity falls as you go down: the reverse of Group 1.",
           size=8.2, fill=MUTED)]

    cols = [(124, "halogen", "start"), (214, "at room temperature", "start"),
            (432, "m.p. / °C", "middle"), (516, "b.p. / °C", "middle"), (600, "where you meet it", "start")]
    for (x, label, anc) in cols:
        b.append(t(x, 62, label, size=6.8, fill=MUTED, anchor=anc))

    rows = [
        ("F₂", "#FEF9C3", "pale yellow gas", "−220", "−188", "never handled in school", "#854D0E"),
        ("Cl₂", "#D9F99D", "greenish-yellow gas, 2.5 × denser than air", "−101", "−34.6", "bleaches damp litmus", "#3F6212"),
        ("Br₂", "#9A3412", "red-brown liquid, orange vapour", "−7.2", "58.8", "turns starch orange-brown", "#7C2D12"),
        ("I₂", "#374151", "grey-black solid, purple vapour on heating", "114", "184", "starch → blue-black", "#1E1B4B"),
    ]
    for i, (form, swatch, look, mp, bp, meet, txtc) in enumerate(rows):
        y = 72 + i * 54
        b.append(rect(20, y, 720, 46, "#FFFFFF" if i % 2 == 0 else LIGHT_BG, BORDER, 6, 0.8))
        b.append(rect(88, y + 12, 24, 22, swatch, "#64748B", 3, 0.8))
        b.append(t(124, y + 28, form, size=11.5, weight="bold", fill=txtc, anchor="start"))
        b.append(t(214, y + 27, look, size=7.4, fill=SLATE, anchor="start"))
        b.append(t(432, y + 27, mp, size=8.0, fill=NAVY))
        b.append(t(516, y + 27, bp, size=8.0, fill=NAVY))
        b.append(t(600, y + 27, meet, size=7.4, fill=SLATE, anchor="start"))

    b.append(t(40, 300, "Going down the group: more electrons, stronger van der Waals forces, higher melting and boiling points.",
               size=7.4, fill=SLATE, anchor="start"))
    b.append(t(40, 316, "But the outermost shell is further from the nucleus, so the atom gains an electron less easily.",
               size=7.4, fill=SLATE, anchor="start"))
    write_svg("ch05_halogen_strip.svg", svg(w, h, "\n".join(b)))


def _tube(x, y, tw, th, colour):
    """A test tube with a coloured liquid in the lower half."""
    body = [rect(x, y, tw, th, "#FFFFFF", "#94A3B8", 18, 1.3)]
    lx, lw = x + 4, tw - 8
    ly, lh = y + th * 0.42, th * 0.56
    body.append(path(f"M {lx} {ly} L {lx} {ly + lh - 16} Q {lx} {ly + lh} {lx + lw / 2} {ly + lh} "
                     f"Q {lx + lw} {ly + lh} {lx + lw} {ly + lh - 16} L {lx + lw} {ly} Z",
                     fill=colour, stroke="none"))
    body.append(line(lx, ly, lx + lw, ly, color="#FFFFFF", sw=1.2))
    return body


def ch05_displacement():
    """Four test tubes: the more reactive halogen displaces the less reactive one."""
    w, h = 760, 340
    b = [t(380, 24, "DISPLACEMENT — THE MORE REACTIVE HALOGEN WINS", size=12.0, weight="bold"),
         t(380, 42, "Add halogen water to a halide solution: a colour appears only if the halogen can take the halide's electron.",
           size=8.2, fill=MUTED)]

    tubes = [
        ("Cl₂ water", "+ KBr", "#C2410C", "solution turns orange", "Cl₂ + 2KBr → 2KCl + Br₂"),
        ("Cl₂ water", "+ KI", "#7C2D12", "solution turns brown", "Cl₂ + 2KI → 2KCl + I₂"),
        ("Br₂ water", "+ KI", "#92400E", "orange turns brown", "Br₂ + 2KI → 2KBr + I₂"),
        ("I₂ water", "+ KBr", "#A16207", "no change at all", "I₂ + KBr → no reaction"),
    ]
    for i, (top, add, colour, obs, eqn) in enumerate(tubes):
        cx = 108 + i * 180
        b.append(t(cx, 62, top, size=7.8, weight="bold", fill=SLATE))
        b.append(t(cx, 74, add, size=7.8, weight="bold", fill=SLATE))
        b.extend(_tube(cx - 32, 82, 64, 128, colour))
        b.append(t(cx, 226, obs, size=7.4, fill=NAVY))
        b.append(t(cx, 241, eqn, size=7.4, fill=GREEN))

    b.append(rect(20, 262, 720, 32, GREEN_LIGHT, GREEN, 5, 0.9))
    b.append(t(380, 282, "A halogen below iodine in reactivity cannot displace iodine, so nothing happens — the last tube is the control.",
               size=7.5, fill=SLATE))
    b.append(t(380, 312, "With starch added, the iodine tubes go blue-black: that is the standard test for I₂.",
               size=7.5, fill=SLATE))
    write_svg("ch05_displacement.svg", svg(w, h, "\n".join(b)))


def ch05_silver_halides():
    """The silver halide precipitates and how ammonia tells them apart."""
    w, h = 760, 310
    b = [t(380, 24, "WHICH HALIDE? THE SILVER NITRATE TEST", size=12.0, weight="bold"),
         t(380, 42, "Acidify with dilute nitric acid, then add silver nitrate. The colour of the precipitate is the first clue.",
           size=8.2, fill=MUTED)]

    cols = [
        ("Cl⁻", "AgCl", "white", "#F8FAFC", "soluble in dilute NH₃", "dissolves at once", GREEN),
        ("Br⁻", "AgBr", "cream", "#FEF3C7", "soluble in concentrated NH₃", "dissolves slowly", AMBER),
        ("I⁻", "AgI", "yellow", "#FDE68A", "insoluble in NH₃", "does not dissolve", PURPLE),
    ]
    for i, (ion, formula, colour, fill, amm, behav, col) in enumerate(cols):
        x = 24 + i * 240
        b.append(rect(x, 62, 224, 176, "#FFFFFF", col, 8, 1.3))
        b.append(t(x + 112, 84, f"{ion} + Ag⁺", size=9.0, weight="bold", fill=col))
        b.append(dot(x + 112, 126, 30, fill=fill, stroke="#64748B", sw=1.0))
        b.append(t(x + 112, 130, formula, size=9.2, weight="bold", fill=NAVY))
        b.append(t(x + 112, 176, f"{colour} precipitate", size=8.2, weight="bold", fill=col))
        b.append(t(x + 112, 194, amm, size=7.4, fill=SLATE))
        b.append(t(x + 112, 212, behav, size=7.4, fill=NAVY))

    b.append(rect(20, 252, 720, 22, RED_LIGHT, RED, 5, 0.9))
    b.append(t(380, 267, "Add nitric acid first: it removes carbonate and sulphite, which also give a white precipitate.",
               size=7.4, fill=SLATE))
    b.append(t(380, 292, "Ag⁺ + X⁻ → AgX (s); the ammonia dissolves AgCl as [Ag(NH₃)₂]⁺.",
               size=7.4, fill=SLATE))
    write_svg("ch05_silver_halides.svg", svg(w, h, "\n".join(b)))


def ch05_halogen_bp():
    """Boiling points of the halogens — the van der Waals trend."""
    els = ["F₂", "Cl₂", "Br₂", "I₂"]
    bp = [-188, -34.6, 58.8, 184.3]
    fig, ax = plt.subplots(figsize=(6.6, 2.5), dpi=160)
    bars = ax.bar(els, bp, color=[GREEN_BRIGHT, GREEN, AMBER, RED], width=0.55, zorder=3)
    for r, v in zip(bars, bp):
        if v > 0:
            ax.annotate(f"{v:g}", (r.get_x() + r.get_width() / 2, v),
                        textcoords="offset points", xytext=(0, 5), ha="center",
                        va="bottom", fontsize=7.6, color=NAVY)
        else:
            ax.annotate(f"{v:g}", (r.get_x() + r.get_width() / 2, v * 0.55),
                        ha="center", va="center", fontsize=7.6, color="#FFFFFF",
                        fontweight="bold")
    ax.set_ylim(-215, 215)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(True, axis="y", color="#E2E8F0", lw=0.7)
    ax.set_axisbelow(True)
    ax.axhline(0, color=SLATE, lw=0.9)
    ax.set_ylabel("boiling point / °C", fontsize=8)
    ax.set_xlabel("halogen, down the group", fontsize=8)
    ax.tick_params(labelsize=8)
    ax.set_title("Bigger molecule, stronger van der Waals forces, higher boiling point", fontsize=8.2, color=NAVY)
    fig.tight_layout()
    save(fig, "ch05_halogen_bp.svg")


def ch05_sulphuric():
    """One acid, three jobs — dilute, concentrated and hot concentrated."""
    w, h = 760, 236
    b = [t(380, 24, "ONE ACID, THREE JOBS", size=12.0, weight="bold"),
         t(380, 42, "What sulphuric acid does depends on how concentrated it is and on how hot you make it.",
           size=8.2, fill=MUTED)]

    cards = [
        ("DILUTE — ACIDIC", ["Mg + H₂SO₄", "→ MgSO₄ + H₂"],
         "It behaves like any other dilute acid: it gives up H⁺ to a metal, a base or a carbonate.", GREEN),
        ("CONCENTRATED — DEHYDRATING", ["C₁₂H₂₂O₁₁", "→ 12C + 11H₂O"],
         "Sugar turns to a black column of carbon as the acid pulls hydrogen and oxygen out as water.", AMBER),
        ("HOT CONCENTRATED — OXIDISING", ["Cu + 2H₂SO₄", "→ CuSO₄ + SO₂ + 2H₂O"],
         "It oxidises copper, which dilute acid cannot touch. Sulphur is reduced from +6 to +4.", RED),
    ]
    for i, (head, eqn, body, col) in enumerate(cards):
        x = 20 + i * 244
        b.append(rect(x, 62, 228, 152, "#FFFFFF", col, 8, 1.4))
        b.append(t(x + 114, 86, head, size=7.8, weight="bold", fill=col))
        b.append(t(x + 114, 116, eqn[0], size=8.2, fill=NAVY))
        b.append(t(x + 114, 132, eqn[1], size=8.2, fill=NAVY))
        for j, ln in enumerate(_wrap(body, 33)):
            b.append(t(x + 114, 162 + j * 13, ln, size=7.4, fill=SLATE))
    write_svg("ch05_sulphuric.svg", svg(w, h, "\n".join(b)))


def _wrap(text, width):
    words, out, cur = text.split(), [], ""
    for word in words:
        if len(cur) + len(word) + 1 > width:
            out.append(cur)
            cur = word
        else:
            cur = f"{cur} {word}".strip()
    if cur:
        out.append(cur)
    return out


# ── Chapter 6: industry and the environment ────────────────────────────────
def ch06_nigeria():
    """Raw material to product, the six industries in the syllabus."""
    w, h = 760, 380
    b = [t(380, 24, "SIX INDUSTRIES BUILT ON NIGERIAN RAW MATERIALS", size=12.0, weight="bold"),
         t(380, 42, "Every one of them is a chemical change you have already met in this book.",
           size=8.2, fill=MUTED)]

    head = [(28, "raw material"), (250, "process"), (470, "product"), (640, "where")]
    for (x, label) in head:
        b.append(t(x, 64, label, size=6.8, fill=MUTED, anchor="start"))

    rows = [
        ("limestone + clay", "heat to 1450 °C in a kiln", "cement", "Obajana, Ogun"),
        ("palm oil + NaOH", "boil: saponification", "soap and glycerol", "Lagos, Ibadan"),
        ("sand + limestone + soda ash", "fuse at 1500 °C", "glass", "Delta, Ogun"),
        ("natural gas + air", "steam reforming, then Haber", "ammonia and urea", "Port Harcourt"),
        ("crude oil", "fractional distillation, cracking", "petrol, plastics", "Eleme, Warri"),
        ("bauxite (imported)", "Hall–Héroult electrolysis", "aluminium", "Ikot Abasi"),
    ]
    for i, (raw, proc, prod, where) in enumerate(rows):
        y = 74 + i * 44
        b.append(rect(20, y, 720, 38, "#FFFFFF" if i % 2 == 0 else LIGHT_BG, BORDER, 5, 0.7))
        b.append(t(28, y + 23, raw, size=7.4, fill=SLATE, anchor="start"))
        b.append(t(250, y + 23, proc, size=7.4, fill=SLATE, anchor="start"))
        b.append(t(470, y + 23, prod, size=7.6, weight="bold", fill=GREEN, anchor="start"))
        b.append(t(640, y + 23, where, size=7.2, fill=MUTED, anchor="start"))

    b.append(t(380, 352, "Cement, soap, glass, fertiliser, fuel and metal: six products, one idea — a cheap local raw material and an energy source next to it.",
               size=7.4, fill=SLATE))
    write_svg("ch06_nigeria.svg", svg(w, h, "\n".join(b)))


def ch06_greenhouse():
    """The greenhouse effect, drawn as a ray diagram."""
    w, h = 760, 360
    b = [t(380, 24, "THE GREENHOUSE EFFECT", size=12.0, weight="bold"),
         t(380, 42, "Short-wave sunlight passes in; long-wave heat is absorbed on the way out and re-radiated downwards.",
           size=8.2, fill=MUTED)]

    # ground
    b.append(path("M 60 268 Q 380 226 700 268 L 700 300 L 60 300 Z", fill="#BBF7D0", stroke="#166534", sw=1.2))
    b.append(t(380, 290, "the earth's surface", size=7.2, fill="#166534"))

    # sun
    b.append(dot(66, 100, 24, fill="#FDE68A", stroke="#D97706", sw=1.2))
    for ang in (-40, -20, 0, 20, 40):
        rad = np.radians(ang)
        b.append(line(66 + 30 * np.cos(rad), 100 + 30 * np.sin(rad),
                      66 + 44 * np.cos(rad), 100 + 44 * np.sin(rad), color="#D97706", sw=1.4))
    b.append(t(66, 142, "sun", size=7.2, fill="#92400E"))

    # atmosphere band
    b.append(rect(70, 190, 620, 26, "#E0F2FE", "#0369A1", 6, 0.9, dash="5 4"))
    b.append(t(380, 207, "greenhouse gases: CO₂  ·  CH₄  ·  N₂O  ·  water vapour", size=7.2, fill="#075985"))

    # incoming sunlight
    b.append(arrow2(103, 108, 300, 246, color="#D97706", sw=1.8))
    b.append(t(200, 120, "sunlight, short wave: it passes straight through", size=7.0, fill="#92400E", anchor="start"))

    # heat up, heat back down
    b.append(arrow2(330, 254, 330, 218, color=RED, sw=1.8))
    b.append(t(338, 238, "heat radiated upward", size=7.0, fill=RED, anchor="start"))
    b.append(arrow2(450, 218, 450, 254, color=RED, sw=1.8))
    b.append(t(458, 238, "re-radiated back down", size=7.0, fill=RED, anchor="start"))
    b.append(path("M 560 188 L 560 152", stroke=RED, sw=1.4, dash="4 3"))
    b.append(arrow2(560, 164, 560, 150, color=RED, sw=1.4))
    b.append(t(568, 172, "the rest escapes", size=7.0, fill=RED, anchor="start"))

    b.append(rect(20, 316, 720, 30, GREEN_LIGHT, GREEN, 5, 0.9))
    b.append(t(380, 335, "More gas means more heat returned: the surface warms, and the ice and the sea level answer.",
               size=7.5, fill=SLATE))
    write_svg("ch06_greenhouse.svg", svg(w, h, "\n".join(b)))


def ch06_water():
    """Six stages of making water safe to drink."""
    w, h = 760, 268
    b = [t(380, 24, "FROM RIVER TO TAP", size=12.0, weight="bold"),
         t(380, 42, "Each stage removes one kind of impurity; chlorination is the only one that kills.",
           size=8.2, fill=MUTED)]

    stages = [
        ("SCREEN", ["large objects", "held back by", "a metal grid"], SLATE),
        ("COAGULATE", ["alum added;", "fine mud clumps", "together"], AMBER),
        ("SETTLE", ["the clumps sink", "in a settling", "tank"], AMBER),
        ("FILTER", ["through beds of", "sand and gravel", ""], BLUE),
        ("CHLORINATE", ["chlorine kills", "bacteria and", "viruses"], GREEN),
        ("FLUORIDATE", ["fluoride added", "to protect", "children's teeth"], PURPLE),
    ]
    x0, y0, bw, bh, gap = 20, 62, 100, 96, 24
    for i, (head, body, col) in enumerate(stages):
        x = x0 + i * (bw + gap)
        b.append(rect(x, y0, bw, bh, "#FFFFFF", col, 7, 1.3))
        b.append(t(x + bw / 2, y0 + 20, head, size=7.4, weight="bold", fill=col))
        b.append(lines(x + bw / 2, y0 + 42, body, size=6.5, fill=SLATE, gap=12))
        if i < 5:
            b.append(arrow2(x + bw + 2, y0 + 48, x + bw + gap - 2, y0 + 48, color=GREEN, sw=1.3))

    b.append(rect(20, 182, 720, 28, GREEN_LIGHT, GREEN, 5, 0.9))
    b.append(t(380, 200, "Tests on the finished water: pH, turbidity, and a count of coliform bacteria.",
               size=7.4, fill=SLATE))
    b.append(t(380, 232, "Sewage treatment runs the same logic in reverse: screen, settle, digest the sludge, then disinfect the liquid.",
               size=7.4, fill=SLATE))
    write_svg("ch06_water.svg", svg(w, h, "\n".join(b)))


def ch06_pollution():
    """Pollutant, source, effect, control."""
    w, h = 760, 356
    b = [t(380, 24, "SIX POLLUTANTS AND WHAT THEY DO", size=12.0, weight="bold"),
         t(380, 42, "Every entry is a chemistry fact followed by a control measure that works on the same fact.",
           size=8.2, fill=MUTED)]

    for (x, label) in [(26, "pollutant"), (150, "main source"), (356, "effect"), (562, "control")]:
        b.append(t(x, 64, label, size=6.8, fill=MUTED, anchor="start"))

    rows = [
        ("CO", "incomplete combustion\nin vehicle engines", "binds haemoglobin, so the\nblood carries less oxygen", "catalytic converters,\nwell-tuned engines"),
        ("SO₂", "burning coal and oil,\nsmelting sulphide ores", "acid rain, bronchitis,\ncorrodes metal", "lime scrubbers,\nlow-sulphur fuel"),
        ("NOx", "engines hot enough to\nburn nitrogen from the air", "photochemical smog,\nacid rain", "catalytic converters,\nlean-burn engines"),
        ("CFCs", "old fridges and aerosols\n(now phased out)", "breaks the ozone layer\none Cl atom at a time", "HFCs and recovery\nof old equipment"),
        ("particulates", "diesel exhaust, cement\nkilns, bush burning", "smog, asthma,\nreduced visibility", "filters, cleaner fuel,\nno bush burning"),
        ("lead", "old leaded petrol,\nscrap batteries", "brain damage in\nchildren", "unleaded petrol,\nbattery recycling"),
    ]
    for i, (pol, src, eff, ctl) in enumerate(rows):
        y = 74 + i * 42
        b.append(rect(20, y, 720, 36, "#FFFFFF" if i % 2 == 0 else LIGHT_BG, BORDER, 5, 0.7))
        b.append(t(26, y + 22, pol, size=7.8, weight="bold", fill=RED, anchor="start"))
        for j, ln in enumerate(src.split("\n")):
            b.append(t(150, y + 16 + j * 11, ln, size=6.6, fill=SLATE, anchor="start"))
        for j, ln in enumerate(eff.split("\n")):
            b.append(t(356, y + 16 + j * 11, ln, size=6.6, fill=SLATE, anchor="start"))
        for j, ln in enumerate(ctl.split("\n")):
            b.append(t(562, y + 16 + j * 11, ln, size=6.6, fill=SLATE, anchor="start"))

    b.append(t(380, 344, "Acid rain is the same story three times: SO₂ and NOx dissolve and oxidise to H₂SO₄ and HNO₃.",
               size=7.4, fill=SLATE))
    write_svg("ch06_pollution.svg", svg(w, h, "\n".join(b)))


def ch06_waste():
    """The waste hierarchy as a set of bars."""
    w, h = 760, 300
    b = [t(380, 24, "THE WASTE HIERARCHY", size=12.0, weight="bold"),
         t(380, 42, "The best waste is the waste that was never made. The bars get shorter as the option gets worse.",
           size=8.2, fill=MUTED)]

    rows = [
        ("REDUCE", "buy less, design longer-lasting products", 700, GREEN),
        ("REUSE", "refill bottles, repair rather than replace", 624, "#15803D"),
        ("RECYCLE", "melt glass, re-pulp paper, re-mould plastics", 548, AMBER),
        ("RECOVER", "burn for energy, digest for biogas", 472, "#B45309"),
        ("DISPOSE", "landfill — the last resort", 396, RED),
    ]
    for i, (name, example, bw, col) in enumerate(rows):
        y = 58 + i * 42
        x = (760 - bw) / 2
        b.append(rect(x, y, bw, 34, col, "none", 6, 0.0))
        b.append(t(x + 16, y + 22, name, size=8.0, weight="bold", fill="#FFFFFF", anchor="start"))
        b.append(t(x + 96, y + 22, example, size=7.4, fill="#FFFFFF", anchor="start"))

    b.append(t(380, 274, "Biodegradable waste rots; plastics and metals do not. That is why the first three bars matter most.",
               size=7.4, fill=SLATE))
    write_svg("ch06_waste.svg", svg(w, h, "\n".join(b)))


def recap_cards_c():
    recap_card("recap_ch05.svg", "Chapter 5 recap card — sulphur and the halogens", [
        ("Contact process",
         "S + O₂ → SO₂; 2SO₂ + O₂ ⇌ 2SO₃ over V₂O₅ at 450 °C and 1–2 atm; SO₃ absorbed in 98 % H₂SO₄ to give oleum."),
        ("Sulphuric acid",
         "Dilute: an acid. Concentrated: dehydrating (sugar → carbon). Hot concentrated: oxidising (Cu → CuSO₄ + SO₂)."),
        ("Halogens",
         "F₂ pale yellow gas, Cl₂ greenish-yellow gas, Br₂ red-brown liquid, I₂ grey-black solid. Reactivity falls down the group."),
        ("Tests",
         "Cl₂ bleaches damp litmus; I₂ + starch → blue-black. AgCl white (soluble in dilute NH₃), AgBr cream, AgI yellow (insoluble)."),
    ])
    recap_card("recap_ch06.svg", "Chapter 6 recap card — industry and the environment", [
        ("Industries",
         "Cement from limestone and clay; soap by boiling oil with NaOH; glass from sand, limestone and soda ash; ammonia by Haber."),
        ("Water",
         "Screen, coagulate with alum, settle, filter through sand, chlorinate, fluoridate."),
        ("Pollution",
         "CO binds haemoglobin; SO₂ and NOx make acid rain; CFCs destroy ozone; particulates and lead damage lungs and brains."),
        ("Waste",
         "Reduce > reuse > recycle > recover > dispose. Biodegradable waste rots; plastics and metals do not."),
    ])
