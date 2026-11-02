"""Paper 1 — forty questions in the proportions of a real UTME Commerce paper.

Distribution: scope and units 6, companies 5, home trade 6, foreign trade 7,
aids to trade 7, finance and documents 5, government and consumer 4.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


PAPER_1 = [
    # ---- scope and units (1-6) -------------------------------------------
    q("Commerce is best defined as", [
        "the production of goods and services",
        "trade and the aids to trade",
        "the buying and selling of shares",
        "the work of government departments",
    ], 1, "Commerce is trade plus everything that helps trade happen — transport, banking, insurance, warehousing, advertising and communication. Production belongs to industry."),

    q("Which activity belongs to industry rather than commerce?", [
        "insuring a shipment",
        "quarrying limestone",
        "selling goods in a shop",
        "advertising a new product",
    ], 1, "Quarrying is extraction — primary industry. The other three are commercial services."),

    q("Utility created by transporting goods from Kano to Lagos is", [
        "form utility",
        "place utility",
        "possession utility",
        "time utility",
    ], 1, "Moving a good to where it is wanted creates place utility. Storage creates time utility; manufacturing creates form utility."),

    q("A partnership with no deed of partnership will share profit", [
        "in the ratio of capital contributed",
        "equally",
        "in the ratio of time devoted",
        "in the ratio of age",
    ], 1, "The Partnership Act default is equal shares, whatever the capital. A deed exists precisely to displace that default."),

    q("The liability of a sole trader is", [
        "limited to his capital",
        "limited to his stock",
        "unlimited",
        "shared with his customers",
    ], 2, "There is no legal separation between the trader and the business, so his personal property is at risk."),

    q("A cooperative society distributes surplus to members according to", [
        "the number of shares held",
        "the value of their patronage",
        "their age in the society",
        "the size of their families",
    ], 1, "The patronage dividend returns surplus in proportion to how much each member traded with the society — one member, one vote still governs control."),

    # ---- companies (7-11) ------------------------------------------------
    q("A private limited company differs from a public limited company in that it", [
        "cannot make a profit",
        "restricts the transfer of its shares",
        "has no memorandum of association",
        "cannot employ more than fifty workers",
    ], 1, "The restriction on share transfer keeps ownership within a known group. The fifty limit applies to members, not employees."),

    q("The document that states a company's objects and authorized capital is the", [
        "articles of association",
        "memorandum of association",
        "certificate of incorporation",
        "statutory declaration",
    ], 1, "The memorandum governs the company's external relations: name, objects, liability and capital."),

    q("Debenture holders are", [
        "owners of the company",
        "creditors of the company",
        "directors of the company",
        "employees of the company",
    ], 1, "A debenture is a loan, so its holder is a creditor entitled to interest whether or not profit is made."),

    q("A public corporation is established mainly because", [
        "shareholders demand dividends",
        "the service needs state backing for a natural monopoly",
        "the stock exchange requires it",
        "partnership law forbids large firms",
    ], 1, "Water, electricity and rail are network monopolies where one supplier is efficient but private monopoly is unacceptable, so the state supplies."),

    q("Which is an advantage of a company over a sole proprietorship?", [
        "greater privacy",
        "limited liability and perpetual succession",
        "fewer registration costs",
        "freedom from taxation",
    ], 1, "The company survives its members and caps their loss at their shares."),

    # ---- home trade (12-17) ---------------------------------------------
    q("The wholesaler performs all of the following EXCEPT", [
        "breaking bulk",
        "granting credit to retailers",
        "selling to the final consumer",
        "storing goods",
    ], 2, "Selling to the final consumer is the retailer's function; that is what makes him a retailer."),

    q("A chain store is another name for", [
        "a department store",
        "a multiple shop",
        "a supermarket",
        "a cooperative store",
    ], 1, "One owner, many branches, central buying and a common name — the multiple shop."),

    q("Trade discount is allowed", [
        "for prompt payment",
        "off the list price to a buyer in the trade",
        "only to consumers",
        "only on exports",
    ], 1, "It fixes the invoice price for the trade buyer and is not entered in the ledger separately."),

    q("Goods bought for ₦12,000 and sold for ₦15,000 give a mark-up of", [
        "20%",
        "25%",
        "30%",
        "80%",
    ], 1, "Mark-up is profit over cost: 3,000 ÷ 12,000 = 25%. The margin would be 3,000 ÷ 15,000 = 20%."),

    q("Goods invoiced at ₦20,000 less 10% and then 5% trade discount cost", [
        "₦17,000",
        "₦17,100",
        "₦17,500",
        "₦18,000",
    ], 1, "20,000 × 0.9 = 18,000; 18,000 × 0.95 = 17,100. Discounts in a chain are taken one after the other, never added."),

    q("Which channel is most likely for a small farmer selling yams in a village market?", [
        "producer to consumer",
        "producer to wholesaler to retailer to consumer",
        "producer to agent to exporter",
        "producer to department store",
    ], 0, "A village market sale is direct: the farmer meets the consumer with no middleman."),

    # ---- foreign trade (18-24) ------------------------------------------
    q("The balance of trade is in deficit when", [
        "visible exports exceed visible imports",
        "visible imports exceed visible exports",
        "invisible exports exceed invisible imports",
        "the capital account is in surplus",
    ], 1, "The visible balance counts goods only; imports larger than exports is a deficit."),

    q("Shipping services sold to a foreign buyer are recorded as", [
        "a visible export",
        "an invisible export",
        "a visible import",
        "a capital inflow",
    ], 1, "Freight is a service, so it is invisible. Only goods are visible."),

    q("A quota differs from a tariff in that a quota", [
        "raises revenue for the government",
        "limits the quantity of imports",
        "increases the price of exports",
        "is a total ban",
    ], 1, "A quota limits quantity; a tariff raises price and yields revenue. An embargo is the total ban."),

    q("The document that serves as a receipt, a contract of carriage and a document of title is the", [
        "commercial invoice",
        "bill of lading",
        "certificate of origin",
        "consular invoice",
    ], 1, "That triple function is why a bank will release payment against it."),

    q("A letter of credit protects the exporter because", [
        "the importer's bank promises to pay against the documents",
        "the shipping line guarantees the goods",
        "the government insures the cargo",
        "the importer pays in advance",
    ], 0, "The bank's promise replaces the unknown foreign buyer's promise with a known bank's."),

    q("If the export price index is 150 and the import price index is 120, the terms of trade are", [
        "80",
        "125",
        "130",
        "270",
    ], 1, "150 ÷ 120 × 100 = 125. Above 100 means a unit of export buys more than the base period's imports."),

    q("Entrepot trade is the import of goods", [
        "for immediate consumption",
        "for re-export, often after processing",
        "for government use only",
        "that are banned at home",
    ], 1, "The goods enter the country only to leave again; Rotterdam and Singapore are classic examples."),

    # ---- aids to trade (25-31) ------------------------------------------
    q("The aid to trade that deals with the risk of loss is", [
        "transport",
        "insurance",
        "warehousing",
        "advertising",
    ], 1, "Insurance pools risk: many pay small premiums so that the few who lose are made whole."),

    q("A crossed cheque may be", [
        "cashed at the counter",
        "paid only into a bank account",
        "endorsed to a third party for cash",
        "cashed by the drawer only",
    ], 1, "The crossing is a direction to the paying bank to collect through an account, which leaves a trail."),

    q("The principle that the insured must be restored to his position before the loss is", [
        "insurable interest",
        "indemnity",
        "subrogation",
        "utmost good faith",
    ], 1, "Indemnity restores without enriching; a new-for-old payment would breach it."),

    q("A warehouse where imported goods are held before duty is paid is a", [
        "private warehouse",
        "bonded warehouse",
        "state warehouse",
        "cold store",
    ], 1, "Bond is the customs arrangement that defers duty until the goods leave the store."),

    q("Which mode of transport is cheapest per tonne-kilometre for bulky goods over land?", [
        "air",
        "road",
        "rail",
        "pipeline",
    ], 2, "Rail carries heavy loads at low cost per tonne-km. Pipelines are cheaper still but only for fluids."),

    q("Advertising that introduces a newly launched product is", [
        "persuasive",
        "informative",
        "reminder",
        "comparative",
    ], 1, "It tells the market that the product exists and what it does — the informative job."),

    q("A fixed deposit account is attractive mainly because it", [
        "can be withdrawn by cheque",
        "earns a higher rate of interest",
        "has no minimum balance",
        "is insured by the government",
    ], 1, "The depositor lends for a term, so the bank pays more than on a current account."),

    # ---- finance and documents (32-36) ----------------------------------
    q("Working capital is", [
        "fixed assets less depreciation",
        "current assets less current liabilities",
        "share capital plus debentures",
        "total assets less total liabilities",
    ], 1, "It measures the short-term funds free after the short-term debts are allowed for."),

    q("Which is a long-term source of finance?", [
        "bank overdraft",
        "trade credit",
        "debenture",
        "accrued rent",
    ], 2, "A debenture runs for years; the others fall due within a year or on demand."),

    q("A credit note is issued by", [
        "the buyer, when he returns goods",
        "the seller, to reduce what the buyer owes",
        "the bank, when a cheque bounces",
        "the carrier, when goods are lost",
    ], 1, "The seller is the party who owes the reduction, so the seller issues the credit note."),

    q("E. & O. E. appears on an invoice to", [
        "certify the goods",
        "reserve the seller's right to correct errors",
        "show that tax has been paid",
        "prove delivery",
    ], 1, "Errors and omissions excepted: the seller may correct a clerical mistake without repudiating the sale."),

    q("A bull on the stock exchange expects prices to", [
        "fall",
        "rise",
        "remain fixed",
        "be suspended",
    ], 1, "The bull buys in the expectation of selling at a higher price."),

    # ---- government and consumer (37-40) --------------------------------
    q("VAT is best classified as", [
        "a direct progressive tax",
        "an indirect tax on spending",
        "a tariff on imports",
        "a tax on company profit",
    ], 1, "It is collected by the seller and passed on, so the burden is on the consumer and the tax is indirect."),

    q("Privatisation means", [
        "the state buying shares in a private firm",
        "the transfer of ownership from the state to private investors",
        "allowing a public firm to cover its costs",
        "closing an unprofitable public firm",
    ], 1, "Ownership moves; commercialisation merely asks a state firm to behave commercially."),

    q("The consumer right that allows a buyer to claim compensation for a defective product is", [
        "the right to safety",
        "the right to redress",
        "the right to choose",
        "the right to be heard",
    ], 1, "Redress is the remedy — repair, replacement, refund or damages."),

    q("Corporate social responsibility is voluntary activity that", [
        "replaces the payment of tax",
        "serves stakeholders beyond the shareholders",
        "is required by the Companies Act",
        "reduces the wages of workers",
    ], 1, "It goes beyond the legal minimum, which is what distinguishes it from compliance."),
]
