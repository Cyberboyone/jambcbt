"""Chemistry Volume 1 diagrams — chapters 3 and 4.

Same 760-unit canvas and palette as module A, so the volume reads as one book.
"""

from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from common import (recap_card, GREEN, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, BORDER,
                    AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE,
                    PURPLE_LIGHT, write_svg, svg, t, line, rect, arrow2, dot, poly, path, save)


def box(x, y, w, h, head, body_lines=(), accent=GREEN, fill="#FFFFFF", head_size=9.2, body_size=7.6):
    out = [rect(x, y, w, h, fill, accent, 7, 1.4),
           f'<rect x="{x}" y="{y}" width="{w}" height="4.5" rx="2.2" fill="{accent}"/>',
           t(x + w / 2, y + 19, head, size=head_size, weight="bold", fill=NAVY if fill == "#FFFFFF" else accent)]
    for i, s in enumerate(body_lines):
        out.append(t(x + w / 2, y + 34 + i * 13, s, size=body_size, fill=SLATE))
    return "".join(out)


def darrow(x1, y1, x2, y2, color=SLATE, sw=1.8):
    return arrow2(x1, y1, x2, y2, color=color, sw=sw) + arrow2(x2, y2, x1, y1, color=color, sw=sw)


# ── chapter 3 ──────────────────────────────────────────────────────────────
def ch03_gaslaws():
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(7.6, 2.95))

    # Boyle: P = k / V
    V = np.linspace(1, 6, 200)
    P = 12.0 / V
    ax1.plot(V, P, color=GREEN, lw=2.2)
    for v in (2, 3, 4):
        ax1.plot([v], [12 / v], "o", color=NAVY, ms=5)
    ax1.annotate("2 dm³,\n6 atm", (2, 6), textcoords="offset points", xytext=(8, 10),
                 fontsize=8.8, color=NAVY)
    ax1.annotate("4 dm³,\n3 atm", (4, 3), textcoords="offset points", xytext=(10, 14),
                 fontsize=8.8, color=NAVY)
    ax1.annotate("P × V = 12 atm dm³\n(the same at every point)", (3.05, 8.4), fontsize=8.6,
                 color=GREEN, fontweight="bold", ha="left")
    ax1.set_xlim(0.6, 6.4)
    ax1.set_ylim(0, 13.2)
    ax1.set_yticks([0, 2, 4, 6, 8, 10, 12])
    ax1.set_xlabel("volume, V (dm³)")
    ax1.set_ylabel("pressure, P (atm)")
    ax1.set_title("Boyle's law — T constant", fontsize=10.2, color=NAVY, pad=6)
    ax1.spines["top"].set_visible(False)
    ax1.spines["right"].set_visible(False)
    ax1.grid(color="#E2E8F0", lw=0.7)
    ax1.set_axisbelow(True)
    ax1.tick_params(labelsize=8.6)

    # Charles: V proportional to T (Kelvin)
    T = np.array([0, 150, 300, 450, 600])
    Vc = 24.0 / 300.0 * T
    ax2.plot(T, Vc, color=BLUE, lw=2.2)
    ax2.plot([0, 300, 600], [0, 24, 48], "o", color=NAVY, ms=5)
    ax2.annotate("300 K,\n24 dm³", (300, 24), textcoords="offset points", xytext=(-52, 8),
                 fontsize=8.8, color=NAVY)
    ax2.annotate("600 K,\n48 dm³", (600, 48), textcoords="offset points", xytext=(-50, -4),
                 fontsize=8.8, color=NAVY)
    ax2.annotate("V ∝ T (kelvin)\ndouble T, double V", (40, 40), fontsize=8.6, color=BLUE,
                 fontweight="bold", ha="left")
    ax2.set_xlim(-20, 660)
    ax2.set_ylim(0, 58)
    ax2.set_xlabel("absolute temperature, T (K)")
    ax2.set_ylabel("volume, V (dm³)")
    ax2.set_title("Charles' law — P constant", fontsize=10.2, color=NAVY, pad=6)
    ax2.spines["top"].set_visible(False)
    ax2.spines["right"].set_visible(False)
    ax2.grid(color="#E2E8F0", lw=0.7)
    ax2.set_axisbelow(True)
    ax2.tick_params(labelsize=8.6)

    fig.text(0.5, 0.005, "Combine both:  $P_1V_1/T_1 = P_2V_2/T_2$  —  and always convert °C to K first (K = °C + 273)",
             ha="center", va="bottom", fontsize=9.2, color=NAVY, fontweight="bold")
    fig.tight_layout(rect=(0, 0.05, 1, 1))
    save(fig, "ch03_gaslaws.svg")


