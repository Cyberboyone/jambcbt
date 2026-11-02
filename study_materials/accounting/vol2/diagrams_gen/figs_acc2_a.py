"""Financial Accounting Volume 2 — figures, part A (cover, chapters 1–4)."""

from __future__ import annotations

from common import (GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED,
                    BORDER, AMBER, BLUE, PURPLE, RED, t, lines, rect, arrow, line,
                    card, svg, write_svg, banner, recap_card)

W = 760


def cover_banner() -> None:
    banner(
        "cover_banner",
        "FINANCIAL ACCOUNTING — Costing, Budgets and Incomplete Records",
        [("THE FACTORY\nmanufacturing\naccounts", GREEN),
         ("THE COST\nmaterials, labour\nand overheads", BLUE),
         ("THE DECISION\nmarginal costing\nand break-even", PURPLE),
         ("THE RECORDS\nbudgets, incomplete\nrecords, public funds", AMBER)],
        "Eight chapters on the accounts a business keeps when it makes things, plans ahead, and has lost half its books.",
    )


def ch01_manufacturing() -> None:
    """The manufacturing account, from raw material to finished goods."""
    b = [t(380, 22, "The manufacturing account: how cost climbs from material to finished goods", size=12.4, weight="bold")]

    b += [rect(10, 40, 740, 70, "#FFFFFF", GREEN, 8, 1.4),
          f'<rect x="10" y="40" width="740" height="5" rx="2.5" fill="{GREEN}"/>',
          t(380, 64, "PRIME COST = direct materials + direct labour + direct expenses", size=10.2, weight="bold", fill=GREEN),
          t(380, 84, "the three costs that go into the product itself, and can be traced to it", size=9.0),
          t(380, 100, "PRODUCTION COST = prime cost + factory overhead + work in progress adjustment", size=9.4, weight="bold", fill=NAVY)]

    # three ingredient cards
    ing = [("DIRECT MATERIALS", "opening stock + purchases\n+ carriage inwards\n− closing stock", GREEN),
           ("DIRECT LABOUR", "the wages of the hands\nthat make the product\n(not the supervisor)", BLUE),
           ("DIRECT EXPENSES", "royalty, hire of a special\nmachine, subcontracted\nwork on the product", AMBER)]
    for i, (h, body, col) in enumerate(ing):
        x = 10 + i * 250
        b += [rect(x, 122, 240, 92, "#FFFFFF", col, 7, 1.4),
              f'<rect x="{x}" y="122" width="240" height="5" rx="2.5" fill="{col}"/>',
              t(x + 120, 146, h, size=9.6, weight="bold", fill=col)]
        for j, ln in enumerate(body.split("\n")):
            b.append(t(x + 120, 166 + j * 14, ln, size=8.8))

    # factory overhead and work in progress sit beneath the three ingredients
    b += [line(10, 226, 750, 226, BORDER, 1.0, dash="3 3")]
    b += [rect(10, 240, 360, 96, "#FFFFFF", NAVY, 7, 1.4),
          f'<rect x="10" y="240" width="360" height="5" rx="2.5" fill="{NAVY}"/>',
          t(190, 264, "FACTORY OVERHEAD", size=9.6, weight="bold", fill=NAVY),
          t(190, 284, "rent, rates, depreciation and insurance of the factory", size=8.8),
          t(190, 300, "factory manager, storekeeper, foreman, factory power", size=8.8),
          t(190, 316, "indirect material: oil, nails, cleaning cloth", size=8.8)]

    b += [rect(390, 240, 360, 96, "#FFFFFF", AMBER, 7, 1.4),
          f'<rect x="390" y="240" width="360" height="5" rx="2.5" fill="{AMBER}"/>',
          t(570, 264, "WORK IN PROGRESS", size=9.6, weight="bold", fill=AMBER),
          t(570, 284, "add the opening figure, deduct the closing figure", size=8.8),
          t(570, 300, "the goods half-made at the year end are not yet cost", size=8.8),
          t(570, 316, "of the finished output, so they are carried forward", size=8.8)]

    b += [rect(10, 350, 740, 46, GREEN_LIGHT, GREEN, 8, 1.4),
          t(380, 370, "COST OF PRODUCTION  →  add opening finished goods  →  deduct closing finished goods  →  COST OF GOODS SOLD", size=9.2, weight="bold", fill=GREEN),
          t(380, 387, "the trading account of a manufacturer therefore begins with the cost of goods sold, not with purchases", size=8.8)]

    write_svg("ch01_manufacturing", svg(W, 408, "\n".join(b)))


