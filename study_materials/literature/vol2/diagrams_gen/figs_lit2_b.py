"""Othello, Faceless, Lonely Days, Native Son figures and the six recap cards."""

from __future__ import annotations

from common import (
    AMBER, BLUE, BORDER, GREEN, GREEN_LIGHT, GREEN_MID, LIGHT_BG, MUTED, NAVY,
    PURPLE, RED, SLATE, arrow, card, dot, line, lines, path, poly, rect,
    recap_card, svg, t, text_width, wrap_text, write_svg,
)

W = 760


# ── chapter 3: Othello ────────────────────────────────────────────────────
def ch03_othello_arc() -> None:
    w, h = 760, 300
    b = [t(380, 24, "Othello: the fall, act by act", size=12.5, weight="bold")]
    # axes
    x0, y0 = 70, 250
    b.append(line(x0, y0, 720, y0, color=SLATE, sw=1.2))
    b.append(line(x0, y0, x0, 62, color=SLATE, sw=1.2))
    b.append(t(x0 - 26, 70, "trust", size=8, fill=MUTED, anchor="start"))
    b.append(t(x0 - 30, 246, "ruin", size=8, fill=MUTED, anchor="start"))
    pts = [(110, 210), (230, 190), (350, 150), (470, 110), (590, 82), (690, 240)]
    labels = ["Act 1\nVenice", "Act 2\nCyprus", "Act 3\nthe handkerchief", "Act 4\nthe fit", "Act 5\nthe murder", "the truth"]
    for i in range(len(pts) - 1):
        b.append(line(pts[i][0], pts[i][1], pts[i + 1][0], pts[i + 1][1], color=GREEN, sw=2.2))
    for (x, y), lab in zip(pts, labels):
        b.append(dot(x, y, 4.2, GREEN))
        for j, ln in enumerate(lab.split("\n")):
            b.append(t(x, y - 16 - (len(lab.split("\n")) - 1 - j) * 11, ln, size=7.8, fill=SLATE))
    b.append(rect(392, 268, 330, 0, "#FFFFFF", "#FFFFFF", 0, 0))
    write_svg("ch03_othello_arc.svg", svg(w, h, "\n".join(b)))


def ch03_othello_web() -> None:
    w, h = 760, 300
    b = [t(380, 24, "Iago's method: four handles, one hand", size=12.5, weight="bold")]
    b.append(rect(316, 120, 128, 52, "#FEE2E2", RED, 9, 1.6))
    b.append(t(380, 142, "IAGO", size=11, weight="bold", fill=RED))
    b.append(t(380, 158, "the engine", size=8, fill=SLATE))
    nodes = [
        (56, 52, "RODERIGO", "money and a grudge", AMBER),
        (56, 196, "CASSIO", "the demotion", BLUE),
        (556, 52, "OTHELLO", "jealousy, once planted", PURPLE),
        (556, 196, "EMILIA", "the handkerchief", GREEN),
    ]
    for x, y, head, sub, col in nodes:
        b.append(rect(x, y, 148, 48, "#FFFFFF", col, 8, 1.3))
        b.append(t(x + 74, y + 19, head, size=9.2, weight="bold", fill=col))
        b.append(t(x + 74, y + 35, sub, size=7.8, fill=SLATE))
    b.append(arrow(204, 84, 316, 128, color=RED, sw=1.5, marker="ar"))
    b.append(arrow(204, 210, 316, 160, color=RED, sw=1.5, marker="ar"))
    b.append(arrow(444, 128, 556, 84, color=RED, sw=1.5, marker="ar"))
    b.append(arrow(444, 160, 556, 210, color=RED, sw=1.5, marker="ar"))
    b.append(t(380, 250, "Each handle is a weakness the victim already has. Iago supplies nothing but the pull.", size=8.8, fill=MUTED))
    b.append(t(380, 268, "That is why the play is a tragedy of character as much as of villainy.", size=8.8, fill=MUTED))
    write_svg("ch03_othello_web.svg", svg(w, h, "\n".join(b)))


