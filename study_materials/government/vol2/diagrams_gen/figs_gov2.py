#!/usr/bin/env python3
"""Diagrams for Government Volume 2 — the eight chapter figures and their recap cards."""

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

W = 760


def _frame(name: str, h: int, title: str, subtitle: str, b: list[str]) -> None:
    body = (f'<rect x="0" y="0" width="{W}" height="{h}" rx="10" fill="#FFFFFF" '
            f'stroke="{BORDER}" stroke-width="1.2"/>')
    b.insert(0, t(W / 2, 28, title, size=13.5, weight="bold"))
    if subtitle:
        b.insert(1, t(W / 2, 46, subtitle, size=9.8, fill=MUTED))
    write_svg(name + ".svg", svg(W, h, body + "\n" + "\n".join(b)))


# ── Chapter 1 ──────────────────────────────────────────────────────────────
def ch01_precolonial() -> None:
    title = "Three systems of rule before the colonial state"
    sub = "Different institutions, the same two questions: who governs, and what limits the ruler?"
    b: list[str] = []
    systems = [
        ("THE EMIRATE", "Hausa–Fulani, after 1804", AMBER, AMBER_LIGHT,
         ["Emir at the head, advised by", "the Emirate Council",
          "District and village heads", "below him",
          "Alkali courts apply the", "Sharia",
          "Limits: the council, the", "scholars and the caliphate"]),
        ("THE YORUBA CHIEFTAINCY", "Oyo, Ife and the towns", BLUE, BLUE_LIGHT,
         ["Oba in council, not alone", "The Oyomesi may reject him",
          "Balogun commands the army", "Women's and traders' guilds",
          "Checks: the council, the", "guilds and the oracles",
          "A bad Oba could be asked", "to die — the ultimate check"]),
        ("THE IGBO VILLAGE REPUBLIC", "Igboland, acephalous", PURPLE, PURPLE_LIGHT,
         ["No single ruler at all", "The council of elders",
          "The age grades and the Ozo", "title society",
          "The Oracle and the market", "association",
          "Limits: consensus, kinship", "and the assembly"]),
    ]
    for i, (head, place, col, bg, rows) in enumerate(systems):
        x = 18 + i * 248
        b.append(rect(x, 66, 228, 226, bg, col, 9, 1.6))
        b.append(rect(x, 66, 228, 6, col, col, 3, 1.0))
        b.append(t(x + 114, 92, head, size=10.4, weight="bold", fill=col))
        b.append(t(x + 114, 110, place, size=9.0, fill=SLATE, italic=True))
        for j, r in enumerate(rows):
            colr = NAVY if j in (0, 3, 6) else SLATE
            wt = "bold" if j == 6 else "normal"
            b.append(t(x + 114, 132 + j * 17.5, r, size=9.2, fill=colr, weight=wt))
    b.append(rect(18, 306, 724, 66, GREEN_LIGHT, GREEN, 8, 1.4))
    b.append(t(380, 328, "What the colonial power found, and used", size=10.2, weight="bold", fill=GREEN))
    b.append(t(380, 348, "Emirs and Obas already ruled through a hierarchy, so they could be ruled through: that is why indirect rule",
                size=9.4, fill=SLATE))
    b.append(t(380, 363, "was imposed where chieftaincy was strong, and why it broke down where nobody ruled alone.", size=9.4, fill=SLATE))
    _frame("gov2_ch01_precolonial", 386, title, sub, b)


