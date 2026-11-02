"""Financial Accounting Volume 2 — figures, part B (chapters 5–8 and the recap cards)."""

from __future__ import annotations

from common import (GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED,
                    BORDER, AMBER, BLUE, PURPLE, RED, t, lines, rect, arrow, line,
                    card, svg, write_svg, banner, recap_card)

W = 760


def ch05_budget() -> None:
    """The budget hierarchy and the cash budget's three sections."""
    b = [t(380, 22, "The master budget: one plan, four schedules, and a cash budget that can stop it", size=12.2, weight="bold")]

    # hierarchy
    b += [rect(210, 40, 340, 44, GREEN_LIGHT, GREEN, 8, 1.5),
          t(380, 60, "SALES BUDGET", size=10.0, weight="bold", fill=GREEN),
          t(380, 76, "the plan every other budget is built on", size=8.6)]

    row = [("PRODUCTION BUDGET", "units to make\n= sales + closing stock\n− opening stock", BLUE),
           ("MATERIALS BUDGET", "usage + closing\nstock − opening\nstock, in units and ₦", PURPLE),
           ("LABOUR BUDGET", "hours × rate,\nby department\nand by month", AMBER)]
    for i, (h, body, col) in enumerate(row):
        x = 20 + i * 247
        b += [arrow(380, 84, x + 110, 108, col, 1.3, "an", dash="3 2")]
        b += [rect(x, 110, 220, 82, "#FFFFFF", col, 7, 1.3),
              f'<rect x="{x}" y="110" width="220" height="5" rx="2.5" fill="{col}"/>',
              t(x + 110, 132, h, size=9.2, weight="bold", fill=col)]
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 110, 150 + j * 13, ln, size=8.4))

    b += [rect(20, 202, 720, 50, "#FFFFFF", NAVY, 8, 1.4),
          f'<rect x="20" y="202" width="720" height="5" rx="2.5" fill="{NAVY}"/>',
          t(380, 226, "OVERHEAD BUDGET  +  the three above  =  the budgeted cost of production and the budgeted profit", size=9.2, weight="bold", fill=NAVY),
          t(380, 243, "and beside them all, the cash budget — because a profitable plan can still run out of money in March", size=8.7)]

    # cash budget box
    b += [rect(10, 266, 740, 128, "#FFFFFF", GREEN, 8, 1.4),
          f'<rect x="10" y="266" width="740" height="5" rx="2.5" fill="{GREEN}"/>',
          t(380, 288, "THE CASH BUDGET, IN THREE SECTIONS", size=9.6, weight="bold", fill=GREEN)]

    thirds = [("RECEIPTS", ["cash sales", "debtors, by the month they pay", "loans, asset sales"], GREEN),
              ("PAYMENTS", ["creditors, by the month they are paid", "wages, rent, rates", "tax, dividends, capital spending"], RED),
              ("BALANCE", ["opening balance + receipts − payments", "= closing balance", "a negative closing balance is a decision, not a surprise"], BLUE)]
    for i, (h, items, col) in enumerate(thirds):
        x = 22 + i * 246
        b += [t(x + 110, 312, h, size=9.0, weight="bold", fill=col)]
        for j, s in enumerate(items):
            b.append(t(x + 110, 330 + j * 16, s, size=8.4))
        if i < 2:
            b.append(t(x + 222, 346, "→", size=10, fill=BORDER))

    b += [rect(10, 404, 740, 46, "#FFF7ED", AMBER, 8, 1.3),
          t(380, 425, "A CASH BUDGET IS NOT A PROFIT BUDGET", size=9.2, weight="bold", fill=AMBER),
          t(380, 442, "credit sales are profit the month they are made and cash the month they are paid; depreciation is a cost with no cash at all", size=8.5)]

    write_svg("ch05_budget", svg(W, 462, "\n".join(b)))


