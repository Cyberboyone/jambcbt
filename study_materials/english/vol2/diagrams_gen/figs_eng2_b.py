"""Chapter 2 figures — the question types."""

from common import BLUE, GREEN, MUTED, NAVY, PURPLE, RED, SLATE
from figlib import card_row, steps_fig, table_fig, tree_fig


def main() -> None:
    table_fig(
        "ch02_types.svg",
        "The eight question types, and the sentence each one sends you to",
        ["Type", "What it asks", "Where the answer is"],
        [
            ("Direct detail", "a stated fact", "one sentence, found by its key word"),
            ("Vocabulary in context", "what a word means *here*", "the clause around the word, never a dictionary"),
            ("Reference", "what *it*, *they* or *this* stands for", "the noun in the sentence before"),
            ("Inference", "what the passage leaves you to conclude", "a sentence plus the step the writer expects"),
            ("Tone and attitude", "how the writer feels", "the adjectives and verbs the writer chooses"),
            ("Purpose", "why the passage was written", "the opening and closing sentences"),
            ("Negation (EXCEPT, NOT)", "the one option that is not in the passage", "three sentences, and one absence"),
            ("Main idea", "what the passage is about", "the topic sentence of the first or last paragraph"),
        ],
        weights=[1.2, 1.9, 2.3],
        note="Name the type before you answer. The type tells you which sentence to read, and it tells you which options are designed to catch you.",
    )

    tree_fig(
        "ch02_reference.svg",
        "Four pronouns, and where each one points",
        "it",
        [
            ("it / its", "a singular thing named in the same or the previous sentence — the nearest noun that agrees in number"),
            ("they / them / their", "a plural noun, often two sentences back, and usually the subject of the previous clause"),
            ("this / these", "the whole clause or sentence just finished, not one word in it"),
            ("which / that", "the noun immediately before the comma, or the whole clause when the comma is there"),
        ],
        intro="“The council rejected the plan, which surprised the residents who had proposed it.” — *it* is the plan; *which* is the whole clause; *who* is the residents.",
        note="Test the reference by putting it back: if the sentence still makes sense with the noun substituted, the reference is right.",
    )

    card_row(
        "ch02_negation.svg",
        "The four words that turn a question inside out",
        [
            ("EXCEPT", "Three options are stated in the passage; one is not. Find the three first — the fourth is the answer."),
            ("NOT", "Same as EXCEPT, and just as often missed. Underline it before you read the options."),
            ("FALSE", "The passage says the opposite of the answer, or says nothing at all about it."),
            ("LEAST", "Three options are strong; one is weak. The weak one is the answer."),
        ],
        cols=2,
        note="A negation question rewards the candidate who marks the negative word. It punishes the one who reads *Which of these is true* when the paper says *is NOT true*.",
    )

    table_fig(
        "ch02_option_shapes.svg",
        "Four shapes of wrong option, and how each one is built",
        ["Shape", "How it is built", "How to see through it"],
        [
            ("The true detail", "a sentence lifted from the passage that answers a different question", "ask what the question asked, not what the option says"),
            ("The almost-true", "the passage's sentence with one word changed — *all* for *most*, *may* for *will*", "compare the option with the sentence word by word"),
            ("The reasonable invention", "a sensible statement the passage never makes", "find the sentence; if there is none, the option is wrong"),
            ("The reversal", "the passage's claim with its cause and effect swapped", "check which side of *because* the fact sits on"),
        ],
        weights=[1.3, 2.4, 1.9],
        note="Three of the four options on any comprehension question are built from these four shapes. Naming the shape is usually faster than re-reading the passage.",
    )
