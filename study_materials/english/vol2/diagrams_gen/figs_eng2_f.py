"""Chapter 6 figures — stress, intonation and rhyme."""

from common import BLUE, GREEN, MUTED, NAVY, PURPLE, RED, SLATE
from figlib import card_row, steps_fig, table_fig


def main() -> None:
    table_fig(
        "ch06_stress_rules.svg",
        "Five rules that place the stress",
        ["The word ends in", "Stress falls on", "Examples"],
        [
            ("-tion, -sion, -cian", "the syllable just before the ending", "eDUcation, deCIsion, muSIcian"),
            ("-ic, -ical, -ically", "the syllable just before the ending", "ecoNOmic, poLItical, geoGRAphically"),
            ("-ity, -ify, -ogy", "the syllable three from the end", "aBIlity, iDENtify, biOLogy"),
            ("-ee, -eer, -ese, -ette", "the final syllable", "refuGEE, engiNEER, ChiNESE, cigaRETTE"),
            ("two syllables, no ending", "nouns and adjectives on the first, verbs on the second", "TAble, HAPpy / beGIN, deCIDE"),
        ],
        weights=[1.5, 2.0, 2.2],
        note="The ending rules cover most of the words the paper uses. Read the word backwards from its ending and the stress lands itself.",
    )

    table_fig(
        "ch06_stress_shift.svg",
        "The same word, stressed differently as a noun and a verb",
        ["Noun (first syllable)", "Verb (second syllable)", "In a sentence"],
        [
            ("REcord", "reCORD", "keep a REcord / reCORD the lesson"),
            ("PREsent", "preSENT", "a PREsent / preSENT the report"),
            ("OBject", "obJECT", "an OBject / obJECT to the plan"),
            ("PROduce", "proDUCE", "fresh PROduce / proDUCE evidence"),
            ("CONtract", "conTRACT", "a CONtract / conTRACT the muscle"),
            ("INcrease", "inCREASE", "an INcrease / inCREASE the dose"),
        ],
        weights=[1.5, 1.5, 2.4],
        note="Two-syllable words of this shape shift stress with the job they are doing — and the paper tests exactly this pair of jobs.",
    )

    card_row(
        "ch06_intonation.svg",
        "Three tunes, and the meaning each one adds",
        [
            ("Falling ↘", "Statements, commands and wh-questions. *She has gone.* *Sit down.* *Where is he?* It says: I have finished."),
            ("Rising ↗", "Yes/no questions and unfinished lists. *Has she gone?* *Bread, milk, eggs…* It says: I am asking, or I have not finished."),
            ("Fall-rise ↘↗", "Doubt, contrast or apology. *I *think* so…* *Well, yeees.* It says: not quite, or not everyone agrees."),
            ("Neutral", "A flat tune on a long list sounds rude in English, which is why the list rises until the last item, then falls."),
        ],
        cols=2,
        note="Intonation questions are rare on the paper and easy when they come: a question that expects *yes* or *no* rises; a question that expects information falls.",
    )

    table_fig(
        "ch06_rhyme.svg",
        "Rhyme families the paper draws on",
        ["Family", "Words that rhyme", "The trap"],
        [
            ("-ight", "night, light, sight, tight", "*eight* does not rhyme with them"),
            ("-ough", "though, although", "*cough*, *rough*, *through* and *bough* do not"),
            ("-ation", "nation, station, creation", "*ration* and *passion* do not belong to it"),
            ("-ear", "hear, fear, near, dear", "*bear* and *wear* belong to /eə/"),
            ("-ind", "mind, find, kind, blind", "*wind* (noun) rhymes; *wind* (verb) does not"),
            ("-ood", "good, wood, stood", "*food* and *mood* belong to /u:/"),
        ],
        weights=[1.0, 2.2, 2.2],
        note="Rhyme is the stressed vowel and everything after it. Two words rhyme only if the sound from the stressed vowel onwards is identical.",
    )
