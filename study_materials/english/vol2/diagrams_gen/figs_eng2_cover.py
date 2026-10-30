"""Cover banner, the marks chart and the six chapter recap cards."""

from common import GREEN, NAVY, recap_card, rect, save, svg, t, line, write_svg
import matplotlib.pyplot as plt


def cover_banner() -> None:
    w, h = 760, 176
    b = [rect(0, 0, w, h, "#0B2036", "#0B2036", 10, 1.0)]
    b.append(t(380, 34, "PASSAGES · POINTS · SOUNDS · STRESS", size=17,
               weight="bold", fill="#FFFFFF"))
    b.append(line(110, 46, 650, 46, color="#34D399", sw=1.2))
    chips = [
        "Reading for gist", "Question types", "Reference", "Inference",
        "Tone and attitude", "Negation questions", "Summary points",
        "Word limits", "Vowels", "Consonants", "Stress", "Intonation and rhyme",
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
    """Where the sixty English questions sit, split across the three volumes."""
    fig, ax = plt.subplots(figsize=(6.0, 2.4))
    labels = ["Lexis and structure", "Comprehension", "Oral forms", "Summary", "The novel"]
    values = [30, 10, 8, 5, 7]
    cols = ["#94A3B8", GREEN, GREEN, GREEN, "#94A3B8"]
    bars = ax.barh(labels[::-1], values[::-1], color=cols[::-1], height=0.6)
    for bar, v in zip(bars, values[::-1]):
        ax.text(v + 0.4, bar.get_y() + bar.get_height() / 2, f"{v}", va="center",
                fontsize=8, color=NAVY)
    ax.set_xlim(0, 34)
    ax.set_xlabel("typical number of questions in the 60-question paper")
    ax.set_title("WHAT THIS VOLUME COVERS — 23 OF THE 60", fontsize=9.2, color=NAVY,
                 weight="bold")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(axis="x", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "utme_weight.svg")


def main() -> None:
    cover_banner()
    utme_weight()

    recap_card(
        "recap_ch01.svg", "Chapter 1 recap — reading for the main idea",
        [
            ("Order", "questions first, passage second: the questions tell you which four sentences matter."),
            ("Three passes", "preview 40 s, skim the first and last sentence of each paragraph 90 s, scan 3 min."),
            ("Paragraph", "a topic sentence, support, and a closing restatement — the topic sentence is the point."),
            ("Main idea", "a claim the whole passage supports; a detail, however true, is never the answer."),
            ("Check", "put your choice back into the passage and read the sentence it came from."),
        ],
    )

    recap_card(
        "recap_ch02.svg", "Chapter 2 recap — the question types",
        [
            ("Name it first", "detail, vocabulary, reference, inference, tone, purpose, negation, main idea."),
            ("Reference", "substitute the noun for the pronoun; if the sentence still works, the reference is right."),
            ("Negation", "EXCEPT, NOT, FALSE, LEAST — mark the negative word before reading the options."),
            ("Wrong options", "true detail, almost-true, reasonable invention, reversal. Three of the four are built this way."),
            ("Evidence", "every answer has a sentence. If you cannot point at it, the option is a guess."),
        ],
    )

    recap_card(
        "recap_ch03.svg", "Chapter 3 recap — inference, tone and attitude",
        [
            ("Ladder", "stated, implied, assumed — an inference is a step the writer has taken, not one you invented."),
            ("Tone", "carried by adjectives and verbs, not by the subject: *firm* and *stubborn* describe the same act."),
            ("Irony", "praise the facts contradict; the answer is the opposite of the words."),
            ("Figures", "metaphor, simile, personification, hyperbole, idiom — the question asks what the phrase means."),
            ("Four questions", "whose side, last sentence, working adjectives, would the writer sign it."),
        ],
    )

    recap_card(
        "recap_ch04.svg", "Chapter 4 recap — summary",
        [
            ("Rules", "shorter, the same meaning, in your own words, main points only."),
            ("Keep", "topic sentences, claims, reasons and the conclusion."),
            ("Drop", "examples, quotations, lists, dates, figures and asides."),
            ("Method", "read the instruction, find the topic sentences, strip, join, count."),
            ("Marks", "points first, then words; over the limit costs marks however good the answer."),
        ],
    )

    recap_card(
        "recap_ch05.svg", "Chapter 5 recap — the sounds of English",
        [
            ("Vowels", "twelve pure vowels and eight glides; the paper asks which word shares the sound."),
            ("Pairs", "seat / sit, bad / bed, book / food, hot / saw — learn the contrasts, not the symbols."),
            ("Consonants", "eight voiced-voiceless pairs, and eight with no partner."),
            ("Silent letters", "know, write, listen, climb, hour — the spelling hides the sound."),
            ("Syllables", "count the vowel sounds, not the letters."),
        ],
    )

    recap_card(
        "recap_ch06.svg", "Chapter 6 recap — stress, intonation and rhyme",
        [
            ("Endings", "-tion, -ic, -ity and -ee fix the stress for you."),
            ("Shift", "two-syllable nouns stress the first syllable, verbs the second."),
            ("Sentence stress", "the content words are loud; the grammar words are quiet."),
            ("Intonation", "falling for statements and wh-questions, rising for yes/no questions and unfinished lists."),
            ("Rhyme", "identical from the stressed vowel onwards — *night*, *light*, *sight*, but not *eight*."),
        ],
    )
