"""Recap cards for the eight chapters of Literature Volume 2."""

from __future__ import annotations

from common import GREEN, BLUE, AMBER, RED, PURPLE, recap_card


def recap_ch01() -> None:
    recap_card("recap_ch01.svg", "Chapter 1 recap — the four shapes of a set-text question", [
        ("FACT", "Who speaks, where, when. One word, no argument. The answers live in your bank, not in your memory."),
        ("FUNCTION", "What the part does in the structure. Answer with a relationship, never with a summary."),
        ("EFFECT", "What the reader or audience feels, and why these words produce it."),
        ("JUDGEMENT", "How far the text persuades, and what the persuasion costs. A claim, an objection, a verdict."),
    ])


def recap_ch02() -> None:
    recap_card("recap_ch02.svg", "Chapter 2 recap — the bank", [
        ("ONE ROW PER UNIT", "Scene or chapter, five words. If you cannot compress it, you have not understood it."),
        ("WHO AND WHAT THEY WANT", "Names, and the desire each one brings into the room."),
        ("THE TURN", "What has changed by the end of the unit. No turn means the unit is establishing, not advancing."),
        ("ONE QUOTATION", "Six to ten words, exact, and used in an answer rather than admired in a notebook."),
    ])


def recap_ch03() -> None:
    recap_card("recap_ch03.svg", "Chapter 3 recap — character", [
        ("DESIRE", "What he wants, stated as a verb, in the first scene he appears."),
        ("OBSTACLE", "Who or what blocks it, and what that blockage says about the world of the text."),
        ("COST", "What he does when the want becomes expensive. That choice is the character."),
        ("FUNCTION", "What the play loses without him. If the answer is nothing, he is scenery."),
    ])


def recap_ch04() -> None:
    recap_card("recap_ch04.svg", "Chapter 4 recap — the theme ledger", [
        ("CLAIM", "A sentence with a verb, arguable by a reasonable reader, and about this text only."),
        ("FOR", "Three moments from different parts of the text. Three is the minimum for a claim."),
        ("AGAINST", "Two moments that push the other way. A ledger without this column is a summary."),
        ("VERDICT", "What the text finally does with the contradiction, and what it leaves unresolved."),
    ])


def recap_ch05() -> None:
    recap_card("recap_ch05.svg", "Chapter 5 recap — Othello", [
        ("TWO CITIES", "Venice restrains by law and name; Cyprus releases. The move is the argument."),
        ("THREE ENGINES", "The plant, the proof, the echo. Iago arranges; Othello supplies the conclusion."),
        ("THE HANDKERCHIEF", "A love token turned into evidence, and evidence is what the general asks for."),
        ("THE COST", "Desdemona, Emilia, Othello, and the reputation he dies trying to protect."),
    ])


def recap_ch06() -> None:
    recap_card("recap_ch06.svg", "Chapter 6 recap — Native Son", [
        ("THREE BOOKS", "Fear, Flight, Fate: the titles name the sequence that produces the crime."),
        ("FOUR ROOMS", "The rat room, the Dalton house, the furnace, the cell. Space permits and forbids."),
        ("BLINDNESS", "Mrs Dalton's eyes, the snow, the newspapers: nobody sees Bigger, so he acts to be seen."),
        ("THE ARGUMENT", "Max explains the system; Bigger asks whether that is an excuse. The novel ends on the question."),
    ])


def recap_ch07() -> None:
    recap_card("recap_ch07.svg", "Chapter 7 recap — the three African texts", [
        ("PREMISE", "Each text can be stated in three sentences: who, where, and the trouble that starts it."),
        ("CAST GRID", "Name, function, one want, one obstacle. Fill it from your own copy, not from a summary."),
        ("TEN PASSAGES", "Marked and numbered now, so that revision in the last week is rereading, not hunting."),
        ("TWELVE QUESTIONS", "Answered in note form, in the four shapes the paper uses."),
    ])


def recap_ch08() -> None:
    recap_card("recap_ch08.svg", "Chapter 8 recap — comparison and the hall", [
        ("ONE AXIS", "Compare on a single axis per paragraph: power, voice, cost, or silence."),
        ("BOTH TEXTS", "Every paragraph names both texts and gives each one evidence."),
        ("THE DIFFERENCE", "The paragraph is about the difference, not about the two texts side by side."),
        ("THE CLOCK", "Ten to fourteen set-text questions, one mark each. Never spend four minutes on one."),
    ])


FIGURES = [recap_ch01, recap_ch02, recap_ch03, recap_ch04,
           recap_ch05, recap_ch06, recap_ch07, recap_ch08]
