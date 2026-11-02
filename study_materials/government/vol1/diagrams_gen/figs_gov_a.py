#!/usr/bin/env python3
"""Diagrams for Government Volume 1, Chapters 1–3."""

from __future__ import annotations

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

from common import (  # noqa: E402
    AMBER, AMBER_LIGHT, BLUE, BLUE_LIGHT, BORDER, GREEN, GREEN_BRIGHT,
    GREEN_LIGHT, GREEN_MID, LIGHT_BG, MUTED, NAVY, PURPLE, PURPLE_LIGHT,
    RED, RED_LIGHT, SLATE, arrow2, card, dot, line, recap_card, rect, svg, t,
    write_svg,
)


# ── Chapter 1 ──────────────────────────────────────────────────────────────
def ch01_state() -> None:
    """The four elements of the state, drawn as a temple."""
    w, h = 760, 340
    b = [t(380, 30, "The four elements of the state — remove one and it is no longer a state",
           size=13.5, weight="bold")]
    # roof
    b.append(f'<polygon points="90,78 670,78 640,52 120,52" fill="{NAVY}"/>')
    b.append(t(380, 70, "T H E   S T A T E", size=13, fill="#FFFFFF", weight="bold"))
    labels = [
        ("POPULATION", "People, without\nwhom there is\nnothing to rule", GREEN, GREEN_LIGHT),
        ("TERRITORY", "A defined land\narea with\nrecognised borders", BLUE, BLUE_LIGHT),
        ("SOVEREIGNTY", "Supreme power,\nanswerable to\nno other state", PURPLE, PURPLE_LIGHT),
        ("GOVERNMENT", "The machinery\nthat exercises\nthe power", AMBER, AMBER_LIGHT),
    ]
    for i, (head, body, col, bg) in enumerate(labels):
        x = 92 + i * 146
        b.append(rect(x, 90, 138, 150, bg, col, 8, 1.6))
        b.append(rect(x, 90, 138, 6, col, col, 3, 1.0))
        b.append(t(x + 69, 118, head, size=10.6, weight="bold", fill=col))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 69, 142 + j * 16, ln, size=9.4, fill=SLATE))
        b.append(rect(x + 22, 246, 94, 30, "#FFFFFF", col, 5, 1.2))
        b.append(t(x + 69, 266, "required", size=9, fill=col, weight="bold"))
    b.append(rect(92, 292, 576, 34, "#FFFFFF", BORDER, 6, 1.2))
    b.append(t(380, 314, "A state is a community of people occupying a defined territory, "
                         "under a government, and independent of external control.",
               size=9.4, fill=MUTED))
    write_svg("gov_ch01_state.svg", svg(w, h, "\n".join(b)))


def ch01_forms() -> None:
    """Regimes on one axis: who holds power and how it is limited."""
    w, h = 760, 300
    b = [t(380, 28, "Forms of government — the axis runs from many rulers to one",
           size=13.5, weight="bold")]
    b.append(rect(60, 62, 640, 8, "#E2E8F0", "#E2E8F0", 4, 0))
    b.append(f'<polygon points="700,66 716,66 708,58" fill="{SLATE}"/>')
    b.append(t(60, 56, "Power widely shared", size=9, fill=MUTED, anchor="start"))
    b.append(t(716, 56, "Power concentrated", size=9, fill=MUTED, anchor="end"))

    stops = [
        ("DEMOCRACY", "Rule by the\npeople; free\nelections", GREEN, 78),
        ("REPUBLIC", "Elected head,\nno monarch", GREEN_BRIGHT, 226),
        ("MONARCHY", "One hereditary\nruler", AMBER, 374),
        ("OLIGARCHY", "Rule by a\nfew", PURPLE, 522),
        ("DICTATORSHIP", "One ruler,\nno limits", RED, 654),
    ]
    for head, body, col, cx in stops:
        b.append(dot(cx, 66, 9, col))
        b.append(line(cx, 90, cx, 112, col, 1.6))
        b.append(rect(cx - 66, 112, 132, 96, "#FFFFFF", col, 7, 1.5))
        b.append(rect(cx - 66, 112, 132, 5, col, col, 2.5, 1.0))
        b.append(t(cx, 134, head, size=9.4, weight="bold", fill=col))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(cx, 152 + j * 14, ln, size=8.6, fill=SLATE))
    b.append(rect(60, 224, 640, 58, GREEN_LIGHT, GREEN, 8, 1.3))
    b.append(t(380, 246, "Every form answers two questions: WHO rules, and WHAT LIMITS the ruler.",
               size=10, fill=NAVY, weight="bold"))
    b.append(t(380, 266, "A monarchy can be constitutional and democratic; a republic can be a dictatorship. "
                         "The label alone never settles it.",
               size=9.2, fill=SLATE))
    write_svg("gov_ch01_forms.svg", svg(w, h, "\n".join(b)))


