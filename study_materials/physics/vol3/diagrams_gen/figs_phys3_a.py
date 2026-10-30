"""Volume 3 diagrams — temperature and expansion (chapters 1 and 2).

Schematic figures are hand-written SVG; anything with a curve or an axis is
matplotlib, so the geometry is true rather than sketched.
"""

from __future__ import annotations

import numpy as np

from common import (
    GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, LIGHT_BG,
    BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT,
    t, lines, rect, line, arrow2, dot, path, svg, write_svg, recap_card,
    save, plt,
)

FIGURES = ["cover_banner", "utme_weight", "ch01_scales", "ch01_thermometers",
           "ch01_property", "ch02_expansion", "ch02_bimetallic", "ch02_water",
           "recap_ch01", "recap_ch02"]


# ── front matter ────────────────────────────────────────────────────────────
def cover_banner():
    w, h = 760, 176
    b = [rect(0, 0, w, h, "#0B2036", "#0B2036", 10, 1.0)]
    b.append(t(380, 34, "HEAT · TEMPERATURE · THERMODYNAMICS", size=17, weight="bold", fill="#FFFFFF"))
    b.append(line(120, 46, 640, 46, color="#34D399", sw=1.2))
    chips = ["Temperature scales", "Expansion", "Conduction and convection",
             "Radiation", "Calorimetry", "Latent heat", "The gas laws",
             "Kinetic theory", "The first law", "Heat engines"]
    cols = 3
    for i, c in enumerate(chips):
        r, k = divmod(i, cols)
        x = 40 + k * 240
        y = 60 + r * 26
        b.append(rect(x, y, 220, 22, "#12314F", "#34D399", 5, 1.0))
        b.append(t(x + 110, y + 15, c, size=8.6, fill="#E2E8F0"))
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg="#0B2036"))


def utme_weight():
    fig, ax = plt.subplots(figsize=(6.0, 2.5))
    chapters = ["1 Temperature", "2 Expansion", "3 Heat transfer",
                "4 Calorimetry", "5 Gas laws", "6 Thermodynamics"]
    weights = [3, 3, 3, 4, 4, 3]
    cols = [GREEN if v >= 4 else "#34D399" for v in weights]
    bars = ax.barh(chapters[::-1], weights[::-1], color=cols[::-1], height=0.62)
    for bar, v in zip(bars, weights[::-1]):
        ax.text(v + 0.08, bar.get_y() + bar.get_height() / 2, f"{v}", va="center",
                fontsize=8, color=NAVY)
    ax.set_xlim(0, 5.2)
    ax.set_xlabel("average questions in a UTME paper")
    ax.set_title("WHERE THE HEAT MARKS SIT", fontsize=9.2, color=NAVY, weight="bold")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(axis="x", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "utme_weight.svg")


# ── 1.1 scales and fixed points ─────────────────────────────────────────────
def ch01_scales():
    w, h = 660, 310
    b = [t(330, 20, "THE TWO SCALES AND THE TWO FIXED POINTS", size=10.6, weight="bold")]

    # thermometer stem
    x0, ytop, ybot = 120, 52, 250
    b.append(rect(x0 - 12, ytop - 8, 24, ybot - ytop + 16, "#FFFFFF", BORDER, 10, 1.4))
    b.append(rect(x0 - 6, ytop + 6, 12, ybot - ytop - 6, "#FEE2E2", "none", 6, 0))
    b.append(rect(x0 - 6, ytop + 88, 12, ybot - ytop - 94, RED, "none", 6, 0))
    b.append(f'<circle cx="{x0}" cy="{ybot + 16}" r="13" fill="{RED}"/>')

    # ticks: 100 and 0 °C
    for yy, lab, sub in ((ytop + 88, "100 °C  /  373 K", "upper fixed point — steam"),
                         (ybot - 6, "0 °C  /  273 K", "lower fixed point — melting ice")):
        b.append(line(x0 - 26, yy, x0 + 40, yy, color=NAVY, sw=1.4, dash="4 3"))
        b.append(t(x0 + 48, yy - 1, lab, size=9.2, fill=NAVY, anchor="start", weight="bold"))
        b.append(t(x0 + 48, yy + 13, sub, size=7.8, fill=MUTED, anchor="start"))

    # arrow between them
    b.append(arrow2(x0 - 46, ytop + 92, x0 - 46, ybot - 12, color=GREEN, sw=1.6, size=8))
    for i, s_ in enumerate(["100 equal", "divisions", "= 100 kelvin"]):
        b.append(t(x0 - 86, (ytop + ybot) / 2 - 4 + i * 14, s_, size=8.4, fill=GREEN, weight="bold"))

    # right panel: the conversion
    b.append(rect(306, 44, 340, 104, "#FFFFFF", GREEN, 7, 1.3))
    b.append(t(476, 64, "ONE INTERVAL, TWO SCALES", size=9.2, weight="bold", fill=GREEN))
    b.append(t(476, 86, "θ / °C  +  273  =  T / K", size=13, fill=NAVY, weight="bold"))
    b.append(t(476, 106, "A change of 1 °C is a change of 1 K.", size=8.6, fill=SLATE))
    b.append(t(476, 122, "20 °C = 293 K    ·    −40 °C = 233 K", size=8.6, fill=SLATE))
    b.append(t(476, 140, "Absolute zero: −273 °C = 0 K", size=8.6, fill=RED, weight="bold"))

    # bottom panel: what a scale needs
    b.append(rect(306, 160, 340, 128, LIGHT_BG, BORDER, 7, 1.2))
    b.append(t(476, 180, "A SCALE NEEDS THREE THINGS", size=9.0, weight="bold", fill=NAVY))
    for i, s_ in enumerate([
        "a thermometric property that changes steadily",
        "two fixed points, and",
        "a rule for dividing the interval",
    ]):
        b.append(dot(328, 198 + i * 24, 2.6, GREEN))
        b.append(t(338, 202 + i * 24, s_, size=8.4, fill=SLATE, anchor="start"))
    b.append(t(476, 274, "Celsius divides ice-to-steam into 100.", size=8.2, fill=MUTED))

    b.append(t(120, 296, "liquid-in-glass thermometer", size=8.4, fill=MUTED))
    write_svg("ch01_scales.svg", svg(w, h, "\n".join(b)))