def _molecules(x, y, w, h, n, cols, speed=1.0, seed=3):
    rng = np.random.default_rng(seed)
    out = []
    pts = []
    while len(pts) < n:
        px, py = rng.uniform(x + 14, x + w - 14), rng.uniform(y + 14, y + h - 14)
        if all((px - qx) ** 2 + (py - qy) ** 2 > 16 ** 2 for qx, qy in pts):
            pts.append((px, py))
    for i, (px, py) in enumerate(pts):
        out.append(dot(px, py, 3.4, cols[i % len(cols)]))
        if i % 4 == 0:
            ang = rng.uniform(0, 6.28)
            L = 10 * speed
            out.append(arrow2(px, py, px + L * np.cos(ang), py + L * np.sin(ang),
                              color=MUTED, sw=0.8, size=3.4))
    return "\n".join(out)


def ch03_kinetic():
    w, h = 760, 292
    b = [t(380, 22, "WHY A GAS BEHAVES AS IT DOES", size=13.2, weight="bold")]

    # panel 1 — the model
    b.append(rect(24, 36, 224, 116, "#F8FBF9", GREEN, 9, 1.4))
    b.append(_molecules(24, 36, 224, 116, 12, (GREEN, BLUE, AMBER), seed=5))
    b.append(t(136, 168, "1 · THE MODEL", size=9.8, weight="bold", fill=GREEN))
    b.append(t(136, 184, "Pressure comes from the total", size=8.2, fill=SLATE))
    b.append(t(136, 197, "force of the collisions per unit", size=8.2, fill=SLATE))
    b.append(t(136, 210, "area of the walls.", size=8.2, fill=SLATE))

    # panel 2 — same molecules, smaller volume (piston)
    b.append(rect(268, 36, 150, 116, "#F8FBF9", BLUE, 9, 1.4))
    b.append(_molecules(268, 36, 150, 116, 12, (GREEN, BLUE, AMBER), seed=5))
    # piston
    b.append(rect(418, 40, 8, 108, "#E2E8F0", SLATE, 2, 1.2))
    b.append(rect(426, 84, 14, 22, "#E2E8F0", SLATE, 3, 1.2))
    b.append(arrow2(470, 95, 434, 95, color=BLUE, sw=1.6, size=7))
    b.append(t(452, 84, "push", size=8.4, fill=BLUE, weight="bold"))
    b.append(t(343, 168, "2 · SMALLER VOLUME", size=9.8, weight="bold", fill=BLUE))
    b.append(t(343, 184, "The same molecules now hit", size=8.2, fill=SLATE))
    b.append(t(343, 197, "the walls more often, so the", size=8.2, fill=SLATE))
    b.append(t(343, 210, "pressure rises (Boyle).", size=8.2, fill=SLATE))

    # panel 3 — heating
    b.append(rect(512, 36, 224, 116, "#F8FBF9", AMBER, 9, 1.4))
    b.append(_molecules(512, 36, 224, 116, 12, (GREEN, BLUE, AMBER), speed=2.1, seed=5))
    b.append(t(624, 168, "3 · HIGHER TEMPERATURE", size=9.8, weight="bold", fill=AMBER))
    b.append(t(624, 184, "Heat added: the molecules move", size=8.2, fill=SLATE))
    b.append(t(624, 197, "faster, collide harder and more", size=8.2, fill=SLATE))
    b.append(t(624, 210, "often, so the pressure rises if", size=8.2, fill=SLATE))
    b.append(t(624, 223, "the volume is held constant.", size=8.2, fill=SLATE))

    # the three statements
    b.append(rect(24, 234, 712, 48, GREEN_LIGHT, GREEN, 8, 1.1))
    b.append(t(380, 252, "Volume down → pressure up  ·  Temperature up → pressure up  ·  More moles → pressure up",
               size=9.2, weight="bold", fill=GREEN))
    b.append(t(380, 272, "Absolute temperature means kelvin: T(K) = °C + 273. At 0 K every motion stops and the pressure would be zero.",
               size=8.4, fill=SLATE))
    write_svg("ch03_kinetic.svg", svg(w, h, "\n".join(b)))


