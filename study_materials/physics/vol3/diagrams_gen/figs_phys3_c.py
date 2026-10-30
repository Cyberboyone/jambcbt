"""Volume 3 diagrams — gas laws and thermodynamics (chapters 5 and 6)."""

from __future__ import annotations

import numpy as np

from common import (
    GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, LIGHT_BG,
    BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT,
    t, lines, rect, line, arrow2, dot, path, svg, write_svg, recap_card,
    save, plt,
)

FIGURES = ["ch05_boyle", "ch05_charles", "ch05_kinetic", "ch05_maxwell",
           "ch06_pv", "ch06_engine", "ch06_fridge", "recap_ch05", "recap_ch06"]


# ── 5.1 Boyle's law ─────────────────────────────────────────────────────────
def ch05_boyle():
    fig, axes = plt.subplots(1, 2, figsize=(6.4, 2.6))
    V = np.array([1.0, 2.0, 3.0, 4.0, 5.0])
    p = 12.0 / V
    ax = axes[0]
    vv = np.linspace(0.9, 5.4, 100)
    ax.plot(vv, 12.0 / vv, color=GREEN, lw=1.8)
    ax.plot(V, p, "o", color=NAVY, ms=4.5)
    ax.set_xlabel("volume / dm³")
    ax.set_ylabel("pressure / atm")
    ax.set_title("p against V is a hyperbola", fontsize=8.4, color=NAVY)
    ax = axes[1]
    ax.plot(1 / V, p, "o", color=NAVY, ms=4.5)
    ax.plot(np.linspace(0.15, 1.15, 50), 12.0 * np.linspace(0.15, 1.15, 50), color=GREEN, lw=1.6)
    ax.set_xlabel("1 / V  (dm⁻³)")
    ax.set_ylabel("pressure / atm")
    ax.set_title("p against 1/V is a straight line", fontsize=8.4, color=NAVY)
    for a in axes:
        for s in ("top", "right"):
            a.spines[s].set_visible(False)
        a.grid(color="#E2E8F0", lw=0.8)
        a.set_axisbelow(True)
    fig.suptitle("BOYLE'S LAW: pV = CONSTANT AT CONSTANT TEMPERATURE", fontsize=8.8,
                 color=NAVY, weight="bold", y=1.02)
    fig.tight_layout()
    save(fig, "ch05_boyle.svg")


# ── 5.2 Charles and the pressure law ────────────────────────────────────────
def ch05_charles():
    fig, ax = plt.subplots(figsize=(5.8, 2.8))
    # V = 0.00375 (θ + 273);  a straight line whose extrapolation meets the
    # temperature axis at absolute zero.
    theta = np.linspace(-273, 127, 200)
    V = 0.00375 * (theta + 273.0)
    ax.plot(theta, V, color=BLUE, lw=2.0)
    ax.plot([0, 100, 20], [1.02, 1.40, 1.10], "o", color=NAVY, ms=4.5)
    ax.axhline(0, color=SLATE, lw=1.0)
    ax.axvline(0, color=SLATE, lw=1.2)
    ax.plot([-273], [0], "o", color=RED, ms=6, zorder=4)
    ax.axvline(-273, color=RED, lw=0.9, ls=":")
    ax.annotate("−273 °C = 0 K:\nevery gas line meets the axis here",
                xy=(-273, 0), xytext=(-250, 0.62), fontsize=7.8, color=RED,
                arrowprops=dict(arrowstyle="->", color=RED, lw=1.0))
    ax.annotate("V / T is constant,\nso the graph is straight",
                xy=(96, 1.38), xytext=(30, 0.52), fontsize=7.8, color=BLUE,
                arrowprops=dict(arrowstyle="->", color=BLUE, lw=0.9))
    ax.set_xlim(-300, 160)
    ax.set_ylim(-0.08, 1.72)
    ax.set_xlabel("temperature / °C")
    ax.set_ylabel("volume / dm³")
    ax.set_title("EXTENDING THE VOLUME–TEMPERATURE LINE BACKWARDS LANDS ON ABSOLUTE ZERO",
                 fontsize=8.4, color=NAVY, weight="bold")
    for s_ in ("top", "right"):
        ax.spines[s_].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch05_charles.svg")


