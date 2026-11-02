"""Paper 2 — forty questions in the proportions of a real UTME Accounting paper.

Distribution: concepts and equation 7, documents and trial balance 6, control accounts
and reconciliation 6, final accounts 10, errors and suspense 5, partnerships 3,
companies and not-for-profits 3.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


PAPER_2 = [
    # ---- concepts and equation (1-7) ----------------------------------------
    q('The accounting process begins with', [
        'the trial balance',
        'the identification of transactions',
        'the balance sheet',
        'the appropriation account',
    ], 1, 'Nothing can be recorded until a transaction with a financial effect has been identified.'),

    q('A provision for doubtful debts is an application of', [
        'prudence',
        'realisation',
        'consistency',
        'materiality',
    ], 0, 'Prudence provides for known losses but never anticipates profit.'),

    q('Revenue is recognised when goods are delivered rather than when the order is received because of the', [
        'accruals concept',
        'realisation concept',
        'entity concept',
        'going concern concept',
    ], 1, 'Realisation fixes the point of sale at delivery.'),

    q('A firm has liabilities of ₦270,000 and capital of ₦430,000. Its assets are', [
        '₦160,000',
        '₦430,000',
        '₦700,000',
        '₦270,000',
    ], 2, 'Assets = liabilities + capital = 270,000 + 430,000 = ₦700,000.'),

    q('Payment of a creditor by cheque will', [
        'increase assets and liabilities',
        'reduce assets and reduce liabilities',
        'reduce assets only',
        'increase capital',
    ], 1, 'Cash falls and the liability falls by the same amount, so the equation holds.'),

    q('Which account is increased by a credit entry?', [
        'purchases',
        'rent paid',
        'capital',
        'debtors',
    ], 2, 'Credits increase liabilities, income and capital.'),

    q('The expanded accounting equation shows that drawings', [
        'increase capital',
        'reduce capital',
        'are an expense',
        'increase liabilities',
    ], 1, 'Capital = liabilities... assets = liabilities + capital + profit − drawings.'),

    # ---- documents and trial balance (8-13) ---------------------------------
    q('Goods worth ₦8,000 are returned to a supplier. The supplier will send', [
        'a debit note',
        'a credit note',
        'a receipt',
        'a statement of account',
    ], 1, "The supplier accepts the return and reduces the buyer's account with a credit note."),

    q('Goods returned to a supplier are recorded in the', [
        'returns inwards book',
        'returns outwards book',
        'sales day book',
        'cash book',
    ], 1, 'Returns outwards records goods the firm sends back.'),

    q('The cash book is both', [
        'a journal and a ledger account',
        'a document and a journal',
        'a trial balance and a ledger',
        'a statement and a journal',
    ], 0, 'It records cash transactions and also serves as the cash account.'),

    q('Which of these would appear in the debit column of a trial balance?', [
        'capital',
        'creditors',
        'machinery',
        'sales',
    ], 2, 'An asset carries a debit balance.'),

    q('The trial balance does NOT reveal', [
        'a one-sided posting',
        'an addition error in the ledger',
        'an error of principle',
        'a wrong balance in the trial balance',
    ], 2, 'An error of principle touches both sides equally, so the totals still agree.'),

    q('A trial balance shows debits of ₦960,000 and credits of ₦912,000. The suspense account is', [
        'debited with ₦48,000',
        'credited with ₦48,000',
        'credited with ₦96,000',
        'not required',
    ], 1, 'The credits are short by ₦48,000, so suspense is credited with that amount.'),

    # ---- control accounts and reconciliation (14-19) ------------------------
    q('The purchases ledger control account summarises', [
        'the debtors ledger',
        'the creditors ledger',
        'the nominal ledger',
        'the cash book',
    ], 1, 'One account controls all the individual creditors.'),

    q('Closing creditors ₦180,000; opening creditors ₦150,000; payments ₦620,000; returns outwards ₦20,000. Credit purchases were', [
        '₦590,000',
        '₦630,000',
        '₦650,000',
        '₦670,000',
    ], 3, 'Purchases = 180,000 − 150,000 + 620,000 + 20,000 = ₦670,000.'),

    q('A cash book shows a debit balance of ₦480,000. Unrecorded bank charges are ₦20,000 and a direct credit is ₦60,000. The adjusted balance is', [
        '₦440,000',
        '₦480,000',
        '₦520,000',
        '₦560,000',
    ], 2, '480,000 − 20,000 + 60,000 = ₦520,000.'),

    q('Which item requires an entry in the cash book?', [
        'an unpresented cheque',
        'a lodgement not yet credited',
        'a standing order',
        'a cheque not yet presented',
    ], 2, 'The bank has already paid it, so the firm must record it.'),

    q('An overdraft appears in the reconciliation as', [
        'a debit balance in the cash book',
        'a credit balance in the cash book',
        'an asset',
        'a capital item',
    ], 1, "Money owed to the bank is a credit balance in the firm's cash book."),

    q("An error by the bank in the firm's account is", [
        'corrected in the cash book',
        'reported to the bank for correction',
        'ignored',
        'charged to profit',
    ], 1, "The firm cannot alter the bank's record, so it asks the bank to correct it."),

    # ---- final accounts (20-29) ---------------------------------------------
    q("A trader's sales were ₦500,000 and his mark-up on cost was 25 per cent. His gross profit was", [
        '₦100,000',
        '₦125,000',
        '₦120,000',
        '₦80,000',
    ], 0, 'Cost is 500,000 ÷ 1.25 = ₦400,000, so the gross profit is ₦100,000.'),

    q('Sales ₦900,000; cost of sales ₦630,000. The gross profit margin is', [
        '27%',
        '30%',
        '43%',
        '70%',
    ], 1, 'Gross profit 270,000 ÷ 900,000 = 30%.'),

    q('A trader marks up by 20% on cost. His margin is', [
        '16.7%',
        '20%',
        '25%',
        '80%',
    ], 0, 'Cost 100, profit 20, price 120; margin = 20/120 = 16.7%.'),

    q('Insurance of ₦240,000 was paid on 1 July for twelve months. The charge for the year to 31 December is', [
        '₦60,000',
        '₦120,000',
        '₦180,000',
        '₦240,000',
    ], 1, 'Six months of cover belongs to this year: 240,000 × 6/12 = ₦120,000.'),

    q('A vehicle costs ₦2,000,000 and is depreciated at 10% reducing balance. The charge in year two is', [
        '₦160,000',
        '₦180,000',
        '₦200,000',
        '₦400,000',
    ], 1, 'Year one 200,000 leaves 1,800,000; year two is 10% of that = ₦180,000.'),

    q('Debtors ₦500,000; provision required 6%; existing provision ₦20,000. The charge is', [
        '₦10,000',
        '₦20,000',
        '₦30,000',
        '₦50,000',
    ], 0, 'New provision 30,000 less existing 20,000 = ₦10,000.'),

    q('Accumulated depreciation is shown as', [
        'a current liability',
        'a deduction from the asset',
        'an expense of the year',
        'an addition to capital',
    ], 1, 'It is the total written off to date, netted against the cost of the asset.'),

    q('A firm has current assets of ₦450,000 and current liabilities of ₦180,000. Its working capital is', [
        '₦270,000',
        '₦630,000',
        '₦450,000',
        '₦180,000',
    ], 0, '450,000 − 180,000 = ₦270,000.'),

    q('Net profit ₦180,000; capital employed ₦1,200,000. Return on capital employed is', [
        '6.7%',
        '15%',
        '18%',
        '66.7%',
    ], 1, '180,000 ÷ 1,200,000 = 15%.'),

    q('Treating a revenue expense as a capital item will', [
        'overstate profit and overstate assets',
        'understate profit and understate assets',
        'overstate profit and understate assets',
        'have no effect',
    ], 0, 'The expense is missing from the profit calculation and an asset has been invented.'),

    # ---- errors and suspense (30-34) ----------------------------------------
    q('Which of these errors affects profit but leaves the trial balance in agreement?', [
        'a compensating error',
        'an error of principle',
        'the complete omission of a credit sale',
        'a wrong-side entry of ₦5,000',
    ], 2, 'Both sides of the sale are missing, so the trial balance agrees while the profit is understated.'),

    q('Which error is disclosed by the trial balance?', [
        'a sale posted twice',
        "a purchase omitted from the creditor's account only",
        'goods bought for the owner debited to purchases',
        "a sale to Ahmed posted to Ade's account",
    ], 1, 'Only one side of the double entry was posted, so the totals differ.'),

    q('A purchase of ₦18,000 was entered as ₦81,000 in both accounts. The error is', [
        '₦63,000 and does not affect the trial balance',
        '₦63,000 and does affect the trial balance',
        '₦99,000 and does affect the trial balance',
        'nil',
    ], 0, 'Both sides are equally wrong, so the trial balance agrees but purchases and creditors are overstated by ₦63,000.'),

    q('A trial balance difference of ₦360 is most likely caused by', [
        'an error of principle',
        'a transposition',
        'an error of omission',
        'a compensating error',
    ], 1, 'A difference divisible by nine suggests reversed digits.'),

    q('Sales undercast by ₦40,000 means profit was', [
        'overstated by ₦40,000',
        'understated by ₦40,000',
        'unaffected',
        'understated by ₦80,000',
    ], 1, 'Income was recorded too low, so profit is too low.'),

    # ---- partnerships (35-37) -----------------------------------------------
    q('A partner who contributes capital but does not manage is a', [
        'nominal partner',
        'sleeping partner',
        'limited partner',
        'quasi partner',
    ], 1, 'Sleeping describes management, not liability.'),

    q("After all appropriations, the balance on a partner's current account represents", [
        'the capital he contributed',
        'undrawn profits or accumulated drawings',
        "the firm's reserves",
        'the goodwill of the firm',
    ], 1, 'The capital account holds the permanent stake; the current account holds the running balance of profit and drawings.'),

    q("A partner's current account is debited with", [
        'salary',
        'interest on capital',
        'drawings',
        'share of profit',
    ], 2, 'Drawings reduce what the firm owes the partner.'),

    # ---- companies and clubs (38-40) ----------------------------------------
    q('A share is', [
        'a loan to the company',
        'part ownership of the company',
        'a fixed-interest security',
        'a bank deposit',
    ], 1, 'The shareholder owns a part of the company; the debenture holder lends to it.'),

    q('A dividend is calculated on the', [
        'market price of the share',
        'nominal value of the share',
        'book value of the assets',
        'retained profit only',
    ], 1, 'Dividend rates are quoted on nominal value, which is why a 10% share of ₦1 pays 10 kobo.'),

    q('Subscriptions received in advance by a club are', [
        'income of the current year',
        'a liability at the year end',
        'a fixed asset',
        'part of the accumulated fund',
    ], 1, 'The club owes the member a period of membership, so the money is a liability until earned.'),

]
