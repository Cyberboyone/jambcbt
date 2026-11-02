"""The 120-question master bank for Financial Accounting Volume 1 — fifteen per chapter.

No stem in this file repeats a stem in the chapter drills or in either paper.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)

BANK_1 = [
    q('Accounting information is described as reliable when it is', [
        'available in time',
        'free from bias and material error',
        'expressed in money',
        'brief',
    ], 1, 'Reliability is freedom from bias and material error; timeliness is a separate quality.'),

    q('Which is an internal user of accounting information?', [
        'a shareholder',
        'the finance manager',
        'a supplier',
        'the tax authority',
    ], 1, 'The finance manager works inside the firm; the others are outsiders.'),

    q('The concept that requires a business to be treated as separate from its owner is', [
        'going concern',
        'business entity',
        'consistency',
        'prudence',
    ], 1, 'Without it, drawings and private spending would be indistinguishable from business costs.'),

    q('Depreciation is justified mainly by the', [
        'realisation concept',
        'accruals concept',
        'materiality concept',
        'money measurement concept',
    ], 1, 'The cost is matched to the periods that benefit from the asset.'),

    q('Which item cannot be recorded because of the money measurement concept?', [
        'a machine bought for ₦2m',
        'the skill and loyalty of the workforce',
        'a bank loan',
        'stock bought on credit',
    ], 1, 'A skilled workforce cannot be measured reliably in money, so it is not an asset.'),

    q('A firm that keeps its depreciation method unchanged is applying', [
        'prudence',
        'consistency',
        'realisation',
        'entity',
    ], 1, 'Consistency makes the accounts of successive years comparable.'),

    q("The auditor's report is addressed mainly to", [
        'the management',
        'the shareholders',
        'the bank',
        'the tax office',
    ], 1, 'The auditor is appointed by the shareholders to report to them.'),

    q('Cost accounting is concerned chiefly with', [
        'the annual published accounts',
        'the cost of products, jobs and processes',
        'the audit of cash',
        'the tax computation',
    ], 1, 'It builds the cost of output for management.'),

    q('Which is a limitation of financial accounting?', [
        'it is objective',
        'it records only what can be measured in money',
        'it is audited',
        'it follows standards',
    ], 1, 'Non-financial factors such as staff morale are excluded.'),

    q("A company's annual accounts are prepared for a year because of the", [
        'entity concept',
        'periodicity concept',
        'prudence concept',
        'realisation concept',
    ], 1, 'Accounts are drawn for artificial periods although the business continues.'),

    q('Which statement is a position statement?', [
        'trading account',
        'profit and loss account',
        'balance sheet',
        'cash flow forecast',
    ], 2, 'A position at a date is the balance sheet.'),

    q('Bookkeeping ends with', [
        'interpretation',
        'recording and classifying',
        'auditing',
        'budgeting',
    ], 1, "Recording and classifying are the bookkeeper's work; accounting goes further."),

    q('Which body issues financial reporting standards in Nigeria?', [
        'CAC',
        'FRCN',
        'CBN',
        'FIRS',
    ], 1, 'The Financial Reporting Council of Nigeria issues and adopts the standards.'),

    q('A provision for doubtful debts is shown in the balance sheet as', [
        'an asset',
        'a deduction from debtors',
        'a liability',
        'part of capital',
    ], 1, 'The net figure of debtors is what the firm expects to collect.'),

    q('Accounting is best described as', [
        'the recording of cash',
        'the measurement and communication of financial information',
        'the preparation of tax returns',
        'the audit of companies',
    ], 1, 'Measurement and communication, for the purpose of decisions.'),

]

BANK_2 = [
    q('If assets are ₦640,000 and capital ₦390,000, liabilities are', [
        '₦250,000',
        '₦390,000',
        '₦1,030,000',
        '₦640,000',
    ], 0, 'Liabilities = 640,000 − 390,000 = ₦250,000.'),

    q('A credit purchase of stock affects', [
        'assets only',
        'liabilities only',
        'assets and liabilities',
        'capital only',
    ], 2, 'Stock rises and creditors rise.'),

    q('A cash sale at a loss affects', [
        'assets and capital',
        'assets only',
        'liabilities',
        'capital only',
    ], 0, 'Cash rises by less than the stock falls, so assets fall and capital falls by the loss.'),

    q('The double entry for a cash purchase of stock is', [
        'debit purchases, credit cash',
        'debit cash, credit purchases',
        'debit stock, credit creditors',
        'debit creditors, credit purchases',
    ], 0, 'Purchases (expense) is debited and cash (asset) is credited.'),

    q('The double entry for goods returned by a customer is', [
        'debit returns inwards, credit debtor',
        'debit debtor, credit returns inwards',
        'debit sales, credit debtor',
        'debit returns outwards, credit debtor',
    ], 0, "Returns inwards is debited and the debtor's balance is reduced."),

    q('Which account is increased by a debit?', [
        'capital',
        'sales',
        'drawings',
        'creditors',
    ], 2, 'Debits increase expenses, assets and drawings.'),

    q('If a transaction is entered twice on the debit side, the trial balance', [
        'will agree',
        'will differ by twice the amount',
        'will differ by the amount',
        'will be unaffected',
    ], 1, 'Two debits and no credit double the difference.'),

    q('A business has assets of ₦1,000,000 and liabilities of ₦400,000. Its capital is', [
        '₦600,000',
        '₦1,400,000',
        '₦400,000',
        '₦1,000,000',
    ], 0, '1,000,000 − 400,000 = ₦600,000.'),

    q('Withdrawing cash for private use is recorded as', [
        'debit expenses, credit cash',
        'debit drawings, credit cash',
        'debit capital, credit cash',
        'debit cash, credit drawings',
    ], 1, "Drawings is debited because it reduces the owner's stake."),

    q('The balance of an asset account is normally', [
        'a credit',
        'a debit',
        'nil',
        'a capital balance',
    ], 1, 'Assets are debit balances.'),

    q('Which is a credit balance?', [
        'machinery',
        'stock',
        'bank overdraft',
        'prepaid rent',
    ], 2, 'An overdraft is a liability, so it carries a credit balance.'),

    q('The accounting equation is unaffected by', [
        'a credit sale',
        'a cash purchase of stock',
        'a loan received',
        'drawings',
    ], 1, 'One asset replaces another, so the equation is unchanged.'),

    q('Interest on capital is an appropriation because', [
        'it is paid to outsiders',
        'it divides profit among the owners',
        'it reduces the tax',
        'it is a loan',
    ], 1, 'The partners are the owners, so paying them divides the profit.'),

    q('Balancing an account means', [
        'closing it permanently',
        'making the two sides equal and carrying the balance down',
        'posting it to the trial balance',
        'transferring it to capital',
    ], 1, 'The difference is written on the smaller side, and brought down on the other.'),

    q('If total debits equal total credits, the books', [
        'are free of error',
        'may still contain errors of principle',
        'must be correct',
        'must be audited',
    ], 1, 'Errors that affect both sides equally survive the trial balance.'),

]

BANK_3 = [
    q('The document that proves a payment has been made is', [
        'an invoice',
        'a receipt',
        'a delivery note',
        'a credit note',
    ], 1, 'The receipt acknowledges money received.'),

    q('A pro forma invoice is sent', [
        'after the goods are delivered',
        'before supply, to show the price',
        'when goods are returned',
        'when payment is overdue',
    ], 1, 'It is a quotation in invoice form, often needed before payment is made.'),

    q('Which book records goods returned by customers?', [
        'sales day book',
        'returns inwards book',
        'returns outwards book',
        'general journal',
    ], 1, 'Returns inwards covers goods coming back from customers.'),

    q('The purchases day book is posted in total to', [
        'debit purchases, credit creditors',
        'debit creditors, credit purchases',
        'debit cash, credit purchases',
        'debit stock, credit cash',
    ], 0, 'The total of credit purchases raises purchases and creditors.'),

    q('A credit note received from a supplier is recorded in the', [
        'returns inwards book',
        'returns outwards book',
        'sales day book',
        'cash book',
    ], 1, "From the buyer's point of view, goods sent back are returns outwards."),

    q('Which is not a book of original entry?', [
        'sales day book',
        'general journal',
        'ledger',
        'cash book',
    ], 2, 'The ledger is the book of accounts, not of original entry.'),

    q('The debtors ledger contains', [
        'asset accounts',
        'personal accounts of customers',
        'expense accounts',
        'capital accounts',
    ], 1, 'One account for each customer who owes the firm.'),

    q('A trial balance is prepared from', [
        'the source documents',
        'the ledger balances',
        'the bank statement',
        'the invoices',
    ], 1, 'Balances are extracted after the accounts are balanced off.'),

    q('Which error would be revealed by the trial balance?', [
        'a sale omitted entirely',
        'a purchase posted to the wrong creditor',
        'a credit entry posted twice',
        'a sale to A posted to B',
    ], 2, 'A doubled credit entry disturbs the equality of the columns.'),

    q('A trial balance with debits of ₦680,000 and credits of ₦650,000 has a suspense account', [
        'debit of ₦30,000',
        'credit of ₦30,000',
        'debit of ₦60,000',
        'nil',
    ], 1, 'The credits are short, so suspense is credited with ₦30,000.'),

    q('Which document is signed by the recipient of goods?', [
        'invoice',
        'delivery note',
        'credit note',
        'statement',
    ], 1, 'The signature proves that the goods listed were received.'),

    q('A statement of account is sent', [
        'with every delivery',
        'monthly, to summarise the account',
        'only when a debt is bad',
        'by the buyer',
    ], 1, "It lists the period's transactions and the balance due."),

    q('The purchases returns day book is another name for the', [
        'returns inwards book',
        'returns outwards book',
        'general journal',
        'sales day book',
    ], 1, 'Goods returned to suppliers are returns outwards, kept in the returns outwards day book.'),

    q('A contra entry between the cash book and the bank column occurs when', [
        'cash is withdrawn from the bank for office use',
        'a cheque is dishonoured',
        'a sale is made on credit',
        'a bad debt is written off',
    ], 0, 'The transfer appears on both sides of the cash book, so it is called a contra.'),

    q('Which account would not appear in a trial balance?', [
        'cash',
        'capital',
        'closing stock',
        'wages',
    ], 2, 'Closing stock is a year-end adjustment, not a ledger balance.'),

]

BANK_4 = [
    q('The sales ledger control account is debited with', [
        'receipts from debtors',
        'credit sales',
        'returns inwards',
        'discounts allowed',
    ], 1, 'Credit sales increase what debtors owe.'),

    q('Closing debtors ₦300,000; opening debtors ₦220,000; receipts ₦700,000; returns ₦30,000. Credit sales were', [
        '₦750,000',
        '₦810,000',
        '₦850,000',
        '₦880,000',
    ], 1, '300,000 − 220,000 + 700,000 + 30,000 = ₦810,000.'),

    q('A control account differs from a personal account because it', [
        'belongs to one customer',
        'summarises many personal accounts',
        'records only cash',
        'is kept by the bank',
    ], 1, 'It carries the totals of the personal ledger.'),

    q('Which item is credited in the purchases ledger control account?', [
        'payments to creditors',
        'credit purchases',
        'discount received',
        'returns outwards',
    ], 1, 'Credit purchases increase what the firm owes.'),

    q('A bank statement credit balance represents', [
        'an overdraft',
        'money held for the firm',
        'a loan to the bank',
        'a bank charge',
    ], 1, "From the bank's side the firm's money is a liability, shown as a credit."),

    q('A cheque issued but not yet presented is recorded', [
        'only in the bank statement',
        'only in the cash book',
        'in neither',
        'in both at once',
    ], 1, 'The firm has paid it; the bank has not yet seen it.'),

    q('Which item is added to the bank statement balance in the reconciliation?', [
        'unpresented cheques',
        'lodgements not yet credited',
        'bank charges',
        'standing orders',
    ], 1, 'They are in the cash book but not yet in the statement.'),

    q('The adjusted cash book balance is found by', [
        'adding charges and deducting direct credits',
        'deducting charges and adding direct credits',
        'ignoring both',
        'adjusting the bank statement',
    ], 1, 'Charges reduce the balance; direct credits increase it.'),

    q('A standing order is', [
        'a cheque cashed at the counter',
        'an instruction to the bank to pay a fixed sum regularly',
        'a lodgement',
        'a dishonoured cheque',
    ], 1, 'The bank pays it automatically until the instruction is cancelled.'),

    q('If the cash book shows an overdraft of ₦80,000 and the bank has charged ₦5,000 not yet recorded, the adjusted figure is', [
        'an overdraft of ₦75,000',
        'an overdraft of ₦85,000',
        'a balance of ₦85,000',
        'a balance of ₦75,000',
    ], 1, 'The overdraft grows by the unrecorded charge.'),

    q('Which of these is a timing difference?', [
        'an error in addition',
        'an unpresented cheque',
        'a wrong posting',
        'a transposition',
    ], 1, 'Nothing is wrong with it; it simply has not reached the bank yet.'),

    q('A direct debit differs from a standing order because it is initiated by', [
        'the customer',
        'the bank',
        'the payee',
        'the auditor',
    ], 2, "The payee claims the money under the customer's mandate."),

    q('The purpose of a bank reconciliation statement is to', [
        'increase the cash book balance',
        'explain why the two records differ',
        'conceal an error',
        'compute profit',
    ], 1, 'Every difference is identified and accounted for.'),

    q("If a cheque is dishonoured, the debtor's account is", [
        'credited',
        'debited',
        'closed',
        'ignored',
    ], 1, 'He owes the money again, so his account is debited.'),

    q('The bank column of a cash book has a credit balance. This means', [
        'money at the bank',
        'an overdraft',
        'an error',
        'a loan given',
    ], 1, 'A credit balance in the bank column is money owed to the bank.'),

]

BANK_5 = [
    q('Which of these would reduce gross profit?', [
        'an increase in carriage outwards',
        'an increase in carriage inwards',
        'an increase in rent',
        'an increase in discount allowed',
    ], 1, 'Carriage inwards is part of the cost of the goods, so it lowers gross profit.'),

    q("A firm's gross profit margin fell from 30 per cent to 25 per cent while sales were unchanged. The most likely cause is", [
        'a rise in the cost of the goods sold',
        'a fall in running expenses',
        'a rise in sales revenue',
        'a fall in drawings',
    ], 0, 'With sales fixed, a lower margin means a higher cost of sales.'),

    q('Carriage outwards is shown in the', [
        'trading account',
        'profit and loss account',
        'balance sheet as a liability',
        'capital account',
    ], 1, 'It is a selling expense, so it belongs below the gross profit line.'),

    q('Which item does not appear in the trading account?', [
        'returns inwards',
        'returns outwards',
        'carriage outwards',
        'closing stock',
    ], 2, 'Carriage outwards is a distribution cost, so it is charged in the profit and loss account.'),

    q("A sole trader's net profit is", [
        'gross profit less expenses',
        'sales less purchases',
        'closing capital less opening capital',
        'cash received less cash paid',
    ], 0, 'Expenses are deducted from gross profit.'),

    q('Sales ₦500,000, cost of sales ₦320,000, expenses ₦120,000. Net profit is', [
        '₦60,000',
        '₦180,000',
        '₦300,000',
        '₦80,000',
    ], 0, '500,000 − 320,000 = 180,000 gross; 180,000 − 120,000 = ₦60,000.'),

    q('Closing capital is found as', [
        'opening capital + profit + capital introduced − drawings',
        'opening capital − profit + drawings',
        'opening capital + drawings − profit',
        'assets less liabilities less drawings',
    ], 0, "Each item moves the owner's stake in a known direction."),

    q('Open capital ₦400,000; profit ₦90,000; drawings ₦40,000; capital introduced ₦20,000. Closing capital is', [
        '₦470,000',
        '₦430,000',
        '₦510,000',
        '₦450,000',
    ], 0, '400,000 + 90,000 − 40,000 + 20,000 = ₦470,000.'),

    q('A provision for doubtful debts is created by', [
        'debiting the profit and loss account',
        'debiting debtors',
        'crediting the profit and loss account',
        'debiting capital',
    ], 0, 'The charge is an expense of the year.'),

    q('Debtors ₦250,000; provision required at 4 per cent. The provision is', [
        '₦1,000',
        '₦10,000',
        '₦4,000',
        '₦25,000',
    ], 1, '4 per cent of 250,000 = ₦10,000.'),

    q('If the provision rises from ₦8,000 to ₦10,000, the charge to the profit and loss account is', [
        '₦18,000',
        '₦10,000',
        '₦2,000',
        'nil',
    ], 2, 'Only the increase is charged in the current year.'),

    q('Gross profit margin is calculated as', [
        'gross profit divided by sales',
        'gross profit divided by capital',
        'net profit divided by sales',
        'sales divided by stock',
    ], 0, 'It shows the percentage left after the cost of the goods sold.'),

    q('Sales ₦800,000 and gross profit ₦200,000. The gross profit margin is', [
        '20 per cent',
        '25 per cent',
        '40 per cent',
        'four times',
    ], 1, '200,000 ÷ 800,000 = 25 per cent.'),

    q('Accrued wages at the year end are shown as', [
        'a current asset',
        'a current liability',
        'part of capital',
        'a deduction from wages',
    ], 1, "The firm owes the year's unpaid wages at the balance sheet date."),

    q('Prepaid insurance is shown as', [
        'a current asset',
        'a current liability',
        'an expense',
        'a fixed asset',
    ], 0, 'The benefit has been paid for but not yet used.'),

]

BANK_6 = [
    q('Which error does not affect the trial balance?', [
        'a sale of ₦5,000 entered as ₦500 in one account only',
        "a sale entered in the sales account and in the debtor's account",
        'a payment posted twice on the debit side',
        'a total in the sales day book overstated',
    ], 1, 'It is entered on both sides, so the columns still agree.'),

    q('A motor vehicle bought on credit was debited to motor expenses. The correction is', [
        'debit motor vehicle, credit motor expenses',
        'debit motor expenses, credit motor vehicle',
        'debit suspense, credit motor expenses',
        'debit motor vehicle, credit suspense',
    ], 0, 'The expense is cancelled and the asset is recognised, both accounts being in the same ledger side of the error.'),

    q("A purchase of stock on credit was entered in the purchases account and in the creditor's account as ₦9,000 instead of ₦6,000. This is an error of", [
        'principle',
        'original entry',
        'omission',
        'commission',
    ], 1, 'The right accounts, the wrong amount, so it is an error of original entry.'),

    q('Which error is revealed by a trial balance?', [
        'a compensating error',
        'a posting of ₦4,000 as ₦400 to one account',
        'a complete omission',
        'a wrong class of account',
    ], 1, 'One side is wrong by ₦3,600, so the trial balance will not agree.'),

    q('A suspense account is opened when', [
        'the trial balance does not agree',
        'a customer fails to pay',
        'stock is stolen',
        'a provision is created',
    ], 0, 'The difference is parked there until the error is found.'),

    q('If debits exceed credits by ₦12,000, the suspense account has a', [
        'debit balance',
        'credit balance',
        'nil balance',
        'capital balance',
    ], 1, 'The suspense account is credited to make the columns agree.'),

    q('A credit sale of ₦7,000 was completely omitted. Correcting it requires', [
        'Dr sales, Cr suspense',
        'Dr debtors, Cr sales',
        'Dr sales, Cr debtors',
        'no entry',
    ], 1, 'Both sides were missing, so both are now written in.'),

    q('A purchase of ₦5,000 was entered in the purchases account only. The correction is', [
        'Dr purchases, Cr suspense',
        'Dr suspense, Cr purchases',
        'Dr creditors, Cr purchases',
        'Dr purchases, Cr creditors',
    ], 1, 'Purchases was debited and the credit is still missing, so suspense is credited.'),

    q('Profit before correction was ₦200,000. Rent of ₦20,000 paid was debited to rates. The corrected profit is', [
        '₦180,000',
        '₦200,000',
        '₦220,000',
        '₦240,000',
    ], 1, 'Both accounts are expenses, so the total charge and the profit are unchanged.'),

    q('Profit was ₦300,000. Closing stock was understated by ₦50,000. Corrected profit is', [
        '₦250,000',
        '₦300,000',
        '₦350,000',
        '₦400,000',
    ], 2, 'Higher closing stock means lower cost of sales and higher profit.'),

    q('Sales of ₦10,000 to a customer were entered in the sales account as ₦1,000. Profit was', [
        'overstated by ₦9,000',
        'understated by ₦9,000',
        'unaffected',
        'understated by ₦1,000',
    ], 1, 'Sales of ₦9,000 were left out, so profit is too low by ₦9,000.'),

    q('An error of commission occurs when', [
        'the wrong type of account is used',
        "the right class of account but the wrong person's account is used",
        'a transaction is omitted',
        'an amount is reversed',
    ], 1, 'The right kind of account, the wrong individual.'),

    q('A difference divisible by nine usually points to', [
        'a transposition',
        'a wrong-side entry',
        'an omission',
        'a compensating error',
    ], 0, 'Transposed digits differ by a multiple of nine.'),

    q('A difference of exactly twice an amount often points to', [
        'a transposition',
        'an amount entered on the wrong side',
        'an omission',
        'a doubled invoice',
    ], 1, 'A figure posted to the wrong side creates a difference of twice its value.'),

    q('A compensating error is one that', [
        "cancels another error's effect on the trial balance",
        'affects only one account',
        'cannot be corrected',
        'involves cash',
    ], 0, 'Two errors of equal size, opposite in effect, hide each other.'),

]

BANK_7 = [
    q('A partnership deed normally states', [
        'the profit-sharing ratio',
        'the audit fee',
        'the tax rate',
        'the stock value',
    ], 0, 'It is the private agreement among the partners.'),

    q('In the absence of a deed, profits are shared', [
        'by capital ratio',
        'equally',
        'by drawings',
        'by seniority',
    ], 1, 'The Partnership Act default is an equal share.'),

    q('Interest on capital is credited to', [
        'the profit and loss account',
        "the partners' capital accounts",
        'the current accounts of the partners',
        'the drawings account',
    ], 2, "It is an appropriation, credited to each partner's current account."),

    q('Net profit ₦500,000; interest on capital ₦60,000; salaries ₦100,000. The residual is', [
        '₦340,000',
        '₦360,000',
        '₦400,000',
        '₦440,000',
    ], 0, '500,000 − 60,000 − 100,000 = ₦340,000.'),

    q("A and B share 3:2. Residual profit ₦250,000. B's share is", [
        '₦100,000',
        '₦150,000',
        '₦125,000',
        '₦90,000',
    ], 0, 'B takes two-fifths of 250,000 = ₦100,000.'),

    q("Two partners share profits equally. A third partner is admitted with a one-fifth share. The old partners' combined share becomes", [
        'four-fifths',
        'one-fifth',
        'three-fifths',
        'one-half',
    ], 0, 'The new partner takes one-fifth, so four-fifths remain with the old partners.'),

    q('Current account opening credit ₦60,000; profit share ₦150,000; drawings ₦90,000; salary ₦30,000. Closing balance is', [
        '₦150,000 credit',
        '₦150,000 debit',
        '₦90,000 credit',
        '₦210,000 credit',
    ], 0, '60,000 + 150,000 + 30,000 − 90,000 = ₦150,000 credit.'),

    q('Which item is not an appropriation of profit?', [
        "partners' salaries",
        'interest on capital',
        'interest on drawings',
        'interest on a bank loan',
    ], 3, 'A bank loan is an outside expense, not a division of profit.'),

    q("If a partner's current account has a debit balance at the year end, it is shown in the balance sheet as", [
        'a deduction from his capital',
        'an addition to his capital',
        'an asset of the firm',
        'a liability to outsiders',
    ], 0, 'He has drawn more than his share, so the shortfall reduces his capital.'),

    q('Goodwill brought into the books on admission is credited to', [
        "the old partners' capital accounts",
        "the new partner's current account",
        'the profit and loss account',
        'the revaluation account',
    ], 0, 'The old partners are paid for the reputation they built.'),

    q('On admission, a new partner pays for', [
        'his share of the net assets and goodwill',
        'the whole of the stock',
        "the old partners' drawings",
        "the firm's tax",
    ], 0, 'Capital plus a share of goodwill is the normal arrangement.'),

    q('On dissolution, the assets are sold and the proceeds are used first to', [
        'pay the partners',
        'pay outside creditors',
        'pay the tax',
        'buy new stock',
    ], 1, 'Outside creditors rank before the partners.'),

    q('A partner with a debit balance in his current account', [
        'has drawn more than his share',
        'has made a profit',
        'has paid in extra capital',
        'owes the bank',
    ], 0, 'Drawings and losses have outrun his credits.'),

    q('When a partner retires, the remaining partners may', [
        'ignore his share',
        'buy his share and revalue the assets',
        'keep his capital',
        'cancel the deed',
    ], 1, 'Revaluation and goodwill adjust the shares fairly.'),

    q('If the deed is silent on interest on drawings,', [
        'interest is charged at 5 per cent',
        'no interest is charged',
        'interest is charged at 10 per cent',
        'the bank fixes it',
    ], 1, 'The Act charges interest on advances by a partner, not on drawings.'),

]

BANK_8 = [
    q('A company that issues debentures rather than shares', [
        'gives away part of its ownership',
        'increases its borrowings without diluting control',
        'must pay a dividend on them',
        'reduces its fixed assets',
    ], 1, 'Lenders have no vote, so control stays with the shareholders.'),

    q('Debenture interest is charged against', [
        'the profit and loss account',
        'the appropriation account',
        'the share premium',
        'the capital reserve',
    ], 0, 'It is a finance cost, not a division of profit.'),

    q('Ordinary shareholders receive', [
        'a fixed rate',
        'a dividend that varies with profit',
        'interest',
        'a salary',
    ], 1, 'Their dividend depends on the profit left after the preference dividend.'),

    q('Preference shareholders normally rank ahead of ordinary shareholders for', [
        'dividends and repayment of capital',
        'voting only',
        'management',
        'audit',
    ], 0, "That priority is what makes the share 'preferred'."),

    q('Profit after tax ₦1,200,000; transfer to reserve ₦200,000; preference dividend ₦100,000. Ordinary dividend available is', [
        '₦900,000',
        '₦1,000,000',
        '₦1,100,000',
        '₦800,000',
    ], 0, '1,200,000 − 200,000 − 100,000 = ₦900,000.'),

    q('A general reserve is created by', [
        'setting aside part of the profit',
        'borrowing',
        'issuing shares',
        'selling an asset',
    ], 0, 'It is an appropriation of profit, not a fund of cash.'),

    q('A company issued 20,000 ordinary shares of ₦2 each at ₦2.50. The amount credited to share capital is', [
        '₦50,000',
        '₦40,000',
        '₦10,000',
        '₦45,000',
    ], 1, 'Share capital is always recorded at nominal value: 20,000 × ₦2 = ₦40,000.'),

    q('10,000 ordinary shares of ₦1 issued at ₦1.50 raise', [
        '₦10,000',
        '₦15,000',
        '₦5,000',
        '₦1,500',
    ], 1, '10,000 × 1.50 = ₦15,000, of which ₦5,000 is premium.'),

    q('A not-for-profit organisation prepares', [
        'a trading account',
        'a receipts and payments account',
        'an appropriation account',
        'a share capital account',
    ], 1, 'It is a summary of cash actually received and paid.'),

    q('The receipts and payments account is prepared on the', [
        'accruals basis',
        'cash basis',
        'profit basis',
        'capital basis',
    ], 1, 'Only money that has moved is recorded.'),

    q('Subscriptions in arrears are', [
        'income of the year',
        'a current asset',
        'a liability',
        'capital',
    ], 1, 'They are owed to the club, so they are debtors.'),

    q("A club had 200 members paying ₦2,000 each. Subscriptions received were ₦360,000, including ₦40,000 for last year. This year's income is", [
        '₦360,000',
        '₦400,000',
        '₦320,000',
        '₦440,000',
    ], 2, '360,000 − 40,000 = ₦320,000; the 200 members owe ₦400,000, so ₦80,000 of this year\'s subscriptions is still in arrears.'),

    q("The excess of a club's income over expenditure is", [
        'gross profit',
        'a surplus',
        'a dividend',
        'share premium',
    ], 1, 'Clubs report a surplus or a deficit, not a profit.'),

    q("Which appears in a company's appropriation account?", [
        'debenture interest',
        'transfer to general reserve',
        'depreciation',
        'carriage outwards',
    ], 1, 'It divides the profit after tax among reserves and dividends.'),

    q('Which of these is a capital reserve?', [
        'general reserve',
        'share premium',
        'retained profit',
        'provision for doubtful debts',
    ], 1, 'Share premium is not distributable as dividend, so it is a capital reserve.'),

]

BANK = {1: BANK_1, 2: BANK_2, 3: BANK_3, 4: BANK_4,
        5: BANK_5, 6: BANK_6, 7: BANK_7, 8: BANK_8}