def ch01_ideologies() -> None:
    """The left-right spectrum and where the syllabus ideologies sit."""
    w, h = 760, 300
    b = [t(380, 28, "Political ideologies on the left–right spectrum", size=13.5, weight="bold")]
    b.append(rect(50, 96, 660, 6, "#E2E8F0", "#E2E8F0", 3, 0))
    b.append(t(50, 88, "LEFT — equality, collective ownership", size=9, fill=MUTED, anchor="start"))
    b.append(t(710, 88, "RIGHT — liberty, private ownership", size=9, fill=MUTED, anchor="end"))
    marks = [
        ("COMMUNISM", "Classless society,\nstate owns all", 96, RED),
        ("SOCIALISM", "State owns key\nsectors", 226, PURPLE),
        ("WELFARISM", "Market plus\nwelfare state", 358, GREEN),
        ("CAPITALISM", "Private ownership,\nfree market", 492, BLUE),
        ("FASCISM", "State above\nthe individual", 636, AMBER),
    ]
    for head, body, cx, col in marks:
        b.append(dot(cx, 99, 8, col))
        b.append(t(cx, 74, head, size=9.2, fill=col, weight="bold"))
        b.append(line(cx, 107, cx, 128, col, 1.4))
        b.append(rect(cx - 62, 128, 124, 70, "#FFFFFF", col, 7, 1.4))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(cx, 152 + j * 15, ln, size=8.7, fill=SLATE))
    b.append(rect(50, 216, 660, 62, LIGHT_BG, BORDER, 8, 1.2))
    b.append(t(380, 238, "Nigeria's 1999 Constitution is a mixed economy: private property in Chapter IV, "
                         "state regulation in Chapter II.",
               size=9.6, fill=NAVY, weight="bold"))
    b.append(t(380, 258, "In the exam, “capitalism” means private ownership and the profit motive; "
                         "“socialism” means public ownership and planning.",
               size=9.2, fill=SLATE))
    write_svg("gov_ch01_ideologies.svg", svg(w, h, "\n".join(b)))


# ── Chapter 2 ──────────────────────────────────────────────────────────────
def ch02_types() -> None:
    """The two tests every constitution question uses."""
    w, h = 760, 330
    b = [t(380, 28, "Two tests, four kinds: how a constitution is written, and how easily it changes",
           size=13.2, weight="bold")]
    b.append(t(380, 66, "WRITTEN or UNWRITTEN — is it in one document?", size=10.4, fill=NAVY, weight="bold"))
    boxes = [
        ("WRITTEN", "One document, dated\nand codified.\nNigeria, USA, Ghana", GREEN, 60, 84),
        ("UNWRITTEN", "Scattered in statutes,\nconventions and cases.\nUnited Kingdom, Israel", BLUE, 400, 84),
    ]
    for head, body, col, x, y in boxes:
        b.append(rect(x, y, 300, 92, "#FFFFFF", col, 8, 1.6))
        b.append(rect(x, y, 300, 5, col, col, 2.5, 1.0))
        b.append(t(x + 150, y + 24, head, size=10.4, weight="bold", fill=col))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 150, y + 44 + j * 14, ln, size=8.8, fill=SLATE))
    b.append(t(380, 202, "RIGID or FLEXIBLE — how hard is it to amend?", size=10.4, fill=NAVY, weight="bold"))
    boxes2 = [
        ("RIGID", "Special majority or\nreferendum. Nigeria's\nsection 9 procedure", AMBER, 60, 216),
        ("FLEXIBLE", "Ordinary legislation\nchanges it. Britain's\nconstitution", PURPLE, 400, 216),
    ]
    for head, body, col, x, y in boxes2:
        b.append(rect(x, y, 300, 92, "#FFFFFF", col, 8, 1.6))
        b.append(rect(x, y, 300, 5, col, col, 2.5, 1.0))
        b.append(t(x + 150, y + 24, head, size=10.4, weight="bold", fill=col))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 150, y + 44 + j * 14, ln, size=8.8, fill=SLATE))
    write_svg("gov_ch02_types.svg", svg(w, h, "\n".join(b)))


