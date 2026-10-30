"""Chapter 3 figures — inference, tone and attitude."""

from common import BLUE, GREEN, MUTED, NAVY, PURPLE, RED, SLATE
from figlib import card_row, steps_fig, table_fig


def main() -> None:
    steps_fig(
        "ch03_ladder.svg",
        "Stated, implied, assumed — three rungs, and only two of them are on the paper",
        [
            ("STATED", "The passage says it in words. A direct-detail question."),
            ("IMPLIED", "The passage says something else, and the answer must follow. An inference question."),
            ("ASSUMED", "The passage never commits itself. Nothing on the paper turns on this."),
        ],
        intro="“The market closed at noon, and by one o'clock the street was empty.”",
        note="An inference is a step the writer has already taken: *the traders left early* is implied, *the traders were unhappy* is assumed. The wrong options are the assumptions.",
    )

    table_fig(
        "ch03_tone.svg",
        "Tone words, and what each one commits the writer to",
        ["Tone", "The writer is", "The clue in the text"],
        [
            ("Neutral", "reporting without judgement", "plain verbs, no adjectives of value, figures and dates"),
            ("Critical", "finding fault", "*so-called*, *alleged*, *merely*, quotation marks around a claim"),
            ("Approving", "endorsing", "*rightly*, *commendable*, *at last*, *prudent*"),
            ("Cautious", "hedging", "*may*, *appears to*, *it would seem*, *on present evidence*"),
            ("Ironic", "meaning the opposite", "praise that the facts contradict"),
            ("Alarmed", "warning", "*unless*, *before it is too late*, *at this rate*"),
        ],
        weights=[1.0, 1.6, 3.0],
        note="Tone is a property of the words the writer chose, not of the subject. Two passages can describe the same drought and one can be sympathetic while the other is impatient.",
    )

    table_fig(
        "ch03_figurative.svg",
        "Figures of speech, and what an exam question does with them",
        ["Figure", "What it does", "What the question asks"],
        [
            ("Metaphor", "says one thing is another: *the city is a furnace*", "what is being compared, and what the comparison suggests"),
            ("Simile", "compares with *like* or *as*: *as dry as a bone*", "the quality shared by the two things"),
            ("Personification", "gives a thing human action: *the wind argued*", "which human quality is being borrowed"),
            ("Hyperbole", "deliberate exaggeration: *a thousand letters*", "what the exaggeration is meant to make you feel"),
            ("Irony", "says the opposite of what is meant", "what the writer actually believes"),
            ("Idiom", "a fixed phrase with a single meaning: *break the ice*", "the meaning of the phrase as a whole, never word by word"),
        ],
        weights=[1.1, 2.4, 2.0],
        note="The paper rarely names the figure. It asks what the phrase means, and the phrase is doing one of these six things.",
    )

    card_row(
        "ch03_attitude.svg",
        "Four questions that settle an attitude question",
        [
            ("Whose side is the writer on?", "Look at who is quoted approvingly and who is described in the passive voice."),
            ("What is the last sentence doing?", "A closing sentence usually carries the writer's verdict, not a fact."),
            ("Which adjectives are doing work?", "Two adjectives decide a tone: *stubborn* is not *firm*, and *thrifty* is not *mean*."),
            ("Would the writer sign this?", "If the passage were a letter to the editor, would the writer sign it or send it to the other side?"),
        ],
        cols=2,
        note="Attitude options are usually four adjectives. Cross out the two that cannot be supported by any single word in the passage before you choose between the other two.",
    )
