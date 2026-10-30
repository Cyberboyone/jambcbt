"""Volume 2 diagrams — reflection and refraction (chapters 3 and 4)."""

from __future__ import annotations

import numpy as np

from common import (
    GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, LIGHT_BG,
    BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT,
    t, lines, rect, line, arrow2, dot, path, svg, write_svg, recap_card,
)

FIGURES = ["ch03_plane_mirror", "ch03_mirror_types", "ch03_mirror_rays",
           "ch04_refraction", "ch04_tir", "ch04_prism",
           "recap_ch03", "recap_ch04"]


def _mirror_arc(cx, top, bottom, sag, colour=BLUE, sw=2.6, flip=1):
    """A concave (flip=1) or convex (flip=-1) mirror whose pole sits on cx."""
    mid = (top + bottom) / 2
    half = (bottom - top) / 2
    pts = []
    for y in np.linspace(top, bottom, 60):
        x = cx - flip * sag * ((y - mid) / half) ** 2
        pts.append((x, y))
    d = "M " + " L ".join(f"{x:.1f},{y:.1f}" for x, y in pts)
    return path(d, stroke=colour, sw=sw)


# ── 3.1 plane mirror ────────────────────────────────────────────────────────
def ch03_plane_mirror():
    w, h = 560, 300
    b = [t(280, 20, "A PLANE MIRROR: THE IMAGE IS AS FAR BEHIND AS THE OBJECT IS IN FRONT", size=10.2, weight="bold")]
    mx = 300
    b.append(line(mx, 42, mx, 224, color=BLUE, sw=2.6))
    b.append(t(mx + 8, 54, "mirror", size=8.4, fill=BLUE, anchor="start"))

    # object and its virtual image, mirror line between them
    oy, oh = 170, 62
    ox, ix = 150, 2 * mx - 150
    b.append(arrow2(ox, oy, ox, oy - oh, color=GREEN, sw=2.4, size=8))
    b.append(t(ox, oy + 16, "object", size=8.6, fill=GREEN))
    b.append(arrow2(ix, oy, ix, oy - oh, color=AMBER, sw=2.0, size=8))
    b.append(t(ix, oy + 16, "image (virtual)", size=8.6, fill=AMBER))
    b.append(line(ox, oy, ix, oy, color=MUTED, sw=0.9, dash="4 3"))

    b.append(t((ox + mx) / 2, oy - 8, "u", size=9.2, weight="bold", fill=SLATE))
    b.append(t((ix + mx) / 2, oy - 8, "v = u", size=9.2, weight="bold", fill=SLATE))

    # two rays from the object tip, reflected back to the viewer on the left
    for my, ty in ((74, 40), (118, 92)):
        b.append(arrow2(ox, oy - oh, mx, my, color=GREEN, sw=1.3, size=6))
        b.append(arrow2(mx, my, 40, ty, color=GREEN, sw=1.2, size=6))
        b.append(line(mx, my, ix, oy - oh, color=GREEN, sw=1.0, dash="4 3"))
    b.append(t(40, 262, "the reflected rays diverge, and the eye traces them back to the image behind the mirror",
               size=7.8, fill=MUTED, anchor="start"))

    b.append(rect(14, 272, 532, 22, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(280, 287, "Same size, same way up, laterally inverted, as far behind as in front; i = r, "
                         "measured from the normal.", size=8.4, fill=SLATE))
    write_svg("ch03_plane_mirror.svg", svg(w, h, "\n".join(b)))


# ── 3.2 the two curved mirrors ──────────────────────────────────────────────
def ch03_mirror_types():
    w, h = 560, 264
    b = [t(280, 20, "CONCAVE CONVERGES, CONVEX DIVERGES", size=10.6, weight="bold")]

    for k, (title, col, note) in enumerate((
        ("Concave — converging", GREEN, "torches, shaving mirrors, reflecting telescopes"),
        ("Convex — diverging", AMBER, "driving mirrors, shop security mirrors"),
    )):
        x0 = 20 + k * 272
        b.append(rect(x0, 32, 248, 178, "#FFFFFF", col, 7, 1.3))
        b.append(t(x0 + 124, 50, title, size=9.2, weight="bold", fill=col))
        cy = 116
        xp = x0 + (186 if k == 0 else 148)     # the pole
        b.append(line(x0 + 14, cy, x0 + 232, cy, color=MUTED, sw=1.0, dash="4 3"))
        if k == 0:
            # concave: the surface opens towards the incoming light (left)
            b.append(_mirror_arc(xp, 64, 168, 26, colour=col, flip=1))
            F, C = xp - 58, xp - 116
        else:
            # convex: the surface bulges towards the light; F and C are behind it
            b.append(_mirror_arc(xp, 64, 168, -26, colour=col, flip=1))
            F, C = xp + 40, xp + 80
        for x, lab in ((F, "F"), (C, "C")):
            b.append(dot(x, cy, 2.6, col))
            b.append(t(x, cy + 22, lab, size=8.6, weight="bold", fill=col))
        b.append(t(xp, cy + 22, "P", size=8.4, fill=MUTED))

        for dy in (-30, -10, 10, 30):
            y_end = cy + dy
            b.append(arrow2(x0 + 20, y_end, xp - 20, y_end, color=col, sw=1.1, size=5))
            if k == 0:
                # reflects back, converging on F to the left
                b.append(arrow2(xp - 20, y_end, F + 6, cy + dy * 0.05, color=col, sw=1.0, size=5))
            else:
                # reflects back, diverging as if from F behind the mirror
                b.append(arrow2(xp - 20, y_end, x0 + 24, cy + dy * 2.1, color=col, sw=1.0, size=5))
        b.append(t(x0 + 124, 198, note, size=7.8, fill=MUTED))

    b.append(rect(14, 218, 532, 38, LIGHT_BG, BORDER, 7, 1.1))
    b.append(t(280, 234, "F is halfway between P and C, so f = r / 2: positive for a concave mirror, "
                         "negative for a convex one.", size=8.4, fill=SLATE))
    b.append(t(280, 248, "A concave mirror can throw a real image on a screen; a convex one only ever gives "
                         "a virtual, diminished image.", size=8.4, fill=SLATE))
    write_svg("ch03_mirror_types.svg", svg(w, h, "\n".join(b)))


# ── 3.3 ray construction for a concave mirror ───────────────────────────────
def ch03_mirror_rays():
    w, h = 560, 300
    b = [t(280, 20, "THREE RAYS LOCATE THE IMAGE — AND THE MIRROR FORMULA CONFIRMS IT", size=10.2, weight="bold")]

    P, cy, f = 470, 150, 84
    F, C = P - f, P - 2 * f
    b.append(_mirror_arc(P, 46, 254, 16, colour=BLUE, flip=1))
    b.append(line(28, cy, 516, cy, color=MUTED, sw=1.0, dash="4 3"))
    for x, lab in ((F, "F"), (C, "C")):
        b.append(dot(x, cy, 2.8, NAVY))
        b.append(t(x, cy + 16, lab, size=8.8, weight="bold", fill=NAVY))
    b.append(t(P, cy + 16, "P", size=8.8, weight="bold", fill=MUTED))

    ox, oh = 150, 76
    top = cy - oh
    b.append(arrow2(ox, cy, ox, top, color=GREEN, sw=2.4, size=8))
    b.append(t(ox - 4, top - 8, "object", size=8.2, fill=GREEN))

    u = P - ox
    v = 1 / (1 / f - 1 / u)
    ix = P - v
    iy = cy + oh * (v / u)
    y2 = cy + (P - F) * oh / (F - ox)          # where the ray through F strikes the mirror

    # ray 1 — parallel in, through F on the way out
    b.append(arrow2(ox, top, P, top, color=GREEN, sw=1.3, size=6))
    b.append(arrow2(P, top, ix, iy, color=GREEN, sw=1.3, size=6))
    # ray 2 — through F in, parallel out
    b.append(arrow2(ox, top, F, cy, color=AMBER, sw=1.1, size=5))
    b.append(arrow2(F, cy, P, y2, color=AMBER, sw=1.1, size=5))
    b.append(arrow2(P, y2, ix - 34, y2, color=AMBER, sw=1.1, size=5))
    # ray 3 — to the pole, reflected at an equal angle
    b.append(arrow2(ox, top, P, cy, color=PURPLE, sw=1.1, size=5))
    xr = ix - 40
    b.append(arrow2(P, cy, xr, cy + (P - xr) * oh / (P - ox), color=PURPLE, sw=1.1, size=5))

    b.append(arrow2(ix, cy, ix, iy, color=RED, sw=2.2, size=8))
    b.append(t(ix - 8, iy + 40, "image — real, inverted,", size=7.6, fill=RED, anchor="end"))
    b.append(t(ix - 8, iy + 51, "diminished", size=7.6, fill=RED, anchor="end"))

    b.append(t((ox + C) / 2, cy - 8, "u", size=9, weight="bold", fill=SLATE))
    b.append(t((C + F) / 2, cy - 8, "2f", size=8.4, fill=SLATE))
    b.append(t((F + P) / 2, cy - 8, "f", size=8.8, weight="bold", fill=SLATE))

    b.append(rect(14, 258, 532, 36, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(280, 275, "1/f = 1/u + 1/v      ·      m = v / u = image height / object height",
               size=10.2, weight="bold", fill=GREEN))
    b.append(t(280, 289, "An object beyond C gives a real, inverted, diminished image between C and F — "
                         "the layout a reflecting telescope uses.", size=7.8, fill=SLATE))
    write_svg("ch03_mirror_rays.svg", svg(w, h, "\n".join(b)))


# ── 4.1 refraction at a boundary ────────────────────────────────────────────
def ch04_refraction():
    w, h = 560, 286
    b = [t(280, 20, "REFRACTION: THE RAY BENDS BECAUSE THE SPEED CHANGES", size=10.6, weight="bold")]
    yb = 148
    b.append(rect(14, 32, 258, yb - 32, "#FFFFFF", BORDER, 7, 1.0))
    b.append(rect(14, yb, 258, 86, "#DBEAFE", BLUE, 7, 1.2))
    b.append(t(143, 46, "air", size=8.6, fill=MUTED))
    b.append(t(143, 228, "glass (denser, slower)", size=8.6, fill=BLUE))
    b.append(line(14, yb, 272, yb, color=SLATE, sw=1.6))
    nx = 130
    b.append(line(nx, 52, nx, 216, color=MUTED, sw=1.0, dash="4 3"))
    b.append(t(nx + 6, 60, "normal", size=8, fill=MUTED, anchor="start"))
    # incident at 50°, refracted at ~30°
    b.append(arrow2(nx - 60, 62, nx, yb, color=GREEN, sw=1.8, size=7))
    b.append(arrow2(nx, yb, nx + 46, 208, color=BLUE, sw=1.8, size=7))
    b.append(t(nx - 40, 96, "i", size=9.4, weight="bold", fill=GREEN))
    b.append(t(nx + 20, 186, "r", size=9.4, weight="bold", fill=BLUE))

    b.append(rect(286, 32, 258, 236, LIGHT_BG, BORDER, 7, 1.2))
    b.append(t(415, 52, "The two laws", size=9.6, weight="bold", fill=NAVY))
    b.append(t(415, 74, "1. The incident ray, the normal and the", size=8.6, fill=SLATE))
    b.append(t(415, 88, "refracted ray lie in one plane.", size=8.6, fill=SLATE))
    b.append(t(415, 112, "2. sin i / sin r = constant = n", size=9.4, weight="bold", fill=GREEN))
    b.append(t(415, 138, "Snell's law. The constant is the", size=8.4, fill=SLATE))
    b.append(t(415, 152, "refractive index of the second medium", size=8.4, fill=SLATE))
    b.append(t(415, 166, "relative to the first.", size=8.4, fill=SLATE))
    b.append(line(300, 184, 530, 184, color=BORDER, sw=0.9))
    b.append(t(415, 202, "n = sin i / sin r = v₁ / v₂ = λ₁ / λ₂", size=9.0, weight="bold", fill=BLUE))
    b.append(t(415, 226, "Into a denser medium: r < i, the ray", size=8.4, fill=SLATE))
    b.append(t(415, 240, "bends towards the normal and slows.", size=8.4, fill=SLATE))
    b.append(t(415, 260, "Frequency is unchanged throughout.", size=8.4, fill=AMBER))
    write_svg("ch04_refraction.svg", svg(w, h, "\n".join(b)))


# ── 4.2 total internal reflection ───────────────────────────────────────────
def ch04_tir():
    w, h = 560, 300
    b = [t(280, 20, "TOTAL INTERNAL REFLECTION — DENSE MEDIUM, BEYOND THE CRITICAL ANGLE", size=10.0, weight="bold")]

    yb, ybot = 96, 226                      # glass slab between these
    b.append(rect(14, yb, 532, ybot - yb, "#DBEAFE", BLUE, 4, 1.2))
    b.append(rect(14, 62, 532, yb - 62, "#FFFFFF", BORDER, 4, 1.0))
    b.append(t(40, 84, "air", size=8.2, fill=MUTED, anchor="start"))
    b.append(t(280, ybot - 10, "glass — the light starts inside the dense medium", size=8.4, fill=BLUE))

    src = (250.0, ybot - 24)
    b.append(dot(*src, 3.2, NAVY))
    b.append(t(src[0] - 8, src[1] - 8, "source", size=7.8, fill=NAVY, anchor="end"))

    def ray(ang, col, length=150, label=""):
        th = np.radians(ang)
        return (src[0] + length * np.sin(th), src[1] - length * np.cos(th))

    # below the critical angle: refracted out, with a weak reflected ray
    x2, y2 = ray(30, GREEN)
    b.append(arrow2(src[0], src[1], x2, y2, color=GREEN, sw=1.6, size=6))
    b.append(arrow2(x2, yb, x2 + 52, yb - 34, color=GREEN, sw=1.2, size=5))
    b.append(t(x2 + 58, yb - 34, "i < c: mostly out", size=7.8, fill=GREEN, anchor="start"))

    # at the critical angle
    x3, y3 = ray(42, AMBER)
    b.append(arrow2(src[0], src[1], x3, yb, color=AMBER, sw=1.6, size=6))
    b.append(arrow2(x3, yb, x3 + 62, yb, color=AMBER, sw=1.2, size=5))
    b.append(t(x3 + 66, yb - 8, "i = c: skims the surface", size=7.8, fill=AMBER, anchor="start"))

    # beyond the critical angle: nothing gets out
    x4, y4 = ray(60, RED)
    b.append(arrow2(src[0], src[1], x4, y4, color=RED, sw=1.7, size=6))
    b.append(t(x4 + 6, y4 + 14, "i > c: all of it reflects", size=7.8, fill=RED, anchor="start"))

    b.append(rect(14, 250, 532, 40, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(280, 267, "sin c = 1 / n    —    n = 1.50 gives c = 42°", size=10.4, weight="bold", fill=GREEN))
    b.append(t(280, 283, "Fibre optics, the diamond's sparkle, the mirage and the endoscope all depend on it.",
               size=8.4, fill=SLATE))
    write_svg("ch04_tir.svg", svg(w, h, "\n".join(b)))


# ── 4.3 the prism ───────────────────────────────────────────────────────────
def ch04_prism():
    w, h = 560, 270
    b = [t(280, 20, "THE PRISM: DEVIATION AT TWO SURFACES, AND THE SPLIT OF WHITE LIGHT", size=10.6, weight="bold")]
    tri = [(150, 200), (300, 200), (218, 74)]
    b.append(f'<polygon points="{" ".join(f"{x},{y}" for x, y in tri)}" fill="#EFF6FF" stroke="#2563EB" stroke-width="2"/>')
    b.append(t(225, 216, "glass prism", size=8.4, fill=BLUE))

    # incident ray
    b.append(arrow2(70, 150, 176, 104, color=GREEN, sw=1.8, size=7))
    b.append(t(96, 116, "white light", size=8.2, fill=GREEN))
    # inside
    b.append(arrow2(176, 104, 268, 172, color=SLATE, sw=1.4, size=6))
    # emergent fan
    colours = [("red", "#DC2626", -10), ("orange", "#EA580C", -4), ("green", "#16A34A", 2),
               ("blue", "#2563EB", 9), ("violet", "#7C3AED", 16)]
    for name, col, dy in colours:
        b.append(arrow2(268, 172, 360, 186 + dy * 1.8, color=col, sw=1.6, size=6))
        b.append(t(372, 190 + dy * 1.8, name, size=7.6, fill=col, anchor="start"))

    b.append(rect(400, 44, 146, 128, LIGHT_BG, BORDER, 7, 1.1))
    b.append(t(473, 62, "Why it splits", size=9, weight="bold", fill=NAVY))
    b.append(t(473, 80, "Violet slows most, so it", size=8.2, fill=SLATE))
    b.append(t(473, 94, "bends most — the glass", size=8.2, fill=SLATE))
    b.append(t(473, 108, "has a larger n for it.", size=8.2, fill=SLATE))
    b.append(t(473, 130, "Deviation d = i₁ + i₂ − A", size=8.2, fill=GREEN))
    b.append(t(473, 152, "Dispersion needs a second", size=8.2, fill=SLATE))
    b.append(t(473, 166, "prism to recombine.", size=8.2, fill=SLATE))

    b.append(rect(14, 228, 532, 32, GREEN_LIGHT, GREEN, 7, 1.1))
    b.append(t(280, 248, "A prism is not a lens: it deviates a ray without bringing it to a focus, and the "
                         "deviation depends on the colour.", size=8.6, fill=SLATE))
    write_svg("ch04_prism.svg", svg(w, h, "\n".join(b)))


# ── recap cards ─────────────────────────────────────────────────────────────
def recap_ch03():
    recap_card("recap_ch03.svg", "Chapter 3 recap card — reflection of light", [
        ("Plane mirror", "u = v, m = 1. The image is virtual, upright, laterally inverted and as far behind "
                         "the mirror as the object is in front."),
        ("Curved mirrors", "Concave converges (f positive) and can form a real image; convex diverges "
                           "(f negative) and forms only a virtual, diminished image."),
        ("The mirror formula", "1/f = 1/u + 1/v with m = v/u. Light through C returns on itself; light parallel "
                               "to the axis reflects through F."),
        ("Uses", "Concave: torch reflector, shaving mirror, telescope objective. Convex: driving mirror, "
                 "because it always gives an upright, wide-field view."),
    ])


def recap_ch04():
    recap_card("recap_ch04.svg", "Chapter 4 recap card — refraction of light", [
        ("Snell's law", "n = sin i / sin r = v₁ / v₂. Into a denser medium the ray bends towards the normal, "
                        "slows down, and keeps its frequency."),
        ("Real and apparent depth", "n = real depth / apparent depth, and for a slab the shift is "
                                   "t(1 − 1/n) — the reason a pool looks shallower than it is."),
        ("Critical angle", "sin c = 1/n. Past c, light in a dense medium is totally internally reflected, which "
                           "is what keeps light inside an optical fibre."),
        ("The prism", "Two refractions give a deviation d = i₁ + i₂ − A and a dispersion, because n is "
                      "slightly larger for violet than for red."),
    ])