# ── Chapter 2 ──────────────────────────────────────────────────────────────
def ch02_colonial() -> None:
    title = "From company rule to the eve of independence"
    sub = "The dates, and the single idea that runs through them: rule by a power that answers to London"
    b: list[str] = []
    stops = [
        ("1851", "Bombardment of Lagos", AMBER),
        ("1861", "Lagos annexed as a colony", AMBER),
        ("1886", "Royal Niger Company charter", BLUE),
        ("1900", "Protectorates proclaimed", BLUE),
        ("1906", "Colony and protectorate united", GREEN),
        ("1914", "Amalgamation; indirect rule", GREEN),
        ("1922", "Clifford Constitution; elective principle", PURPLE),
        ("1946", "Richards Constitution; regions", PURPLE),
    ]
    b.append(line(40, 96, 720, 96, BORDER, 2.0))
    for i, (year, what, col) in enumerate(stops):
        x = 40 + i * (680 / 7)
        b.append(dot(x, 96, 6, col))
        b.append(t(x, 78, year, size=10.6, weight="bold", fill=col))
        for j, chunk in enumerate(what.split(" ", 2)):
            pass
        words = what.split()
        lines_out, cur = [], ""
        for wd in words:
            if len(cur + " " + wd) > 16:
                lines_out.append(cur)
                cur = wd
            else:
                cur = (cur + " " + wd).strip()
        lines_out.append(cur)
        for j, ln in enumerate(lines_out[:4]):
            b.append(t(x, 120 + j * 13, ln, size=8.6, fill=SLATE))
    b.append(rect(18, 200, 350, 176, RED_LIGHT, RED, 9, 1.5))
    b.append(t(193, 224, "INDIRECT RULE — WHY IT HELD IN THE NORTH", size=9.6, weight="bold", fill=RED))
    for j, ln in enumerate(["A recognised emir already collected tax, kept order",
                            "and judged by a written law.",
                            "The British ruled through him, kept the courts",
                            "and the treasury, and left the rest intact.",
                            "Native authorities became the local state."]):
        b.append(t(193, 248 + j * 19, ln, size=9.2, fill=SLATE))
    b.append(rect(392, 200, 350, 176, BLUE_LIGHT, BLUE, 9, 1.5))
    b.append(t(567, 224, "AND WHY IT BROKE IN THE EAST", size=9.6, weight="bold", fill=BLUE))
    for j, ln in enumerate(["There was no paramount chief to rule through,",
                            "so the British invented Warrant Chiefs.",
                            "They had no legitimacy, they taxed by force,",
                            "and in 1929 the women's war removed them.",
                            "The Aba riots ended the system in Igboland."]):
        b.append(t(567, 248 + j * 19, ln, size=9.2, fill=SLATE))
    _frame("gov2_ch02_colonial", 388, title, sub, b)


# ── Chapter 3 ──────────────────────────────────────────────────────────────
def ch03_nationalism() -> None:
    title = "The parties that negotiated independence"
    sub = "Four organisations, four bases, and the bargain of 1959 that produced a coalition"
    b: list[str] = []
    parties = [
        ("NCNC", "1944", "Dr Nnamdi Azikiwe", "National; the Igbo east\nand the towns", GREEN),
        ("AG", "1951", "Chief Obafemi Awolowo", "The Yoruba west;\nfree education", BLUE),
        ("NPC", "1951", "Sir Ahmadu Bello", "The Hausa–Fulani north;\ntraditional authority", AMBER),
        ("NEPU", "1950", "Malam Aminu Kano", "The northern talakawa;\nradical, small", PURPLE),
    ]
    for i, (name, year, leader, base, col) in enumerate(parties):
        x = 18 + i * 186
        b.append(rect(x, 66, 170, 150, "#FFFFFF", col, 9, 1.6))
        b.append(rect(x, 66, 170, 6, col, col, 3, 1.0))
        b.append(t(x + 85, 94, name, size=14, weight="bold", fill=col))
        b.append(t(x + 85, 112, "founded " + year, size=9, fill=MUTED))
        b.append(t(x + 85, 134, leader, size=9.2, fill=NAVY, weight="bold"))
        for j, ln in enumerate(base.split("\n")):
            b.append(t(x + 85, 156 + j * 15, ln, size=9.0, fill=SLATE))
        b.append(t(x + 85, 206, "regional", size=8.4, fill=col, italic=True))
    b.append(arrow2(380, 220, 380, 244, GREEN))
    b.append(rect(18, 250, 724, 96, GREEN_LIGHT, GREEN, 9, 1.5))
    b.append(t(380, 274, "The 1959 bargain", size=10.4, weight="bold", fill=GREEN))
    for j, ln in enumerate([
        "No party won a majority of the 312 seats: the NPC had the north, the NCNC and the AG split the south.",
        "The NPC and the NCNC formed a coalition, with Balewa as Prime Minister and the AG in opposition.",
        "Independence on 1 October 1960 therefore began with a government of two regions and an opposition of the third —",
        "a fact that shaped the census, the revenue quarrel and, in the end, the collapse of the First Republic.",
    ]):
        b.append(t(380, 296 + j * 14, ln, size=9.1, fill=SLATE))
    _frame("gov2_ch03_nationalism", 358, title, sub, b)


