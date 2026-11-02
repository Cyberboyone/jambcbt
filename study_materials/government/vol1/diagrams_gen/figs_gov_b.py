#!/usr/bin/env python3
"""Diagrams for Government Volume 1, Chapters 4–6, and the six recap cards."""

from __future__ import annotations

import math
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

from common import (  # noqa: E402
    save as save_fig,
    AMBER, AMBER_LIGHT, BLUE, BLUE_LIGHT, BORDER, GREEN, GREEN_BRIGHT,
    GREEN_LIGHT, GREEN_MID, LIGHT_BG, MUTED, NAVY, PURPLE, PURPLE_LIGHT,
    RED, RED_LIGHT, SLATE, arrow2, dot, line, recap_card, rect, svg, t,
    write_svg,
)


# ── Chapter 4 ──────────────────────────────────────────────────────────────
def ch04_parties() -> None:
    """What a political party actually does."""
    w, h = 760, 330
    b = [t(380, 28, "The six functions a political party performs", size=13.2, weight="bold")]
    cards = [
        ("1. AGGREGATE", "Collects interests\ninto one programme", GREEN),
        ("2. RECRUIT", "Selects and trains\ncandidates and leaders", BLUE),
        ("3. CONTEST", "Fights elections\nand forms government", PURPLE),
        ("4. EDUCATE", "Explains issues\nto the electorate", AMBER),
        ("5. ORGANISE", "Links government\nto the governed", GREEN_BRIGHT),
        ("6. STABILISE", "Absorbs dissent\nwithin the system", RED),
    ]
    for i, (head, body, col) in enumerate(cards):
        r, c = divmod(i, 3)
        x, y = 40 + c * 236, 52 + r * 130
        b.append(rect(x, y, 216, 112, "#FFFFFF", col, 8, 1.5))
        b.append(rect(x, y, 216, 5, col, col, 2.5, 1.0))
        b.append(t(x + 108, y + 28, head, size=10, weight="bold", fill=col))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 108, y + 52 + j * 15, ln, size=8.8, fill=SLATE))
    b.append(rect(40, 314, 696, 0, "#FFFFFF", "#FFFFFF", 0, 0))
    write_svg("gov_ch04_parties.svg", svg(w, h, "\n".join(b)))