# ── chapter 4: Faceless ───────────────────────────────────────────────────
def ch04_faceless_map() -> None:
    w, h = 760, 320
    b = [t(380, 24, "Faceless: the investigation, and who is on each side", size=12.5, weight="bold")]
    b.append(rect(46, 52, 300, 108, GREEN_LIGHT, GREEN, 8, 1.3))
    b.append(t(196, 74, "MUTE", size=11, weight="bold", fill=GREEN))
    for j, ln in enumerate(["Dina, the head", "Kabria, the programme officer", "Vickie and Aggie, colleagues"]):
        b.append(t(196, 94 + j * 15, ln, size=8.6, fill=SLATE))
    b.append(rect(414, 52, 300, 108, "#F8FAFC", BLUE, 8, 1.3))
    b.append(t(564, 74, "THE ALLIES", size=11, weight="bold", fill=BLUE))
    for j, ln in enumerate(["Sylv Po, radio presenter at Harvest FM", "Fofo, the witness who becomes the case", "Adade, Kabria's husband"]):
        b.append(t(564, 94 + j * 15, ln, size=8.6, fill=SLATE))
    b.append(rect(46, 196, 300, 104, "#FEF2F2", RED, 8, 1.3))
    b.append(t(196, 218, "THE ACCUSED", size=11, weight="bold", fill=RED))
    for j, ln in enumerate(["Poison, the street lord", "Maami Broni, the brothel keeper", "Kpakpo, who sold her"]):
        b.append(t(196, 238 + j * 15, ln, size=8.6, fill=SLATE))
    b.append(rect(414, 196, 300, 104, "#FFF7ED", AMBER, 8, 1.3))
    b.append(t(564, 218, "THE DEAD AND THE SILENCED", size=11, weight="bold", fill=AMBER))
    for j, ln in enumerate(["Baby T, found behind the salon", "Maa Tsuru, who cannot protect her", "Odarley, still on the street"]):
        b.append(t(564, 238 + j * 15, ln, size=8.6, fill=SLATE))
    b.append(line(346, 106, 414, 106, color=BORDER, sw=1.3))
    b.append(t(380, 96, "the case", size=7.6, fill=MUTED))
    b.append(line(346, 248, 414, 248, color=BORDER, sw=1.3))
    b.append(t(380, 238, "the cost", size=7.6, fill=MUTED))
    write_svg("ch04_faceless_map.svg", svg(w, h, "\n".join(b)))


def ch04_faceless_books() -> None:
    w, h = 760, 250
    b = [t(380, 24, "Three books, three questions", size=12.5, weight="bold")]
    cards = [
        ("BOOK ONE", "Who is Fofo?", "the street, Poison, Odarley,\nand a fourteen-year-old\nwho is already an adult", BLUE),
        ("BOOK TWO", "Who was Baby T?", "Maa Tsuru's story, Kpakpo,\nOnko, the sale, and the\nhousehold that failed her", AMBER),
        ("BOOK THREE", "Who killed her?", "MUTE, Sylv Po, the radio,\nthe mortuary report, and\nthe left-hand print", GREEN),
    ]
    for i, (tag, head, body, col) in enumerate(cards):
        x = 46 + i * 228
        b.append(rect(x, 56, 208, 150, "#FFFFFF", col, 9, 1.4))
        b.append(f'<rect x="{x}" y="56" width="208" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + 104, 82, tag, size=8.6, weight="bold", fill=col))
        b.append(t(x + 104, 104, head, size=11, weight="bold", fill=NAVY))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 104, 128 + j * 14, ln, size=8.4, fill=SLATE))
        if i < 2:
            b.append(arrow(x + 210, 132, x + 236, 132, color=BORDER, sw=1.4))
    b.append(t(380, 232, "The novel answers the question of the title by showing how many people failed before anyone was charged.", size=8.9, fill=MUTED))
    write_svg("ch04_faceless_books.svg", svg(w, h, "\n".join(b)))


# ── chapter 5: Lonely Days ────────────────────────────────────────────────
def ch05_kufi_flow() -> None:
    w, h = 760, 300
    b = [t(380, 24, "What Kufi asks of a widow, and where Yaremi stops", size=12.5, weight="bold")]
    steps = [
        ("BEREAVEMENT", "the husband dies;\nthe wife is suspected", RED),
        ("RITES", "head shaved, black cloth,\nwidow's road only", AMBER),
        ("CONFESSION", "libation, and sins\nshe did not commit", AMBER),
        ("CAP PICKING", "choose a new husband\nfrom the suitors", PURPLE),
        ("REFUSAL", "Yaremi will not pick", GREEN),
        ("THE PRICE", "property seized;\nthreat of banishment", RED),
    ]
    y = 60
    for i, (head, body, col) in enumerate(steps):
        x = 40 + (i % 3) * 240
        yy = y + (i // 3) * 92
        b.append(rect(x, yy, 210, 74, "#FFFFFF", col, 8, 1.4))
        b.append(f'<rect x="{x}" y="{yy}" width="5" height="74" rx="2.5" fill="{col}"/>')
        b.append(t(x + 18, yy + 24, head, size=9.4, weight="bold", fill=col, anchor="start"))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 18, yy + 42 + j * 13, ln, size=8.4, fill=SLATE, anchor="start"))
        if i < 2:
            b.append(arrow(x + 212, yy + 37, x + 236, yy + 37, color=BORDER, sw=1.4))
    b.append(arrow(460, 134, 460, 152, color=BORDER, sw=1.4))
    b.append(t(380, 276, "The last box is the novel's argument: the community punishes the refusal more heavily than the death.", size=8.9, fill=MUTED))
    write_svg("ch05_kufi_flow.svg", svg(w, h, "\n".join(b)))


