"""Chapter 3–4 figures for Literature Volume 1."""

from __future__ import annotations

from common import (
    AMBER, BLUE, BORDER, GREEN, GREEN_LIGHT, LIGHT_BG, MUTED, NAVY, PURPLE, RED,
    SLATE, arrow, dot, line, path, rect, svg, t, wrap_text, write_svg,
)

W = 760


# ── chapter 3 ─────────────────────────────────────────────────────────────
def ch03_irony() -> None:
    w, h = 760, 350
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="#FFFFFF" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "Three Ironies — and the One Word That Separates Them", size=13, weight="bold"))
    b.append(t(w / 2, 44, "All three are a gap between what is said and what is true. The gap is in a different place each time.", size=9.2, fill=MUTED))
    cols = [
        ("VERBAL", BLUE, "between the words and the meaning",
         "A character says the opposite of what is meant, and the listener (or the reader) is meant to hear it.",
         "“Fine weather,” says the traveller, in the storm."),
        ("DRAMATIC", RED, "between the character's knowledge and ours",
         "The audience knows what the character does not. The character's confidence is the joke, or the horror.",
         "Othello trusts a man the audience already knows is lying."),
        ("SITUATIONAL", AMBER, "between the expectation and the event",
         "The outcome is the reverse of what the situation promised — and no one has said anything ironic at all.",
         "A fire station burns down."),
    ]
    for i, (name, col, gap, body, eg) in enumerate(cols):
        x = 22 + i * 242
        b.append(rect(x, 60, 232, 250, "#FFFFFF", col, 8, 1.5))
        b.append(f'<rect x="{x}" y="60" width="232" height="6" rx="3" fill="{col}"/>')
        b.append(t(x + 116, 86, name, size=12, weight="bold", fill=col))
        for j, ln in enumerate(wrap_text(gap, 8.4, 204)):
            b.append(t(x + 116, 104 + j * 11, ln, size=8.4, fill=MUTED))
        b.append(line(x + 14, 132, x + 218, 132, BORDER, 1.0))
        for j, ln in enumerate(wrap_text(body, 8.6, 200)):
            b.append(t(x + 116, 150 + j * 12, ln, size=8.6, fill=SLATE))
        b.append(line(x + 14, 232, x + 218, 232, BORDER, 1.0))
        b.append(t(x + 116, 248, "for example", size=7.8, fill=MUTED))
        for j, ln in enumerate(wrap_text(eg, 8.4, 200)):
            b.append(t(x + 116, 262 + j * 11, ln, size=8.4, fill=col, weight="bold"))
    b.append(t(w / 2, h - 12, "Ask where the gap is: in a mouth, in a head, or in the world.", size=8.8, fill=MUTED))
    write_svg("ch03_irony.svg", svg(w, h, "\n".join(b)))