def ch06_incomplete() -> None:
    """Two routes through incomplete records."""
    b = [t(380, 22, "Incomplete records: two routes to the same profit", size=12.4, weight="bold")]
    b += [t(380, 44, "When the ledger is lost or never kept, the figures come from the cash book, the bank statement and a list of what is owed.", size=9.0, fill=MUTED)]

    # left route
    b += [rect(10, 62, 362, 210, "#FFFFFF", GREEN, 8, 1.5),
          f'<rect x="10" y="62" width="362" height="6" rx="3" fill="{GREEN}"/>',
          t(191, 88, "ROUTE 1 — THE STATEMENT OF AFFAIRS", size=9.6, weight="bold", fill=GREEN)]
    steps = ["list the assets at the start and at the end",
             "list the liabilities at the start and at the end",
             "opening capital = assets − liabilities",
             "closing capital = assets − liabilities",
             "profit = closing capital + drawings − capital introduced − opening capital"]
    for i, s in enumerate(steps):
        b.append(t(191, 114 + i * 30, s, size=8.8))

    # right route
    b += [rect(388, 62, 362, 210, "#FFFFFF", BLUE, 8, 1.5),
          f'<rect x="388" y="62" width="362" height="6" rx="3" fill="{BLUE}"/>',
          t(569, 88, "ROUTE 2 — THE MARGIN METHOD", size=9.6, weight="bold", fill=BLUE)]
    steps2 = ["take the opening capital and the year's cash takings",
              "add the mark-up, or apply the margin, to find sales",
              "gross profit = sales × margin (or cost × mark-up)",
              "deduct the expenses actually paid and owing",
              "net profit = gross profit − expenses"]
    for i, s in enumerate(steps2):
        b.append(t(569, 114 + i * 30, s, size=8.8))

    b += [rect(10, 284, 740, 78, GREEN_LIGHT, GREEN, 8, 1.4),
          t(380, 306, "THE THREE FIGURES THAT ARE ALWAYS RECONSTRUCTED", size=9.4, weight="bold", fill=GREEN),
          t(380, 326, "SALES: from the cash book, the bank statement and the debtors' opening and closing balances", size=8.9),
          t(380, 342, "PURCHASES: from payments, creditors and stock, adjusted by carriage and returns", size=8.9),
          t(380, 358, "STOCK: from a physical count, and from the cost of sales the profit margin implies", size=8.9)]

    b += [t(380, 382, "Check one route against the other: a statement-of-affairs profit and a margin profit that disagree", size=8.7, fill=MUTED),
          t(380, 396, "are a missing drawing, a misread stock figure, or a sale that never reached the cash book.", size=8.7, fill=MUTED)]

    write_svg("ch06_incomplete", svg(W, 412, "\n".join(b)))