def ch02_timeline() -> None:
    """The Nigerian constitutional chain, 1922–1999."""
    w, h = 760, 360
    b = [t(380, 28, "The Nigerian constitutional chain: six constitutions, three republics",
           size=13.2, weight="bold")]
    b.append(line(50, 180, 716, 180, NAVY, 2.2))
    stops = [
        ("1922", "Clifford", "Elective principle\nfor Lagos and Calabar", 70, -1),
        ("1946", "Richards", "Three regions;\nregionalism begins", 178, 1),
        ("1951", "Macpherson", "Ministers from\nthe legislature", 288, -1),
        ("1954", "Lyttleton", "Federalism;\nLagos a federal territory", 398, 1),
        ("1960", "Independence", "Westminster model;\nPrime Minister", 500, -1),
        ("1963", "Republican", "President replaces\nthe Queen", 592, 1),
        ("1979", "Presidential", "Executive President;\nFCT created", 668, -1),
    ]
    for year, name, note, cx, side in stops:
        b.append(dot(cx, 180, 7, GREEN))
        b.append(line(cx, 180, cx, 180 + side * 34, GREEN, 1.4))
        by = 112 if side < 0 else 214
        b.append(rect(cx - 56, by, 112, 66, "#FFFFFF", GREEN, 6, 1.3))
        b.append(t(cx, by + 17, year, size=10, weight="bold", fill=GREEN))
        b.append(t(cx, by + 33, name, size=8.8, weight="bold", fill=NAVY))
        for j, ln in enumerate(note.split("\n")):
            b.append(t(cx, by + 47 + j * 11, ln, size=7.6, fill=SLATE))
    b.append(rect(50, 300, 660, 48, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 320, "1999 — the constitution now in force: 36 states and the FCT, 774 local "
                         "government areas, a bicameral National Assembly.",
               size=9.4, fill=NAVY, weight="bold"))
    b.append(t(380, 338, "Every one of these constitutions widened the franchise or shifted power "
                         "from the Governor to elected Nigerians.", size=9, fill=SLATE))
    write_svg("gov_ch02_timeline.svg", svg(w, h, "\n".join(b)))


def ch02_lists() -> None:
    """Exclusive, concurrent and residual — what sits on each list."""
    w, h = 760, 340
    b = [t(380, 28, "The three legislative lists under a federal constitution",
           size=13.2, weight="bold")]
    cols = [
        ("EXCLUSIVE LIST", "Federal only", GREEN, 40,
         ["Defence and the armed forces", "Foreign affairs", "Currency and coinage",
          "Citizenship", "Police (federal)", "Customs and excise", "Mines and minerals"]),
        ("CONCURRENT LIST", "Federal and state", BLUE, 280,
         ["Education", "Health", "Agriculture", "Electricity", "Water supply",
          "Statistics", "Industrial development"]),
        ("RESIDUAL LIST", "State only", AMBER, 520,
         ["Local government", "Chieftaincy", "Markets and motor parks",
          "Traditional courts", "State lands", "Local roads", "Burial and inheritance"]),
    ]
    for head, sub, col, x, items in cols:
        b.append(rect(x, 50, 216, 246, "#FFFFFF", col, 9, 1.6))
        b.append(rect(x, 50, 216, 42, col, col, 8, 1.0))
        b.append(t(x + 108, 70, head, size=10, weight="bold", fill="#FFFFFF"))
        b.append(t(x + 108, 84, sub, size=8.4, fill="#FFFFFF"))
        for j, it in enumerate(items):
            b.append(t(x + 12, 112 + j * 24, "•", size=9, fill=col, anchor="start"))
            b.append(t(x + 24, 112 + j * 24, it, size=8.6, fill=SLATE, anchor="start"))
    b.append(rect(40, 306, 696, 26, LIGHT_BG, BORDER, 6, 1.0))
    b.append(t(388, 323, "Where a federal and a state law conflict on the concurrent list, "
                         "the federal law prevails — the doctrine of covering the field.",
               size=8.8, fill=NAVY))
    write_svg("gov_ch02_lists.svg", svg(w, h, "\n".join(b)))


