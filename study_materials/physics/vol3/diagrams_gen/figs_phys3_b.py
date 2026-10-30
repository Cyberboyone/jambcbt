"""Volume 3 diagrams — heat transfer and calorimetry (chapters 3 and 4).

The radiation and vapour-pressure curves are matplotlib so that the shapes are
the real ones; the apparatus drawings are hand-written SVG.
"""

from __future__ import annotations

import numpy as np

from common import (
    GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, LIGHT_BG,
    BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT,
    t, lines, rect, line, arrow2, dot, path, svg, write_svg, recap_card,
    save, plt,
)

FIGURES = ["ch03_conduction", "ch03_convection", "ch03_radiation", "ch03_flask",
           "ch04_heating_curve", "ch04_mixture", "ch04_svp",
           "recap_ch03", "recap_ch04"]


# ── 3.1 Searle's bar ────────────────────────────────────────────────────────
def ch03_conduction():
    w, h = 680, 280
    b = [t(340, 20, "SEARLE'S BAR: MEASURING THE THERMAL CONDUCTIVITY OF A METAL", size=10.4, weight="bold")]

    # the bar
    b.append(rect(150, 104, 470, 34, "#D6D3D1", SLATE, 4, 1.3))
    b.append(t(560, 126, "metal bar", size=8.2, fill=SLATE))
    # lagging
    b.append(rect(150, 96, 470, 8, "#FDE68A", AMBER, 2, 1.0))
    b.append(t(470, 92, "lagged", size=7.4, fill=AMBER))
    b.append(line(250, 164, 250, 172, color=NAVY, sw=1.0))
    b.append(line(400, 164, 400, 172, color=NAVY, sw=1.0))
    b.append(arrow2(252, 172, 398, 172, color=NAVY, sw=1.1, size=5.5))
    b.append(arrow2(398, 172, 252, 172, color=NAVY, sw=1.1, size=5.5))
    b.append(t(325, 166, "L", size=8.8, fill=NAVY, weight="bold"))

    # steam jacket at the left
    b.append(rect(96, 90, 58, 62, "#DBEAFE", BLUE, 5, 1.2))
    b.append(arrow2(125, 58, 125, 84, color=BLUE, sw=1.4, size=7))
    b.append(t(125, 44, "steam in", size=7.8, fill=BLUE))
    b.append(t(125, 170, "100 °C end", size=7.8, fill=MUTED))

    # thermometers
    for x, lab in ((250, "θ₁"), (400, "θ₂")):
        b.append(line(x, 56, x, 108, color=RED, sw=1.6))
        b.append(f'<circle cx="{x}" cy="112" r="4" fill="{RED}"/>')
        b.append(t(x - 14, 46, lab, size=9.0, fill=RED, weight="bold"))


    # heater at the far end
    b.append(rect(620, 96, 40, 50, "#FCA5A5", RED, 4, 1.2))
    b.append(t(640, 88, "coil", size=7.8, fill=RED))
    b.append(t(640, 162, "heater, power P", size=7.8, fill=RED))

    # formula panel
    b.append(rect(20, 182, 640, 82, LIGHT_BG, BORDER, 7, 1.2))
    b.append(t(340, 202, "IN STEADY STATE ALL THE POWER PASSES ALONG THE BAR", size=9.0, weight="bold", fill=NAVY))
    b.append(t(340, 228, "k  =  P L  /  [ A (θ₁ − θ₂) ]", size=13.5, weight="bold", fill=GREEN))
    b.append(t(340, 250, "P in watts, L in metres, A in m², the temperatures in °C or K — the difference is the same either way.",
               size=8.2, fill=SLATE))
    write_svg("ch03_conduction.svg", svg(w, h, "\n".join(b)))


