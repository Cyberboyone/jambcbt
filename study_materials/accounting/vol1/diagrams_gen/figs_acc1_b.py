"""Financial Accounting Volume 1 — figures, part B (chapters 5–8, recap cards)."""

from __future__ import annotations

from common import (GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED,
                    BORDER, AMBER, BLUE, PURPLE, RED, t, lines, rect, arrow, line,
                    card, svg, write_svg, banner, recap_card)

W = 760


def ch05_final() -> None:
    """The three statements of a sole trader, and where each adjustment lands."""
    b = [t(380, 22, "Three statements, and where every adjustment lands", size=12.4, weight="bold")]
    b += [rect(10, 40, 236, 92, "#FFFFFF", GREEN, 8, 1.4),
          f'<rect x="10" y="40" width="236" height="5" rx="2.5" fill="{GREEN}"/>',
          t(128, 64, "TRADING ACCOUNT", size=9.8, weight="bold", fill=GREEN),
          t(128, 84, "sales − cost of sales", size=8.8),
          t(128, 102, "= GROSS PROFIT", size=8.8, weight="bold"),
          t(128, 120, "opening stock + purchases − closing stock", size=7.8, fill=MUTED)]

    b += [rect(262, 40, 236, 92, "#FFFFFF", BLUE, 8, 1.4),
          f'<rect x="262" y="40" width="236" height="5" rx="2.5" fill="{BLUE}"/>',
          t(380, 64, "PROFIT AND LOSS", size=9.8, weight="bold", fill=BLUE),
          t(380, 84, "gross profit + other income − expenses", size=8.8),
          t(380, 102, "= NET PROFIT", size=8.8, weight="bold"),
          t(380, 120, "depreciation, bad debts, rent, wages, interest", size=7.8, fill=MUTED)]

    b += [rect(514, 40, 236, 92, "#FFFFFF", PURPLE, 8, 1.4),
          f'<rect x="514" y="40" width="236" height="5" rx="2.5" fill="{PURPLE}"/>',
          t(632, 64, "BALANCE SHEET", size=9.8, weight="bold", fill=PURPLE),
          t(632, 84, "assets  =  capital + liabilities", size=8.8),
          t(632, 102, "a position at one date", size=8.8, weight="bold"),
          t(632, 120, "fixed and current assets, capital, current liabilities", size=7.8, fill=MUTED)]

    b += [t(380, 158, "THE ADJUSTMENTS, AND THE STATEMENT EACH ONE TOUCHES", size=9.6, weight="bold", fill=NAVY)]
    rows = [("Accrued expense", "add to the expense in P&L; a current liability"),
            ("Prepaid expense", "deduct from the expense in P&L; a current asset"),
            ("Accrued income", "add to income in P&L; a current asset"),
            ("Income received in advance", "deduct from income; a current liability"),
            ("Depreciation", "an expense in P&L; deducted from the asset"),
            ("Bad debt written off", "an expense in P&L; deducted from debtors"),
            ("Provision for doubtful debts", "an expense in P&L; deducted from debtors"),
            ("Closing stock", "credited in trading account; a current asset")]
    for i, (a, bb) in enumerate(rows):
        y = 170 + i * 25
        fill = "#FFFFFF" if i % 2 == 0 else GREEN_LIGHT
        b += [rect(10, y, 200, 21, fill, BORDER, 4, 0.8),
              t(18, y + 15, a, size=8.6, anchor="start", weight="bold", fill=NAVY),
              t(220, y + 15, bb, size=8.6, anchor="start")]

    b += [t(380, 390, "The rule behind every adjustment: match the cost to the period that earned it, and put the unpaid or unused part on the balance sheet.", size=9.0, fill=MUTED)]
    write_svg("ch05_final", svg(W, 404, "\n".join(b)))