# ── Chapter 3 ──────────────────────────────────────────────────────────────
def ch03_separation() -> None:
    """Separation of powers: three boxes in a row, with the checks between them."""
    w, h = 760, 330
    b = [t(380, 28, "Separation of powers — and the checks that travel between the organs",
           size=13.0, weight="bold")]
    boxes = [
        ("LEGISLATURE", "Makes law", "Appropriates", "Confirms", GREEN, 30),
        ("EXECUTIVE", "Executes law", "Spends", "Appoints", BLUE, 290),
        ("JUDICIARY", "Interprets law", "Reviews", "Adjudicates", PURPLE, 550),
    ]
    for head, l1, l2, l3, col, x in boxes:
        b.append(rect(x, 62, 180, 106, "#FFFFFF", col, 9, 1.8))
        b.append(rect(x, 62, 180, 6, col, col, 3, 1.0))
        b.append(t(x + 90, 88, head, size=9.8, weight="bold", fill=col))
        for j, ln in enumerate((l1, l2, l3)):
            b.append(t(x + 90, 108 + j * 16, ln, size=8.6, fill=SLATE))
    # legislature <-> executive
    b.append(arrow2(212, 88, 288, 88, AMBER, 1.7))
    b.append(t(250, 80, "confirms", size=8.2, fill=AMBER, weight="bold"))
    b.append(arrow2(288, 140, 212, 140, AMBER, 1.7))
    b.append(t(250, 156, "veto", size=8.2, fill=AMBER, weight="bold"))
    # executive <-> judiciary
    b.append(arrow2(472, 88, 548, 88, AMBER, 1.7))
    b.append(t(510, 80, "appoints", size=8.2, fill=AMBER, weight="bold"))
    b.append(arrow2(548, 140, 472, 140, AMBER, 1.7))
    b.append(t(510, 156, "voids acts", size=8.2, fill=AMBER, weight="bold"))
    # judiciary back to legislature, around the bottom
    b.append(f'<path d="M 640 168 L 640 214 L 120 214 L 120 176" fill="none" '
             f'stroke="{AMBER}" stroke-width="1.7"/>')
    b.append(f'<polygon points="120,170 114,180 126,180" fill="{AMBER}"/>')
    b.append(t(380, 208, "judicial review — an Act or an executive act that breaches the "
                         "Constitution is void", size=8.6, fill=AMBER, weight="bold"))
    b.append(rect(30, 238, 700, 38, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(380, 256, "Separation of powers divides the work. Checks and balances give each "
                         "organ a brake on the others.", size=9.2, fill=NAVY, weight="bold"))
    b.append(t(380, 270, "No organ may exercise the power of another — Montesquieu. The "
                         "President's veto can be overridden by a two-thirds vote.",
               size=8.4, fill=SLATE))
    b.append(t(380, 300, "Sections 4, 5 and 6 of the 1999 Constitution vest the three powers "
                         "in the three organs.", size=8.4, fill=MUTED))
    write_svg("gov_ch03_separation.svg", svg(w, h, "\n".join(b)))


def ch03_courts() -> None:
    """The hierarchy of courts in Nigeria."""
    w, h = 760, 350
    b = [t(380, 28, "The hierarchy of courts in Nigeria — and where appeals stop",
           size=13.2, weight="bold")]
    tiers = [
        ("SUPREME COURT", "Final appeal; interprets the Constitution", 380, 44, 200, GREEN),
        ("COURT OF APPEAL", "Appeals from the High Courts; presidential election petitions", 380, 108, 420, BLUE),
        ("FEDERAL HIGH COURT  •  STATE HIGH COURTS  •  FCT HIGH COURT",
         "Original jurisdiction; appeals to the Court of Appeal", 380, 172, 600, PURPLE),
        ("MAGISTRATE  •  DISTRICT  •  CUSTOMARY  •  SHARIA COURTS",
         "Lower courts; limited jurisdiction; appeals upward", 380, 236, 700, AMBER),
    ]
    for head, sub, x, y, width, col in tiers:
        b.append(rect(x - width / 2, y, width, 52, "#FFFFFF", col, 7, 1.5))
        b.append(rect(x - width / 2, y, width, 4, col, col, 2, 1.0))
        b.append(t(x, y + 22, head, size=9.4 if len(head) < 40 else 8.4, weight="bold", fill=col))
        b.append(t(x, y + 39, sub, size=8.2, fill=SLATE))
    b.append(arrow2(380, 96, 380, 108, SLATE, 1.4))
    b.append(arrow2(380, 160, 380, 172, SLATE, 1.4))
    b.append(arrow2(380, 224, 380, 236, SLATE, 1.4))
    b.append(rect(60, 300, 640, 38, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(380, 318, "Judicial independence: security of tenure, salaries charged to the "
                         "Consolidated Revenue Fund, and appointments insulated from the executive.",
               size=8.8, fill=NAVY, weight="bold"))
    b.append(t(380, 333, "Section 6 of the 1999 Constitution vests judicial power in the courts.",
               size=8.4, fill=SLATE))
    write_svg("gov_ch03_courts.svg", svg(w, h, "\n".join(b)))


def ch03_exec() -> None:
    """Parliamentary and presidential executives, side by side."""
    w, h = 760, 340
    b = [t(380, 28, "Two executives: where the head of government sits", size=13.2, weight="bold")]
    panels = [
        ("PARLIAMENTARY", GREEN, 40, [
            ("Head of state", "ceremonial monarch or president"),
            ("Head of government", "Prime Minister, from the majority party"),
            ("Source of power", "the legislature — ministers are MPs"),
            ("Removal", "a vote of no confidence"),
            ("Example", "Britain, India, Canada"),
        ]),
        ("PRESIDENTIAL", BLUE, 400, [
            ("Head of state", "the President — one person, both roles"),
            ("Head of government", "the President"),
            ("Source of power", "direct election, separate from the legislature"),
            ("Removal", "impeachment for misconduct"),
            ("Example", "Nigeria, USA, Brazil"),
        ]),
    ]
    for head, col, x, rows in panels:
        b.append(rect(x, 50, 320, 250, "#FFFFFF", col, 9, 1.6))
        b.append(rect(x, 50, 320, 40, col, col, 8, 1.0))
        b.append(t(x + 160, 76, head, size=11, weight="bold", fill="#FFFFFF"))
        for j, (k, v) in enumerate(rows):
            y = 112 + j * 38
            b.append(t(x + 14, y, k, size=8.6, weight="bold", fill=col, anchor="start"))
            b.append(t(x + 14, y + 13, v, size=8.4, fill=SLATE, anchor="start"))
    b.append(rect(40, 308, 680, 24, LIGHT_BG, BORDER, 6, 1.0))
    b.append(t(380, 324, "The presidential system separates the executive from the legislature; "
                         "the parliamentary system fuses them.",
               size=8.8, fill=NAVY))
    write_svg("gov_ch03_exec.svg", svg(w, h, "\n".join(b)))


FIGURES = [
    "ch01_state", "ch01_forms", "ch01_ideologies",
    "ch02_types", "ch02_timeline", "ch02_lists",
    "ch03_separation", "ch03_courts", "ch03_exec",
]
