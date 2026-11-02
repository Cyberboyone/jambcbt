"""Paper 1 — forty questions in the proportions of a real UTME Accounting paper.

Distribution: concepts and equation 8, documents and trial balance 6, control accounts
and reconciliation 6, final accounts 10, errors and suspense 4, partnerships 3,
companies and not-for-profits 3.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


PAPER_1 = [
    # ---- concepts and equation (1-8) ----------------------------------------
    q('Accounting differs from bookkeeping because accounting includes', [
        'the recording of transactions',
        'the interpretation of the accounts',
        'the filing of source documents',
        'the writing of the cash book',
    ], 1, 'Bookkeeping records and classifies; accounting designs the system, reports and interprets the result.'),

    q('A firm values its machinery at cost less depreciation although its market value has risen. This follows the', [
        'realisation concept',
        'going concern and historical cost concepts',
        'money measurement concept',
        'materiality concept',
    ], 1, 'The firm intends to keep the machine (going concern) and records it at what it cost (historical cost).'),

    q("A trader's private electricity bill was paid from the business account and debited to rent. This is", [
        'an expense of the business',
        'drawings',
        'a loan to the owner',
        'a liability',
    ], 1, 'Under the business entity concept, private spending is drawings, not an expense.'),

    q('Assets are ₦920,000 and capital is ₦540,000. Liabilities are', [
        '₦380,000',
        '₦540,000',
        '₦1,460,000',
        '₦920,000',
    ], 0, 'Liabilities = assets − capital = 920,000 − 540,000 = ₦380,000.'),

    q('Goods sold on credit to Ngozi for ₦18,000 are recorded as', [
        'debit sales, credit Ngozi',
        'debit Ngozi, credit sales',
        'debit cash, credit sales',
        'debit Ngozi, credit cash',
    ], 1, 'The debtor rises (debit) and the income is credited.'),

    q('A firm buys a delivery van on credit. The effect on the accounting equation is', [
        'assets increase and capital increases',
        'assets and liabilities increase equally',
        'assets decrease and liabilities increase',
        'liabilities increase and capital decreases',
    ], 1, 'The van is an asset and the unpaid supplier is a liability, so both sides of the equation rise by the same amount.'),

    q('An item is treated as an expense although it will last several years because of the', [
        'materiality concept',
        'realisation concept',
        'entity concept',
        'consistency concept',
    ], 0, 'An item too small to affect a decision may be expensed rather than capitalised.'),

    q('Closing capital is ₦700,000, drawings ₦80,000 and profit ₦120,000. Opening capital was', [
        '₦500,000',
        '₦540,000',
        '₦660,000',
        '₦900,000',
    ], 2, '700,000 − 120,000 + 80,000 = ₦660,000.'),

    # ---- documents and trial balance (9-14) ---------------------------------
    q('The document issued by a buyer who claims a reduction from a supplier is a', [
        'credit note',
        'debit note',
        'receipt',
        'statement of account',
    ], 1, "The buyer debits the seller's account, so the document is a debit note."),

    q('Credit purchases are first entered in the', [
        'sales day book',
        'purchases day book',
        'general journal',
        'returns outwards book',
    ], 1, 'The purchases day book lists credit purchases from invoices received.'),

    q('Which item would be recorded in the general journal?', [
        'a credit sale of goods',
        'a credit purchase of goods',
        'the correction of a wrong posting',
        'cash received from a debtor',
    ], 2, 'Corrections and other non-routine entries belong in the general journal.'),

    q('A trial balance showed debits of ₦740,000 and credits of ₦695,000. The difference is', [
        '₦45,000',
        '₦45,000 credit',
        '₦90,000',
        'nil',
    ], 0, 'The debits exceed the credits by ₦45,000, which is entered on the credit side of the suspense account.'),

    q('Which account normally carries a credit balance?', [
        'purchases',
        'returns inwards',
        'provision for doubtful debts',
        'drawings',
    ], 2, 'A provision is a credit balance, deducted from debtors in the statement of financial position.'),

    q('A trial balance that agrees proves that', [
        'no errors were made',
        'total debits equal total credits',
        'all transactions were recorded',
        'the profit is correct',
    ], 1, 'It is an arithmetic check on the double entry and nothing more.'),

    # ---- control accounts and reconciliation (15-20) ------------------------
    q('A sales ledger control account is used to', [
        'record cash sales',
        'summarise the debtors ledger',
        'value closing stock',
        'compute depreciation',
    ], 1, 'It carries the totals posted from the day books and checks the personal ledger.'),

    q('Opening debtors ₦260,000; credit sales ₦980,000; receipts ₦870,000; returns inwards ₦25,000; bad debts ₦10,000. Closing debtors are', [
        '₦335,000',
        '₦345,000',
        '₦360,000',
        '₦385,000',
    ], 0, '260,000 + 980,000 − 870,000 − 25,000 − 10,000 = ₦335,000.'),

    q('A bank statement shows a credit balance of ₦540,000. Unpresented cheques are ₦90,000 and uncredited lodgements ₦35,000. The cash book balance is', [
        '₦415,000',
        '₦485,000',
        '₦595,000',
        '₦665,000',
    ], 1, '540,000 + 35,000 − 90,000 = ₦485,000.'),

    q('Bank charges of ₦15,000 appear only on the statement. The entry in the cash book is', [
        'a debit of ₦15,000',
        'a credit of ₦15,000',
        'no entry',
        'a debit to the bank statement',
    ], 1, "A charge reduces the firm's money at the bank, so the cash book is credited."),

    q('An overdraft shown in the cash book is presented in the statement of financial position as', [
        'a current asset',
        'a current liability',
        'part of capital',
        'a long-term loan',
    ], 1, 'The bank is owed money that will be settled within the year, so it is a current liability.'),

    q('Unpresented cheques are shown in the reconciliation as', [
        'an addition to the statement balance',
        'a deduction from the statement balance',
        'an addition to the cash book balance',
        'an item to be ignored',
    ], 1, 'The statement is higher than the truth by the cheques not yet presented.'),

    # ---- final accounts (21-30) ---------------------------------------------
    q('Opening stock ₦50,000; purchases ₦280,000; carriage inwards ₦20,000; closing stock ₦60,000. Cost of sales is', [
        '₦290,000',
        '₦310,000',
        '₦250,000',
        '₦350,000',
    ], 0, '50,000 + 280,000 + 20,000 − 60,000 = ₦290,000.'),

    q('Opening stock ₦60,000; purchases ₦340,000; closing stock ₦80,000; sales ₦580,000. Gross profit is', [
        '₦200,000',
        '₦240,000',
        '₦260,000',
        '₦280,000',
    ], 2, 'Cost of sales 60,000 + 340,000 − 80,000 = 320,000; gross profit 580,000 − 320,000 = ₦260,000.'),

    q('Which of these is a selling and distribution expense?', [
        'carriage inwards',
        'carriage outwards',
        'import duty on goods bought',
        'wages of factory machine operators',
    ], 1, 'Carriage outwards is the cost of delivering goods to the customer.'),

    q('Rent paid ₦90,000 includes ₦15,000 prepaid and ₦20,000 is owing at the year end. The charge is', [
        '₦55,000',
        '₦75,000',
        '₦95,000',
        '₦125,000',
    ], 2, '90,000 − 15,000 + 20,000 = ₦95,000.'),

    q('A machine costing ₦1,200,000 is depreciated at 15% straight line. The annual charge is', [
        '₦18,000',
        '₦150,000',
        '₦180,000',
        '₦1,020,000',
    ], 2, '15% of ₦1,200,000 = ₦180,000.'),

    q('Debtors are ₦300,000 and a 4% provision is required. The existing provision is ₦5,000. The charge is', [
        '₦5,000',
        '₦7,000',
        '₦12,000',
        '₦17,000',
    ], 1, 'New provision 12,000 less existing 5,000 = ₦7,000.'),

    q('Insurance of ₦48,000 was paid for the year to 31 December, but ₦12,000 of it relates to the following year. The amount carried forward is', [
        '₦48,000',
        '₦36,000',
        '₦12,000',
        '₦60,000',
    ], 2, 'Only the part that belongs to next year is carried forward as a prepayment.'),

    q('Current assets ₦720,000 including stock of ₦300,000; current liabilities ₦280,000. The acid test ratio is', [
        '1.5 : 1',
        '2.6 : 1',
        '0.9 : 1',
        '3.6 : 1',
    ], 0, '(720,000 − 300,000) ÷ 280,000 = 1.5 : 1.'),

    q('If closing stock is omitted from the accounts,', [
        'gross profit is overstated',
        'gross profit is understated',
        'gross profit is unaffected',
        'net profit is unaffected',
    ], 1, 'Cost of sales rises by the omitted stock, so gross profit falls.'),

    q('Drawings appear in the statement of financial position as', [
        'an expense',
        'a deduction from capital',
        'a current liability',
        'a current asset',
    ], 1, "They reduce the owner's stake; they are not a cost of trading."),

    # ---- errors and suspense (31-34) ----------------------------------------
    q('Which error leaves the trial balance in agreement?', [
        'posting a sale without its double entry',
        'recording a purchase of ₦7,000 as ₦700 in both accounts',
        'omitting a credit balance from the trial balance',
        'overcasting the debit column of the trial balance',
    ], 1, 'Both sides are equally wrong, so the totals still agree.'),

    q("A purchase of ₦9,000 was entered in the purchases account as ₦900 and in the creditor's account as ₦900. The trial balance will", [
        'not agree, and the suspense account will be credited',
        'not agree, and the suspense account will be debited',
        'agree, although both accounts are wrong',
        'agree, and the accounts are correct',
    ], 2, 'The same wrong figure was entered on both sides, so the columns still agree although the ledger is wrong.'),

    q('Sales overcast by ₦30,000 will cause profit to be', [
        'overstated by ₦30,000',
        'understated by ₦30,000',
        'unaffected',
        'overstated by ₦60,000',
    ], 0, 'Income was recorded too high, so profit is too high.'),

    q('If debits exceed credits, the suspense account is', [
        'debited',
        'credited',
        'not required',
        'closed to capital',
    ], 1, 'The missing amount must be added to the credit column, so suspense is credited.'),

    # ---- partnerships (35-37) -----------------------------------------------
    q('Where there is no partnership deed, profit is shared', [
        'in the capital ratio',
        'equally',
        'according to time devoted',
        'by the senior partner',
    ], 1, 'The statutory default is equal shares.'),

    q("A partner's loan to the firm is shown in the balance sheet as", [
        'part of capital',
        'a long-term liability',
        'a current asset',
        'a deduction from capital',
    ], 1, 'The partner is a creditor for the loan, which is repaid before capital.'),

    q('Net profit ₦600,000; salaries ₦120,000; interest on capital ₦30,000. Residual profit is', [
        '₦450,000',
        '₦480,000',
        '₦510,000',
        '₦750,000',
    ], 0, '600,000 − 120,000 − 30,000 = ₦450,000.'),

    # ---- companies and clubs (38-40) ----------------------------------------
    q('A company issued 100,000 debentures of ₦10 each at 8 per cent. The annual interest is', [
        '₦80,000',
        '₦800,000',
        '₦8,000',
        '₦100,000',
    ], 0, '100,000 × ₦10 × 8 per cent = ₦80,000.'),

    q('Profit after tax ₦900,000; preference dividend ₦60,000; ordinary dividend ₦240,000. Retained profit is', [
        '₦600,000',
        '₦660,000',
        '₦840,000',
        '₦1,200,000',
    ], 0, '900,000 − 60,000 − 240,000 = ₦600,000.'),

    q("A club's receipts and payments account showed ₦120,000 at the start of the year and ₦150,000 at the end. This means that", [
        'the club made a surplus of ₦30,000',
        "the club's cash increased by ₦30,000",
        "the club's income for the year was ₦150,000",
        'nothing at all can be deduced',
    ], 1, 'The account is a cash summary: it measures the movement in cash, not the surplus.'),

]
