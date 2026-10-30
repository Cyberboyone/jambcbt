"""Cover banner and the six chapter recap cards."""

from common import GREEN, NAVY, rect, recap_card, save, svg, t, line, write_svg
import matplotlib.pyplot as plt


def cover_banner() -> None:
    w, h = 760, 176
    b = [rect(0, 0, w, h, "#0B2036", "#0B2036", 10, 1.0)]
    b.append(t(380, 34, "WORDS · CLAUSES · CONCORD · MEANING", size=17,
               weight="bold", fill="#FFFFFF"))
    b.append(line(120, 46, 640, 46, color="#34D399", sw=1.2))
    chips = [
        "Word classes", "Nouns and pronouns", "Verb forms", "Concord",
        "Tense and aspect", "Voice", "Reported speech", "Clauses",
        "Punctuation", "Modifiers", "Connectives", "Lexis and idioms",
    ]
    cols = 3
    for i, c in enumerate(chips):
        r, k = divmod(i, cols)
        x = 40 + k * 240
        y = 58 + r * 26
        b.append(rect(x, y, 220, 22, "#12314F", "#34D399", 5, 1.0))
        b.append(t(x + 110, y + 15, c, size=8.6, fill="#E2E8F0"))
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg="#0B2036"))


def utme_weight() -> None:
    """Where the sixty English questions sit, by section."""
    fig, ax = plt.subplots(figsize=(6.0, 2.4))
    labels = ["Lexis and structure", "Comprehension", "Oral forms", "Summary", "The novel"]
    values = [30, 10, 8, 5, 7]
    cols = [GREEN if v >= 20 else "#34D399" for v in values]
    bars = ax.barh(labels[::-1], values[::-1], color=cols[::-1], height=0.6)
    for bar, v in zip(bars, values[::-1]):
        ax.text(v + 0.4, bar.get_y() + bar.get_height() / 2, f"{v}", va="center",
                fontsize=8, color=NAVY)
    ax.set_xlim(0, 34)
    ax.set_xlabel("typical number of questions in the 60-question paper")
    ax.set_title("WHERE THE ENGLISH MARKS SIT", fontsize=9.2, color=NAVY, weight="bold")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(axis="x", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "utme_weight.svg")


def main() -> None:
    cover_banner()
    utme_weight()

    recap_card(
        "recap_ch01.svg", "Chapter 1 recap — the word classes",
        [
            ("Nouns", "name a person, place, thing or idea; proper nouns take a capital, mass nouns take no plural."),
            ("Pronouns", "stand in for a noun: he, they, who, this; the case changes with the job (he / him, who / whom)."),
            ("Verbs", "say what the subject does or is; the five forms are base, -s, -ing, past, past participle."),
            ("Adjectives and adverbs", "describe nouns and verbs; an adverb adds -ly and answers how, when or where."),
            ("Function", "the class is the job: book is a noun in 'the book', a verb in 'book a seat'."),
        ],
    )

    recap_card(
        "recap_ch02.svg", "Chapter 2 recap — concord",
        [
            ("The rule", "a singular subject takes a singular verb; only the third-person present differs (writes, has, does, is)."),
            ("The head", "the verb agrees with the head noun, not with the noun nearest it: the box of books is."),
            ("Quantifiers", "fractions and per cent follow the noun after of; each, every, either and neither are singular."),
            ("Fixed number", "news, physics and mathematics are singular; police, cattle and people are plural."),
            ("Pronouns", "the pronoun must agree with its noun and point to one noun only."),
        ],
    )

    recap_card(
        "recap_ch03.svg", "Chapter 3 recap — tense, aspect and voice",
        [
            ("Twelve forms", "three times times four aspects; name the time, then the aspect, then read the form."),
            ("Perfect", "finished but still relevant: has written, had written, will have written."),
            ("Conditionals", "present with will, past with would, had with would have — never mixed across the comma."),
            ("Reported speech", "a past reporting verb moves the tense back one step: am becomes was, will becomes would."),
            ("Passive", "object to subject, be in the same tense, past participle, by-agent: the ball was kicked."),
        ],
    )

    recap_card(
        "recap_ch04.svg", "Chapter 4 recap — clauses and punctuation",
        [
            ("Clause", "a group of words with its own subject and verb; a phrase has no verb of its own."),
            ("Types", "simple, compound, complex and compound-complex — counted by the clauses that can stand alone."),
            ("Relatives", "defining clauses take no commas and allow that; non-defining clauses take commas and never that."),
            ("Splice", "two independent clauses joined by a comma is the commonest error; use a full stop, a semicolon or a conjunction."),
            ("Marks", "semicolon joins equals, colon introduces, dash interrupts, apostrophe shows possession or omission."),
        ],
    )

    recap_card(
        "recap_ch05.svg", "Chapter 5 recap — modifiers, prepositions, connectors",
        [
            ("Comparatives", "one syllable takes -er and -est, longer words take more and most; never double them."),
            ("Modifiers", "a participial phrase must open with the doer's name, and only sits before the word it limits."),
            ("Prepositions", "at a point, on a surface or day, in an enclosure or period; learn the fixed pairs by verb."),
            ("Connectors", "addition, contrast, cause, result, purpose and sequence — each has its own punctuation."),
            ("Register", "formal writing takes no contractions, no slang and no direct translation from a Nigerian language."),
        ],
    )

    recap_card(
        "recap_ch06.svg", "Chapter 6 recap — lexis",
        [
            ("Synonyms", "match strength and register, then put the word back into the sentence."),
            ("Antonyms", "gradable, complementary or relational — the question decides which kind it wants."),
            ("Substitution", "the word nearest in meaning, in that sentence, not the dictionary headword."),
            ("Confusables", "affect and effect, principal and principle, stationary and stationery, its and it's."),
            ("Idioms", "learn the expression as one unit; a phrasal verb changes meaning with its particle."),
        ],
    )
