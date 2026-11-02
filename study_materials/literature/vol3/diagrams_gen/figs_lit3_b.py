"""The forge, the harbour, the proud king, the paper map and seven recaps."""

from __future__ import annotations

from common import (
    AMBER, BLUE, BORDER, GREEN, GREEN_LIGHT, GREEN_MID, LIGHT_BG, MUTED, NAVY,
    PURPLE, RED, SLATE, arrow, card, dot, line, lines, path, poly, rect, svg, t,
    text_width, wrap_text, write_svg,
)


# ── chapter 4: The Anvil and the Hammer ───────────────────────────────────
def ch04_anvil_forge() -> None:
    w, h = 760, 330
    b = [t(380, 24, "The Anvil and the Hammer: one poem, two workshops", size=12.5, weight="bold")]
    # stanza one: the forge
    b.append(rect(40, 52, 320, 210, "#FFFFFF", BLUE, 8, 1.4))
    b.append(f'<rect x="40" y="52" width="320" height="5" rx="2.5" fill="{BLUE}"/>')
    b.append(t(200, 78, "STANZA ONE — THE FORGE", size=10, weight="bold", fill=NAVY))
    forge = [
        ("caught", "between anvil and hammer"),
        ("forging house", "of a new life"),
        ("pangs", "transformed into new songs"),
        ("trappings of the past", "tender, tenuous, sisal, goat's blood"),
        ("paved streets", "\"flimsy glories\""),
        ("new dialectic", "\"jargon\" on the outlaw's hill"),
    ]
    for i, (left, right) in enumerate(forge):
        yy = 102 + i * 26
        b.append(t(56, yy, left, size=8.4, weight="bold", fill=BLUE, anchor="start"))
        b.append(t(196, yy, right, size=8.2, fill=SLATE, anchor="start"))
    # stanza two: the sewing
    b.append(rect(400, 52, 320, 210, "#FFFFFF", GREEN, 8, 1.4))
    b.append(f'<rect x="400" y="52" width="320" height="5" rx="2.5" fill="{GREEN}"/>')
    b.append(t(560, 78, "STANZA TWO — THE SEWING", size=10, weight="bold", fill=NAVY))
    sew = [
        ("\"Sew the old days\"", "the prayer to the fathers"),
        ("\"under our new garment\"", "tradition worn inside modernity"),
        ("\"whirlpool\"", "the rivers' estuary: many influences"),
        ("\"snatches from their tunes\"", "borrowed music, new flags"),
        ("\"our songs\"", "the voice that survives"),
        ("\"splash and moan of the sea\"", "the ending: still in motion"),
    ]
    for i, (left, right) in enumerate(sew):
        yy = 102 + i * 26
        b.append(t(416, yy, left, size=8.4, weight="bold", fill=GREEN, anchor="start"))
        b.append(t(556, yy, right, size=8.2, fill=SLATE, anchor="start"))
    b.append(rect(40, 274, 680, 40, GREEN_LIGHT, GREEN, 6, 1.1))
    b.append(t(380, 292, "The hammer shapes the metal; the needle joins the cloth. One poem, two kinds of making.",
               size=8.8, fill=NAVY))
    b.append(t(380, 306, "That is the argument: neither culture is thrown away, and neither is worn alone.",
               size=8.2, fill=MUTED, italic=True))
    write_svg("ch04_anvil_forge.svg", svg(w, h, "\n".join(b)))