# ── 3.2 convection ──────────────────────────────────────────────────────────
def ch03_convection():
    w, h = 660, 300
    b = [t(330, 20, "CONVECTION NEEDS A FLUID THAT CAN MOVE — AND GRAVITY TO MOVE IT", size=10.2, weight="bold")]

    # left panel: the beaker
    b.append(rect(16, 34, 300, 254, "#FFFFFF", GREEN, 7, 1.3))
    b.append(t(166, 52, "a convection current", size=9.2, weight="bold", fill=GREEN))
    bx, by, bw, bh = 66, 74, 170, 148
    b.append(f'<path d="M {bx} {by} L {bx} {by + bh - 12} Q {bx} {by + bh} {bx + 12} {by + bh} '
             f'L {bx + bw - 12} {by + bh} Q {bx + bw} {by + bh} {bx + bw} {by + bh - 12} L {bx + bw} {by}" '
             f'fill="#EFF6FF" stroke="{BLUE}" stroke-width="1.6"/>')
    b.append(rect(bx + 10, by + 116, bw - 20, 28, "#FCA5A5", RED, 4, 1.0))
    b.append(t(150, by + 135, "heat", size=8.0, fill=RED))
    b.append(arrow2(bx + 30, by + 108, bx + 30, by + 26, color=RED, sw=1.8, size=8))
    b.append(arrow2(bx + bw - 30, by + 26, bx + bw - 30, by + 108, color=BLUE, sw=1.8, size=8))
    b.append(t(bx + 30, by + 16, "warm: rises", size=7.8, fill=RED, weight="bold"))
    b.append(t(bx + bw - 30, by + 16, "cool: sinks", size=7.8, fill=BLUE, weight="bold"))
    b.append(t(166, 250, "Heat the bottom, not the top —", size=8.4, fill=SLATE))
    b.append(t(166, 266, "a current cannot start above the flame.", size=8.4, fill=SLATE))

    # right panel: land and sea breeze
    b.append(rect(330, 34, 314, 254, "#FFFFFF", BLUE, 7, 1.3))
    b.append(t(487, 52, "the sea breeze", size=9.2, weight="bold", fill=BLUE))
    # sea on the left, land on the right
    b.append(rect(348, 86, 150, 74, "#DBEAFE", BLUE, 4, 1.0))
    b.append(rect(498, 86, 128, 74, "#FDE68A", AMBER, 4, 1.0))
    b.append(t(423, 126, "SEA", size=8.6, fill=BLUE, weight="bold"))
    b.append(t(562, 126, "LAND", size=8.6, fill=AMBER, weight="bold"))
    b.append(t(423, 144, "cool, slow to warm", size=7.6, fill=SLATE))
    b.append(t(562, 144, "hot by midday", size=7.6, fill=SLATE))
    # arrows: air rises over the land, flows in from the sea
    b.append(arrow2(586, 84, 586, 58, color=RED, sw=1.6, size=7))
    b.append(t(586, 50, "air rises", size=7.6, fill=RED))
    b.append(arrow2(500, 74, 352, 74, color=GREEN, sw=1.8, size=8))
    b.append(t(426, 64, "cool air flows in", size=7.6, fill=GREEN))
    b.append(t(487, 186, "By day the land is hotter than the sea, so the air", size=8.2, fill=SLATE))
    b.append(t(487, 201, "above it rises and cooler air flows in from the sea.", size=8.2, fill=SLATE))
    b.append(t(487, 226, "At night the land cools faster and the current reverses:", size=8.2, fill=SLATE))
    b.append(t(487, 241, "the land breeze. The same physics as a radiator", size=8.2, fill=SLATE))
    b.append(t(487, 256, "under a window, and as the monsoon.", size=8.2, fill=SLATE))
    write_svg("ch03_convection.svg", svg(w, h, "\n".join(b)))


# ── 3.3 radiation ───────────────────────────────────────────────────────────
def ch03_radiation():
    fig, ax = plt.subplots(figsize=(5.6, 2.8))
    lam = np.linspace(0.2, 4.0, 400)
    def planck(T):
        return 1.0 / (lam ** 5 * (np.exp(14388.0 / (T * lam)) - 1))

    ref = planck(6000).max()
    for T, col, lab in ((6000, "#F59E0B", "6000 K (the Sun's surface)"),
                        (3000, "#DC2626", "3000 K (a filament run cooler)")):
        ax.plot(lam, planck(T) / ref, color=col, lw=1.9, label=lab)
    ax.axvline(0.5, color=GREEN, lw=1.4, ls="--")
    ax.text(0.52, 0.72, "visible band", fontsize=8, color=GREEN)
    ax.set_xlabel("wavelength / μm")
    ax.set_ylabel("intensity (6000 K peak = 1)")
    ax.set_title("A HOTTER BODY RADIATES MORE, AND AT A SHORTER WAVELENGTH",
                 fontsize=8.8, color=NAVY, weight="bold")
    ax.set_xlim(0.2, 4.0)
    ax.set_ylim(0, 1.05)
    ax.legend(frameon=False, fontsize=7.8, loc="upper right")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch03_radiation.svg")