# ── Chapter 4 ──────────────────────────────────────────────────────────────
def ch04_federalism() -> None:
    title = "The three legislative lists"
    sub = "Who may legislate on what: the test that decides every federalism question in the paper"
    b: list[str] = []
    cols = [
        ("EXCLUSIVE", "Federal only", GREEN, GREEN_LIGHT,
         ["defence and the armed forces", "foreign affairs and treaties",
          "currency and the central bank", "citizenship and immigration",
          "police (the Nigeria Police Force)", "weights, measures and patents"]),
        ("CONCURRENT", "Federal and state", BLUE, BLUE_LIGHT,
         ["education", "health", "agriculture", "electricity",
          "industrial development", "water supply"]),
        ("RESIDUAL", "State only", PURPLE, PURPLE_LIGHT,
         ["chieftaincy and traditional", "  institutions",
          "local government", "land in the state", "markets and motor parks",
          "state roads and transport"]),
    ]
    for i, (head, who, col, bg, rows) in enumerate(cols):
        x = 18 + i * 248
        b.append(rect(x, 66, 228, 214, bg, col, 9, 1.6))
        b.append(rect(x, 66, 228, 6, col, col, 3, 1.0))
        b.append(t(x + 114, 92, head, size=10.6, weight="bold", fill=col))
        b.append(t(x + 114, 110, who, size=9.0, fill=SLATE, italic=True))
        for j, r in enumerate(rows):
            anchor = "start" if r.startswith("  ") else "middle"
            b.append(t(x + (12 if anchor == "start" else 114), 136 + j * 20, r.strip(),
                       size=9.2, fill=SLATE, anchor=anchor))
    b.append(rect(18, 292, 724, 78, LIGHT_BG, BORDER, 9, 1.3))
    b.append(t(380, 314, "The rule the paper tests", size=10.2, weight="bold", fill=NAVY))
    b.append(t(380, 334, "Where a federal law and a state law conflict on a concurrent matter, the federal law prevails — but only to the extent of the inconsistency.",
                size=9.0, fill=SLATE))
    b.append(t(380, 352, "A state may legislate on a residual matter even if the federal government has said nothing, because the power is its own.",
                size=9.0, fill=SLATE))
    _frame("gov2_ch04_federalism", 382, title, sub, b)


# ── Chapter 5 ──────────────────────────────────────────────────────────────
def ch05_military() -> None:
    title = "Thirty-three years of soldiers, in one line"
    sub = "Every military regime in Nigeria, how it began, and what it promised before it left"
    b: list[str] = []
    regimes = [
        ("1966", "Aguiyi-Ironsi", "January coup", AMBER),
        ("1966–75", "Gowon", "counter-coup; civil war", RED),
        ("1975–79", "Murtala / Obasanjo", "assassination; handover", BLUE),
        ("1983–85", "Buhari", "coup against Shagari", AMBER),
        ("1985–93", "Babangida", "palace coup; annulment", RED),
        ("1993", "Shonekan", "interim, three months", PURPLE),
        ("1993–98", "Abacha", "palace coup; sudden death", RED),
        ("1998–99", "Abubakar", "handover, 1999", GREEN),
    ]
    b.append(line(40, 78, 720, 78, BORDER, 2.0))
    for i, (when, who, what, col) in enumerate(regimes):
        x = 46 + i * (668 / 7)
        b.append(dot(x, 78, 5.5, col))
        b.append(t(x, 62, when, size=8.6, weight="bold", fill=col))
        b.append(t(x, 98, who, size=8.4, fill=NAVY, weight="bold"))
        b.append(t(min(x, 706), 112, what.split(";")[0], size=7.6, fill=SLATE))
    rows = [
        ("WHY THEY CAME", ["Corruption and the collapse of order", "A civilian government that lost legitimacy",
                           "The army as the only organised institution"], RED),
        ("HOW THEY RULED", ["Decrees instead of Acts, ouster clauses", "Special military tribunals",
                            "No legislature, no independent judiciary"], AMBER),
        ("WHAT THEY LEFT", ["A centralised federation and a strong centre", "A politicised army",
                            "The habit of annulment and of the coup"], PURPLE),
    ]
    for i, (head, items, col) in enumerate(rows):
        x = 18 + i * 248
        b.append(rect(x, 136, 228, 132, "#FFFFFF", col, 8, 1.4))
        b.append(rect(x, 136, 228, 5, col, col, 2.5, 1.0))
        b.append(t(x + 114, 160, head, size=9.4, weight="bold", fill=col))
        for j, it in enumerate(items):
            b.append(t(x + 114, 184 + j * 26, it, size=9.0, fill=SLATE))
    b.append(rect(18, 280, 724, 44, GREEN_LIGHT, GREEN, 8, 1.4))
    b.append(t(380, 306, "1999: the Fourth Republic begins — and the question the paper still asks is why the army went back to barracks.",
               size=9.3, fill=SLATE))
    _frame("gov2_ch05_military", 336, title, sub, b)