def ch06_errors() -> None:
    """Six errors, and whether the trial balance catches them."""
    b = [t(380, 22, "Six errors, and whether the trial balance catches them", size=12.4, weight="bold")]
    rows = [("Error of omission", "a transaction left out altogether", "NOT caught", RED),
            ("Error of commission", "posted to the wrong account of the same class", "NOT caught", RED),
            ("Error of principle", "a capital item in a revenue account, or the reverse", "NOT caught", RED),
            ("Error of original entry", "the wrong amount entered in the books first", "NOT caught", RED),
            ("Compensating errors", "two errors that cancel each other", "NOT caught", RED),
            ("Error of transposition", "₦4,500 written as ₦5,400", "caught, if one side only", GREEN)]
    for i, (h, body, verdict, col) in enumerate(rows):
        y = 44 + i * 42
        b += [rect(10, y, 250, 34, "#FFFFFF", NAVY, 6, 1.1),
              t(135, y + 21, h, size=9.0, weight="bold", fill=NAVY),
              t(272, y + 21, body, size=8.7, anchor="start"),
              rect(586, y, 164, 34, GREEN_LIGHT if col == GREEN else "#FEE2E2", col, 6, 1.1),
              t(668, y + 21, verdict, size=8.5, weight="bold", fill=col)]

    b += [rect(10, 308, 740, 62, "#FFFFFF", PURPLE, 8, 1.3),
          t(380, 332, "THE SUSPENSE ACCOUNT IS THE PLACE WHERE A ONE-SIDED ERROR WAITS", size=9.4, weight="bold", fill=PURPLE),
          t(380, 352, "open it with the difference, post every correction through it, and it must close to nil when the last error is found", size=8.7)]

    b += [t(380, 392, "A trial balance that agrees is a trial balance with equal debits and credits — not a set of books that is free of error.", size=9.0, fill=MUTED)]
    write_svg("ch06_errors", svg(W, 404, "\n".join(b)))


def ch07_partnership() -> None:
    """The appropriation account and the two accounts each partner keeps."""
    b = [t(380, 22, "Partnership: profit is shared by agreement, not by ownership", size=12.4, weight="bold")]
    b += [rect(10, 40, 470, 120, "#FFFFFF", GREEN, 8, 1.4),
          f'<rect x="10" y="40" width="470" height="5" rx="2.5" fill="{GREEN}"/>',
          t(245, 64, "THE APPROPRIATION ACCOUNT", size=10.0, weight="bold", fill=GREEN),
          t(30, 88, "Net profit for the year", size=8.9, anchor="start"),
          t(466, 88, "xx", size=8.9, anchor="end"),
          t(30, 108, "less: interest on capital", size=8.9, anchor="start"),
          t(30, 126, "less: partners' salaries", size=8.9, anchor="start"),
          t(30, 144, "less: share of residual profit  (the agreed ratio)", size=8.9, anchor="start"),
          t(466, 144, "xx", size=8.9, anchor="end")]

    b += [rect(492, 40, 258, 120, "#FFFFFF", BLUE, 8, 1.4),
          f'<rect x="492" y="40" width="258" height="5" rx="2.5" fill="{BLUE}"/>',
          t(621, 64, "NO DEED? THE DEFAULT", size=9.6, weight="bold", fill=BLUE),
          lines(621, 88, ["profits and losses equally",
                          "no interest on capital",
                          "no salaries",
                          "no interest on drawings"], size=8.8, gap=18)]

    b += [t(380, 186, "EACH PARTNER HAS TWO ACCOUNTS", size=9.6, weight="bold", fill=NAVY)]
    b += [rect(10, 198, 366, 108, "#FFFFFF", PURPLE, 7, 1.2),
          t(193, 220, "CAPITAL ACCOUNT", size=9.2, weight="bold", fill=PURPLE),
          t(193, 240, "the long-term stake: opening balance,", size=8.6),
          t(193, 256, "capital introduced, share of profit,", size=8.6),
          t(193, 272, "less drawings and losses", size=8.6),
          t(193, 294, "rarely moved; it is the owner's investment", size=8.2, fill=MUTED)]
    b += [rect(384, 198, 366, 108, "#FFFFFF", AMBER, 7, 1.2),
          t(567, 220, "CURRENT ACCOUNT", size=9.2, weight="bold", fill=AMBER),
          t(567, 240, "the running account: salary, interest", size=8.6),
          t(567, 256, "on capital, share of profit, less", size=8.6),
          t(567, 272, "drawings and interest on drawings", size=8.6),
          t(567, 294, "it may be in debit — that is an overdrawn partner", size=8.2, fill=MUTED)]

    b += [t(380, 336, "On admission: revalue the assets, admit goodwill, and never let the new partner share in profits earned before he arrived.", size=9.0, fill=MUTED)]
    write_svg("ch07_partnership", svg(W, 350, "\n".join(b)))