# ── 5.3 kinetic theory box ──────────────────────────────────────────────────
def ch05_kinetic():
    w, h = 660, 316
    b = [t(330, 20, "PRESSURE IS MOLECULES HITTING A WALL", size=10.6, weight="bold")]

    x0, y0, bw, bh = 24, 38, 250, 168
    b.append(rect(x0, y0, bw, bh, "#FFFFFF", NAVY, 6, 1.8))
    rng = np.random.default_rng(7)
    for _ in range(24):
        cx = rng.uniform(x0 + 14, x0 + bw - 14)
        cy = rng.uniform(y0 + 14, y0 + bh - 14)
        b.append(dot(cx, cy, 3.2, GREEN))
        ang = rng.uniform(0, 2 * np.pi)
        b.append(arrow2(cx, cy, cx + 10 * np.cos(ang), cy + 10 * np.sin(ang), color=GREEN, sw=1.1, size=4.2))
    b.append(rect(x0 + bw - 3, y0 + 54, 6, 52, RED, RED, 2, 1.0))
    b.append(t(x0 + bw / 2, y0 + bh + 16, "N molecules, each of mass m,", size=8.2, fill=SLATE))
    b.append(t(x0 + bw / 2, y0 + bh + 30, "in a box of volume V", size=8.2, fill=SLATE))

    # call-out to the wall, drawn clear of the box
    b.append(arrow2(292, 80, 268, 80, color=RED, sw=1.4, size=6))

    # derivation panel
    b.append(rect(300, 38, 336, 168, LIGHT_BG, BORDER, 7, 1.2))
    b.append(t(468, 58, "THE ONE-LINE DERIVATION", size=9.2, weight="bold", fill=NAVY))
    rows = [
        ("each collision changes", "2 m v"),
        ("momentum by", ""),
        ("collisions per second", "N m v² / 3 L"),
        ("on one wall", ""),
        ("force on the wall", "N m v² / 3 L"),
        ("pressure = force / area", "N m v² / 3 V"),
    ]
    y = 78
    for left, right in rows:
        if right:
            b.append(t(312, y, left, size=8.2, fill=SLATE, anchor="start"))
            b.append(t(624, y, right, size=8.6, fill=GREEN, anchor="end", weight="bold"))
        else:
            b.append(t(312, y, left, size=8.2, fill=SLATE, anchor="start"))
        y += 18
    b.append(line(312, 186, 624, 186, color=BORDER, sw=1.0))
    b.append(t(468, 200, "p V  =  ⅓ N m c²", size=10.6, weight="bold", fill=NAVY))

    b.append(t(330, 254, "Temperature is the average kinetic energy of the molecules.", size=8.5, fill=NAVY))
    b.append(t(330, 272, "½ m c²  =  3/2 k T, so doubling the kelvin temperature makes the molecules √2 times faster.", size=8.5, fill=SLATE))
    b.append(t(330, 306, "This is why a gas pressure rises with temperature even when the volume is fixed.", size=8.2, fill=MUTED))
    write_svg("ch05_kinetic.svg", svg(w, h, "\n".join(b)))


# ── 5.4 Maxwell–Boltzmann ───────────────────────────────────────────────────
def ch05_maxwell():
    fig, ax = plt.subplots(figsize=(5.6, 2.7))
    c = np.linspace(0, 1600, 400)
    for T, col, lab in ((300, BLUE, "300 K"), (600, RED, "600 K (twice as hot)")):
        f = c ** 2 * np.exp(-1.0 * c ** 2 / (2 * (T / 300) * 430 ** 2))
        ax.plot(c, f / f.max(), color=col, lw=1.9, label=lab)
    ax.set_xlabel("molecular speed / m s⁻¹")
    ax.set_ylabel("relative number of molecules")
    ax.set_title("THE MAXWELL–BOLTZMANN DISTRIBUTION: A HOTTER GAS HAS A WIDER SPREAD",
                 fontsize=8.4, color=NAVY, weight="bold")
    ax.legend(frameon=False, fontsize=8)
    ax.set_xlim(0, 1600)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch05_maxwell.svg")


