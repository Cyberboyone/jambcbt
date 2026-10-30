"""Chapter 3 figures — tense, aspect, voice and reported speech."""

from common import BLUE, GREEN, NAVY, RED
from figlib import card_row, steps_fig, table_fig


def main() -> None:
    table_fig(
        "ch03_tense_grid.svg",
        "Twelve forms of the verb, built from three times and four aspects",
        ["", "Simple", "Continuous", "Perfect", "Perfect continuous"],
        [
            ("Present", "writes", "is writing", "has written", "has been writing"),
            ("Past", "wrote", "was writing", "had written", "had been writing"),
            ("Future", "will write", "will be writing", "will have written", "will have been writing"),
        ],
        weights=[1.0, 1.5, 1.6, 1.7, 2.0],
        note="Every tense question in the paper is one cell of this grid. Name the time first, then the aspect, then read the form.",
    )

    card_row(
        "ch03_aspect.svg",
        "What the four aspects actually say",
        [
            ("Simple", "The fact, with no comment on how long: she writes every day."),
            ("Continuous", "In progress at the time named: she is writing now."),
            ("Perfect", "Finished, but still relevant: she has written three pages."),
            ("Perfect continuous", "Running up to this moment: she has been writing since noon."),
        ],
        cols=4,
        note="The perfect does not mean the past. It means finished-and-still-counting, which is why it can sit in the present, the past or the future.",
    )

    table_fig(
        "ch03_conditionals.svg",
        "The four conditionals, and the tense inside each",
        ["Type", "If-clause", "Main clause", "Meaning"],
        [
            ("Zero", "If + present", "present", "always true: if water boils, it turns to steam"),
            ("First", "If + present", "will + base", "likely future: if it rains, we will stay"),
            ("Second", "If + past", "would + base", "unreal present: if I were rich, I would travel"),
            ("Third", "If + had + participle", "would have + participle", "unreal past: if I had known, I would have come"),
        ],
        weights=[0.9, 1.6, 1.6, 3.0],
        note="The tense never mixes across the comma: present goes with will, past goes with would, and had goes with would have.",
    )

    steps_fig(
        "ch03_active_passive.svg",
        "Turning an active sentence into the passive in four moves",
        [
            ("1  OBJECT", "The ball — make it the new subject"),
            ("2  BE", "Choose the tense of be that matches the original verb: was"),
            ("3  PARTICIPLE", "Use the past participle: kicked"),
            ("4  AGENT", "The player — added with by, or dropped"),
        ],
        intro="The player kicked the ball  →  The ball was kicked by the player.",
        note="Only a transitive verb has a passive. Nothing can be done to sleep, arrive or happen, so a passive of those verbs is always a wrong option.",
        accent=BLUE,
    )

    table_fig(
        "ch03_reported.svg",
        "Reported speech: what moves back when the reporting verb is past",
        ["Direct", "Reported", "Example"],
        [
            ("present", "past", "'I am tired' → he said he was tired"),
            ("past", "past perfect", "'I saw her' → he said he had seen her"),
            ("will", "would", "'I will come' → he said he would come"),
            ("can", "could", "'I can swim' → he said he could swim"),
            ("today / tomorrow", "that day / the next day", "'I leave today' → he said he left that day"),
        ],
        weights=[1.2, 1.6, 3.2],
        note="Present tense reporting verbs change nothing: he says he is tired. The sequence only shifts when the reporting verb is in the past.",
    )