def ch08_company() -> None:
    """A company's capital structure, and the appropriation that follows."""
    b = [t(380, 22, "A company's capital, and what happens to its profit", size=12.4, weight="bold")]
    b += [rect(10, 40, 360, 128, "#FFFFFF", GREEN, 8, 1.4),
          f'<rect x="10" y="40" width="360" height="5" rx="2.5" fill="{GREEN}"/>',
          t(190, 64, "SHARE CAPITAL (owners)", size=9.8, weight="bold", fill=GREEN),
          t(28, 88, "ordinary shares — variable dividend, a vote", size=8.8, anchor="start"),
          t(28, 108, "preference shares — fixed dividend, usually no vote", size=8.8, anchor="start"),
          t(28, 128, "share premium — the excess over nominal value", size=8.8, anchor="start"),
          t(28, 148, "reserves — retained profit kept in the business", size=8.8, anchor="start")]

    b += [rect(390, 40, 360, 128, "#FFFFFF", AMBER, 8, 1.4),
          f'<rect x="390" y="40" width="360" height="5" rx="2.5" fill="{AMBER}"/>',
          t(570, 64, "LOAN CAPITAL (creditors)", size=9.8, weight="bold", fill=AMBER),
          t(408, 88, "debentures — fixed interest, paid before any dividend", size=8.8, anchor="start"),
          t(408, 108, "secured or unsecured, redeemable or perpetual", size=8.8, anchor="start"),
          t(408, 128, "the holder has no vote and no share of profit", size=8.8, anchor="start"),
          t(408, 148, "interest is a charge on profit, not an appropriation", size=8.8, anchor="start")]

    b += [rect(10, 186, 740, 96, "#FFFFFF", PURPLE, 8, 1.3),
          t(380, 210, "THE APPROPRIATION ACCOUNT OF A COMPANY", size=9.8, weight="bold", fill=PURPLE),
          t(380, 232, "profit before tax  −  tax  =  profit after tax", size=9.0),
          t(380, 250, "− transfer to reserves  −  preference dividend  −  ordinary dividend  =  retained for the year", size=9.0),
          t(380, 270, "a dividend may only be paid out of distributable profit: never out of capital", size=8.6, fill=MUTED)]

    b += [t(380, 314, "THE TWO STATEMENTS THE PAPER ASKS FOR", size=9.4, weight="bold", fill=NAVY),
          t(190, 338, "Statement of financial position", size=9.0, weight="bold", fill=GREEN),
          t(570, 338, "Statement of profit or loss", size=9.0, weight="bold", fill=BLUE),
          t(190, 356, "assets, and the capital and liabilities that financed them", size=8.6),
          t(570, 356, "income less expenses, and the appropriation that follows", size=8.6)]

    b += [t(380, 392, "A share is ownership; a debenture is a loan. Every company question begins by asking which of the two it is looking at.", size=9.0, fill=MUTED)]
    write_svg("ch08_company", svg(W, 404, "\n".join(b)))


# ── recap cards ───────────────────────────────────────────────────────────────
def recap_ch01() -> None:
    recap_card("recap_ch01", "Chapter 1 in one card", [
        ("WHAT ACCOUNTING IS", "identifying, recording, classifying, summarising and communicating transactions so that users can decide."),
        ("WHO READS IT", "owners want profit; lenders want repayment; government wants tax; employees want security."),
        ("THE CONCEPTS", "going concern, accruals, consistency, prudence, realisation, materiality, business entity, money measurement."),
        ("THE BRANCHES", "financial (outsiders, historical), cost (product cost), management (decisions), audit and tax."),
    ])


