#!/usr/bin/env python3
"""Build the Physics Volume 4 back matter.

Sources: `bank_phys4_p01.py` … `p06.py`, which each hold a `PAPER_n` list of
items that never appear in the end-of-chapter drills. The deck is dealt
round-robin by chapter so that every paper mixes the six chapters in the order
a CBT engine would.

Outputs
    mock_ch11.typ      Mock Examination 1  (40 questions)
    mock2.typ          Mock Examination 2  (40 questions)
    rapid_fire.typ     40 rapid-fire recall pairs
    bank120.typ        The 120-Question Master Bank
    answer_keys.typ    Consolidated keys
"""

from __future__ import annotations

import json
import random
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import bank_phys4_p01 as _p1  # noqa: E402
import bank_phys4_p02 as _p2  # noqa: E402
import bank_phys4_p03 as _p3  # noqa: E402
import bank_phys4_p04 as _p4  # noqa: E402
import bank_phys4_p05 as _p5  # noqa: E402
import bank_phys4_p06 as _p6  # noqa: E402

BANK_1 = {1: _p1.PAPER_1, 2: _p2.PAPER_2, 3: _p3.PAPER_3,
          4: _p4.PAPER_4, 5: _p5.PAPER_5, 6: _p6.PAPER_6}

OUT = HERE.parent
LETTERS = "ABCD"


def _pad(stem: str) -> float:
    """Extra air between solutions, in points, tuned by tools/fit_solutions.py."""
    path = OUT / "_fit.json"
    if path.exists():
        return float(json.loads(path.read_text()).get(stem, 0))
    return 0.0


def _qpad(stem: str) -> float:
    """Extra air after every question, tuned by tools/tune_fit.py."""
    path = OUT / "_fit.json"
    if path.exists():
        return float(json.loads(path.read_text()).get("q_" + stem, 0))
    return 0.0


CHAPTER_NAMES = {
    1: "Electrostatics and Capacitors",
    2: "Current Electricity",
    3: "Magnetism and Electromagnetic Induction",
    4: "Electronics",
    5: "Atomic Physics",
    6: "Radioactivity and Nuclear Physics",
}


# ── deck building ──────────────────────────────────────────────────────────
def build_deck(seed: int = 4242):
    """(chapter, question) pairs, round-robin so topics alternate."""
    rng = random.Random(seed)
    bags = {}
    for ch, items in BANK_1.items():
        pool = [q for q in items if len(q) == 4]
        rng.shuffle(pool)
        bags[ch] = pool
    deck = []
    while any(bags.values()):
        for ch in sorted(bags):
            if bags[ch]:
                deck.append((ch, bags[ch].pop()))
    return deck


def positions(n, seed):
    rng = random.Random(seed)
    out = []
    while len(out) < n:
        block = [0, 1, 2, 3]
        rng.shuffle(block)
        out.extend(block)
    return out[:n]


def order(qs, seed):
    """Permute the options and return (keys, [(ch, stem, opts, sol)])."""
    pos = positions(len(qs), seed)
    keys, ordered = [], []
    for (ch, (stem, opts, idx, sol)), p in zip(qs, pos):
        rest = [o for i, o in enumerate(opts) if i != idx]
        new = rest[:]
        new.insert(p, opts[idx])
        keys.append(LETTERS[p])
        ordered.append((ch, stem, new, sol))
    return keys, ordered


# ── rendering helpers ──────────────────────────────────────────────────────
def banner(tag, title, subtitle, intro, out):
    if tag.startswith("APPENDIX "):
        head = f"{tag.title()}: {title}"
    elif tag.startswith("MOCK "):
        head = tag.title()
    else:
        head = title
    out.append(f"#hide[#heading(level: 1, outlined: true)[{head}]]")
    out.append("")
    out += [
        "#block(",
        "  width: 100%,",
        "  fill: jamb-navy,",
        "  stroke: 1.5pt + jamb-bright,",
        "  radius: 10pt,",
        "  inset: 18pt,",
        ")[",
        f'  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[{tag}]',
        "  #v(6pt)",
        f'  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[{title}]',
    ]
    if subtitle:
        out += [
            "  #v(4pt)",
            f'  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[{subtitle}]',
        ]
    out += ["]", "", "#v(5pt)", ""]
    for line in intro:
        out.append(line)
        out.append("")


