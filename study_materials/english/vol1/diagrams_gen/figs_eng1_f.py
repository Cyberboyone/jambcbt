"""Chapter 6 figures — lexis, confusables and idioms."""

from common import BLUE, GREEN, NAVY, RED
from figlib import card_row, steps_fig, table_fig


def main() -> None:
    steps_fig(
        "ch06_synonym_scale.svg",
        "Synonyms are points on a scale, not copies",
        [
            ("WEAK", "walk — the plain word"),
            ("NEUTRAL", "stroll — walking for pleasure"),
            ("STRONG", "stride — walking with purpose"),
            ("TOO STRONG", "march — wrong unless soldiers or protestors"),
        ],
        intro="A JAMB synonym question offers four words that are all roughly right. The answer is the one that matches the strength and the register of the original.",
        note="Test each option by putting it back into the sentence. if the sentence changes its tone, the option is wrong.",
        accent=GREEN,
    )

    card_row(
        "ch06_antonyms.svg",
        "Three kinds of opposite — and why the choice matters",
        [
            ("Gradable", "hot / cold, with warm and cool between. The antonym is the other end of the same scale."),
            ("Complementary", "alive / dead, married / single. There is no middle, so one excludes the other."),
            ("Relational", "buy / sell, teacher / pupil. The opposite is the other role in the same transaction."),
        ],
        cols=3,
        note="A question that asks for the word OPPOSITE in meaning will not accept a complementary antonym where the sentence needs a gradable one.",
    )

    table_fig(
        "ch06_confusables.svg",
        "The twelve pairs the paper returns to",
        ["Pair", "The difference", "In a sentence"],
        [
            ("affect / effect", "affect is the verb, effect the noun", "Smoke affects the lungs; the effect is permanent."),
            ("principal / principle", "principal = chief or head; principle = rule", "the principal of the school; a principle of physics"),
            ("stationary / stationery", "standing still / paper and pens", "a stationary bus; office stationery"),
            ("compliment / complement", "praise / completes", "a compliment on her dress; the wine complements the meal"),
            ("advice / advise", "noun / verb", "good advice; I advise you to wait"),
            ("practice / practise", "noun / verb (British usage)", "daily practice; practise the piano"),
            ("its / it's", "possessive / it is", "the dog wagged its tail; it's raining"),
            ("loose / lose", "not tight / to be deprived of", "a loose bolt; do not lose the key"),
            ("quiet / quite", "silent / fairly", "a quiet room; quite good"),
            ("weather / whether", "climate / if", "wet weather; whether or not"),
            ("cite / site / sight", "quote / place / vision", "cite a case; building site; a sight to see"),
            ("emigrate / immigrate", "leave / enter", "emigrate from Nigeria; immigrate to Canada"),
        ],
        weights=[1.5, 2.4, 3.0],
        note="Six of these twelve have appeared in recent papers. Learn the pair, not the word: the question always sets one against the other.",
    )

    table_fig(
        "ch06_idioms.svg",
        "Idioms and phrasal verbs in the form they are tested",
        ["Expression", "Meaning", "Not"],
        [
            ("to bury the hatchet", "to end a quarrel", "to hide a weapon"),
            ("to beat about the bush", "to avoid the point", "to search the garden"),
            ("a stitch in time", "early action prevents trouble", "sewing quickly"),
            ("to let the cat out of the bag", "to reveal a secret", "to lose an animal"),
            ("to take after", "to resemble a parent", "to chase"),
            ("to put up with", "to tolerate", "to build"),
            ("to call off", "to cancel", "to shout"),
            ("to give in", "to surrender", "to hand in work"),
        ],
        weights=[2.4, 2.8, 2.2],
        note="A phrasal verb changes meaning completely with its particle: give in, give up, give out and give away are four different verbs.",
    )

    card_row(
        "ch06_register.svg",
        "Register: grammatical but still wrong",
        [
            ("Formal", "The committee has reached a decision. — no contractions, no slang"),
            ("Informal", "The committee's made up its mind. — fine in speech, wrong in a formal letter"),
            ("Nigerian usage", "He is my junior brother / I am coming. — local, and not accepted in the paper"),
            ("Wrong register", "The chairman kicked off the meeting. — a phrasal verb too casual for the context"),
        ],
        cols=4,
        note="If a sentence-improvement option is slangy, exaggerated or a direct translation from a Nigerian language, it is almost never the key.",
    )