# ── 6.1 p–V diagram ─────────────────────────────────────────────────────────
def ch06_pv():
    fig, ax = plt.subplots(figsize=(5.6, 2.9))
    V = np.linspace(1.0, 5.0, 200)
    ax.plot(V, 6.0 / V, color=BLUE, lw=2.0, label="isothermal (T constant)")
    ax.plot(V, 6.0 / V ** 1.4, color=RED, lw=1.8, ls="--", label="adiabatic (no heat in)")
    ax.plot([1.0, 5.0], [6.0, 6.0], color=GREEN, lw=1.6, label="isobaric (p constant)")
    ax.plot([2.4, 2.4], [2.5, 6.0], color=AMBER, lw=1.6, label="isochoric (V constant)")
    ax.fill_between(V, 6.0 / V, 0, color=BLUE, alpha=0.10)
    ax.set_xlabel("volume / m³")
    ax.set_ylabel("pressure / Pa")
    ax.set_title("THE FOUR PATHS ON A p–V DIAGRAM — THE AREA UNDER EACH IS THE WORK DONE",
                 fontsize=8.2, color=NAVY, weight="bold")
    ax.set_xlim(0.8, 5.6)
    ax.set_ylim(0, 9.6)
    ax.legend(frameon=False, fontsize=7.6, loc="upper right", ncol=2, handlelength=1.4)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch06_pv.svg")


# ── 6.2 the heat engine ─────────────────────────────────────────────────────
def ch06_engine():
    w, h = 640, 300
    b = [t(320, 20, "A HEAT ENGINE MOVES HEAT FROM HOT TO COLD AND KEEPS SOME OF IT AS WORK", size=10.0, weight="bold")]

    b.append(rect(24, 44, 200, 56, "#FEE2E2", RED, 7, 1.4))
    b.append(t(124, 68, "HOT SOURCE", size=9.4, weight="bold", fill=RED))
    b.append(t(124, 86, "T₁ — burning fuel, steam", size=7.8, fill=SLATE))

    b.append(rect(250, 152, 140, 86, "#FFFFFF", NAVY, 8, 1.8))
    b.append(t(320, 186, "ENGINE", size=11, weight="bold", fill=NAVY))
    b.append(t(320, 204, "does work W", size=8.4, fill=SLATE))
    b.append(t(320, 220, "efficiency η = W / Q₁", size=8.4, fill=GREEN))

    b.append(rect(416, 182, 200, 56, "#DBEAFE", BLUE, 7, 1.4))
    b.append(t(516, 206, "COLD SINK", size=9.4, weight="bold", fill=BLUE))
    b.append(t(516, 224, "T₂ — exhaust, cooling water", size=7.8, fill=SLATE))

    b.append(arrow2(150, 104, 258, 150, color=RED, sw=2.0, size=9))
    b.append(t(150, 126, "Q₁ in", size=8.8, fill=RED, weight="bold", anchor="start"))
    b.append(arrow2(390, 176, 412, 190, color=BLUE, sw=2.0, size=9))
    b.append(t(398, 168, "Q₂ out", size=8.8, fill=BLUE, weight="bold", anchor="start"))
    b.append(arrow2(320, 150, 320, 108, color=GREEN, sw=2.0, size=9))
    b.append(t(320, 96, "W = Q₁ − Q₂", size=8.8, fill=GREEN, weight="bold"))

    b.append(rect(24, 262, 592, 30, LIGHT_BG, BORDER, 7, 1.2))
    b.append(t(320, 282, "No engine turns all of Q₁ into work: some heat must always be rejected to a colder place.",
               size=8.2, fill=SLATE))
    write_svg("ch06_engine.svg", svg(w, h, "\n".join(b)))