def stat_grid(cells, out):
    """Four mint statistic tiles under a mock banner."""
    out.append("#grid(")
    out.append("  columns: (1fr, 1fr, 1fr, 1fr),")
    out.append("  column-gutter: 8pt,")
    for label, value in cells:
        out.append(
            '  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, '
            'inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)'
            f'[{label}] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", '
            f'fill: jamb-navy)[{value}]],'
        )
    out.append(")")
    out.append("")


def questions(out, qs, start=1, gap=""):
    for i, (_ch, stem, opts, _sol) in enumerate(qs, start):
        parts = ", ".join(f"[{o}]" for o in opts)
        out.append(f"#mcq({i}, [{stem}], {parts})")
        if gap:
            out.append(f"#v({gap})")
        out.append("")


def keygrid(out, keys):
    out.append('#answer-key-grid((')
    for s in range(0, len(keys), 10):
        out.append("  " + ", ".join(f'"{k}"' for k in keys[s:s + 10]) + ",")
    out.append("))")
    out.append("")


def score_band(out, n):
    secure = -(-int(n * 0.85) // 1)
    steady = -(-int(n * 0.7) // 1)
    out += [
        "#v(8pt)",
        "",
        '#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[',
        '  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[READ YOUR SCORE]',
        "  #v(3pt)",
        "  #table(",
        "    columns: (0.9fr, 2.6fr),",
        "    inset: 4pt,",
        "    align: (left + horizon, left + horizon),",
        "    stroke: none,",
        f"    [*{secure}–{n}*], [Secure. Sit the next paper under the same conditions within a week.],",
        f"    [*{steady}–{secure - 1}*], [Developing. Group your misses by chapter in the Question Map and revise the heaviest one.],",
        f"    [*0–{steady - 1}*], [Revise before re-testing. Reread the chapter and redo its drill first.],",
        "  )",
        "]",
        "",
    ]


def question_map(out, qs):
    """A chapter-by-chapter index of the paper, so a column of ticks becomes
    a revision list."""
    groups = {}
    for j, (ch, _s, _o, _so) in enumerate(qs, 1):
        groups.setdefault(ch, []).append(j)
    out.append(
        "Which chapter each question came from, grouped so that a column of misses in your "
        "script becomes a revision list. Tick every question you got wrong; the chapter with "
        "the longest tick list is the one to revise tonight, before you re-sit the paper."
    )
    out.append("")
    out += [
        "#table(",
        "  columns: (0.42fr, 1.75fr, 2.55fr, 0.5fr),",
        "  inset: 5pt,",
        "  align: (center + horizon, left + horizon, left + horizon, center + horizon),",
        "  stroke: 0.5pt + jamb-border,",
        "  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },",
        '  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],',
        '    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topic],',
        '    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions],',
        '    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.]),',
    ]
    for ch in sorted(groups):
        nums = ", ".join(str(n) for n in groups[ch])
        out.append(f"  [{ch}], [{CHAPTER_NAMES[ch]}], [{nums}], [{len(groups[ch])}],")
    out += [")", ""]
    heavy = sorted(groups.items(), key=lambda kv: (-len(kv[1]), kv[0]))[:2]
    top = len(heavy[0][1])
    if len(heavy) > 1 and len(heavy[1][1]) == top:
        lead = " and ".join(f"Chapter {ch} ({len(v)})" for ch, v in heavy)
        out.append(
            f"The paper is level with the syllabus: {lead} carry the most questions, so a miss "
            "there costs the most marks. Revise those first."
        )
    else:
        out.append(
            f"Chapter {heavy[0][0]} carries the most questions ({top}), so a miss there costs the "
            "most marks. Revise it first."
        )
    out.append("")


def topic_table(out, qs):
    counts = {}
    for ch, _s, _o, _so in qs:
        counts[ch] = counts.get(ch, 0) + 1
    out.append(
        "The chapter each block of questions came from. Work the bank in blocks of twenty by the "
        "topic column; the CBT engine itself does not group by topic."
    )
    out.append("")
    out += [
        "#table(",
        "  columns: (0.5fr, 2.0fr, 0.7fr, 2.0fr),",
        "  inset: 5pt,",
        "  align: (center + horizon, left + horizon, center + horizon, left + horizon),",
        "  stroke: 0.5pt + jamb-border,",
        "  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },",
        '  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],',
        '    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topic],',
        '    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Qs],',
        '    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where to go if these are your misses]),',
    ]
    for ch in sorted(counts):
        out.append(f"  [{ch}], [{CHAPTER_NAMES[ch]}], [{counts[ch]}], [Chapter {ch} and its drill],")
    out += [")", ""]


def solutions(out, qs, keys, pad=0, heading=""):
    # A tighter type size keeps a forty-question solution run on two pages
    # instead of spilling a two-line widow onto a third. The heading is glued
    # to the first solution so it is never left alone at the foot of a page.
    out.append("#block[")
    out.append("  #set text(size: 9.6pt)")
    out.append("  #set par(leading: 0.68em, spacing: 0.72em)")
    out.append("  #block(breakable: false)[")
    out.append(f"  == {heading}")
    for i, ((ch, _stem, _opts, sol), k) in enumerate(zip(qs, keys), 1):
        out.append(f'  #sol-item({i}, "{k}", dense: true, pad: {pad}pt)[')
        out.append(f"    *Chapter {ch}.* {sol}")
        out.append("  ]")
        if i == 2:
            out.append("  ]")
        out.append("")
    out.append("]")
    out.append("")


def paper(num, title, tag, subtitle, intro, qs, seed, stats=None, map_style="inline", fit_key="", gap=""):
    keys, ordered = order(qs, seed)
    out = ["#pagebreak()", ""]
    banner(tag, title, subtitle, intro, out)
    if stats:
        stat_grid(stats, out)
    out.append(f"== {num} — Questions")
    out.append("")
    questions(out, ordered, gap=gap)
    out.append("#pagebreak()")
    out.append("")
    out.append(f"== {num} — Answer Key")
    out.append("")
    keygrid(out, keys)
    score_band(out, len(keys))
    out.append(f"== {num} — Question Map")
    out.append("")
    if map_style == "table" or len(ordered) >= 100:
        topic_table(out, ordered)
    else:
        question_map(out, ordered)
    solutions(out, ordered, keys, pad=_pad(fit_key), heading=f"{num} — Complete Solutions")
    return out, keys


def write(path, lines, chapter_label):
    head = ['#import "template.typ": *', "", f'#current-chapter.update("{chapter_label}")', ""]
    (OUT / path).write_text("\n".join(head + lines) + "\n", encoding="utf-8")
    print(f"wrote {path}")


def main() -> int:
    deck = build_deck()
    print("deck:", len(deck))
    cur = 0

    def draw(n):
        nonlocal cur
        chunk = deck[cur:cur + n]
        cur += n
        return chunk

    # ── Mock Examination 1 ────────────────────────────────────────────────
    m1 = draw(40)
    lines, keys1 = paper(
        "Mock Examination 1", "Full-Syllabus CBT Paper", "MOCK EXAMINATION 1",
        "Forty questions in forty minutes — the format, the difficulty spread and the topic mix "
        "of a real UTME Physics paper on electrostatics, current electricity, magnetism and "
        "induction, electronics, atomic physics and radioactivity.",
        [
            "+ Attempt *all forty* questions in *forty minutes*. There is no negative marking, so never leave a blank.",
            "+ One minute a question. If a question takes longer than ninety seconds, flag it and return in the final pass.",
            "+ Mark yourself against the key only when the forty minutes have elapsed.",
            "+ Record every miss in the Question Map — it converts a score into a revision plan.",
        ],
        m1, seed=9001,
        stats=[("QUESTIONS", "40"), ("TIME", "40 min"), ("MARKING", "No negatives"), ("TARGET", "30 / 40")],
        fit_key="mock1", gap=f"{_qpad('mock1'):.2f}pt",
    )
    write("mock_ch11.typ", lines, "Mock Examination 1")

    # ── Mock Examination 2 ────────────────────────────────────────────────
    m2 = draw(40)
    lines, keys2 = paper(
        "Mock Examination 2", "Second Full-Syllabus CBT Paper", "MOCK EXAMINATION 2",
        "A second forty-question paper built from different items: the same syllabus coverage with "
        "more of the graph, laboratory and calculation questions. Sit it a week after Mock 1.",
        [
            "+ Forty questions, forty minutes, no negative marking.",
            "+ Expect at least twelve questions that need a calculation before the choice can be made.",
            "+ Mark only after the full forty minutes have elapsed.",
        ],
        m2, seed=9102,
        stats=[("QUESTIONS", "40"), ("TIME", "40 min"), ("MARKING", "No negatives"), ("TARGET", "31 / 40")],
        fit_key="mock2", gap=f"{_qpad('mock2'):.2f}pt",
    )
    write("mock2.typ", lines, "Mock Examination 2")

    # ── Rapid-fire recall pairs ───────────────────────────────────────────
    rapid = draw(40)
    _keys_r, ordered_r = order(rapid, seed=9203)
    out = ["#pagebreak()", ""]
    banner(
        "APPENDIX A", "40 Rapid-Fire Recall Pairs",
        "Forty one-line questions with the answer beside each. Cover the right-hand column with a "
        "sheet of paper and work down the list — twenty seconds a line. Anything you cannot answer "
        "in twenty seconds is a chapter to reread tonight.",
        [], out,
    )
    def rf_table(rows, out):
        out += [
            "#[",
            "  #set text(size: 8.4pt)",
            "  #table(",
            "    columns: (2.45fr, 1.75fr),",
            "    inset: (x: 6pt, y: %.2fpt)," % (5.6 + _qpad("rapid")),
            "    align: (left + horizon, left + horizon),",
            "    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },",
            "    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },",
            '    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],',
            '      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),',
        ]
        for i, (_ch, stem, opts, _sol) in rows:
            out.append(f"    [{stem}], [{opts[LETTERS.index(_keys_r[i])]}],")
        out += ["  )", "]", ""]

    out += ["== A.1 The First Twenty", ""]
    rf_table(list(enumerate(ordered_r))[:20], out)
    out += ["#pagebreak()", ""]
    out += [
        "== A.2 The Second Twenty",
        "",
        "Twenty more, in the same format. If a line takes longer than twenty seconds, "
        "the chapter to reread is the one printed in your head beside it — write the number down "
        "and treat the list as a revision order, not a score.",
        "",
    ]
    rf_table(list(enumerate(ordered_r))[20:40], out)
    out += [
        "",
        "Three lines that are worth more than a fourth reading of the list: an answer you had to "
        "work out is not yet an answer you know; the chapter beside the line is where to go, not the "
        "page; and a line you miss twice in a fortnight is a gap in the *chapter*, not in your memory "
        "of the list.",
        "",
        '#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 11pt)[',
        '  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[THE TWENTY-SECOND RULE]',
        "  #v(4pt)",
        "  #text(size: 10.1pt)[",
        "    Twenty seconds is chosen because it is roughly the time a CBT question gives you. If a line "
        "here takes longer, you will not have it in the hall either — not because you never learned it, "
        "but because it is not yet automatic. Read the chapter, redo the drill question on that line, "
        "then come back to the list and time yourself again on the same line only.",
        "  ]",
        "]",
        "",
    ]
    write("rapid_fire.typ", out, "Appendix A: 40 Rapid-Fire Recall Pairs")

    # ── The 120-question master bank ──────────────────────────────────────
    bank = draw(120)
    lines, keys_b = paper(
        "Master Bank", "The 120-Question Master Bank", "APPENDIX B",
        "One hundred and twenty questions covering every chapter of the volume. Use it as a bank, "
        "not as a test: work in blocks of twenty, mark each block, and return a fortnight later and "
        "do the blocks in the shuffled order the CBT engine would use.",
        ["Every solution names its chapter, so a wrong answer tells you exactly where to go."],
        bank, seed=9405, map_style="table", fit_key="bank120", gap=f"{3.0 + _qpad('bank120'):.2f}pt",
    )
    write("bank120.typ", lines, "Appendix B: The 120-Question Master Bank")

    # ── Consolidated keys ─────────────────────────────────────────────────
    out = ["#pagebreak()", ""]
    banner(
        "APPENDIX C", "Consolidated Answer Keys",
        "Every key in the volume, in one place. If you photocopy one part of this book, photocopy "
        "this: it lets you mark any paper in under a minute.",
        [], out,
    )
    for title, ks in (
        ("C.1 Mock Examination 1", keys1),
        ("C.2 Mock Examination 2", keys2),
        ("C.3 The Master Bank", keys_b),
    ):
        out += [f"== {title}", ""]
        keygrid(out, ks)

    # C.4 — the four-question self-checks, read back from the chapter files.
    import re as _re
    ch_files = ["ch01_electrostatics.typ", "ch02_current.typ", "ch03_magnetism.typ",
                "ch04_electronics.typ", "ch05_atomic.typ", "ch06_radioactivity.typ"]
    ch_keys = []
    for name in ch_files:
        text = (OUT / name).read_text(encoding="utf-8")
        block = text.split("#answer-key-grid((", 1)[1].split("))", 1)[0]
        ks = _re.findall(r'"([A-D])"', block)
        assert len(ks) == 4, (name, ks)
        ch_keys.append(ks)

    out += ["== C.4 The Chapter Self-Checks", "",
            "#table(",
            "  columns: (0.45fr, 3.0fr, 1.1fr),",
            "  inset: 5pt,",
            "  align: (center + horizon, left + horizon, center + horizon),",
            "  stroke: 0.5pt + jamb-border,",
            "  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },",
            '  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],',
            '    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],',
            '    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Key]),',
            ]
    for i, ks in enumerate(ch_keys, 1):
        out.append(f"  [{i}], [{CHAPTER_NAMES[i]}], [{' '.join(ks)}],")
    out += [")", ""]

    # C.5 — the drill keys.
    out += ["== C.5 The Six Chapter Drills", ""]
    for i in range(1, 7):
        text = (OUT / f"drill_ch0{i}.typ").read_text(encoding="utf-8")
        ks = _re.findall(r'#sol-item\(\d+, "([A-D])"', text)
        assert len(ks) == 40, (i, len(ks))
        out += [f"=== Drill for Chapter {i} — {CHAPTER_NAMES[i]}", ""]
        keygrid(out, ks)

    # C.6 — the score log: the one page in the book that is meant to be written on.
    out += ["== C.6 The Score Log", "",
            "#text(size: 9.9pt)[A key you never use is a list of letters. Mark the paper, write the number down, and write beside it the one chapter that cost you the most marks — that sentence is what you revise next, not the chapter you enjoyed.]",
            "", "#v(2pt)", "",
            "#table(",
            "  columns: (1.0fr, 1.6fr, 0.8fr, 0.6fr, 1.6fr, 2.2fr),",
            "  inset: (x: 6pt, y: 5pt),",
            "  align: (left + horizon, left + horizon, center + horizon, center + horizon, left + horizon, left + horizon),",
            "  stroke: 0.5pt + jamb-border,",
            "  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },",
            "  table.header(",
            '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Date],',
            '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Paper],',
            '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Score],',
            '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[%],',
            '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Costliest chapter],',
            '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What I will do before the next one],',
            "  ),",
            ]
    for _ in range(13):
        out += ["  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],"]
    out += [")", "", "#v(6pt)", ""]
    out += ["#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[",
            '  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[READING YOUR OWN LOG]',
            "  #v(3pt)",
            "  #text(size: 9.6pt)[Four lines tell you what to do next. A score that climbs four papers running means the method is working — keep the pace and stop adding material. A score that flat-lines means you are drilling the same chapter over and over; move. A score that falls after a good run usually means speed, not knowledge: time yourself on one paper and check whether the last ten questions are the ones you lost. And the chapter column is the one that matters most — a score can rise while the same chapter keeps appearing, which means you are getting better at the rest of the syllabus and leaving one hole open.]",
            "]", ""]

    # A closing note so that the appendix does not end on a bare table.
    out += ["#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: 10pt)[",
            '  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[WHAT THE KEYS ARE FOR]',
            "  #v(3pt)",
            "  #text(size: 9.5pt)[A key is a measuring instrument, not an answer sheet. The point of marking is not the number at the top of the page but the pattern underneath it: which chapter keeps appearing in the miss column, which kind of question — the graph, the unit conversion, the two-step calculation — keeps catching you. Mark once, write the pattern down, and revise the pattern. The second sitting of the same paper should feel like a different paper.]",
            "]", ""]

    write("answer_keys.typ", out, "Appendix C: Consolidated Answer Keys")

    print("papers complete; unused items:", len(deck) - cur)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
