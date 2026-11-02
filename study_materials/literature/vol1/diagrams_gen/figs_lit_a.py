"""Cover, weight chart and the Chapter 1–2 figures for Literature Volume 1."""

from __future__ import annotations

from common import (
    AMBER, BLUE, BORDER, GREEN, GREEN_LIGHT, GREEN_MID, LIGHT_BG, MUTED, NAVY,
    PURPLE, RED, SLATE, arrow, card, dot, line, lines, path, poly, rect, svg, t,
    text_width, wrap_text, write_svg,
)

W = 760


def _panel(x, y, w, h, fill="#FFFFFF", stroke=BORDER):
    return rect(x, y, w, h, fill, stroke, 8, 1.3)


# ── cover ─────────────────────────────────────────────────────────────────
def cover_banner() -> None:
    w, h = 760, 150
    b = [rect(0, 0, w, h, GREEN_LIGHT, GREEN, 10, 1.4)]
    b.append(t(24, 34, "WHO IS SPEAKING —", size=17, weight="bold", fill=NAVY, anchor="start"))
    b.append(t(24, 58, "AND WHAT IS THE WRITER DOING?", size=17, weight="bold", fill=GREEN, anchor="start"))
    b.append(t(24, 82, "Drama, prose, poetry and the literary devices that name them", size=9.8, fill=MUTED, anchor="start"))
    xs = 470
    for i, (label, col) in enumerate((("DRAMA", BLUE), ("PROSE", AMBER), ("POETRY", PURPLE))):
        x = xs + i * 92
        b.append(rect(x, 96, 84, 34, "#FFFFFF", col, 6, 1.4))
        b.append(t(x + 42, 118, label, size=10, weight="bold", fill=col))
    for i, (label, col) in enumerate((("action", BLUE), ("narration", AMBER), ("compression", PURPLE))):
        b.append(t(xs + i * 92 + 42, 92, label, size=7.6, fill=MUTED))
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg=GREEN_LIGHT))