# ── 1.2 four thermometers ───────────────────────────────────────────────────
def ch01_thermometers():
    w, h = 660, 322
    b = [t(330, 20, "FOUR THERMOMETERS — FOUR THERMOMETRIC PROPERTIES", size=10.6, weight="bold")]
    cards = [
        ("Liquid in glass", "property: volume of the liquid",
         ["−10 to 110 °C", "cheap, direct reading", "slow, fragile, wide bore"], GREEN),
        ("Thermocouple", "property: e.m.f. of a hot junction",
         ["−200 to 1600 °C", "tiny junction, fast", "needs a cold junction"], BLUE),
        ("Resistance", "property: resistance of a wire",
         ["−200 to 600 °C", "very precise", "needs a bridge circuit"], PURPLE),
        ("Pyrometer", "property: colour of a hot body",
         ["800 to 3000 °C", "no contact needed", "reads only very hot bodies"], AMBER),
    ]
    for i, (name, prop, rows, col) in enumerate(cards):
        x = 16 + (i % 2) * 318
        y = 36 + (i // 2) * 124
        b.append(rect(x, y, 300, 110, "#FFFFFF", col, 7, 1.4))
        b.append(f'<rect x="{x}" y="{y}" width="300" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + 150, y + 24, name, size=9.8, weight="bold", fill=NAVY))
        b.append(t(x + 150, y + 40, prop, size=8.2, fill=col))
        for j, r in enumerate(rows):
            b.append(t(x + 14, y + 60 + j * 16, "• " + r, size=8.4, fill=SLATE, anchor="start"))
    b.append(t(330, 306, "Choose by range and by speed: a thermocouple for a flame, a resistance thermometer for a bath.",
               size=8.2, fill=MUTED))
    write_svg("ch01_thermometers.svg", svg(w, h, "\n".join(b)))


# ── 1.3 calibration graph ───────────────────────────────────────────────────
def ch01_property():
    fig, ax = plt.subplots(figsize=(5.4, 2.9))
    T = np.array([0, 20, 40, 60, 80, 100])
    L = 5.0 + 0.02 * T
    ax.plot(T, L, "o", color=GREEN, ms=5, zorder=3)
    tt = np.linspace(0, 100, 50)
    ax.plot(tt, 5.0 + 0.02 * tt, color=NAVY, lw=1.6, zorder=2)
    ax.axhline(5.0, color=BORDER, lw=0.9, ls="--")
    ax.axvline(0, color=BORDER, lw=0.9, ls="--")
    ax.annotate("ice point: L₀ = 5.00 cm", xy=(3, 5.06), xytext=(16, 6.30),
                fontsize=8, color=SLATE, arrowprops=dict(arrowstyle="-", color=BORDER, lw=0.8))
    ax.annotate("steam point: L₁₀₀ = 7.00 cm", xy=(98, 6.96), xytext=(38, 7.30),
                fontsize=8, color=SLATE, arrowprops=dict(arrowstyle="-", color=BORDER, lw=0.8))
    ax.text(28, 5.55, "slope = (L₁₀₀ − L₀) / 100", fontsize=8, color=GREEN)
    ax.set_xlabel("temperature / °C")
    ax.set_ylabel("length of the mercury column / cm")
    ax.set_title("CALIBRATING A THERMOMETER: A STRAIGHT LINE THROUGH TWO FIXED POINTS",
                 fontsize=8.4, color=NAVY, weight="bold")
    ax.set_xlim(-6, 108)
    ax.set_ylim(4.8, 7.6)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch01_property.svg")


# ── 2.1 three expansions ────────────────────────────────────────────────────
def ch02_expansion():
    w, h = 660, 300
    b = [t(330, 20, "ONE RULE, THREE SHAPES — AND THE COEFFICIENTS THAT GO WITH THEM", size=10.2, weight="bold")]

    cards = [
        ("Linear   α", GREEN, [
            ("rod", lambda: [rect(36, 92, 160, 14, "#FDE68A", AMBER, 3, 1.1),
                             rect(36, 112, 176, 14, "#FDE68A", AMBER, 3, 1.1),
                             line(36, 86, 36, 132, color=MUTED, sw=1.0, dash="3 2"),
                             line(212, 86, 212, 132, color=MUTED, sw=1.0, dash="3 2")]),
            ("L = L₀(1 + αΔθ)", "a rod grows in length"),
            ("steel: 1.2 × 10⁻⁵ K⁻¹", "rails, bridges, a sagging wire"),
        ]),
        ("Area   2α", BLUE, [
            ("plate", lambda: [rect(276, 96, 96, 74, "#BFDBFE", BLUE, 3, 1.1),
                               rect(268, 88, 112, 90, "none", BLUE, 3, 1.1, dash="4 3")]),
            ("A = A₀(1 + 2αΔθ)", "a plate grows both ways"),
            ("the coefficient is twice α", "a hole in the plate grows too"),
        ]),
        ("Volume   3α", PURPLE, [
            ("cube", lambda: [rect(500, 94, 78, 74, "#DDD6FE", PURPLE, 3, 1.1),
                              rect(494, 88, 90, 86, "none", PURPLE, 3, 1.1, dash="4 3")]),
            ("V = V₀(1 + 3αΔθ)", "a cube grows all three ways"),
            ("liquids and gases use γ, not 3α", "a flask can hold less when hot"),
        ]),
    ]
    for i, (head, col, rows) in enumerate(cards):
        x = 16 + i * 214
        b.append(rect(x, 34, 200, 250, "#FFFFFF", col, 7, 1.3))
        b.append(t(x + 100, 54, head, size=9.6, weight="bold", fill=col))
        for item in rows:
            if isinstance(item[0], str) and callable(item[1]):
                for el in item[1]():
                    b.append(el)
            else:
                formula, cap = item
                pass
        # formula and captions
        b.append(t(x + 100, 190, rows[1][0], size=9.4, fill=NAVY))
        b.append(t(x + 100, 208, rows[1][1], size=8.3, fill=SLATE))
        b.append(t(x + 100, 234, rows[2][0], size=8.1, fill=MUTED))
        b.append(t(x + 100, 250, rows[2][1], size=8.1, fill=MUTED))
    write_svg("ch02_expansion.svg", svg(w, h, "\n".join(b)))


# ── 2.2 bimetallic strip ────────────────────────────────────────────────────
def ch02_bimetallic():
    w, h = 640, 286
    b = [t(320, 20, "THE BIMETALLIC STRIP: TWO METALS, ONE BEND", size=10.6, weight="bold")]

    # cold, straight
    b.append(rect(20, 34, 290, 108, "#FFFFFF", GREEN, 7, 1.3))
    b.append(t(165, 54, "cold — straight", size=9.0, fill=MUTED, weight="bold"))
    b.append(rect(45, 72, 240, 15, "#FCA5A5", RED, 3, 1.1))
    b.append(rect(45, 87, 240, 15, "#BFDBFE", BLUE, 3, 1.1))
    b.append(t(165, 122, "brass on top, iron below", size=8.4, fill=SLATE))

    # hot, bends
    b.append(rect(330, 34, 290, 108, "#FFFFFF", AMBER, 7, 1.3))
    b.append(t(475, 54, "hot — it bends", size=9.0, fill=AMBER, weight="bold"))
    pts = [(360 + i * 4, 118 - 0.00105 * (i * 4) ** 2) for i in range(56)]
    up = "M " + " L ".join(f"{x:.0f},{y:.1f}" for x, y in pts)
    pts2 = [(x, y + 13) for x, y in pts]
    dn = "M " + " L ".join(f"{x:.0f},{y:.1f}" for x, y in pts2)
    b.append(path(up, stroke=RED, sw=6.5))
    b.append(path(dn, stroke=BLUE, sw=6.5))
    b.append(arrow2(596, 96, 596, 64, color=NAVY, sw=1.3, size=7))
    b.append(t(475, 134, "towards the metal that expands less (iron)", size=8.2, fill=SLATE))

    # why
    b.append(rect(20, 154, 290, 118, LIGHT_BG, BORDER, 7, 1.2))
    b.append(t(165, 174, "WHY IT BENDS", size=9.0, weight="bold", fill=NAVY))
    for i, s_ in enumerate(["brass expands about twice as much as iron",
                           "for the same rise in temperature, so the",
                           "brass side becomes longer — and the only",
                           "way to be longer is to curve round the iron"]):
        b.append(t(34, 194 + i * 18, s_, size=8.3, fill=SLATE, anchor="start"))

    # what it is for
    b.append(rect(330, 154, 290, 118, LIGHT_BG, BORDER, 7, 1.2))
    b.append(t(475, 174, "WHAT IT IS FOR", size=9.0, weight="bold", fill=NAVY))
    for i, s_ in enumerate(["a thermostat that switches a heater",
                           "a fire alarm that rings itself",
                           "a strip that compensates a watch",
                           "a thermometer with a pointer arm"]):
        b.append(t(344, 194 + i * 18, "• " + s_, size=8.3, fill=SLATE, anchor="start"))
    write_svg("ch02_bimetallic.svg", svg(w, h, "\n".join(b)))


# ── 2.3 the anomaly of water ────────────────────────────────────────────────
def ch02_water():
    fig, ax = plt.subplots(figsize=(5.6, 2.7))
    T = np.array([0, 2, 4, 6, 10, 15, 20, 25], float)
    rho = np.array([999.84, 999.97, 1000.00, 999.97, 999.70, 999.10, 998.20, 997.05])
    tt = np.linspace(0, 25, 200)
    ax.plot(tt, np.interp(tt, T, rho), color=BLUE, lw=2.0)
    ax.plot(T, rho, "o", color=NAVY, ms=3.6)
    ax.plot([4], [1000.00], "o", color=GREEN, ms=7, zorder=4)
    ax.annotate("maximum density at 4 °C", xy=(4, 1000.0), xytext=(7.6, 999.86),
                fontsize=8.2, color=NAVY,
                arrowprops=dict(arrowstyle="->", color=GREEN, lw=1.0))
    ax.annotate("ice at 0 °C is 917 kg m⁻³ —\nfar below this window, so it floats",
                xy=(0.4, 997.6), xytext=(1.6, 997.3), fontsize=7.8, color=SLATE)
    ax.set_xlabel("temperature / °C")
    ax.set_ylabel("density of water / kg m⁻³")
    ax.set_title("WATER DOES NOT OBEY THE RULE — AND LAKES DEPEND ON IT",
                 fontsize=8.8, color=NAVY, weight="bold")
    ax.set_xlim(0, 25)
    ax.set_ylim(996.8, 1000.15)
    for s_ in ("top", "right"):
        ax.spines[s_].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch02_water.svg")


# ── recap cards ─────────────────────────────────────────────────────────────
def recap_ch01():
    recap_card("recap_ch01.svg", "Chapter 1 recap card — temperature and thermometers", [
        ("Heat and temperature", "Temperature is how hot: the average kinetic energy of the particles. Heat is energy "
                                 "in transit because of a temperature difference. They are measured in kelvin and joules."),
        ("The scales", "θ/°C + 273 = T/K. Ice point 0 °C = 273 K, steam point 100 °C = 373 K. Absolute zero is "
                       "−273 °C, and no negative kelvin exists."),
        ("A thermometer", "A thermometric property that changes steadily with temperature, two fixed points, and a "
                          "linear rule to divide the interval: θ = (X − X₀)/(X₁₀₀ − X₀) × 100 °C."),
        ("Choosing one", "Liquid-in-glass for the laboratory, thermocouple for a flame or a tiny object, resistance "
                         "for precision, pyrometer for a furnace. Range, sensitivity and speed decide."),
    ])


def recap_ch02():
    recap_card("recap_ch02.svg", "Chapter 2 recap card — expansion of solids, liquids and gases", [
        ("Solids", "L = L₀(1 + αΔθ), A = A₀(1 + 2αΔθ), V = V₀(1 + 3αΔθ). α is the linear expansivity in K⁻¹, "
                   "and the area and volume coefficients follow from it."),
        ("Liquids", "Real expansion is the flask and the liquid together; apparent expansion is what the stem shows. "
                    "γ_real = γ_apparent + 3α_glass, and water is anomalous: densest at 4 °C."),
        ("Gases", "At constant pressure V/T is constant; at constant volume p/T is constant. Every gas has the same "
                  "coefficient, 1/273 per kelvin, which is why the kelvin scale is the only one that works."),
        ("Consequences", "Rails need gaps, bridges need rollers, a bimetallic strip bends, a thermostat switches, and "
                         "a lake freezes from the top because ice floats."),
    ])
