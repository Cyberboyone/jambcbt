"""Chapter 5–6 figures and the six recap cards for Literature Volume 1."""

from __future__ import annotations

from common import (
    AMBER, BLUE, BORDER, GREEN, GREEN_LIGHT, LIGHT_BG, MUTED, NAVY, PURPLE, RED,
    SLATE, arrow, dot, line, path, rect, recap_card, svg, t, wrap_text, write_svg,
)

W = 760


# ── chapter 5 ─────────────────────────────────────────────────────────────
def ch05_reading_steps() -> None:
    w, h = 760, 330
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="#FFFFFF" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "Reading a Poem in Six Steps", size=13, weight="bold"))
    b.append(t(w / 2, 44, "The order matters: each step answers a question the next one assumes", size=9.2, fill=MUTED))
    steps = [
        ("1", "Say it aloud", "Sound first. Where does it slow, stop, ring?", GREEN),
        ("2", "Who speaks?", "The persona — not necessarily the poet.", BLUE),
        ("3", "What is the scene?", "The literal situation in one sentence.", AMBER),
        ("4", "What is the argument?", "The movement from line to line: turn, concession, conclusion.", PURPLE),
        ("5", "Name the devices", "Only those that do work; a list is not an answer.", RED),
        ("6", "Say what it is for", "Tone and theme, in one sentence you could defend.", GREEN),
    ]
    for i, (n, head, body, col) in enumerate(steps):
        x = 28 + (i % 3) * 244
        y = 66 + (i // 3) * 118
        b.append(rect(x, y, 224, 104, "#FFFFFF", col, 8, 1.4))
        b.append(dot(x + 26, y + 28, 13, col))
        b.append(t(x + 26, y + 32, n, size=11, weight="bold", fill="#FFFFFF"))
        b.append(t(x + 48, y + 26, head, size=9.8, weight="bold", fill=col, anchor="start"))
        for j, ln in enumerate(wrap_text(body, 8.2, 188)):
            b.append(t(x + 48, y + 42 + j * 11, ln, size=8.2, fill=SLATE, anchor="start"))
    b.append(t(w / 2, h - 30, "A poem is not a riddle with a hidden answer; it is a performance you are asked to describe.",
               size=8.8, fill=MUTED))
    b.append(t(w / 2, h - 14, "Steps 1 to 3 are comprehension. Steps 4 to 6 are the marks.", size=8.8, weight="bold", fill=GREEN))
    write_svg("ch05_reading_steps.svg", svg(w, h, "\n".join(b)))


def ch05_metre() -> None:
    w, h = 760, 300
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="{LIGHT_BG}" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "The Five Feet", size=13, weight="bold"))
    b.append(t(w / 2, 44, "A foot is a pattern of stressed (—) and unstressed (˘) syllables", size=9.2, fill=MUTED))
    feet = [
        ("iamb", "˘ —", "a-BOVE", GREEN, "the heartbeat of English verse"),
        ("trochee", "— ˘", "DOU-ble", BLUE, "falls away; used for chant and grief"),
        ("anapaest", "˘ ˘ —", "in-ter-VENE", AMBER, "hurries; used for motion"),
        ("dactyl", "— ˘ ˘", "MER-ri-ly", PURPLE, "trips; used for dance"),
        ("spondee", "— —", "HEART-BREAK", RED, "heavy; rare, and always deliberate"),
    ]
    for i, (name, pat, eg, col, note) in enumerate(feet):
        y = 68 + i * 42
        b.append(rect(24, y, 712, 34, "#FFFFFF", col, 6, 1.2))
        b.append(t(44, y + 21, name, size=9.6, weight="bold", fill=col, anchor="start"))
        b.append(t(180, y + 23, pat, size=13, fill=NAVY, anchor="start"))
        b.append(t(270, y + 21, eg, size=9.2, fill=SLATE, anchor="start"))
        b.append(t(420, y + 21, note, size=8.4, fill=MUTED, anchor="start"))
    b.append(t(w / 2, h - 16, "Count the feet per line for the metre: five iambs is iambic pentameter, the default of English poetry.",
               size=8.6, fill=MUTED))
    write_svg("ch05_metre.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


# ── chapter 6 ─────────────────────────────────────────────────────────────
def ch06_device_families() -> None:
    w, h = 760, 360
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="#FFFFFF" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "Five Families of Device", size=13, weight="bold"))
    b.append(t(w / 2, 44, "Almost every device in the paper belongs to one of these — name the family before you name the device", size=9.2, fill=MUTED))
    fams = [
        ("COMPARISON", BLUE, ["simile", "metaphor", "personification", "analogy"], "one thing is said to be another"),
        ("SOUND", GREEN, ["alliteration", "assonance", "onomatopoeia", "rhyme"], "the ear carries meaning"),
        ("INVERSION", RED, ["verbal irony", "sarcasm", "hyperbole", "litotes"], "the words do not mean what they say"),
        ("SUBSTITUTION", AMBER, ["metonymy", "synecdoche", "euphemism", "periphrasis"], "a part, a neighbour or a softer word stands in"),
        ("REFERENCE", PURPLE, ["allusion", "symbol", "allegory", "motif"], "the text points outside itself"),
    ]
    for i, (name, col, items, gloss) in enumerate(fams):
        x = 20 + i * 146
        b.append(rect(x, 62, 138, 254, "#FFFFFF", col, 8, 1.4))
        b.append(f'<rect x="{x}" y="62" width="138" height="6" rx="3" fill="{col}"/>')
        b.append(t(x + 69, 86, name, size=9.0, weight="bold", fill=col))
        for j, ln in enumerate(wrap_text(gloss, 7.4, 116)):
            b.append(t(x + 69, 100 + j * 9.6, ln, size=7.4, fill=MUTED))
        for j, it in enumerate(items):
            b.append(rect(x + 10, 132 + j * 30, 118, 24, LIGHT_BG, BORDER, 4, 0.9))
            b.append(t(x + 69, 148 + j * 30, it, size=7.8, fill=SLATE))
    b.append(t(w / 2, h - 26, "A question rarely asks “name the device”. It asks what the device does — and the family is the answer's first half.",
               size=8.4, fill=MUTED))
    b.append(t(w / 2, h - 12, "“It is a metaphor” earns one mark. “It is a metaphor, and it makes the abstract fear into a physical weight” earns all of them.",
               size=8.4, fill=GREEN, weight="bold"))
    write_svg("ch06_device_families.svg", svg(w, h, "\n".join(b)))