# ── Chapter 6 ──────────────────────────────────────────────────────────────
def ch06_admin() -> None:
    title = "The civil service and the four controls upon it"
    sub = "A permanent, anonymous bureaucracy, answerable to the minister and to the law"
    b: list[str] = []
    tiers = [
        ("ADMINISTRATIVE CLASS", "permanent secretaries, directors", 470, GREEN),
        ("PROFESSIONAL CLASS", "engineers, doctors, accountants", 560, BLUE),
        ("EXECUTIVE / CLERICAL", "records, accounts, correspondence", 650, AMBER),
        ("MESSENGERS AND SUPPORT", "cleaning, dispatch, security", 720, PURPLE),
    ]
    for i, (name, what, wid, col) in enumerate(tiers):
        y = 70 + i * 52
        x = 380 - wid / 2
        b.append(rect(x, y, wid, 42, "#FFFFFF", col, 7, 1.3))
        b.append(t(380, y + 18, name, size=9.4, weight="bold", fill=col))
        b.append(t(380, y + 33, what, size=8.8, fill=SLATE))
        if i:
            b.append(arrow2(380, y - 8, 380, y - 1, BORDER, 1.4, 6.0))
    b.append(rect(18, 286, 724, 84, LIGHT_BG, BORDER, 8, 1.3))
    b.append(t(380, 308, "The controls", size=9.8, weight="bold", fill=NAVY))
    for i, (who, what) in enumerate([
        ("Legislature", "questions, committees, the power of the purse"),
        ("Executive", "ministerial direction, the establishment office"),
        ("Judiciary", "judicial review of administrative acts"),
        ("Ombudsman", "the Public Complaints Commission's inquiry"),
    ]):
        x = 30 + i * 180
        b.append(t(x + 82, 330, who, size=9.0, weight="bold", fill=GREEN))
        b.append(t(x + 82, 346, what, size=8.4, fill=SLATE))
    _frame("gov2_ch06_admin", 384, title, sub, b)