# ── chapter 4 ──────────────────────────────────────────────────────────────
def ch04_atom():
    w, h = 760, 320
    b = [t(380, 22, "THE GOLD-FOIL EXPERIMENT AND WHAT IT PROVED", size=12.6, weight="bold")]

    # source
    b.append(rect(20, 120, 54, 60, AMBER_LIGHT, AMBER, 5, 1.3))
    b.append(t(47, 140, "α", size=15, weight="bold", fill=AMBER))
    b.append(t(47, 158, "source", size=6.8, fill=AMBER))
    b.append(t(47, 170, "²⁴⁴Ra", size=6.4, fill=MUTED))

    # beam to foil
    b.append(line(76, 150, 250, 150, AMBER, 1.4, "5,3"))
    b.append(t(150, 142, "beam of α particles", size=7.2, fill=AMBER))

    # foil
    b.append(rect(250, 66, 5, 170, "#FDE68A", "#B45309", 1, 1.2))
    b.append(t(252, 58, "thin gold foil", size=7.2, fill="#B45309"))
    b.append(t(252, 250, "(a few thousand atoms thick)", size=6.8, fill=MUTED))

    # trajectories
    b.append(arrow2(255, 150, 360, 150, color=GREEN, sw=1.5, size=7))       # straight through
    b.append(path("M 255 146 L 300 132 L 344 96", "none", GREEN, 1.4) + arrow2(330, 108, 352, 88, color=GREEN, sw=1.2, size=6.4))
    b.append(path("M 255 154 L 300 170 L 330 216", "none", RED, 1.4) + arrow2(324, 202, 336, 224, color=RED, sw=1.2, size=6.4))
    b.append(path("M 255 150 L 276 148 L 250 120", "none", PURPLE, 1.2, "3,2") + arrow2(252, 128, 232, 112, color=PURPLE, sw=1.0, size=5.6))

    b.append(t(372, 146, "most pass straight", size=7.4, fill=GREEN, anchor="start"))
    b.append(t(372, 160, "through", size=7.4, fill=GREEN, anchor="start"))
    b.append(t(346, 236, "a few are deflected", size=7.4, fill=RED, anchor="start"))
    b.append(t(150, 96, "a very few bounce back", size=7.4, fill=PURPLE, anchor="start"))

    # detector ring
    b.append(path("M 300 60 A 96 96 0 0 1 300 240", "none", BORDER, 1.0, "4,3"))
    b.append(t(300, 270, "fluorescent screen", size=6.8, fill=MUTED))

    # nucleus inset
    b.append(rect(20, 258, 200, 46, RED_LIGHT, RED, 6, 1.1))
    b.append(t(120, 274, "the mass is concentrated in a tiny,", size=7.2, fill=SLATE))
    b.append(t(120, 288, "positive nucleus (1/10 000 of the atom)", size=7.2, fill=SLATE))

    # conclusions
    cx, cy, cw = 440, 40, 300
    b.append(rect(cx, cy, cw, 200, "#F8FBF9", GREEN, 9, 1.4))
    b.append(t(cx + cw / 2, cy + 22, "WHAT THE RESULT MEANS", size=9.6, weight="bold", fill=GREEN))
    items = [
        ("The atom is mostly empty space.", GREEN),
        ("It has a small, dense, positively", GREEN),
        ("charged centre — the nucleus.", GREEN),
        ("The electrons occupy the space", BLUE),
        ("round the nucleus and carry", BLUE),
        ("almost none of the mass.", BLUE),
        ("Deflection needs a heavy positive", RED),
        ("target: α particles are helium", RED),
        ("nuclei, and like charges repel.", RED),
    ]
    for i, (s, col) in enumerate(items):
        b.append(t(cx + 16, cy + 46 + i * 17, s, size=7.8, fill=col, anchor="start"))

        write_svg("ch04_atom.svg", svg(w, h, "\n".join(b)))


