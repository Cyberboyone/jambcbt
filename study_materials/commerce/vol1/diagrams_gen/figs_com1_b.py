"""Commerce Volume 1 — figures, part B (chapters 5–8, recap cards)."""

from __future__ import annotations

from common import (GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED,
                    BORDER, AMBER, BLUE, PURPLE, RED, t, lines, rect, arrow, line,
                    card, svg, write_svg, banner, recap_card)

W = 760


def ch05_foreign() -> None:
    """Visible and invisible trade, and the two balances that are constantly confused."""
    b = [t(380, 22, "Foreign trade, and the two balances", size=12.4, weight="bold")]
    b += [rect(10, 40, 366, 74, "#FFFFFF", GREEN, 8, 1.4),
          f'<rect x="10" y="40" width="366" height="5" rx="2.5" fill="{GREEN}"/>',
          t(193, 64, "VISIBLE TRADE", size=10.2, weight="bold", fill=GREEN),
          t(193, 84, "goods you can see and touch: cocoa, oil, machines", size=9.0),
          t(193, 102, "recorded in the balance of trade", size=9.0)]
    b += [rect(384, 40, 366, 74, "#FFFFFF", BLUE, 8, 1.4),
          f'<rect x="384" y="40" width="366" height="5" rx="2.5" fill="{BLUE}"/>',
          t(567, 64, "INVISIBLE TRADE", size=10.2, weight="bold", fill=BLUE),
          t(567, 84, "services: shipping, insurance, tourism, remittances", size=9.0),
          t(567, 102, "recorded in the balance of payments", size=9.0)]
    b += [rect(10, 128, 742, 108, "#FFFFFF", PURPLE, 8, 1.4),
          f'<rect x="10" y="128" width="742" height="5" rx="2.5" fill="{PURPLE}"/>',
          t(380, 152, "BALANCE OF PAYMENTS = CURRENT ACCOUNT + CAPITAL ACCOUNT + FINANCIAL ACCOUNT", size=9.8, weight="bold", fill=PURPLE),
          t(380, 176, "Current account: visible trade + invisible trade + transfers", size=9.2),
          t(380, 196, "Capital account: capital transfers and the acquisition of non-produced assets", size=9.2),
          t(380, 216, "Financial account: direct investment, portfolio investment, reserves", size=9.2)]
    b += [t(380, 258, "Balance of trade = visible exports − visible imports. Balance of payments = every credit minus every debit, and it must, in the end, balance.", size=9.0, fill=MUTED)]
    write_svg("ch05_foreign", svg(W, 272, "\n".join(b)))


def ch06_aids() -> None:
    """Six aids to trade, each with the problem it solves."""
    b = [t(380, 22, "The aids to trade: six problems, six services", size=12.4, weight="bold")]
    aids = [("BANKING", "the gap between paying\nand being paid", GREEN),
            ("INSURANCE", "the risk of loss in\ntransit or at sea", BLUE),
            ("TRANSPORT", "the distance between\nmaker and market", PURPLE),
            ("WAREHOUSING", "the gap between harvest\nand demand", AMBER),
            ("ADVERTISING", "the buyer does not\nknow the goods exist", RED),
            ("COMMUNICATION", "the parties cannot\nagree in person", GREEN_BRIGHT)]
    bw, bh = 244, 78
    for i, (head, body, col) in enumerate(aids):
        r, c = divmod(i, 3)
        x = 8 + c * (bw + 6)
        y = 40 + r * (bh + 8)
        b += [rect(x, y, bw, bh, "#FFFFFF", col, 8, 1.4),
              f'<rect x="{x}" y="{y}" width="{bw}" height="5" rx="2.5" fill="{col}"/>',
              t(x + bw / 2, y + 26, head, size=10.0, weight="bold", fill=col)]
        for k, ln in enumerate(body.split("\n")):
            b.append(t(x + bw / 2, y + 46 + k * 13, ln, size=8.8, fill=SLATE))
    b.append(t(380, 224, "Each aid exists because trade would otherwise stop at that point. If you can name the problem, you can name the aid.", size=9.0, fill=MUTED))
    write_svg("ch06_aids", svg(W, 236, "\n".join(b)))


