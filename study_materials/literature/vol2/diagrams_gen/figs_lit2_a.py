"""Cover, weight chart and the method chapters for Literature Volume 2."""

from __future__ import annotations

from common import (
    AMBER, BLUE, BORDER, GREEN, GREEN_LIGHT, GREEN_MID, LIGHT_BG, MUTED, NAVY,
    PURPLE, RED, SLATE, arrow, card, dot, line, lines, path, poly, rect, svg, t,
    text_width, wrap_text, write_svg,
)

W = 760


def _panel(x, y, w, h, fill="#FFFFFF", stroke=BORDER):
    return rect(x, y, w, h, fill, stroke, 8, 1.3)


def _head(title, sub=None, h=0):
    b = [t(W / 2, 26, title, size=13, weight="bold")]
    if sub:
        b.append(t(W / 2, 45, sub, size=9.2, fill=MUTED))
    return b


# ── cover ─────────────────────────────────────────────────────────────────
def cover_banner() -> None:
    w, h = 760, 150
    b = [rect(0, 0, w, h, GREEN_LIGHT, GREEN, 10, 1.4)]
    b.append(t(26, 50, "WHO IS SPEAKING,", size=17, weight="bold", fill=NAVY, anchor="start"))
    b.append(t(26, 76, "AND WHAT IS THE WRITER DOING?", size=17, weight="bold", fill=GREEN, anchor="start"))
    b.append(t(26, 106, "Five set texts, one method: the evidence, the pattern, the effect", size=9.8, fill=MUTED, anchor="start"))
    for i, (label, sub, col) in enumerate((("DRAMA", "two plays", BLUE), ("PROSE", "three novels", AMBER))):
        y = 38 + i * 48
        b.append(t(566 - 12, y + 22, sub, size=8.6, fill=MUTED, anchor="end"))
        b.append(rect(566, y, 160, 34, "#FFFFFF", col, 6, 1.4))
        b.append(t(646, y + 22, label, size=10.6, weight="bold", fill=col))
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg=GREEN_LIGHT))


