"""Volume 2 diagrams — lenses, instruments, colour (chapters 5 and 6)."""

from __future__ import annotations

import numpy as np

from common import (
    GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, LIGHT_BG,
    BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT,
    t, lines, rect, line, arrow2, dot, path, svg, write_svg, recap_card,
    save, plt,
)

FIGURES = ["ch05_lens_types", "ch05_lens_rays", "ch05_eye", "ch05_instruments",
           "ch06_dispersion", "ch06_colour", "ch06_spectrum",
           "recap_ch05", "recap_ch06", "cover_banner", "utme_weight"]


def _lens(cx, cy, half, bulge, colour=BLUE, convex=True, sw=2.2):
    """A thin lens drawn as two arcs; returns SVG markup."""
    a = bulge if convex else -bulge
    left = (f'M {cx - a} {cy - half} Q {cx - a * 2.2} {cy} {cx - a} {cy + half} '
            f'Q {cx + a * 0.2} {cy} {cx - a} {cy - half} Z')
    right = (f'M {cx + a} {cy - half} Q {cx + a * 2.2} {cy} {cx + a} {cy + half} '
             f'Q {cx - a * 0.2} {cy} {cx + a} {cy - half} Z')
    return (f'<path d="{left}" fill="#DBEAFE" stroke="{colour}" stroke-width="{sw}"/>'
            f'<path d="{right}" fill="#DBEAFE" stroke="{colour}" stroke-width="{sw}"/>')


# ── 5.1 the two lenses ──────────────────────────────────────────────────────
def _lens_shape(cx, cy, half, bulge, colour=BLUE, convex=True, sw=2.0):
    """A biconvex or biconcave lens, drawn symmetrically about cx."""
    if convex:
        d = (f'M {cx - bulge} {cy - half} Q {cx + bulge * 1.9} {cy} {cx - bulge} {cy + half} '
             f'Q {cx - bulge * 1.9} {cy} {cx - bulge} {cy - half} Z')
        return f'<path d="{d}" fill="#DBEAFE" stroke="{colour}" stroke-width="{sw}"/>'
    d = (f'M {cx - bulge} {cy - half} Q {cx + bulge * 0.9} {cy} {cx - bulge} {cy + half} '
         f'Q {cx - bulge * 2.6} {cy} {cx - bulge} {cy - half} Z')
    return f'<path d="{d}" fill="#DBEAFE" stroke="{colour}" stroke-width="{sw}"/>'


