"""Volume 4 figures, part D: Chapter 4, electronics."""

from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from common import (
    BLUE, BORDER, GREEN, LIGHT_BG, MUTED, NAVY, RED, SLATE,
    arrow2, dot, line, path, recap_card, rect, save, svg, t, write_svg,
)

FIGURES = ["ch04_thermionic", "ch04_junction", "ch04_diode", "ch04_rectifier",
           "ch04_logic", "recap_ch04"]


# ── 4.1 thermionic emission and the electron beam ───────────────────────────
def ch04_thermionic():
    w, h = 680, 296
    b = [t(340, 20, "HEAT A FILAMENT AND ELECTRONS FLY OFF: THE ELECTRON GUN", size=10.6,
           weight="bold")]

    b.append(rect(14, 34, 652, 206, "#FFFFFF", BORDER, 7, 1.2))

    # cathode
    b.append(rect(52, 96, 16, 82, "#FEE2E2", RED, 4, 1.3))
    b.append(t(60, 196, "cathode (−)", size=8.4, weight="bold", fill=RED))
    b.append(t(60, 210, "heated by a filament", size=7.6, fill=MUTED))

    # anode with a hole
    b.append(rect(330, 74, 16, 126, "#DBEAFE", BLUE, 4, 1.3))
    b.append(rect(330, 122, 16, 30, "#FFFFFF", BLUE, 0, 1.3))
    b.append(t(338, 216, "anode (+)", size=8.4, weight="bold", fill=BLUE))
    b.append(t(338, 230, "with a hole", size=7.6, fill=MUTED))

    # electrons
    for k in range(5):
        yy = 108 + k * 16
        b.append(dot(92 + k * 44, yy, 3.0, NAVY))
    b.append(arrow2(120, 157, 300, 157, color=GREEN, sw=1.4, size=6))
    b.append(t(200, 196, "accelerated electrons", size=7.8, fill=GREEN))

    # deflection plates
    b.append(rect(400, 104, 130, 9, "#94A3B8", SLATE, 2, 1.0))
    b.append(rect(400, 208, 130, 9, "#94A3B8", SLATE, 2, 1.0))
    b.append(t(465, 98, "+", size=11, weight="bold", fill=RED))
    b.append(t(465, 234, "−", size=12, weight="bold", fill=BLUE))
    b.append(t(465, 232, "deflecting plates", size=7.6, fill=MUTED))

    # deflected beam
    b.append(path("M 346 157 C 400 157, 460 168, 560 196", stroke=GREEN, sw=1.6))
    b.append(arrow2(548, 191, 568, 198, color=GREEN, sw=1.6, size=6))
    b.append(t(600, 210, "spot", size=7.8, fill=SLATE))

    b.append(t(340, 258, "The accelerating p.d. V gives each electron energy eV, and the plates deflect the beam.", size=8.2, fill=NAVY))

    write_svg("ch04_thermionic.svg", svg(w, h, "\n".join(b)))


