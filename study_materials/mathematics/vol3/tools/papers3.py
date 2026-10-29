#!/usr/bin/env python3
"""Build the Volume 3 back matter: mocks, timed drills, challenge sets,
rapid-fire bank and the consolidated answer keys.

Every question is drawn from the verified generator pools (tools/gen3.py),
so each stem has a computed correct option and a one-line solution.
"""
from __future__ import annotations

import random
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import gen3  # noqa: E402

OUT = HERE.parent
LETTERS = "ABCD"

CHAPTER_NAMES = {
    1: "Angles, Lines and Polygons",
    2: "Triangles, Congruence and Similarity",
    3: "Circle Theorems",
    4: "Constructions and Loci",
    5: "Plane Mensuration",
    6: "Mensuration of Solids",
    7: "Longitude, Latitude and Time",
    8: "Coordinate Geometry",
    9: "Trigonometric Ratios",
    10: "Bearings, Elevation and the Sine & Cosine Rules",
}

# How many distinct questions each chapter can supply to the back matter.
SEEDS = (2000, 3000, 4000, 5000, 6000, 7000)


def build_pool():
    pool = {}
    for ch in range(1, 11):
        seen = {}
        for s in SEEDS:
            for t in gen3.build(ch, 45, seed=s + ch):
                seen[t[0]] = t
        pool[ch] = list(seen.values())
    return pool


def deal(pool, quotas):
    """Round-robin deal so that every paper mixes topics."""
    rng = random.Random(4242)
    bags = {}
    for ch, n in quotas.items():
        items = pool[ch][:]
        rng.shuffle(items)
        bags[ch] = items[:n]
    deck = []
    while any(bags.values()):
        for ch in sorted(bags):
            if bags[ch]:
                deck.append(bags[ch].pop())
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
    pos = positions(len(qs), seed)
    keys, ordered = [], []
    for (stem, opts, _idx, sol), p in zip(qs, pos):
        new = opts[:]
        correct = new.pop(0)
        new.insert(p, correct)
        keys.append(LETTERS[p])
        ordered.append((stem, new, sol))
    return keys, ordered


def chapter_of(sol):
    import re
    m = re.search(r"Chapter (\d+)\.", sol)
    return m.group(1) if m else "—"


def banner(tag, title, subtitle, intro, out):
    if tag.startswith("APPENDIX "):
        head = f"{tag.title()}: {title}"
    elif tag.startswith("MOCK "):
        head = f"{tag.title()} — {title}"
    else:
        head = title
    out.append(f"#hide[#heading(level: 1, outlined: true)[{head}]]")
    out.append("")
    out.append("#block(")
    out.append("  width: 100%,")
    out.append("  fill: jamb-navy,")
    out.append("  stroke: 1.5pt + jamb-bright,")
    out.append("  radius: 10pt,")
    out.append("  inset: 18pt,")
    out.append(")[")
    out.append(f'  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[{tag}]')
    out.append("  #v(6pt)")
    out.append(f'  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[{title}]')
    if subtitle:
        out.append("  #v(4pt)")
        out.append(f'  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[{subtitle}]')
    out.append("]")
    out.append("")
    out.append("#v(5pt)")
    out.append("")
    for line in intro:
        out.append(line)
        out.append("")


def questions(out, qs, start=1):
    for i, (stem, opts, _sol) in enumerate(qs, start):
        parts = ", ".join(f"[{o}]" for o in opts)
        out.append(f"#mcq({i}, [{stem}], {parts})")
        out.append("")


def keygrid(out, keys):
    out.append("#answer-key-grid((")
    for s in range(0, len(keys), 10):
        out.append("  " + ", ".join(f'"{k}"' for k in keys[s:s + 10]) + ",")
    out.append("))")
    out.append("")


def solutions(out, qs, keys):
    for i, ((_stem, _opts, sol), k) in enumerate(zip(qs, keys), 1):
        out.append(f'#sol-item({i}, "{k}")[')
        out.append(f"  {sol}")
        out.append("]")
        out.append("")


def heads(num, section, label):
    if num.startswith("Mock"):
        return f"== {num} — {label}"
    return f"== {num}{section} {label}"


