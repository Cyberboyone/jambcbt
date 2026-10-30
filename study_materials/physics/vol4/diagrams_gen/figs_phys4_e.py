"""Volume 4 figures, part E: Chapter 5, atomic physics and the photoelectric effect."""

from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from common import (
    BLUE, BORDER, GREEN, LIGHT_BG, MUTED, NAVY, RED, SLATE,
    arrow2, dot, line, path, recap_card, rect, save, svg, t, write_svg,
)

FIGURES = ["ch05_levels", "ch05_photoelectric", "ch05_xray", "recap_ch05"]


# ── 5.2 energy levels ───────────────────────────────────────────────────────
def ch05_levels():
    w, h = 680, 300
    b = [t(340, 20, "ENERGY LEVELS TURN INTO SPECTRAL LINES", size=10.6, weight="bold")]

    # left panel: levels
    b.append(rect(14, 34, 350, 250, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(189, 52, "THE HYDROGEN ATOM", size=9.0, weight="bold", fill=GREEN))

    base_y, top_y = 236, 76
    levels = [(1, -13.6, "n = 1  −13.6 eV"), (2, -3.40, "n = 2  −3.4 eV"),
              (3, -1.51, "n = 3  −1.5 eV"), (4, -0.85, "n = 4  −0.85 eV")]

    def ypos(E):
        return base_y - ((E + 13.6) / 13.6) * (base_y - top_y)

    for n, E, lab in levels:
        yy = ypos(E)
        b.append(line(52, yy, 186, yy, color=SLATE, sw=1.5))
        b.append(t(194, yy + 3, lab, size=7.4, fill=SLATE, anchor="start"))
    b.append(line(52, top_y, 186, top_y, color=MUTED, sw=1.0, dash="4 3"))
    b.append(t(194, top_y + 3, "n = ∞  0 eV, ionised", size=7.4, fill=MUTED, anchor="start"))

    y_of = {n: ypos(E) for n, E, _ in levels}
    for x, a, bb in ((76, 2, 1), (108, 3, 1), (140, 4, 2)):
        b.append(arrow2(x, y_of[a] - 2, x, y_of[bb] + 5, color=GREEN, sw=1.4, size=6))

    b.append(t(189, 258, "A falling electron emits a photon of energy h f = E₂ − E₁.", size=7.6, fill=NAVY))
    b.append(t(189, 272, "The bigger the drop, the shorter the wavelength.", size=7.6, fill=MUTED))

    # right panel: spectrum
    b.append(rect(376, 34, 290, 250, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(521, 52, "THE BALMER LINES OF HYDROGEN", size=9.0, weight="bold", fill=GREEN))

    b.append(rect(400, 96, 240, 8, "#0B2036", "#0B2036", 2, 1.0))

    def x_of(nm):
        return 400 + (nm - 380) / (700 - 380) * 240

    for nm, col in ((656, "#DC2626"), (486, "#0891B2"), (434, "#6D28D9"), (410, "#4C1D95")):
        b.append(rect(x_of(nm) - 2, 92, 4, 16, col, col, 1, 1.0))
        b.append(t(x_of(nm), 126, str(nm), size=7.6, fill=SLATE))

    b.append(t(400, 84, "400 nm", size=7.2, fill=MUTED, anchor="start"))
    b.append(t(640, 84, "700 nm", size=7.2, fill=MUTED, anchor="end"))
    b.append(t(521, 146, "wavelength / nm", size=7.6, fill=MUTED))

    b.append(t(521, 186, "The lines are sharp, and they are", size=7.9, fill=NAVY))
    b.append(t(521, 198, "different for every element —", size=7.9, fill=NAVY))
    b.append(t(521, 210, "which is how astronomers read the", size=7.9, fill=NAVY))
    b.append(t(521, 222, "composition of a star.", size=7.9, fill=NAVY))
    b.append(t(521, 250, "An absorption spectrum is the same", size=7.7, fill=MUTED))
    b.append(t(521, 262, "lines, missing from a continuous band.", size=7.7, fill=MUTED))

    write_svg("ch05_levels.svg", svg(w, h, "\n".join(b)))


# ── 5.3 photoelectric effect ────────────────────────────────────────────────
def ch05_photoelectric():
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(6.2, 2.7))

    # (a) current against voltage, two intensities
    V = np.linspace(-2.4, 0.6, 300)
    for inten, col, lab in ((1.0, GREEN, "bright light"), (0.45, "#34D399", "dim light")):
        I = np.where(V > 0, inten, inten * (1 + V / 1.6))
        I = np.clip(I, 0, None)
        ax1.plot(V, I, color=col, lw=2.0, label=lab)
    ax1.axvline(-1.6, color=RED, lw=1.0, ls=":")
    ax1.annotate("stopping potential\nis the same", xy=(-1.6, 0.12), xytext=(-2.45, 0.72),
                 fontsize=7.0, color=RED,
                 arrowprops=dict(arrowstyle="->", color=RED, lw=0.8))
    ax1.set_xlim(-2.6, 0.8)
    ax1.set_ylim(0, 1.25)
    ax1.set_xlabel("p.d. across the tube / V", fontsize=8)
    ax1.set_ylabel("photocurrent", fontsize=8)
    ax1.set_title("(a) brighter light, more current", fontsize=8.4, color=NAVY, weight="bold")
    ax1.legend(fontsize=6.6, frameon=False, loc="upper left")
    for s in ("top", "right"):
        ax1.spines[s].set_visible(False)
    ax1.grid(True, color="#E2E8F0", lw=0.7)
    ax1.set_axisbelow(True)

    # (b) max KE against frequency
    f0 = 4.5
    f = np.linspace(f0, 12, 200)
    Ke = 0.62 * (f - f0)   # in arbitrary eV per unit f
    ax2.plot(f, Ke, color=GREEN, lw=2.2)
    ax2.plot([f0, f0], [0, 0.03], color=RED, lw=0)
    ax2.axvline(f0, color=RED, lw=1.0, ls=":")
    ax2.annotate("threshold frequency\n(no emission below it)", xy=(f0, 0.30),
                 xytext=(f0 - 4.1, 2.3), fontsize=7.0, color=RED,
                 arrowprops=dict(arrowstyle="->", color=RED, lw=0.8))
    ax2.annotate("gradient = Planck's constant h", xy=(9.2, 2.9), xytext=(5.4, 4.35),
                 fontsize=7.0, color=GREEN)
    ax2.set_xlim(0, 12.5)
    ax2.set_ylim(0, 5.2)
    ax2.set_xlabel("frequency f", fontsize=8)
    ax2.set_ylabel("maximum kinetic energy", fontsize=8)
    ax2.set_title("(b) above the threshold, a straight line", fontsize=8.4, color=NAVY,
                  weight="bold")
    for s in ("top", "right"):
        ax2.spines[s].set_visible(False)
    ax2.grid(True, color="#E2E8F0", lw=0.7)
    ax2.set_axisbelow(True)

    fig.tight_layout()
    save(fig, "ch05_photoelectric.svg")


# ── 5.4 X-ray tube ──────────────────────────────────────────────────────────
def ch05_xray():
    w, h = 680, 286
    b = [t(340, 20, "AN X-RAY TUBE: ELECTRONS IN, X-RAYS OUT", size=10.6, weight="bold")]

    b.append(rect(14, 34, 380, 236, "#FFFFFF", BORDER, 7, 1.2))

    # cathode
    b.append(rect(48, 108, 14, 84, "#FEE2E2", RED, 4, 1.3))
    b.append(t(55, 206, "cathode", size=8.0, weight="bold", fill=RED))
    # anode/target
    b.append(path("M 236 88 L 268 88 L 268 212 L 236 212 Z", fill="#E2E8F0", stroke=SLATE, sw=1.4))
    b.append(t(296, 206, "tungsten target", size=8.0, weight="bold", fill=SLATE))
    b.append(t(296, 220, "the anode", size=7.6, fill=MUTED))

    # electrons
    for k in range(4):
        yy = 128 + k * 16
        b.append(dot(80 + k * 36, yy, 3.0, NAVY))
    b.append(arrow2(76, 150, 226, 150, color=GREEN, sw=1.4, size=6))
    b.append(t(160, 108, "electrons accelerated by 30–100 kV", size=7.6, fill=GREEN))

    # X-rays out
    for dy in (-26, 0, 26):
        b.append(arrow2(268, 150, 366, 150 + dy * 1.6, color="#7C3AED", sw=1.4, size=6))
    b.append(t(330, 96, "X-rays", size=8.2, weight="bold", fill="#7C3AED"))

    # right: spectrum + facts
    b.append(rect(404, 34, 262, 236, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(535, 52, "THE X-RAY SPECTRUM", size=9.0, weight="bold", fill=GREEN))
    b.append(line(424, 148, 646, 148, color=SLATE, sw=1.0))
    b.append(line(424, 148, 424, 76, color=SLATE, sw=1.0))
    b.append(t(424, 164, "wavelength →", size=7.4, fill=MUTED, anchor="start"))
    b.append(t(535, 70, "intensity", size=7.4, fill=MUTED))

    xx = np.linspace(0, 1, 100)
    # continuous background with two characteristic peaks
    yy = 60 * np.exp(-((xx - 0.18) ** 2) / 0.05) + 20 * np.exp(-((xx - 0.55) ** 2) / 0.004) \
        + 14 * np.exp(-((xx - 0.75) ** 2) / 0.003) + 4
    pts = [(424 + 220 * a, 148 - b) for a, b in zip(xx, yy)]
    b.append(f'<polyline points="{" ".join(f"{x:.1f},{y:.1f}" for x, y in pts)}" '
             f'fill="none" stroke="{GREEN}" stroke-width="1.6"/>')
    b.append(t(470, 84, "continuous", size=7.0, fill=MUTED))
    b.append(t(566, 96, "characteristic peaks", size=7.0, fill=MUTED))

    b.append(t(535, 196, "The sharp peaks come from electron", size=7.6, fill=NAVY))
    b.append(t(535, 208, "transitions inside the target atoms;", size=7.6, fill=NAVY))
    b.append(t(535, 220, "the continuous part comes from the", size=7.6, fill=NAVY))
    b.append(t(535, 232, "deceleration of the electrons.", size=7.6, fill=NAVY))
    b.append(t(535, 256, "Hard X-rays: short wavelength, deep penetration.", size=7.2, fill=MUTED))

    write_svg("ch05_xray.svg", svg(w, h, "\n".join(b)))


def recap_ch05():
    recap_card(
        "recap_ch05.svg",
        "Chapter 5 recap card — atomic physics",
        [
            ("Energy levels",
             "E = −13.6/n² eV. A photon carries hf = E₂ − E₁, and the lines are sharp."),
            ("Photoelectric",
             "hf = W + ½mv². Below the threshold frequency f₀ there is no emission, however bright."),
            ("Wave–particle",
             "Light arrives in photons; electrons diffract as waves, with λ = h/p."),
            ("X-rays",
             "Electrons stopped in a heavy target. Short wavelength, high penetration."),
        ],
    )