# ── 3.4 the vacuum flask ────────────────────────────────────────────────────
def ch03_flask():
    w, h = 640, 320
    b = [t(320, 20, "THE VACUUM FLASK BLOCKS ALL THREE ROUTES AT ONCE", size=10.4, weight="bold")]

    # flask outline
    b.append(f'<path d="M 190 44 L 190 100 L 170 132 L 170 230 Q 170 240 180 240 L 300 240 '
             f'Q 310 240 310 230 L 310 132 L 290 100 L 290 44 Z" fill="#EFF6FF" stroke="{BLUE}" stroke-width="1.8"/>')
    b.append(f'<path d="M 202 52 L 202 104 L 184 134 L 184 224 L 296 224 L 296 134 L 278 104 L 278 52 Z" '
             f'fill="#FFFFFF" stroke="{BORDER}" stroke-width="1.2"/>')
    b.append(rect(198, 40, 84, 10, "#94A3B8", SLATE, 3, 1.0))
    b.append(t(240, 32, "stopper", size=7.8, fill=SLATE))

    b.append(t(240, 130, "hot or cold drink", size=8.6, fill=RED, weight="bold"))
    b.append(t(240, 170, "vacuum", size=9.4, fill=MUTED, weight="bold"))
    b.append(t(240, 186, "nothing to conduct", size=7.8, fill=MUTED))
    b.append(t(240, 199, "or carry a current", size=7.8, fill=MUTED))
    b.append(t(240, 218, "silvered walls", size=8.0, fill=SLATE))

    # the three call-outs
    notes = [
        ("1  CONDUCTION", "glass is a poor conductor, and the", "stopper is cork or plastic"),
        ("2  CONVECTION", "the vacuum has nothing to", "carry a convection current"),
        ("3  RADIATION", "the silvered walls reflect heat", "straight back where it came from"),
    ]
    for i, (head, l1, l2) in enumerate(notes):
        y = 44 + i * 74
        b.append(rect(348, y, 276, 62, "#FFFFFF", GREEN, 6, 1.2))
        b.append(t(486, y + 20, head, size=9.0, weight="bold", fill=GREEN))
        b.append(t(486, y + 38, l1, size=8.0, fill=SLATE))
        b.append(t(486, y + 52, l2, size=8.0, fill=SLATE))

    b.append(t(320, 268, "The same vacuum keeps a hot drink hot and an ice cube solid — it slows the flow of heat in whichever direction that flow is going.",
               size=8.4, fill=SLATE))
    b.append(t(320, 292, "Only the stopper and the neck still leak heat, which is why a full flask holds its temperature longer than an almost empty one.",
               size=8.4, fill=MUTED))
    write_svg("ch03_flask.svg", svg(w, h, "\n".join(b)))