def ch07_finance() -> None:
    """Sources of finance by term, with the cost of each."""
    b = [t(380, 22, "Sources of finance, by how long you need the money", size=12.4, weight="bold")]
    lanes = [("SHORT TERM", "under one year", "trade credit · bank overdraft · factoring · bills of exchange", GREEN),
             ("MEDIUM TERM", "one to five years", "bank loan · hire purchase · leasing · retained profit", BLUE),
             ("LONG TERM", "over five years", "share capital · debentures · mortgage · venture capital", PURPLE)]
    y = 44
    for head, note, items, col in lanes:
        b += [rect(10, y, 742, 62, "#FFFFFF", col, 8, 1.4),
              f'<rect x="10" y="{y}" width="5" height="62" rx="2.5" fill="{col}"/>',
              t(26, y + 22, head, size=10.0, weight="bold", fill=col, anchor="start"),
              t(120, y + 22, note, size=8.8, fill=MUTED, anchor="start"),
              t(26, y + 44, items, size=9.2, fill=SLATE, anchor="start")]
        y += 70
    b += [rect(10, y, 742, 66, GREEN_LIGHT, GREEN, 8, 1.2),
          t(380, y + 24, "THE TEST THE PAPER USES", size=9.6, weight="bold", fill=GREEN),
          t(380, y + 44, "A debenture is a loan and carries a fixed rate; a share is ownership and carries a dividend that may be nothing at all.", size=9.0)]
    write_svg("ch07_finance", svg(W, y + 82, "\n".join(b)))


def ch08_regulation() -> None:
    """Government and business: the four instruments and the agencies."""
    b = [t(380, 22, "How government touches business", size=12.4, weight="bold")]
    tools = [("REGULATION", "licences, standards,\nprice control", GREEN),
             ("TAXATION", "company tax, VAT,\ncustoms duty", BLUE),
             ("PROVISION", "public corporations\nand utilities", PURPLE),
             ("PROTECTION", "tariffs, quotas,\nconsumer agencies", AMBER)]
    bw = 182
    for i, (head, body, col) in enumerate(tools):
        x = 8 + i * (bw + 6)
        b += [rect(x, 40, bw, 76, "#FFFFFF", col, 8, 1.4),
              f'<rect x="{x}" y="40" width="{bw}" height="5" rx="2.5" fill="{col}"/>',
              t(x + bw / 2, 64, head, size=9.8, weight="bold", fill=col)]
        for k, ln in enumerate(body.split("\n")):
            b.append(t(x + bw / 2, 84 + k * 13, ln, size=8.6, fill=SLATE))
    b += [t(380, 142, "AND THE AGENCIES THE QUESTIONS NAME", size=9.4, weight="bold", fill=NAVY)]
    ag = [("SON", "standards"), ("NAFDAC", "food and drugs"), ("CAC", "companies"),
          ("FCCPC", "competition and consumer"), ("CBN", "money and banks"), ("NIPC", "promotion of investment")]
    for i, (name, role) in enumerate(ag):
        r, c = divmod(i, 3)
        x = 10 + c * 250
        y = 158 + r * 40
        b += [rect(x, y, 242, 32, "#FFFFFF", BORDER, 6, 1.1),
              t(x + 12, y + 21, name, size=9.6, weight="bold", fill=GREEN, anchor="start"),
              t(x + 74, y + 21, role, size=8.6, fill=SLATE, anchor="start")]
    b.append(t(380, 256, "Every one of these is an *instrument* of policy as well as an institution: the question usually asks which instrument a given action belongs to.", size=9.0, fill=MUTED))
    write_svg("ch08_regulation", svg(W, 270, "\n".join(b)))


def recap_ch01() -> None:
    recap_card("recap_ch01", "Chapter 1 — The Scope of Commerce", [
        ("Definition", "Commerce is trade plus the aids to trade: everything between production and consumption."),
        ("Branches", "Trade (home and foreign) and aids (banking, insurance, transport, warehousing, advertising, communication)."),
        ("Production", "Primary (extractive), secondary (manufacturing), tertiary (services). Only primary creates raw material."),
        ("Occupations", "Industrial occupations make goods; commercial occupations move and sell them; services serve both."),
        ("Chain", "Producer to wholesaler to retailer to consumer, each link removing place, time, quantity or assortment gaps."),
        ("Trap", "Commerce is not the same as trade: trade is buying and selling, commerce includes the services that make it possible."),
    ])


def recap_ch02() -> None:
    recap_card("recap_ch02", "Chapter 2 — Sole Trader, Partnership and Cooperative", [
        ("Sole trader", "One owner, unlimited liability, all profit, all risk, simplest to form and hardest to expand."),
        ("Partnership", "Two to twenty, deed governs capital, profit and control; liability is joint and several."),
        ("Limited partner", "Contributes capital, takes no part in management, liability limited to that capital."),
        ("Cooperative", "Owned by members, one member one vote, profit shared as dividend on patronage, service not profit."),
        ("Registration", "Sole traders and partnerships register a business name; cooperatives register under the cooperative law."),
        ("Trap", "A sleeping partner is still a partner: unlimited liability does not sleep."),
    ])


