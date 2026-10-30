#!/usr/bin/env python3
"""Build the Chemistry Volume 3 back matter.

Sources: `bank_chem3_c01.py` … `c06.py`, which hold items that never appear in
the end-of-chapter drills. The deck is dealt round-robin by chapter so that
every paper mixes the six chapters in the order a CBT engine would.

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

from bank_chem3_c01 import PAPER_1  # noqa: E402
from bank_chem3_c02 import PAPER_2  # noqa: E402
from bank_chem3_c03 import PAPER_3  # noqa: E402
from bank_chem3_c04 import PAPER_4  # noqa: E402
from bank_chem3_c05 import PAPER_5  # noqa: E402
from bank_chem3_c06 import PAPER_6  # noqa: E402

BANK_3 = {1: PAPER_1, 2: PAPER_2, 3: PAPER_3, 4: PAPER_4, 5: PAPER_5, 6: PAPER_6}

OUT = HERE.parent
LETTERS = "ABCD"


def _pad(stem: str) -> float:
    """Extra air between solutions, in points, tuned by tools/fit_solutions.py."""
    path = OUT / "_fit.json"
    if path.exists():
        return float(json.loads(path.read_text()).get(stem, 0))
    return 0.0


CHAPTER_NAMES = {
    1: "Metals and the Reactivity Series",
    2: "Groups 1 and 2",
    3: "Aluminium, Iron and Steel",
    4: "Hydrogen, Oxygen and Nitrogen",
    5: "Sulphur and the Halogens",
    6: "Chemical Industry and the Environment",
}


# ── deck building ──────────────────────────────────────────────────────────
def build_deck(seed: int = 4242):
    """(chapter, question) pairs, round-robin so topics alternate."""
    rng = random.Random(seed)
    bags = {}
    for ch, items in BANK_3.items():
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
        head = f"{tag.title()} — {title}"
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
    out.append('#answer-key-grid(label: "✓ ANSWER KEY", (')
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
        "of a real UTME Chemistry paper on metals, the s-block, aluminium and iron, the gases, "
        "sulphur, the halogens and industrial chemistry.",
        [
            "+ Attempt *all forty* questions in *forty minutes*. There is no negative marking, so never leave a blank.",
            "+ One minute a question. If a question takes longer than ninety seconds, flag it and return in the final pass.",
            "+ Mark yourself against the key only when the forty minutes have elapsed.",
            "+ Record every miss in the Question Map — it converts a score into a revision plan.",
        ],
        m1, seed=9001,
        stats=[("QUESTIONS", "40"), ("TIME", "40 min"), ("MARKING", "No negatives"), ("TARGET", "30 / 40")],
        fit_key="mock_ch11",
    )
    write("mock_ch11.typ", lines, "Mock Examination 1")

    # ── Mock Examination 2 ────────────────────────────────────────────────
    m2 = draw(40)
    lines, keys2 = paper(
        "Mock Examination 2", "Second Full-Syllabus CBT Paper", "MOCK EXAMINATION 2",
        "A second forty-question paper built from different items: the same syllabus coverage with "
        "more of the extraction, test and calculation questions. Sit it a week after Mock 1.",
        [
            "+ Forty questions, forty minutes, no negative marking.",
            "+ Expect at least eight questions that need a calculation before the choice can be made.",
            "+ Mark only after the full forty minutes have elapsed.",
        ],
        m2, seed=9102,
        stats=[("QUESTIONS", "40"), ("TIME", "40 min"), ("MARKING", "No negatives"), ("TARGET", "31 / 40")],
        fit_key="mock2",
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
    out += ["== A.1 Questions and Answers", ""]
    out += [
        "#[",
        "  #set text(size: 7.8pt)",
        "  #table(",
        "    columns: (2.45fr, 1.75fr),",
        "    inset: (x: 5pt, y: 1.9pt),",
        "    align: (left + horizon, left + horizon),",
        "    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },",
        "    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },",
        '    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],',
        '      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),',
    ]
    for i, (_ch, stem, opts, _sol) in enumerate(ordered_r):
        out.append(f"    [{stem}], [{opts[LETTERS.index(_keys_r[i])]}],")
    out += ["  )", "]", ""]
    write("rapid_fire.typ", out, "Appendix A: 40 Rapid-Fire Recall Pairs")

    # ── The 120-question master bank ──────────────────────────────────────
    bank = draw(120)
    lines, keys_b = paper(
        "The 120-Question Master Bank", "The 120-Question Master Bank", "APPENDIX B",
        "One hundred and twenty questions covering every chapter of the volume. Use it as a bank, "
        "not as a test: work in blocks of twenty, mark each block, and return a fortnight later and "
        "do the blocks in the shuffled order the CBT engine would use.",
        ["Every solution names its chapter, so a wrong answer tells you exactly where to go."],
        bank, seed=9405, map_style="table", fit_key="bank120", gap="3pt",
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
    write("answer_keys.typ", out, "Appendix C: Consolidated Answer Keys")

    print("papers complete; unused items:", len(deck) - cur)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
