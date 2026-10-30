"""Chapter 4 figures — summary: finding the points."""

from common import BLUE, GREEN, MUTED, NAVY, PURPLE, RED, SLATE
from figlib import card_row, steps_fig, table_fig


def main() -> None:
    card_row(
        "ch04_rules.svg",
        "What a summary is, in four rules",
        [
            ("Shorter", "It is a fraction of the original — the exam instruction usually says *in one sentence* or *in not more than twenty words*."),
            ("The same meaning", "It says what the passage says, not what you think about it. No opinion is ever required."),
            ("In your words", "Lifting whole sentences loses marks; the words must be yours, the sense must be the writer's."),
            ("Only the main points", "Examples, figures, names and repetition are paid for in words and earn nothing."),
        ],
        cols=2,
        note="A summary question is marked against a list of points. Find the list in the passage, write it in your own words, and count your words before you stop.",
    )

    table_fig(
        "ch04_keep_drop.svg",
        "What to keep and what to drop",
        ["Keep", "Drop", "Why"],
        [
            ("the topic sentence of each paragraph", "the examples that follow it", "the example proves the point; the point is the summary"),
            ("the claim, not the quotation", "the words of the person quoted", "a quotation is evidence, and evidence is detail"),
            ("reasons linked by *because*", "lists of three or more items", "one reason can be summarised; a list is a list"),
            ("names only when the question asks who", "dates, figures and percentages", "a number is a detail unless the question turns on it"),
            ("the writer's conclusion", "the writer's asides and jokes", "the conclusion is the point of the passage"),
        ],
        weights=[2.0, 1.9, 2.4],
        note="If dropping a sentence leaves the passage's meaning intact, that sentence was detail. If dropping it breaks the argument, it was a point.",
    )

    steps_fig(
        "ch04_method.svg",
        "The five moves of a summary answer",
        [
            ("READ", "the instruction twice — it fixes the length and the number of points"),
            ("FIND", "the topic sentence of every paragraph; number them"),
            ("STRIP", "the examples, figures and quotations from each one"),
            ("JOIN", "the points with *and*, *but*, *because* or *so that*"),
            ("COUNT", "the words, and cut until the limit is met"),
        ],
        note="The instruction is the marking scheme. *In one sentence* means one finite verb; *in not more than twenty words* means twenty words and no more.",
    )

    table_fig(
        "ch04_marks.svg",
        "Where the marks on a summary question go",
        ["What you did", "What it earns", "What it costs"],
        [
            ("every point present, in your own words", "full content marks", "—"),
            ("every point present, lifted verbatim", "content marks", "expression marks for the lifting"),
            ("one point missing", "most content marks", "the mark for that point"),
            ("examples included", "the same content marks", "words spent, so a point may fall outside the limit"),
            ("over the word limit", "content marks", "marks deducted for length, however good the answer"),
        ],
        weights=[2.1, 1.9, 2.3],
        note="Markers count points before they count words. Write the points first in rough, then compress — never compress while you are still deciding what the points are.",
    )
