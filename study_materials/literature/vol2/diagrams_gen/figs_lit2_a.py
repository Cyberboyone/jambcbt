"""Cover, method figure and the two Harvest of Corruption figures."""

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
    b.append(t(24, 34, "FIVE TEXTS,", size=17, weight="bold", fill=NAVY, anchor="start"))
    b.append(t(24, 58, "AND ONE METHOD FOR ALL OF THEM", size=15.5, weight="bold", fill=GREEN, anchor="start"))
    b.append(t(24, 82, "Two plays, three novels, and the questions the paper asks of each", size=9.8, fill=MUTED, anchor="start"))
    xs = 430
    for i, (label, col) in enumerate((("DRAMA", BLUE), ("PROSE", AMBER), ("METHOD", PURPLE))):
        x = xs + i * 100
        b.append(rect(x, 96, 92, 34, "#FFFFFF", col, 6, 1.4))
        b.append(t(x + 46, 118, label, size=10, weight="bold", fill=col))
    for i, (label, col) in enumerate((("2 plays", BLUE), ("3 novels", AMBER), ("6 steps", PURPLE))):
        b.append(t(xs + i * 100 + 46, 92, label, size=7.6, fill=MUTED))
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg=GREEN_LIGHT))


# ── chapter 1: the method ─────────────────────────────────────────────────
def ch01_method() -> None:
    w, h = 760, 300
    b = [t(380, 24, "The six moves that answer a question on a set text", size=12.5, weight="bold")]
    steps = [
        ("1", "PLACE", "which text,\nwhich act or book", BLUE),
        ("2", "LOCATE", "the scene the\nstem points at", BLUE),
        ("3", "NAME", "the character,\nthe device, the term", PURPLE),
        ("4", "EVIDENCE", "the words you\ncan quote", GREEN),
        ("5", "EFFECT", "what it does to\nthe reader", AMBER),
        ("6", "CHECK", "does the option\nanswer the stem?", RED),
    ]
    cw, gap = 112, 15
    x0 = (w - (6 * cw + 5 * gap)) / 2
    for i, (num, head, body, col) in enumerate(steps):
        x = x0 + i * (cw + gap)
        b.append(rect(x, 62, cw, 108, "#FFFFFF", col, 8, 1.5))
        b.append(f'<rect x="{x}" y="62" width="{cw}" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + cw / 2, 88, num, size=16, weight="bold", fill=col))
        b.append(t(x + cw / 2, 108, head, size=9.6, weight="bold", fill=NAVY))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + cw / 2, 128 + j * 12, ln, size=7.9, fill=SLATE))
        if i < 5:
            b.append(arrow(x + cw + 1, 116, x + cw + gap - 2, 116, color=BORDER, sw=1.4, marker="ag"))
    b.append(rect(40, 196, 680, 78, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 218, "The rule that decides most questions", size=10.6, weight="bold", fill=GREEN))
    b.append(t(380, 240, "An option that names a device but not its effect is a distractor; an option that describes the text", size=9.0, fill=SLATE))
    b.append(t(380, 257, "without arguing about it is a distractor. The answer is the one that says what the writing DOES.", size=9.0, fill=SLATE))
    write_svg("ch01_method.svg", svg(w, h, "\n".join(b)))


# ── chapter 2: Harvest of Corruption causality ────────────────────────────
def ch02_harvest_chain() -> None:
    w, h = 760, 340
    b = [t(380, 24, "Harvest of Corruption: the chain from a degree to a grave", size=12.5, weight="bold")]
    rows = [
        ("No job after service", "Aloho has a degree and no income", BLUE),
        ("Ochuole's offer", "a schoolmate with a reputation", AMBER),
        ("The Ministry post", "protocol officer to Chief", PURPLE),
        ("The US trip", "cocaine in the luggage", RED),
        ("Arrest and acquittal", "the case thrown out for money", RED),
        ("Pregnancy and death", "she dies in childbirth", NAVY),
    ]
    y = 56
    for i, (head, sub, col) in enumerate(rows):
        x = 40
        b.append(rect(x, y, 300, 36, "#FFFFFF", col if i >= 3 else BORDER, 7, 1.4))
        b.append(f'<rect x="{x}" y="{y}" width="5" height="36" rx="2.5" fill="{col}"/>')
        b.append(t(x + 16, y + 16, head, size=9.4, weight="bold", fill=NAVY, anchor="start"))
        b.append(t(x + 16, y + 30, sub, size=8.2, fill=SLATE, anchor="start"))
        b.append(arrow(345, y + 18, 380, y + 18, color=BORDER, sw=1.3))
        y += 46
    # right-hand commentary column
    notes = [
        ("THE CAUSE", "unemployment makes an offer\nlook like a rescue", BLUE),
        ("THE INSTRUMENT", "Chief's office is a criminal\nenterprise with a title", AMBER),
        ("THE PRICE", "the state protects the guilty\nand destroys the innocent", RED),
    ]
    ny = 62
    for head, body, col in notes:
        b.append(rect(392, ny, 328, 80, GREEN_LIGHT, col, 8, 1.2))
        b.append(t(406, ny + 20, head, size=9.2, weight="bold", fill=col, anchor="start"))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(406, ny + 38 + j * 13, ln, size=8.6, fill=SLATE, anchor="start"))
        ny += 90
    write_svg("ch02_harvest_chain.svg", svg(w, h, "\n".join(b)))


def ch02_harvest_map() -> None:
    w, h = 760, 300
    b = [t(380, 24, "Who is connected to whom, and by what", size=12.5, weight="bold")]
    # centre
    b.append(rect(300, 116, 160, 52, GREEN_LIGHT, GREEN, 9, 1.6))
    b.append(t(380, 138, "CHIEF HALADU", size=10, weight="bold", fill=GREEN))
    b.append(t(380, 154, "ADE-AMAKA", size=9, weight="bold", fill=GREEN))
    b.append(t(380, 90, "the centre of the web", size=8.6, fill=MUTED, italic=True))
    nodes = [
        (40, 56, "OCHUOLE", "recruits; supplies", BLUE),
        (40, 196, "MADAM HOHA", "Akpara Hotel; the venue", AMBER),
        (560, 56, "JUSTICE ODILI", "throws out the case", RED),
        (560, 196, "COMMISSIONER", "of Police; buries it", RED),
        (300, 226, "AYO", "clerk; the vouchers", PURPLE),
        (300, 56, "ALOHO", "the victim", NAVY),
    ]
    for x, y, head, sub, col in nodes:
        b.append(rect(x, y, 160, 44, "#FFFFFF", col, 7, 1.4))
        b.append(t(x + 80, y + 18, head, size=9.2, weight="bold", fill=col))
        b.append(t(x + 80, y + 33, sub, size=7.9, fill=SLATE))
    # connectors
    for (x1, y1, x2, y2) in ((200, 78, 300, 130), (200, 218, 300, 160),
                             (460, 130, 560, 78), (460, 160, 560, 218),
                             (380, 168, 380, 226), (380, 116, 380, 100)):
        b.append(line(x1, y1, x2, y2, color=BORDER, sw=1.3))
    b.append(t(380, 288, "Two honest figures stand outside the web: ACP Yakubu and Ogeyi, who bring it down.", size=8.8, fill=MUTED))
    write_svg("ch02_harvest_map.svg", svg(w, h, "\n".join(b)))


FIGURES = ["cover_banner", "ch01_method", "ch02_harvest_chain", "ch02_harvest_map"]
