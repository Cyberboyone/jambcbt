"""The 120-question master bank for Commerce Volume 1 — fifteen per chapter.

No stem in this file repeats a stem in the chapter drills or in either paper.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


BANK_1 = [
    q("The two divisions of commerce are", [
        "industry and trade",
        "trade and the aids to trade",
        "home trade and industry",
        "production and consumption",
    ], 1, "Commerce covers the buying and selling itself, plus the services that make it possible."),

    q("Which is a primary industry?", [
        "brewing",
        "fishing",
        "banking",
        "baking",
    ], 1, "Fishing extracts from nature. Brewing, baking and banking are secondary or tertiary."),

    q("Constructive industry is best illustrated by", [
        "bricklaying on a building site",
        "turning timber into furniture",
        "mining tin",
        "selling furniture in a shop",
    ], 0, "Constructive industry moves goods from one place to another — building and road work. Carpentry is manufacturing."),

    q("Direct services are those which", [
        "produce tangible goods",
        "are rendered personally and cannot be stored",
        "are rendered by machines only",
        "are exported as invisible trade",
    ], 1, "A doctor's consultation or a teacher's lesson is consumed as it is produced."),

    q("Commerce creates possession utility mainly through", [
        "manufacturing",
        "buying and selling",
        "transport",
        "storage",
    ], 1, "The transfer of ownership from seller to buyer is possession utility."),

    q("Which sequence expresses the levels of production correctly?", [
        "primary, secondary, tertiary",
        "tertiary, secondary, primary",
        "secondary, primary, tertiary",
        "primary, tertiary, secondary",
    ], 0, "Extraction comes first, then processing, then the services that distribute the result."),

    q("A trader in Onitsha buys cloth from a mill in Kaduna and sells it in his shop. This is", [
        "foreign trade",
        "home trade",
        "entrepot trade",
        "barter",
    ], 1, "Both parties are in Nigeria, so the trade is internal."),

    q("The export of cocoa beans and the import of machinery is an example of", [
        "invisible trade",
        "visible trade",
        "home trade",
        "barter",
    ], 1, "Both are goods, so both are visible items in the balance of trade."),

    q("Which is NOT a function of commerce?", [
        "moving goods from producer to consumer",
        "storing goods until they are needed",
        "manufacturing goods for sale",
        "insuring goods against loss",
    ], 2, "Manufacturing is industry. Commerce distributes what industry makes."),

    q("A country's standard of living rises when commerce", [
        "raises the price of goods",
        "widens the market and lowers unit costs",
        "reduces the number of shops",
        "increases the distance goods travel",
    ], 1, "A wider market allows larger scale, which lowers cost and increases what a wage will buy."),

    q("The presence of a wholesaler between producer and retailer usually", [
        "raises the final price with no benefit",
        "lowers the producer's distribution cost",
        "reduces the range of goods available",
        "removes the need for transport",
    ], 1, "One wholesaler serving many small retailers performs the function at lower total cost than each producer could."),

    q("Aids to trade are also called", [
        "commercial services",
        "primary industries",
        "direct services only",
        "constructive industries",
    ], 0, "Transport, banking, insurance, warehousing, advertising and communication are services to trade."),

    q("Which of these is a tertiary activity?", [
        "quarrying",
        "textile weaving",
        "teaching",
        "cocoa farming",
    ], 2, "Teaching is a service. The other three extract or manufacture."),

    q("The main purpose of trade is to", [
        "increase the volume of goods produced",
        "move goods from where they are less wanted to where they are more wanted",
        "reduce the number of middlemen to zero",
        "raise the price of scarce goods",
    ], 1, "Trade redistributes goods to the places and people who value them most."),

    q("Which statement about commerce is true?", [
        "Commerce produces goods and services",
        "Commerce links production with consumption",
        "Commerce is confined to foreign trade",
        "Commerce is a branch of industry",
    ], 1, "Commerce is the bridge between the factory and the final buyer."),
]

BANK_2 = [
    q("The owner of a sole proprietorship receives", [
        "a salary fixed by law",
        "all the profit after tax",
        "a dividend declared by shareholders",
        "interest on capital only",
    ], 1, "There are no other owners to share with, so profit belongs to the proprietor."),

    q("A partnership deed normally states all of the following EXCEPT", [
        "the capital each partner contributes",
        "the profit-sharing ratio",
        "the price at which goods will be sold",
        "the procedure for admitting a new partner",
    ], 2, "Selling prices are a management decision, not a constitutional term of the partnership."),

    q("A limited partner is one whose", [
        "liability is limited to the capital he has contributed",
        "participation in management is limited",
        "share of profit is limited",
        "liability is unlimited",
    ], 0, "Limited partners must not manage; if they do, they lose their limited status."),

    q("A nominal partner is one who", [
        "lends his name to the firm without contributing capital",
        "contributes capital but does not manage",
        "manages without capital",
        "has retired but remains liable",
    ], 0, "The name attracts custom; the nominal partner takes no capital share and usually no profit."),

    q("A quasi partner is a person who", [
        "is a full partner but silent",
        "retires and allows his name to remain in the firm",
        "lends money to the firm",
        "manages a branch",
    ], 1, "He is not a partner but is liable to outsiders who deal with the firm believing him to be one."),

    q("The maximum number of partners in an ordinary partnership is", [
        "ten",
        "twenty",
        "fifty",
        "unlimited",
    ], 1, "Twenty is the general limit, with a larger ceiling allowed for professional firms."),

    q("Joint and several liability means a creditor may", [
        "sue only the partnership as a body",
        "sue any one partner for the whole debt",
        "recover only the partner's share",
        "not sue a retired partner",
    ], 1, "The creditor may choose any partner and recover the entire debt from him; the partners then sort it out among themselves."),

    q("A cooperative society is registered with the", [
        "Corporate Affairs Commission as a company",
        "appropriate cooperative department of government",
        "Central Bank of Nigeria",
        "Securities and Exchange Commission",
    ], 1, "Cooperatives have their own registration law and registrar, distinct from company law."),

    q("The minimum number of members required to form a cooperative society is", [
        "two",
        "five",
        "ten",
        "twenty",
    ], 2, "Ten is the usual statutory minimum for registration."),

    q("A patronage dividend is paid to a member in proportion to", [
        "his share capital",
        "the value of his transactions with the society",
        "the length of his membership",
        "the number of meetings he attends",
    ], 1, "The surplus is returned according to use, not according to capital — the cooperative's central idea."),

    q("A consumer cooperative exists mainly to", [
        "lend money to members",
        "buy goods in bulk and sell to members at fair prices",
        "market members' produce abroad",
        "insure members' property",
    ], 1, "The members are the customers, so the middleman's margin is returned to them."),

    q("A producer cooperative helps its members mainly by", [
        "granting overdrafts",
        "processing and marketing their produce",
        "insuring their crops",
        "providing legal advice",
    ], 1, "Pooling output gives small producers the bargaining power and processing capacity of a large one."),

    q("Which is a disadvantage of a cooperative society?", [
        "limited liability",
        "slow decision-making through democratic control",
        "one member, one vote",
        "service rather than profit as the aim",
    ], 1, "Democratic control is a strength in principle and a source of delay in practice."),

    q("A credit cooperative lends mainly to", [
        "the general public",
        "its own members",
        "other cooperatives",
        "government agencies",
    ], 1, "The pool of savings is reserved for members, which keeps the cost of credit low."),

    q("Which statement about the liability of a cooperative member is true?", [
        "It is unlimited",
        "It is limited to the shares he holds",
        "It is limited to twice his shares",
        "He has no liability at all",
    ], 1, "Registration with limited liability caps the member's loss at his share capital."),
]

BANK_3 = [
    q("The certificate of incorporation is issued by the", [
        "Central Bank",
        "Corporate Affairs Commission",
        "Securities and Exchange Commission",
        "Federal Inland Revenue Service",
    ], 1, "The CAC is the registrar; the certificate is its evidence that the company exists."),

    q("A company's name must end with", [
        "\"and Sons\"",
        "\"Limited\" or \"Plc\"",
        "\"Enterprises\"",
        "\"Group\"",
    ], 1, "The suffix warns the world that liability is limited."),

    q("The objects clause limits a company's", [
        "dividend",
        "range of business activities",
        "number of employees",
        "registered office",
    ], 1, "Anything outside the objects is ultra vires and void at common law."),

    q("The registered office of a company is", [
        "where it manufactures",
        "the address to which legal notices are sent",
        "the chairman's home",
        "the branch with the most staff",
    ], 1, "Service of process depends on it, so it must be stated in the memorandum."),

    q("An annual general meeting is held mainly to", [
        "elect directors and receive the accounts",
        "fix the price of shares",
        "appoint auditors for ten years",
        "approve the memorandum",
    ], 0, "The AGM is the shareholders' annual opportunity to hold the board to account."),

    q("A proxy at a company meeting is", [
        "a director acting as chairman",
        "a person appointed to vote on behalf of a shareholder",
        "the company secretary",
        "an auditor",
    ], 1, "The proxy exercises the member's vote when the member cannot attend."),

    q("The company secretary is responsible for", [
        "declaring dividends",
        "keeping the statutory books and records",
        "auditing the accounts",
        "chairing board meetings",
    ], 1, "The secretary is the compliance officer of the company, not its decision-maker."),

    q("An auditor's report states whether the accounts", [
        "show a profit",
        "give a true and fair view",
        "have been approved by the board",
        "have been filed with the tax office",
    ], 1, "The auditor expresses an opinion on truth and fairness, not on profitability as such."),

    q("A statement of affairs at incorporation shows", [
        "the projected profit",
        "the assets, liabilities and initial capital",
        "the names of all employees",
        "the market price of the shares",
    ], 1, "It is the opening financial picture of the company."),

    q("Which is a disadvantage of a private limited company?", [
        "limited liability",
        "shares cannot be offered to the public",
        "perpetual succession",
        "separate legal personality",
    ], 1, "Capital is confined to the members and their associates, which caps growth."),

    q("A holding company is one that", [
        "owns shares in another company sufficient to control it",
        "holds goods in a warehouse",
        "is owned by the government",
        "has no share capital",
    ], 0, "Control, usually through a majority of the voting shares, makes the other firm a subsidiary."),

    q("A public corporation is managed by", [
        "shareholders at an AGM",
        "a board appointed by the government",
        "the stock exchange",
        "a partnership deed",
    ], 1, "The enabling statute usually provides for a governing board appointed by the minister or the president."),

    q("Which problem is commonly associated with public corporations?", [
        "shortage of capital",
        "political interference and inefficiency",
        "excessive competition",
        "inability to borrow",
    ], 1, "Appointments on political grounds and soft budget constraints are the standard criticisms."),

    q("A public utility such as water supply is usually a monopoly because", [
        "the law forbids competition",
        "duplicating the network would be wasteful",
        "the service cannot be priced",
        "consumers prefer monopolies",
    ], 1, "One set of pipes serving a city is far cheaper than two, so the market supports only one supplier."),

    q("Which is NOT a source of company finance?", [
        "ordinary shares",
        "debentures",
        "retained profit",
        "a partner's capital",
    ], 3, "A company has shareholders and creditors, not partners; partner's capital belongs to an unincorporated firm."),
]

BANK_4 = [
    q("Home trade is also known as", [
        "foreign trade",
        "internal trade",
        "entrepot trade",
        "bilateral trade",
    ], 1, "It is trade inside the country, between residents."),

    q("The retailer's main function is to", [
        "manufacture goods",
        "sell to the final consumer",
        "warehouse imported goods",
        "insure goods in transit",
    ], 1, "The retailer is the last link before consumption."),

    q("Which function does the wholesaler perform for the producer?", [
        "financing production directly",
        "providing market information and collecting orders",
        "fixing the retail price",
        "insuring the consumer",
    ], 1, "The wholesaler's orders and feedback tell the producer what the market wants."),

    q("A department store is owned and managed as", [
        "a single unit with many departments",
        "many independent shops under one roof",
        "a cooperative",
        "a public corporation",
    ], 0, "One management, one building, many departments."),

    q("A multiple shop enjoys economies of scale mainly because it", [
        "sells only luxury goods",
        "buys centrally for all its branches",
        "employs fewer staff",
        "has no competition",
    ], 1, "Central buying gives it the discount that a single shop cannot obtain."),

    q("Mail order retailing depends on", [
        "customers visiting a shop",
        "a catalogue or website and delivery to the home",
        "cash and carry",
        "door-to-door hawking",
    ], 1, "The sale is made at a distance, from a description or an image."),

    q("Which is a disadvantage of mail order to the buyer?", [
        "goods are delivered to the door",
        "the buyer cannot inspect the goods before paying",
        "prices are usually lower",
        "the range is wider than a shop's",
    ], 1, "Sight unseen purchase is the buyer's main risk, met in part by returns policies."),

    q("A cash and carry wholesaler sells", [
        "on long credit only",
        "for cash, and the buyer carries the goods away",
        "only to consumers",
        "only imported goods",
    ], 1, "The absence of credit and delivery is what keeps the price low."),

    q("The channel producer → agent → wholesaler → retailer → consumer is used when", [
        "goods are perishable",
        "the producer is remote or the market is foreign",
        "the good is custom-made",
        "the buyer is the government",
    ], 1, "An agent represents a distant principal who cannot deal directly with many wholesalers."),

    q("Cutting out the wholesaler from a channel usually means", [
        "the wholesaler's functions disappear",
        "the producer or retailer must perform those functions",
        "the consumer pays less with no extra work",
        "the goods cannot be sold",
    ], 1, "Functions cannot be abolished, only reassigned — and someone must pay for them."),

    q("Which is a correct statement about trade discount?", [
        "It is recorded in the sales day book",
        "It is deducted before the invoice is written",
        "It is allowed for early payment",
        "It is a form of advertising",
    ], 1, "The invoice shows the net figure after the trade discount; the discount itself is not a ledger entry."),

    q("A trader marks up his goods by 25% on cost. A good costing ₦800 sells for", [
        "₦1,000",
        "₦1,025",
        "₦1,060",
        "₦1,200",
    ], 0, "800 × 1.25 = 1,000."),

    q("The same good sold for ₦1,000 on a cost of ₦800 gives a margin of", [
        "20%",
        "25%",
        "30%",
        "80%",
    ], 0, "200 ÷ 1,000 = 20%. The margin is always the smaller percentage when profit is positive."),

    q("Which retail institution sells food and household goods on a self-service basis?", [
        "department store",
        "supermarket",
        "specialty shop",
        "cooperative store",
    ], 1, "Self-service with a checkout is the supermarket."),

    q("A hypermarket differs from a supermarket mainly in", [
        "being smaller",
        "carrying a much wider range, including clothing and electronics",
        "selling only to the trade",
        "not using checkouts",
    ], 1, "It adds general merchandise to the food floor and usually sits outside the city centre."),
]

BANK_5 = [
    q("Foreign trade differs from home trade because it involves", [
        "a larger volume of goods",
        "the use of different currencies and customs formalities",
        "higher profits",
        "only goods and not services",
    ], 1, "The frontier brings currency exchange, customs duty and documentary formalities that internal trade does not."),

    q("The visible balance of trade records", [
        "goods only",
        "services only",
        "goods and services",
        "capital movements",
    ], 0, "It is the difference between the value of goods exported and goods imported."),

    q("Unilateral transfers received from abroad are recorded in", [
        "the balance of trade",
        "the current account of the balance of payments",
        "the capital account",
        "the reserves only",
    ], 1, "Gifts, remittances and grants are current transfers, so they sit in the current account with services."),

    q("A country has visible imports of ₦600m and visible exports of ₦540m. Its balance of trade is", [
        "a surplus of ₦60m",
        "a deficit of ₦60m",
        "a surplus of ₦1,140m",
        "balanced",
    ], 1, "540 − 600 = −60, so a deficit of sixty million naira."),

    q("If that country also earns ₦90m from services, its current account shows", [
        "a deficit of ₦60m",
        "a surplus of ₦30m",
        "a deficit of ₦150m",
        "a surplus of ₦90m",
    ], 1, "−60 + 90 = +30, a current account surplus."),

    q("An ad valorem tariff is levied", [
        "as a fixed sum per unit",
        "as a percentage of the value of the goods",
        "only on exports",
        "only on services",
    ], 1, "Ad valorem means according to value; a specific duty is a fixed sum per unit."),

    q("Which trade restriction raises revenue for the importing government?", [
        "a quota",
        "a tariff",
        "an embargo",
        "a voluntary export restraint",
    ], 1, "The duty is collected at the port, so the state gains revenue as well as protection."),

    q("A common external tariff is associated with", [
        "a free trade area",
        "a customs union",
        "a bilateral treaty",
        "an entrepot port",
    ], 1, "Members of a customs union charge the same duties on goods from outside the union."),

    q("An indent differs from an order because an indent", [
        "is a request for goods with the terms stated, often from abroad",
        "is sent by the seller",
        "proves payment",
        "is issued by the bank",
    ], 0, "The importer's indent instructs the exporter what to send and on what terms; the exporter's acceptance turns it into an order."),

    q("A commercial invoice is used to", [
        "claim payment for goods supplied",
        "acknowledge receipt of goods",
        "prove the origin of goods",
        "transfer title to goods",
    ], 0, "It states the goods, quantity, price and terms, and is the seller's demand for payment."),

    q("Which document would an importer need in order to obtain foreign exchange from the central bank?", [
        "a delivery note",
        "a pro forma invoice",
        "a credit note",
        "a statement of account",
    ], 1, "The pro forma shows the value and terms of the intended import, which the bank and the exchange control authority require."),

    q("The person who draws a bill of exchange is the", [
        "drawee",
        "drawer",
        "payee",
        "endorser",
    ], 1, "The drawer issues the order; the drawee must pay; the payee receives."),

    q("A sight bill of exchange is payable", [
        "at a stated future date",
        "on presentation",
        "only after the goods arrive",
        "in instalments",
    ], 1, "At sight means when it is presented for payment."),

    q("Devaluation of a currency is intended to", [
        "make exports cheaper and imports dearer",
        "make exports dearer and imports cheaper",
        "raise the value of the currency",
        "eliminate the need for foreign reserves",
    ], 0, "A weaker currency lowers the foreign price of exports and raises the domestic price of imports."),

    q("Which is an invisible import for Nigeria?", [
        "imported rice",
        "freight paid to a foreign shipping line",
        "imported vehicles",
        "imported cement",
    ], 1, "Freight is a service bought from abroad, so it is invisible."),
]

BANK_6 = [
    q("The obstacles to trade which the aids to trade remove include all EXCEPT", [
        "distance",
        "risk",
        "competition",
        "ignorance of the market",
    ], 2, "Competition is a feature of the market, not an obstacle the commercial services exist to remove."),

    q("A current account holder normally", [
        "earns the highest rate of interest",
        "withdraws by cheque and pays no interest",
        "must give notice before withdrawal",
        "cannot receive payments from third parties",
    ], 1, "It is a working account: cheques and transfers out, no interest, sometimes a charge."),

    q("The bank on which a cheque is drawn is called the", [
        "drawer",
        "drawee",
        "payee",
        "endorser",
    ], 1, "The bank is ordered to pay, so it is the drawee."),

    q("A cheque returned marked \"R/D\" means", [
        "refer to drawer — insufficient funds",
        "received and delivered",
        "returned to depositor",
        "reduced by discount",
    ], 0, "The bank declines to pay and refers the holder back to the drawer."),

    q("Endorsement of a cheque transfers", [
        "the bank's liability",
        "the right to receive the amount",
        "ownership of the drawer's account",
        "the crossing",
    ], 1, "The payee signs the back, which passes the right to collect to the endorsee."),

    q("Which is NOT a principle of insurance?", [
        "insurable interest",
        "utmost good faith",
        "indemnity",
        "maximisation of profit",
    ], 3, "Profit is the insurer's commercial aim, not a legal principle of the contract."),

    q("A person may insure a house he does not own if", [
        "he pays double premium",
        "he has an insurable interest, such as a mortgagee or a tenant",
        "the owner consents verbally",
        "the house is in his town",
    ], 1, "Insurable interest exists where loss would cause the insured a pecuniary loss."),

    q("Under-insurance results in", [
        "a full claim",
        "a claim reduced in proportion to the shortfall in cover",
        "cancellation of the policy",
        "return of all premiums",
    ], 1, "Average applies the ratio of cover to value, so the insured bears part of the loss."),

    q("Contribution between insurers arises when", [
        "one policy covers several risks",
        "two policies cover the same risk and the same interest",
        "the insured is under-insured",
        "the premium is unpaid",
    ], 1, "The insured cannot recover more than the loss, so the insurers share it."),

    q("Marine insurance covers", [
        "ships and cargo in transit by sea",
        "only the ship",
        "only the cargo",
        "the harbour buildings",
    ], 0, "Hull and cargo are both within the marine policy."),

    q("Which class of insurance covers an employer against a dishonest cashier?", [
        "fire",
        "fidelity guarantee",
        "marine",
        "public liability",
    ], 1, "The fidelity policy covers the default of an employee in a position of trust."),

    q("A bonded warehouse allows the importer to", [
        "avoid duty altogether",
        "defer payment of duty until the goods leave the warehouse",
        "sell goods without a licence",
        "store goods free of charge permanently",
    ], 1, "Duty is suspended, not abolished; it becomes payable on removal."),

    q("The main advantage of containerisation is", [
        "higher freight rates",
        "faster handling and less damage in transit",
        "the need for more dock labour",
        "shorter shelf life",
    ], 1, "Standard boxes move between ship, rail and lorry without unloading the contents."),

    q("Which is a disadvantage of air transport?", [
        "slow speed",
        "high cost per tonne-kilometre",
        "unsuitable for perishables",
        "limited to short distances",
    ], 1, "Air is fast and safe but expensive, so it suits high-value or urgent cargo."),

    q("Reminder advertising is used mainly for", [
        "a brand that already has a large market share",
        "a product nobody has heard of",
        "a product being withdrawn",
        "a government notice",
    ], 0, "It defends an established position rather than introducing or arguing."),
]

BANK_7 = [
    q("Working capital is needed to", [
        "buy fixed assets",
        "finance the day-to-day cycle of buying, selling and collecting",
        "repay a mortgage",
        "pay dividends",
    ], 1, "Stock, debtors and cash absorb the money that keeps the cycle turning."),

    q("Which of these is a current asset?", [
        "motor vehicle",
        "premises",
        "trade debtors",
        "a ten-year loan",
    ], 2, "Debtors will be converted to cash within the trading cycle."),

    q("Which is a fixed liability?", [
        "trade creditors",
        "bank overdraft",
        "a five-year loan",
        "accrued wages",
    ], 2, "A loan repayable beyond one year is long-term, so it is not a current liability."),

    q("Capital employed is best computed as", [
        "current assets minus current liabilities",
        "fixed assets plus working capital",
        "share capital alone",
        "total assets minus stock",
    ], 1, "It is the long-term finance at work: fixed assets plus the net current assets."),

    q("The current ratio is", [
        "current assets ÷ current liabilities",
        "current liabilities ÷ current assets",
        "fixed assets ÷ current assets",
        "profit ÷ capital employed",
    ], 0, "It measures how many naira of current assets stand behind each naira of current liability."),

    q("Which source of finance carries no fixed charge on profit?", [
        "debenture",
        "bank loan",
        "ordinary share capital",
        "mortgage",
    ], 2, "A dividend is paid only if profit allows; interest must be paid regardless."),

    q("A share issued at ₦1 nominal but sold for ₦1.50 creates", [
        "a discount",
        "a premium of 50 kobo per share",
        "a debenture",
        "a liability of 50 kobo",
    ], 1, "The excess of issue price over nominal value is the share premium."),

    q("The stock exchange helps a company to raise new capital through", [
        "the secondary market",
        "the primary market",
        "the money market",
        "the foreign exchange market",
    ], 1, "New issues are sold in the primary market; the exchange's daily trading is the secondary market."),

    q("A stockbroker acts as", [
        "an insurer",
        "an intermediary between buyer and seller of securities",
        "a lender of last resort",
        "a registrar of companies",
    ], 1, "He executes orders on the floor for clients who cannot trade directly."),

    q("An invoice is dated 4 March with terms 2/10, net 30. A buyer who pays on 12 March gets", [
        "no discount",
        "a 2% cash discount",
        "a 10% trade discount",
        "a 30% discount",
    ], 1, "Payment within ten days earns the 2% cash discount; the net is due within thirty days."),

    q("A statement of account is best described as", [
        "a demand for immediate payment",
        "a summary of transactions and the balance due",
        "a receipt for cash",
        "an order for goods",
    ], 1, "It is a record for checking, not a legal demand."),

    q("A delivery note normally does not show", [
        "the quantity delivered",
        "the description of the goods",
        "the price of each item",
        "the date of delivery",
    ], 2, "Prices belong on the invoice; the delivery note proves what was received."),

    q("Which document does a seller issue when he has overcharged a buyer?", [
        "debit note",
        "credit note",
        "receipt",
        "quotation",
    ], 1, "The seller owes the reduction, so he issues a credit note."),

    q("Short-term finance is best suited to", [
        "buying premises",
        "financing stock and debtors",
        "acquiring a competitor",
        "repaying a debenture",
    ], 1, "The asset financed should match the term of the finance: stock turns over in months, so the loan should too."),

    q("A business with current assets of ₦4.8m and current liabilities of ₦4.0m has working capital of", [
        "₦0.8m",
        "₦4.0m",
        "₦4.8m",
        "₦8.8m",
    ], 0, "4.8 − 4.0 = 0.8 million naira."),
]

BANK_8 = [
    q("Government regulation of business is aimed at", [
        "maximising profit",
        "protecting consumers and maintaining standards",
        "increasing imports",
        "restricting competition",
    ], 1, "Standards of quality, safety and honesty are the objects of regulation."),

    q("Which agency is responsible for food and drug registration in Nigeria?", [
        "SON",
        "NAFDAC",
        "CAC",
        "NIPC",
    ], 1, "NAFDAC registers and controls food, drugs, cosmetics and packaged water."),

    q("The Standards Organisation of Nigeria is concerned with", [
        "company registration",
        "industrial standards and quality assurance",
        "bank supervision",
        "consumer complaints only",
    ], 1, "SON publishes and enforces Nigerian Industrial Standards."),

    q("A progressive income tax is one in which", [
        "the rate rises as income rises",
        "the rate falls as income rises",
        "the rate is constant",
        "everyone pays the same amount",
    ], 0, "Higher bands carry higher marginal rates."),

    q("Indirect taxes are those levied on", [
        "income",
        "profits",
        "goods and services",
        "capital gains",
    ], 2, "The tax is collected by the seller and passed on in the price, so the incidence is indirect."),

    q("Which tax is most likely to be regressive in effect?", [
        "a graduated income tax",
        "a flat-rate poll tax",
        "a tax on luxury cars",
        "a tax on company profits",
    ], 1, "A fixed sum falls more heavily on the poor as a proportion of income."),

    q("Commercialisation of a public enterprise means it must", [
        "be sold to private investors",
        "cover its costs while remaining state-owned",
        "be closed if unprofitable",
        "pay no tax",
    ], 1, "Ownership stays public; the discipline of the market is imported."),

    q("Which is an argument against privatisation?", [
        "it may raise efficiency",
        "it may leave essential services unprovided in remote areas",
        "it attracts private investment",
        "it reduces the burden on the treasury",
    ], 1, "The profit motive may not serve unprofitable social needs."),

    q("Consumer sovereignty is the principle that", [
        "producers decide what to make",
        "consumers' choices determine what is produced",
        "government fixes prices",
        "retailers set the pattern of production",
    ], 1, "Spending is a vote, and the market responds to the votes cast."),

    q("The right to consumer education exists because", [
        "education is free",
        "an informed buyer is better able to protect himself",
        "sellers demand it",
        "the law requires attendance",
    ], 1, "Information asymmetry is the root of consumer disadvantage."),

    q("Which is a legal rather than an ethical obligation?", [
        "paying the minimum wage",
        "donating to a community fund",
        "sponsoring a football tournament",
        "planting trees on the factory site",
    ], 0, "The minimum wage is fixed by law; the other three are voluntary."),

    q("Corporate social responsibility is best measured by", [
        "the size of the advertising budget",
        "the effect of the firm's operations on stakeholders",
        "the dividend declared",
        "the market share gained",
    ], 1, "CSR is about impact on employees, community and environment, not publicity spend."),

    q("A firm that publishes false claims about a competitor's product is", [
        "competing fairly",
        "engaging in unfair competition",
        "exercising consumer sovereignty",
        "practising CSR",
    ], 1, "Disparagement by falsehood is an abuse of market power and an offence under competition law."),

    q("Which best explains why government provides public goods?", [
        "they are profitable",
        "they are non-excludable and would be under-provided by the market",
        "firms are forbidden to provide them",
        "consumers refuse to pay for them",
    ], 1, "Street lighting or defence cannot easily be charged for, so private supply would be too small."),

    q("An effective consumer protection regime requires", [
        "legislation alone",
        "legislation, enforcement and consumer awareness together",
        "advertising alone",
        "price control alone",
    ], 1, "A right without enforcement and without a buyer who knows it exists is not a right in practice."),
]

BANK = {1: BANK_1, 2: BANK_2, 3: BANK_3, 4: BANK_4,
        5: BANK_5, 6: BANK_6, 7: BANK_7, 8: BANK_8}
