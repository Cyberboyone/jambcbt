"""Volume 4 figures, part B: Chapter 2, current electricity.

The circuit diagrams are hand-drawn SVG so that the meters sit where the
examiner puts them: ammeter in series, voltmeter in parallel. The two graphs
are matplotlib so that their gradients are true rather than sketched.
"""

from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from common import (
    BLUE, BORDER, GREEN, LIGHT_BG, MUTED, NAVY, RED, SLATE,
    arrow2, axes_style, dot, line, path, recap_card, rect, save, svg, t,
    write_svg,
)

FIGURES = ["ch02_iv", "ch02_resistivity", "ch02_circuits", "ch02_emf", "recap_ch02"]


# ── 2.2 current–voltage graphs ──────────────────────────────────────────────
def ch02_iv():
    fig, ax = plt.subplots(figsize=(6.0, 2.8))
    V = np.linspace(0, 5.0, 200)
    R_ohm = 2.0
    ax.plot(V, V / R_ohm, color=GREEN, lw=2.2)
    ax.plot(V, V / (2.0 + 0.55 * V**2), color=RED, lw=2.2)

    Vs = np.array([0, 1, 2, 3, 4, 5], dtype=float)
    ax.plot(Vs, Vs / R_ohm, "o", color=GREEN, ms=3.4)
    ax.plot(Vs, Vs / (2.0 + 0.55 * Vs**2), "o", color=RED, ms=3.4)

    ax.text(4.72, 2.62, "ohmic: I ∝ V", fontsize=8.2, color=GREEN,
            ha="right", va="bottom")
    ax.text(4.72, 0.10, "lamp: R rises as it heats", fontsize=8.2, color=RED,
            ha="right", va="top")

    ax.plot([], [], color=GREEN, lw=2.2, label="ohmic conductor")
    ax.plot([], [], color=RED, lw=2.2, label="filament lamp")
    ax.set_xlim(0, 5.2)
    ax.set_ylim(-0.12, 2.8)
    ax.set_title("OHM'S LAW HOLDS FOR SOME CONDUCTORS, NOT ALL", fontsize=9.2,
                 color=NAVY, weight="bold")
    axes_style(ax, "potential difference V / V", "current I / A")
    save(fig, "ch02_iv.svg")