def ch05_four_widows() -> None:
    w, h = 760, 260
    b = [t(380, 24, "Four widows, four ways of surviving", size=12.5, weight="bold")]
    rows = [
        ("RADEKE", "sang the widow's song of innocence; the village called her a liar", RED),
        ("FAYOYIN", "made to lick the libation to purge a theft she denied", AMBER),
        ("DEDEWE", "forced to confess sins she had not committed", PURPLE),
        ("YAREMI", "refused the cap, and paid for the refusal with her home", GREEN),
    ]
    for i, (name, body, col) in enumerate(rows):
        y = 56 + i * 44
        b.append(rect(46, y, 668, 36, "#FFFFFF", BORDER, 7, 1.1))
        b.append(f'<rect x="46" y="{y}" width="5" height="36" rx="2.5" fill="{col}"/>')
        b.append(t(66, y + 23, name, size=9.2, weight="bold", fill=col, anchor="start"))
        b.append(t(180, y + 23, body, size=8.8, fill=SLATE, anchor="start"))
    b.append(t(380, 244, "The other three accept the terms and find husbands; Yaremi refuses them and finds herself alone.", size=8.8, fill=MUTED))
    write_svg("ch05_four_widows.svg", svg(w, h, "\n".join(b)))


# ── chapter 6: Native Son ─────────────────────────────────────────────────
def ch06_bigger_arc() -> None:
    w, h = 760, 300
    b = [t(380, 24, "Native Son: Fear, Flight, Fate", size=12.5, weight="bold")]
    bands = [
        ("BOOK ONE — FEAR", "the rat, the relief job, the Dalton house,\nthe pillow, the furnace", BLUE, 0.00, 0.42),
        ("BOOK TWO — FLIGHT", "Bessie, the ransom note, the rooftops,\nthe capture", AMBER, 0.42, 0.75),
        ("BOOK THREE — FATE", "the confession, the trial, the sentence,\nthe last conversation with Max", RED, 0.75, 1.00),
    ]
    for head, body, col, a, z in bands:
        x1, x2 = 40 + a * 680, 40 + z * 680
        b.append(rect(x1, 58, x2 - x1 - 4, 92, "#FFFFFF", col, 8, 1.4))
        b.append(f'<rect x="{x1}" y="58" width="{x2 - x1 - 4}" height="5" rx="2.5" fill="{col}"/>')
        b.append(t((x1 + x2) / 2, 84, head, size=9.2, weight="bold", fill=col))
        for j, ln in enumerate(body.split("\n")):
            b.append(t((x1 + x2) / 2, 106 + j * 14, ln, size=7.9, fill=SLATE))
    # the through-line
    b.append(line(40, 190, 720, 190, color=BORDER, sw=1.4))
    for x, lab, col in ((110, "a killing\nthat feels like\na first act", BLUE),
                        (390, "a flight that\ncannot go\nanywhere", AMBER),
                        (640, "a trial that\nexplains him\nand kills him", RED)):
        b.append(dot(x, 190, 4.4, col))
        for j, ln in enumerate(lab.split("\n")):
            b.append(t(x, 210 + j * 12, ln, size=7.8, fill=SLATE))
    b.append(t(380, 272, "Bigger is never allowed to be a person and a case at the same time — that is the novel's indictment.", size=8.9, fill=MUTED))
    write_svg("ch06_bigger_arc.svg", svg(w, h, "\n".join(b)))


def ch06_native_web() -> None:
    w, h = 760, 290
    b = [t(380, 24, "Five forces around Bigger Thomas", size=12.5, weight="bold")]
    b.append(rect(310, 118, 140, 50, "#F1F5F9", NAVY, 9, 1.6))
    b.append(t(380, 139, "BIGGER", size=11.5, weight="bold", fill=NAVY))
    b.append(t(380, 155, "twenty, Chicago, 1930s", size=7.8, fill=SLATE))
    nodes = [
        (40, 48, "THE DALTONS", "charity and blindness", GREEN),
        (40, 190, "BESSIE", "the second death", AMBER),
        (556, 48, "JAN", "the ally he frames", BLUE),
        (556, 190, "BUCKLEY", "the prosecutor", RED),
        (298, 46, "MAX", "the lawyer who explains", PURPLE),
    ]
    for x, y, head, sub, col in nodes:
        b.append(rect(x, y, 150, 46, "#FFFFFF", col, 7, 1.3))
        b.append(t(x + 75, y + 18, head, size=9.0, weight="bold", fill=col))
        b.append(t(x + 75, y + 33, sub, size=7.6, fill=SLATE))
    for (x1, y1, x2, y2) in ((190, 74, 310, 122), (190, 210, 310, 164),
                             (460, 122, 556, 74), (460, 164, 556, 210),
                             (380, 116, 380, 92)):
        b.append(line(x1, y1, x2, y2, color=BORDER, sw=1.3))
    b.append(t(380, 264, "Every one of them means well except the prosecutor — and the good intentions kill him too.", size=8.8, fill=MUTED))
    write_svg("ch06_native_web.svg", svg(w, h, "\n".join(b)))


