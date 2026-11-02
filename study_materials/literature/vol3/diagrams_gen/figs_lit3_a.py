"""Cover, method figure, and the *Vanity* and *Ambush* figures."""

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
    b.append(t(24, 34, "FIVE POEMS,", size=17, weight="bold", fill=NAVY, anchor="start"))
    b.append(t(24, 58, "AND FOUR PAPERS TO PROVE THEM", size=15.5, weight="bold", fill=GREEN, anchor="start"))
    b.append(t(24, 82, "Two African poems, two English, and one long narrative in rhyme royal", size=9.8, fill=MUTED, anchor="start"))
    xs = 396
    for i, (label, col) in enumerate((("AFRICAN", BLUE), ("ENGLISH", AMBER), ("PAPERS", PURPLE))):
        x = xs + i * 118
        b.append(rect(x, 96, 108, 34, "#FFFFFF", col, 6, 1.4))
        b.append(t(x + 54, 118, label, size=10, weight="bold", fill=col))
    for i, (label, col) in enumerate((("2 poems", BLUE), ("3 poems", AMBER), ("4 × 60", PURPLE))):
        b.append(t(xs + i * 118 + 54, 92, label, size=7.6, fill=MUTED))
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg=GREEN_LIGHT))


# ── chapter 1: the method ─────────────────────────────────────────────────
def ch01_method() -> None:
    w, h = 760, 306
    b = [t(380, 24, "Five passes over a poem, in the order that pays", size=12.5, weight="bold")]
    steps = [
        ("1", "HEAR", "read it aloud;\nmark the pauses", BLUE),
        ("2", "TURN", "where does the\npoem change its mind?", PURPLE),
        ("3", "VOICE", "who speaks, to\nwhom, and how", GREEN),
        ("4", "IMAGE", "the two or three\nimages that carry it", AMBER),
        ("5", "ARGUE", "the claim the whole\npoem is making", RED),
    ]
    cw, gap = 130, 18
    x0 = (w - (5 * cw + 4 * gap)) / 2
    for i, (num, head, body, col) in enumerate(steps):
        x = x0 + i * (cw + gap)
        b.append(rect(x, 62, cw, 112, "#FFFFFF", col, 8, 1.5))
        b.append(f'<rect x="{x}" y="62" width="{cw}" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + cw / 2, 90, num, size=17, weight="bold", fill=col))
        b.append(t(x + cw / 2, 112, head, size=10, weight="bold", fill=NAVY))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + cw / 2, 134 + j * 13, ln, size=8.2, fill=SLATE))
        if i < 4:
            b.append(arrow(x + cw + 1, 118, x + cw + gap - 2, 118, color=BORDER, sw=1.4, marker="ag"))
    b.append(rect(30, 196, 700, 86, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 218, "The rule the paper is really testing", size=10.6, weight="bold", fill=GREEN))
    b.append(t(380, 240, "A line is never asked about on its own. It is asked about as a move in an argument,", size=8.9, fill=SLATE))
    b.append(t(380, 256, "so the answer is always one of: what it says, what it does, or what it changes.", size=8.9, fill=SLATE))
    b.append(t(380, 274, "Find the move first; the meaning is much easier afterwards.", size=8.9, fill=MUTED, italic=True))
    write_svg("ch01_method.svg", svg(w, h, "\n".join(b)))


# ── chapter 2: Vanity ─────────────────────────────────────────────────────
def ch02_vanity_shape() -> None:
    w, h = 760, 340
    b = [t(380, 24, "Vanity: six stanzas, one question repeated five ways", size=12.5, weight="bold")]
    rows = [
        ("1", "\"If we tell, gently, gently\"", "the telling", BLUE),
        ("2", "\"If we cry roughly of our torments\"", "the crying", BLUE),
        ("3", "\"What heart will listen?\"", "the question turns on us", PURPLE),
        ("4", "\"When our Dead come with their Dead\"", "the dead arrive", AMBER),
        ("5", "\"They have left on the earth their cries\"", "the signs they left", AMBER),
        ("6", "\"And since we did not understand\"", "the verdict: since, not if", RED),
    ]
    y = 52
    for i, (n, quote, gloss, col) in enumerate(rows):
        yy = y + i * 44
        b.append(rect(40, yy, 42, 34, col, col, 6, 1.2))
        b.append(t(61, yy + 22, n, size=12, weight="bold", fill="#FFFFFF"))
        b.append(rect(92, yy, 330, 34, "#FFFFFF", BORDER, 6, 1.1))
        b.append(t(104, yy + 22, quote, size=8.6, fill=NAVY, anchor="start", italic=True))
        b.append(t(442, yy + 22, gloss, size=8.6, fill=SLATE, anchor="start"))
        if i < 5:
            b.append(arrow(61, yy + 34, 61, yy + 43, color=BORDER, sw=1.2, marker="ag"))
    b.append(rect(560, 52, 160, 214, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(640, 76, "The movement", size=10, weight="bold", fill=GREEN))
    for j, ln in enumerate(("if → if → what?", "then the dead", "then the verdict", "", "The poem stops", "asking and starts", "accusing.")):
        b.append(t(640, 100 + j * 18, ln, size=8.4, fill=SLATE))
    b.append(rect(40, 292, 680, 32, "#FFFFFF", BORDER, 6, 1.1))
    b.append(t(380, 313, "No stanza answers the question it asks: that refusal is the poem's argument.",
               size=9.2, fill=MUTED, italic=True))
    write_svg("ch02_vanity_shape.svg", svg(w, h, "\n".join(b)))


# ── chapter 3: Ambush ─────────────────────────────────────────────────────
def ch03_ambush_predators() -> None:
    w, h = 760, 320
    b = [t(380, 24, "Ambush: three predators, three elements, one road", size=12.5, weight="bold")]
    cards = [
        (40, "THE WHALE", "water", "\"swallows the sinker, / with hook, line and bait\"", BLUE),
        (270, "THE TIGER", "land", "\"cries deep in the glade / while infants shudder home\"", AMBER),
        (500, "THE HAWK", "air", "\"courts unceasing disaster / as it hovers and hoots\"", PURPLE),
    ]
    for x, head, elem, quote, col in cards:
        b.append(rect(x, 56, 210, 150, "#FFFFFF", col, 8, 1.5))
        b.append(f'<rect x="{x}" y="56" width="210" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + 105, 82, head, size=10.6, weight="bold", fill=NAVY))
        b.append(t(x + 105, 100, elem, size=8.6, fill=col, weight="bold"))
        for j, ln in enumerate((quote.replace('"', "").split(" / "))):
            b.append(t(x + 105, 130 + j * 18, ln, size=8.3, fill=SLATE, italic=True))
        b.append(arrow(x + 105, 206, 380, 240, color=col, sw=1.4, marker="ag"))
    b.append(rect(180, 244, 400, 56, GREEN_LIGHT, GREEN, 8, 1.4))
    b.append(t(380, 266, "THE LAND, WAITING", size=10.4, weight="bold", fill=GREEN))
    b.append(t(380, 286, "\"awaiting in ambush / those who point away from a direction / where nothing happens\"",
               size=7.8, fill=SLATE, italic=True))
    b.append(t(380, 316, "Every element is covered: no route out of the country escapes the country.",
               size=8.6, fill=MUTED, italic=True))
    write_svg("ch03_ambush_predators.svg", svg(w, h, "\n".join(b)))


FIGURES = [
    "cover_banner", "ch01_method", "ch02_vanity_shape", "ch03_ambush_predators",
]
