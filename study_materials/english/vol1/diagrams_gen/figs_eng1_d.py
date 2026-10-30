"""Chapter 4 figures — clauses, sentence types and punctuation."""

from common import BLUE, GREEN, NAVY, RED
from figlib import card_row, steps_fig, table_fig, tree_fig


def main() -> None:
    tree_fig(
        "ch04_clause_tree.svg",
        "One sentence, split into the clauses that build it",
        "Although it was raining, the match continued until the light failed.",
        [
            ("Dependent", "Although it was raining — cannot stand alone"),
            ("Independent", "the match continued — can stand alone"),
            ("Dependent", "until the light failed — cannot stand alone"),
        ],
        intro="A clause is a group of words with its own subject and verb. The type of clause decides the punctuation, not the length.",
        note="Three clauses, two of them dependent: this is a complex sentence, and it needs one comma — after the first dependent clause and nowhere else.",
    )

    card_row(
        "ch04_sentence_types.svg",
        "The four sentence types a JAMB question can name",
        [
            ("Simple", "One independent clause. The rain stopped. It may have a compound subject or verb and still be simple."),
            ("Compound", "Two or more independent clauses joined by and, but, or, nor, for, so, yet — or a semicolon."),
            ("Complex", "One independent clause plus at least one dependent clause: because the rain stopped, we left."),
            ("Compound-complex", "Two independent clauses plus a dependent one. Long — and rarely the right answer."),
        ],
        cols=4,
        note="A sentence is not complex because it is long, and not simple because it is short. Count the clauses that can stand alone.",
    )

    table_fig(
        "ch04_relative.svg",
        "Defining and non-defining relative clauses",
        ["", "Defining", "Non-defining"],
        [
            ("What it does", "tells you which one is meant", "adds a comment about one already identified"),
            ("Commas", "none", "a pair of commas"),
            ("that", "allowed: the book that I bought", "never: not the book, that I bought"),
            ("Meaning", "The students who worked hard passed", "The students, who worked hard, passed"),
        ],
        weights=[1.3, 2.6, 2.6],
        note="Deleting a defining clause changes the meaning; deleting a non-defining clause leaves the sentence true. That difference is what the comma is for.",
    )

    table_fig(
        "ch04_punctuation.svg",
        "The nine marks, and the one job each was invented for",
        ["Mark", "Job", "Example"],
        [
            ("Comma ,", "separates items, and sets off a non-defining clause", "Rice, beans and yam were served."),
            ("Semicolon ;", "joins two independent clauses that belong together", "The rain stopped; we left at once."),
            ("Colon :", "introduces a list, a quotation or an explanation", "Three things: water, soap and a towel."),
            ("Dash —", "breaks the sentence to add an aside", "He arrived late — as usual — and said nothing."),
            ("Full stop .", "ends a statement", "The bell rang."),
            ("Question mark ?", "ends a direct question", "Where is the library?"),
            ("Exclamation mark !", "ends an exclamation", "What a match!"),
            ("Apostrophe '", "shows possession, or that letters are missing", "Chidi's book; it's raining."),
            ("Quotation marks", "enclose the exact words spoken", "She said, 'I will come.'"),
        ],
        weights=[1.2, 3.0, 2.6],
        note="A comma splice — two independent clauses joined by a comma alone — is the single most tested punctuation error in the paper.",
    )

    steps_fig(
        "ch04_comma_repair.svg",
        "Three ways to repair a comma splice",
        [
            ("FULL STOP", "The rain stopped. We left at once."),
            ("SEMICOLON", "The rain stopped; we left at once."),
            ("CONJUNCTION", "The rain stopped, so we left at once."),
        ],
        intro="The rain stopped, we left at once. — wrong: two full sentences, one comma.",
        note="Never repair it with a comma plus however, therefore or moreover alone: those are adverbs, not conjunctions, and the splice survives.",
        accent=RED,
    )