def ch04_systems() -> None:
    """One-party, two-party and multi-party systems as seat charts."""
    w, h = 760, 330
    b = [t(380, 28, "Party systems, drawn as seats in a legislature", size=13.2, weight="bold")]
    panels = [
        ("ONE-PARTY", 40, [("A", 20, GREEN)], "One legal party.\nStability without choice."),
        ("TWO-PARTY", 280, [("A", 11, GREEN), ("B", 9, BLUE)], "Two parties alternate.\nClear majority, clear opposition."),
        ("MULTI-PARTY", 520, [("A", 8, GREEN), ("B", 6, BLUE), ("C", 4, PURPLE), ("D", 2, AMBER)],
         "Many parties; coalitions.\nRepresentation at a price."),
    ]
    for head, x, seats, note in panels:
        b.append(rect(x, 50, 200, 236, "#FFFFFF", BORDER, 9, 1.3))
        b.append(t(x + 100, 74, head, size=10, weight="bold", fill=NAVY))
        # 20 dots in 4 columns of 5
        allseats = []
        for label, count, col in seats:
            allseats += [col] * count
        while len(allseats) < 20:
            allseats.append("#E2E8F0")
        for i, col in enumerate(allseats):
            r, c = divmod(i, 5)
            b.append(dot(x + 46 + c * 30, 106 + r * 30, 10, col))
        for j, ln in enumerate(note.split("\n")):
            b.append(t(x + 100, 250 + j * 14, ln, size=8.4, fill=SLATE))
    b.append(rect(40, 300, 680, 24, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(380, 317, "Nigeria has run a two-party system (1999–2015) and a multi-party system since 2019; "
                         "the 1979–83 period was five parties.",
               size=8.6, fill=NAVY))
    write_svg("gov_ch04_systems.svg", svg(w, h, "\n".join(b)))


def ch04_elections() -> None:
    """First-past-the-post against proportional representation."""
    w, h = 760, 340
    b = [t(380, 28, "Two ways to turn votes into seats", size=13.2, weight="bold")]
    left = [
        ("FIRST PAST THE POST", GREEN, 40, [
            "One member per constituency",
            "Winner needs only a plurality",
            "Simple, fast, clear majority",
            "Wastes votes; ignores minorities",
        ]),
        ("PROPORTIONAL REPRESENTATION", BLUE, 400, [
            "Seats shared in proportion to votes",
            "Party lists or single transferable vote",
            "Fair to small parties",
            "Coalitions; weaker constituency link",
        ]),
    ]
    for head, col, x, rows in left:
        b.append(rect(x, 50, 320, 190, "#FFFFFF", col, 9, 1.6))
        b.append(rect(x, 50, 320, 34, col, col, 8, 1.0))
        b.append(t(x + 160, 72, head, size=10, weight="bold", fill="#FFFFFF"))
        for j, r in enumerate(rows):
            b.append(t(x + 16, 106 + j * 32, "•", size=9, fill=col, anchor="start"))
            b.append(t(x + 28, 106 + j * 32, r, size=8.7, fill=SLATE, anchor="start"))
    # example bar
    b.append(rect(40, 254, 680, 60, LIGHT_BG, BORDER, 8, 1.2))
    b.append(t(380, 274, "Same votes, different result: 40% A, 35% B, 25% C.",
               size=9.4, fill=NAVY, weight="bold"))
    b.append(t(380, 292, "FPTP: A wins every seat where it leads.  PR: A gets 40% of the seats, "
                         "B 35%, C 25%.", size=8.8, fill=SLATE))
    b.append(t(380, 307, "Nigeria uses FPTP for the National Assembly, the state houses and the presidency.",
               size=8.6, fill=MUTED))
    write_svg("gov_ch04_elections.svg", svg(w, h, "\n".join(b)))


# ── Chapter 5 ──────────────────────────────────────────────────────────────
def ch05_citizenship() -> None:
    """Five routes to Nigerian citizenship."""
    w, h = 760, 330
    b = [t(380, 28, "How a person becomes a citizen — section 25 of the 1999 Constitution",
           size=13.2, weight="bold")]
    b.append(rect(300, 130, 160, 64, NAVY, NAVY, 10, 1.5))
    b.append(t(380, 158, "CITIZEN", size=12, weight="bold", fill="#FFFFFF"))
    b.append(t(380, 176, "by one of five routes", size=8.4, fill="#A7F3D0"))
    routes = [
        ("BY BIRTH", "Born in Nigeria\n(or abroad) to Nigerian\nparents or grandparents", GREEN, 96, 44),
        ("BY DESCENT", "Born outside Nigeria\nto a Nigerian parent", BLUE, 380, 44),
        ("BY REGISTRATION", "Woman married to a\nNigerian; person of\nNigerian descent", PURPLE, 640, 44),
        ("BY NATURALISATION", "Resident for 15 years;\ngood character;\nacceptable to the community", AMBER, 180, 236),
        ("BY HONORARY AWARD", "Conferred by the\nPresident for exceptional\nservice", RED, 520, 236),
    ]
    for head, body, col, cx, cy in routes:
        b.append(rect(cx - 96, cy, 192, 74, "#FFFFFF", col, 7, 1.4))
        b.append(t(cx, cy + 17, head, size=9, weight="bold", fill=col))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(cx, cy + 32 + j * 12, ln, size=7.8, fill=SLATE))
        b.append(arrow2(cx, cy + (74 if cy < 150 else 0), 380, 194 if cy < 150 else 130, col, 1.5))
    write_svg("gov_ch05_citizenship.svg", svg(w, h, "\n".join(b)))


