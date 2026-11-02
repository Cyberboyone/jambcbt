"""Paper 2 — a second forty questions, no stem repeated from Paper 1 or the drills.

Distribution: scope and units 6, companies 5, home trade 6, foreign trade 7,
aids to trade 7, finance and documents 5, government and consumer 4 — the same
proportions, a heavier calculation load, and the order of the blocks reversed
where the syllabus allows.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


PAPER_2 = [
    # ---- scope and units (1-6) -------------------------------------------
    q("Which of these is a commercial occupation?", [
        "farming",
        "mining",
        "warehousing",
        "manufacturing",
    ], 2, "Farming and mining are primary industry, manufacturing is secondary, and warehousing is a commercial service."),

    q("The chain of distribution begins with the", [
        "wholesaler",
        "producer",
        "retailer",
        "consumer",
    ], 1, "Goods start at the producer and end at the consumer; the middlemen arrange the passage."),

    q("A partner who contributes capital but takes no part in management is a", [
        "nominal partner",
        "sleeping partner",
        "limited partner",
        "quasi partner",
    ], 1, "The sleeping partner supplies capital and shares profit without managing. A limited partner also limits his liability, which is a separate feature."),

    q("In a cooperative society, control is exercised on the principle of", [
        "one share, one vote",
        "one member, one vote",
        "one naira, one vote",
        "one family, one vote",
    ], 1, "Democratic control is the defining rule, whatever the capital contributed."),

    q("Which utility is created by storing maize from harvest until the lean season?", [
        "form utility",
        "place utility",
        "time utility",
        "possession utility",
    ], 2, "Storage moves the good through time to when it is wanted, which is time utility."),

    q("The main disadvantage of a sole proprietorship is", [
        "slow decision-making",
        "unlimited liability and limited capital",
        "double taxation",
        "loss of personal contact with customers",
    ], 1, "One owner means one fortune at risk and one purse to draw on."),

    # ---- companies (7-11) ------------------------------------------------
    q("A company limited by guarantee has", [
        "share capital and shareholders",
        "members who guarantee a fixed sum on winding up",
        "debenture holders who control it",
        "no legal personality",
    ], 1, "It is used by charities and clubs: no share capital, and members guarantee a small amount."),

    q("Which is NOT a consequence of incorporation?", [
        "separate legal personality",
        "perpetual succession",
        "unlimited liability of members",
        "ability to own property in the company's name",
    ], 2, "Incorporation normally brings limited liability; unlimited liability is the mark of the unincorporated business."),

    q("Preference shares normally carry", [
        "a fixed dividend paid before ordinary dividends",
        "a variable dividend paid last",
        "a right to vote on every resolution",
        "a guaranteed capital gain",
    ], 0, "The fixed, prior dividend is what the preference shareholder buys with his lower upside."),

    q("A statutory corporation is financed mainly by", [
        "share issues on the exchange",
        "government grants and loans",
        "trade credit",
        "debenture issues to the public",
    ], 1, "It has no share capital; the state provides the funds and appoints the board."),

    q("The transfer of shares in a public company takes place", [
        "only with the directors' consent",
        "freely, usually through the stock exchange",
        "only at the annual general meeting",
        "only to existing members",
    ], 1, "Free transferability is what makes a quotation meaningful."),

    # ---- home trade (12-17) ---------------------------------------------
    q("Breaking bulk means", [
        "raising the price after purchase",
        "dividing a large consignment into smaller lots",
        "insuring a consignment",
        "transporting goods to a warehouse",
    ], 1, "The wholesaler buys in shiploads and sells in lorry loads; the retailer buys in lorry loads and sells in units."),

    q("A supermarket is distinguished by", [
        "counter service and credit sales",
        "self-service and a single exit checkout",
        "mail order catalogues",
        "door-to-door selling",
    ], 1, "Self-service with payment at the exit is the operating model."),

    q("A retailer who buys directly from the manufacturer usually", [
        "pays a higher unit price but carries more stock",
        "pays a lower unit price but carries more stock",
        "pays the same and carries less stock",
        "avoids all risk of unsold stock",
    ], 1, "The wholesaler's margin is saved, but his storage and credit functions must be taken on."),

    q("Goods listed at ₦8,000 less 25% trade discount cost", [
        "₦6,000",
        "₦6,400",
        "₦7,000",
        "₦7,750",
    ], 0, "25% of 8,000 is 2,000, so the invoice price is 6,000."),

    q("A trader whose margin is 20% sells an article for ₦4,500. His cost was", [
        "₦3,600",
        "₦3,750",
        "₦3,900",
        "₦4,300",
    ], 0, "Margin is profit over selling price: cost is 80% of 4,500 = 3,600."),

    q("The function performed by both wholesaler and retailer is", [
        "manufacturing",
        "breaking bulk",
        "mining",
        "exporting",
    ], 1, "Both divide larger lots into smaller ones; the difference is the customer they serve."),

    # ---- foreign trade (18-24) ------------------------------------------
    q("Invisible trade consists of", [
        "goods that are too small to see",
        "services and transfers",
        "goods passing through a bonded warehouse",
        "goods traded in the informal sector",
    ], 1, "Services — freight, insurance, tourism, banking — leave no visible cargo."),

    q("The balance of payments must always balance because", [
        "exports always equal imports",
        "each transaction is recorded twice",
        "governments forbid deficits",
        "invisibles are ignored",
    ], 1, "Double entry means the accounts balance even when trade does not; the deficit is financed, not erased."),

    q("A tariff on imported rice will most likely", [
        "lower the price of local rice",
        "raise the price of imported rice and help local farmers",
        "reduce government revenue",
        "increase the volume of imports",
    ], 1, "The duty raises the import price, so local producers can compete and the state collects revenue."),

    q("Which is a document of title to goods?", [
        "commercial invoice",
        "bill of lading",
        "indent",
        "certificate of origin",
    ], 1, "Whoever holds the endorsed bill of lading can claim the goods."),

    q("A bill of exchange is drawn by", [
        "the importer on the exporter",
        "the exporter on the importer",
        "the shipping company on the importer",
        "the bank on the exporter",
    ], 1, "The exporter (drawer) orders the importer (drawee) to pay at sight or on a stated date."),

    q("Visible exports of ₦1,200m and visible imports of ₦1,050m give a trade", [
        "deficit of ₦150m",
        "surplus of ₦150m",
        "surplus of ₦2,250m",
        "balance of ₦0",
    ], 1, "1,200 − 1,050 = 150 in favour of exports, so a surplus."),

    q("Which is a non-tariff barrier to trade?", [
        "customs duty",
        "import licence",
        "excise duty",
        "export duty",
    ], 1, "A licence restricts without taxing; the others are duties."),

    # ---- aids to trade (25-31) ------------------------------------------
    q("The aid to trade that creates time utility is", [
        "transport",
        "warehousing",
        "insurance",
        "banking",
    ], 1, "Storage holds goods until the moment of demand."),

    q("Which insurance principle prevents the insured from recovering twice for one loss?", [
        "insurable interest",
        "indemnity",
        "utmost good faith",
        "proximate cause",
    ], 1, "Indemnity caps recovery at the actual loss; contribution then divides that loss between insurers."),

    q("An insured insures stock worth ₦10m for ₦5m and loses ₦4m. The claim under average is", [
        "₦4m",
        "₦3m",
        "₦2m",
        "₦1m",
    ], 2, "4 × (5 ÷ 10) = 2, so the claim is ₦2m. Under-insurance shares the loss."),

    q("A cheque presented six months and one day after its date is", [
        "post-dated",
        "stale",
        "crossed",
        "endorsed",
    ], 1, "Banks treat cheques over six months old as stale and return them."),

    q("Which mode of transport is used for natural gas over land?", [
        "rail",
        "pipeline",
        "air",
        "road tanker only",
    ], 1, "Pipelines carry fluids continuously at the lowest cost per unit."),

    q("Persuasive advertising aims to", [
        "announce a new product",
        "convince the buyer to prefer one brand",
        "remind buyers of an established brand",
        "report the accounts",
    ], 1, "It shifts the demand curve toward the advertised brand."),

    q("A savings account differs from a current account in that it", [
        "is operated by cheque",
        "earns interest and is not usually cheque-operated",
        "has no withdrawal facility",
        "is available only to companies",
    ], 1, "The passbook and the interest are the marks of the savings account."),

    # ---- finance and documents (32-36) ----------------------------------
    q("Current assets are those which", [
        "will be used in the business for many years",
        "will be converted into cash within a year",
        "are owed to the business by the bank",
        "are held as security for a loan",
    ], 1, "Stock, debtors, cash and bank balances are the standard current assets."),

    q("If current assets are ₦5.0m and current liabilities ₦2.0m, the current ratio is", [
        "1.5 : 1",
        "2.5 : 1",
        "3.0 : 1",
        "0.4 : 1",
    ], 1, "5.0 ÷ 2.0 = 2.5, so two and a half naira of current assets per naira of current liability."),

    q("A delivery note is signed by the buyer to", [
        "prove that the price has been paid",
        "prove that the goods listed were received",
        "show that a discount was allowed",
        "confirm the credit terms",
    ], 1, "It is evidence of receipt, not of payment and not of the price."),

    q("Which document is sent by the seller at the end of the month to summarise the account?", [
        "invoice",
        "statement of account",
        "credit note",
        "receipt",
    ], 1, "The statement lists the period's transactions and the closing balance."),

    q("Retained profit is described as an internal source of finance because it", [
        "is borrowed from a bank inside the country",
        "comes from the profits the business has kept",
        "is raised by selling shares to employees",
        "is guaranteed by the government",
    ], 1, "No outside party is approached; the money is already inside the business."),

    # ---- government and consumer (37-40) --------------------------------
    q("A tax that takes a larger proportion of a poor man's income than of a rich man's is", [
        "progressive",
        "proportional",
        "regressive",
        "direct",
    ], 2, "Regressive means the effective rate falls as income rises, which is typical of flat taxes on necessities."),

    q("Which body is responsible for registering companies in Nigeria?", [
        "CBN",
        "CAC",
        "SON",
        "NAFDAC",
    ], 1, "The Corporate Affairs Commission incorporates companies under CAMA."),

    q("Consumer sovereignty is weakened by", [
        "a wide choice of goods",
        "monopoly and misleading advertising",
        "falling prices",
        "consumer education",
    ], 1, "Where one seller controls supply, or information is false, the buyer's choice is nominal."),

    q("A firm that builds a clinic for its host community is demonstrating", [
        "tax avoidance",
        "corporate social responsibility",
        "commercialisation",
        "consumer sovereignty",
    ], 1, "Voluntary community investment beyond the legal minimum is CSR."),
]