# ── weights ───────────────────────────────────────────────────────────────
def weights() -> None:
    w, h = 760, 250
    rows = [
        ("1", "What literature is, and how the paper tests it", 4, GREEN),
        ("2", "Drama: the types and the shape of a play", 6, BLUE),
        ("3", "Drama: technique on the page and on the stage", 6, BLUE),
        ("4", "Prose: types and narrative technique", 8, AMBER),
        ("5", "Poetry: types and the reading method", 5, PURPLE),
        ("6", "Devices and unseen appreciation", 11, RED),
    ]
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="{LIGHT_BG}" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "The Forty Questions, by Chapter", size=13.5, weight="bold"))
    b.append(t(w / 2, 44, "Where a typical Literature paper spends its marks", size=9.4, fill=MUTED))
    x0, y = 40, 66
    scale = 360 / 11
    for i, (num, title, q, col) in enumerate(rows):
        yy = y + i * 28
        b.append(t(x0 - 12, yy + 11, num, size=10, weight="bold", fill=col, anchor="middle"))
        b.append(t(x0, yy + 11, title, size=9.4, fill=SLATE, anchor="start"))
        bw = q * scale
        b.append(rect(x0 + 292, yy + 1, 360, 17, "#FFFFFF", BORDER, 3, 1.0))
        b.append(rect(x0 + 292, yy + 1, bw, 17, col, col, 3, 1.0))
        b.append(t(x0 + 292 + bw + 12, yy + 13, f"{q} Qs", size=9.0, weight="bold", fill=col, anchor="start"))
    b.append(t(w / 2, h - 12, "Principles and devices carry more than the texts: sections 1–5 of the syllabus, not the reading list alone.",
               size=8.6, fill=MUTED))
    write_svg("weights.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


# ── chapter 1 ─────────────────────────────────────────────────────────────
def ch01_genres() -> None:
    w, h = 760, 330
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="#FFFFFF" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "The Three Genres — and the Question Each One Answers", size=13, weight="bold"))
    b.append(t(w / 2, 44, "A genre is not a topic; it is the way the words arrive", size=9.4, fill=MUTED))
    cols = [
        ("DRAMA", BLUE, "told in action", ["characters speak and act", "a plot on a stage", "before an audience"]),
        ("PROSE", AMBER, "told in narration", ["a narrator reports", "time can stretch or fold", "read at your own pace"]),
        ("POETRY", PURPLE, "told in compression", ["few words, much weight", "sound is part of meaning", "the line is the unit"]),
    ]
    for i, (name, col, sub, pts) in enumerate(cols):
        x = 22 + i * 242
        b.append(rect(x, 62, 232, 196, "#FFFFFF", col, 8, 1.5))
        b.append(f'<rect x="{x}" y="62" width="232" height="6" rx="3" fill="{col}"/>')
        b.append(t(x + 116, 90, name, size=13, weight="bold", fill=col))
        b.append(t(x + 116, 108, sub, size=9.2, fill=MUTED))
        for j, p in enumerate(pts):
            b.append(dot(x + 18, 132 + j * 22, 2.6, col))
            b.append(t(x + 28, 136 + j * 22, p, size=9.3, fill=SLATE, anchor="start"))
        b.append(line(x + 14, 206, x + 218, 206, BORDER, 1.0))
        b.append(t(x + 116, 224, "the question it sets", size=8.2, fill=MUTED))
        q = {"DRAMA": "Who wants what, and who stops them?",
             "PROSE": "Whose voice tells it, and what does it hide?",
             "POETRY": "What is said twice — once in words, once in sound?"}[name]
        for j, ln in enumerate(wrap_text(q, 8.8, 200)):
            b.append(t(x + 116, 240 + j * 12, ln, size=8.8, fill=slate_for(col)))
    b.append(t(w / 2, h - 14, "Every paper question begins by placing the extract: name the genre first, then answer.", size=8.8, fill=MUTED))
    write_svg("ch01_genres.svg", svg(w, h, "\n".join(b)))


def slate_for(_col):
    return SLATE


