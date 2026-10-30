#!/usr/bin/env python3
"""Render the timed papers and the master bank for Use of English Volume 3.

Each paper is a list of sections. A section is:

    (kind, heading, lead, items)

where `kind` is "passage", "cloze" or "plain", `lead` is optional prose printed
above the questions (a passage, or a set of instructions), and `items` is a
list of (stem, [A, B, C, D], correct_index, solution).

The correct option is moved to an allotted position so that the key is spread
across A–D. Solutions refer to options by content, never by letter, so the
shuffle cannot make them stale.
"""

from __future__ import annotations

import json
import random
import re
import zlib
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
OUT = HERE.parent

from paper1_data import PAPER_1  # noqa: E402
from paper2_data import PAPER_2  # noqa: E402
from novel_data import NOVEL_PAPER  # noqa: E402
from bank_data_a import BANK_A  # noqa: E402
from bank_data_b import BANK_B  # noqa: E402

LETTERS = "ABCD"


def _clean(text: str) -> str:
    text = text.replace(chr(92) * 2 + "/", chr(92) + "/")
    # a dollar sign opens math mode in Typst, so a price has to be escaped
    text = re.sub(r"(?<!\\)\$", lambda m: chr(92) + "$", text)
    text = re.sub(r"(?<!\\)_{2,}", lambda m: (chr(92) + "_") * len(m.group(0)), text)
    return text


def _pad(key: str) -> float:
    path = OUT / "_fit.json"
    if path.exists():
        return float(json.loads(path.read_text()).get(key, 0))
    return 0.0


def _qpad(key: str) -> float:
    path = OUT / "_fit.json"
    if path.exists():
        return float(json.loads(path.read_text()).get("q_" + key, 0))
    return 0.0


def shuffle_item(item, seed):
    stem, opts, correct, sol = item
    order = list(range(len(opts)))
    random.Random(seed).shuffle(order)
    new_opts = [opts[i] for i in order]
    key = LETTERS[order.index(correct)]
    return stem, new_opts, key, sol


def balance(items, seed, max_run=3):
    n = len(items)
    cap = n // 4 + 2
    best = None
    for attempt in range(300):
        done = [shuffle_item(q, seed + attempt * 977 + i) for i, q in enumerate(items)]
        keys = [k for _s, _o, k, _so in done]
        counts = {L: keys.count(L) for L in LETTERS}
        run = longest = 1
        for a, b in zip(keys, keys[1:]):
            run = run + 1 if a == b else 1
            longest = max(longest, run)
        if max(counts.values()) <= cap and longest <= max_run:
            return done
        if best is None:
            best = done
    return best


def mcq(num, stem, opts):
    out = [f"#mcq({num}, [{_clean(stem)}],"]
    for o in opts:
        out.append(f"  [{_clean(o)}],")
    out[-1] = out[-1].rstrip(",")
    out.append(")")
    return "\n".join(out)


def passage_block(heading, text):
    lines = [
        "#block(",
        "  width: 100%,",
        "  fill: rgb(\"#F8FAFC\"),",
        "  stroke: 0.9pt + jamb-border,",
        "  radius: 8pt,",
        "  inset: (x: 12pt, y: 10pt),",
        ")[",
        "  #set par(leading: 0.62em, spacing: 0.72em)",
        f'  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[{heading}]',
        "  #v(3pt)",
        "  #text(size: 9.6pt)[",
    ]
    for para in text.split("\n\n"):
        lines.append("    " + _clean(para).replace("\n", " ") + " \\")
        lines.append("    #v(4pt)")
    if lines[-1] == "    #v(4pt)":
        lines.pop()
        if lines[-1].endswith(" \\"):
            lines[-1] = lines[-1][:-2]
    lines += ["  ]", "]", ""]
    return "\n".join(lines)


