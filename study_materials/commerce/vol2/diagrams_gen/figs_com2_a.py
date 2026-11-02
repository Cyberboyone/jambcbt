"""Commerce Volume 2 — figures, part A (cover strip and chapters 1–4)."""

from __future__ import annotations

from common import (GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED,
                    BORDER, AMBER, BLUE, PURPLE, RED, t, lines, rect, arrow, line,
                    card, svg, write_svg, banner, recap_card)

W = 760


def cover_banner() -> None:
    """Cover strip: the four parts of the second Commerce volume."""
    b = [t(380, 24, "COMMERCE — MONEY, THE MARKET AND THE WIDER WORLD", size=13, weight="bold")]
    cols = [("MONEY & BANKS", "barter to the central bank", GREEN),
            ("RISK", "insurance and its principles", BLUE),
            ("THE AIDS", "warehouse, carrier, advert", PURPLE),
            ("THE MARKET", "research, e-commerce, the world", AMBER)]
    cw = 176
    for i, (head, body, col) in enumerate(cols):
        x = 12 + i * (cw + 8)
        b += [rect(x, 44, cw, 62, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="44" width="{cw}" height="5" rx="2.5" fill="{col}"/>',
              t(x + cw / 2, 72, head, size=10.5, weight="bold", fill=col),
              t(x + cw / 2, 90, body, size=9.2, fill=SLATE)]
    b += [t(380, 126, "seventeen diagrams · eight recaps · 520 solved questions", size=9.2, fill=MUTED)]
    write_svg("cover_banner", svg(W, 150, "\n".join(b), bg=GREEN_LIGHT))


def ch01_money() -> None:
    """Barter's four failures, and the four functions that answer them."""
    b = [t(380, 22, "Why money exists: four failures of barter, four functions of money", size=12.4, weight="bold")]
    rows = [("DOUBLE COINCIDENCE OF WANTS", "you must want what I have, at the moment I want what you have",
             "MEDIUM OF EXCHANGE"),
            ("NO COMMON MEASURE", "a goat is not half a bicycle, and no one can say what it is",
             "MEASURE OF VALUE"),
            ("NO STORE OF VALUE", "yams rot and cattle stray, so saving is impossible",
             "STORE OF VALUE"),
            ("NO STANDARD OF DEFERRED PAYMENT", "a debt cannot be written down for a future date",
             "STANDARD OF DEFERRED PAYMENT")]
    for i, (bad, why, good) in enumerate(rows):
        y = 40 + i * 52
        b += [rect(8, y, 470, 44, "#FFFFFF", RED, 7, 1.2),
              t(18, y + 17, bad, size=9.2, weight="bold", fill=RED, anchor="start"),
              t(18, y + 33, why, size=8.4, fill=SLATE, anchor="start")]
        b += [arrow(486, y + 22, 528, y + 22, GREEN, 1.8)]
        b += [rect(536, y, 216, 44, "#FFFFFF", GREEN, 7, 1.2),
              t(644, y + 20, good, size=9.0, weight="bold", fill=GREEN),
              t(644, y + 34, "a function of money", size=8.2, fill=MUTED)]
    b += [t(380, 258, "Add the fifth function the paper sometimes asks for: money as a unit of account for comparing prices across a market.", size=9.0, fill=MUTED)]
    write_svg("ch01_money", svg(W, 272, "\n".join(b)))


def ch02_banks() -> None:
    """The banking pyramid, and what each tier may do."""
    b = [t(380, 22, "The banking system: four tiers, four jobs", size=12.4, weight="bold")]
    tiers = [("CENTRAL BANK", "issues the currency, banker to government and to the banks, lender of last resort", GREEN, 470),
             ("MERCHANT / DEVELOPMENT BANKS", "wholesale and long-term finance for industry and agriculture", BLUE, 400),
             ("COMMERCIAL BANKS", "current, savings and fixed accounts; loans, overdrafts, transfers", PURPLE, 330),
             ("MICROFINANCE AND OTHER BANKS", "small loans to traders and artisans, often without security", AMBER, 260)]
    y = 42
    for head, body, col, wid in tiers:
        x = 380 - wid / 2
        b += [rect(x, y, wid, 48, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="{y}" width="{wid}" height="5" rx="2.5" fill="{col}"/>',
              t(380, y + 21, head, size=9.8, weight="bold", fill=col),
              t(380, y + 37, body, size=8.3, fill=SLATE)]
        y += 56
    b += [t(380, 288, "Money flows down as credit and up as deposits; the central bank controls the flow, not the direction.", size=9.0, fill=MUTED)]
    write_svg("ch02_banks", svg(W, 300, "\n".join(b)))


def ch03_insurance() -> None:
    """The pool: many small certain payments, one large uncertain loss."""
    b = [t(380, 22, "Insurance is a pool, not a bet", size=12.4, weight="bold")]
    for i in range(6):
        x = 20 + i * 52
        b += [rect(x, 46, 42, 30, GREEN_LIGHT, GREEN, 6, 1.1),
              t(x + 21, 66, "premium", size=6.8, fill=GREEN)]
        b += [arrow(x + 21, 78, 300 + i * 4, 112, GREEN, 1.2)]
    b += [rect(250, 112, 260, 52, "#FFFFFF", NAVY, 10, 1.6),
          t(380, 134, "THE POOL", size=11.5, weight="bold", fill=NAVY),
          t(380, 152, "the fund the premiums build", size=8.6, fill=SLATE)]
    b += [arrow(380, 166, 380, 196, RED, 1.8),
          t(470, 186, "one claim, paid in full", size=8.6, fill=RED)]
    b += [rect(300, 198, 160, 34, "#FFFFFF", RED, 8, 1.4),
          t(380, 220, "THE LOSS", size=10.0, weight="bold", fill=RED)]
    b += [rect(8, 244, 744, 52, GREEN_LIGHT, GREEN_MID, 8, 1.1),
          t(380, 262, "Insurable interest · utmost good faith · indemnity · subrogation · contribution · proximate cause", size=8.8, weight="bold", fill=NAVY),
          t(380, 282, "Six principles; a policy that fails any one of them is a policy that will not pay.", size=8.4, fill=SLATE)]
    write_svg("ch03_insurance", svg(W, 304, "\n".join(b)))


def ch04_aids() -> None:
    """Transport modes against the cargo they suit, and the warehouse types."""
    b = [t(380, 22, "Moving goods and holding them: the two aids that buy time and place", size=12.2, weight="bold")]
    b += [t(190, 44, "THE MODE AND ITS CARGO", size=8.8, weight="bold", fill=GREEN)]
    modes = [("ROAD", "door to door; the short haul and the last mile", GREEN),
             ("RAIL", "bulk over land, cheaply, in quantity", BLUE),
             ("WATER", "the heaviest cargo, the lowest cost per tonne", PURPLE),
             ("AIR", "speed and perishables; the dearest per kilo", RED),
             ("PIPELINE", "liquids and gas, continuously", AMBER)]
    for i, (head, body, col) in enumerate(modes):
        y = 54 + i * 40
        b += [rect(8, y, 364, 34, "#FFFFFF", col, 6, 1.1),
              t(18, y + 14, head, size=8.8, weight="bold", fill=col, anchor="start"),
              t(18, y + 28, body, size=8.0, fill=SLATE, anchor="start")]
    b += [t(570, 44, "THE WAREHOUSE AND ITS JOB", size=8.8, weight="bold", fill=PURPLE)]
    houses = [("BONDED", "duty is unpaid until the goods leave"),
              ("COLD", "perishables, held at temperature"),
              ("CASH AND CARRY", "wholesale self-service"),
              ("PRIVATE", "one firm's own stock"),
              ("PUBLIC", "any trader may rent space")]
    for i, (head, body) in enumerate(houses):
        y = 54 + i * 40
        b += [rect(388, y, 364, 34, "#FFFFFF", PURPLE, 6, 1.1),
              t(398, y + 14, head, size=8.8, weight="bold", fill=PURPLE, anchor="start"),
              t(398, y + 28, body, size=8.0, fill=SLATE, anchor="start")]
    b += [t(380, 268, "Warehousing creates time utility; transport creates place utility. Neither creates the good — production did that.", size=9.0, fill=MUTED)]
    write_svg("ch04_aids", svg(W, 282, "\n".join(b)))


FIGURES = ["cover_banner", "ch01_money", "ch02_banks", "ch03_insurance", "ch04_aids"]
