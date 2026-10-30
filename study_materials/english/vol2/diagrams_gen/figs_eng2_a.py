"""Chapter 1 figures — reading for the main idea."""

from common import BLUE, GREEN, MUTED, NAVY, PURPLE, RED, SLATE
from figlib import card_row, steps_fig, table_fig


def main() -> None:
    steps_fig(
        "ch01_read_cycle.svg",
        "The four moves that replace reading everything",
        [
            ("PREVIEW", "Read the questions first — they tell you what the passage is for."),
            ("SKIM", "Read the first and last sentence of each paragraph: the argument lives there."),
            ("MARK", "Ring the sentence each question points at, and number the paragraphs."),
            ("ANSWER", "Go back only to the marked sentence; the rest of the passage is scenery."),
        ],
        intro="A 400-word passage, four questions, about six minutes.",
        note="The candidate who reads the passage first and the questions second spends the same six minutes and answers from memory. The order is the method.",
    )

    card_row(
        "ch01_paragraph.svg",
        "What one paragraph is made of",
        [
            ("Topic sentence", "The first sentence, and the claim the paragraph exists to support. It is the sentence a summary keeps."),
            ("Support", "The examples, figures and names that prove the claim. It is what a summary throws away."),
            ("Signpost", "A word such as *however*, *moreover* or *in short* that tells you the argument has turned or ended."),
            ("Closing sentence", "Often restates the claim in different words — useful when the topic sentence was buried."),
        ],
        cols=2,
        note="Most passages put the claim first. When the first sentence is a question or a quotation, the claim is the sentence after it.",
    )

    table_fig(
        "ch01_three_passes.svg",
        "Pass one, pass two, pass three — and what each one is for",
        ["Pass", "What you read", "Time", "What you get out of it"],
        [
            ("Preview", "the four questions and their options", "40 s", "the four things to look for as you read"),
            ("Skim", "the first and last sentence of every paragraph", "90 s", "the shape of the argument and the paragraph that answers each question"),
            ("Scan", "the one sentence each question points at", "3 min", "the answer, with the sentence still in front of you"),
            ("Check", "your four choices against the passage", "40 s", "the confidence to leave them alone"),
        ],
        weights=[0.8, 1.9, 0.5, 2.2],
        note="Nothing in the method asks you to remember the passage. It asks you to find the four sentences and read them twice.",
    )

    table_fig(
        "ch01_main_vs_detail.svg",
        "Main-idea questions and detail questions do not want the same thing",
        ["The question sounds like", "It is really asking for", "Where the answer sits"],
        [
            ("“What is the passage mainly about?”", "the claim the whole passage supports", "the first or last paragraph, in one sentence"),
            ("“The writer's purpose is to…”", "the verb behind the passage: persuade, warn, describe, compare", "the opening paragraph and the closing sentence"),
            ("“According to the passage, …”", "one stated fact", "one sentence, found by its key word"),
            ("“Which of these is NOT…”", "three stated facts and one that is absent", "three separate sentences, and one silence"),
            ("“The word *X* as used in line 12 means…”", "the sense the sentence forces on the word", "the sentence around line 12"),
        ],
        weights=[2.0, 2.2, 2.2],
        note="A main-idea answer is never a detail, however true the detail is. That is the commonest wrong option on the paper: a sentence from the passage that answers a different question.",
    )
