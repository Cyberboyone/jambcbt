"""Cover banner, the marks chart and the six chapter recap cards."""

from common import (AMBER, BLUE, GREEN, GREEN_MID, MUTED, NAVY, PURPLE, RED,
                    SLATE, line, recap_card, rect, svg, t, wrap_text, write_svg)


def cover_banner() -> None:
    w, h = 760, 176
    b = [rect(0, 0, w, h, "#0B2036", "#0B2036", 10, 1.0)]
    b.append(t(380, 36, "A NOVEL · A CAST · A PAPER", size=17,
               fill="#34D399", weight="bold"))
    b.append(t(380, 62, "Twelve chapters, one decision, and sixty questions", size=11.4,
               fill="#CBD5E1"))

    titles = ["Dusk", "Enticement", "Migration", "Visa", "Snake", "Comes",
              "Ritualists", "Missions", "Waterfalls", "Passport", "Return", "Dawn"]
    x0, bw, gap = 26, 56, 6
    for i, name in enumerate(titles):
        x = x0 + i * (bw + gap)
        fill = "#134E4A" if i not in (0, 11) else "#065F46"
        stroke = "#475569" if i not in (0, 11) else "#34D399"
        b.append(rect(x, 82, bw, 44, fill, stroke, 5, 1.0))
        b.append(t(x + bw / 2, 100, f"CH {i + 1}", size=6.6, fill="#94A3B8"))
        b.append(t(x + bw / 2, 114, name[:9], size=6.8, fill="#E2E8F0", weight="bold"))

    b.append(line(26, 140, 734, 140, "#334155", 0.9))
    b.append(t(26, 160, "One text  ·  over five hundred questions  ·  three timed papers",
               size=9.4, fill="#94A3B8", anchor="start"))
    b.append(t(734, 160, "JAMB CBT MASTER SERIES", size=9.4, fill="#34D399",
               anchor="end", weight="bold"))
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg="#0B2036"))


def utme_weight() -> None:
    """A stacked bar of the sixty questions, with this volume's blocks marked."""
    w = 760
    blocks = [
        ("Compr.", 5, "#334155"),
        ("Cloze", 10, "#334155"),
        ("READING TEXT", 10, "#065F46"),
        ("Interp.", 5, "#64748B"),
        ("Antonyms", 5, "#64748B"),
        ("Synonyms", 5, "#64748B"),
        ("Grammar", 10, "#64748B"),
        ("Oral forms", 10, "#475569"),
    ]
    total = sum(n for _l, n, _c in blocks)
    x0, y0, bar_w, bar_h = 26, 84, w - 52, 54
    b = [t(w / 2, 26, "Where the sixty questions sit, and the block this volume is built around", size=12.6,
           weight="bold", fill=NAVY)]
    b.append(t(w / 2, 46, "Green is the reading text: ten questions, one sixth of the paper, from a book of about sixty pages.",
               size=9.2, fill=MUTED))
    x = x0
    for label, n, colour in blocks:
        seg = bar_w * n / total
        b.append(rect(x, y0, seg - 2, bar_h, colour, colour, 3, 0))
        b.append(t(x + seg / 2, y0 + 22, str(n), size=11.0, fill="#FFFFFF", weight="bold"))
        b.append(t(x + seg / 2, y0 + 40, label, size=6.4, fill="#E2E8F0"))
        x += seg

    b.append(t(x0, y0 + bar_h + 22, "The three timed papers at the back rehearse all sixty, in the order a CBT engine meets them.",
               size=9.4, fill=SLATE, anchor="start"))
    b.append(t(x0, y0 + bar_h + 40, "Ten questions come straight from the novel, and they are the cheapest ten on the paper.",
               size=9.4, fill=GREEN, anchor="start", weight="bold"))
    body = rect(12, 10, w - 24, y0 + bar_h + 52, "none", GREEN, 9, 1.4)
    write_svg("utme_weight.svg", svg(w, y0 + bar_h + 72, body + "\n" + "\n".join(b)))


def recaps() -> None:
    recap_card(
        "recap_ch01.svg", "Chapter 1 recap — the reading text in the exam",
        [
            ("Ten marks", "one sixth of the paper, and the only section with a closed and short set text behind it."),
            ("Four shapes", "fact, sequence, character, theme. Name the shape before you read the options."),
            ("Two reads", "the first for the story, the second with the twelve cards open."),
            ("Five lies", "wrong name, wrong chapter, half-truth, true irrelevance, overstatement."),
            ("Twenty minutes", "a candidate who has made the cards can revise the whole novel in twenty minutes."),
        ],
    )
    recap_card(
        "recap_ch02.svg", "Chapter 2 recap — plot, Dusk to Dawn",
        [
            ("Three movements", "pressure (1–4), the school (5–8), the decision (9–12)."),
            ("Six beats", "assembly, five days, the round, farewell, Saturday, Monday."),
            ("Two timelines", "the term in front of Bepo, and the twenty-four years behind him."),
            ("Sequence", "anchor first, chapter next, then the scene; and read the word *immediately*."),
            ("Titles", "learn all twelve in order; they carry the structure of the book."),
        ],
    )
    recap_card(
        "recap_ch03.svg", "Chapter 3 recap — character",
        [
            ("Five circles", "family, staff, board, parents and students, outsiders."),
            ("Bepo by refusal", "no rite, no silence, no bribe — the character is drawn by what he will not do."),
            ("Function", "Apeh steadies, Audu tells the truth in jest, Ope Wande fails to console."),
            ("Contrast", "Bepo against Egi Meko, Stardom against Beesway, staying against going."),
            ("Method", "name the act, choose the adjective, test the opposite, find the line."),
        ],
    )
    recap_card(
        "recap_ch04.svg", "Chapter 4 recap — theme and setting",
        [
            ("Six themes", "japa, integrity, leadership, family, ritual, heritage."),
            ("The argument", "the case for leaving gets the better lines; the book still decides against it."),
            ("Badagry", "the analogy between the slave ship and the plane is the centre of the novel."),
            ("Settings", "Lekki and Stardom, Beesway and Fruitful Future, Badagry, Ibadan, and a London we never see."),
            ("Test", "a theme needs a scene behind it; a setting needs a meaning, not a postcode."),
        ],
    )
    recap_card(
        "recap_ch05.svg", "Chapter 5 recap — technique and style",
        [
            ("Frame", "Dusk opens and Dawn closes; the titles are moods, not times."),
            ("Narrator", "third person, limited to Bepo, which is why every judgement feels like fact."),
            ("Symbols", "dusk and dawn, the snake in the roof, the Point of No Return, the carvings."),
            ("Style", "proverbs, humour, irony and Nigerian English, used to argue without preaching."),
            ("Answer shape", "device plus purpose; a device without a purpose is half a mark."),
        ],
    )
    recap_card(
        "recap_ch06.svg", "Chapter 6 recap — the full paper",
        [
            ("Sixty questions", "twenty-five comprehension and text, twenty-five lexis, ten oral."),
            ("Three passes", "20 minutes on sight, 13 on the flags, 7 on the boxes and the checks."),
            ("Order", "novel, oral, comprehension, cloze, then the lexis blocks."),
            ("Eliminate", "category error, absolute, wrong register, and the echo of the passage."),
            ("Last five", "blanks, negatives, mis-reads, transfer — in that order."),
        ],
    )


def main() -> None:
    cover_banner()
    utme_weight()
    recaps()
