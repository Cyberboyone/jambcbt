"""Commerce Volume 2 — figures, part B (chapters 5–8 and the eight recap cards)."""

from __future__ import annotations

from common import (GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED,
                    BORDER, AMBER, BLUE, PURPLE, RED, t, lines, rect, arrow, line,
                    card, svg, write_svg, banner, recap_card)

W = 760


def ch05_advertising() -> None:
    """AIDA, and the media that carry each stage."""
    b = [t(380, 22, "Advertising works in four moves: attention, interest, desire, action", size=12.2, weight="bold")]
    stages = [("ATTENTION", "the medium that reaches", GREEN),
              ("INTEREST", "the claim that is relevant", BLUE),
              ("DESIRE", "the benefit that is wanted", PURPLE),
              ("ACTION", "the offer that is easy to take", AMBER)]
    bw = 172
    for i, (head, body, col) in enumerate(stages):
        x = 10 + i * (bw + 8)
        b += [rect(x, 40, bw, 66, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="40" width="{bw}" height="5" rx="2.5" fill="{col}"/>',
              t(x + bw / 2, 66, head, size=10.0, weight="bold", fill=col),
              t(x + bw / 2, 84, body, size=8.4, fill=SLATE),
              t(x + bw / 2, 98, "stage " + str(i + 1), size=7.6, fill=MUTED)]
        if i < 3:
            b += [arrow(x + bw + 1, 73, x + bw + 7, 73, MUTED, 1.4)]
    b += [t(380, 128, "THE MEDIA, AND WHAT EACH ONE IS GOOD AT", size=8.8, weight="bold", fill=NAVY)]
    media = [("NEWSPAPER", "detail, and a reader who is looking"), ("TELEVISION", "sight, sound and reach"),
             ("RADIO", "the local market, and the non-reader"), ("POSTER", "the passer-by, in one line"),
             ("INTERNET", "the buyer who searches, and the count of who clicked"), ("DIRECT MAIL", "the named customer")]
    for i, (head, body) in enumerate(media):
        r, c = divmod(i, 3)
        x = 10 + c * 250
        y = 140 + r * 52
        b += [rect(x, y, 240, 44, "#FFFFFF", GREEN, 6, 1.1),
              t(x + 12, y + 17, head, size=8.8, weight="bold", fill=GREEN, anchor="start"),
              t(x + 12, y + 32, body, size=8.0, fill=SLATE, anchor="start")]
    b += [t(380, 268, "Advertising informs and persuades; sales promotion adds a reason to act now. A paper that asks which is which is testing the difference between the two.", size=8.8, fill=MUTED)]
    write_svg("ch05_advertising", svg(W, 282, "\n".join(b)))


def ch06_marketing() -> None:
    """The four Ps, and the research that tells you what to put in them."""
    b = [t(380, 22, "The marketing mix, and the research behind it", size=12.4, weight="bold")]
    ps = [("PRODUCT", "the good, its quality, brand and pack", GREEN),
          ("PRICE", "what the market will pay, and the margin", BLUE),
          ("PLACE", "the channel from factory to buyer", PURPLE),
          ("PROMOTION", "advertising, selling and the offer", AMBER)]
    bw = 176
    for i, (head, body, col) in enumerate(ps):
        x = 10 + i * (bw + 6)
        b += [rect(x, 40, bw, 62, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="40" width="{bw}" height="5" rx="2.5" fill="{col}"/>',
              t(x + bw / 2, 66, head, size=10.2, weight="bold", fill=col),
              t(x + bw / 2, 88, body, size=8.2, fill=SLATE)]
    b += [rect(10, 116, 742, 96, "#FFFFFF", NAVY, 8, 1.2),
          t(380, 138, "MARKET RESEARCH: FIVE STEPS THAT ANSWER THE FOUR Ps", size=9.4, weight="bold", fill=NAVY)]
    steps = ["define the problem", "collect the data", "sort and tabulate", "analyse and interpret", "decide and act"]
    for i, s in enumerate(steps):
        x = 18 + i * 146
        b += [rect(x, 150, 134, 46, GREEN_LIGHT, GREEN_MID, 6, 1.0),
              t(x + 67, 168, "step " + str(i + 1), size=7.6, weight="bold", fill=GREEN),
              t(x + 67, 186, s, size=8.2, fill=SLATE)]
    b += [t(380, 238, "Primary data is collected for this problem; secondary data already exists and was gathered for another.", size=8.8, fill=MUTED),
          t(380, 252, "A questionnaire is a primary instrument; a published report is a secondary source.", size=8.8, fill=MUTED)]
    write_svg("ch06_marketing", svg(W, 266, "\n".join(b)))


def ch07_world() -> None:
    """Global bodies and regional groupings, and the one job each does."""
    b = [t(380, 22, "The organisations a Commerce paper expects you to place", size=12.4, weight="bold")]
    b += [t(190, 46, "GLOBAL", size=9.0, weight="bold", fill=BLUE),
          t(570, 46, "REGIONAL AND COMMODITY", size=9.0, weight="bold", fill=PURPLE)]
    glob = [("IMF", "short-term balance-of-payments support"),
            ("WORLD BANK", "long-term development loans"),
            ("WTO", "the rules of trade between nations"),
            ("UNCTAD", "trade and development, for the poorer nations")]
    reg = [("ECOWAS", "West African free trade and a common passport"),
           ("AFRICAN UNION", "continental political and economic union"),
           ("AfCFTA", "one African market for goods and services"),
           ("OPEC", "co-ordination of oil output and price")]
    for i, (head, body) in enumerate(glob):
        y = 58 + i * 46
        b += [rect(8, y, 364, 38, "#FFFFFF", BLUE, 6, 1.1),
              t(18, y + 16, head, size=8.8, weight="bold", fill=BLUE, anchor="start"),
              t(18, y + 30, body, size=8.0, fill=SLATE, anchor="start")]
    for i, (head, body) in enumerate(reg):
        y = 58 + i * 46
        b += [rect(388, y, 364, 38, "#FFFFFF", PURPLE, 6, 1.1),
              t(398, y + 16, head, size=8.8, weight="bold", fill=PURPLE, anchor="start"),
              t(398, y + 30, body, size=8.0, fill=SLATE, anchor="start")]
    b += [t(380, 252, "The IMF stabilises a balance of payments; the World Bank builds. Confusing the two is the commonest error in this section.", size=9.0, fill=MUTED)]
    write_svg("ch07_world", svg(W, 266, "\n".join(b)))


def ch08_ec() -> None:
    """E-commerce models, and the office that runs them."""
    b = [t(380, 22, "E-commerce: four models, one office, one set of risks", size=12.4, weight="bold")]
    models = [("B2C", "business to consumer", "a shop that is a website", GREEN),
              ("B2B", "business to business", "suppliers and buyers, on-line", BLUE),
              ("C2C", "consumer to consumer", "a marketplace between traders", PURPLE),
              ("C2B", "consumer to business", "a buyer names the price", AMBER)]
    bw = 176
    for i, (head, long, body, col) in enumerate(models):
        x = 10 + i * (bw + 6)
        b += [rect(x, 40, bw, 70, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="40" width="{bw}" height="5" rx="2.5" fill="{col}"/>',
              t(x + bw / 2, 64, head, size=11.0, weight="bold", fill=col),
              t(x + bw / 2, 82, long, size=7.8, fill=MUTED),
              t(x + bw / 2, 100, body, size=8.2, fill=SLATE)]
    b += [rect(10, 124, 366, 88, "#FFFFFF", GREEN, 8, 1.2),
          t(193, 146, "WHAT E-COMMERCE GIVES", size=9.2, weight="bold", fill=GREEN)]
    for i, s in enumerate(["a market with no closing time", "lower rent, wider reach", "a record of every order", "payment without cash"]):
        b += [t(24, 168 + i * 12, "•  " + s, size=8.4, fill=SLATE, anchor="start")]
    b += [rect(384, 124, 366, 88, "#FFFFFF", RED, 8, 1.2),
          t(567, 146, "WHAT IT COSTS", size=9.2, weight="bold", fill=RED)]
    for i, s in enumerate(["fraud and card crime", "delivery and returns", "the buyer who cannot touch the good", "data and privacy"]):
        b += [t(398, 168 + i * 12, "•  " + s, size=8.4, fill=SLATE, anchor="start")]
    b += [t(380, 234, "An entrepreneur spots the gap, takes the risk, and organises the factors of production to fill it. The office is where the record of that risk is kept.", size=8.8, fill=MUTED)]
    write_svg("ch08_ec", svg(W, 248, "\n".join(b)))


def recap_ch01() -> None:
    recap_card("recap_ch01", "Chapter 1 — Money and Its Work", [
        ("Barter", "Barter needs a double coincidence of wants, a common measure, a store of value and a standard for deferred payment. It fails at all four."),
        ("Functions", "Medium of exchange, measure of value, store of value, standard of deferred payment."),
        ("Qualities", "Acceptable, portable, divisible, durable, scarce, homogeneous, stable in value."),
        ("Types", "Commodity money, coin, paper (convertible and fiat), bank money, near money, electronic money."),
        ("Legal tender", "Coins and notes that a creditor must accept; bank deposits are money but not legal tender."),
        ("Trap", "A cheque is not money — it is an order to a bank to transfer money."),
    ])


def recap_ch02() -> None:
    recap_card("recap_ch02", "Chapter 2 — The Banking System", [
        ("Central bank", "Issues currency, banker to government, banker to the banks, lender of last resort, manages reserves and monetary policy."),
        ("Commercial bank", "Takes deposits, lends, transfers funds, honours cheques, and creates credit by lending what it holds."),
        ("Accounts", "Current (demand, no interest), savings (passbook, interest, withdrawal limits), fixed (term deposit, highest interest)."),
        ("Credit creation", "A deposit lent, redeposited and lent again multiplies the money supply: multiplier = 1 ÷ cash ratio."),
        ("Instruments", "Cheque, bank draft, credit transfer, standing order, direct debit, letter of credit."),
        ("Trap", "The central bank does not lend to the public; it lends to the banks and the government."),
    ])


def recap_ch03() -> None:
    recap_card("recap_ch03", "Chapter 3 — Insurance and Risk", [
        ("Pool", "Many pay a small certain premium; the few who suffer a large uncertain loss are paid from the fund."),
        ("Insurable interest", "You may insure only what you would lose money on. You may not insure your neighbour's house."),
        ("Utmost good faith", "Both sides must disclose every material fact; a non-disclosure can void the policy."),
        ("Indemnity", "The claim restores you to your position before the loss — never better off. Life insurance is the exception."),
        ("Subrogation and contribution", "After paying, the insurer takes over your right to sue; two policies on one risk share the loss."),
        ("Trap", "Reinsurance is insurance for an insurer — it is not a second policy for the insured."),
    ])


def recap_ch04() -> None:
    recap_card("recap_ch04", "Chapter 4 — Warehousing, Transport and Communication", [
        ("Warehousing", "Creates time utility: bonded, cold, cash-and-carry, private, public, state."),
        ("Transport", "Creates place utility: road, rail, water, air, pipeline, each suited to a cargo."),
        ("Documents", "Bill of lading (sea), airway bill (air), waybill (road and rail), charter party (a whole ship)."),
        ("Communication", "Postal, telephone, telegraph, radio, television, internet — the aid that lets a bargain be struck at a distance."),
        ("Choice of mode", "Cost, speed, distance, bulk, fragility, urgency and the value of the goods decide it."),
        ("Trap", "A bill of lading is a document of title; an airway bill is not."),
    ])


def recap_ch05() -> None:
    recap_card("recap_ch05", "Chapter 5 — Advertising and Sales Promotion", [
        ("Purpose", "To inform, to persuade and to remind; it creates demand rather than satisfying it."),
        ("AIDA", "Attention, interest, desire, action — the route every advertisement is built to walk."),
        ("Media", "Newspaper, television, radio, poster, cinema, internet, direct mail; each has a reach and a cost per contact."),
        ("Sales promotion", "A short-term reason to buy: discount, coupon, free sample, competition, trade-in, point-of-sale display."),
        ("Branding and packaging", "A brand is a promise protected by law; packaging protects, identifies and sells."),
        ("Trap", "Advertising is not selling: advertising is one element of promotion, and promotion is one element of the mix."),
    ])


def recap_ch06() -> None:
    recap_card("recap_ch06", "Chapter 6 — The Marketing Mix and Market Research", [
        ("Marketing", "Finding out what the customer wants and supplying it at a profit — the whole business, not the selling department."),
        ("The four Ps", "Product, price, place, promotion; the mix is the combination chosen for one market."),
        ("Research", "Define the problem, collect data, tabulate, analyse, act. Primary data is collected; secondary data already exists."),
        ("Segmentation", "Dividing a market by age, income, location, taste or use, then choosing the segment to serve."),
        ("Channels", "Producer to consumer, to retailer, to wholesaler and retailer; each removes a gap and adds a cost."),
        ("Trap", "Market research is not market intelligence: research is commissioned for a question, intelligence is the everyday reading of the market."),
    ])


def recap_ch07() -> None:
    recap_card("recap_ch07", "Chapter 7 — International Economic Organisations", [
        ("IMF", "Short-term support for a member's balance of payments, against conditions."),
        ("World Bank", "Long-term loans and development finance for member states."),
        ("WTO", "The rule-book of international trade, and the forum for settling disputes."),
        ("ECOWAS", "West African free movement of goods, people and capital, with a common external tariff."),
        ("African Union and AfCFTA", "Continental co-operation, and a single market for African goods and services."),
        ("Trap", "OPEC is a commodity cartel, not a development bank; it co-ordinates oil output, it does not lend."),
    ])


def recap_ch08() -> None:
    recap_card("recap_ch08", "Chapter 8 — E-Commerce, Enterprise and the Office", [
        ("E-commerce", "B2C, B2B, C2C and C2B; the good is bought on a screen and delivered to a door."),
        ("Benefits and costs", "Wider market and lower overhead against fraud, delivery, returns and privacy."),
        ("Entrepreneur", "Spots the gap, bears the risk, and organises land, labour, capital and enterprise to fill it."),
        ("Business plan", "What the business will do, for whom, at what cost, and with what money."),
        ("The office", "Receives, records, arranges and communicates information; filing keeps it retrievable, by name, number, subject or date."),
        ("Trap", "An intrapreneur works inside a firm; an entrepreneur carries the risk outside it."),
    ])


FIGURES = ["ch05_advertising", "ch06_marketing", "ch07_world", "ch08_ec",
           "recap_ch01", "recap_ch02", "recap_ch03", "recap_ch04",
           "recap_ch05", "recap_ch06", "recap_ch07", "recap_ch08"]