# ── 6.3 the refrigerator ────────────────────────────────────────────────────
def ch06_fridge():
    w, h = 620, 288
    b = [t(310, 20, "RUN THE ARROWS BACKWARDS AND YOU HAVE A REFRIGERATOR", size=10.4, weight="bold")]

    b.append(rect(24, 44, 180, 54, "#DBEAFE", BLUE, 7, 1.3))
    b.append(t(114, 68, "COLD ROOM (inside)", size=8.8, weight="bold", fill=BLUE))
    b.append(t(114, 86, "T₂, low", size=8.0, fill=SLATE))

    b.append(rect(228, 136, 130, 86, "#FFFFFF", NAVY, 8, 1.6))
    b.append(t(293, 168, "FRIDGE", size=10.4, weight="bold", fill=NAVY))
    b.append(t(293, 186, "the compressor is", size=7.8, fill=SLATE))
    b.append(t(293, 199, "driven by work W", size=7.8, fill=SLATE))

    b.append(rect(404, 44, 192, 54, "#FEE2E2", RED, 7, 1.3))
    b.append(t(500, 68, "KITCHEN (outside)", size=8.8, weight="bold", fill=RED))
    b.append(t(500, 86, "T₁, warm", size=8.0, fill=SLATE))

    b.append(arrow2(206, 96, 232, 138, color=BLUE, sw=1.9, size=8))
    b.append(t(60, 112, "Q₂ taken from the food", size=7.8, fill=BLUE, anchor="start"))
    b.append(arrow2(360, 146, 414, 92, color=RED, sw=1.9, size=8))
    b.append(t(424, 132, "Q₁ = Q₂ + W, dumped outside", size=7.6, fill=RED, anchor="start"))

    b.append(arrow2(293, 222, 293, 246, color=GREEN, sw=1.9, size=8))
    b.append(t(360, 240, "work in", size=8.0, fill=GREEN, anchor="start"))

    b.append(rect(24, 256, 572, 26, LIGHT_BG, BORDER, 6, 1.1))
    b.append(t(310, 273, "coefficient of performance  =  Q₂ / W   —  it can be greater than 1, which is why a fridge is not called efficient",
               size=8.0, fill=NAVY))
    write_svg("ch06_fridge.svg", svg(w, h, "\n".join(b)))


# ── recap cards ─────────────────────────────────────────────────────────────
def recap_ch05():
    recap_card("recap_ch05.svg", "Chapter 5 recap card — the gas laws and the kinetic theory", [
        ("The three laws", "Boyle: pV constant at fixed T. Charles: V/T constant at fixed p. Pressure law: p/T "
                           "constant at fixed V. Together pV/T = constant."),
        ("One mole", "pV = nRT with R = 8.31 J mol⁻¹ K⁻¹, and 1 mol of any gas occupies 22.4 dm³ at s.t.p. Use "
                     "kelvin in every one of these, never °C."),
        ("Kinetic theory", "pV = ⅓Nmc², so pV ∝ average kinetic energy. Temperature is the average kinetic energy "
                           "of the molecules: ½mc² = 3/2 kT."),
        ("The assumptions", "Many small molecules, random motion, elastic collisions, no forces except during a "
                            "collision, and the volume of the molecules is negligible beside the volume of the box."),
    ])


def recap_ch06():
    recap_card("recap_ch06.svg", "Chapter 6 recap card — thermodynamics and heat engines", [
        ("The first law", "ΔU = Q − W. Heat in raises the internal energy; work done by the gas lowers it. In a "
                          "cycle ΔU = 0 and W = Q₁ − Q₂."),
        ("The four processes", "Isothermal: T constant. Adiabatic: Q = 0. Isobaric: p constant, W = pΔV. Isochoric: "
                               "V constant, W = 0. The area under the p–V curve is the work."),
        ("Engines", "Efficiency η = W/Q₁ = (Q₁ − Q₂)/Q₁, always below 1. Petrol, diesel and steam engines differ in "
                    "where the heat is added, not in the second law."),
        ("The second law", "Heat flows from hot to cold on its own; a refrigerator needs work to reverse it. A "
                           "perfect engine would need a cold sink at absolute zero."),
    ])