def render_paper(spec, out_name, banner_label, banner_title, lead, minutes, number_note):
    sections = spec
    flat = []
    for _kind, _head, _lead, items in sections:
        flat.extend(items)
    # shuffle once across the whole paper, then hand the items back in order
    shuffled = balance(flat, seed=zlib.crc32(out_name.encode()) % 10_000)
    idx = 0
    numbered = []
    for kind, head, ltxt, items in sections:
        numbered.append((kind, head, ltxt, shuffled[idx:idx + len(items)]))
        idx += len(items)

    keys = [k for _k, _h, _l, its in numbered for _s, _o, k, _so in its]
    n = len(keys)

    lines = ["#import \"template.typ\": *", ""]
    lines += [
        f'#current-chapter.update("{banner_title}")',
        "",
        "#pagebreak()",
        "",
        f'#hide[#heading(level: 1, outlined: true)[{banner_title}]]',
        "",
        "#block(",
        "  width: 100%,",
        "  fill: jamb-navy,",
        "  stroke: 1.5pt + jamb-bright,",
        "  radius: 10pt,",
        "  inset: 18pt,",
        ")[",
        '  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))'
        f'[{banner_label}]',
        "  #v(6pt)",
        '  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)'
        f'[{banner_title}]',
        "  #v(4pt)",
        '  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[',
        f"    {lead}",
        "  ]",
        "]",
        "",
        "#v(5pt)",
        "",
        f"+ Attempt *all {n}* questions in *{minutes} minutes*. There is no negative marking, so never leave a blank.",
        "",
        "+ Work in three passes: what you know on sight, then the flagged questions, then the boxes and the checks.",
        "",
        "+ Mark yourself against the key only when the clock has stopped.",
        "",
        "#v(4pt)",
        "",
    ]

    qnum = 0
    for kind, head, ltxt, items in numbered:
        lines.append(f"== {head}")
        lines.append("")
        if ltxt:
            if kind == "passage":
                lines.append(passage_block("PASSAGE", ltxt))
            elif kind == "cloze":
                lines.append(passage_block("CLOZE PASSAGE — read the whole paragraph before you fill the first blank", ltxt))
            else:
                lines.append(_clean(ltxt))
                lines.append("")
        for stem, opts, _k, _so in items:
            qnum += 1
            lines.append(mcq(qnum, stem, opts))
            lines.append("")
        lines.append("")

    # key
    lines += [
        f'#current-chapter.update("{banner_title} — Answer Key")',
        "",
        "== Answer Key",
        "",
        "#answer-key-grid((",
    ]
    for s in range(0, n, 10):
        lines.append("  " + ", ".join(f'"{k}"' for k in keys[s:s + 10]) + ",")
    lines.append("))")
    lines.append("")
    secure = int(n * 0.85)
    steady = int(n * 0.7)
    lines += [
        "#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[",
        '  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARK YOURSELF]',
        "  #v(4pt)",
        "  #table(",
        "    columns: (0.9fr, 2.6fr),",
        "    inset: 4pt,",
        "    align: (left + horizon, left + horizon),",
        "    stroke: none,",
        f"    [*{secure}–{n}*], [Secure. The paper is under control; work on speed rather than knowledge.],",
        f"    [*{steady}–{secure - 1}*], [Developing. Read the solution to every question you flagged, whatever you scored.],",
        f"    [*0–{steady - 1}*], [Revise before re-sitting. Return to the chapter named in each solution.],",
        "  )",
        "]",
        "",
        f'#current-chapter.update("{banner_title} — Complete Solutions")',
        "",
    ]

    pad = _pad(out_name.replace(".typ", ""))
    lines += ["#[", "  #set text(size: 9.0pt)",
              "  #set par(leading: 0.63em, spacing: 0.68em)", ""]
    lines.append("  #block(breakable: false)[")
    lines.append("  == Complete Solutions")
    lines.append("")
    lines.append(f"  {number_note}")
    lines.append("")
    k = 0
    opened = True
    for _kind, _head, _lead, items in numbered:
        for _s, _o, key, sol in items:
            k += 1
            lines.append(f'  #sol-item({k}, "{key}", dense: true, pad: {pad}pt)[')
            lines.append(f"    {_clean(sol)}")
            lines.append("  ]")
            if opened:
                # the heading and the first solution travel together, then the
                # block closes so the rest of the run can break across pages
                lines.append("  ]")
                opened = False
            lines.append("")
    lines.append("]")
    lines.append("")

    path = OUT / out_name
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"wrote {out_name}: {n} questions")
    return keys


def render_novel():
    sections = NOVEL_PAPER
    flat = [q for _k, _h, _l, its in sections for q in its]
    shuffled = balance(flat, seed=9001)
    idx = 0
    numbered = []
    for kind, head, ltxt, items in sections:
        numbered.append((kind, head, ltxt, shuffled[idx:idx + len(items)]))
        idx += len(items)
    return numbered


