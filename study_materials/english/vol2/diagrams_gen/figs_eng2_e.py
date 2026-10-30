"""Chapter 5 figures — the sounds of English."""

from common import BLUE, GREEN, MUTED, NAVY, PURPLE, RED, SLATE
from figlib import card_row, steps_fig, table_fig


def main() -> None:
    table_fig(
        "ch05_vowels.svg",
        "The twelve pure vowels, with the spelling that usually carries each",
        ["Symbol", "Example", "The spelling", "Not to be confused with"],
        [
            ("/i:/", "seat", "ea, ee, ie", "/ɪ/ sit — shorter and looser"),
            ("/ɪ/", "sit", "i, y, ui", "/i:/ seat"),
            ("/e/", "bed", "e, ea", "/æ/ bad"),
            ("/æ/", "bad", "a", "/e/ bed, /ɑ:/ car"),
            ("/ɑ:/", "car", "ar, a + r", "/æ/ cat"),
            ("/ɒ/", "hot", "o, au", "/ɔ:/ saw"),
            ("/ɔ:/", "saw", "aw, or, ough", "/ɒ/ hot"),
            ("/ʊ/", "book", "oo, u", "/u:/ food"),
            ("/u:/", "food", "oo, ue, ew", "/ʊ/ book"),
            ("/ʌ/", "cup", "u, o, ou", "/æ/ cap"),
            ("/ɜ:/", "bird", "ir, er, ur", "/e/ bed"),
            ("/ə/", "about", "any unstressed vowel", "every other vowel — it is the weakest of the twelve"),
        ],
        weights=[0.7, 1.1, 1.5, 2.6],
        note="The paper asks which word contains the same vowel sound, so the symbol matters less than the pair. Learn the pairs: seat / sit, bad / bed, book / food, hot / saw.",
    )

    table_fig(
        "ch05_diphthongs.svg",
        "The eight gliding vowels, and the spellings that produce them",
        ["Symbol", "Example", "The spelling", "Common trap"],
        [
            ("/eɪ/", "day", "a-e, ai, ay", "*said* is /e/, not /eɪ/"),
            ("/aɪ/", "my", "i-e, ie, y", "*live* (verb) is /ɪ/"),
            ("/ɔɪ/", "boy", "oi, oy", "—"),
            ("/aʊ/", "now", "ou, ow", "*know* is /əʊ/"),
            ("/əʊ/", "go", "o-e, oa, ow", "*now* is /aʊ/"),
            ("/ɪə/", "here", "ear, ere, ier", "*heard* is /ɜ:/"),
            ("/eə/", "hair", "air, are, ear", "*hear* is /ɪə/"),
            ("/ʊə/", "tour", "our, ure", "*four* is /ɔ:/"),
        ],
        weights=[0.7, 1.0, 1.5, 2.2],
        note="A diphthong is one syllable with two vowel positions. That is why *fire* can be one syllable or two, and why the paper avoids it.",
    )

    table_fig(
        "ch05_consonants.svg",
        "The twenty-four consonants, in the pairs that differ by one feature",
        ["Voiceless", "Voiced", "Where the sound is made", "Example pair"],
        [
            ("/p/", "/b/", "both lips", "pin / bin"),
            ("/t/", "/d/", "tip of the tongue, ridge behind the teeth", "tin / din"),
            ("/k/", "/g/", "back of the tongue, soft palate", "coat / goat"),
            ("/f/", "/v/", "lower lip against the upper teeth", "fan / van"),
            ("/θ/", "/ð/", "tongue between the teeth", "thin / then"),
            ("/s/", "/z/", "tongue near the ridge, air hissing", "sip / zip"),
            ("/ʃ/", "/ʒ/", "tongue further back, lips rounded", "shoe / vision"),
            ("/tʃ/", "/dʒ/", "the two-stop pair", "chin / gin"),
        ],
        weights=[0.8, 0.8, 2.2, 1.1],
        note="Eight pairs, and a voicing test: put two fingers on your throat and say the pair. The second of each pair buzzes. The other eight consonants — /m n ŋ l r j w h/ — have no partner.",
    )

    steps_fig(
        "ch05_syllables.svg",
        "How to count the syllables in a word — and why it matters",
        [
            ("COUNT THE VOWEL SOUNDS", "not the letters: *queue* is one, *people* is two"),
            ("MARK THE STRESS", "the loudest of those syllables — *TAble*, *beGIN*"),
            ("SAY IT SLOWLY", "if a syllable can be dropped without changing the word, it is not pronounced"),
        ],
        intro="Comfortable: three syllables, not four. Every: two, not three.",
        note="Stress and syllables are the same skill in two costumes. The chapter that follows asks which syllable is loudest; this one asks how many there are to choose from.",
    )