# ── 4.1 the heating curve ───────────────────────────────────────────────────
def ch04_heating_curve():
    fig, ax = plt.subplots(figsize=(5.8, 2.9))
    # ice −20 → 0, melt at 0, water 0 → 100, boil at 100, steam
    seg1 = np.linspace(-20, 0, 40)
    q1 = (seg1 + 20) * 2.1
    q2 = q1[-1] + np.linspace(0, 334, 40)
    seg2 = np.linspace(0, 100, 120)
    q3 = q2[-1] + seg2 * 4.2
    q4 = q3[-1] + np.linspace(0, 2260, 70)
    seg3 = np.linspace(100, 130, 20)
    q5 = q4[-1] + np.linspace(0, 60, 20)
    ax.plot(q1, seg1, color=BLUE, lw=1.9)
    ax.plot(q2, np.zeros_like(q2), color=GREEN, lw=2.6)
    ax.plot(q3, seg2, color=RED, lw=1.9)
    ax.plot(q4, np.full_like(q4, 100.0), color=AMBER, lw=2.6)
    ax.plot(q5, seg3, color=SLATE, lw=1.9)

    ax.annotate("ice warms: 2.1 J g⁻¹ K⁻¹", xy=(26, -8), xytext=(150, -42),
                fontsize=7.4, color=BLUE, ha="left",
                arrowprops=dict(arrowstyle="->", color=BLUE, lw=0.9))
    ax.annotate("melting at 0 °C: 334 J g⁻¹", xy=(250, 0), xytext=(300, 18),
                fontsize=7.4, color=GREEN, ha="left",
                arrowprops=dict(arrowstyle="->", color=GREEN, lw=0.9))
    ax.annotate("water warms: 4.2 J g⁻¹ K⁻¹", xy=(600, 44), xytext=(620, 74),
                fontsize=7.4, color=RED, ha="left",
                arrowprops=dict(arrowstyle="->", color=RED, lw=0.9))
    ax.annotate("boiling at 100 °C: 2260 J g⁻¹,\nand the reading does not move",
                xy=(1500, 100), xytext=(1000, 120), fontsize=7.4, color=AMBER, ha="left",
                arrowprops=dict(arrowstyle="->", color=AMBER, lw=0.9))
    ax.annotate("steam warms", xy=(3210, 118), xytext=(2760, 132),
                fontsize=7.4, color=SLATE, ha="center",
                arrowprops=dict(arrowstyle="->", color=SLATE, lw=0.9))
    ax.set_xlabel("heat supplied / J per gram")
    ax.set_ylabel("temperature / °C")
    ax.set_title("THE HEATING CURVE OF WATER: TWO PLATEAUS, TWO LATENT HEATS",
                 fontsize=8.8, color=NAVY, weight="bold")
    ax.set_ylim(-56, 148)
    ax.set_xlim(0, 3500)
    for s_ in ("top", "right"):
        ax.spines[s_].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch04_heating_curve.svg")


# ── 4.2 the method of mixtures ──────────────────────────────────────────────
def ch04_mixture():
    w, h = 660, 300
    b = [t(330, 20, "THE METHOD OF MIXTURES: LOST BY THE HOT, GAINED BY THE COLD", size=10.2, weight="bold")]

    # calorimeter (lid, walls, water)
    b.append(rect(30, 52, 250, 172, "#F8FAFC", SLATE, 8, 1.6))
    b.append(rect(30, 52, 250, 18, "#E2E8F0", SLATE, 6, 1.0))
    b.append(rect(48, 84, 214, 120, "#BFDBFE", BLUE, 4, 1.2))
    b.append(t(155, 112, "water", size=9.0, fill=NAVY, weight="bold"))
    b.append(t(155, 130, "mass m_w,  specific heat c_w", size=8.0, fill=SLATE))
    b.append(t(155, 146, "initial temperature θ₁", size=8.0, fill=SLATE))
    b.append(t(155, 178, "the calorimeter itself has", size=7.4, fill=MUTED))
    b.append(t(155, 192, "a heat capacity C", size=7.4, fill=MUTED))

    # thermometer and stirrer through the lid
    b.append(line(92, 34, 92, 88, color=RED, sw=1.4))
    b.append(dot(92, 92, 4, RED))
    b.append(t(92, 28, "thermometer", size=7.4, fill=RED))
    b.append(line(214, 38, 214, 92, color=MUTED, sw=1.2))
    b.append(t(238, 34, "stirrer", size=7.4, fill=MUTED))

    # the hot solid
    b.append(rect(320, 46, 320, 62, "#FFFFFF", RED, 7, 1.3))
    b.append(t(480, 66, "THE HOT SOLID", size=9.0, weight="bold", fill=RED))
    b.append(t(480, 84, "mass m, specific heat c, temperature θ₂", size=8.2, fill=SLATE))
    b.append(t(480, 99, "dropped in, and the mixture settles at θ", size=8.2, fill=SLATE))

    # the equation
    b.append(rect(320, 118, 320, 74, LIGHT_BG, BORDER, 7, 1.2))
    b.append(t(480, 138, "heat lost = heat gained", size=8.8, weight="bold", fill=NAVY))
    b.append(t(480, 162, "m c (θ₂ − θ) = (m_w c_w + C)(θ − θ₁)", size=10.2, fill=GREEN, weight="bold"))
    b.append(t(480, 180, "if C is ignored, the answer for c comes out too high.", size=7.4, fill=MUTED))

    b.append(t(330, 240, "Every mixture question is this one sentence: what the hot body lost, the cold body and the calorimeter gained.",
               size=8.4, fill=SLATE))
    b.append(t(330, 262, "The insulation is not decoration — it is what makes the two sides equal.",
               size=8.2, fill=MUTED))
    b.append(t(330, 284, "Weigh the water, read the two starting temperatures, stir, and read the highest steady temperature.",
               size=8.2, fill=MUTED))
    write_svg("ch04_mixture.svg", svg(w, h, "\n".join(b)))


