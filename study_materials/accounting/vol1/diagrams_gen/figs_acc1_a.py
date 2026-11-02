"""Financial Accounting Volume 1 — figures, part A (cover, chapters 1–4)."""

from __future__ import annotations

from common import (GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED,
                    BORDER, AMBER, BLUE, PURPLE, RED, t, lines, rect, arrow, line,
                    card, svg, write_svg, banner, recap_card)

W = 760


def cover_banner() -> None:
    banner(
        "cover_banner",
        "FINANCIAL ACCOUNTING — The Books, the Balances and the Statements",
        [("THE RECORD\nconcepts, users\nand the equation", GREEN),
         ("THE BOOKS\ndocuments, journals,\nledger, trial balance", BLUE),
         ("THE CONTROLS\nbank reconciliation,\nerrors, suspense", PURPLE),
         ("THE STATEMENTS\nsole trader, partnership,\ncompany, not-for-profit", AMBER)],
        "Eight chapters, one language: every transaction has two sides, and every statement is built from them.",
    )


def ch01_accounting() -> None:
    """What accounting is for, who reads it, and the branches that read it differently."""
    b = [t(380, 22, "Accounting: the record, and the people who read it", size=12.4, weight="bold")]
    b += [rect(10, 40, 740, 78, "#FFFFFF", GREEN, 8, 1.4),
          f'<rect x="10" y="40" width="740" height="5" rx="2.5" fill="{GREEN}"/>',
          t(380, 64, "ACCOUNTING IS THE PROCESS OF IDENTIFYING, RECORDING, CLASSIFYING, SUMMARISING AND COMMUNICATING", size=9.2, weight="bold", fill=GREEN),
          t(380, 82, "the financial effects of transactions, so that the users of the information can make decisions", size=9.2),
          t(380, 102, "record  →  classify  →  summarise  →  report  →  interpret", size=9.4, weight="bold", fill=NAVY)]

    b += [t(380, 138, "THE USERS, AND WHAT EACH ONE WANTS", size=9.6, weight="bold", fill=NAVY)]
    users = [("OWNERS", "profit, and the\nvalue of their stake", GREEN),
             ("LENDERS", "will the loan and\ninterest be repaid?", BLUE),
             ("GOVERNMENT", "tax due, and\ncompliance", PURPLE),
             ("EMPLOYEES", "pay, security\nand continuity", AMBER)]
    for i, (h, body, col) in enumerate(users):
        x = 10 + i * 187
        b += [rect(x, 150, 180, 86, "#FFFFFF", col, 7, 1.4),
              f'<rect x="{x}" y="150" width="180" height="5" rx="2.5" fill="{col}"/>',
              t(x + 90, 174, h, size=9.6, weight="bold", fill=col)]
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 90, 194 + j * 14, ln, size=8.8))

    b += [rect(10, 250, 740, 96, "#FFFFFF", NAVY, 8, 1.4),
          f'<rect x="10" y="250" width="740" height="5" rx="2.5" fill="{NAVY}"/>',
          t(380, 274, "THE BRANCHES", size=9.6, weight="bold", fill=NAVY),
          t(130, 300, "FINANCIAL", size=9.2, weight="bold", fill=GREEN),
          t(130, 316, "reports to outsiders", size=8.8),
          t(300, 300, "COST", size=9.2, weight="bold", fill=BLUE),
          t(300, 316, "what each unit costs", size=8.8),
          t(455, 300, "MANAGEMENT", size=9.2, weight="bold", fill=PURPLE),
          t(455, 316, "for decisions inside", size=8.8),
          t(610, 300, "AUDIT / TAX", size=9.2, weight="bold", fill=AMBER),
          t(610, 316, "checking and computing", size=8.8)]

    b += [t(380, 372, "Financial accounting looks backwards and reports to outsiders; management accounting looks forward and reports to the manager.", size=9.0, fill=MUTED)]
    write_svg("ch01_accounting", svg(W, 386, "\n".join(b)))


