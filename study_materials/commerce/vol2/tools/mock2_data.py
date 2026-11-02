"""Paper 2 — a second forty questions, weighted the same way but angled at application.

Distribution: money and banking 10, insurance 6, warehousing, transport and
communication 5, advertising and sales promotion 5, the marketing mix and research 6,
international organisations 4, management, office and e-commerce 4.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


PAPER_2 = [
    # ---- money and banking (1-10) ------------------------------------------
    q("Barter is inefficient mainly because it requires", ["a central bank", "a double coincidence of wants",
      "legal tender", "a stock exchange"], 1, "Both parties must want what the other has, at once."),
    q("Money that holds purchasing power over a year is said to possess", ["portability", "stability of value",
      "divisibility", "homogeneity"], 1, "Stable value is what makes saving worthwhile."),
    q("Near money is illustrated by", ["a current account", "a treasury bill", "a naira note", "a cheque"], 1,
      "It turns into money quickly and at little loss."),
    q("The central bank's function of lending to a bank in temporary difficulty is called", ["open market operation",
      "lender of last resort", "moral suasion", "clearing"], 1, "It lends when no one else will."),
    q("An increase in the cash reserve ratio will", ["expand credit", "reduce the credit multiplier",
      "lower interest rates", "raise exports"], 1, "Less of each deposit is free to lend."),
    q("With a cash ratio of 10 per cent, a deposit of ₦20,000 supports total deposits of", ["₦40,000", "₦100,000",
      "₦200,000", "₦220,000"], 2, "Multiplier 10; 20,000 × 10 = ₦200,000."),
    q("Using those figures, credit created is", ["₦180,000", "₦200,000", "₦20,000", "₦100,000"], 0,
      "₦200,000 less the original ₦20,000."),
    q("A savings account is usually operated with", ["a cheque book", "a passbook or card", "a share certificate",
      "a debenture"], 1, "Withdrawal is by passbook or card, often with limits."),
    q("A bank draft is safer than a personal cheque because it is", ["cheaper", "drawn by a bank on itself",
      "not a document of title", "post-dated"], 1, "The bank's own promise is certain."),
    q("A depositor's savings are protected up to a limit by the", ["central bank's lender-of-last-resort facility", "Nigeria Deposit Insurance Corporation", "Securities and Exchange Commission", "Federal Ministry of Finance"], 1,
      "Deposit insurance repays depositors up to a statutory limit if a bank fails."),

    # ---- insurance (11-16) --------------------------------------------------
    q("A risk that is certain to happen", ["is cheap to insure", "cannot be insured", "is insured by the state",
      "is reinsured"], 1, "There is nothing to pool if the loss is certain."),
    q("Utmost good faith requires the insured to", ["pay promptly", "disclose every material fact", "avoid all risk",
      "insure fully"], 1, "Non-disclosure can void the policy."),
    q("A trader's stock worth ₦12 million is insured for ₦9 million. A loss of ₦4 million is settled at", ["₦4.0 million",
      "₦3.0 million", "₦2.7 million", "₦1.0 million"], 1, "4m × (9 ÷ 12) = ₦3.0 million."),
    q("A life policy pays the sum assured rather than the value of the loss because", ["a life has no market value that can be indemnified", "premiums are paid for many years", "the law requires a fixed sum", "it is a general policy"], 0,
      "There is no market value for a life, so the sum is agreed in advance."),
    q("Two policies on one warehouse mean the insured may", ["collect twice", "collect once, with contribution between insurers",
      "collect nothing", "choose one and ignore the other"], 1, "Double insurance cannot produce a profit."),
    q("The party who assesses a loss for the insurer is the", ["broker", "loss adjuster", "agent", "underwriter"], 1,
      "The adjuster surveys and recommends the payment."),

    # ---- warehousing, transport, communication (17-21) ---------------------
    q("Warehousing performs all these functions EXCEPT", ["storage", "price stabilisation", "grading", "manufacture"], 3,
      "A warehouse holds and prepares goods; it does not make them."),
    q("Goods in a bonded warehouse attract duty when they are", ["received", "graded", "removed for home use",
      "insured"], 2, "Duty is suspended until removal."),
    q("An airway bill differs from a bill of lading because an airway bill is", ["a document of title",
      "not a document of title", "a charter party", "an insurance policy"], 1, "Only the bill of lading is a document of title."),
    q("A consignment of fresh fish must reach a market 400 km away quickly. The suitable mode is", ["rail", "water",
      "air or refrigerated road", "pipeline"], 2, "Perishables need speed and temperature control."),
    q("Without communication, a bargain between traders in two distant towns would require", ["a bank overdraft", "a personal meeting for every term of the contract", "a warehouse receipt", "an insurance policy"], 1,
      "Communication lets the parties agree without travelling to meet."),

    # ---- advertising and sales promotion (22-26) --------------------------
    q("A firm mentioned favourably in a newspaper report has received", ["advertising", "personal selling", "publicity", "sales promotion"], 2,
      "The mention is unpaid and uncontrolled, which is publicity."),
    q("An advertisement that reminds the market of a familiar brand is", ["informative", "persuasive", "reminder",
      "institutional"], 2, "Reminder advertising maintains awareness."),
    q("A trade-in allowance is a form of", ["advertising", "sales promotion", "publicity", "institutional advertising"], 1,
      "It is a short-term inducement to buy now."),
    q("A pack that protects the goods, carries the brand and states the weight is performing the functions of", ["advertising only", "protection, identification and information", "pricing and distribution", "manufacture and storage"], 1,
      "The three functions are protection, identification and information."),
    q("Advertising a cheap consumer good to a mass market is best done through", ["a trade magazine", "direct mail",
      "television", "a professional journal"], 2, "Mass reach at a low cost per contact."),

    # ---- marketing mix and research (27-32) -------------------------------
    q("A firm that designs its product only after surveying buyers' wants is following", ["the selling concept", "the marketing concept", "the product concept", "the production concept"], 1,
      "The market is studied first, which is the marketing concept."),
    q("Offering retailers 60 days' credit is a decision under", ["product", "price", "place", "promotion"], 1,
      "Credit terms are part of the price."),
    q("Trying a new product in one town before a national launch is", ["a survey", "a test market", "secondary research",
      "an interview"], 1, "A test market is a controlled experiment."),
    q("Dividing a market by lifestyle is segmentation on", ["geographic", "demographic", "psychographic",
      "behavioural"], 2, "Lifestyle and values are psychographic."),
    q("A wholesaler is most useful to a producer when", ["buyers are few and large", "buyers are many and scattered",
      "goods are perishable", "the producer has its own sales force"], 1, "The wholesaler reaches many small outlets."),
    q("A buyer who chooses one shop because it allows credit is influenced by a", ["rational motive", "emotional motive", "patronage motive", "product motive"], 2,
      "Patronage motives decide where the buyer goes, not what he buys."),

    # ---- international organisations (33-36) ------------------------------
    q("A loan for a hydro-electric dam, repayable over thirty years, would come from the", ["IMF", "World Bank", "WTO", "ILO"], 1,
      "Long-term project finance is the Bank's business."),
    q("The agreement that phases out tariffs among African countries is", ["ECOWAS", "AfCFTA", "the African Union", "OPEC"], 1,
      "AfCFTA is the continental free-trade area, phased in."),
    q("UNCTAD's main work is", ["lending", "research and advocacy for developing countries", "settling disputes",
      "issuing currency"], 1, "It studies and argues; it does not lend."),
    q("The instrument that limits the number of tonnes of rice that may be imported is a", ["tariff", "quota", "embargo", "subsidy"], 1,
      "A quota restricts quantity, not price."),

    # ---- management, office and e-commerce (37-40) ------------------------
    q("Recruiting and training staff is the management function of", ["planning", "organising", "staffing",
      "controlling"], 2, "Staffing fills the structure."),
    q("Filing invoices by date is", ["alphabetical filing", "numerical filing", "chronological filing",
      "subject filing"], 2, "Date order is chronological."),
    q("The greatest risk to a buyer who pays for goods on-line is", ["the goods arriving late", "paying and never receiving the goods", "paying too little", "receiving a receipt"], 1,
      "The buyer pays before he can inspect, so non-delivery is the risk."),
    q("A business plan is important to a lender because it shows", ["the owner's family", "whether the loan can be repaid",
      "the shop sign", "the tax rate"], 1, "The cash flow and market case evidence repayment."),
]