# ── 4.2 the p-n junction ────────────────────────────────────────────────────
def ch04_junction():
    w, h = 680, 290
    b = [t(340, 20, "DOPING MAKES A SEMICONDUCTOR USEFUL; THE JUNCTION MAKES IT A DIODE",
           size=10.4, weight="bold")]

    # p-type and n-type blocks
    b.append(rect(14, 34, 320, 236, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(174, 52, "TWO KINDS OF DOPED SILICON", size=9.0, weight="bold", fill=GREEN))

    b.append(rect(34, 70, 130, 76, "#FEE2E2", RED, 4, 1.2))
    b.append(t(99, 90, "p-type", size=9.4, weight="bold", fill=RED))
    b.append(t(99, 108, "doped with boron", size=7.8, fill=SLATE))
    b.append(t(99, 122, "positive holes", size=7.8, fill=SLATE))
    b.append(t(99, 136, "are the carriers", size=7.8, fill=SLATE))

    b.append(rect(34, 164, 130, 76, "#DBEAFE", BLUE, 4, 1.2))
    b.append(t(99, 184, "n-type", size=9.4, weight="bold", fill=BLUE))
    b.append(t(99, 202, "doped with arsenic", size=7.8, fill=SLATE))
    b.append(t(99, 216, "free electrons", size=7.8, fill=SLATE))
    b.append(t(99, 230, "are the carriers", size=7.8, fill=SLATE))

    b.append(t(220, 108, "Both are neutral overall:", size=8.2, fill=NAVY))
    b.append(t(220, 124, "doping adds carriers,", size=8.2, fill=NAVY))
    b.append(t(220, 140, "not charge.", size=8.2, fill=NAVY))
    b.append(t(220, 176, "Resistance falls as", size=8.2, fill=MUTED))
    b.append(t(220, 192, "the temperature rises —", size=8.2, fill=MUTED))
    b.append(t(220, 208, "the opposite of a metal.", size=8.2, fill=MUTED))

    # the junction
    b.append(rect(346, 34, 320, 236, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(506, 52, "THE p-n JUNCTION AT REST", size=9.0, weight="bold", fill=GREEN))

    b.append(rect(366, 78, 130, 96, "#FEE2E2", RED, 3, 1.2))
    b.append(rect(496, 78, 130, 96, "#DBEAFE", BLUE, 3, 1.2))
    b.append(t(431, 100, "p", size=11, weight="bold", fill=RED))
    b.append(t(561, 100, "n", size=11, weight="bold", fill=BLUE))

    # depletion region
    b.append(rect(478, 78, 38, 96, "#F1F5F9", SLATE, 0, 1.0))
    b.append(t(497, 190, "depletion layer", size=7.6, fill=SLATE))

    # diffusion arrows
    b.append(arrow2(462, 120, 486, 120, color=GREEN, sw=1.2, size=5))
    b.append(arrow2(532, 132, 508, 132, color=GREEN, sw=1.2, size=5))

    b.append(t(506, 212, "Electrons and holes diffuse across the junction and", size=7.9, fill=NAVY))
    b.append(t(506, 226, "leave a thin layer with no free carriers — a barrier", size=7.9, fill=NAVY))
    b.append(t(506, 240, "of about 0.7 V in silicon, and 0.3 V in germanium.", size=7.9, fill=NAVY))
    b.append(t(506, 258, "Forward bias lowers the barrier; reverse bias raises it.", size=7.7, fill=MUTED))

    write_svg("ch04_junction.svg", svg(w, h, "\n".join(b)))


# ── 4.3 diode characteristic ────────────────────────────────────────────────
def ch04_diode():
    fig, ax = plt.subplots(figsize=(5.4, 2.9))
    V = np.linspace(-4.0, 0.85, 600)
    # Shockley-ish shape, scaled to milliamps: forward knee near 0.6 V
    I = np.where(V > 0.1, 0.001 * (np.exp(V / 0.055) - 1), -1e-3)
    I = np.clip(I, -1.0, 120)
    ax.plot(V, I, color=GREEN, lw=2.2)
    ax.axhline(0, color=SLATE, lw=0.9)
    ax.axvline(0, color=SLATE, lw=0.9)
    ax.annotate("forward bias: rises sharply\npast about 0.7 V",
                xy=(0.80, 78), xytext=(-2.55, 108), fontsize=7.8, color=GREEN,
                arrowprops=dict(arrowstyle="->", color=GREEN, lw=0.9))
    ax.annotate("reverse bias: almost no current\n(the leakage is in microamps)",
                xy=(-2.4, -0.4), xytext=(-4.0, 26), fontsize=7.8, color=RED)
    ax.set_xlim(-4.2, 1.0)
    ax.set_ylim(-6, 125)
    ax.set_xlabel("p.d. across the diode / V")
    ax.set_ylabel("current / mA")
    ax.set_title("THE DIODE CONDUCTS ONE WAY ONLY", fontsize=9.2, color=NAVY, weight="bold")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(True, color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch04_diode.svg")


# ── 4.4 rectification ───────────────────────────────────────────────────────
def _sine(ax, x, **kw):
    ax.plot(x, np.sin(x), **kw)


def ch04_rectifier():
    fig, axs = plt.subplots(3, 1, figsize=(5.6, 3.6), sharex=True)
    x = np.linspace(0, 4 * np.pi, 800)

    axs[0].plot(x, np.sin(x), color=SLATE, lw=1.6)
    axs[0].set_ylabel("a.c. in", fontsize=8)

    axs[1].plot(x, np.clip(np.sin(x), 0, None), color=GREEN, lw=1.8)
    axs[1].set_ylabel("half-wave", fontsize=8)

    axs[2].plot(x, np.abs(np.sin(x)), color=GREEN, lw=1.8)
    axs[2].set_ylabel("full-wave", fontsize=8)
    axs[2].set_xlabel("time")
    axs[2].set_xticks([0, np.pi, 2 * np.pi, 3 * np.pi, 4 * np.pi])
    axs[2].set_xticklabels(["0", "π", "2π", "3π", "4π"])

    for a in axs:
        a.set_ylim(-1.35, 1.35)
        a.axhline(0, color=SLATE, lw=0.8)
        a.grid(True, color="#E2E8F0", lw=0.7)
        a.set_axisbelow(True)
        for s in ("top", "right"):
            a.spines[s].set_visible(False)
        a.tick_params(labelsize=7)

    axs[0].set_title("ONE DIODE HALVES THE WAVE; FOUR MAKE IT WHOLE", fontsize=9.2,
                     color=NAVY, weight="bold")
    fig.tight_layout()
    save(fig, "ch04_rectifier.svg")


# ── 4.5 logic gates ─────────────────────────────────────────────────────────
def ch04_logic():
    w, h = 680, 300
    b = [t(340, 20, "THREE GATES BUILD EVERY TRUTH TABLE IN THE PAPER", size=10.6,
           weight="bold")]

    # AND
    b.append(rect(14, 34, 212, 250, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(120, 52, "AND", size=9.4, weight="bold", fill=GREEN))
    b.append(path("M 46 82 L 108 82 A 44 44 0 0 1 108 170 L 46 170 Z", fill="#FFFFFF",
                  stroke=SLATE, sw=1.6))
    b.append(line(34, 100, 46, 100, color=SLATE, sw=1.4))
    b.append(line(34, 152, 46, 152, color=SLATE, sw=1.4))
    b.append(line(152, 126, 168, 126, color=SLATE, sw=1.4))
    b.append(t(30, 96, "A", size=8.2, fill=SLATE, anchor="end"))
    b.append(t(30, 148, "B", size=8.2, fill=SLATE, anchor="end"))
    b.append(t(174, 122, "Q", size=8.2, fill=SLATE, anchor="start"))

    b.append(t(120, 200, "Q = 1 only if A and B", size=8.0, fill=NAVY))
    b.append(t(120, 214, "are both 1", size=8.0, fill=NAVY))
    b.append(t(120, 224, "A B | Q", size=8.2, weight="bold", fill=GREEN))
    rows = (("0 0", "0"), ("0 1", "0"), ("1 0", "0"), ("1 1", "1"))
    y = 238
    for ab, q in rows:
        b.append(t(104, y, ab, size=8.0, fill=SLATE, anchor="end"))
        b.append(t(134, y, q, size=8.0, weight="bold", fill=NAVY, anchor="start"))
        y += 14

    # OR
    b.append(rect(234, 34, 212, 250, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(340, 52, "OR", size=9.4, weight="bold", fill=GREEN))
    b.append(path("M 266 82 C 300 100, 300 152, 266 170 L 340 170 A 44 44 0 0 0 340 82 Z",
                  fill="#FFFFFF", stroke=SLATE, sw=1.6))
    b.append(line(254, 100, 274, 100, color=SLATE, sw=1.4))
    b.append(line(254, 152, 274, 152, color=SLATE, sw=1.4))
    b.append(line(384, 126, 400, 126, color=SLATE, sw=1.4))
    b.append(t(250, 96, "A", size=8.2, fill=SLATE, anchor="end"))
    b.append(t(250, 148, "B", size=8.2, fill=SLATE, anchor="end"))
    b.append(t(406, 122, "Q", size=8.2, fill=SLATE, anchor="start"))

    b.append(t(340, 200, "Q = 1 if A or B", size=8.0, fill=NAVY))
    b.append(t(340, 214, "(or both) is 1", size=8.0, fill=NAVY))
    b.append(t(340, 224, "A B | Q", size=8.2, weight="bold", fill=GREEN))
    y = 238
    for ab, q in (("0 0", "0"), ("0 1", "1"), ("1 0", "1"), ("1 1", "1")):
        b.append(t(324, y, ab, size=8.0, fill=SLATE, anchor="end"))
        b.append(t(354, y, q, size=8.0, weight="bold", fill=NAVY, anchor="start"))
        y += 14

    # NOT
    b.append(rect(454, 34, 212, 250, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(560, 52, "NOT", size=9.4, weight="bold", fill=GREEN))
    b.append(path("M 500 84 L 596 126 L 500 168 Z", fill="#FFFFFF", stroke=SLATE, sw=1.6))
    b.append(dot(602, 126, 5, "#FFFFFF", SLATE, 1.6))
    b.append(line(488, 126, 500, 126, color=SLATE, sw=1.4))
    b.append(line(607, 126, 622, 126, color=SLATE, sw=1.4))
    b.append(t(484, 122, "A", size=8.2, fill=SLATE, anchor="end"))
    b.append(t(626, 122, "Q", size=8.2, fill=SLATE, anchor="start"))

    b.append(t(560, 200, "Q is the opposite of A", size=8.0, fill=NAVY))
    b.append(t(560, 214, "(the little circle means invert)", size=7.6, fill=MUTED))
    b.append(t(560, 224, "A | Q", size=8.2, weight="bold", fill=GREEN))
    y = 240
    for aa, q in (("0", "1"), ("1", "0")):
        b.append(t(552, y, aa, size=8.0, fill=SLATE, anchor="end"))
        b.append(t(568, y, q, size=8.0, weight="bold", fill=NAVY, anchor="start"))
        y += 14

    write_svg("ch04_logic.svg", svg(w, h, "\n".join(b)))


def recap_ch04():
    recap_card(
        "recap_ch04.svg",
        "Chapter 4 recap card — electronics",
        [
            ("Thermionic emission",
             "A hot filament emits electrons; an accelerating p.d. V gives each one energy eV."),
            ("Semiconductors",
             "Doping makes n-type (electrons) or p-type (holes). Resistance *falls* as they warm."),
            ("The diode",
             "Conducts above about 0.7 V forward, blocks in reverse. One diode: half-wave; four: full-wave."),
            ("Transistor and gates",
             "Ic = βIb; a small base current controls a large collector current. AND, OR, NOT."),
        ],
    )