def ch02_equation() -> None:
    """The equation, the expanded equation, and the two rules that follow from it."""
    b = [t(380, 22, "One equation, two sides, and the rules that follow", size=12.4, weight="bold")]
    b += [rect(10, 40, 740, 64, GREEN_LIGHT, GREEN, 8, 1.4),
          t(380, 68, "ASSETS  =  LIABILITIES  +  CAPITAL", size=15.0, weight="bold", fill=GREEN),
          t(380, 90, "what the business owns  =  what it owes to outsiders  +  what it owes to its owner", size=9.2)]

    b += [rect(10, 116, 740, 58, "#FFFFFF", NAVY, 8, 1.3),
          t(380, 140, "EXPANDED:  ASSETS  =  LIABILITIES  +  CAPITAL  +  PROFIT  −  DRAWINGS", size=10.4, weight="bold", fill=NAVY),
          t(380, 160, "and profit itself is income less expenses", size=9.0, fill=MUTED)]

    rows = [("ASSETS", "debit to increase", "credit to decrease", GREEN),
            ("LIABILITIES", "credit to increase", "debit to decrease", BLUE),
            ("CAPITAL", "credit to increase", "debit to decrease", PURPLE),
            ("INCOME", "credit to increase", "debit to decrease", AMBER),
            ("EXPENSES", "debit to increase", "credit to decrease", RED)]
    for i, (h, inc, dec, col) in enumerate(rows):
        y = 190 + i * 34
        b += [rect(10, y, 150, 28, "#FFFFFF", col, 5, 1.2),
              t(85, y + 18, h, size=9.2, weight="bold", fill=col),
              rect(166, y, 275, 28, GREEN_LIGHT, BORDER, 5, 1.0),
              t(303, y + 18, inc, size=8.9),
              rect(447, y, 303, 28, "#FFFFFF", BORDER, 5, 1.0),
              t(598, y + 18, dec, size=8.9)]

    b += [t(380, 372, "DEAD CLIC: Debits increase Expenses, Assets and Drawings; Credits increase Liabilities, Income and Capital.", size=9.4, weight="bold", fill=NAVY),
          t(380, 390, "Every transaction touches at least two accounts, and the debits must equal the credits — always, without exception.", size=9.0, fill=MUTED)]
    write_svg("ch02_equation", svg(W, 404, "\n".join(b)))


def ch03_documents() -> None:
    """From the paper in the drawer to the trial balance."""
    b = [t(380, 22, "From the document to the trial balance", size=12.4, weight="bold")]
    steps = [("SOURCE\nDOCUMENTS", "invoice, receipt,\ncheque stub, debit note", GREEN),
             ("BOOKS OF\nORIGINAL ENTRY", "sales, purchases, returns,\ncash books, journal", BLUE),
             ("LEDGER", "each account on its\nown T-page", PURPLE),
             ("TRIAL\nBALANCE", "every balance, debits\nagainst credits", AMBER)]
    for i, (h, body, col) in enumerate(steps):
        x = 10 + i * 187
        b += [rect(x, 44, 180, 82, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="44" width="180" height="5" rx="2.5" fill="{col}"/>']
        for j, ln in enumerate(h.split("\n")):
            b.append(t(x + 90, 70 + j * 14, ln, size=9.4, weight="bold", fill=col))
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 90, 100 + j * 13, ln, size=8.6))
        if i < 3:
            b.append(arrow(x + 182, 85, x + 200, 85, color=SLATE, sw=1.6))

    b += [t(380, 152, "THE FIVE JOURNALS, AND WHAT EACH ONE RECORDS", size=9.6, weight="bold", fill=NAVY)]
    jr = [("SALES DAY BOOK", "credit sales"), ("PURCHASES DAY BOOK", "credit purchases"),
          ("RETURNS INWARDS", "goods the customer sends back"), ("RETURNS OUTWARDS", "goods we send back"),
          ("GENERAL JOURNAL", "everything else")]
    for i, (h, body) in enumerate(jr):
        y = 164 + i * 30
        b += [rect(10, y, 250, 24, "#FFFFFF", GREEN, 4, 1.0),
              t(135, y + 16, h, size=8.8, weight="bold", fill=GREEN),
              t(268, y + 16, body, size=8.8, anchor="start")]

    b += [rect(420, 164, 330, 146, GREEN_LIGHT, GREEN, 8, 1.3),
          t(585, 186, "THE TRIAL BALANCE DOES NOT PROVE", size=9.2, weight="bold", fill=GREEN),
          lines(585, 206, ["that no error was made —",
                           "only that the debits equal the credits.",
                           "An error of omission, of principle,",
                           "of original entry or of commission",
                           "leaves it perfectly in balance."], size=8.8, fill=SLATE, gap=15)]

    b += [t(380, 336, "A document is evidence; a journal is a record; a ledger is an account; a trial balance is a check.", size=9.0, fill=MUTED)]
    write_svg("ch03_documents", svg(W, 350, "\n".join(b)))