def ch04_config():
    w, h = 760, 330
    b = [t(380, 22, "SHELLS, SUBSHELLS AND THE ORDER OF FILLING", size=12.6, weight="bold")]

    # ── left: shell diagram for chlorine (2, 8, 7)
    ox, oy = 150, 162
    b.append(t(150, 46, "Chlorine — shells 2, 8, 7", size=9.2, weight="bold", fill=NAVY))
    b.append(dot(ox, oy, 17, RED_LIGHT, RED, 1.2))
    b.append(t(ox, oy + 3.5, "+17", size=7.6, weight="bold", fill=RED))
    rings = [(34, 2, GREEN), (62, 8, BLUE), (90, 7, PURPLE)]
    for r, n, col in rings:
        b.append(f'<circle cx="{ox}" cy="{oy}" r="{r}" fill="none" stroke="{BORDER}" stroke-width="0.9" stroke-dasharray="3,3"/>')
        for i in range(n):
            ang = -np.pi / 2 + 2 * np.pi * i / n
            b.append(dot(ox + r * np.cos(ang), oy + r * np.sin(ang), 2.9, col))
    b.append(t(150, 262, "shells hold at most 2, 8, 8 …", size=7.6, fill=MUTED))

    # ── right: subshell boxes for sodium
    bx = 320
    b.append(t(bx + 210, 46, "Sodium — 1s² 2s² 2p⁶ 3s¹", size=9.2, weight="bold", fill=NAVY))

    b.append(t(bx, 76, "3s", size=9, weight="bold", fill=PURPLE))
    b.append(rect(bx + 34, 64, 40, 22, PURPLE_LIGHT, PURPLE, 3, 1.2))
    b.append(t(bx + 54, 79, "↑", size=11, fill=PURPLE))

    b.append(t(bx, 116, "2p", size=9, weight="bold", fill=BLUE))
    for i in range(3):
        x = bx + 34 + i * 44
        b.append(rect(x, 104, 40, 22, BLUE_LIGHT, BLUE, 3, 1.2))
        b.append(t(x + 20, 119, "↑↓", size=10.5, fill=BLUE))

    b.append(t(bx, 156, "2s", size=9, weight="bold", fill=BLUE))
    b.append(rect(bx + 34, 144, 40, 22, BLUE_LIGHT, BLUE, 3, 1.2))
    b.append(t(bx + 54, 159, "↑↓", size=10.5, fill=BLUE))

    b.append(t(bx, 196, "1s", size=9, weight="bold", fill=GREEN))
    b.append(rect(bx + 34, 184, 40, 22, GREEN_LIGHT, GREEN, 3, 1.2))
    b.append(t(bx + 54, 199, "↑↓", size=10.5, fill=GREEN))

    # energy arrow
    b.append(arrow2(bx + 200, 210, bx + 200, 70, color=MUTED, sw=1.2, size=7))
    b.append(t(bx + 214, 140, "energy", size=7.6, fill=MUTED, anchor="start"))
    b.append(t(bx + 210, 232, "one box = one orbital, holding at most two electrons", size=7.4, fill=SLATE))
    b.append(t(bx + 210, 246, "with opposite spins (↑↓); degenerate orbitals fill singly first", size=7.4, fill=SLATE))

    # ── bottom: the three rules
    y = 268
    for i, (head, body) in enumerate([
        ("AUFBAU", "fill the lowest energy level first"),
        ("PAULI", "no orbital holds more than two electrons"),
        ("HUND", "degenerate orbitals fill singly before pairing"),
    ]):
        x = 20 + i * 244
        b.append(rect(x, y, 230, 50, GREEN_LIGHT if i == 0 else ("#FFFFFF" if i else "#FFFFFF"), GREEN, 7, 1.1))
        b.append(t(x + 115, y + 18, head, size=9.2, weight="bold", fill=GREEN))
        b.append(t(x + 115, y + 34, body, size=7.4, fill=SLATE))
        b.append(t(x + 115, y + 45, "", size=7.4, fill=SLATE))

    write_svg("ch04_config.svg", svg(w, h, "\n".join(b)))


# ── recap cards ───────────────────────────────────────────────────────────
def recap_cards_b():
    recap_card("recap_ch03.svg", "Chapter 3 recap card — gases and kinetic theory", [
        ("Boyle", "At constant T, P × V is constant: halve the volume and the pressure doubles."),
        ("Charles", "At constant P, V ∝ T in kelvin. Convert °C to K before you divide."),
        ("General gas law", "P₁V₁/T₁ = P₂V₂/T₂, and PV = nRT with R = 8.31 J K⁻¹ mol⁻¹."),
        ("Kinetic theory", "Pressure is collisions per unit area; temperature measures mean kinetic energy."),
    ])
def recap_cards_c():
    recap_card("recap_ch04.svg", "Chapter 4 recap card — atomic structure and isotopes", [
        ("Particles", "Proton +1, mass 1; neutron 0, mass 1; electron −1, mass 1/1840."),
        ("Numbers", "Z = protons (defines the element); A = protons + neutrons; neutrons = A − Z."),
        ("Isotopes", "Same Z, different A; identical chemistry, different mass."),
        ("Configuration", "Fill 1s 2s 2p 3s 3p 4s 3d … and the outer shell decides the group."),
    ])