def ch05_admin() -> None:
    """Who controls the civil service."""
    w, h = 760, 340
    b = [t(380, 28, "The civil service is controlled from six directions", size=13.2, weight="bold")]
    b.append(rect(290, 130, 180, 70, NAVY, NAVY, 10, 1.5))
    b.append(t(380, 160, "THE CIVIL SERVICE", size=10.4, weight="bold", fill="#FFFFFF"))
    b.append(t(380, 178, "permanent • anonymous • impartial", size=7.8, fill="#A7F3D0"))
    ctrls = [
        ("LEGISLATURE", "Appropriates; questions; committees", GREEN, 30, 52),
        ("EXECUTIVE", "Appoints; directs policy", BLUE, 560, 52),
        ("JUDICIARY", "Reviews administrative acts", PURPLE, 30, 240),
        ("OMBUDSMAN", "Investigates injustice", AMBER, 560, 240),
        ("AUDITOR-GENERAL", "Audits public accounts", GREEN_BRIGHT, 270, 262),
        ("CODE OF CONDUCT", "Declares assets; bars conflict", RED, 250, 44),
    ]
    for head, body, col, x, y in ctrls:
        wbox = 190 if y != 262 else 220
        b.append(rect(x + (0 if x < 300 or x > 500 else -20), y, wbox, 56, "#FFFFFF", col, 7, 1.3))
        b.append(t(x + (0 if x < 300 or x > 500 else -20) + wbox / 2, y + 20, head, size=8.6, weight="bold", fill=col))
        b.append(t(x + (0 if x < 300 or x > 500 else -20) + wbox / 2, y + 38, body, size=7.6, fill=SLATE))
    b.append(arrow2(220, 80, 300, 136, GREEN, 1.4))
    b.append(arrow2(560, 80, 462, 136, BLUE, 1.4))
    b.append(arrow2(220, 268, 300, 196, PURPLE, 1.4))
    b.append(arrow2(560, 268, 462, 196, AMBER, 1.4))
    b.append(arrow2(380, 262, 380, 202, GREEN_BRIGHT, 1.4))
    b.append(arrow2(380, 100, 380, 128, RED, 1.4))
    write_svg("gov_ch05_admin.svg", svg(w, h, "\n".join(b)))


