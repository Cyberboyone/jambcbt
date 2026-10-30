"""Chapter 2 figures — concord."""

from common import BLUE, GREEN, RED
from figlib import card_row, steps_fig, table_fig, tree_fig


def main() -> None:
    table_fig(
        "ch02_concord_matrix.svg",
        "Concord across the verb: the five forms that change",
        ["Subject", "be (now)", "be (past)", "have", "do", "any other verb"],
        [
            ("I", "am", "was", "have", "do", "walk"),
            ("you", "are", "were", "have", "do", "walk"),
            ("he / she / it", "is", "was", "has", "does", "walks"),
            ("we", "are", "were", "have", "do", "walk"),
            ("they", "are", "were", "have", "do", "walk"),
            ("the boy", "is", "was", "has", "does", "walks"),
            ("the boys", "are", "were", "have", "do", "walk"),
        ],
        weights=[1.5, 1.0, 1.0, 0.9, 0.9, 1.6],
        note="Only the third-person singular is different in the present tense. Learn that one column and the other four look after themselves.",
    )

    tree_fig(
        "ch02_of_trap.svg",
        "The head noun decides the verb, not the nearest noun",
        "The verb agrees with the HEAD of the subject",
        [
            ("The box of books", "head = box (singular) → is"),
            ("The books in the box", "head = books (plural) → are"),
            ("The list of names", "head = list (singular) → was"),
        ],
        intro="A prepositional phrase after the subject is a passenger. Take it out and the agreement is obvious.",
        note="Read the sentence twice: once in full, once with the phrase in brackets deleted. The version you can say aloud is the version the examiner wants.",
        accent=GREEN,
    )

    card_row(
        "ch02_quantifiers.svg",
        "Six subjects that decide the verb for you",
        [
            ("A fraction or per cent", "Two thirds of the land is; two thirds of the students are. The verb follows the noun after of."),
            ("Collective noun", "The team is winning (as one body); the team are arguing (as individuals). JAMB prefers the singular."),
            ("each, every, either, neither", "Always singular: each of the boys has a book. The of phrase changes nothing."),
            ("A number of / the number of", "A number of students are; the number of students is. Two phrases, two verbs."),
            ("Police, cattle, people", "Always plural: the police are here, the cattle are grazing."),
            ("News, physics, mathematics", "Singular despite the -s: the news is good, physics is hard."),
        ],
        cols=3,
        note="If the subject can be replaced by it, the verb is singular; if it can be replaced by they, the verb is plural. That single test settles most concord questions.",
    )

    table_fig(
        "ch02_tricky_subjects.svg",
        "Subjects that look like the wrong number",
        ["Looks singular", "Verb", "Looks plural", "Verb"],
        [
            ("The news", "is", "The scissors", "are"),
            ("Physics", "is", "The trousers", "are"),
            ("Ten kilometres", "is (a distance)", "The police", "are"),
            ("Bread and butter", "is (one dish)", "The equipment", "is (no plural)"),
        ],
        weights=[2.2, 1.6, 2.2, 1.6],
        note="A distance, a sum of money and a period of time are singular: ten kilometres is a long walk, twenty naira is enough.",
    )

    steps_fig(
        "ch02_pronoun_agreement.svg",
        "Keeping the pronoun in step with its noun",
        [
            ("FIND THE NOUN", "everyone, the committee, a student — singular or plural?"),
            ("MATCH THE PRONOUN", "everyone … his or her; students … their"),
            ("CHECK THE REFERENCE", "the pronoun must point to one noun only"),
        ],
        intro="A pronoun that agrees with nothing in particular is the commonest error in JAMB sentence-improvement questions.",
        note="Everyone, everybody, anyone, nobody and each take a singular verb; the pronoun that follows is his or her (formal) or their (accepted modern usage, and the answer JAMB usually wants).",
        accent=BLUE,
    )