def ch03_speech_modes() -> None:
    w, h = 760, 320
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="{LIGHT_BG}" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "Soliloquy, Aside, Monologue — Who Hears It?", size=13, weight="bold"))
    b.append(t(w / 2, 44, "Three ways of speaking on a stage, separated by the audience the words are for.", size=9.2, fill=MUTED))
    # stage
    b.append(rect(80, 78, 600, 66, "#FFFFFF", BORDER, 8, 1.3))
    b.append(t(380, 100, "THE STAGE", size=8.4, weight="bold", fill=MUTED))
    b.append(rect(120, 110, 90, 24, GREEN_LIGHT, GREEN, 5, 1.2))
    b.append(t(165, 126, "speaker", size=8.6, fill=GREEN))
    b.append(rect(300, 110, 90, 24, GREEN_LIGHT, GREEN, 5, 1.2))
    b.append(t(345, 126, "others", size=8.6, fill=GREEN))
    b.append(rect(560, 110, 90, 24, GREEN_LIGHT, GREEN, 5, 1.2))
    b.append(t(605, 126, "audience", size=8.6, fill=GREEN))
    # three rows
    rows = [
        ("SOLILOQUY", "alone on stage, thinking aloud", "the audience only", GREEN, "Macbeth's “Tomorrow, and tomorrow”"),
        ("ASIDE", "a short remark, others present, unheard by them", "the audience, over the other characters' heads", AMBER, "“He speaks plain cannon” — and no one reacts"),
        ("MONOLOGUE", "one voice sustained, others may be present", "whoever is on stage", BLUE, "a long speech that the others can hear"),
    ]
    for i, (name, what, who, col, eg) in enumerate(rows):
        y = 166 + i * 48
        b.append(rect(80, y, 600, 40, "#FFFFFF", col, 6, 1.3))
        b.append(t(96, y + 16, name, size=9.2, weight="bold", fill=col, anchor="start"))
        b.append(t(96, y + 30, what, size=8.0, fill=MUTED, anchor="start"))
        b.append(t(430, y + 18, who, size=8.2, fill=SLATE, anchor="start"))
        b.append(t(430, y + 31, eg, size=7.6, fill=MUTED, anchor="start"))
    b.append(t(w / 2, h - 12, "If another character could answer, it is not a soliloquy; if they cannot hear it, it is an aside.",
               size=8.8, fill=MUTED))
    write_svg("ch03_speech_modes.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


# ── chapter 4 ─────────────────────────────────────────────────────────────
def ch04_pov() -> None:
    w, h = 760, 360
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="#FFFFFF" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "Point of View — Where the Narrator Stands", size=13, weight="bold"))
    b.append(t(w / 2, 44, "Five positions, and the thing each one can and cannot tell you", size=9.2, fill=MUTED))
    b.append(dot(380, 96, 26, GREEN_LIGHT, GREEN))
    b.append(t(380, 100, "STORY", size=8.0, weight="bold", fill=GREEN))
    nodes = [
        (110, 150, "FIRST PERSON", BLUE, "“I” — inside the story", "knows one mind: unreliable, limited, close"),
        (300, 150, "THIRD LIMITED", AMBER, "“he/she” — one mind", "knows one mind from outside"),
        (490, 150, "OMNISCIENT", PURPLE, "“he/she” — every mind", "knows all minds, and comments"),
        (110, 250, "SECOND PERSON", GREEN, "“you” — the reader is addressed", "rare; makes the reader complicit"),
        (380, 250, "STREAM OF CONSCIOUSNESS", RED, "thought before it is tidied", "no punctuation of logic; association rules"),
    ]
    for x, y, name, col, sub, note in nodes:
        b.append(line(380, 120, x, y - 6, BORDER, 1.1))
        b.append(rect(x - 108, y, 216, 74, "#FFFFFF", col, 7, 1.4))
        b.append(t(x, y + 18, name, size=9.0, weight="bold", fill=col))
        for j, ln in enumerate(wrap_text(sub, 8.0, 196)):
            b.append(t(x, y + 32 + j * 10, ln, size=8.0, fill=SLATE))
        for j, ln in enumerate(wrap_text(note, 7.8, 196)):
            b.append(t(x, y + 56 + j * 10, ln, size=7.8, fill=MUTED))
    b.append(t(w / 2, h - 12, "The narrating choice is an argument: what the writer lets you know is what the book is about.",
               size=8.8, fill=MUTED))
    write_svg("ch04_pov.svg", svg(w, h, "\n".join(b)))


def ch04_character() -> None:
    w, h = 760, 330
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="{LIGHT_BG}" stroke="{BORDER}" stroke-width="1.2"/>']
    b.append(t(w / 2, 26, "Four Ways to Describe a Character", size=13, weight="bold"))
    b.append(t(w / 2, 44, "Two are about depth, two about function — and a question can ask for either", size=9.2, fill=MUTED))
    quads = [
        ("ROUND", GREEN, "many sides, capable of change", "Test: does the character surprise you, and explainably?"),
        ("FLAT", AMBER, "one side, fixed", "Test: could you predict every line before it is spoken?"),
        ("FOIL", BLUE, "exists to set off another", "Test: does the contrast make the hero clearer?"),
        ("STOCK", PURPLE, "a type, not a person", "Test: is the role all there is — the guard, the gossip?"),
    ]
    for i, (name, col, body, test) in enumerate(quads):
        x = 24 + (i % 2) * 366
        y = 66 + (i // 2) * 112
        b.append(rect(x, y, 348, 96, "#FFFFFF", col, 8, 1.5))
        b.append(f'<rect x="{x}" y="{y}" width="6" height="96" rx="3" fill="{col}"/>')
        b.append(t(x + 22, y + 24, name, size=11.5, weight="bold", fill=col, anchor="start"))
        b.append(t(x + 22, y + 44, body, size=9.0, fill=SLATE, anchor="start"))
        for j, ln in enumerate(wrap_text(test, 8.2, 300)):
            b.append(t(x + 22, y + 64 + j * 11, ln, size=8.2, fill=MUTED, anchor="start"))
    b.append(t(w / 2, h - 16, "And the functional pair: the protagonist drives the action; the antagonist is the force arranged against it.",
               size=8.6, fill=MUTED))
    write_svg("ch04_character.svg", svg(w, h, "\n".join(b), bg=LIGHT_BG))


FIGURES = ["ch03_irony", "ch03_speech_modes", "ch04_pov", "ch04_character"]