# ── 4.3 saturated vapour pressure ───────────────────────────────────────────
def ch04_svp():
    fig, ax = plt.subplots(figsize=(5.6, 2.9))
    T = np.linspace(0, 100, 200)
    p = 611 * np.exp(17.27 * T / (T + 237.3)) / 1000.0  # kPa
    ax.plot(T, p, color=BLUE, lw=2.0)
    ax.axhline(101.3, color=RED, lw=1.2, ls="--")
    ax.axvline(100, color=RED, lw=1.2, ls="--")
    ax.plot([100], [101.3], "o", color=RED, ms=6, zorder=4)
    ax.annotate("at 100 °C the vapour pressure reaches\natmospheric pressure — that is the boiling point",
                xy=(99, 101.3), xytext=(30, 86), fontsize=7.8, color=RED,
                arrowprops=dict(arrowstyle="->", color=RED, lw=1.0))
    ax.annotate("below the boiling point the vapour pressure\nis the same curve — the water still evaporates",
                xy=(52, 14.4), xytext=(8, 46), fontsize=7.6, color=BLUE,
                arrowprops=dict(arrowstyle="->", color=BLUE, lw=0.9))
    ax.set_xlabel("temperature / °C")
    ax.set_ylabel("saturated vapour pressure / kPa")
    ax.set_title("SATURATED VAPOUR PRESSURE OF WATER RISES WITH TEMPERATURE",
                 fontsize=8.6, color=NAVY, weight="bold")
    ax.set_xlim(0, 105)
    ax.set_ylim(0, 115)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch04_svp.svg")


# ── recap cards ─────────────────────────────────────────────────────────────
def recap_ch03():
    recap_card("recap_ch03.svg", "Chapter 3 recap card — heat transfer", [
        ("Conduction", "Through a solid, by particles passing energy along. Rate = kA(θ₁ − θ₂)/L; metals conduct "
                       "because their free electrons do, so copper beats steel by a factor of twenty."),
        ("Convection", "Through a fluid that moves. Warm fluid expands, becomes less dense and rises, so a heater "
                       "belongs at the bottom and a cooler at the top. No gravity, no convection."),
        ("Radiation", "Needs no medium. Every body radiates, and a black surface absorbs and emits best. Rate = "
                      "σAT⁴ for a black body, and good absorbers are good emitters."),
        ("The flask", "Vacuum kills conduction and convection; silvered walls kill radiation; the stopper kills the "
                      "last path. A vacuum keeps a hot drink hot and an ice cube solid."),
    ])


def recap_ch04():
    recap_card("recap_ch04.svg", "Chapter 4 recap card — calorimetry, latent heat and vapours", [
        ("Heat capacity", "Q = mcΔθ. Specific heat capacity is the energy to raise 1 kg by 1 K; water needs "
                          "4200 J, which is why it is a good coolant and a slow boiler."),
        ("Mixtures", "Heat lost by the hot body equals heat gained by the cold body and the calorimeter: "
                     "mc(θ₂ − θ) = (m_w c_w + C)(θ − θ₁). Never ignore C unless told to."),
        ("Latent heat", "Q = mL at a constant temperature. Melting and boiling both need energy that changes the "
                        "arrangement of the particles, not the reading on the thermometer."),
        ("Vapours", "Saturated vapour pressure depends only on temperature, and boiling starts when it equals the "
                    "outside pressure. Relative humidity compares the actual vapour pressure with the saturation value."),
    ])