def ch05_lg() -> None:
    """How a local government council is put together."""
    w, h = 760, 320
    b = [t(380, 28, "The structure of a local government council", size=13.2, weight="bold")]
    b.append(rect(280, 46, 200, 46, GREEN, GREEN, 8, 1.4))
    b.append(t(380, 68, "THE CHAIRMAN", size=10, weight="bold", fill="#FFFFFF"))
    b.append(t(380, 83, "elected executive head", size=7.8, fill="#FFFFFF"))
    b.append(arrow2(380, 92, 380, 112, SLATE, 1.4))
    b.append(rect(230, 112, 300, 44, "#FFFFFF", GREEN, 8, 1.4))
    b.append(t(380, 131, "THE COUNCIL", size=9.6, weight="bold", fill=GREEN))
    b.append(t(380, 147, "councillors, one per ward — the legislature", size=7.8, fill=SLATE))
    kids = [
        ("SUPERVISORY\nCOUNCILLORS", "political heads\nof departments", BLUE, 40),
        ("SECRETARY", "head of the\nadministration", PURPLE, 230),
        ("TREASURER", "collects and\nkeeps the money", AMBER, 420),
        ("AUDITOR", "checks the\naccounts", RED, 610 - 60),
    ]
    for head, body, col, x in kids:
        b.append(arrow2(380, 156, x + 80, 200, SLATE, 1.2))
        b.append(rect(x, 200, 160, 70, "#FFFFFF", col, 7, 1.3))
        hl = head.split("\n")
        for j, ln in enumerate(hl):
            b.append(t(x + 80, 220 + j * 13, ln, size=8.4, weight="bold", fill=col))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 80, 246 + j * 12, ln, size=7.8, fill=SLATE))
    b.append(rect(40, 284, 680, 26, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(380, 301, "Nigeria has 774 local government areas, created by the 1976 reform and "
                         "protected by section 7 of the Constitution.", size=8.4, fill=NAVY))
    write_svg("gov_ch05_lg.svg", svg(w, h, "\n".join(b)))


# ── Chapter 6 ──────────────────────────────────────────────────────────────
def ch06_circles() -> None:
    """The concentric circles of Nigerian foreign policy."""
    w, h = 760, 400
    b = [t(380, 28, "The concentric circles: where Nigeria's foreign policy begins",
           size=13.2, weight="bold")]
    cx, cy = 380, 222
    rings = [
        (172, GREEN_LIGHT, GREEN, "WORLD — the United Nations and its agencies"),
        (132, BLUE_LIGHT, BLUE, "AFRICA — the African Union, the continent"),
        (92, PURPLE_LIGHT, PURPLE, "WEST AFRICA — ECOWAS and the neighbourhood"),
        (52, AMBER_LIGHT, AMBER, "NIGERIA — national interest"),
    ]
    for r, fill, stroke, _label in rings:
        b.append(f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="{fill}" stroke="{stroke}" stroke-width="1.6"/>')
    labels = [
        (380, 226, "NIGERIA", 11, AMBER),
        (380, 128, "WEST AFRICA  •  ECOWAS", 9, PURPLE),
        (380, 88, "AFRICA  •  AU", 9, BLUE),
        (380, 50, "THE WORLD  •  UN", 9, GREEN),
    ]
    for x, y, s, size, col in labels:
        b.append(t(x, y, s, size=size, weight="bold", fill=col))
    b.append(rect(40, 356, 680, 36, "#FFFFFF", BORDER, 6, 1.0))
    b.append(t(380, 374, "Africa is the centre-piece: Nigeria acts in the world through Africa, "
                         "and in Africa through West Africa.", size=8.8, fill=NAVY))
    b.append(t(380, 388, "Each ring is a commitment, not a boundary — the inner ring always wins.",
               size=8.4, fill=MUTED))
    write_svg("gov_ch06_circles.svg", svg(w, h, "\n".join(b)))


def ch06_un() -> None:
    """The six principal organs of the United Nations."""
    w, h = 760, 330
    b = [t(380, 28, "The six principal organs of the United Nations", size=13.2, weight="bold")]
    organs = [
        ("GENERAL ASSEMBLY", "All 193 members;\none vote each", GREEN, 40, 52),
        ("SECURITY COUNCIL", "15 members; 5 permanent\nwith the veto", BLUE, 400, 52),
        ("ECONOMIC AND SOCIAL\nCOUNCIL (ECOSOC)", "54 members;\ncoordinates agencies", PURPLE, 40, 148),
        ("TRUSTEESHIP COUNCIL", "Suspended 1994;\ncolonies completed", AMBER, 400, 148),
        ("INTERNATIONAL COURT\nOF JUSTICE", "15 judges; hears\nstate disputes", GREEN_BRIGHT, 40, 244),
        ("SECRETARIAT", "The Secretary-General\nand the staff", RED, 400, 244),
    ]
    for head, body, col, x, y in organs:
        b.append(rect(x, y, 320, 84, "#FFFFFF", col, 8, 1.5))
        b.append(rect(x, y, 6, 84, col, col, 3, 1.0))
        hl = head.split("\n")
        for j, ln in enumerate(hl):
            b.append(t(x + 20, y + 24 + j * 13, ln, size=9.4, weight="bold", fill=col, anchor="start"))
        off = 24 + 13 * len(hl) + 8
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 20, y + off + j * 12, ln, size=8.2, fill=SLATE, anchor="start"))
    write_svg("gov_ch06_un.svg", svg(w, h, "\n".join(b)))


