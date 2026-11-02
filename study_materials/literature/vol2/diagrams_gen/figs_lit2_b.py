"""The set-text figures: Othello, Native Son and the dossier grid."""

from __future__ import annotations

from common import (
    AMBER, BLUE, BORDER, GREEN, GREEN_LIGHT, GREEN_MID, LIGHT_BG, MUTED, NAVY,
    PURPLE, RED, SLATE, arrow, dot, line, rect, svg, t, wrap_text, write_svg,
)

W = 760


def _head(title, sub=None):
    b = [t(W / 2, 26, title, size=13, weight="bold")]
    if sub:
        b.append(t(W / 2, 45, sub, size=9.2, fill=MUTED))
    return b


# ── Othello: the map ──────────────────────────────────────────────────────
def ch05_map() -> None:
    w, h = 760, 340
    b = [rect(0, 0, w, h, LIGHT_BG, BORDER, 10, 1.2)]
    b += _head("Othello: Two Cities and One Web",
               "Venice is law and reputation; Cyprus is a garrison with no law but the general's")
    # two city panels
    b.append(rect(20, 62, 330, 250, "#FFFFFF", BLUE, 8, 1.5))
    b.append(t(185, 86, "VENICE", size=12, weight="bold", fill=BLUE))
    b.append(t(185, 104, "the city that sentences by name", size=8.6, fill=MUTED))
    for j, s in enumerate(["Brabantio: the father who owns a daughter",
                           "the Duke: the law that prefers a story",
                           "the Senate: a room where a Moor is useful",
                           "Desdemona: the daughter who chooses"]):
        for k, ln in enumerate(wrap_text("• " + s, 8.6, 292)):
            b.append(t(34, 130 + j * 34 + k * 11, ln, size=8.6, fill=SLATE, anchor="start"))
    b.append(rect(410, 62, 330, 250, "#FFFFFF", AMBER, 8, 1.5))
    b.append(t(575, 86, "CYPRUS", size=12, weight="bold", fill=AMBER))
    b.append(t(575, 104, "the garrison where reputation cannot be checked", size=8.6, fill=MUTED))
    for j, s in enumerate(["the storm scatters the fleet",
                           "the watch, the brawl, the demotion",
                           "the handkerchief, the eavesdropping",
                           "the bed, the sword, the truth too late"]):
        for k, ln in enumerate(wrap_text("• " + s, 8.6, 292)):
            b.append(t(424, 130 + j * 34 + k * 11, ln, size=8.6, fill=SLATE, anchor="start"))
    b.append(arrow(352, 186, 408, 186, GREEN, 2.0))
    b.append(t(w / 2, h - 12, "Everything that Venice restrains, Cyprus releases: the play's argument is carried by the move.", size=8.6, fill=MUTED))
    write_svg("ch05_map.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


# ── Othello: Iago's three engines ────────────────────────────────────────
def ch05_iago() -> None:
    w, h = 760, 310
    b = [rect(0, 0, w, h, "#FFFFFF", BORDER, 10, 1.2)]
    b += _head("Iago's Three Engines",
               "He does not lie about facts. He arranges them, and lets the general finish the thought")
    b.append(rect(300, 68, 160, 60, GREEN_LIGHT, GREEN, 8, 1.6))
    b.append(t(380, 94, "IAGO", size=13, weight="bold", fill=GREEN))
    b.append(t(380, 112, "“I am not what I am”", size=8.4, fill=SLATE))
    engines = [
        ("THE PLANT", "“I like not that.”", "an unfinished observation, dropped and not explained", 132),
        ("THE PROOF", "the handkerchief in Cassio's room", "a physical object, presented as evidence", 380),
        ("THE ECHO", "“Indeed?” “Is't possible?”", "the general's own words returned to him", 628),
    ]
    for head, quote, body, cx in engines:
        b.append(rect(cx - 118, 180, 236, 92, "#FFFFFF", AMBER, 7, 1.3))
        b.append(t(cx, 200, head, size=9.6, weight="bold", fill=AMBER))
        b.append(t(cx, 218, quote, size=8.4, fill=SLATE))
        for j, ln in enumerate(wrap_text(body, 8.2, 212)):
            b.append(t(cx, 236 + j * 11, ln, size=8.2, fill=MUTED))
        b.append(arrow(380, 132, cx, 176, GREEN, 1.7))
    b.append(t(w / 2, h - 12, "Each engine needs the last: a plant without proof is gossip, and proof without an echo is a fact Othello would refuse.", size=8.6, fill=MUTED))
    write_svg("ch05_iago.svg", svg(w, h, "\n".join(b)))


# ── Native Son: the three books ──────────────────────────────────────────
def ch06_arc() -> None:
    w, h = 760, 320
    b = [rect(0, 0, w, h, LIGHT_BG, BORDER, 10, 1.2)]
    b += _head("Native Son: Fear, Flight, Fate",
               "Three books, one direction: a man runs, and the running is the plot")
    stages = [
        ("FEAR", "Book One", ["the rat in the dark room", "the Dalton house", "the car, the drink, the murder"], BLUE),
        ("FLIGHT", "Book Two", ["the furnace, the alibi", "Bessie, the roof, the snow", "the capture"], AMBER),
        ("FATE", "Book Three", ["the confession", "Max's argument", "the cell, and the last word"], RED),
    ]
    for i, (head, sub, pts, col) in enumerate(stages):
        x = 24 + i * 244
        b.append(rect(x, 66, 228, 210, "#FFFFFF", col, 8, 1.5))
        b.append(f'<rect x="{x}" y="66" width="228" height="6" rx="3" fill="{col}"/>')
        b.append(t(x + 114, 94, head, size=13, weight="bold", fill=col))
        b.append(t(x + 114, 112, sub, size=8.6, fill=MUTED))
        for j, p in enumerate(pts):
            for k, ln in enumerate(wrap_text("• " + p, 8.6, 196)):
                b.append(t(x + 16, 140 + j * 32 + k * 11, ln, size=8.6, fill=SLATE, anchor="start"))
        if i < 2:
            b.append(arrow(x + 230, 170, x + 240, 170, GREEN, 2.0))
    b.append(t(w / 2, h - 12, "The three titles are the argument: Wright names the sequence that produces the crime before the crime occurs.", size=8.6, fill=MUTED))
    write_svg("ch06_arc.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


# ── Native Son: the map ───────────────────────────────────────────────────
def ch06_map() -> None:
    w, h = 760, 310
    b = [rect(0, 0, w, h, "#FFFFFF", BORDER, 10, 1.2)]
    b += _head("Native Son: Four Rooms and What Each One Allows",
               "Bigger is defined by the space he is in — and by the one space he is never allowed")
    rooms = [
        ("THE RAT ROOM", "one room, four people, no privacy", "the family as a pressure", BLUE),
        ("THE DALTON HOUSE", "space, blindness, a daughter who touches him", "charity as a trap", AMBER),
        ("THE FURNACE", "the building's throat", "the crime becomes literal", RED),
        ("THE CELL", "the only room of his own", "the confession, and the argument", PURPLE),
    ]
    for i, (head, body, tail, col) in enumerate(rooms):
        x = 20 + (i % 2) * 370
        y = 66 + (i // 2) * 108
        b.append(rect(x, y, 350, 94, "#FFFFFF", col, 8, 1.4))
        b.append(t(x + 16, y + 24, head, size=9.6, weight="bold", fill=col, anchor="start"))
        for j, ln in enumerate(wrap_text(body, 8.6, 316)):
            b.append(t(x + 16, y + 42 + j * 11, ln, size=8.6, fill=SLATE, anchor="start"))
        b.append(t(x + 16, y + 80, "→ " + tail, size=8.4, fill=MUTED, anchor="start"))
    b.append(t(w / 2, h - 12, "Ask of any scene: which room is this, and what does this room permit that the last one did not?", size=8.6, fill=MUTED))
    write_svg("ch06_map.svg", svg(w, h, "\n".join(b)))


# ── the dossier grid ──────────────────────────────────────────────────────
def ch07_dossier() -> None:
    w, h = 760, 320
    b = [rect(0, 0, w, h, LIGHT_BG, BORDER, 10, 1.2)]
    b += _head("The Dossier: Five Parts Per Text",
               "What you build after one reading, so that revision stops being a rereading")
    rows = [
        ("1", "World", "the setting, the institutions, and the rules that press on the characters"),
        ("2", "Spine", "the story in six beats, each one a change rather than an event"),
        ("3", "Cast", "name, want, obstacle, function — one line each"),
        ("4", "Moments", "five scenes that carry several questions and can be quoted in six words"),
        ("5", "Claims", "three arguable sentences, the openings of three essays"),
    ]
    for i, (num, head, body) in enumerate(rows):
        y = 66 + i * 44
        b.append(rect(20, y, 30, 30, GREEN, GREEN, 5, 0))
        b.append(t(35, y + 20, num, size=10, weight="bold", fill="#FFFFFF"))
        b.append(t(62, y + 13, head, size=9.6, weight="bold", fill=NAVY, anchor="start"))
        b.append(t(140, y + 13, body, size=8.6, fill=MUTED, anchor="start"))
    b.append(t(w / 2, h - 14, "Five parts a text, an hour of work, and the text stops being a blur and becomes a set of answerable questions.", size=8.6, fill=MUTED))
    write_svg("ch07_dossier.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


FIGURES = [ch05_map, ch05_iago, ch06_arc, ch06_map, ch07_dossier]