def recap_ch03() -> None:
    recap_card("recap_ch03", "Chapter 3 — Companies and Public Enterprise", [
        ("Company", "A separate legal person, owned by shareholders, managed by directors, liable for its own debts."),
        ("Private Ltd", "Two to fifty members, shares not offered to the public, transfer restricted."),
        ("Public Plc", "Minimum two members with no maximum, prospectus, shares freely transferable, may be quoted."),
        ("Documents", "Memorandum (outside relations), articles (internal rules), certificate of incorporation, prospectus."),
        ("Public corporation", "Created by statute for a public service, funded by government, accountable to the ministry."),
        ("Trap", "Shareholders own the company but do not own its assets; the company owns them."),
    ])


def recap_ch04() -> None:
    recap_card("recap_ch04", "Chapter 4 — Home Trade", [
        ("Retailer", "Sells to the final consumer, breaks bulk, offers choice, credit and after-sales service."),
        ("Wholesaler", "Buys in bulk from producers and sells in smaller lots, stores, grades, finances and advises."),
        ("Large-scale retail", "Department store (many departments), multiple shop (one owner, many branches), supermarket, mail order."),
        ("Channel choice", "Perishables and industrial goods use short channels; small producers and small shops use long ones."),
        ("Middlemen", "The question asks what a middleman *adds*: time, place and quantity utility, and credit."),
        ("Trap", "A multiple shop is not a department store: many branches under one roof versus many departments under one roof."),
    ])


def recap_ch05() -> None:
    recap_card("recap_ch05", "Chapter 5 — Foreign Trade", [
        ("Visible trade", "Goods, recorded in the balance of trade; invisible trade is services, recorded in the balance of payments."),
        ("Balance of trade", "Visible exports minus visible imports — a goods figure, and it can be in deficit while the payments balance is not."),
        ("Terms of trade", "The ratio of export prices to import prices; a fall means exports buy less."),
        ("Restrictions", "Tariff (a tax), quota (a quantity), embargo (a ban), licence, subsidy, exchange control."),
        ("Documents", "Indent, proforma invoice, bill of lading, certificate of origin, bill of exchange, letter of credit."),
        ("Trap", "A quota limits quantity; a tariff raises price. The paper swaps the two every year."),
    ])


def recap_ch06() -> None:
    recap_card("recap_ch06", "Chapter 6 — Aids to Trade", [
        ("Banking", "Current, savings and fixed deposit accounts; cheques, overdrafts, loans, transfers, safe custody."),
        ("Insurance", "Pooling risk: insurable interest, utmost good faith, indemnity, subrogation, contribution, proximate cause."),
        ("Transport", "Moves goods and people; road, rail, sea, air and pipeline, each with a cost and a cargo."),
        ("Warehousing", "Bonded, state and private; creates time utility and stabilises price."),
        ("Advertising", "Informs, persuades and reminds; the media are press, broadcast, outdoor, direct and digital."),
        ("Trap", "Insurance is not a gamble: it indemnifies a loss the insured has an interest in, and never profits from it."),
    ])


def recap_ch07() -> None:
    recap_card("recap_ch07", "Chapter 7 — Business Finance and Documents", [
        ("Short term", "Trade credit, overdraft, factoring, bills of exchange — for working capital."),
        ("Long term", "Shares, debentures, mortgage, retained profit — for assets that will last."),
        ("Share capital", "Ordinary shares carry the vote and the last claim; preference shares carry a fixed dividend first."),
        ("Documents", "Order, invoice, credit note, debit note, statement of account, receipt, consignment note, bill of lading."),
        ("Discounts", "Trade discount is deducted on the invoice; cash discount is for early payment and is not on the invoice."),
        ("Trap", "A credit note is issued by the seller; a debit note by the buyer. Reversing them is the commonest error in the chapter."),
    ])


def recap_ch08() -> None:
    recap_card("recap_ch08", "Chapter 8 — Government, the Consumer and Business Ethics", [
        ("Instruments", "Regulation, taxation, provision and protection — four ways government changes what business does."),
        ("Public enterprise", "Set up by statute for a service the market would not supply at a fair price; funded by government."),
        ("Consumer protection", "FCCPC, SON, NAFDAC, weights and measures, consumer associations and the courts."),
        ("Rights", "Safety, information, choice, redress, representation and a healthy environment."),
        ("Ethics", "Honesty in advertising, fair dealing, environmental care, and the social responsibility of the firm."),
        ("Trap", "Social responsibility is not charity: it is the firm accepting the costs its activity imposes on others."),
    ])


FIGURES = ["ch05_foreign", "ch06_aids", "ch07_finance", "ch08_regulation",
           "recap_ch01", "recap_ch02", "recap_ch03", "recap_ch04",
           "recap_ch05", "recap_ch06", "recap_ch07", "recap_ch08"]