def render_bank():
    items = BANK_A + BANK_B
    shuffled = balance(items, seed=7771)
    return shuffled



def render_answer_keys():
    """Appendix C: every key in the volume on a few pages."""
    import drills_eng3

    blocks = []
    for fname, label in (("paper1.typ", "C.1 Full Paper 1"), ("paper2.typ", "C.2 Full Paper 2")):
        spec = PAPER_1 if fname == "paper1.typ" else PAPER_2
        flat = [q for _k, _h, _l, its in spec for q in its]
        keys = [k for _s, _o, k, _so in balance(flat, seed=zlib.crc32(fname.encode()) % 10_000)]
        blocks.append((label, keys))
    nov = [q for _k, _h, _l, its in NOVEL_PAPER for q in its]
    blocks.append(("C.3 The Novel Paper", [k for _s, _o, k, _so in balance(nov, seed=9001)]))
    blocks.append(("C.4 The 120-Question Master Bank",
                   [k for _s, _o, k, _so in balance(BANK_A + BANK_B, seed=7771)]))
    titles = {1: "Chapter 1 Practice Drill", 2: "Chapter 2 Practice Drill",
              3: "Chapter 3 Practice Drill", 4: "Chapter 4 Practice Drill",
              5: "Chapter 5 Practice Drill", 6: "Chapter 6 Practice Drill"}
    for ch in range(1, 7):
        items = drills_eng3.balance(drills_eng3.BANK[ch], seed=1000 + ch * 37)
        blocks.append((f"C.{4 + ch} {titles[ch]}", [k for _s, _o, k, _so in items]))

    lines = ["#import \"template.typ\": *", "",
             '#current-chapter.update("Appendix C: Consolidated Answer Keys")', "",
             "#pagebreak()", "",
             '#hide[#heading(level: 1, outlined: true)[Appendix C: Consolidated Answer Keys]]', "",
             "#block(", "  width: 100%,", "  fill: jamb-navy,", "  stroke: 1.5pt + jamb-bright,",
             "  radius: 10pt,", "  inset: 18pt,", ")[",
             '  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX C]',
             "  #v(6pt)",
             '  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Consolidated Answer Keys]',
             "  #v(4pt)",
             '  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[',
             "    Every key in the volume, in one place: the two full papers, the novel paper, the master bank",
             "    and the six chapter drills. If you photocopy one part of this book, photocopy this.",
             "  ]", "]", "", "#v(5pt)", ""]
    for name, keys in blocks:
        lines += [f"== {name}", "", "#answer-key-grid(("]
        for s in range(0, len(keys), 10):
            lines.append("  " + ", ".join(f'"{k}"' for k in keys[s:s + 10]) + ",")
        lines += ["))", ""]
    (OUT / "answer_keys.typ").write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"wrote answer_keys.typ: {len(blocks)} keys, {sum(len(k) for _n, k in blocks)} answers")