def ch05_lens_types():
    w, h = 560, 262
    b = [t(280, 20, "CONVEX CONVERGES, CONCAVE DIVERGES", size=10.6, weight="bold")]
    for k, (title, convex, col, note) in enumerate((
        ("Convex — converging", True, GREEN, "thick in the middle; can form a real image"),
        ("Concave — diverging", False, AMBER, "thin in the middle; only ever a virtual image"),
    )):
        x0 = 20 + k * 272
        b.append(rect(x0, 32, 248, 172, "#FFFFFF", col, 7, 1.3))
        b.append(t(x0 + 124, 50, title, size=9.2, weight="bold", fill=col))
        cy = 114
        cxp = x0 + 124
        b.append(line(x0 + 14, cy, x0 + 234, cy, color=MUTED, sw=1.0, dash="4 3"))
        b.append(_lens_shape(cxp, cy, 44, 10, colour=col, convex=convex))
        fL, fR = cxp - 56, cxp + 56
        for fx in (fL, fR):
            b.append(dot(fx, cy, 2.6, col))
        b.append(t(fL, cy + 18, "F₁", size=8.6, weight="bold", fill=col))
        b.append(t(fR, cy + 18, "F₂", size=8.6, weight="bold", fill=col))
        for dy in (-26, -9, 9, 26):
            b.append(arrow2(x0 + 20, cy + dy, cxp - 16, cy + dy, color=col, sw=1.1, size=5))
            if convex:
                b.append(arrow2(cxp + 16, cy + dy, x0 + 228, cy - dy * 0.55, color=col, sw=1.0, size=5))
            else:
                b.append(arrow2(cxp + 16, cy + dy, x0 + 228, cy + dy * 1.9, color=col, sw=1.0, size=5))
        b.append(t(x0 + 124, 190, note, size=7.8, fill=MUTED))

    b.append(rect(14, 210, 532, 42, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(280, 228, "1/f = 1/u + 1/v      ·      m = v / u      ·      P = 1 / f  in dioptres (f in metres)",
               size=9.6, weight="bold", fill=GREEN))
    b.append(t(280, 245, "f is positive for a converging lens and negative for a diverging one; u is always positive.",
               size=8.2, fill=SLATE))
    write_svg("ch05_lens_types.svg", svg(w, h, "\n".join(b)))


# ── 5.2 ray construction through a convex lens ──────────────────────────────
def ch05_lens_rays():
    w, h = 560, 300
    b = [t(280, 20, "A CONVEX LENS: THREE RAYS, ONE IMAGE", size=10.6, weight="bold")]
    cy, cx = 132, 268
    f = 70
    b.append(line(30, cy, 530, cy, color=MUTED, sw=1.0, dash="4 3"))
    b.append(_lens_shape(cx, cy, 74, 11, colour=BLUE, convex=True))
    for x, lab in ((cx - f, "F₁"), (cx + f, "F₂")):
        b.append(dot(x, cy, 2.8, NAVY))
        b.append(t(x, cy + 16, lab, size=8.6, weight="bold", fill=NAVY))

    u = 120
    ox, oh = cx - u, 58
    b.append(arrow2(ox, cy, ox, cy - oh, color=GREEN, sw=2.4, size=8))
    b.append(t(ox - 2, cy - oh - 8, "object", size=8.2, fill=GREEN))

    v = 1 / (1 / f - 1 / u)
    ix = cx + v
    ih = oh * v / u
    tipx, tipy = ix, cy + ih

    # ray 1 — parallel to the axis, then through F₂
    b.append(arrow2(ox, cy - oh, cx, cy - oh, color=GREEN, sw=1.2, size=6))
    b.append(arrow2(cx, cy - oh, tipx, tipy, color=GREEN, sw=1.2, size=6))
    # ray 2 — straight through the centre
    b.append(arrow2(ox, cy - oh, tipx, tipy, color=AMBER, sw=1.1, size=5))
    # ray 3 — through F₁, parallel after the lens
    y3 = cy + (cx - (cx - f)) * oh / (cx - f - ox) * -1
    b.append(arrow2(ox, cy - oh, cx, cy + oh * f / u, color=PURPLE, sw=1.1, size=5))
    b.append(arrow2(cx, cy + oh * f / u, 520, cy + oh * f / u, color=PURPLE, sw=1.1, size=5))

    b.append(arrow2(ix, cy, tipx, tipy, color=RED, sw=2.2, size=8))
    b.append(t(ix - 12, tipy + 16, "real, inverted image", size=7.6, fill=RED, anchor="end"))

    b.append(t(ox + (cx - ox) / 2, cy - 8, "u", size=9, weight="bold", fill=SLATE))
    b.append(t(cx + v / 2, cy - 8, "v", size=9, weight="bold", fill=SLATE))

    b.append(rect(14, 238, 532, 50, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(280, 256, "Parallel to the axis → through F₂.   Through the centre → straight on.   "
                         "Through F₁ → parallel.",
               size=8.8, weight="bold", fill=GREEN))
    b.append(t(280, 272, "Object beyond 2F: real, inverted, diminished. Between F and 2F: real, enlarged.",
               size=8.2, fill=SLATE))
    b.append(t(280, 284, "Inside F: virtual, upright, magnified — a magnifying glass.", size=8.2, fill=SLATE))
    write_svg("ch05_lens_rays.svg", svg(w, h, "\n".join(b)))


# ── 5.3 the eye ─────────────────────────────────────────────────────────────
def ch05_eye():
    w, h = 560, 312
    b = [t(280, 20, "THE EYE — A CONVERGING SYSTEM THAT FOCUSES ON THE RETINA", size=10.6, weight="bold")]

    # eyeball
    b.append('<ellipse cx="152" cy="150" rx="106" ry="84" fill="#F8FAFC" stroke="#334155" stroke-width="1.8"/>')
    b.append('<ellipse cx="152" cy="150" rx="98" ry="76" fill="#FFFFFF" stroke="none"/>')
    b.append('<path d="M 54 120 Q 36 150 54 180" fill="#DBEAFE" stroke="#2563EB" stroke-width="2"/>')
    b.append(_lens_shape(80, 150, 24, 6, colour="#0EA5E9", convex=True))
    b.append('<line x1="64" y1="120" x2="64" y2="140" stroke="#7C3AED" stroke-width="3.4"/>')
    b.append('<line x1="64" y1="160" x2="64" y2="180" stroke="#7C3AED" stroke-width="3.4"/>')
    b.append('<path d="M 226 98 A 102 80 0 0 1 226 202" fill="none" stroke="#DC2626" stroke-width="4"/>')

    # rays to a focus on the retina
    b.append(arrow2(14, 112, 74, 147, color=GREEN, sw=1.1, size=5))
    b.append(arrow2(14, 188, 74, 153, color=GREEN, sw=1.1, size=5))
    b.append(arrow2(86, 147, 224, 152, color=GREEN, sw=1.0, size=5))
    b.append(arrow2(86, 153, 224, 152, color=GREEN, sw=1.0, size=5))

    # labels, kept clear of each other and of the drawing
    b.append(t(36, 108, "cornea", size=7.6, fill=SLATE, anchor="end"))
    b.append(t(96, 132, "lens", size=7.6, fill=SLATE, anchor="start"))
    b.append(t(78, 196, "iris", size=7.6, fill=SLATE, anchor="end"))
    b.append(t(232, 90, "retina", size=7.6, fill=SLATE, anchor="start"))
    b.append(t(176, 246, "optic nerve", size=7.6, fill=SLATE))
    b.append(t(152, 292, "the cornea does most of the refraction; the lens only fine-tunes the focus",
               size=7.8, fill=MUTED))

    b.append(rect(286, 44, 260, 108, RED_LIGHT, RED, 7, 1.2))
    b.append(t(416, 62, "Short sight (myopia)", size=9.2, weight="bold", fill=RED))
    b.append(t(416, 80, "The image falls short of the retina, so", size=8.0, fill=SLATE))
    b.append(t(416, 93, "distant objects blur and the far point", size=8.0, fill=SLATE))
    b.append(t(416, 106, "is near. Corrected with a diverging", size=8.0, fill=SLATE))
    b.append(t(416, 119, "lens; f = − (far point).", size=8.0, fill=SLATE))
    b.append(t(416, 138, "Diverging lens, negative power.", size=8.0, weight="bold", fill=RED))

    b.append(rect(286, 162, 260, 108, BLUE_LIGHT, BLUE, 7, 1.2))
    b.append(t(416, 180, "Long sight (hypermetropia)", size=9.2, weight="bold", fill=BLUE))
    b.append(t(416, 198, "The image would fall behind the retina,", size=8.0, fill=SLATE))
    b.append(t(416, 211, "so near objects blur and the near", size=8.0, fill=SLATE))
    b.append(t(416, 224, "point is too far. Corrected with a", size=8.0, fill=SLATE))
    b.append(t(416, 237, "converging lens; presbyopia is the", size=8.0, fill=SLATE))
    b.append(t(416, 250, "same fault, from age.", size=8.0, fill=SLATE))
    b.append(t(416, 264, "Near point of a normal eye: 25 cm.", size=8.0, weight="bold", fill=BLUE))
    write_svg("ch05_eye.svg", svg(w, h, "\n".join(b)))


# ── 5.4 microscope and telescope ────────────────────────────────────────────
def ch05_instruments():
    w, h = 560, 268
    b = [t(280, 20, "TWO LENSES, TWO PURPOSES", size=10.6, weight="bold")]
    for k, (title, col, formula, lines_, note) in enumerate((
        ("Compound microscope", GREEN, "M = m₀ × m_e",
         "the objective makes a magnified real image; the eyepiece then",
         "magnifies it again, so the final image is virtual and very large"),
        ("Astronomical telescope", BLUE, "M = f₀ / f_e",
         "the objective makes a small real image of a distant object; the",
         "eyepiece enlarges it, so a long f₀ and a short f_e magnify most"),
    )):
        x0 = 20 + k * 272
        b.append(rect(x0, 32, 248, 200, "#FFFFFF", col, 7, 1.3))
        b.append(t(x0 + 124, 50, title, size=9.2, weight="bold", fill=col))
        cy = 104
        b.append(line(x0 + 14, cy, x0 + 234, cy, color=MUTED, sw=1.0, dash="4 3"))
        if k == 0:
            b.append(_lens_shape(x0 + 96, cy, 30, 7, colour=col, convex=True))
            b.append(_lens_shape(x0 + 184, cy, 20, 5, colour=col, convex=True))
            b.append(t(x0 + 96, cy + 46, "objective", size=7.4, fill=MUTED))
            b.append(t(x0 + 184, cy + 36, "eyepiece", size=7.4, fill=MUTED))
            b.append(arrow2(x0 + 16, cy + 20, x0 + 90, cy + 2, color=col, sw=1.1, size=5))
            b.append(arrow2(x0 + 102, cy - 2, x0 + 178, cy - 8, color=col, sw=1.1, size=5))
            b.append(arrow2(x0 + 190, cy - 8, x0 + 232, cy - 26, color=col, sw=1.1, size=5))
        else:
            b.append(_lens_shape(x0 + 80, cy, 38, 9, colour=col, convex=True))
            b.append(_lens_shape(x0 + 178, cy, 17, 4, colour=col, convex=True))
            b.append(t(x0 + 80, cy + 54, "objective, long focus", size=7.4, fill=MUTED))
            b.append(t(x0 + 178, cy + 33, "eyepiece, short focus", size=7.4, fill=MUTED))
            b.append(arrow2(x0 + 16, cy + 24, x0 + 74, cy + 2, color=col, sw=1.1, size=5))
            b.append(arrow2(x0 + 86, cy - 2, x0 + 172, cy - 6, color=col, sw=1.1, size=5))
            b.append(arrow2(x0 + 184, cy - 5, x0 + 232, cy - 16, color=col, sw=1.1, size=5))
        b.append(t(x0 + 124, 172, formula, size=10.4, weight="bold", fill=col))
        b.append(t(x0 + 124, 194, lines_, size=7.0, fill=MUTED))
        b.append(t(x0 + 124, 206, note, size=7.0, fill=MUTED))

    b.append(rect(14, 240, 532, 20, LIGHT_BG, BORDER, 6, 1.0))
    b.append(t(280, 254, "Both use a real image from the objective and a virtual image from the eyepiece; "
                         "the camera forms only the first.", size=8.2, fill=SLATE))
    write_svg("ch05_instruments.svg", svg(w, h, "\n".join(b)))


# ── 6.1 dispersion ──────────────────────────────────────────────────────────
def ch06_dispersion():
    w, h = 560, 296
    b = [t(280, 20, "DISPERSION: ONE BEAM IN, SEVEN COLOURS OUT", size=10.6, weight="bold")]
    tri = [(96, 196), (236, 196), (166, 78)]
    b.append(f'<polygon points="{" ".join(f"{x},{y}" for x, y in tri)}" fill="#EFF6FF" stroke="#2563EB" stroke-width="2"/>')
    b.append(arrow2(18, 138, 126, 106, color="#0F172A", sw=2.2, size=7))
    b.append(t(20, 126, "white light", size=7.8, fill=SLATE, anchor="start"))
    b.append(arrow2(126, 106, 208, 166, color="#475569", sw=1.4, size=5))
    band = [("#DC2626", "red", 0), ("#EA580C", "orange", 1), ("#EAB308", "yellow", 2),
            ("#16A34A", "green", 3), ("#2563EB", "blue", 4), ("#4338CA", "indigo", 5),
            ("#7C3AED", "violet", 6)]
    for col, name, i in band:
        y2 = 178 + i * 11
        b.append(arrow2(208, 166, 396, y2, color=col, sw=1.9, size=6))
        b.append(t(406, y2 + 3, name, size=7.8, fill=col, anchor="start"))
    b.append(t(20, 272, "Red is deviated least and violet most: the refractive index rises with frequency.",
               size=8.6, fill=SLATE, anchor="start"))
    write_svg("ch06_dispersion.svg", svg(w, h, "\n".join(b)))


# ── 6.2 colour ──────────────────────────────────────────────────────────────
def ch06_colour():
    w, h = 560, 264
    b = [t(280, 20, "COLOUR: ADD LIGHT, SUBTRACT PIGMENT", size=10.6, weight="bold")]
    for k, (title, cols, note) in enumerate((
        ("Additive — light", (("#DC2626", 30), ("#16A34A", 90), ("#2563EB", 210)), "R + G + B = white"),
        ("Subtractive — pigment", (("#F59E0B", 30), ("#0891B2", 90), ("#DB2777", 210)), "C + M + Y = black"),
    )):
        cx0 = 120 + k * 300
        b.append(t(cx0, 44, title, size=9.2, weight="bold", fill=GREEN if k == 0 else AMBER))
        b.append(f'<circle cx="{cx0-26}" cy="112" r="42" fill="{cols[0][0]}" opacity="0.62"/>')
        b.append(f'<circle cx="{cx0+26}" cy="112" r="42" fill="{cols[1][0]}" opacity="0.62"/>')
        b.append(f'<circle cx="{cx0}" cy="152" r="42" fill="{cols[2][0]}" opacity="0.62"/>')
        b.append(t(cx0, 214, note, size=8.4, fill=SLATE))

    b.append(rect(14, 228, 532, 30, GREEN_LIGHT, GREEN, 7, 1.1))
    b.append(t(280, 247, "A red object reflects red and absorbs the rest, so under green light it looks black. "
                         "A filter transmits only its own colour.", size=8.4, fill=SLATE))
    write_svg("ch06_colour.svg", svg(w, h, "\n".join(b)))


# ── 6.3 the electromagnetic spectrum ────────────────────────────────────────
def ch06_spectrum():
    fig, ax = plt.subplots(figsize=(6.0, 1.9))
    bands = [("radio", "> 0.1 m", "#7C3AED"), ("micro", "0.1 m – 1 mm", "#4338CA"),
             ("infra", "1 mm – 700 nm", "#DC2626"), ("visible", "700 – 400 nm", "#EAB308"),
             ("UV", "400 – 10 nm", "#16A34A"), ("X-ray", "10 – 0.01 nm", "#0891B2"),
             ("gamma", "< 0.01 nm", "#0F172A")]
    for i, (name, lam, col) in enumerate(bands):
        ax.add_patch(plt.Rectangle((i, 0), 1, 1, facecolor=col, alpha=0.85, edgecolor="white", lw=1.2))
        ax.text(i + 0.5, 0.5, name, color="white", ha="center", va="center", fontsize=7.4, weight="bold")
        ax.text(i + 0.5, -0.20, lam, color=SLATE, ha="center", va="center", fontsize=5.6)
    ax.set_xlim(0, len(bands))
    ax.set_ylim(-0.45, 1.15)
    ax.axis("off")
    ax.annotate("", xy=(len(bands), 1.12), xytext=(0, 1.12),
                arrowprops=dict(arrowstyle="->", color=NAVY, lw=1.2))
    ax.text(len(bands) / 2, 1.24, "increasing frequency and energy →", ha="center", fontsize=7.0, color=NAVY)
    ax.text(0.03, 1.24, "long wavelength", fontsize=6.4, color=MUTED, ha="left", va="center")
    ax.set_title("THE ELECTROMAGNETIC SPECTRUM — ALL OF IT TRAVELS AT 3.0 × 10⁸ m s⁻¹ IN A VACUUM",
                 fontsize=8.4, color=NAVY, weight="bold", pad=16)
    save(fig, "ch06_spectrum.svg")


# ── cover and weight chart ──────────────────────────────────────────────────
def cover_banner():
    w, h = 760, 148
    b = [rect(0, 0, w, h, "#0B2036", "#0B2036", 10, 1.0)]
    b.append(t(380, 34, "WAVES · SOUND · LIGHT", size=17, weight="bold", fill="#FFFFFF"))
    b.append(line(120, 46, 640, 46, color="#34D399", sw=1.2))
    chips = ["Wave equation", "Sound and resonance", "Mirrors", "Refraction and TIR",
             "Lenses and the eye", "Colour and the spectrum"]
    xs = [70, 210, 350, 490, 620, 700]
    for i, c in enumerate(chips):
        pass
    cols = 3
    for i, c in enumerate(chips):
        r, k = divmod(i, cols)
        x = 40 + k * 240
        y = 66 + r * 38
        b.append(rect(x, y, 220, 28, "#12314F", "#34D399", 6, 1.0))
        b.append(t(x + 110, y + 18, c, size=9.2, fill="#E2E8F0"))
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg="#0B2036"))


