"""Chapter 1 figures — word classes."""

from common import BLUE, GREEN, MUTED, NAVY, PURPLE, RED, SLATE
from figlib import card_row, steps_fig, table_fig


def main() -> None:
    table_fig(
        "ch01_class_map.svg",
        "The eight word classes, and the job each one does",
        ["Class", "What it names or does", "Examples"],
        [
            ("Noun", "names a person, place, thing, quality or idea", "Adaeze, Lagos, table, honesty"),
            ("Pronoun", "stands in for a noun already named", "he, they, who, this, anyone"),
            ("Verb", "says what the subject does or is", "run, believe, is, has been"),
            ("Adjective", "describes or limits a noun", "tall, three, Nigerian, these"),
            ("Adverb", "says how, when, where or how often", "quickly, yesterday, here, twice"),
            ("Preposition", "links a noun to the rest of the sentence", "in, on, under, between, despite"),
            ("Conjunction", "joins words, phrases or clauses", "and, but, because, although, or"),
            ("Interjection", "expresses sudden feeling", "oh, alas, hmm, bravo"),
        ],
        weights=[1.0, 2.4, 2.2],
        note="A word is not born into a class: the class it belongs to is the job it is doing in that sentence.",
    )

    steps_fig(
        "ch01_sentence_roles.svg",
        "One sentence, and the job of each block",
        [
            ("SUBJECT", "The tall boy — who or what the sentence is about"),
            ("VERB", "kicked — what the subject did"),
            ("OBJECT", "the ball — what received the action"),
            ("ADVERBIAL", "into the net — where it went"),
        ],
        intro="The tall boy kicked the ball into the net.",
        note="Every word in the sentence must slot into one of these jobs. Naming the job is what tells you which form of the word the examiner's blank needs.",
    )

    card_row(
        "ch01_noun_types.svg",
        "Six kinds of noun, each with its own trap",
        [
            ("Proper", "A name, always capitalised: Chidi, Kano, Monday. It takes no article and has no plural."),
            ("Common", "A class of thing: boy, city, river. Countable, and takes a or an."),
            ("Abstract", "A quality or state: honesty, courage, freedom. You cannot see or count it."),
            ("Collective", "A group treated as one thing: team, flock, jury. Singular in Nigeria, plural in British usage."),
            ("Count", "Has a plural and takes a number: three books, many chairs."),
            ("Mass", "No plural and no a: water, advice, furniture, information."),
        ],
        cols=3,
        note="The mass nouns are the ones the paper tests: advice, furniture, equipment, information, luggage, machinery have no plural and never take a or an.",
    )

    table_fig(
        "ch01_verb_forms.svg",
        "The five forms of the verb, and when each is used",
        ["Form", "Regular: walk", "Irregular: write", "Used after"],
        [
            ("Base", "walk", "write", "to, can, must, will, did"),
            ("Third person -s", "walks", "writes", "he, she, it, a singular noun"),
            ("Present participle", "walking", "writing", "am, is, are, was, were"),
            ("Past simple", "walked", "wrote", "yesterday, last week, ago"),
            ("Past participle", "walked", "written", "have, has, had, was (passive)"),
        ],
        weights=[1.3, 1.2, 1.2, 2.4],
        note="Irregular verbs are tested through the third and fifth forms: it is he wrote and he has written, never he has wrote.",
    )

    table_fig(
        "ch01_function_shift.svg",
        "The same word in three jobs — the point of word classes",
        ["Word", "As a noun", "As a verb", "As an adjective"],
        [
            ("book", "the book is torn", "book a seat", "a book token"),
            ("water", "the water is cold", "water the plants", "a water tank"),
            ("fast", "a long fast", "fast for a day", "a fast train"),
            ("light", "switch on the light", "light the lamp", "a light meal"),
        ],
        weights=[0.8, 3.0, 2.6, 2.4],
        note="Never answer a word-class question by looking at the word alone. Read the sentence and ask what the word is doing there.",
    )