# ── weights ───────────────────────────────────────────────────────────────
def weights() -> None:
    w, h = 760, 250
    rows = [
        ("Method: the paper, the banks, character, theme", 20, GREEN),
        ("Othello", 22, BLUE),
        ("Native Son", 18, AMBER),
        ("The three African texts", 30, PURPLE),
        ("Comparative essays and the exam hall", 10, RED),
    ]
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="{LIGHT_BG}" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "Where the Set-Text Marks Sit", size=13.5, weight="bold"))
    b.append(t(w / 2, 44, "A working split for a paper that asks ten to fourteen questions on the prescribed list", size=9.4, fill=MUTED))
    x0, y = 40, 70
    scale = 330 / 30
    for i, (title, q, col) in enumerate(rows):
        yy = y + i * 32
        b.append(t(x0, yy + 12, title, size=9.4, fill=SLATE, anchor="start"))
        bw = max(8, q * scale)
        b.append(rect(x0 + 330, yy + 1, 330, 18, "#FFFFFF", BORDER, 3, 1.0))
        b.append(rect(x0 + 330, yy + 1, bw, 18, col, col, 3, 1.0))
        b.append(t(x0 + 330 + bw + 12, yy + 14, f"{q}%", size=9.0, weight="bold", fill=col, anchor="start"))
    b.append(t(w / 2, h - 12, "The three African texts share the largest block because three of the five texts are African.", size=8.8, fill=MUTED))
    write_svg("weights.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


# ── chapter 1: the four shapes of a set-text question ─────────────────────
def ch01_shapes() -> None:
    w, h = 760, 300
    b = [_panel(0, 0, w, h, LIGHT_BG)]
    b += _head("The Four Shapes of a Set-Text Question",
               "Every question about a prescribed text is one of these, and each wants a different kind of evidence")
    cards = [
        ("FACT", "who, where, when", ["“Who speaks this line?”", "“Where is the scene set?”", "one word, no argument"], BLUE),
        ("FUNCTION", "what the part does", ["“What is the function of the", "subplot / the fool / the letter?”", "a relationship, not a summary"], AMBER),
        ("EFFECT", "what the reader feels", ["“What is the effect of the", "repetition in this speech?”", "a consequence for the audience"], GREEN),
        ("JUDGEMENT", "how good, at what cost", ["“How far does the play", "persuade us that …?”", "a claim, an objection, a verdict"], RED),
    ]
    for i, (head, sub, pts, col) in enumerate(cards):
        x = 20 + i * 185
        b.append(rect(x, 68, 170, 190, "#FFFFFF", col, 8, 1.5))
        b.append(f'<rect x="{x}" y="68" width="170" height="6" rx="3" fill="{col}"/>')
        b.append(t(x + 85, 96, head, size=12, weight="bold", fill=col))
        b.append(t(x + 85, 114, sub, size=8.6, fill=MUTED))
        for j, p in enumerate(pts):
            for k, ln in enumerate(wrap_text(p, 8.6, 142)):
                b.append(t(x + 85, 140 + j * 24 + k * 11, ln, size=8.6, fill=SLATE))
    b.append(t(w / 2, h - 14, "Answer the shape that was asked. A function question answered with a plot summary is the commonest lost mark on the text paper.", size=8.8, fill=MUTED))
    write_svg("ch01_shapes.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


# ── chapter 2: the bank ───────────────────────────────────────────────────
def ch02_bank() -> None:
    w, h = 760, 300
    b = [_panel(0, 0, w, h)]
    b += _head("The Bank: Four Columns You Fill Yourself",
               "Reading a text is not the same as preparing it. The bank is the difference.")
    cols = [
        ("SCENE / CHAPTER", "what happens, in five words", ["Act 3 scene 3 — the", "handkerchief is lost", "one line per unit"], BLUE),
        ("WHO", "who is present, who wants what", ["Iago, Othello,", "Desdemona offstage", "names, not descriptions"], AMBER),
        ("TURN", "what changes by the end", ["trust becomes", "suspicion", "the hinge of the unit"], GREEN),
        ("QUOTE", "six to ten words, exact", ["“the green-eyed", "monster”", "one per unit, no more"], PURPLE),
    ]
    for i, (head, sub, pts, col) in enumerate(cols):
        x = 20 + i * 185
        b.append(rect(x, 66, 170, 196, "#FFFFFF", col, 8, 1.5))
        b.append(f'<rect x="{x}" y="66" width="170" height="6" rx="3" fill="{col}"/>')
        for j, ln in enumerate(wrap_text(head, 10.4, 146)):
            b.append(t(x + 85, 92 + j * 13, ln, size=10.4, weight="bold", fill=col))
        b.append(t(x + 85, 118, sub, size=8.4, fill=MUTED))
        for j, p in enumerate(pts):
            b.append(t(x + 85, 146 + j * 16, p, size=8.8, fill=SLATE))
    b.append(t(w / 2, h - 14, "One row per scene or chapter, built as you read. By the last week the bank is the only revision document you need.", size=8.8, fill=MUTED))
    write_svg("ch02_bank.svg", svg(w, h, "\n".join(b)))


# ── chapter 3: character ──────────────────────────────────────────────────
def ch03_character() -> None:
    w, h = 760, 330
    b = [_panel(0, 0, w, h, LIGHT_BG)]
    b += _head("Character: Five Questions, Not a Description",
               "A character in an exam answer is a function before he is a person")
    qs = [
        ("1  WHAT DOES HE WANT?", "the desire that drives his scenes, in this unit", GREEN),
        ("2  WHAT STOPS HIM?", "the obstacle, and who holds it", BLUE),
        ("3  WHAT DOES HE DO WHEN IT COSTS?", "the choice that reveals him", AMBER),
        ("4  WHAT CAN HE NOT SAY?", "the silence the text has designed", PURPLE),
        ("5  WHAT WOULD THE TEXT LOSE WITHOUT HIM?", "his function in the structure", RED),
    ]
    for i, (head, sub, col) in enumerate(qs):
        x = 22 + (i % 2) * 360
        y = 64 + (i // 2) * 84
        b.append(rect(x, y, 340, 72, "#FFFFFF", col, 8, 1.4))
        b.append(t(x + 16, y + 24, head, size=9.0, weight="bold", fill=col, anchor="start"))
        for j, ln in enumerate(wrap_text(sub, 8.6, 300)):
            b.append(t(x + 16, y + 44 + j * 12, ln, size=8.6, fill=SLATE, anchor="start"))
    b.append(t(w / 2, h - 12, "If the fifth answer is “nothing”, the character is scenery — and a question about him is really asking about someone else.", size=8.6, fill=MUTED))
    write_svg("ch03_character.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


# ── chapter 4: theme ledger ───────────────────────────────────────────────
def ch04_ledger() -> None:
    w, h = 760, 290
    b = [_panel(0, 0, w, h)]
    b += _head("The Theme Ledger: A Claim, Its Evidence, and the Case Against",
               "A theme is not a word. It is a sentence, and it must be arguable")
    b.append(rect(20, 64, 720, 34, GREEN_LIGHT, GREEN, 6, 1.2))
    b.append(t(30, 86, "CLAIM:", size=9.2, weight="bold", fill=GREEN, anchor="start"))
    b.append(t(80, 86, "“The play argues that reputation is a story other people tell about you.”", size=9.2, fill=SLATE, anchor="start"))
    b.append(rect(20, 108, 350, 120, "#FFFFFF", BLUE, 7, 1.3))
    b.append(t(195, 128, "FOR — three moments", size=9.4, weight="bold", fill=BLUE))
    for j, s in enumerate(["Cassio's brawl costs him the name of soldier",
                           "Iago's “reputation” speech to Cassio",
                           "Othello's “name ... as indifferent as my birth”"]):
        for k, ln in enumerate(wrap_text("• " + s, 8.6, 310)):
            b.append(t(36, 150 + j * 24 + k * 11, ln, size=8.6, fill=SLATE, anchor="start"))
    b.append(rect(390, 108, 350, 120, "#FFFFFF", RED, 7, 1.3))
    b.append(t(565, 128, "AGAINST — two moments", size=9.4, weight="bold", fill=RED))
    for j, s in enumerate(["Desdemona is valued for her mind, not her name",
                           "Emilia dies telling the truth about the name"]):
        for k, ln in enumerate(wrap_text("• " + s, 8.6, 310)):
            b.append(t(406, 150 + j * 24 + k * 11, ln, size=8.6, fill=SLATE, anchor="start"))
    b.append(t(w / 2, h - 12, "A ledger with a column against is an argument. A ledger with only a column for is a summary.", size=8.8, fill=MUTED))
    write_svg("ch04_ledger.svg", svg(w, h, "\n".join(b)))


# ── chapter 8: comparative axes ───────────────────────────────────────────
def ch08_compare() -> None:
    w, h = 760, 280
    b = [_panel(0, 0, w, h, LIGHT_BG)]
    b += _head("Four Axes for Any Comparison",
               "Never compare two texts on everything. Compare them on one axis, then let the axis do the work")
    axes = [
        ("WHO HOLDS THE POWER", "and how the text distributes it", BLUE),
        ("WHO IS ALLOWED TO SPEAK", "and in what form", GREEN),
        ("WHAT THE ENDING COSTS", "who pays, and who is spared", AMBER),
        ("WHAT THE TEXT REFUSES TO SAY", "the silence at the centre", PURPLE),
    ]
    b.append(line(40, 210, 720, 210, MUTED, 1.4))
    for i, (head, sub, col) in enumerate(axes):
        x = 100 + i * 160
        b.append(line(x, 210, x, 190, col, 2.0))
        b.append(dot(x, 210, 4.6, col))
        for j, ln in enumerate(wrap_text(head, 9.0, 140)):
            b.append(t(x, 176 - j * 11, ln, size=9.0, weight="bold", fill=col))
        for j, ln in enumerate(wrap_text(sub, 8.2, 140)):
            b.append(t(x, 232 + j * 11, ln, size=8.2, fill=SLATE))
    b.append(t(w / 2, h - 12, "One axis per paragraph. Two texts, one question, and the comparison becomes an argument rather than a list.", size=8.8, fill=MUTED))
    write_svg("ch08_compare.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


FIGURES = [
    cover_banner, weights, ch01_shapes, ch02_bank, ch03_character,
    ch04_ledger, ch08_compare,
]