def paper(num, title, tag, subtitle, intro, qs, seed, solve=True, section=".1"):
    """One self-contained paper: questions, key, optional solutions."""
    keys, ordered = order(qs, seed)
    out = ['#import "template.typ": *', ""]
    out.append("#pagebreak()")
    out.append("")
    banner(tag, title, subtitle, intro, out)
    out.append(heads(num, section, "Questions"))
    out.append("")
    questions(out, ordered)
    out.append("#pagebreak()")
    out.append("")
    out.append(heads(num, section, "Answer Key"))
    out.append("")
    keygrid(out, keys)
    if solve:
        out.append(heads(num, section, "Complete Solutions"))
        out.append("")
        solutions(out, ordered, keys)
        n = len(keys)
        secure = -(-int(n * 0.85) // 1)
        steady = -(-int(n * 0.7) // 1)
        out.append("#v(8pt)")
        out.append("")
        out.append("#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[")
        out.append('  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[READ YOUR SCORE]')
        out.append("  #v(3pt)")
        out.append("  #table(")
        out.append("    columns: (0.9fr, 2.6fr),")
        out.append("    inset: 4pt,")
        out.append("    align: (left + horizon, left + horizon),")
        out.append("    stroke: none,")
        out.append(f"    [*{secure}–{n}*], [Secure. Next step: the next paper in this appendix, under the same conditions.],")
        out.append(f"    [*{steady}–{secure - 1}*], [Developing. Every solution line ends with a chapter number — revise the chapter that appears most often.],")
        out.append(f"    [*0–{steady - 1}*], [Revise before re-testing. Redo this paper only after two drills in the weak chapters are back above 80 percent.],")
        out.append("  )")
        out.append("]")
        out.append("")
        out.append(heads(num, section, "Question Map"))
        out.append("")
        if len(ordered) >= 100:
            out.append("The chapter each block of questions came from. Group your misses by this table first: the chapter with the most misses under it is the only revision task worth starting tonight.")
            out.append("")
            counts = {}
            for (_stem, _opts, sol) in ordered:
                c = chapter_of(sol)
                counts[c] = counts.get(c, 0) + 1
            out.append("#table(")
            out.append("  columns: (0.5fr, 1.9fr, 0.7fr, 2.1fr),")
            out.append("  inset: 5pt,")
            out.append("  align: (center + horizon, left + horizon, center + horizon, left + horizon),")
            out.append("  stroke: 0.5pt + jamb-border,")
            out.append("  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },")
            out.append('  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],')
            out.append('  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topic],')
            out.append('  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Qs],')
            out.append('  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where to go if these are your misses],')
            for c in sorted(counts, key=lambda k: int(k) if k.isdigit() else 99):
                topic = CHAPTER_NAMES.get(int(c), "Mixed") if c.isdigit() else "Mixed"
                out.append(f"  [{c}], [{topic}], [{counts[c]}], [Chapter {c} and its drill],")
            out.append(")")
            out.append("")
        else:
            out.append("Which chapter each question came from. If three or more of your misses spring from the same column, that chapter is the next revision task.")
            out.append("")
        out.append("#table(")
        out.append("  columns: (1fr,) * 8,")
        out.append("  inset: 4pt,")
        out.append("  align: center + horizon,")
        out.append("  stroke: 0.4pt + jamb-border,")
        out.append("  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },")
        for start in range(0, len(ordered), 8):
            cells = []
            for j, (_stem, _opts, sol) in enumerate(ordered[start:start + 8], start + 1):
                ch = chapter_of(sol)
                cells.append(f"[*Q{j}* #h(3pt) Ch {ch}]")
            out.append("  " + ", ".join(cells) + ",")
        out.append(")")
        out.append("")
    return out, keys, ordered


def write(path, lines):
    (OUT / path).write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"wrote {path}: {len(lines)} lines")


def main():
    pool = build_pool()
    quotas = {1: 70, 2: 55, 3: 70, 4: 45, 5: 60, 6: 45, 7: 30, 8: 60, 9: 32, 10: 32}
    deck = deal(pool, quotas)
    print("deck:", len(deck))

    take = {}
    cur = 0

    def draw(n):
        nonlocal cur
        chunk = deck[cur:cur + n]
        cur += n
        return chunk

    # ── mock 1 ───────────────────────────────────────────────────────────
    mock1 = draw(40)
    take["mock1"] = mock1
    lines, keys, ordered = paper(
        "Mock 1", "Full Section III CBT Paper", "MOCK EXAMINATION 1",
        "Forty questions in forty minutes — the exact format and difficulty spread of the "
        "Geometry, Mensuration and Trigonometry block of a real UTME Mathematics paper.",
        [
            "#grid(",
            "  columns: (1fr, 1fr, 1fr, 1fr),",
            "  column-gutter: 8pt,",
            '  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[QUESTIONS] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40]],',
            '  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TIME] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40 min]],',
            '  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[MARKING] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[No negatives]],',
            '  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TARGET] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[30 / 40]],',
            ")",
            "",
            "+ Attempt *all forty* questions in *forty minutes*. There is no negative marking, so never leave a blank.",
            "+ If a question takes longer than ninety seconds, flag it and return in the final pass.",
            "+ The CBT calculator is four-function only — no sine, cosine or tangent keys.",
            "+ Write your answers on rough paper, then mark yourself against the key.",
        ],
        mock1, seed=9001)
    lines[0:0] = ['#import "template.typ": *', "", '#current-chapter.update("Mock Examination 1")', ""]
    write("mock_ch11.typ", lines)

    # ── mock 2 ───────────────────────────────────────────────────────────
    mock2 = draw(40)
    lines, keys2, ordered2 = paper(
        "Mock 2", "Second Full CBT Paper", "MOCK EXAMINATION 2",
        "A second forty-question paper built from different items: same syllabus coverage, "
        "harder traps. Sit it a week after Mock 1.",
        [
            "+ Forty questions, forty minutes, no negative marking.",
            "+ Expect at least six questions that need two steps of reasoning — bearings, frustums, circle theorems.",
            "+ Mark against the key only after the full forty minutes have elapsed.",
        ],
        mock2, seed=9102)
    lines[0:0] = ['#import "template.typ": *', "", '#current-chapter.update("Mock Examination 2")', ""]
    write("mock2.typ", lines)

    # ── appendix D/E/F: timed drills ─────────────────────────────────────
    d = draw(30)
    lines, _, _ = paper(
        "D", "Timed Drill 1 — Foundations", "APPENDIX D",
        "Thirty questions on angles, polygons, triangles, circle theorems and constructions. "
        "Twenty-five minutes. Anything below 24/30 sends you back to Chapters 1–4.",
        ["Time yourself honestly: 50 seconds a question."], d, seed=9201)
    lines[0:0] = ['#import "template.typ": *', "", '#current-chapter.update("Appendix D: Timed Drill 1 — Foundations")', ""]
    write("zdrills_d.typ", lines)

    e = draw(25)
    lines, _, _ = paper(
        "E", "Timed Drill 2 — Mensuration", "APPENDIX E",
        "Twenty-five questions on plane areas, solids, longitude, latitude and time. "
        "Twenty minutes. Watch the units: cm to m, litres to cm³, minutes to degrees.",
        ["Assume $pi = 22/7$ unless a question says otherwise."], e, seed=9302)
    lines[0:0] = ['#import "template.typ": *', "", '#current-chapter.update("Appendix E: Timed Drill 2 — Mensuration")', ""]
    write("zdrills_e.typ", lines)

    f = draw(20)
    lines, _, _ = paper(
        "F", "Timed Drill 3 — Trigonometry & Bearings", "APPENDIX F",
        "Twenty questions on ratios, special angles, coordinate geometry, bearings, elevation "
        "and the sine and cosine rules. Sixteen minutes.",
        ["Draw the bearing diagram before you touch the calculator."], f, seed=9403)
    lines[0:0] = ['#import "template.typ": *', "", '#current-chapter.update("Appendix F: Timed Drill 3 — Trigonometry & Bearings")', ""]
    write("zdrills_f.typ", lines)

    # ── appendix H/I/J: graded challenge sets ────────────────────────────
    h = draw(20)
    lines, _, _ = paper(
        "H", "JAMB Challenge Set", "APPENDIX H",
        "Twenty questions of the kind that separate 280 from 320: two-step bearings, "
        "frustums, tangents, and trigonometric equations with two solutions in the range.",
        ["Do not time this set. Aim for a complete written solution to every one."], h, seed=9504)
    lines[0:0] = ['#import "template.typ": *', "", '#current-chapter.update("Appendix H: JAMB Challenge Set")', ""]
    write("zchallenges_h.typ", lines)

    i_set = draw(20)
    lines, _, _ = paper(
        "I", "Mixed Revision Set", "APPENDIX I",
        "Twenty questions drawn from every chapter, in the shuffled order the CBT engine uses. "
        "Twenty minutes.",
        ["If you cannot name the chapter a question comes from within ten seconds, that chapter is not yet secure."], i_set, seed=9605)
    lines[0:0] = ['#import "template.typ": *', "", '#current-chapter.update("Appendix I: Mixed Revision Set")', ""]
    write("zchallenges_i.typ", lines)

    j = draw(15)
    lines, _, _ = paper(
        "J", "Speed Set", "APPENDIX J",
        "Fifteen questions in twelve minutes — four seconds a mark faster than the real paper. "
        "Speed is built, not wished for.",
        ["Stop at twelve minutes even if you have not finished. Note where the clock ran out."], j, seed=9706)
    lines[0:0] = ['#import "template.typ": *', "", '#current-chapter.update("Appendix J: Speed Set")', ""]
    write("zchallenges_j.typ", lines)

    # ── appendix K: rapid fire (no worked solutions, keys only) ──────────
    k = draw(100)
    keys_k, ordered_k = order(k, seed=9807)
    out = ['#import "template.typ": *', ""]
    out.append("#pagebreak()")
    out.append("")
    banner(
        "APPENDIX K", "100 Rapid-Fire Questions",
        "One hundred one-line questions, in syllabus order. Twenty seconds each once the rule "
        "is secure. Work in blocks of twenty, mark out of twenty, and re-read any chapter "
        "where a block falls below sixteen.",
        [], out)
    out.append("== K.1 Questions")
    out.append("")
    out.append("#grid(columns: (1fr, 1fr), column-gutter: 14pt,")
    half = 50
    for i in range(half):
        stem = ordered_k[i][0]
        out.append(f"  [*{i + 1}.* {stem}],")
        stem = ordered_k[half + i][0]
        out.append(f"  [*{half + i + 1}.* {stem}],")
    out.append(")")
    out.append("")
    out.append("== K.2 Answer Key")
    out.append("")
    keygrid(out, keys_k)
    out[0:0] = ['#import "template.typ": *', "", '#current-chapter.update("Appendix K: 100 Rapid-Fire Questions")', ""]
    write("rapid_fire.typ", out)

    # ── appendix L: final 40 ─────────────────────────────────────────────
    l_set = draw(40)
    lines, keys_l, _ = paper(
        "L", "The Final Forty", "APPENDIX L",
        "The last paper you should sit before the examination: forty questions, forty minutes, "
        "full syllabus, no hints.",
        ["Sit it under exam conditions: no notes, no phone, one sheet of rough paper."], l_set, seed=9908)
    lines[0:0] = ['#import "template.typ": *', "", '#current-chapter.update("Appendix L: The Final Forty")', ""]
    write("zfinal.typ", lines)

    # ── appendix M: 120-question bank ────────────────────────────────────
    m_set = draw(120)
    lines, keys_m, ordered_m = paper(
        "M", "The 120-Question Master Bank", "APPENDIX M",
        "One hundred and twenty questions covering every syllabus item in Section III. "
        "Use it as a question bank, not a test: work in blocks of twenty by topic, then "
        "return a fortnight later and do the blocks in the shuffled order.",
        ["Blocks are mixed deliberately — the CBT engine does not group by topic."], m_set, seed=10009)
    lines[0:0] = ['#import "template.typ": *', "", '#current-chapter.update("Appendix M: The 120-Question Master Bank")', ""]
    write("bank120.typ", lines)

    # ── appendix R: consolidated answer keys ─────────────────────────────
    out = ['#import "template.typ": *', ""]
    out.append("#pagebreak()")
    out.append("")
    banner(
        "APPENDIX R", "Consolidated Answer Keys",
        "Every key in the book, on four pages. If you photocopy one part of this volume, "
        "photocopy this: it lets you mark any drill or paper in under a minute.",
        [], out)
    out.append("== R.1 Mock 1 — Section III CBT Paper")
    out.append("")
    keygrid(out, keys)
    out.append("== R.2 Mock 2 — Second CBT Paper")
    out.append("")
    keygrid(out, keys2)
    out.append("== R.3 Final Forty (Appendix L)")
    out.append("")
    keygrid(out, keys_l)
    out.append("== R.4 Master Bank (Appendix M)")
    out.append("")
    keygrid(out, keys_m)
    out[0:0] = ['#import "template.typ": *', "", '#current-chapter.update("Appendix R: Consolidated Answer Keys")', ""]
    write("answer_keys.typ", out)

    print("papers complete; remaining deck:", len(deck) - cur)


if __name__ == "__main__":
    main()