def ch04_control() -> None:
    """The two control devices: the control account and the reconciliation."""
    b = [t(380, 22, "Two controls that catch what the trial balance cannot", size=12.4, weight="bold")]
    b += [rect(10, 40, 366, 62, "#FFFFFF", BLUE, 8, 1.4),
          f'<rect x="10" y="40" width="366" height="5" rx="2.5" fill="{BLUE}"/>',
          t(193, 64, "CONTROL ACCOUNT", size=10.2, weight="bold", fill=BLUE),
          t(193, 84, "one account that should equal the sum of the personal ledgers", size=8.8)]
    b += [rect(384, 40, 366, 62, "#FFFFFF", PURPLE, 8, 1.4),
          f'<rect x="384" y="40" width="366" height="5" rx="2.5" fill="{PURPLE}"/>',
          t(567, 64, "BANK RECONCILIATION", size=10.2, weight="bold", fill=PURPLE),
          t(567, 84, "the cash book and the bank statement, made to agree", size=8.8)]

    b += [t(193, 130, "WHY THEY DISAGREE", size=9.2, weight="bold", fill=BLUE)]
    lines_y = 148
    left = ["cash book only: unpresented cheques",
            "cash book only: lodgements not yet credited",
            "bank statement only: bank charges, interest",
            "bank statement only: standing orders, direct debits",
            "either: a cheque dishonoured",
            "either: an error by the bank or by us"]
    for i, s in enumerate(left):
        b.append(t(14, lines_y + i * 17, "•", size=9.0, fill=BLUE, anchor="start"))
        b.append(t(28, lines_y + i * 17, s, size=8.7, anchor="start"))

    b += [t(567, 130, "THE RECONCILIATION, IN ONE LINE", size=9.2, weight="bold", fill=PURPLE)]
    b += [rect(394, 142, 346, 92, GREEN_LIGHT, PURPLE, 7, 1.2),
          t(567, 166, "balance per bank statement", size=8.9),
          t(567, 184, "+ lodgements not yet credited  − unpresented cheques", size=8.9),
          t(567, 202, "= balance per cash book (adjusted)", size=8.9, weight="bold"),
          t(567, 222, "and the adjusted cash book must then be posted", size=8.4, fill=MUTED)]

    b += [rect(10, 268, 740, 54, "#FFFFFF", RED, 7, 1.3),
          t(380, 292, "A CONTROL ACCOUNT THAT DOES NOT AGREE IS A FINDING, NOT A FAILURE", size=9.4, weight="bold", fill=RED),
          t(380, 310, "the difference tells you that a posting is missing, doubled, on the wrong side, or in the wrong ledger — and it tells you where to look", size=8.6)]

    b += [t(380, 348, "Reconcile monthly, and never force a balance: a plugged figure hides the error that will be found by the auditor.", size=9.0, fill=MUTED)]
    write_svg("ch04_control", svg(W, 362, "\n".join(b)))


FIGURES = ["cover_banner", "ch01_accounting", "ch02_equation", "ch03_documents", "ch04_control"]
