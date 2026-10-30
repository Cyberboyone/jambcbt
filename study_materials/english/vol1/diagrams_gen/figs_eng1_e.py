"""Chapter 5 figures — modifiers, prepositions and connectors."""

from common import BLUE, GREEN, NAVY, RED
from figlib import card_row, steps_fig, table_fig


def main() -> None:
    table_fig(
        "ch05_comparatives.svg",
        "Positive, comparative and superlative — and the four irregulars",
        ["Positive", "Comparative", "Superlative", "Rule"],
        [
            ("tall", "taller", "tallest", "one syllable: add -er, -est"),
            ("happy", "happier", "happiest", "two syllables ending -y: change y to i"),
            ("careful", "more careful", "most careful", "two syllables or more: more, most"),
            ("good", "better", "best", "irregular"),
            ("bad", "worse", "worst", "irregular"),
            ("many", "more", "most", "irregular"),
            ("little", "less", "least", "irregular"),
        ],
        weights=[1.2, 1.4, 1.4, 3.0],
        note="Never two comparatives in one phrase: more better, most tallest and taller than the two are all wrong.",
    )

    table_fig(
        "ch05_prepositions.svg",
        "Prepositions by the question they answer",
        ["Question", "Prepositions", "Example"],
        [
            ("When?", "at, on, in, by, during, for, since, until", "at noon, on Monday, in June, since 2020"),
            ("Where?", "at, on, in, under, over, between, among, beside", "at the door, on the table, between the two boxes"),
            ("Where to?", "to, into, onto, towards, through, across", "to Lagos, into the room, through the wall"),
            ("Fixed pairs", "depend on, insist on, consist of, comply with, prefer to", "It depends on the weather."),
        ],
        weights=[1.1, 2.6, 2.8],
        note="In denotes a period or an enclosed space; on denotes a surface or a day; at denotes a point. Every time preposition question is that sentence.",
    )

    table_fig(
        "ch05_connectors.svg",
        "Connectors grouped by the job the sentence needs",
        ["Job", "Connectors", "Punctuation"],
        [
            ("Addition", "and, also, besides, moreover, furthermore", "moreover takes a comma after it"),
            ("Contrast", "but, yet, although, though, whereas, however, nevertheless", "although joins clauses; however joins sentences"),
            ("Cause", "because, since, as, for", "because may not follow a comma alone"),
            ("Result", "so, therefore, thus, consequently, hence", "so joins clauses; therefore takes a semicolon or a full stop"),
            ("Purpose", "so that, in order that, lest", "lest takes should or the bare verb"),
            ("Sequence", "first, then, next, finally, meanwhile", "usually at the start of a clause"),
        ],
        weights=[1.0, 3.4, 2.6],
        note="The examiner rarely asks what a connector means. He asks whether the clause before it and the clause after it are joined legally.",
    )

    card_row(
        "ch05_modifiers.svg",
        "Three modifier faults, and the repair each one needs",
        [
            ("Dangling", "Walking to school, the rain began. The rain was not walking — name the doer: Walking to school, I was caught in the rain."),
            ("Misplaced", "She served tea to the guests in paper cups. The guests were not in cups: She served tea in paper cups to the guests."),
            ("Squinting", "What he said clearly annoyed her. Did he say it clearly, or was she clearly annoyed? Move the adverb."),
        ],
        cols=3,
        note="An adverb of manner sits next to the verb it describes, an only sits immediately before the word it limits, and a participial phrase opens with the doer's name.",
        accent=RED,
    )