# ── Chapter 7 ──────────────────────────────────────────────────────────────
def ch07_foreign() -> None:
    title = "The concentric circles"
    sub = "Nigeria's foreign policy begins at home, widens to West Africa, to Africa, and only then to the world"
    b: list[str] = []
    cx, cy = 208, 214
    rings = [
        (166, GREEN_LIGHT, GREEN, "THE WORLD"),
        (124, BLUE_LIGHT, BLUE, "AFRICA"),
        (82, AMBER_LIGHT, AMBER, "WEST AFRICA"),
        (40, "#FFFFFF", RED, "NIGERIA"),
    ]
    for r, bg, col, _lab in rings:
        b.append(f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="{bg}" stroke="{col}" stroke-width="1.7"/>')
    for r, bg, col, lab in rings[:-1]:
        b.append(t(cx, cy - r + 21, lab, size=9.6, weight="bold", fill=col))
    b.append(t(cx, cy + 4, "NIGERIA", size=9.4, weight="bold", fill=RED))
    legend = [
        ("1. THE NATIONAL INTEREST", "security, prosperity and the survival of the state", RED),
        ("2. WEST AFRICA", "the neighbourhood: ECOWAS, ECOMOG, the border", AMBER),
        ("3. AFRICA", "decolonisation, apartheid, the AU and the centre-piece", BLUE),
        ("4. THE WORLD", "the UN, the Commonwealth, OPEC, the great powers", GREEN),
    ]
    for i, (head, what, col) in enumerate(legend):
        y = 78 + i * 52
        b.append(rect(392, y, 350, 42, "#FFFFFF", col, 6, 1.3))
        b.append(rect(392, y, 5, 42, col, col, 2, 1.0))
        b.append(t(406, y + 18, head, size=9.2, weight="bold", fill=col, anchor="start"))
        b.append(t(406, y + 33, what, size=8.2, fill=SLATE, anchor="start"))
    b.append(t(567, 300, "in that order, and never the other way round",
               size=8.8, fill=MUTED, italic=True))
    b.append(t(567, 318, "the circle is a statement of priority, not of geography",
               size=8.8, fill=MUTED, italic=True))
    _frame("gov2_ch07_foreign", 392, title, sub, b)


# ── Chapter 8 ──────────────────────────────────────────────────────────────
def ch08_elections() -> None:
    title = "The electoral cycle, and where it is attacked"
    sub = "Seven stages between the register and the tribunal: every rigging question is one of them"
    b: list[str] = []
    stages = [
        ("REGISTRATION", "the voter register; PVCs"),
        ("NOMINATION", "party primaries; nominations"),
        ("CAMPAIGN", "rallies, media, spending limits"),
        ("ACCREDITATION", "the voter is verified"),
        ("VOTING", "the ballot is cast and counted"),
        ("COLLATION", "results transmitted and declared"),
        ("PETITION", "the tribunal and the courts"),
    ]
    for i, (head, what) in enumerate(stages):
        y = 70 + i * 40
        col = GREEN if i < 3 else (BLUE if i < 6 else AMBER)
        b.append(rect(18, y, 300, 32, "#FFFFFF", col, 6, 1.3))
        b.append(t(30, y + 14, f"{i + 1}. {head}", size=9.2, weight="bold", fill=col, anchor="start"))
        b.append(t(30, y + 26, what, size=8.4, fill=SLATE, anchor="start"))
        b.append(arrow2(322, y + 16, 350, y + 16, BORDER, 1.3, 6.0))
    b.append(rect(354, 66, 388, 150, GREEN_LIGHT, GREEN, 9, 1.5))
    b.append(t(548, 90, "INEC", size=13, weight="bold", fill=GREEN))
    b.append(t(548, 112, "Independent National Electoral Commission", size=8.8, fill=SLATE))
    for j, ln in enumerate(["Registers voters, prints and keeps the ballot",
                            "papers, accredits observers, conducts the poll",
                            "and declares the result. Its independence is",
                            "the first question in every fairness item."]):
        b.append(t(548, 134 + j * 15, ln, size=8.8, fill=SLATE))
    b.append(rect(354, 226, 388, 150, RED_LIGHT, RED, 9, 1.5))
    b.append(t(548, 250, "THE FOUR CLASSIC ATTACKS", size=9.4, weight="bold", fill=RED))
    for j, ln in enumerate(["the register is padded or a candidate's",
                            "stronghold is left out;",
                            "ballot papers are printed in excess;",
                            "results are collated under duress;",
                            "the tribunal is asked to decide what the",
                            "voter decided."]):
        b.append(t(548, 272 + j * 16, ln, size=8.8, fill=SLATE))
    _frame("gov2_ch08_elections", 392, title, sub, b)


# ── Recap cards ────────────────────────────────────────────────────────────
def recap_ch01() -> None:
    recap_card("recap_gov2_ch01.svg", "Chapter 1 — Pre-Colonial Administration", [
        ("The emirate", "Emir advised by a council, district and village heads, Alkali courts under Sharia."),
        ("The Yoruba system", "Oba in council with the Oyomesi, checked by the guilds and the oracles."),
        ("The village republic", "No paramount ruler: elders, age grades, title societies, consensus."),
        ("Why it matters", "Indirect rule worked where a chief already ruled, and failed where none did."),
    ])


def recap_ch02() -> None:
    recap_card("recap_gov2_ch02.svg", "Chapter 2 — Colonial Rule", [
        ("Three phases", "Company charter, crown colony, protectorate — all answering to London."),
        ("1914", "Amalgamation of the northern and southern protectorates for administration."),
        ("Indirect rule", "Rule through native authorities; taxation and courts left with the chief."),
        ("The legacy", "Regionalism, uneven development, a created chiefly class and a new elite."),
    ])


def recap_ch03() -> None:
    recap_card("recap_gov2_ch03.svg", "Chapter 3 — Nationalism and Independence", [
        ("NCNC 1944", "Azikiwe; national in ambition, strongest in the east and the towns."),
        ("AG 1951", "Awolowo; the west, free primary education, a federal constitution."),
        ("NPC 1951", "Ahmadu Bello; the north, traditional authority, a slow transfer of power."),
        ("1959–60", "No majority: an NPC–NCNC coalition took Nigeria to independence on 1 October 1960."),
    ])


def recap_ch04() -> None:
    recap_card("recap_gov2_ch04.svg", "Chapter 4 — Federalism in Practice", [
        ("Exclusive", "Federal alone: defence, currency, foreign affairs, police, citizenship."),
        ("Concurrent", "Both may legislate; federal law prevails where they conflict."),
        ("Residual", "State alone: chieftaincy, local government, land, markets."),
        ("The Nigerian facts", "36 states and the FCT, 774 local governments, 13% derivation."),
    ])


def recap_ch05() -> None:
    recap_card("recap_gov2_ch05.svg", "Chapter 5 — The Military in Politics", [
        ("Why they came", "Corruption, lost legitimacy, and an army that was the only organised body."),
        ("How they ruled", "Decrees, ouster clauses, special tribunals, no legislature."),
        ("The sequence", "1966, Gowon, Murtala–Obasanjo, Buhari, Babangida, Abacha, Abubakar."),
        ("What they left", "A strong centre, a politicised army, and the habit of annulment."),
    ])


def recap_ch06() -> None:
    recap_card("recap_gov2_ch06.svg", "Chapter 6 — Public Administration", [
        ("The service", "Permanent, anonymous, impartial; recruitment by the commission."),
        ("The classes", "Administrative, professional, executive and clerical, and support."),
        ("The controls", "Legislature, executive, judiciary and the ombudsman."),
        ("The reforms", "Udoji 1972, Dotun Phillips 1988, and the privatisation programme."),
    ])


def recap_ch07() -> None:
    recap_card("recap_gov2_ch07.svg", "Chapter 7 — Foreign Policy", [
        ("The determinants", "Geography, history, economy, domestic politics and the national interest."),
        ("The centre-piece", "Africa first: decolonisation, apartheid, and the AU."),
        ("The circles", "Nigeria, West Africa, Africa, the world — in that order."),
        ("The instruments", "Diplomatic, economic, military and cultural."),
    ])


def recap_ch08() -> None:
    recap_card("recap_gov2_ch08.svg", "Chapter 8 — Elections and Administration", [
        ("The commission", "INEC: register, ballot, accreditation, collation, declaration."),
        ("The systems", "First past the post, proportional representation, and the mixed list."),
        ("Fairness test", "One register, one ballot, one collation, and a tribunal that can reverse."),
        ("2022 Act", "BIVAS, electronic transmission, and result sheets uploaded at the polling unit."),
    ])


def cover_banner() -> None:
    """The strip that sits under the title on the cover page."""
    from common import banner
    nodes = [
        ("Pre-Colonial\nAdministration", AMBER),
        ("Colonial\nRule", BLUE),
        ("Nationalism\n& Independence", GREEN),
        ("Federalism\nin Practice", PURPLE),
        ("The Military\nin Politics", RED),
        ("Public\nAdministration", BLUE),
        ("Foreign\nPolicy", GREEN),
        ("Elections &\nAdministration", AMBER),
    ]
    banner("gov2_cover_banner.svg",
           "Eight chapters, one state — village republic to ballot box",
           nodes,
           subtitle="The Nigerian story in depth: dates, regimes, institutions and the machinery of government")


FIGURES = ["cover_banner",
           "ch01_precolonial", "ch02_colonial", "ch03_nationalism", "ch04_federalism",
           "ch05_military", "ch06_admin", "ch07_foreign", "ch08_elections",
           "recap_ch01", "recap_ch02", "recap_ch03", "recap_ch04",
           "recap_ch05", "recap_ch06", "recap_ch07", "recap_ch08"]
