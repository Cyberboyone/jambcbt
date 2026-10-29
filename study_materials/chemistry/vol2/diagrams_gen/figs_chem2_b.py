"""Vector diagrams for Chapters 3–4 of JAMB Chemistry Volume 2.

Energetics and kinetics. Curves are drawn with matplotlib so that the axis
scales and the shapes are physically true; schematics are hand-written SVG.
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


# ── chapter 3: energetics ─────────────────────────────────────────────────
def ch03_enthalpy():
    """Exothermic and endothermic profiles side by side, on the same scale."""
    fig, axes = plt.subplots(1, 2, figsize=(7.6, 3.3))
    x = np.linspace(0, 10, 400)

    for ax, exo in zip(axes, (True, False)):
        # plateau — activation hump — plateau
        def profile(a, b):
            left = 1 / (1 + np.exp(-6 * (x - 2.0)))
            right = 1 / (1 + np.exp(-6 * (x - 4.2)))
            hump = a * np.exp(-0.5 * ((x - 3.2) / 0.55) ** 2)
            return b - (a - 0.55) * 0 + hump + (b if False else 0) - 0 * left

        start = 62.0
        end = 26.0 if exo else 95.0
        # smooth step from start to end
        s = np.clip((x - 3.2) / 3.2, 0, 1)
        base = start + (end - start) * (s ** 1.0)
        hump = 34 * np.exp(-0.5 * ((x - 3.4) / 0.62) ** 2)
        y = base + hump

        ax.plot(x, y, color=GREEN if exo else RED, lw=2.4)
        ax.axhline(start, color=MUTED, lw=0.9, ls=":")
        ax.axhline(end, color=MUTED, lw=0.9, ls=":")
        ax.text(0.2, start + 3, "reactants", fontsize=7.4, color=SLATE)
        ax.text(9.8, end - 8, "products", fontsize=7.4, color=SLATE, ha="right")

        # activation energy arrow
        peak = y.max()
        ax.annotate("", xy=(3.4, peak), xytext=(3.4, start),
                    arrowprops=dict(arrowstyle="<->", color=BLUE, lw=1.1))
        ax.text(3.6, (peak + start) / 2, "Ea", fontsize=8, color=BLUE, fontweight="bold")
        # ΔH arrow
        ax.annotate("", xy=(6.4, start), xytext=(6.4, end),
                    arrowprops=dict(arrowstyle="<->", color=NAVY, lw=1.1))
        sign = "−" if exo else "+"
        ax.text(6.7, (start + end) / 2, f"ΔH {sign}", fontsize=8, color=NAVY, fontweight="bold")

        ax.set_xlim(0, 10)
        ax.set_ylim(10, 110)
        ax.set_xticks([])
        ax.set_yticks([])
        for sp in ("top", "right", "bottom", "left"):
            ax.spines[sp].set_visible(False)
        ax.set_title("Exothermic: heat released, ΔH negative" if exo else
                     "Endothermic: heat absorbed, ΔH positive",
                     fontsize=8.6, color=NAVY, fontweight="bold", pad=6)
        ax.set_ylabel("energy", fontsize=8, color=MUTED) if exo else None

    fig.tight_layout()
    save(fig, "ch03_enthalpy.svg")


def ch03_hess():
    """The Hess triangle for the combustion of carbon, directly and via CO."""
    w, h = 760, 330
    b = [t(380, 24, "HESS'S LAW AS A TRIANGLE: TWO ROUTES, ONE ANSWER", size=12.4, weight="bold")]

    A = (112, 104)     # C + O2
    B = (112, 252)     # CO + 1/2 O2
    C = (600, 252)     # CO2

    for pt, label, sub in [
        (A, "C(s) + O₂(g)", "the elements"),
        (B, "CO(g) + ½O₂(g)", "after one step"),
        (C, "CO₂(g)", "the same product by either route"),
    ]:
        b.append(rect(pt[0] - 98, pt[1] - 26, 196, 52, "#FFFFFF", NAVY, 7, 1.3))
        b.append(t(pt[0], pt[1] - 4, label, size=9.4, weight="bold"))
        b.append(t(pt[0], pt[1] + 12, sub, size=7.6, fill=MUTED))

    # direct route A → C
    b.append(arrow2(A[0] + 101, A[1] + 6, C[0] - 101, C[1] - 6, color=GREEN, sw=2.0))
    b.append(t(560, 186, "route 1 · burn carbon directly", size=8.2, fill=GREEN, weight="bold"))
    b.append(t(560, 200, "ΔH = −393 kJ mol⁻¹", size=8.2, fill=GREEN))

    # two-step route
    b.append(arrow2(A[0], A[1] + 30, B[0], B[1] - 30, color=BLUE, sw=2.0))
    b.append(t(30, 172, "route 2a", size=8.0, fill=BLUE, anchor="start"))
    b.append(t(30, 186, "ΔH = −110", size=8.0, fill=BLUE, anchor="start"))
    b.append(arrow2(B[0] + 101, B[1], C[0] - 101, C[1], color=BLUE, sw=2.0))
    b.append(t(356, 276, "route 2b · CO → CO₂,  ΔH = −283 kJ mol⁻¹", size=8.2, fill=BLUE))

    b.append(rect(452, 40, 278, 100, GREEN_LIGHT, GREEN, 7, 1.1))
    b.append(t(464, 60, "BY HESS'S LAW", size=8.8, weight="bold", fill=GREEN, anchor="start"))
    for i, s_ in enumerate([
        "route 1 = route 2a + route 2b",
        "−393 = −110 + (−283)  ✓",
        "Enthalpy is a state function: the path does",
        "not matter, only where you start and end.",
    ]):
        b.append(t(464, 78 + i * 15, s_, size=7.9, fill=SLATE, anchor="start"))
    write_svg("ch03_hess.svg", svg(w, h, "\n".join(b)))


def ch03_calorimetry():
    """Coffee-cup calorimeter: the drawing on the left, five labelled leaders on the right."""
    w, h = 760, 336
    b = [t(380, 26, "THE COFFEE-CUP CALORIMETER: WHERE EVERY JOULE IS COUNTED", size=12.2, weight="bold")]

    # cup geometry
    left, top, cw_, chh = 56, 104, 176, 168
    right = left + cw_
    b.append(poly([(left, top), (right, top), (right - 12, top + chh), (left + 12, top + chh)],
                  "#FFFFFF", NAVY, 1.6))
    b.append(poly([(left + 4, top + 64), (right - 4, top + 64), (right - 12, top + chh), (left + 12, top + chh)],
                  "#DBEAFE", "none", 0))
    # thermometer
    tx = left + cw_ / 2
    b.append(rect(tx - 4, top - 66, 8, 158, "#F8FAFC", NAVY, 3, 1.2))
    b.append(rect(tx - 2, top - 44, 4, 136, RED, "none", 0, 0))
    b.append(dot(tx, top + 96, 7, fill=RED))
    # lid
    b.append(rect(left - 14, top - 22, cw_ + 28, 22, "#F1F5F9", NAVY, 4, 1.4))
    # the added solid
    sx, sy = left + cw_ - 42, top + 146
    b.append(dot(sx, sy, 6, fill="#A16207"))

    label_x = 300
    rows = [
        (56, tx, top - 66, "thermometer, read to 0.1 °C"),
        (92, tx + 40, top - 26, "lid: keeps the heat in"),
        (128, right - 4, top + 96, "polystyrene cup, a poor conductor"),
        (164, left + 40, top + 120, "known volume of water, so the mass is known"),
        (200, sx, sy + 4, "known mass of solid, added and stirred"),
    ]
    for y, ax_, ay, label in rows:
        b.append(line(label_x - 6, y - 4, ax_, ay, color=MUTED, sw=0.9, dash="2 2"))
        b.append(dot(ax_, ay, 2.4, fill=MUTED))
        b.append(t(label_x, y, label, size=8.0, fill=SLATE, anchor="start"))

    b.append(rect(276, 224, 462, 92, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(288, 244, "THE THREE LINES OF WORKING", size=8.6, weight="bold", fill=GREEN, anchor="start"))
    for i, s_ in enumerate([
        "1.  q = m c ΔT   — heat gained by the water     (c = 4.18 J g⁻¹ K⁻¹, 1 cm³ ≈ 1 g)",
        "2.  n = m ÷ M_r  — moles of solid dissolved",
        "3.  ΔH = −q ÷ n  — joules per mole; minus, because the water gained what the reaction lost",
    ]):
        b.append(t(288, 264 + i * 16, s_, size=7.8, fill=SLATE, anchor="start"))
    write_svg("ch03_calorimetry.svg", svg(w, h, "\n".join(b)))


# ── chapter 4: rates ──────────────────────────────────────────────────────
def ch04_rates():
    """Volume of gas against time, for three concentrations, and rate against time."""
    fig, axes = plt.subplots(1, 2, figsize=(7.6, 3.2))
    t_ = np.linspace(0, 100, 400)

    ax = axes[0]
    for conc, colour, label in [(0.5, BLUE, "0.5 M acid"), (1.0, GREEN, "1.0 M acid"), (2.0, RED, "2.0 M acid")]:
        v = 120 * (1 - np.exp(-t_ / (46 / conc)))
        ax.plot(t_, v, color=colour, lw=2.0, label=label)
    ax.set_xlabel("time / s", fontsize=8)
    ax.set_ylabel("volume of gas / cm³", fontsize=8)
    ax.set_xlim(0, 100)
    ax.set_ylim(0, 135)
    ax.legend(fontsize=7.2, frameon=False, loc="lower right")
    ax.set_title("more concentrated → steeper start, same final volume", fontsize=8.0, pad=4)
    ax.grid(color="#E2E8F0", lw=0.8)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)

    ax = axes[1]
    for conc, colour in [(0.5, BLUE), (1.0, GREEN), (2.0, RED)]:
        r = 6 * conc * np.exp(-t_ / (46 / conc))
        ax.plot(t_, r, color=colour, lw=2.0)
    ax.set_xlabel("time / s", fontsize=8)
    ax.set_ylabel("rate / cm³ s⁻¹", fontsize=8)
    ax.set_xlim(0, 100)
    ax.set_ylim(0, 13)
    ax.set_title("rate falls as reactants are used up", fontsize=8.0, pad=4)
    ax.grid(color="#E2E8F0", lw=0.8)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.annotate("gradient of the curve\nabove = the rate here",
                xy=(22, 3.6), xytext=(40, 8.4), fontsize=7.0, color=SLATE,
                arrowprops=dict(arrowstyle="->", color=MUTED, lw=1.0))

    fig.tight_layout()
    save(fig, "ch04_rates.svg")


def ch04_maxwell():
    """Maxwell–Boltzmann: two temperatures, one Ea cut-off, shaded reactable areas."""
    fig, ax = plt.subplots(figsize=(7.4, 3.5))
    v = np.linspace(0, 1400, 900)

    def mb(T):
        k, m = 1.380649e-23, 4.65e-26
        y = (m / (2 * np.pi * k * T)) ** 1.5 * 4 * np.pi * v ** 2 * np.exp(-m * v ** 2 / (2 * k * T))
        return y / y.max() * 100

    y300, y400 = mb(300), mb(400)
    ea = 520
    # solid pale tints: alpha does not survive the SVG → PDF → Typst pipeline
    ax.fill_between(v, 0, y400, where=(v > ea), color="#FECACA", lw=0)
    ax.fill_between(v, 0, y300, where=(v > ea), color="#BFDBFE", lw=0)
    ax.plot(v, y300, color=BLUE, lw=2.2, label="lower temperature (300 K)")
    ax.plot(v, y400, color=RED, lw=2.2, label="higher temperature (400 K)")
    ax.axvline(ea, color=NAVY, lw=1.3, ls="--")
    ax.text(ea + 16, 26, "Ea", fontsize=9, color=NAVY, fontweight="bold")
    ax.text(ea + 16, 20, "the energy a collision must have", fontsize=7.2, color=NAVY)
    ax.text(620, 97,
            "Only the molecules to the right of Ea can react.\n"
            "Raising the temperature shifts the whole curve\n"
            "right, so the shaded fraction — and the rate —\n"
            "rises sharply. Ea itself does not move.",
            fontsize=7.3, color=SLATE, va="top", linespacing=1.5,
            bbox=dict(boxstyle="round,pad=0.4", facecolor="white", edgecolor="#CBD5E1", linewidth=0.7))
    ax.set_xlabel("kinetic energy of the molecules", fontsize=8)
    ax.set_ylabel("fraction of molecules", fontsize=8)
    ax.set_xlim(0, 1300)
    ax.set_ylim(0, 100)
    ax.set_yticks([])
    ax.set_xticks([0, 200, 400, 600, 800, 1000, 1200])
    ax.legend(fontsize=7.4, frameon=False, loc="upper left")
    ax.grid(color="#E2E8F0", lw=0.8)
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    save(fig, "ch04_maxwell.svg")


def ch04_catalyst():
    """One reaction, two routes: the catalyst lowers the hump but not the levels."""
    fig, ax = plt.subplots(figsize=(7.4, 3.4))
    x = np.linspace(0, 10, 600)
    s_ = np.clip((x - 4.0) / 2.6, 0, 1)
    base = 62 + (24 - 62) * s_
    uncat = base + 34 * np.exp(-0.5 * ((x - 3.9) / 0.55) ** 2)
    cat = base + 14 * np.exp(-0.5 * ((x - 3.9) / 0.75) ** 2)

    ax.plot(x, uncat, color=RED, lw=2.2, label="uncatalysed route — high Ea")
    ax.plot(x, cat, color=GREEN, lw=2.2, label="catalysed route — lower Ea")
    ax.axhline(62, color=MUTED, lw=0.9, ls=":")
    ax.axhline(24, color=MUTED, lw=0.9, ls=":")
    ax.text(0.15, 64.5, "reactants", fontsize=7.6, color=SLATE)
    ax.text(9.85, 26.5, "products", fontsize=7.6, color=SLATE, ha="right")

    ax.annotate("", xy=(5.35, uncat.max()), xytext=(5.35, 62),
                arrowprops=dict(arrowstyle="<->", color=RED, lw=1.0))
    ax.text(5.6, 92, "Ea without a catalyst", fontsize=7.6, color=RED)
    ax.annotate("", xy=(6.1, cat.max()), xytext=(6.1, 62),
                arrowprops=dict(arrowstyle="<->", color=GREEN, lw=1.0))
    ax.text(6.3, 68, "Ea with a catalyst", fontsize=7.6, color=GREEN)

    # ΔH arrow at the right, on a dashed vertical guide
    ax.plot([8.2, 8.2], [62, 24], color=MUTED, lw=0.8, ls=":")
    ax.annotate("", xy=(8.2, 62), xytext=(8.2, 24),
                arrowprops=dict(arrowstyle="<->", color=NAVY, lw=1.1))
    ax.text(8.45, 40, "ΔH is the same\nfor both routes", fontsize=7.6, color=NAVY)

    ax.set_xlim(0, 10)
    ax.set_ylim(10, 110)
    ax.set_xticks([])
    ax.set_yticks([])
    for sp in ("top", "right", "bottom", "left"):
        ax.spines[sp].set_visible(False)
    ax.set_ylabel("energy", fontsize=8, color=MUTED)
    ax.legend(fontsize=7.4, frameon=False, loc="upper center", bbox_to_anchor=(0.55, 1.02))
    save(fig, "ch04_catalyst.svg")


def recap_cards_b():
    recap_card("recap_ch03.svg", "Chapter 3 recap card — chemical energetics", [
        ("Signs", "Exothermic releases heat, ΔH negative; endothermic absorbs it, ΔH positive."),
        ("Bond energies", "ΔH = bonds broken − bonds formed; breaking costs, forming pays."),
        ("Hess", "Enthalpy is a state function, so any route gives the same ΔH."),
        ("Calorimetry", "q = mcΔT, then divide by the moles to get ΔH per mole, with the sign from the thermometer."),
    ])


def recap_cards_c():
    recap_card("recap_ch04.svg", "Chapter 4 recap card — rates of reaction", [
        ("Rate", "Change in concentration (or in volume of gas) per unit time; the gradient of the curve."),
        ("Collision theory", "Particles must collide, with enough energy, and in the right orientation."),
        ("Four factors", "Concentration, temperature, surface area, catalyst — each changes the frequency or the energy of collisions."),
        ("Catalyst", "Lowers Ea by providing an alternative path; it is not used up and does not change ΔH or the equilibrium position."),
    ])