def utme_weight():
    fig, ax = plt.subplots(figsize=(6.0, 2.5))
    chapters = ["1 Waves", "2 Sound", "3 Reflection", "4 Refraction", "5 Lenses", "6 Colour"]
    weights = [3, 4, 3, 4, 4, 3]
    cols = [GREEN if v >= 4 else "#34D399" for v in weights]
    bars = ax.barh(chapters[::-1], weights[::-1], color=cols[::-1], height=0.62)
    for bar, v in zip(bars, weights[::-1]):
        ax.text(v + 0.08, bar.get_y() + bar.get_height() / 2, f"{v}", va="center", fontsize=8, color=NAVY)
    ax.set_xlim(0, 5.2)
    ax.set_xlabel("average questions in a UTME paper")
    ax.set_title("WHERE THE WAVES, SOUND AND LIGHT MARKS SIT", fontsize=9.2, color=NAVY, weight="bold")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(axis="x", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "utme_weight.svg")


# ── recap cards ─────────────────────────────────────────────────────────────
def recap_ch05():
    recap_card("recap_ch05.svg", "Chapter 5 recap card — lenses and optical instruments", [
        ("The lens formula", "1/f = 1/u + 1/v and m = v/u. f is positive for a converging lens, negative for a "
                             "diverging one; power P = 1/f in dioptres."),
        ("Where the image is", "Object beyond 2F: real, inverted, diminished. At 2F: same size. Between F and 2F: "
                               "real, enlarged. Inside F: virtual, upright, magnified."),
        ("The eye", "The cornea does most of the refraction and the lens fine-tunes it. Short sight needs a "
                    "diverging lens, long sight a converging one, and the near point is 25 cm."),
        ("Instruments", "Microscope: short f₀ and short f_e, M = m₀ × m_e. Telescope: long f₀ and short f_e, "
                        "M = f₀/f_e. The camera forms one real image on film or sensor."),
    ])


def recap_ch06():
    recap_card("recap_ch06.svg", "Chapter 6 recap card — colour and the spectrum", [
        ("Dispersion", "Refractive index rises with frequency, so violet bends more than red. A prism spreads "
                       "white light into the spectrum; a second prism recombines it."),
        ("Colour", "An object's colour is the light it reflects. Additive primaries are red, green and blue; "
                   "subtractive primaries are cyan, magenta and yellow."),
        ("The spectrum", "Radio, microwave, infrared, visible, ultraviolet, X-ray, gamma — one family, all at "
                         "3.0 × 10⁸ m s⁻¹ in a vacuum, differing only in frequency."),
        ("Photometry and wave optics", "Illuminance falls as 1/d². Light interferes only with light of the same "
                                       "frequency, and polarisation proves light is transverse."),
    ])
