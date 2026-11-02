"""Paper 1 — forty questions in the proportions of the Commerce paper.

Distribution: money and banking 10, insurance 6, warehousing, transport and
communication 5, advertising and sales promotion 5, the marketing mix and research 6,
international organisations 4, management, office and e-commerce 4.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


PAPER_1 = [
    # ---- money and banking (1-10) ------------------------------------------
    q("Money is anything that is", ["issued by government", "generally acceptable in payment", "made of paper", "kept in a bank"], 1,
      "General acceptability is the test."),
    q("The function of money that allows prices to be compared is", ["medium of exchange", "measure of value", "store of value",
      "standard of deferred payment"], 1, "One unit prices everything, so goods can be compared."),
    q("A cow is a poor form of money because it lacks", ["acceptability", "divisibility", "value", "scarcity"], 1,
      "It cannot be split to pay a small debt."),
    q("A bank deposit is", ["legal tender", "money but not legal tender", "not money", "near money only"], 1,
      "It is money in the economist's sense; a creditor need not accept a transfer."),
    q("The institution that issues currency in Nigeria is the", ["Ministry of Finance", "Central Bank of Nigeria",
      "Nigerian Exchange", "Bank of Industry"], 1, "Currency issue is a central-bank monopoly."),
    q("A current account is used by a business mainly because it", ["pays the highest interest", "allows payment on demand by cheque",
      "is a fixed deposit", "is free of charges"], 1, "It is a demand account with a cheque facility."),
    q("If the cash reserve ratio is 10 per cent, the credit multiplier is", ["2", "5", "10", "20"], 2,
      "1 ÷ 0.10 = 10."),
    q("A new deposit of ₦100,000 with a cash ratio of 25 per cent supports total deposits of", ["₦250,000", "₦400,000",
      "₦500,000", "₦1,000,000"], 1, "Multiplier 4; 100,000 × 4 = ₦400,000."),
    q("To reduce the money supply the central bank should", ["buy treasury bills", "sell treasury bills",
      "lower the cash ratio", "lower the bank rate"], 1, "Selling bills takes cash out of the banks."),
    q("A fixed sum paid monthly on the payer's instruction is a", ["direct debit", "standing order", "bank draft",
      "bill of exchange"], 1, "Fixed amount and payer-initiated means a standing order."),

    # ---- insurance (11-16) --------------------------------------------------
    q("Insurance works by", ["avoiding risk", "pooling many similar risks", "raising prices", "lending money"], 1,
      "Many small premiums meet the few large losses."),
    q("The principle that the insured must have something to lose is", ["indemnity", "insurable interest", "subrogation",
      "contribution"], 1, "Without an interest the policy is a wager."),
    q("Stock worth ₦10 million insured for ₦8 million suffers a ₦4 million loss. The payment is", ["₦4.0 million",
      "₦3.2 million", "₦2.0 million", "₦4.8 million"], 1, "Average clause: 4m × (8 ÷ 10) = ₦3.2 million."),
    q("A policy that pays at death or at the end of the term is", ["term assurance", "whole-life assurance",
      "an endowment", "an annuity"], 2, "Death or survival, whichever first, is an endowment."),
    q("An insurer that takes out insurance on part of its own risk is engaged in", ["double insurance",
      "reinsurance", "co-insurance", "subrogation"], 1, "Reinsurance is insurance for the insurer."),
    q("After paying a claim, the insurer's right to sue the party at fault is", ["contribution", "subrogation",
      "indemnity", "proximate cause"], 1, "The insurer stands in the insured's shoes."),

    # ---- warehousing, transport, communication (17-21) ---------------------
    q("A warehouse holding imported goods on which duty is unpaid is a", ["private warehouse", "bonded warehouse",
      "cold store", "state warehouse"], 1, "Duty is suspended while the goods are under bond."),
    q("The aid to trade that creates time utility is", ["transport", "warehousing", "insurance", "advertising"], 1,
      "Storage holds goods until they are wanted, which is time utility."),
    q("A document of title is one that", ["proves that freight has been paid", "represents the goods and transfers the right to them", "records the insurance cover", "acknowledges receipt at a warehouse"], 1,
      "The bill of lading represents the goods, so transferring it transfers the right to them."),
    q("The cheapest mode of transport per tonne-kilometre for bulk cargo is", ["road", "rail", "water", "air"], 2,
      "Sea freight is the cheapest for bulk."),
    q("A warehouse receipt is useful because it", ["proves ownership of the warehouse", "can secure a bank loan against the goods",
      "is a bill of lading", "cancels the duty"], 1, "Goods in store can be pledged as security."),

    # ---- advertising and sales promotion (22-26) --------------------------
    q("Advertising is", ["unpaid publicity", "paid non-personal communication by an identified sponsor", "personal selling",
      "a press release"], 1, "Paid, non-personal and sponsored are the three conditions."),
    q("An advertisement urging the public to eat more fruit, paid for by growers, is", ["selective", "generic",
      "institutional", "comparative"], 1, "It sells the class, not a brand."),
    q("A free sample is a form of", ["advertising", "sales promotion", "publicity", "personal selling"], 1,
      "It is a short-term inducement to try the product."),
    q("The legal right in a brand name is a", ["copyright", "patent", "trademark", "licence"], 2,
      "A trademark is the registered mark."),
    q("The medium best suited to a technical product with a small specialist market is", ["television",
      "a national newspaper", "a trade magazine", "a roadside poster"], 2, "It reaches only the relevant buyers."),

    # ---- marketing mix and research (27-32) -------------------------------
    q("The four Ps are", ["product, price, place, promotion", "product, profit, people, place",
      "price, packaging, promotion, profit", "plan, product, price, people"], 0, "These are the four controllable elements."),
    q("Selling through a wholesaler is a decision under", ["product", "price", "place", "promotion"], 2,
      "The channel belongs to place."),
    q("Data collected by a firm for its own present problem is", ["secondary", "primary", "tertiary", "historical"], 1,
      "Primary data is gathered first-hand."),
    q("Dividing a market by income and occupation is segmentation on", ["geographic", "demographic",
      "psychographic", "behavioural"], 1, "Those are population characteristics."),
    q("A firm with sales of ₦5 million in a market of ₦25 million has a market share of", ["5 per cent", "10 per cent",
      "20 per cent", "25 per cent"], 2, "5 ÷ 25 = 20 per cent."),
    q("Buying a phone because it is the model everyone has is a", ["rational motive", "emotional motive",
      "patronage motive", "economic motive"], 1, "Imitation is emotional."),

    # ---- international organisations (33-36) ------------------------------
    q("The organisation that lends to correct a short-term balance-of-payments deficit is the", ["World Bank", "IMF",
      "WTO", "ECOWAS"], 1, "Short-term payments support is the IMF's mandate."),
    q("Membership of the WTO obliges a country to", ["apply a common external tariff", "bind its tariffs and apply the agreed trade rules", "adopt a single currency", "abolish its customs service"], 1,
      "A member binds its tariffs and follows the agreements it has signed."),
    q("ECOWAS is a grouping of", ["all African states", "West African states", "oil exporters", "European states"], 1,
      "It is the West African regional body."),
    q("OPEC's instrument is", ["tariff reduction", "production quotas", "project loans", "dispute settlement"], 1,
      "A commodity cartel manages supply."),

    # ---- management, office and e-commerce (37-40) ------------------------
    q("The five functions of management are planning, organising, staffing, directing and", ["selling",
      "controlling", "auditing", "advertising"], 1, "Control compares performance with the plan."),
    q("The office function that makes a record findable again is", ["receiving", "recording", "arranging",
      "communicating"], 2, "Filing and indexing are the arranging function."),
    q("A business selling to individual consumers through its own website is", ["B2B", "B2C", "C2C", "C2B"], 1,
      "Business to consumer."),
    q("An employee who innovates inside his firm without bearing personal risk is an", ["entrepreneur", "intrapreneur",
      "investor", "creditor"], 1, "The firm carries the risk, so he is an intrapreneur."),
]