# ── recap cards ───────────────────────────────────────────────────────────
def recap_ch01() -> None:
    recap_card("recap_ch01.svg", "Chapter 1 recap — how a set text is examined", [
        ("PLACE THE TEXT", "Name the text, the genre and the writer before you read the options. The genre narrows the possible answers at once."),
        ("LOCATE THE SCENE", "A stem almost always points at one scene, act or chapter. Find it before you evaluate any option."),
        ("NAME, QUOTE, EFFECT", "Three parts, and the third is the one that earns the mark: what the words do to the reader or the audience."),
        ("THE DISTRACTOR TEST", "If an option could be written about another text, it has not answered this one."),
    ])


def recap_ch02() -> None:
    recap_card("recap_ch02.svg", "Chapter 2 recap — Harvest of Corruption", [
        ("THE SPINE", "Unemployment, an offer, a ministry post, a planted drug, a bought acquittal, a pregnancy, a death, a trial."),
        ("THE SYSTEM", "Chief, Odili and the Commissioner are the same corruption in three uniforms; the state protects its own."),
        ("THE WITNESSES", "Ogeyi refuses to forget and ACP Yakubu refuses to be bought; Ayo's vouchers make the case provable."),
        ("THE VERDICT", "Twenty-five years and a refund for Chief; ten each for Ochuole and Madam Hoha; five for Ayo. The harvest is reaped."),
    ])


def recap_ch03() -> None:
    recap_card("recap_ch03.svg", "Chapter 3 recap — Othello", [
        ("THE MACHINE", "Iago works on four handles: Roderigo's money, Cassio's rank, Othello's jealousy, Emilia's obedience."),
        ("THE OBJECT", "The strawberry handkerchief turns love into evidence; nothing in the play is more powerful than a prop."),
        ("THE TURN", "The temptation scene in Act 3, then the fit in Act 4; after the fit, Othello is decided."),
        ("THE CLOSE", "Emilia's testimony reverses the plot one scene too late; Othello kills himself and Cassio governs Cyprus."),
    ])


def recap_ch04() -> None:
    recap_card("recap_ch04.svg", "Chapter 4 recap — Faceless", [
        ("THE DEATH", "Baby T is found behind a hair salon in Agbogbloshie; the body is moved there to hide where she died."),
        ("THE HOUSEHOLD", "Kpakpo abuses her, Onko rapes her, Maa Tsuru sells her, and the community calls the family cursed."),
        ("THE INVESTIGATION", "MUTE and Sylv Po use the radio, the mortuary report and a left-hand print to reach the truth."),
        ("THE SURVIVOR", "Fofo is rehabilitated and trained; her sister's story becomes the reason she has a future."),
    ])


def recap_ch05() -> None:
    recap_card("recap_ch05.svg", "Chapter 5 recap — Lonely Days", [
        ("THE PLACE", "Kufi, a village in south-western Nigeria, where custom is enforced by elders and gossip."),
        ("THE RITES", "Shaved head, black cloth, the widow's road, the libation, the confession, the cap-picking ceremony."),
        ("THE REFUSAL", "Yaremi turns down Ayanwale, Olonade and Lanwa, and refuses to pick a cap."),
        ("THE PRICE", "The elders threaten her property and her place in the village; she takes off the widow's cloth anyway."),
    ])


def recap_ch06() -> None:
    recap_card("recap_ch06.svg", "Chapter 6 recap — Native Son", [
        ("FEAR", "Bigger kills Mary Dalton by accident and discovers that the killing feels like the first thing he has ever done."),
        ("FLIGHT", "He draws Bessie into the plan, kills her too, and is hunted across the rooftops of the South Side."),
        ("FATE", "Buckley prosecutes, Max explains, and the court converts a man's life into a lesson about environment."),
        ("THE LIMIT", "Even Max's sympathy cannot see Bigger as a person; the novel ends with a man alone in a cell."),
    ])


FIGURES = [
    "ch03_othello_arc", "ch03_othello_web",
    "ch04_faceless_map", "ch04_faceless_books",
    "ch05_kufi_flow", "ch05_four_widows",
    "ch06_bigger_arc", "ch06_native_web",
    "recap_ch01", "recap_ch02", "recap_ch03", "recap_ch04", "recap_ch05", "recap_ch06",
]