def ch06_ecowas() -> None:
    """The organs of ECOWAS."""
    w, h = 760, 340
    b = [t(380, 28, "ECOWAS — the organs and what each one does", size=13.2, weight="bold")]
    b.append(rect(250, 46, 260, 44, GREEN, GREEN, 8, 1.4))
    b.append(t(380, 66, "AUTHORITY OF HEADS OF STATE", size=9, weight="bold", fill="#FFFFFF"))
    b.append(t(380, 81, "supreme policy organ • meets yearly", size=7.6, fill="#FFFFFF"))
    mid = [("COUNCIL OF MINISTERS", "runs the sectoral\npolicy", BLUE, 60),
           ("COMMISSION", "the secretariat;\nAbuja", PURPLE, 300),
           ("COURT OF JUSTICE", "interprets the\ntreaty", AMBER, 540)]
    for head, body, col, x in mid:
        b.append(arrow2(380, 90, x + 80, 128, SLATE, 1.2))
        b.append(rect(x, 128, 160, 66, "#FFFFFF", col, 7, 1.3))
        b.append(t(x + 80, 148, head, size=8.2, weight="bold", fill=col))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 80, 164 + j * 12, ln, size=7.6, fill=SLATE))
    low = [("PARLIAMENT", "regional legislators", GREEN_BRIGHT, 60),
           ("ECOWAS BANK", "trade and investment", BLUE, 300),
           ("SPECIALISED AGENCIES", "health, water, transport", PURPLE, 540)]
    for head, body, col, x in low:
        b.append(arrow2(380, 194, x + 80, 226, SLATE, 1.1))
        b.append(rect(x, 226, 160, 54, "#FFFFFF", col, 7, 1.3))
        b.append(t(x + 80, 246, head, size=8.2, weight="bold", fill=col))
        b.append(t(x + 80, 264, body, size=7.6, fill=SLATE))
    b.append(rect(40, 294, 680, 34, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(380, 310, "Founded by the Treaty of Lagos, 28 May 1975; 15 member states; "
                         "the 1993 revised treaty gave it the power to intervene.", size=8.4, fill=NAVY))
    b.append(t(380, 323, "ECOMOG — its cease-fire monitoring group — intervened in Liberia (1990) "
                         "and Sierra Leone (1997).", size=8.2, fill=SLATE))
    write_svg("gov_ch06_ecowas.svg", svg(w, h, "\n".join(b)))


def recaps() -> None:
    recap_card("recap_ch01.svg", "Chapter 1 in one card", [
        ("THE STATE", "Population, territory, sovereignty and government. A state is not a nation (a people) nor a society (an association)."),
        ("FORMS", "Who rules and what limits the ruler: democracy, monarchy, oligarchy, dictatorship — and republic as a way of choosing the head."),
        ("IDEOLOGIES", "Capitalism (private ownership), socialism (public ownership), communism (classless), fascism (state above the individual), welfarism (market plus welfare)."),
        ("CONSTITUTION", "Written or unwritten, rigid or flexible; the rule of law, separation of powers and checks and balances are its working parts."),
    ])
    recap_card("recap_ch02.svg", "Chapter 2 in one card", [
        ("THE CHAIN", "Clifford 1922 → Richards 1946 → Macpherson 1951 → Lyttleton 1954 → independence 1960 → republican 1963 → presidential 1979 → 1999."),
        ("1999", "36 states and the FCT, 774 LGAs, a bicameral National Assembly (109 + 360), an executive President, fundamental rights in Chapter IV."),
        ("FEDERALISM", "Exclusive list (federal), concurrent list (both, federal prevails), residual list (states)."),
        ("MONEY", "Revenue allocation through the Federation Account; 13% derivation; federal character in appointments."),
    ])
    recap_card("recap_ch03.svg", "Chapter 3 in one card", [
        ("LEGISLATURE", "Makes law, represents, appropriates, oversees, confirms and can impeach. Bicameral in Nigeria: 109 senators, 360 representatives."),
        ("EXECUTIVE", "Executes law. Parliamentary: Prime Minister from the majority party. Presidential: separately elected President."),
        ("JUDICIARY", "Interprets law, reviews legislation, adjudicates. Hierarchy: Supreme Court, Court of Appeal, High Courts, lower courts."),
        ("BALANCE", "Veto, override, judicial review, impeachment, confirmation — the checks that keep each organ inside its own power."),
    ])
    recap_card("recap_ch04.svg", "Chapter 4 in one card", [
        ("PARTIES", "Aggregate interests, recruit leaders, contest elections, educate, organise government, stabilise the system."),
        ("SYSTEMS", "One-party (no choice), two-party (alternation), multi-party (coalition). Nigeria has tried all three."),
        ("PRESSURE GROUPS", "Seek to influence policy, not to govern. Sectional (NLC, NBA) and promotional (human-rights NGOs)."),
        ("ELECTIONS", "FPTP in Nigeria; PR elsewhere. INEC runs federal elections; free and fair means one person, one vote, counted openly."),
    ])
    recap_card("recap_ch05.svg", "Chapter 5 in one card", [
        ("CITIZENSHIP", "By birth, descent, registration (marriage), naturalisation (15 years) or honorary award; dual citizenship is allowed."),
        ("RIGHTS", "Chapter IV: life, dignity, liberty, fair hearing, privacy, expression, assembly, movement, property, religion."),
        ("CIVIL SERVICE", "Permanent, anonymous, impartial, hierarchical; controlled by legislature, executive, courts, ombudsman and auditor-general."),
        ("LOCAL GOVERNMENT", "774 councils; chairman and councillors elected; functions include markets, roads, primary education support and health posts."),
    ])
    recap_card("recap_ch06.svg", "Chapter 6 in one card", [
        ("FOREIGN POLICY", "Determined by national interest, economy, history, geography and public opinion; defended by diplomacy, aid, trade and force."),
        ("CIRCLES", "Nigeria → West Africa (ECOWAS) → Africa (AU) → the world (UN). Africa is the centre-piece."),
        ("ORGANISATIONS", "UN (193 members, Security Council veto), AU, ECOWAS (1975, 15 states), Commonwealth (56), OPEC (oil producers)."),
        ("NIGERIA'S RECORD", "ECOMOG in Liberia and Sierra Leone; peacekeeping in Congo, Sudan and Mali; the AfCFTA secretariat in Accra."),
    ])


# ── Cover art and the weight chart ─────────────────────────────────────────
def cover() -> None:
    """Wide cover banner: the three organs of the state, in brand colours."""
    w, h = 760, 168
    b = [f'<rect x="0" y="0" width="{w}" height="{h}" rx="12" fill="#0F2942"/>']
    b.append(t(380, 34, "WHO HAS THE POWER — AND WHERE IT STOPS", size=13, weight="bold", fill="#FCD34D"))
    nodes = [
        ("LEGISLATURE", "makes law", GREEN),
        ("EXECUTIVE", "executes law", BLUE),
        ("JUDICIARY", "interprets law", PURPLE),
    ]
    for i, (head, body, col) in enumerate(nodes):
        x = 46 + i * 232
        b.append(rect(x, 58, 200, 74, "#132F4C", col, 8, 1.5))
        b.append(t(x + 100, 82, head, size=10.6, weight="bold", fill="#FFFFFF"))
        b.append(t(x + 100, 102, body, size=8.8, fill="#CBD5E1"))
        b.append(t(x + 100, 120, "checks and balances", size=8.2, fill=col))
        if i < 2:
            b.append(arrow2(x + 202, 95, x + 228, 95, "#34D399", 1.8))
    b.append(t(380, 154, "Government • Volume 1 • 2026 Edition", size=8.8, fill="#94A3B8"))
    write_svg("gov_cover_banner.svg", svg(w, h, "\n".join(b), bg="#0F2942"))


def weights() -> None:
    """Questions per chapter, as a horizontal bar chart."""
    import matplotlib.pyplot as plt

    names = ["1 State", "2 Constitution", "3 Organs", "4 Parties", "5 Citizenship", "6 Foreign"]
    qs = [4, 3, 4, 4, 3, 2]
    cols = [GREEN, BLUE, PURPLE, AMBER, GREEN_BRIGHT, RED]
    fig, ax = plt.subplots(figsize=(7.0, 2.5))
    ax.barh(names[::-1], qs[::-1], color=cols[::-1], height=0.62)
    for i, v in enumerate(qs[::-1]):
        ax.text(v + 0.08, i, str(v), va="center", fontsize=9, color=NAVY, fontweight="bold")
    ax.set_xlim(0, 5)
    ax.set_xlabel("questions in a typical 40-question paper")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(True, axis="x", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    ax.tick_params(labelsize=8.6)
    save_fig(fig, "gov_weights.svg")


FIGURES = [
    "ch04_parties", "ch04_systems", "ch04_elections",
    "ch05_citizenship", "ch05_admin", "ch05_lg",
    "ch06_circles", "ch06_un", "ch06_ecowas", "recaps", "cover", "weights",
]