def ch01_levels() -> None:
    """Four levels of reading, as a staircase."""
    w, h = 760, 320
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="{LIGHT_BG}" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "Four Levels of Reading — the Ladder a Mark Scheme Climbs", size=13, weight="bold"))
    b.append(t(w / 2, 44, "Most candidates stop at level 2. The marks for levels 3 and 4 are the ones left on the table.", size=9.2, fill=MUTED))
    steps = [
        ("1 · LITERAL", "what happens", "Who does what, where, to whom.", GREEN),
        ("2 · FIGURATIVE", "what it suggests", "Image, symbol, comparison, tone.", BLUE),
        ("3 · STRUCTURAL", "how it is built", "Order, point of view, rhythm, contrast.", AMBER),
        ("4 · EVALUATIVE", "how well it works", "Effect on the reader; the writer's choice.", RED),
    ]
    base_y = 274
    for i, (head, sub, body, col) in enumerate(steps):
        x = 34 + i * 178
        sh = 52 + i * 40
        y = base_y - sh
        b.append(rect(x, y, 164, sh, "#FFFFFF", col, 7, 1.5))
        b.append(f'<rect x="{x}" y="{y}" width="164" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + 82, y + 24, head, size=9.6, weight="bold", fill=col))
        b.append(t(x + 82, y + 40, sub, size=8.4, fill=MUTED))
        if i == 3:
            for j, ln in enumerate(wrap_text(body, 8.2, 142)):
                b.append(t(x + 82, y + 58 + j * 11, ln, size=8.2, fill=SLATE))
    b.append(arrow(20, base_y + 8, 740, base_y + 8, MUTED, 1.6))
    b.append(t(w / 2, base_y + 26, "the answer climbs as the question climbs", size=8.4, fill=MUTED))
    write_svg("ch01_levels.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


# ── chapter 2 ─────────────────────────────────────────────────────────────
def ch02_drama_types() -> None:
    w, h = 760, 340
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="#FFFFFF" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "The Types of Drama on One Axis", size=13, weight="bold"))
    b.append(t(w / 2, 44, "Left: the hero is destroyed. Right: the hero is laughed at. Every type sits somewhere between.", size=9.2, fill=MUTED))
    b.append(rect(50, 74, 660, 8, GREEN_MID, GREEN_MID, 4, 0))
    stops = [
        ("TRAGEDY", "ends in death", RED, 0.02),
        ("TRAGICOMEDY", "both, in turn", AMBER, 0.24),
        ("MELODRAMA", "feeling over truth", PURPLE, 0.48),
        ("COMEDY", "ends in union", BLUE, 0.72),
        ("FARCE", "the body, not the mind", GREEN, 0.95),
    ]
    for name, note, col, frac in stops:
        x = 50 + frac * 660
        b.append(dot(x, 78, 7, col))
        up = name in ("TRAGEDY", "MELODRAMA", "FARCE")
        ty = 118 if up else 190
        b.append(t(x, ty - 22, name, size=9.8, weight="bold", fill=col))
        b.append(t(x, ty - 8, note, size=8.4, fill=MUTED))
    # the one-line tests
    tests = [
        ("Tragedy", "the hero falls through a flaw, and we feel pity and fear", RED),
        ("Tragicomedy", "a serious threat resolved without death", AMBER),
        ("Melodrama", "good and evil painted plainly; the plot is implausible", PURPLE),
        ("Comedy", "a confusion resolved into a marriage or a truce", BLUE),
        ("Farce", "mistaken identity, doors, and physical absurdity", GREEN),
    ]
    b.append(line(40, 214, 720, 214, BORDER, 1.0))
    for i, (name, text, col) in enumerate(tests):
        y = 236 + i * 19
        b.append(t(48, y, name, size=8.8, weight="bold", fill=col, anchor="start"))
        b.append(t(150, y, text, size=8.8, fill=SLATE, anchor="start"))
    write_svg("ch02_drama_types.svg", svg(w, h, "\n".join(b)))


def ch02_plot_curve() -> None:
    w, h = 760, 340
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="{LIGHT_BG}" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "The Shape of a Plot", size=13, weight="bold"))
    b.append(t(w / 2, 44, "Five points the examiner asks you to name — and the sixth that decides the theme", size=9.2, fill=MUTED))
    # axes
    b.append(line(60, 280, 720, 280, MUTED, 1.4))
    b.append(line(60, 280, 60, 70, MUTED, 1.4))
    b.append(t(40, 176, "", size=8))
    # tension curve
    pts = [(60, 280), (140, 268), (196, 214), (330, 120), (380, 96), (470, 168), (580, 236), (700, 276)]
    d = "M " + " L ".join(f"{x} {y}" for x, y in pts)
    b.append(path(d, "none", GREEN, 2.6))
    marks = [
        (100, 274, "1", "Exposition", "the world before"),
        (196, 214, "2", "Inciting incident", "the disturbance"),
        (300, 138, "3", "Rising action", "complication"),
        (380, 96, "4", "Climax", "the irreversible act"),
        (470, 168, "5", "Falling action", "consequences"),
        (620, 262, "6", "Resolution", "the new normal"),
    ]
    for x, y, n, name, note in marks:
        b.append(dot(x, y, 5.5, GREEN))
        b.append(t(x, y - 12, n, size=8.4, weight="bold", fill=GREEN))
        b.append(t(x, y + 20, name, size=8.8, weight="bold", fill=NAVY))
        b.append(t(x, y + 33, note, size=8.0, fill=MUTED))
    b.append(t(w / 2, 306, "tension →", size=8.4, fill=MUTED))
    write_svg("ch02_plot_curve.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


FIGURES = ["cover_banner", "weights", "ch01_genres", "ch01_levels", "ch02_drama_types", "ch02_plot_curve"]