# ── 2.3 resistivity ─────────────────────────────────────────────────────────
def ch02_resistivity():
    w, h = 680, 296
    b = [t(340, 20, "RESISTANCE DEPENDS ON WHAT THE WIRE IS AND HOW IT IS CUT", size=10.6,
           weight="bold")]

    # the wire
    b.append(rect(14, 34, 310, 244, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(169, 52, "A WIRE OF LENGTH l AND AREA A", size=9.0, weight="bold", fill=GREEN))

    x0, x1, y0, y1 = 50, 262, 104, 150
    b.append(rect(x0, y0, x1 - x0, y1 - y0, "#CBD5E1", SLATE, 3, 1.3))
    # hatched ends to suggest continuation
    b.append(line(x0 + 4, y0 + 4, x0 + 4, y1 - 4, color="#94A3B8", sw=1.0, dash="2 3"))
    b.append(line(x1 - 4, y0 + 4, x1 - 4, y1 - 4, color="#94A3B8", sw=1.0, dash="2 3"))
    b.append(arrow2(x0 + 18, (y0 + y1) / 2, x1 - 18, (y0 + y1) / 2, color=BLUE, sw=1.4, size=6))
    b.append(t(169, (y0 + y1) / 2 - 8, "current", size=8.2, fill=BLUE))

    # length marker
    b.append(line(x0, y1 + 16, x1, y1 + 16, color=SLATE, sw=1.0, dash="3 3"))
    b.append(arrow2(169, y1 + 26, x0, y1 + 26, color=SLATE, sw=1.0, size=4.5))
    b.append(arrow2(169, y1 + 26, x1, y1 + 26, color=SLATE, sw=1.0, size=4.5))
    b.append(t(169, y1 + 42, "length l (m)", size=8.4, fill=SLATE))

    # area marker
    b.append(line(x1 + 16, y0, x1 + 16, y1, color=SLATE, sw=1.0, dash="3 3"))
    b.append(arrow2(x1 + 26, (y0 + y1) / 2, x1 + 26, y0, color=SLATE, sw=1.0, size=4.5))
    b.append(arrow2(x1 + 26, (y0 + y1) / 2, x1 + 26, y1, color=SLATE, sw=1.0, size=4.5))
    b.append(t(x1 + 40, (y0 + y1) / 2 + 4, "A", size=9.0, weight="bold", fill=SLATE, anchor="start"))

    b.append(t(169, 218, "R = ρ l / A", size=11.2, weight="bold", fill=NAVY))
    b.append(t(169, 238, "ρ is the resistivity of the material, in Ω m.", size=8.2, fill=MUTED))
    b.append(t(169, 256, "It is a property of copper, not of the wire.", size=8.2, fill=MUTED))

    # how R changes
    b.append(rect(336, 34, 330, 240, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(501, 52, "CHANGE ONE THING AT A TIME", size=9.0, weight="bold", fill=GREEN))

    rows = [
        ("double the length", "R doubles", "longer path, more collisions"),
        ("double the area", "R halves", "wider road, more room to pass"),
        ("double the temperature", "R rises", "lattice vibrates harder (metal)"),
        ("swap copper for nichrome", "R rises", "different ρ, same size"),
    ]
    y = 70
    for i, (change, effect, why) in enumerate(rows):
        b.append(rect(350, y, 302, 46, LIGHT_BG if i % 2 == 0 else "#FFFFFF", BORDER, 5, 0.9))
        b.append(t(362, y + 18, change, size=8.4, weight="bold", fill=NAVY, anchor="start"))
        b.append(t(638, y + 18, effect, size=8.8, weight="bold", fill=GREEN, anchor="end"))
        b.append(t(362, y + 34, why, size=7.6, fill=MUTED, anchor="start"))
        y += 50


    write_svg("ch02_resistivity.svg", svg(w, h, "\n".join(b)))


# ── 2.4 series and parallel ─────────────────────────────────────────────────
def _battery(x, y):
    """Cell symbol: long line positive, short line negative."""
    out = [line(x, y - 14, x, y - 4, color=SLATE, sw=2.0),
           line(x - 7, y - 4, x + 7, y - 4, color=SLATE, sw=2.0),
           line(x - 4, y + 2, x + 4, y + 2, color=SLATE, sw=2.0)]
    return "\n".join(out)


def _resistor(x, y, label, w=34):
    out = [rect(x, y - 8, w, 16, "#FFFFFF", SLATE, 2, 1.4)]
    out.append(t(x + w / 2, y + 26, label, size=8.6, weight="bold", fill=NAVY))
    return "\n".join(out)


def _meter(cx, cy, letter, colour=GREEN):
    return "\n".join([dot(cx, cy, 11, "#FFFFFF", colour, 1.4),
                      t(cx, cy + 4, letter, size=9.2, weight="bold", fill=colour)])


def ch02_circuits():
    w, h = 680, 330
    b = [t(340, 20, "SERIES AND PARALLEL, WITH THE METERS WHERE THEY BELONG", size=10.6,
           weight="bold")]

    # ── left: series
    b.append(rect(14, 34, 320, 280, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(174, 52, "SERIES: ONE PATH", size=9.2, weight="bold", fill=GREEN))

    L, R, T, B = 52, 300, 106, 230
    b.append(line(L, T, R, T, color=SLATE, sw=1.6))
    b.append(line(L, B, R, B, color=SLATE, sw=1.6))
    b.append(line(L, T, L, B, color=SLATE, sw=1.6))
    b.append(line(R, T, R, B, color=SLATE, sw=1.6))
    b.append(_battery(L, 168))
    b.append(_resistor(96, T, "R₁ = 4 Ω"))
    b.append(_resistor(196, T, "R₂ = 2 Ω"))
    b.append(_meter(268, T, "A"))
    b.append(_meter(213, T - 34, "V", colour=BLUE))
    b.append(line(196, T, 196, T - 34, color=BLUE, sw=1.2))
    b.append(line(230, T - 34, 230, T, color=BLUE, sw=1.2))
    b.append(arrow2(70, T - 16, 100, T - 16, color=GREEN, sw=1.2, size=5))

    b.append(t(174, 268, "Same current everywhere: I = 12 V / 6 Ω = 2 A", size=7.9, fill=NAVY))
    b.append(t(174, 284, "R = R₁ + R₂ = 6 Ω; the p.d.s add to the supply.", size=7.9, fill=NAVY))
    b.append(t(174, 300, "The ammeter is in series; the voltmeter is across.", size=7.6, fill=MUTED))

    # ── right: parallel
    b.append(rect(346, 34, 320, 280, "#FFFFFF", BORDER, 7, 1.2))
    b.append(t(506, 52, "PARALLEL: TWO BRANCHES", size=9.2, weight="bold", fill=GREEN))

    L2, R2, T2, B2 = 384, 626, 100, 198
    b.append(line(L2, T2, R2, T2, color=SLATE, sw=1.6))
    b.append(line(L2, B2, R2, B2, color=SLATE, sw=1.6))
    b.append(line(L2, T2, L2, B2, color=SLATE, sw=1.6))
    b.append(line(R2, T2, R2, B2, color=SLATE, sw=1.6))
    b.append(_battery(L2, 168))

    mid = (T2 + B2) / 2
    for yy, lab in ((T2 + 38, "R₁ = 4 Ω"), (B2 - 38, "R₂ = 4 Ω")):
        b.append(line(L2, yy, 470, yy, color=SLATE, sw=1.6))
        b.append(_resistor(470, yy, lab))
        b.append(line(504, yy, R2, yy, color=SLATE, sw=1.6))
    b.append(_meter(505, B2 + 28, "V", colour=BLUE))
    b.append(line(L2, B2, L2, B2 + 28, color=BLUE, sw=1.2))
    b.append(line(L2, B2 + 28, 494, B2 + 28, color=BLUE, sw=1.2))
    b.append(line(516, B2 + 28, R2, B2 + 28, color=BLUE, sw=1.2))
    b.append(line(R2, B2 + 28, R2, B2, color=BLUE, sw=1.2))

    b.append(t(506, 268, "Same p.d. across each branch: 12 V", size=7.9, fill=NAVY))
    b.append(t(506, 286, "1/R = 1/4 + 1/4, so R = 2 Ω and I = 6 A total.", size=7.9, fill=NAVY))
    b.append(t(506, 304, "Each branch carries 3 A; the currents add.", size=7.6, fill=MUTED))

    write_svg("ch02_circuits.svg", svg(w, h, "\n".join(b)))


# ── 2.5 e.m.f. and internal resistance ──────────────────────────────────────
def ch02_emf():
    fig, ax = plt.subplots(figsize=(6.0, 2.7))
    I = np.linspace(0, 24, 200)
    E, r = 12.0, 0.50
    V = E - I * r
    ax.plot(I, V, color=GREEN, lw=2.2)
    ax.plot([0, 6, 12, 24], [12, 9, 6, 0], "o", color=NAVY, ms=4.4, zorder=3)
    ax.axhline(12, color=MUTED, lw=0.9, ls=":")
    ax.annotate("intercept = e.m.f. = 12 V", xy=(1.0, 12), xytext=(3.6, 13.1),
                fontsize=8.0, color=NAVY)
    ax.annotate("gradient = −r = −0.50 Ω", xy=(13.5, 5.25), xytext=(13.0, 8.6),
                fontsize=8.0, color=GREEN,
                arrowprops=dict(arrowstyle="->", color=GREEN, lw=0.9))
    ax.annotate("short circuit: V = 0", xy=(23.4, 0.28), xytext=(15.6, 2.35),
                fontsize=8.0, color=RED,
                arrowprops=dict(arrowstyle="->", color=RED, lw=0.9))
    ax.set_xlim(0, 25)
    ax.set_ylim(0, 14.2)
    ax.set_title("TERMINAL p.d. AGAINST CURRENT FOR A CELL", fontsize=9.2, color=NAVY,
                 weight="bold")
    axes_style(ax, "current I / A", "terminal p.d. V / V")
    save(fig, "ch02_emf.svg")


def recap_ch02():
    recap_card(
        "recap_ch02.svg",
        "Chapter 2 recap card — current electricity",
        [
            ("The three quantities",
             "I = Q/t (ampere), V = W/Q (volt), R = V/I (ohm). One volt is one joule per coulomb."),
            ("Resistance",
             "R = ρl/A. Series adds; parallel combines as reciprocals. Metals rise in R when hot."),
            ("The real cell",
             "E = V + Ir, so V = E − Ir. The V–I line has intercept E and gradient −r."),
            ("Energy and power",
             "P = IV = I²R = V²/R; energy = Pt, billed in kWh. A fuse is chosen just above the current."),
        ],
    )