def ch06_unseen_steps() -> None:
    w, h = 760, 320
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="{LIGHT_BG}" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "The Unseen Extract: Four Moves in Four Minutes", size=13, weight="bold"))
    b.append(t(w / 2, 44, "You are not being asked whether you like it; you are being asked what it is doing", size=9.2, fill=MUTED))
    moves = [
        ("1", "PLACE IT", "Genre, speaker, situation — in one line each.", GREEN),
        ("2", "FOLLOW THE TURN", "Where does the extract change direction? That hinge is the answer to half the questions.", BLUE),
        ("3", "NAME TWO DEVICES", "Choose the two that carry the tone, not the two you can spell.", AMBER),
        ("4", "SAY THE EFFECT", "Finish every answer with what it does to the reader.", PURPLE),
    ]
    for i, (n, head, body, col) in enumerate(moves):
        x = 26 + i * 182
        b.append(rect(x, 66, 170, 168, "#FFFFFF", col, 8, 1.5))
        b.append(f'<rect x="{x}" y="66" width="170" height="6" rx="3" fill="{col}"/>')
        b.append(dot(x + 24, 96, 12, col))
        b.append(t(x + 24, 100, n, size=10.5, weight="bold", fill="#FFFFFF"))
        b.append(t(x + 85, 100, head, size=8.6, weight="bold", fill=col))
        for j, ln in enumerate(wrap_text(body, 8.2, 142)):
            b.append(t(x + 85, 122 + j * 11, ln, size=8.2, fill=SLATE))
        if i < 3:
            b.append(arrow(x + 174, 150, x + 180, 150, MUTED, 1.4))
    b.append(t(w / 2, 262, "The four moves are the same four for a poem, a speech from a play and a paragraph of a novel —",
               size=8.6, fill=SLATE))
    b.append(t(w / 2, 278, "which is why the unseen section rewards practice more than reading.",
               size=8.6, fill=SLATE))
    b.append(t(w / 2, h - 12, "Never answer “it creates suspense” without saying how. Tone without evidence is a guess.",
               size=8.6, weight="bold", fill=GREEN))
    write_svg("ch06_unseen_steps.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


# ── recap cards ───────────────────────────────────────────────────────────
def recap_ch01() -> None:
    recap_card("recap_ch01.svg", "Chapter 1 recap — what literature is, and how it is tested", [
        ("THE THREE GENRES", "Drama is told in action, prose in narration, poetry in compression. Name the genre before you answer; every question is shaped by it."),
        ("THE FOUR LEVELS", "Literal, figurative, structural, evaluative. Most answers stop at the second, and the marks for the last two are the ones left behind."),
        ("WHAT IS TESTED", "Sections 1–5: drama, prose, poetry, general principles, unseen appreciation. Principles and devices carry more questions than the set texts do."),
        ("THE ANSWER'S SHAPE", "Name the device, quote it, say what it does, say what it costs or earns the reader. Four moves, and no marks for adjectives alone."),
    ])


def recap_ch02() -> None:
    recap_card("recap_ch02.svg", "Chapter 2 recap — the types and the shape of a play", [
        ("THE AXIS", "Tragedy destroys the hero; comedy rescues him; tragicomedy does both in turn. Melodrama is feeling without truth; farce is the body without the mind."),
        ("THE PLOT", "Exposition, inciting incident, rising action, climax, falling action, resolution. The climax is the irreversible act, not the loudest one."),
        ("THE UNITIES", "Time, place and action. Classical drama keeps them; Shakespeare breaks them and the paper asks which."),
        ("THE ONE-LINE TEST", "Tragedy: a flaw, a fall, and pity and fear. Comedy: a confusion, a recognition, and a marriage."),
    ])


def recap_ch03() -> None:
    recap_card("recap_ch03.svg", "Chapter 3 recap — technique on the page and on the stage", [
        ("THE THREE IRONIES", "Verbal: the words mean the opposite. Dramatic: we know what the character does not. Situational: the event reverses the expectation."),
        ("THE THREE SPEECHES", "Soliloquy: alone, to the audience. Aside: among others, unheard by them. Monologue: one voice, heard by those on stage."),
        ("STAGE BUSINESS", "Stage directions, costume, décor, music, dance and mime are all evidence. Quote them the way you quote lines."),
        ("WHY IT MATTERS", "Drama is written to be performed; a question about technique is a question about what the audience sees and knows."),
    ])


def recap_ch04() -> None:
    recap_card("recap_ch04.svg", "Chapter 4 recap — prose types and narrative technique", [
        ("THE TYPES", "Fiction: novel, novella, short story. Non-fiction: biography, autobiography, memoir. Faction mixes fact and invention."),
        ("POINT OF VIEW", "First, second, third-limited, omniscient, stream of consciousness. The choice decides what the book can know."),
        ("CHARACTER", "Round and flat describe depth; foil and stock describe function. A character can be both flat and a foil."),
        ("SETTING", "Temporal and spatial. Setting is not wallpaper: it explains what the characters can imagine doing."),
    ])


def recap_ch05() -> None:
    recap_card("recap_ch05.svg", "Chapter 5 recap — poetry types and the reading method", [
        ("THE TYPES", "Sonnet (14 lines), ode, lyric, elegy, ballad, panegyric, epic, blank verse. Each has a shape the examiner expects you to name."),
        ("THE METHOD", "Read aloud, find the speaker, fix the scene, follow the argument, name the devices that work, state the tone and theme."),
        ("THE SOUND", "Metre, rhyme, assonance, alliteration, onomatopoeia. Sound is not decoration; it is part of the meaning."),
        ("THE PERSONA", "The speaker is not the poet. A poem in the first person can be entirely dramatic."),
    ])


def recap_ch06() -> None:
    recap_card("recap_ch06.svg", "Chapter 6 recap — devices and unseen appreciation", [
        ("FIVE FAMILIES", "Comparison, sound, inversion, substitution, reference. Name the family, then the device, then the effect."),
        ("THE EFFECT", "Every answer ends with what the device does to the reader or the listener: it slows, it exposes, it dignifies, it deflates."),
        ("THE UNSEEN", "Place it, follow the turn, name two devices, say the effect. Four moves, four minutes, every genre."),
        ("THE TRAP", "A list of devices is not analysis. Three named and used beats eight named and counted."),
    ])


FIGURES = [
    "ch05_reading_steps", "ch05_metre", "ch06_device_families", "ch06_unseen_steps",
    "recap_ch01", "recap_ch02", "recap_ch03", "recap_ch04", "recap_ch05", "recap_ch06",
]
