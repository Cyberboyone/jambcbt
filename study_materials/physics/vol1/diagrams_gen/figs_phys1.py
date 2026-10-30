"""Vector diagrams for Chapters 1–2 of JAMB Physics Volume 1.

Hand-written SVG for the schematics (instruments, vector triangles, targets),
matplotlib for anything with axes, so the graphs are true rather than sketched.
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from common import (  # noqa: E402
    GREEN, GREEN_LIGHT, GREEN_MID, GREEN_BRIGHT, NAVY, SLATE, MUTED, BORDER,
    AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT,
    LIGHT_BG, rect, t, lines, arrow2, arrow, line, dot, poly, path, card, banner,
    recap_card, write_svg, svg, save, plt, np,
)

FIGURES = ["ch01_si_units", "ch01_prefixes", "ch01_vernier", "ch01_micrometer",
           "ch01_accuracy", "ch01_vector_add", "ch01_vector_resolve", "recap_ch01",
           "ch02_distance", "ch02_vt_graph", "ch02_st_graph", "ch02_free_fall",
           "ch02_projectile", "recap_ch02"]


# ── Cover and weight chart ─────────────────────────────────────────────────
def cover_banner():
    w, h = 760, 150
    b = [rect(0, 0, w, h, GREEN_LIGHT, GREEN, 10, 1.4),
         f'<rect x="0" y="0" width="{w}" height="6" rx="3" fill="{GREEN}"/>',
         t(380, 46, "MEASUREMENT  •  MOTION  •  FORCE  •  ENERGY  •  MATTER",
           size=13.6, weight="bold"),
         t(380, 72, "Units and Vectors, Kinematics, Newton's Laws and Momentum,", size=11, fill=SLATE),
         t(380, 90, "Work, Energy and Machines, Circular Motion and Gravitation, Fluids", size=11, fill=SLATE),
         t(380, 120, "34 reviewed diagrams · 30 worked examples · a note on every exam-style option",
           size=9.4, fill=MUTED)]
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b)))


def utme_weight_chart():
    chapters = ["Measurement\n& vectors", "Motion", "Forces &\nmomentum",
                "Work, energy\n& machines", "Circular &\nSHM", "Properties\nof matter"]
    weights = [3, 4, 4, 3, 3, 4]
    fig, ax = plt.subplots(figsize=(7.0, 2.45))
    cols = [GREEN if v >= 4 else GREEN_BRIGHT for v in weights]
    bars = ax.bar(range(len(chapters)), weights, color=cols, width=0.62, zorder=3,
                  edgecolor="white", linewidth=1.4)
    for bar, v in zip(bars, weights):
        ax.text(bar.get_x() + bar.get_width() / 2, v + 0.12, str(v), ha="center",
                va="bottom", fontsize=11, color=NAVY, fontweight="bold")
    ax.set_xticks(range(len(chapters)))
    ax.set_xticklabels(chapters, fontsize=8.0)
    ax.set_ylim(0, 5.0)
    ax.set_ylabel("questions", fontsize=9)
    ax.set_yticks([0, 1, 2, 3, 4, 5])
    ax.grid(axis="y", color="#E2E8F0", lw=0.8, zorder=0)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.tick_params(labelsize=8.4)
    save(fig, "utme_weight.svg")


# ── Chapter 1 ──────────────────────────────────────────────────────────────
def ch01_si_units():
    w, h = 560, 336
    b = [t(280, 20, "THE SEVEN BASE UNITS, AND THE DERIVED UNITS BUILT ON THEM",
           size=11, weight="bold")]

    b.append(rect(8, 34, 262, 290, "#FFFFFF", GREEN, 8, 1.2))
    b.append(rect(8, 34, 262, 22, GREEN_LIGHT, GREEN, 8, 1.0))
    b.append(t(139, 49, "BASE QUANTITY  ·  UNIT  ·  SYMBOL", size=8.6, weight="bold", fill=GREEN))
    base = [("length", "metre", "m", "l"), ("mass", "kilogram", "kg", "m"),
            ("time", "second", "s", "t"), ("current", "ampere", "A", "I"),
            ("temperature", "kelvin", "K", "T"), ("amount of substance", "mole", "mol", "n"),
            ("luminous intensity", "candela", "cd", "I")]
    y = 74
    for name, unit, sym, dim in base:
        b.append(t(18, y, name, size=9.0, fill=NAVY, anchor="start"))
        b.append(t(160, y, unit, size=9.0, fill=SLATE, anchor="start"))
        b.append(t(240, y, sym, size=9.4, weight="bold", fill=GREEN, anchor="start"))
        y += 33
    b.append(t(139, 312, "every other unit in physics is built from these seven", size=7.8, fill=MUTED))

    b.append(rect(282, 34, 270, 290, "#FFFFFF", BLUE, 8, 1.2))
    b.append(rect(282, 34, 270, 22, BLUE_LIGHT, BLUE, 8, 1.0))
    b.append(t(417, 49, "DERIVED UNIT  ·  IN BASE UNITS", size=8.6, weight="bold", fill=BLUE))
    der = [("velocity", "m s⁻¹"), ("acceleration", "m s⁻²"), ("force, newton (N)", "kg m s⁻²"),
           ("work, joule (J)", "kg m² s⁻²"), ("power, watt (W)", "kg m² s⁻³"),
           ("pressure, pascal (Pa)", "kg m⁻¹ s⁻²"), ("charge, coulomb (C)", "A s"),
           ("p.d., volt (V)", "kg m² s⁻³ A⁻¹"), ("frequency, hertz (Hz)", "s⁻¹")]
    y = 74
    for name, unit in der:
        b.append(t(292, y, name, size=8.8, fill=NAVY, anchor="start"))
        b.append(t(540, y, unit, size=9.0, weight="bold", fill=BLUE, anchor="end"))
        y += 25
    b.append(t(417, 300, "a derived unit is a base unit multiplied or divided;", size=7.8, fill=MUTED))
    b.append(t(417, 313, "it never invents a new dimension", size=7.8, fill=MUTED))
    write_svg("ch01_si_units.svg", svg(w, h, "\n".join(b)))


def ch01_prefixes():
    w, h = 560, 176
    b = [t(280, 20, "THE PREFIXES ON ONE LINE — EVERY POWER OF TEN THE PAPER USES",
           size=10.6, weight="bold")]
    b.append(line(24, 92, 536, 92, color=SLATE, sw=1.6))
    steps = [(-12, "p", "pico", "10⁻¹²"), (-9, "n", "nano", "10⁻⁹"), (-6, "µ", "micro", "10⁻⁶"),
             (-3, "m", "milli", "10⁻³"), (-2, "c", "centi", "10⁻²"), (-1, "d", "deci", "10⁻¹"),
             (0, "—", "the unit itself", "10⁰"), (3, "k", "kilo", "10³"), (6, "M", "mega", "10⁶"),
             (9, "G", "giga", "10⁹"), (12, "T", "tera", "10¹²")]
    for i, (pw, sym, name, power) in enumerate(steps):
        x = 24 + i * (512 / (len(steps) - 1))
        b.append(line(x, 84, x, 100, color=SLATE, sw=1.2))
        b.append(t(x, 76, power, size=8.2, fill=MUTED))
        col = GREEN if pw == 0 else (BLUE if pw < 0 else PURPLE)
        b.append(t(x, 116, sym, size=12.0, weight="bold", fill=col))
        b.append(t(x, 132, name, size=7.4, fill=SLATE))
    b.append(t(280, 160, "1 mm = 10⁻³ m · 1 µm = 10⁻⁶ m · 1 km = 10³ m · 1 MJ = 10⁶ J · 1 GHz = 10⁹ Hz",
               size=8.4, fill=MUTED))
    write_svg("ch01_prefixes.svg", svg(w, h, "\n".join(b)))


def ch01_vernier():
    w, h = 560, 348
    b = [t(280, 20, "READING A VERNIER CALLIPER — 2.34 cm", size=11, weight="bold")]

    # ── instrument, schematic ─────────────────────────────────────────────
    b.append(rect(60, 44, 18, 66, "#FFFFFF", SLATE, 3, 1.4))     # fixed jaw
    b.append(rect(60, 118, 18, 26, "#FFFFFF", SLATE, 3, 1.4))
    b.append(rect(120, 44, 18, 66, "#FFFFFF", SLATE, 3, 1.4))    # movable jaw
    b.append(rect(120, 118, 18, 26, "#FFFFFF", SLATE, 3, 1.4))
    b.append(rect(78, 58, 42, 38, GREEN_MID, GREEN, 2, 1.0))     # object
    b.append(rect(138, 122, 330, 16, "#FFFFFF", SLATE, 3, 1.2))  # beam
    b.append(rect(120, 140, 96, 20, BLUE_LIGHT, BLUE, 3, 1.1))   # vernier plate
    b.append(rect(60, 148, 40, 8, "#FFFFFF", SLATE, 3, 1.2))     # depth rod
    b.append(t(99, 104, "object", size=7.6, fill=GREEN))

    b.append(t(69, 168, "fixed jaw", size=7.6, fill=MUTED))
    b.append(t(129, 168, "movable jaw", size=7.6, fill=MUTED))
    b.append(t(250, 168, "main scale (mm)", size=7.6, fill=MUTED))
    b.append(t(400, 168, "vernier scale — 10 divisions", size=7.6, fill=BLUE))

    # ── enlarged main scale ───────────────────────────────────────────────
    x0, mm = 44.0, 7.6
    b.append(rect(x0 - 4, 200, 60 * mm + 8, 26, "#FFFFFF", SLATE, 3, 1.3))
    for i in range(0, 61):
        x = x0 + i * mm
        if i % 10 == 0:
            b.append(line(x, 200, x, 211, color=SLATE, sw=1.2))
            b.append(t(x, 196, str(i // 10), size=7.6, fill=SLATE))
        elif i % 5 == 0:
            b.append(line(x, 200, x, 208, color=SLATE, sw=0.9))
        else:
            b.append(line(x, 200, x, 205, color=BORDER, sw=0.8))
    b.append(t(x0 - 14, 218, "cm", size=7.6, fill=MUTED))

    # ── vernier plate: zero at 2.34 cm, ten divisions covering 9 mm ───────
    vz = x0 + 23.4 * mm
    dv = 9 * mm / 10
    b.append(rect(vz - 6, 214, 10 * dv + 12, 30, BLUE_LIGHT, BLUE, 3, 1.2))
    for i in range(0, 11):
        x = vz + i * dv
        b.append(line(x, 214, x, 228, color=BLUE, sw=1.1))
    for i, lab in ((0, "0"), (5, "5"), (10, "10")):
        b.append(t(vz + i * dv, 240, lab, size=7.6, fill=BLUE))
    b.append(t(vz + 5 * dv, 254, "vernier scale", size=7.6, fill=BLUE))

    xc = vz + 4 * dv
    b.append(line(xc, 182, xc, 246, color=RED, sw=1.1, dash="3 2"))
    b.append(t(xc + 8, 178, "the 4th line coincides", size=7.4, fill=RED, anchor="start"))

    b.append(rect(8, 268, 544, 70, GREEN_LIGHT, GREEN, 8, 1.1))
    b.append(t(20, 288, "main scale: the vernier zero has passed 2.3 cm but not 2.4 cm  →  2.30 cm",
               size=9.0, fill=NAVY, anchor="start"))
    b.append(t(20, 306, "vernier: the 4th division coincides, and 4 × 0.01 cm = 0.04 cm", size=9.0, fill=NAVY, anchor="start"))
    b.append(t(20, 326, "reading = 2.30 + 0.04 = 2.34 cm  (the least count is 0.1 mm / 10 = 0.01 cm)",
               size=8.8, weight="bold", fill=GREEN, anchor="start"))
    write_svg("ch01_vernier.svg", svg(w, h, "\n".join(b)))


def ch01_micrometer():
    w, h = 560, 312
    b = [t(280, 20, "READING A MICROMETER SCREW GAUGE — 3.97 mm", size=11, weight="bold")]

    # frame: C-shape from the anvil, round the back, along the bottom to the barrel
    b.append(path("M 152 76 L 102 76 Q 78 76 78 100 L 78 148 Q 78 172 102 172 L 300 172",
                  stroke=SLATE, sw=7))
    b.append(line(300, 172, 300, 122, color=SLATE, sw=7))
    b.append(rect(140, 88, 14, 30, "#FFFFFF", SLATE, 2, 1.3))     # anvil
    b.append(rect(154, 94, 12, 18, GREEN_MID, GREEN, 2, 1.0))     # object
    b.append(rect(166, 92, 140, 22, "#FFFFFF", BLUE, 3, 1.2))     # spindle
    b.append(rect(306, 88, 92, 30, "#FFFFFF", SLATE, 3, 1.3))     # sleeve
    b.append(rect(394, 84, 80, 38, BLUE_LIGHT, BLUE, 4, 1.4))     # thimble
    b.append(rect(474, 94, 44, 18, "#FFFFFF", SLATE, 3, 1.2))     # ratchet

    # sleeve graduations: 0 to 3.5 mm, every 0.5 mm
    for i in range(0, 8):
        x = 312 + i * 8.6
        b.append(line(x, 88, x, 99 if i % 2 == 0 else 95, color=SLATE, sw=1.0))
        if i % 2 == 0:
            b.append(t(x, 83, str(i // 2), size=7.2, fill=SLATE))
    # thimble graduations
    for i in range(0, 11):
        y = 88 + i * 3.2
        b.append(line(394, y, 404, y, color=BLUE, sw=0.8))
    b.append(t(434, 108, "47", size=13, weight="bold", fill=BLUE))

    for x, lab, col in ((147, "anvil", MUTED), (172, "object", GREEN), (236, "spindle", MUTED),
                        (352, "sleeve", MUTED), (434, "thimble", BLUE), (496, "ratchet", MUTED)):
        b.append(t(x, 186, lab, size=7.4, fill=col))

    b.append(rect(8, 198, 300, 62, "#FFFFFF", SLATE, 6, 1.0))
    b.append(t(18, 216, "sleeve: 3.0 mm + 0.5 mm  =  3.50 mm", size=8.8, fill=NAVY, anchor="start"))
    b.append(t(18, 232, "thimble: 47 × 0.01 mm  =  0.47 mm", size=8.8, fill=NAVY, anchor="start"))
    b.append(t(18, 250, "reading  =  3.97 mm", size=9.4, weight="bold", fill=GREEN, anchor="start"))

    b.append(rect(318, 198, 234, 62, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(328, 216, "one full turn of the thimble moves", size=8.4, fill=NAVY, anchor="start"))
    b.append(t(328, 232, "the spindle 0.50 mm, and it carries", size=8.4, fill=NAVY, anchor="start"))
    b.append(t(328, 248, "50 divisions — so 1 division = 0.01 mm", size=8.4, fill=NAVY, anchor="start"))

    b.append(t(280, 278, "read the sleeve first, then add the thimble — and subtract any zero error",
               size=8.4, fill=MUTED))
    b.append(t(280, 296, "the least count is 0.5 mm / 50 = 0.01 mm, ten times finer than a vernier calliper",
               size=8.4, fill=MUTED))
    write_svg("ch01_micrometer.svg", svg(w, h, "\n".join(b)))


def ch01_accuracy():
    w, h = 560, 320
    b = [t(280, 20, "ACCURATE, PRECISE, BOTH, NEITHER", size=11, weight="bold")]
    panels = [
        ("accurate and precise", [(0, 0), (2, -2), (-2, 2), (1, 1)], GREEN, GREEN_LIGHT),
        ("precise, not accurate", [(26, 20), (30, 22), (24, 24), (28, 26)], BLUE, BLUE_LIGHT),
        ("accurate, not precise", [(18, -16), (-20, 14), (16, 18), (-14, -18)], PURPLE, PURPLE_LIGHT),
        ("neither", [(34, -26), (-30, 24), (36, 20), (-28, -22)], RED, RED_LIGHT),
    ]
    for i, (label, pts, col, bg) in enumerate(panels):
        cx = 78 + (i % 2) * 200
        cy = 96 + (i // 2) * 108
        b.append(rect(cx - 56, cy - 56, 112, 112, "#FFFFFF", col, 6, 1.3))
        for r in (46, 30, 14):
            b.append(f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="none" stroke="{BORDER}" stroke-width="1"/>')
        for dx, dy in pts:
            b.append(dot(cx + dx, cy + dy, 4.2, col))
        b.append(t(cx, cy + 70, label, size=8.4, weight="bold", fill=col))
    b.append(t(280, 300, "accuracy = closeness to the true value · precision = closeness of the readings to each other",
               size=8.4, fill=MUTED))
    write_svg("ch01_accuracy.svg", svg(w, h, "\n".join(b)))


def ch01_vector_add():
    w, h = 560, 268
    b = [t(280, 20, "ADDING TWO VECTORS — TRIANGLE AND PARALLELOGRAM", size=11, weight="bold")]

    # triangle
    ox, oy = 60, 200
    ax, ay = ox + 150, oy            # a: 150 right
    bx, by = ax + 90 * np.cos(np.pi / 3), oy - 90 * np.sin(np.pi / 3)
    b.append(arrow2(ox, oy, ax, ay, color=GREEN, sw=2.2))
    b.append(arrow2(ax, ay, bx, by, color=BLUE, sw=2.2))
    b.append(arrow2(ox, oy, bx, by, color=RED, sw=2.4))
    b.append(t(ox + 75, oy + 18, "a", size=11, weight="bold", fill=GREEN))
    b.append(t(ax + 55, oy - 24, "b", size=11, weight="bold", fill=BLUE))
    b.append(t(ox + 85, oy - 55, "R = a + b", size=10.5, weight="bold", fill=RED))
    b.append(t(250, 228, "triangle law", size=8.6, fill=MUTED))

    # parallelogram
    ox2 = 320
    b.append(f'<line x1="{ox2}" y1="{oy}" x2="{ox2+150}" y2="{oy}" stroke="{BORDER}" stroke-width="1.2" stroke-dasharray="4 3"/>')
    b.append(f'<line x1="{ox2}" y1="{oy}" x2="{ox2+90*np.cos(np.pi/3)}" y2="{oy-90*np.sin(np.pi/3)}" stroke="{BORDER}" stroke-width="1.2" stroke-dasharray="4 3"/>')
    b.append(f'<line x1="{ox2+150}" y1="{oy}" x2="{ox2+150+90*np.cos(np.pi/3)}" y2="{oy-90*np.sin(np.pi/3)}" stroke="{BORDER}" stroke-width="1.2" stroke-dasharray="4 3"/>')
    b.append(f'<line x1="{ox2+90*np.cos(np.pi/3)}" y1="{oy-90*np.sin(np.pi/3)}" x2="{ox2+150+90*np.cos(np.pi/3)}" y2="{oy-90*np.sin(np.pi/3)}" stroke="{BORDER}" stroke-width="1.2" stroke-dasharray="4 3"/>')
    b.append(arrow2(ox2, oy, ox2 + 150, oy, color=GREEN, sw=2.2))
    b.append(arrow2(ox2, oy, ox2 + 90 * np.cos(np.pi / 3), oy - 90 * np.sin(np.pi / 3), color=BLUE, sw=2.2))
    b.append(arrow2(ox2, oy, ox2 + 150 + 90 * np.cos(np.pi / 3), oy - 90 * np.sin(np.pi / 3), color=RED, sw=2.4))
    b.append(t(ox2 + 60, oy + 18, "a", size=11, weight="bold", fill=GREEN))
    b.append(t(ox2 + 38, oy - 32, "b", size=11, weight="bold", fill=BLUE))
    b.append(t(ox2 + 105, oy - 60, "R", size=11, weight="bold", fill=RED))
    b.append(t(440, 228, "parallelogram law", size=8.6, fill=MUTED))

    b.append(rect(8, 238, 544, 24, GREEN_LIGHT, GREEN, 6, 1.1))
    b.append(t(280, 254, "R² = a² + b² + 2ab cos θ, where θ is the angle between the two vectors",
               size=8.8, fill=NAVY))
    write_svg("ch01_vector_add.svg", svg(w, h, "\n".join(b)))


def ch01_vector_resolve():
    w, h = 560, 278
    b = [t(280, 20, "RESOLVING A VECTOR — AND THE SAME IDEA ON A SLOPE", size=11, weight="bold")]

    # ── components on axes ────────────────────────────────────────────────
    ox, oy = 70, 208
    ang = np.radians(38)
    fx, fy = ox + 190 * np.cos(ang), oy - 190 * np.sin(ang)
    b.append(arrow2(ox, oy, fx, fy, color=GREEN, sw=2.4))
    b.append(f'<line x1="{fx:.1f}" y1="{fy:.1f}" x2="{fx:.1f}" y2="{oy}" stroke="{BLUE}" stroke-width="1.5" stroke-dasharray="5 3"/>')
    b.append(f'<line x1="{fx:.1f}" y1="{fy:.1f}" x2="{ox}" y2="{fy:.1f}" stroke="{BLUE}" stroke-width="1.5" stroke-dasharray="5 3"/>')
    b.append(arrow2(ox, oy, fx, oy, color=BLUE, sw=2.0))
    b.append(arrow2(ox, oy, ox, fy, color=BLUE, sw=2.0))
    b.append(t((ox + fx) / 2, oy + 18, "F cos θ", size=9.6, weight="bold", fill=BLUE))
    b.append(t(ox - 32, (oy + fy) / 2, "F sin θ", size=9.6, weight="bold", fill=BLUE))
    b.append(t(ox + 104, oy - 96, "F", size=11, weight="bold", fill=GREEN))
    b.append(path(f"M {ox+44} {oy} A 44 44 0 0 0 {ox+44*np.cos(ang):.1f} {oy-44*np.sin(ang):.1f}",
                  stroke=SLATE, sw=1.2))
    b.append(t(ox + 56, oy - 12, "θ", size=9.6, fill=SLATE))

    # ── the same vector on a slope ────────────────────────────────────────
    ax, ay = 330, 228
    bx, by = 530, 228
    cx, cy = 530, 128
    b.append(poly([(ax, ay), (bx, by), (cx, cy)], "#F1F5F9", SLATE, 1.6))
    b.append(t(ax + 26, ay - 8, "θ", size=10, fill=SLATE))

    px, py = 430, 178                       # point where the block rests
    b.append(f'<g transform="rotate(-26.57 {px} {py})">'
             f'{rect(px-22, py-27, 44, 27, GREEN_MID, GREEN, 3, 1.2)}</g>')

    Cx, Cy = 428, 164
    b.append(arrow2(Cx, Cy, Cx, Cy + 52, color=RED, sw=2.0))
    b.append(arrow2(Cx, Cy, Cx - 46.5, Cy + 23.3, color=PURPLE, sw=2.0))
    b.append(arrow2(Cx, Cy, Cx + 23.3, Cy + 46.5, color=AMBER, sw=2.0))
    b.append(t(Cx + 10, Cy + 50, "W", size=9.6, weight="bold", fill=RED))
    b.append(t(Cx - 52, Cy + 14, "W sin θ", size=8.8, weight="bold", fill=PURPLE, anchor="end"))
    b.append(t(Cx + 28, Cy + 52, "W cos θ", size=8.8, weight="bold", fill=AMBER, anchor="start"))

    b.append(t(430, 254, "down the slope: W sin θ  ·  into the slope: W cos θ", size=8.6, fill=MUTED))
    b.append(rect(8, 260, 544, 14, "#FFFFFF", BORDER, 4, 0.8))
    b.append(t(280, 271, "the component along the direction you resolve into carries the cosine",
               size=8.4, fill=MUTED))
    write_svg("ch01_vector_resolve.svg", svg(w, h, "\n".join(b)))


def recap_ch01():
    recap_card("recap_ch01.svg", "Chapter 1 recap card — measurement, units and vectors", [
        ("Units", "Seven base units (m, kg, s, A, K, mol, cd); every other unit is built from them. "
                  "Prefixes step by powers of ten: milli 10⁻³, micro 10⁻⁶, kilo 10³, mega 10⁶."),
        ("Dimensions", "[L], [M], [T], [A]. An equation is only physical if every term carries the same "
                       "dimensions — that test finds errors the arithmetic hides."),
        ("Instruments", "Metre rule 1 mm · vernier calliper 0.01 cm · micrometer 0.01 mm. Read the main "
                        "scale first, then the scale that coincides; subtract a zero error."),
        ("Vectors", "Magnitude and direction. Add head to tail; resolve with F cos θ along and F sin θ "
                    "perpendicular. On a slope the pull down it is W sin θ."),
    ])


# ── Chapter 2 ──────────────────────────────────────────────────────────────
def ch02_distance():
    w, h = 560, 236
    b = [t(280, 20, "DISTANCE IS A PATH; DISPLACEMENT IS AN ARROW", size=11, weight="bold")]
    pts = [(60, 170), (160, 70), (300, 130), (420, 60), (500, 150)]
    d = "M " + " L ".join(f"{x} {y}" for x, y in pts)
    b.append(path(d, stroke=BLUE, sw=2.0, dash="6 4"))
    for (x, y) in pts:
        b.append(dot(x, y, 4, BLUE))
    b.append(t(160, 56, "start", size=8.4, fill=BLUE))
    b.append(t(500, 136, "finish", size=8.4, fill=BLUE))
    b.append(arrow2(60, 170, 500, 150, color=RED, sw=2.2))
    b.append(t(250, 190, "displacement — a straight line from start to finish", size=8.8, fill=RED))
    b.append(t(250, 214, "distance — the length of the dotted path; it can never be less than the displacement",
               size=8.6, fill=MUTED))
    write_svg("ch02_distance.svg", svg(w, h, "\n".join(b)))


def ch02_vt_graph():
    fig, ax = plt.subplots(figsize=(6.2, 2.7))
    tt = np.array([0, 2, 6, 9])
    vv = np.array([0, 12, 12, 0])
    ax.plot(tt, vv, color=GREEN, lw=2.4, zorder=3)
    ax.fill_between(tt, vv, color=GREEN_MID, alpha=0.45, zorder=1)
    ax.annotate("", xy=(6, 12), xytext=(0, 12),
                arrowprops=dict(arrowstyle="<->", color=BLUE, lw=1.4))
    ax.text(3, 12.6, "acceleration = gradient = Δv / Δt", ha="center", fontsize=8.6, color=BLUE)
    ax.text(4.0, 5.0, "area = distance travelled", ha="center", fontsize=9.0, color=SLATE)
    ax.scatter(tt, vv, color=NAVY, zorder=4, s=18)
    ax.set_xlabel("time / s", fontsize=9)
    ax.set_ylabel("velocity / m s⁻¹", fontsize=9)
    ax.set_xlim(-0.3, 9.5)
    ax.set_ylim(0, 15)
    ax.grid(color="#E2E8F0", lw=0.8)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.tick_params(labelsize=8.4)
    save(fig, "ch02_vt_graph.svg")


def ch02_st_graph():
    fig, ax = plt.subplots(figsize=(6.2, 2.6))
    tt = np.linspace(0, 10, 200)
    s1 = 0.8 * tt ** 2
    ax.plot(tt, s1, color=GREEN, lw=2.4, label="accelerating")
    ax.plot(tt, 4 * tt, color=BLUE, lw=2.0, ls="--", label="steady speed")
    ax.plot(tt, np.full_like(tt, 30), color=PURPLE, lw=2.0, ls=":", label="at rest")
    ax.set_xlabel("time / s", fontsize=9)
    ax.set_ylabel("displacement / m", fontsize=9)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.legend(fontsize=7.6, frameon=False, loc="upper left")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.tick_params(labelsize=8.4)
    ax.text(6.4, 40, "gradient = velocity", fontsize=8.6, color=SLATE)
    save(fig, "ch02_st_graph.svg")


def ch02_free_fall():
    w, h = 560, 300
    b = [t(280, 20, "FREE FALL — ONE ACCELERATION, TWO DIRECTIONS OF SIGN", size=11, weight="bold")]
    b.append(line(280, 44, 280, 240, color=SLATE, sw=1.4, dash="5 3"))
    # up
    b.append(dot(280, 250, 5, GREEN))
    for i, y in enumerate((214, 178, 142, 106, 70)):
        b.append(f'<circle cx="280" cy="{y}" r="4" fill="{GREEN}" opacity="{0.85 - i*0.12}"/>')
    b.append(arrow2(310, 246, 310, 70, color=GREEN, sw=2.0))
    b.append(t(340, 150, "thrown up", size=9.2, weight="bold", fill=GREEN))
    b.append(t(340, 166, "a = −g", size=9.2, fill=GREEN))
    # down
    b.append(dot(200, 70, 5, BLUE))
    for i, y in enumerate((106, 142, 178, 214, 250)):
        b.append(f'<circle cx="200" cy="{y}" r="4" fill="{BLUE}" opacity="{0.85 - i*0.12}"/>')
    b.append(arrow2(170, 74, 170, 250, color=BLUE, sw=2.0))
    b.append(t(96, 150, "dropped", size=9.2, weight="bold", fill=BLUE))
    b.append(t(96, 166, "a = +g", size=9.2, fill=BLUE))

    b.append(rect(8, 258, 544, 34, GREEN_LIGHT, GREEN, 6, 1.1))
    b.append(t(280, 274, "same g = 10 m s⁻² downward; only the sign you give it changes", size=9.0, fill=NAVY))
    b.append(t(280, 288, "at the top of the flight v = 0 but a is still g — the ball is never weightless",
               size=8.4, fill=MUTED))
    write_svg("ch02_free_fall.svg", svg(w, h, "\n".join(b)))


def ch02_projectile():
    fig, ax = plt.subplots(figsize=(6.2, 2.8))
    u, ang = 20, np.radians(50)
    g = 10
    tmax = 2 * u * np.sin(ang) / g
    tt = np.linspace(0, tmax, 200)
    x = u * np.cos(ang) * tt
    y = u * np.sin(ang) * tt - 0.5 * g * tt ** 2
    ax.plot(x, y, color=GREEN, lw=2.4)
    ax.axhline(0, color=SLATE, lw=1.0)
    ax.annotate("", xy=(x[6], y[6]), xytext=(0, 0),
                arrowprops=dict(arrowstyle="-|>", color=BLUE, lw=1.5))
    ax.text(3.0, 6.4, "u", color=BLUE, fontsize=9.6, fontweight="bold")
    ax.plot([x.max()], [0], "o", color=RED, ms=5)
    ax.annotate("range", xy=(x.max() / 2, 0), xytext=(x.max() / 2, 2.2),
                ha="center", fontsize=8.4, color=RED,
                arrowprops=dict(arrowstyle="<->", color=RED, lw=1.0))
    ax.annotate("", xy=(x[-8], 0), xytext=(x[-8], y[-8]),
                arrowprops=dict(arrowstyle="-|>", color=PURPLE, lw=1.4))
    ax.text(x[-8] + 0.8, y[-8] / 2, "vertical velocity\nfalls as −gt", fontsize=7.8, color=PURPLE)
    ax.set_xlabel("horizontal distance / m", fontsize=9)
    ax.set_ylabel("height / m", fontsize=9)
    ax.set_ylim(0, max(y) * 1.25)
    ax.grid(color="#E2E8F0", lw=0.7)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.tick_params(labelsize=8.4)
    ax.text(0.4, max(y) * 0.86, "horizontal velocity stays u cos θ", fontsize=8.2, color=GREEN)
    save(fig, "ch02_projectile.svg")


def recap_ch02():
    recap_card("recap_ch02.svg", "Chapter 2 recap card — motion in a straight line", [
        ("Speed and velocity", "Speed is distance ÷ time; velocity is displacement ÷ time, so it carries a "
                               "direction and can be negative. Average differs from instantaneous."),
        ("Acceleration", "a = (v − u)/t, in m s⁻². A negative a can mean slowing down or moving backwards — "
                         "the sign belongs to the direction you chose."),
        ("The three equations", "v = u + at · s = ut + ½at² · v² = u² + 2as. Use them only when a is constant, "
                                "and write down u, v, a, s, t before choosing one."),
        ("Graphs", "s–t gradient = velocity; v–t gradient = acceleration, v–t area = distance. "
                   "Free fall is a = g = 10 m s⁻² downward."),
    ])