def main() -> int:
    render_paper(PAPER_1, "paper1.typ", "PAPER 1 OF 2",
                 "Full Paper 1", "Sixty questions in forty minutes, in the order and proportions of a real UTME English paper: a comprehension passage, a cloze passage, ten questions on the reading text, and the lexis, grammar and oral blocks.",
                 40, "Every solution names the block it belongs to and the chapter that teaches the rule.")
    render_paper(PAPER_2, "paper2.typ", "PAPER 2 OF 2",
                 "Full Paper 2", "A second sixty-question paper, set at the same length and difficulty as the first and drawn from different passages, different novel questions and a different mix of the lexis blocks.",
                 40, "Sit this one a week after Paper 1, when the first paper's mistakes have had time to become habits.")

    # the novel paper
    numbered = render_novel()
    n = sum(len(its) for _k, _h, _l, its in numbered)
    keys = [k for _k, _h, _l, its in numbered for _s, _o, k, _so in its]
    lines = ["#import \"template.typ\": *", "",
             '#current-chapter.update("The Novel Paper")', "", "#pagebreak()", "",
             '#hide[#heading(level: 1, outlined: true)[The Novel Paper]]', "",
             "#block(", "  width: 100%,", "  fill: jamb-navy,", "  stroke: 1.5pt + jamb-bright,",
             "  radius: 10pt,", "  inset: 18pt,", ")[",
             '  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[THE NOVEL PAPER]',
             "  #v(6pt)",
             '  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Forty Questions on the Text]',
             "  #v(4pt)",
             '  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[',
             "    Forty questions on *The Lekki Headmaster* alone — fact, sequence, character, theme and technique — in twenty-five minutes. This is the closest thing to the ten marks of the reading text, rehearsed four times over.",
             "  ]", "]", "", "#v(5pt)", "",
             f"+ Forty questions in *25 minutes*. That is 37 seconds a question — the pace of the real block.",
             "", "+ No blanks. The reading text is the one block where a candidate who has done the file should score ten out of ten.",
             "", "#v(4pt)", ""]
    q = 0
    for _kind, head, _l, items in numbered:
        lines.append(f"== {head}")
        lines.append("")
        for stem, opts, _k, _so in items:
            q += 1
            lines.append(mcq(q, stem, opts))
            lines.append("")
        lines.append("")
    lines += ['#current-chapter.update("The Novel Paper — Key")', "", "== Answer Key", "", "#answer-key-grid(("]
    for s in range(0, len(keys), 10):
        lines.append("  " + ", ".join(f'"{k}"' for k in keys[s:s + 10]) + ",")
    lines.append("))")
    lines.append("")
    lines += ['#current-chapter.update("The Novel Paper — Solutions")', "", "== Complete Solutions", "",
              "#[", "  #set text(size: 9.0pt)", "  #set par(leading: 0.63em, spacing: 0.68em)", ""]
    novel_pad = _pad("novel_paper")
    k = 0
    for _kind, _head, _l, items in numbered:
        for _s, _o, key, sol in items:
            k += 1
            lines.append(f'  #sol-item({k}, "{key}", dense: true, pad: {novel_pad}pt)[')
            lines.append(f"    {_clean(sol)}")
            lines.append("  ]")
            lines.append("")
    lines += ["]", ""]
    (OUT / "novel_paper.typ").write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"wrote novel_paper.typ: {n} questions")

    # the 120-question master bank
    items = render_bank()
    keys = [k for _s, _o, k, _so in items]
    lines = ["#import \"template.typ\": *", "",
             '#current-chapter.update("Appendix B: The 120-Question Master Bank")', "", "#pagebreak()", "",
             '#hide[#heading(level: 1, outlined: true)[Appendix B: The 120-Question Master Bank]]', "",
             "#block(", "  width: 100%,", "  fill: jamb-navy,", "  stroke: 1.5pt + jamb-bright,",
             "  radius: 10pt,", "  inset: 18pt,", ")[",
             '  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX B]',
             "  #v(6pt)",
             '  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The 120-Question Master Bank]',
             "  #v(4pt)",
             '  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[',
             "    One hundred and twenty questions that appear in neither paper, mixed across the novel, the passages, the lexis blocks and the oral forms. Use them as a weekly test, or as the final week's revision.",
             "  ]", "]", "", "#v(5pt)", "",
             f"+ One hundred and twenty questions in *80 minutes*. Work in blocks of twenty, marking each block before you start the next.",
             "", "+ The key and a full solution for every question follow the last item.",
             "", "#v(4pt)", ""]
    for i, (stem, opts, _k, _so) in enumerate(items, 1):
        lines.append(mcq(i, stem, opts))
        lines.append("")
    lines += ['#current-chapter.update("Appendix B — Key")', "", "== Answer Key", "", "#answer-key-grid(("]
    for s in range(0, len(keys), 10):
        lines.append("  " + ", ".join(f'"{k}"' for k in keys[s:s + 10]) + ",")
    lines.append("))")
    lines.append("")
    lines += ['#current-chapter.update("Appendix B — Solutions")', "", "== Complete Solutions", "",
              "#[", "  #set text(size: 9.0pt)", "  #set par(leading: 0.63em, spacing: 0.68em)", ""]
    bank_pad = _pad("bank120")
    for i, (_s, _o, key, sol) in enumerate(items, 1):
        lines.append(f'  #sol-item({i}, "{key}", dense: true, pad: {bank_pad}pt)[')
        lines.append(f"    {_clean(sol)}")
        lines.append("  ]")
        lines.append("")
    lines += ["]", ""]
    (OUT / "bank120.typ").write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"wrote bank120.typ: {len(items)} questions")

    render_answer_keys()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