# ── chapter 5: Crossing the Bar ───────────────────────────────────────────
def ch05_crossing_voyage() -> None:
    w, h = 760, 330
    b = [t(380, 24, "Crossing the Bar: one voyage, four stanzas, no return", size=12.5, weight="bold")]
    # sea bands
    b.append(rect(40, 190, 680, 96, "#EFF6FF", "#BFDBFE", 8, 1.1))
    b.append(rect(40, 258, 680, 28, "#DBEAFE", "#BFDBFE", 6, 1.1))
    b.append(t(120, 282, "the harbour", size=8.4, fill=MUTED))
    b.append(t(400, 282, "the bar — sand, sound, foam", size=8.4, fill=MUTED))
    b.append(t(690, 282, "the open sea", size=8.4, fill=MUTED, anchor="end"))
    # the bar
    b.append(path("M 330 262 Q 360 244 390 262 Q 420 280 450 262", stroke=AMBER, fill="none", sw=3))
    # boat
    b.append(poly([(150, 232), (196, 232), (186, 248), (160, 248)], fill=NAVY, stroke=NAVY))
    b.append(line(173, 232, 173, 206, color=NAVY, sw=2))
    b.append(poly([(173, 206), (173, 228), (194, 228)], fill=GREEN_MID, stroke=GREEN, ))
    # setting sun
    b.append(f'<circle cx="640" cy="150" r="22" fill="{AMBER}" opacity="0.75"/>')
    b.append(t(640, 120, "sunset and evening star", size=8.2, fill=MUTED))
    # four stations
    stations = [
        (110, "1", "\"Sunset and evening star\"", "the call is heard", BLUE),
        (300, "2", "\"such a tide as moving seems asleep\"", "the fullness before departure", GREEN),
        (470, "3", "\"Twilight and evening bell\"", "the dark accepted", PURPLE),
        (650, "4", "\"I hope to see my Pilot face to face\"", "faith, not fear", AMBER),
    ]
    for x, n, quote, gloss, col in stations:
        b.append(rect(x - 80, 48, 160, 62, "#FFFFFF", col, 7, 1.3))
        b.append(t(x, 66, n, size=11, weight="bold", fill=col))
        b.append(t(x, 82, quote, size=7.2, fill=NAVY, italic=True))
        b.append(t(x, 98, gloss, size=7.4, fill=MUTED))
        b.append(arrow(x, 112, x, 186, color=col, sw=1.2, marker="ag", dash="3 3"))
    b.append(rect(40, 296, 680, 26, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(380, 313, "The bar is the sandbank at the harbour mouth: the last obstacle before open water.",
               size=8.4, fill=SLATE))
    write_svg("ch05_crossing_voyage.svg", svg(w, h, "\n".join(b)))


# ── chapter 6: The Proud King ─────────────────────────────────────────────
def ch06_proud_arc() -> None:
    w, h = 760, 340
    b = [t(380, 24, "The Proud King: the fall is the middle, the lesson is the end", size=12.5, weight="bold")]
    stages = [
        (60, "KING", "boasts: \"Am I not God\"", BLUE),
        (230, "BATH", "clothes and horse taken", PURPLE),
        (400, "OUTCAST", "porter, ranger, duke, queen: none know him", RED),
        (570, "BEGGAR", "prays: \"give me back myself again\"", AMBER),
        (700, "RESTORED", "the angel returns the throne", GREEN),
    ]
    y = 92
    for i, (x, head, body, col) in enumerate(stages):
        b.append(rect(x - 62, y, 124, 84, "#FFFFFF", col, 8, 1.5))
        b.append(f'<rect x="{x - 62}" y="{y}" width="124" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x, y + 26, head, size=9.6, weight="bold", fill=NAVY))
        b.append(t(x, y + 46, body[:24], size=7.2, fill=SLATE))
        if len(body) > 24:
            b.append(t(x, y + 58, body[24:48], size=7.2, fill=SLATE))
        if len(body) > 48:
            b.append(t(x, y + 70, body[48:], size=7.2, fill=SLATE))
        if i < 4:
            b.append(arrow(x + 66, y + 42, stages[i + 1][0] - 66, y + 42, color=BORDER, sw=1.4, marker="ag"))
    b.append(path("M 60 200 Q 200 300 380 240 Q 560 180 700 196", stroke=RED, fill="none", sw=2, dash="4 4"))
    b.append(t(380, 300, "the descent: status stripped a stage at a time", size=8.6, fill=RED, italic=True))
    b.append(rect(40, 312, 680, 24, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(380, 328, "Rhyme royal: seven-line stanzas, ababbcc, roughly 850 lines. A narrative, not a lyric.",
               size=8.4, fill=SLATE))
    write_svg("ch06_proud_arc.svg", svg(w, h, "\n".join(b)))


def ch06_proud_chain() -> None:
    w, h = 760, 300
    b = [t(380, 24, "The chain of cause: how a boast becomes a beggar", size=12.5, weight="bold")]
    links = [
        ("1", "PRIDE", "counts his titles,\nthinks he needs no priest", BLUE),
        ("2", "BOAST", "\"Am I not God,\nwhiles that I live\"", PURPLE),
        ("3", "HUNT", "a hart leads him\nalone to the river", GREEN),
        ("4", "BATH", "he strips; the angel\ntakes clothes and horse", AMBER),
        ("5", "DENIAL", "porter, ranger, duke,\nqueen, soldiers", RED),
        ("6", "PRAYER", "\"give me back\nmyself again\"", PURPLE),
        ("7", "MERCY", "the angel in white\nreturns the kingdom", GREEN),
    ]
    cw, gap = 92, 12
    x0 = (w - (7 * cw + 6 * gap)) / 2
    for i, (n, head, body, col) in enumerate(links):
        x = x0 + i * (cw + gap)
        b.append(rect(x, 62, cw, 116, "#FFFFFF", col, 7, 1.4))
        b.append(t(x + cw / 2, 82, n, size=10, weight="bold", fill=col))
        b.append(t(x + cw / 2, 100, head, size=8.4, weight="bold", fill=NAVY))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + cw / 2, 120 + j * 13, ln, size=7.1, fill=SLATE))
        if i < 6:
            b.append(arrow(x + cw + 1, 120, x + cw + gap - 1, 120, color=BORDER, sw=1.2, marker="ag"))
    b.append(rect(40, 200, 680, 84, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 222, "Two things travel down the chain", size=10, weight="bold", fill=GREEN))
    b.append(t(380, 244, "First his rank, then his name. At the bottom he has neither, and only then does he pray.", size=8.8, fill=SLATE))
    b.append(t(380, 262, "The poem's argument is not 'pride is punished' but 'a man is what God permits him to be'.", size=8.8, fill=SLATE))
    b.append(t(380, 278, "That is why the restoration is a gift and not a reward.", size=8.4, fill=MUTED, italic=True))
    write_svg("ch06_proud_chain.svg", svg(w, h, "\n".join(b)))


# ── chapter 7: the paper map ──────────────────────────────────────────────
def ch07_paper_map() -> None:
    w, h = 760, 300
    b = [t(380, 24, "One paper, sixty questions, sixty minutes", size=12.5, weight="bold")]
    blocks = [
        ("UNSEEN POEM", 12, BLUE),
        ("VANITY", 10, GREEN),
        ("AMBUSH", 10, PURPLE),
        ("ANVIL", 10, AMBER),
        ("CROSSING", 8, GREEN),
        ("PROUD KING", 10, RED),
    ]
    total = sum(n for _l, n, _c in blocks)
    x = 40
    width = 680
    for label, n, col in blocks:
        ww = width * n / total
        b.append(rect(x, 62, ww - 4, 54, "#FFFFFF", col, 6, 1.4))
        b.append(f'<rect x="{x}" y="62" width="{ww - 4}" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + (ww - 4) / 2, 84, label, size=7.8, weight="bold", fill=NAVY))
        b.append(t(x + (ww - 4) / 2, 104, str(n), size=12, weight="bold", fill=col))
        x += ww
    b.append(t(380, 140, "questions, in the proportions of the real paper", size=8.6, fill=MUTED, italic=True))
    # timing plan
    b.append(rect(40, 162, 680, 112, "#FFFFFF", BORDER, 8, 1.1))
    b.append(t(380, 184, "The sixty minutes", size=10, weight="bold", fill=NAVY))
    plan = [("0–2", "read the unseen poem twice"), ("2–14", "unseen questions"),
            ("14–44", "the five prescribed blocks, six minutes each"), ("44–56", "flagged questions"),
            ("56–60", "transfer and check every number")]
    for i, (span, what) in enumerate(plan):
        yy = 206 + i * 14
        b.append(t(80, yy, span, size=7.8, weight="bold", fill=GREEN, anchor="start"))
        b.append(t(140, yy, what, size=8.2, fill=SLATE, anchor="start"))
    b.append(t(380, 292, "A poem question is won in the first twenty seconds: locate the stanza, then answer.",
               size=8.6, fill=MUTED, italic=True))
    write_svg("ch07_paper_map.svg", svg(w, h, "\n".join(b)))


# ── recap cards ───────────────────────────────────────────────────────────
def _recap(name: str, title: str, tag: str, rows, col=GREEN) -> None:
    w, h = 760, 232
    b = [rect(0, 0, w, h, "#FFFFFF", col, 12, 1.6)]
    b.append(f'<rect x="0" y="0" width="760" height="8" rx="4" fill="{col}"/>')
    b.append(t(24, 36, tag, size=8.6, weight="bold", fill=col, anchor="start"))
    b.append(t(24, 58, title, size=14.5, weight="bold", fill=NAVY, anchor="start"))
    for i, (left, right) in enumerate(rows):
        yy = 92 + i * 26
        b.append(dot(30, yy - 4, 3.2, col))
        b.append(t(42, yy, left, size=8.8, weight="bold", fill=NAVY, anchor="start"))
        b.append(t(230, yy, right, size=8.6, fill=SLATE, anchor="start"))
    write_svg(name, svg(w, h, "\n".join(b), bg="#FFFFFF"))


def recap_ch01() -> None:
    _recap("recap_ch01.svg", "How a poem is examined", "CHAPTER 1", [
        ("Five passes", "hear, turn, voice, image, argue"),
        ("The turn", "the line where the poem changes direction"),
        ("Voice", "who speaks, to whom, in what tone"),
        ("Image", "two or three carry the whole poem"),
        ("The rule", "what it says, what it does, what it changes"),
    ], BLUE)


def recap_ch02() -> None:
    _recap("recap_ch02.svg", "Vanity — Birago Diop", "CHAPTER 2", [
        ("Form", "six stanzas, ~30 lines, free verse, repetition"),
        ("Situation", "a people who cannot speak and will not be heard"),
        ("The dead", "they left their cries in air, water and earth"),
        ("The verdict", "\"since we did not understand\", the fault is ours"),
        ("Theme", "cultural loss, and the vanity of late regret"),
    ], GREEN)


def recap_ch03() -> None:
    _recap("recap_ch03.svg", "Ambush — Gbemisola Adeoti", "CHAPTER 3", [
        ("Form", "four stanzas, 21 lines, run-on lines"),
        ("Three metaphors", "whale (water), tiger (land), hawk (air)"),
        ("The pun", "blue Peter, all Peters, petered out desires"),
        ("The turn", "from victims to those who still set out"),
        ("Theme", "the state as predator, hope as ambush"),
    ], PURPLE)


def recap_ch04() -> None:
    _recap("recap_ch04.svg", "The Anvil and the Hammer — Kofi Awoonor", "CHAPTER 4", [
        ("Form", "two stanzas, free verse, no rhyme"),
        ("Stanza 1", "the forge: anvil, hammer, pangs, new songs"),
        ("Stanza 2", "the sewing: old days worn under a new garment"),
        ("Key phrase", "\"flimsy glories of paved streets\""),
        ("Theme", "cultural clash and the syncretism that answers it"),
    ], AMBER)


def recap_ch05() -> None:
    _recap("recap_ch05.svg", "Crossing the Bar — Alfred, Lord Tennyson", "CHAPTER 5", [
        ("Form", "four quatrains, ABAB, iambic pentameter"),
        ("Conceit", "death as a boat crossing the harbour bar"),
        ("The Pilot", "God, seen face to face at the end"),
        ("Tone", "calm, unhurried, unafraid"),
        ("Context", "written 1889; Tennyson asked it be printed last"),
    ], BLUE)


def recap_ch06() -> None:
    _recap("recap_ch06.svg", "The Proud King — William Morris", "CHAPTER 6", [
        ("Form", "narrative poem, rhyme royal, ~850 lines"),
        ("Sin", "\"Am I not God, whiles that I live at least\""),
        ("Fall", "the angel takes his clothes, horse and place"),
        ("Lesson", "rank is lent, not owned"),
        ("Frame", "the old king has the tale written down"),
    ], RED)


def recap_ch07() -> None:
    _recap("recap_ch07.svg", "The sixty-question paper", "CHAPTER 7", [
        ("Shape", "unseen poem, then five prescribed blocks"),
        ("Time", "one minute a question, banked early"),
        ("Order", "unseen first: it is self-contained"),
        ("Comparison", "two poems in one stem: answer both halves"),
        ("Check", "number every block before you hand in"),
    ], GREEN)


FIGURES = [
    "ch04_anvil_forge", "ch05_crossing_voyage", "ch06_proud_arc", "ch06_proud_chain",
    "ch07_paper_map", "recap_ch01", "recap_ch02", "recap_ch03", "recap_ch04",
    "recap_ch05", "recap_ch06", "recap_ch07",
]