def recap_ch02() -> None:
    recap_card("recap_ch02", "Chapter 2 in one card", [
        ("THE EQUATION", "assets = liabilities + capital, and expanded: assets = liabilities + capital + profit − drawings."),
        ("DOUBLE ENTRY", "every transaction has two effects; debits equal credits; DEAD CLIC gives the direction."),
        ("THE ACCOUNTS", "assets and expenses are debited to increase; liabilities, capital and income are credited to increase."),
        ("THE TEST", "after every posting, the accounting equation must still hold — that is the whole check."),
    ])


def recap_ch03() -> None:
    recap_card("recap_ch03", "Chapter 3 in one card", [
        ("THE DOCUMENTS", "invoice, receipt, cheque stub, debit note, credit note — each is evidence of one transaction."),
        ("THE JOURNALS", "sales, purchases, returns inwards, returns outwards and the general journal."),
        ("THE LEDGER", "each account on its own page: debits on the left, credits on the right, balance carried down."),
        ("THE TRIAL BALANCE", "a list of balances that proves the debits equal the credits — and proves nothing more."),
    ])


def recap_ch04() -> None:
    recap_card("recap_ch04", "Chapter 4 in one card", [
        ("CONTROL ACCOUNTS", "the sales and purchases ledger control accounts summarise the personal ledgers and must agree with them."),
        ("WHY THEY DIFFER", "missing postings, double postings, wrong side, wrong ledger — the difference narrows the search."),
        ("RECONCILIATION", "statement balance + lodgements not credited − unpresented cheques = cash book balance."),
        ("THE DISCIPLINE", "adjust the cash book for bank charges and interest first, then reconcile; never plug the difference."),
    ])


def recap_ch05() -> None:
    recap_card("recap_ch05", "Chapter 5 in one card", [
        ("TRADING ACCOUNT", "sales − (opening stock + purchases − closing stock) = gross profit."),
        ("PROFIT AND LOSS", "gross profit + other income − expenses = net profit, after depreciation and bad debts."),
        ("BALANCE SHEET", "fixed assets + current assets = capital + liabilities, and it must balance to the naira."),
        ("ADJUSTMENTS", "accruals and prepayments move a cost into the right period; depreciation spreads a fixed asset over its life."),
    ])


def recap_ch06() -> None:
    recap_card("recap_ch06", "Chapter 6 in one card", [
        ("THE SIX ERRORS", "omission, commission, principle, original entry, compensating, transposition."),
        ("WHICH ARE CAUGHT", "only one-sided errors — a single wrong amount, a single wrong side — disturb the trial balance."),
        ("THE SUSPENSE ACCOUNT", "holds the difference until each error is corrected; it must end at nil."),
        ("THE HABIT", "journalise every correction with a narration, so that the reason survives the correction."),
    ])


def recap_ch07() -> None:
    recap_card("recap_ch07", "Chapter 7 in one card", [
        ("THE DEED", "settles capital, profit ratio, salaries, interest on capital and drawings, and admission."),
        ("WITHOUT A DEED", "profits and losses equally; no interest, no salary."),
        ("TWO ACCOUNTS", "capital is the stake; current is the running account of salary, interest, profit and drawings."),
        ("ADMISSION", "revalue first, then admit: the new partner must not share in past profit."),
    ])


def recap_ch08() -> None:
    recap_card("recap_ch08", "Chapter 8 in one card", [
        ("SHARES", "ordinary — variable dividend and a vote; preference — fixed dividend, priority, usually no vote."),
        ("DEBENTURES", "a loan: fixed interest, a charge on profit, no vote, repaid before shareholders on winding up."),
        ("APPROPRIATION", "profit after tax − reserves − preference dividend − ordinary dividend = retained."),
        ("THE RULE", "dividends come out of distributable profit; capital is not income."),
    ])


FIGURES = ["ch05_final", "ch06_errors", "ch07_partnership", "ch08_company",
           "recap_ch01", "recap_ch02", "recap_ch03", "recap_ch04",
           "recap_ch05", "recap_ch06", "recap_ch07", "recap_ch08"]