def ch07_partnership() -> None:
    """Admission, retirement and dissolution on one page."""
    b = [t(380, 22, "A change in the partnership: what is revalued, what is bought, and who bears the goodwill", size=12.0, weight="bold")]

    # three columns
    cols = [("ADMISSION", GREEN, ["a new partner buys a share",
                                  "assets are revalued; the gain goes to the old partners",
                                  "goodwill is raised or brought in cash",
                                  "the new partner's capital is recorded"]),
            ("RETIREMENT", BLUE, ["the retiring partner is paid his capital and current balance",
                                  "assets are revalued before he goes",
                                  "goodwill is credited to him, or bought by the rest",
                                  "the remaining partners share the new ratio"]),
            ("DISSOLUTION", PURPLE, ["every asset is sold, every liability paid",
                                     "the realisation account collects the proceeds",
                                     "outside creditors rank before partners' loans",
                                     "what is left is shared in the profit ratio"])]

    for i, (h, col, items) in enumerate(cols):
        x = 10 + i * 250
        b += [rect(x, 42, 240, 176, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="42" width="240" height="6" rx="3" fill="{col}"/>',
              t(x + 120, 68, h, size=10.2, weight="bold", fill=col)]
        for j, s in enumerate(items):
            b.append(t(x + 120, 92 + j * 32, s, size=8.4))

    # revaluation account
    b += [t(380, 240, "THE REVALUATION ACCOUNT, BEFORE ANYBODY MOVES", size=9.6, weight="bold", fill=NAVY)]
    b += [rect(110, 254, 250, 92, "#FFFFFF", GREEN, 7, 1.3),
          t(235, 274, "Dr — the losses", size=9.0, weight="bold", fill=GREEN),
          t(235, 292, "asset written down, e.g. stock 8,000 → 7,000", size=8.4),
          t(235, 308, "a liability discovered", size=8.4),
          t(235, 326, "the net loss is shared by the old partners", size=8.4)]
    b += [rect(400, 254, 250, 92, "#FFFFFF", AMBER, 7, 1.3),
          t(525, 274, "Cr — the gains", size=9.0, weight="bold", fill=AMBER),
          t(525, 292, "building written up, e.g. 20,000 → 26,000", size=8.4),
          t(525, 308, "a provision no longer needed", size=8.4),
          t(525, 326, "the net gain is shared by the old partners", size=8.4)]
    b += [t(380, 362, "the balance on the account is divided among the partners in the old ratio, and it is closed before the new partner is admitted", size=8.7, fill=MUTED)]

    b += [rect(10, 376, 740, 54, "#FEF2F2", RED, 8, 1.3),
          t(380, 398, "GOODWILL IS NEVER A FREE GIFT TO THE NEW PARTNER", size=9.2, weight="bold", fill=RED),
          t(380, 418, "he pays for the share of reputation he is buying, either into the firm or to the old partners' capital accounts", size=8.5)]

    write_svg("ch07_partnership", svg(W, 442, "\n".join(b)))


def ch08_public() -> None:
    """Public-sector funds, and the computerised accounting cycle."""
    b = [t(380, 22, "Public funds and computerised books: two systems with different questions", size=12.2, weight="bold")]

    b += [rect(10, 40, 362, 200, "#FFFFFF", GREEN, 8, 1.5),
          f'<rect x="10" y="40" width="362" height="6" rx="3" fill="{GREEN}"/>',
          t(191, 66, "PUBLIC-SECTOR ACCOUNTING", size=9.8, weight="bold", fill=GREEN)]
    rows = ["cash is voted by the legislature, and spent within the vote",
            "a vote account compares the approved estimate with the actual",
            "fund accounting: each fund is a separate set of books",
            "the statement of assets and liabilities stands in for the balance sheet",
            "the audit is by the Auditor-General, reporting to the legislature"]
    for i, s in enumerate(rows):
        b.append(t(191, 94 + i * 30, s, size=8.7))

    b += [rect(388, 40, 362, 200, "#FFFFFF", BLUE, 8, 1.5),
          f'<rect x="388" y="40" width="362" height="6" rx="3" fill="{BLUE}"/>',
          t(569, 66, "COMPUTERISED ACCOUNTING", size=9.8, weight="bold", fill=BLUE)]
    rows2 = ["documents are captured once, and posted by the software",
             "validation checks reject an entry with no double",
             "the audit trail records who entered what, and when",
             "back-ups and passwords are controls, not conveniences",
             "the trial balance is instant; the judgement is still human"]
    for i, s in enumerate(rows2):
        b.append(t(569, 94 + i * 30, s, size=8.7))

    b += [rect(10, 256, 740, 118, "#FFFFFF", NAVY, 8, 1.4),
          f'<rect x="10" y="256" width="740" height="5" rx="2.5" fill="{NAVY}"/>',
          t(380, 280, "THE CYCLE, WHICHEVER THE SYSTEM", size=9.6, weight="bold", fill=NAVY)]
    cyc = ["document", "book of original entry", "ledger", "trial balance", "adjustments", "statements"]
    for i, s in enumerate(cyc):
        x = 40 + i * 116
        b += [rect(x, 296, 104, 34, GREEN_LIGHT, GREEN, 6, 1.1),
              t(x + 52, 317, s, size=8.2, weight="bold", fill=GREEN)]
        if i < len(cyc) - 1:
            b.append(arrow(x + 104, 313, x + 114, 313, GREEN, 1.2, "ag"))
    b += [t(380, 352, "a computer does the first four faster and the last two not at all", size=8.7, fill=MUTED)]

    write_svg("ch08_public", svg(W, 388, "\n".join(b)))


# ── recap cards ─────────────────────────────────────────────────────────────
def recap_ch01() -> None:
    recap_card("recap_ch01", "Chapter 1 recap — manufacturing accounts", [
        ("Prime cost", "direct materials + direct labour + direct expenses; the three costs traced to the product."),
        ("Production cost", "prime cost + factory overhead + opening work in progress − closing work in progress."),
        ("Cost of goods sold", "cost of production + opening finished goods − closing finished goods."),
        ("The trap", "administration and selling costs are never factory overhead; they belong to the profit and loss account."),
    ])


def recap_ch02() -> None:
    recap_card("recap_ch02", "Chapter 2 recap — materials, labour and overheads", [
        ("Stock methods", "FIFO issues the oldest first; LIFO the newest; weighted average smooths the price."),
        ("Labour", "clock card records time; job card records the job; idle time and overtime are usually overhead."),
        ("Absorption", "rate = budgeted overhead ÷ budgeted basis; applied = rate × actual hours."),
        ("The trap", "over-absorption is credited to the profit and loss account, under-absorption is debited."),
    ])


def recap_ch03() -> None:
    recap_card("recap_ch03", "Chapter 3 recap — job, batch and process costing", [
        ("Job", "one cost card per order; cost per job is the whole card."),
        ("Batch", "cost the batch, then divide by the units in it."),
        ("Process", "cost per unit = (process cost − scrap of normal loss) ÷ expected output."),
        ("The trap", "normal loss is expected and absorbed; abnormal loss is written off separately."),
    ])


def recap_ch04() -> None:
    recap_card("recap_ch04", "Chapter 4 recap — marginal costing", [
        ("Contribution", "selling price − variable cost; it pays the fixed cost and then the profit."),
        ("Break-even", "fixed cost ÷ contribution per unit; in value, fixed cost ÷ contribution-to-sales ratio."),
        ("Margin of safety", "(actual sales − break-even sales) ÷ actual sales × 100."),
        ("The trap", "fixed cost per unit falls as output rises; it is not a variable cost."),
    ])


def recap_ch05() -> None:
    recap_card("recap_ch05", "Chapter 5 recap — budgeting", [
        ("Order", "sales budget first; production, materials, labour and overhead follow from it."),
        ("Production", "sales units + closing stock − opening stock."),
        ("Cash budget", "receipts less payments, plus the opening balance; it is not a profit budget."),
        ("The trap", "a credit sale enters the cash budget the month the debtor pays, not the month of sale."),
    ])


def recap_ch06() -> None:
    recap_card("recap_ch06", "Chapter 6 recap — incomplete records", [
        ("Statement of affairs", "capital = assets − liabilities, at the start and at the end."),
        ("Profit", "closing capital + drawings − capital introduced − opening capital."),
        ("Margin method", "sales from cash and debtors; profit from the margin the trader admits to."),
        ("The trap", "drawings are added back in the capital formula; capital introduced is deducted."),
    ])


def recap_ch07() -> None:
    recap_card("recap_ch07", "Chapter 7 recap — changes in a partnership", [
        ("Admission", "revalue, share the revaluation among the old partners, then record the new capital."),
        ("Retirement", "revalue first; the retiring partner is paid capital, current account and goodwill."),
        ("Dissolution", "realisation account collects proceeds and pays liabilities; outside creditors first."),
        ("The trap", "a partner's loan is repaid before capital, but after outside creditors."),
    ])


def recap_ch08() -> None:
    recap_card("recap_ch08", "Chapter 8 recap — public funds and computerised books", [
        ("Vote account", "approved estimate against actual expenditure, with the variance explained."),
        ("Funds", "each fund keeps its own books; the surplus of one cannot pay the debts of another."),
        ("Computer", "one entry posts twice; validation, audit trail, back-up and access control keep it honest."),
        ("The trap", "a computer generates no judgement: depreciation rates and provisions are still estimates."),
    ])


FIGURES = ["ch05_budget", "ch06_incomplete", "ch07_partnership", "ch08_public",
           "recap_ch01", "recap_ch02", "recap_ch03", "recap_ch04",
           "recap_ch05", "recap_ch06", "recap_ch07", "recap_ch08"]