def ch02_elements() -> None:
    """The three elements of cost and the stock records that support them."""
    b = [t(380, 22, "The three elements of cost, and the records that keep them honest", size=12.4, weight="bold")]

    cols = [("MATERIALS", GREEN,
             ["purchase requisition", "purchase order", "goods received note", "stores requisition",
              "bin card and stores ledger", "FIFO, LIFO or weighted average"]),
            ("LABOUR", BLUE,
             ["clock card", "time book", "job card", "piece-work ticket",
              "payroll and payslip", "idle time, overtime, bonus"]),
            ("OVERHEADS", PURPLE,
             ["rent, rates, insurance", "depreciation of plant", "supervision and stores",
              "apportioned to departments", "reapportioned to cost centres", "absorbed by a rate"])]

    for i, (h, col, items) in enumerate(cols):
        x = 10 + i * 250
        b += [rect(x, 40, 240, 214, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="40" width="240" height="6" rx="3" fill="{col}"/>',
              t(x + 120, 66, h, size=10.4, weight="bold", fill=col)]
        for j, s in enumerate(items):
            b += [t(x + 22, 92 + j * 26, f"{j + 1}", size=8.4, fill=col, anchor="start", weight="bold"),
                  t(x + 34, 92 + j * 26, s, size=8.9, anchor="start")]

    b += [rect(10, 266, 740, 74, "#FFFFFF", NAVY, 8, 1.4),
          f'<rect x="10" y="266" width="740" height="5" rx="2.5" fill="{NAVY}"/>',
          t(380, 290, "THE ABSORPTION RATE", size=9.8, weight="bold", fill=NAVY),
          t(380, 310, "overhead absorption rate = budgeted overhead ÷ budgeted basis (labour hours, machine hours, or direct wages)", size=9.0),
          t(380, 328, "applied overhead = the rate × the actual hours worked, and the difference from the actual spend is over- or under-absorption", size=8.9)]

    b += [rect(10, 352, 740, 54, GREEN_LIGHT, GREEN, 8, 1.4),
          t(380, 373, "STOCK IS COUNTED, NOT ASSUMED", size=9.4, weight="bold", fill=GREEN),
          t(380, 392, "perpetual records show what should be there; a physical count shows what is. The gap is the stock loss, and it is written off.", size=8.9)]

    write_svg("ch02_elements", svg(W, 416, "\n".join(b)))


def ch03_costing() -> None:
    """Job, batch and process costing on one page."""
    b = [t(380, 22, "Three costing methods, and the one question that chooses between them", size=12.4, weight="bold")]
    b += [t(380, 44, "Is the product made to order, made in groups, or made continuously through a process?", size=9.4, fill=MUTED)]

    cards = [("JOB COSTING", GREEN, ["one job, one cost card", "the customer's order is the unit", "printing, building, repairs",
                                     "cost per job = all costs on the card"]),
             ("BATCH COSTING", BLUE, ["a group of identical units", "cost per batch ÷ units in batch", "bakery, paint, furniture runs",
                                      "the batch is the cost centre"]),
             ("PROCESS COSTING", PURPLE, ["continuous production", "cost per process, then per unit", "oil, cement, sugar, chemicals",
                                          "normal loss and scrap reduce the units"])]

    for i, (h, col, items) in enumerate(cards):
        x = 10 + i * 250
        b += [rect(x, 62, 240, 158, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="62" width="240" height="6" rx="3" fill="{col}"/>',
              t(x + 120, 88, h, size=10.2, weight="bold", fill=col)]
        for j, s in enumerate(items):
            b.append(t(x + 120, 112 + j * 26, s, size=8.8))

    # process account diagram
    b += [t(380, 246, "THE PROCESS ACCOUNT, AND NORMAL LOSS", size=9.8, weight="bold", fill=NAVY)]
    b += [rect(24, 262, 186, 76, "#FFFFFF", GREEN, 7, 1.3),
          t(117, 284, "INPUT", size=9.2, weight="bold", fill=GREEN),
          t(117, 302, "1,000 units", size=9.0),
          t(117, 318, "cost ₦5,000", size=9.0)]
    b += [arrow(214, 300, 268, 300, NAVY, 1.8, "an")]
    b += [rect(272, 262, 216, 76, "#FFFFFF", PURPLE, 7, 1.3),
          t(380, 284, "PROCESS ACCOUNT", size=9.2, weight="bold", fill=PURPLE),
          t(380, 302, "normal loss 10% = 100 units", size=8.8),
          t(380, 318, "scrap value ₦200", size=8.8)]
    b += [arrow(492, 300, 546, 300, NAVY, 1.8, "an")]
    b += [rect(550, 262, 186, 76, "#FFFFFF", AMBER, 7, 1.3),
          t(643, 284, "OUTPUT", size=9.2, weight="bold", fill=AMBER),
          t(643, 302, "900 units", size=9.0),
          t(643, 318, "cost per unit = 4,800 ÷ 900", size=8.8)]

    b += [rect(10, 350, 740, 62, GREEN_LIGHT, GREEN, 8, 1.4),
          t(380, 371, "cost per unit = (total process cost − scrap value of normal loss) ÷ expected output", size=9.4, weight="bold", fill=GREEN),
          t(380, 392, "an abnormal loss is written off to the profit and loss account; an abnormal gain is credited to it — the process account never hides either.", size=8.7)]

    write_svg("ch03_costing", svg(W, 422, "\n".join(b)))


def ch04_marginal() -> None:
    """Break-even chart with the margin of safety shaded (matplotlib)."""
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
    from common import declutter

    fig, ax = plt.subplots(figsize=(6.5, 3.5), dpi=200)
    units = [0, 2000]
    price = 60
    var = 25
    fixed = 42000

    sales = [price * u for u in units]
    total = [fixed + var * u for u in units]
    ax.plot(units, sales, color=GREEN, lw=2.2, label="sales revenue")
    ax.plot(units, total, color=RED, lw=2.2, label="total cost")
    ax.axhline(fixed, color=BLUE, lw=1.5, ls="--", label="fixed cost")

    bep = fixed / (price - var)
    ax.plot([bep], [price * bep], "o", color=NAVY, ms=5, zorder=5)
    ax.annotate(f"break-even\n{bep:,.0f} units\n₦{price * bep:,.0f}",
                xy=(bep, price * bep), xytext=(bep - 700, price * bep + 34000),
                fontsize=8.4, color=NAVY, weight="bold",
                arrowprops=dict(arrowstyle="-", color=MUTED, lw=0.8))

    ax.fill_between([bep, 2000], [price * bep, price * 2000], [fixed + var * bep, fixed + var * 2000],
                    color=GREEN_LIGHT, alpha=0.75, zorder=0)
    ax.annotate("margin of safety", xy=(1650, (price * 1650 + fixed + var * 1650) / 2),
                fontsize=8.2, color=GREEN, weight="bold", ha="center")
    ax.annotate("profit", xy=(1750, price * 1750 + 12000), fontsize=8.2, color=GREEN, ha="center")
    ax.annotate("loss", xy=(800, fixed + var * 800 - 22000), fontsize=8.2, color=RED, ha="center")

    ax.set_xlim(0, 2000)
    ax.set_ylim(0, 130000)
    ax.set_xlabel("units sold", fontsize=8.6)
    ax.set_ylabel("₦", fontsize=8.6)
    ax.tick_params(labelsize=7.6)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(True, color="#EEF2F6", lw=0.7)
    ax.legend(loc="upper left", fontsize=7.6, frameon=False)
    ax.set_title("Break-even: where the sales line crosses the total-cost line", fontsize=9.6, color=NAVY, weight="bold")
    declutter(fig)
    fig.tight_layout(pad=0.4)
    fig.savefig("../diagrams/ch04_marginal.svg", format="svg", bbox_inches="tight", transparent=False, facecolor="white")
    plt.close(fig)


FIGURES = ["cover_banner", "ch01_manufacturing", "ch02_elements", "ch03_costing", "ch04_marginal"]
