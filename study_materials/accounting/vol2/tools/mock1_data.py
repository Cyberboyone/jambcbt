"""Paper 1 — forty questions in the proportions of a real UTME Accounting paper.

Distribution: manufacturing and the elements of cost 8, costing methods 6, marginal
costing 7, budgeting 7, incomplete records 5, partnership changes 4, public sector and
computers 3.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


PAPER_1 = [
    # ---- manufacturing and the elements of cost (1-8) -----------------------
    q('The cost of production of a manufacturer is transferred to the', [
        'trading account', 'profit and loss account', 'balance sheet', 'manufacturing account',
    ], 0, 'The manufacturing account ends with cost of production, which the trading account treats as its purchases.'),
    q('Direct materials consumed is computed as', [
        'opening stock + purchases − closing stock',
        'opening stock + purchases + carriage inwards − closing stock',
        'purchases + closing stock − opening stock',
        'purchases − carriage inwards + closing stock',
    ], 1, 'The carriage inwards is part of the cost of getting material into the factory.'),
    q('A manufacturer paid: opening raw materials ₦30,000, purchases ₦220,000, carriage inwards ₦10,000, closing raw materials ₦40,000. Material consumed is', [
        '₦200,000', '₦220,000', '₦230,000', '₦240,000',
    ], 1, '30,000 + 220,000 + 10,000 − 40,000 = ₦220,000.'),
    q('Which cost is a factory overhead?', [
        'royalty paid per unit produced', 'wages of machine operators',
        'salary of the factory storekeeper', 'carriage outwards on finished goods',
    ], 2, 'The storekeeper supports production but is not traceable to a unit, so his salary is indirect factory labour.'),
    q('Prime cost ₦240,000 and factory overhead ₦90,000. If opening work in progress is ₦20,000 and closing work in progress is ₦30,000, production cost is', [
        '₦320,000', '₦330,000', '₦340,000', '₦360,000',
    ], 0, '240,000 + 90,000 + 20,000 − 30,000 = ₦320,000.'),
    q('The cost of carriage outwards is charged to the', [
        'manufacturing account', 'trading account', 'profit and loss account', 'work in progress',
    ], 2, 'Carriage outwards is the cost of delivering finished goods, which is a selling expense.'),
    q('Goods completed at a cost of ₦150,000 are transferred to the trading account at ₦180,000. The manufacturing profit is', [
        '₦30,000', '₦150,000', '₦180,000', 'nil',
    ], 0, '180,000 − 150,000 = ₦30,000.'),
    q('Which of these is NOT a cost of the factory?', [
        'factory power', 'depreciation of factory machinery', 'insurance of the factory building',
        'depreciation of the office computer',
    ], 3, 'The office computer is used after the factory gate, so its depreciation is an administration expense.'),
    # ---- costing methods (9-14) --------------------------------------------
    q('Process costing is most suitable for', [
        'a firm of solicitors', 'a cement factory', 'a printer producing one wedding card order',
        'a builder constructing a house',
    ], 1, 'Cement is produced as a continuous stream of identical units, which is what process costing assumes.'),
    q('A batch of 400 units costs ₦36,000 and 40 units are rejected. The cost per good unit is', [
        '₦90.00', '₦100.00', '₦81.82', '₦110.00',
    ], 1, '36,000 ÷ 360 good units = ₦100.'),
    q('Input 1,000 units costing ₦6,000; normal loss 25 per cent with no scrap value. The cost per unit of good output is', [
        '₦6.00', '₦8.00', '₦7.50', '₦9.00',
    ], 1, 'Expected output 750 units; 6,000 ÷ 750 = ₦8.'),
    q('An abnormal loss is valued at', [
        'scrap value', 'the cost per good unit', 'the input cost per unit', 'nil',
    ], 1, 'It is carried at the same cost per good unit, which is why it can be written off exactly.'),
    q('An abnormal gain is treated in the process account as a', [
        'debit, and credited to profit and loss', 'credit, and debited to profit and loss',
        'debit, and debited to profit and loss', 'credit, and carried forward as stock',
    ], 0, 'The process gains units it never paid for, and the profit and loss account is credited with the saving.'),
    q('Closing work in progress of 500 units, 20 per cent complete, represents', [
        '500 equivalent units', '400 equivalent units', '100 equivalent units', '25 equivalent units',
    ], 2, '500 × 20% = 100 equivalent units.'),
    # ---- marginal costing (15-21) -----------------------------------------
    q('Contribution per unit is', [
        'selling price less total cost', 'selling price less variable cost',
        'profit plus fixed cost per unit', 'selling price less fixed cost',
    ], 1, 'Contribution is what remains to pay the fixed cost and then the profit.'),
    q('A product sells for ₦80 with a variable cost of ₦50. The contribution-to-sales ratio is', [
        '37.5%', '62.5%', '60%', '30%',
    ], 0, 'Fixed cost per unit is not involved; contribution 30 ÷ 80 = 37.5 per cent.'),
    q('Fixed cost ₦120,000 and contribution per unit ₦40. Break-even units are', [
        '3,000', '4,800', '2,000', '1,200',
    ], 0, '120,000 ÷ 40 = 3,000 units.'),
    q('Budgeted sales 5,000 units and break-even sales 3,000 units. The margin of safety is', [
        '60%', '40%', '20%', '166%',
    ], 1, '2,000 ÷ 5,000 × 100 = 40 per cent.'),
    q('Fixed cost ₦120,000, contribution per unit ₦40, target profit ₦40,000. Units required are', [
        '3,000', '4,000', '3,500', '4,500',
    ], 1, '(120,000 + 40,000) ÷ 40 = 4,000 units.'),
    q('When production exceeds sales in a period, absorption costing reports a profit that is', [
        'lower than marginal costing', 'higher than marginal costing', 'equal to marginal costing',
        'always a loss',
    ], 1, 'Part of the fixed overhead is carried into closing stock instead of being written off.'),
    q('Two products use the same machine. Product X contributes ₦45 and takes 3 hours; product Y contributes ₦20 and takes 1 hour. The firm should make', [
        'X first, at ₦15 an hour', 'Y first, at ₦20 an hour', 'X first, at ₦45 an hour',
        'either, because the contributions are equal per hour',
    ], 1, 'Ranking is by contribution per machine hour: X gives ₦15 and Y gives ₦20.'),
    # ---- budgeting (22-28) ------------------------------------------------
    q('The budget that must be prepared first is the', [
        'cash budget', 'sales budget', 'production budget', 'materials budget',
    ], 1, 'Every other budget is driven by the volume the firm expects to sell.'),
    q('Budgeted sales 6,000 units, opening stock 400, closing stock 700. Production is', [
        '5,700 units', '6,300 units', '6,700 units', '6,000 units',
    ], 1, '6,000 + 700 − 400 = 6,300 units.'),
    q('Each unit needs 4 kg of material, production is 6,300 units, opening material is 1,000 kg and closing is 1,200 kg. Purchases are', [
        '25,200 kg', '25,400 kg', '25,000 kg', '26,400 kg',
    ], 1, 'Usage 25,200 kg, plus closing 1,200, less opening 1,000 = 25,400 kg.'),
    q('Which of these would be excluded from a cash budget?', [
        'depreciation of machinery', 'the payment of wages', 'the receipt of a loan', 'a payment to a creditor',
    ], 0, 'Depreciation is an allocation of a past cost with no movement of cash.'),
    q('A credit sale made in April, paid by the debtor in June, enters the cash budget in', [
        'April', 'May', 'June', 'never',
    ], 2, 'The cash budget records cash when it is received.'),
    q('A flexible budget is one that', [
        'never changes', 'is adjusted to the actual level of activity',
        'contains only variable costs', 'is prepared by the government',
    ], 1, 'Flexing the budget before comparison isolates control from volume.'),
    q('A manager who pads his budget so that it can be beaten is creating', [
        'budget slack', 'a virement', 'a flexible budget', 'an adverse variance',
    ], 0, 'The padding is budget slack, and it turns a control into a formality.'),
    # ---- incomplete records (29-33) ---------------------------------------
    q('A statement of affairs is prepared at the year end in order to find the', [
        'profit for the year', 'capital at that date', 'closing stock', 'total of the debtors',
    ], 1, 'The excess of assets over liabilities is the capital at the date of the statement.'),
    q('Closing capital ₦420,000, drawings ₦60,000, capital introduced ₦20,000, opening capital ₦340,000. Profit is', [
        '₦100,000', '₦120,000', '₦80,000', '₦60,000',
    ], 1, '420,000 + 60,000 − 20,000 − 340,000 = ₦120,000.'),
    q('Goods costing ₦120,000 are sold at a mark-up of 25 per cent. The selling price is', [
        '₦150,000', '₦144,000', '₦160,000', '₦135,000',
    ], 0, '120,000 × 1.25 = ₦150,000.'),
    q('Debtors at the start ₦70,000, at the end ₦90,000; cash received ₦350,000; discounts allowed ₦6,000. Credit sales are', [
        '₦364,000', '₦376,000', '₦386,000', '₦334,000',
    ], 1, '350,000 + 6,000 + 90,000 − 70,000 = ₦376,000.'),
    q('Why is a statement of affairs not a balance sheet?', [
        'It contains no liabilities', 'Its capital is derived from a list of assets and liabilities rather than extracted from a ledger',
        'It is prepared every month', 'It shows only the fixed assets',
    ], 1, 'There is no double entry to prove, so the capital is the balancing figure.'),
    # ---- partnership changes (34-37) --------------------------------------
    q('A profit on revaluation arising when a partner is admitted is shared', [
        'equally among all partners', 'in the old profit-sharing ratio',
        'in the new profit-sharing ratio', 'according to the capitals',
    ], 1, 'The gain arose while the old partners owned the assets.'),
    q('Goodwill brought in cash by a new partner is credited to the', [
        'new partner\'s capital account', 'old partners\' capital accounts in the old ratio',
        'revaluation account', 'realisation account',
    ], 1, 'He is paying for a share of the reputation the old partners built.'),
    q('On dissolution, which is paid first?', [
        'partners\' capital', 'partners\' loans', 'expenses of realisation', 'trade creditors',
    ], 2, 'The costs of winding up are met first, then creditors, then loans, then capital.'),
    q('A retiring partner is entitled to his capital, his share of goodwill and', [
        'his share of next year\'s profit', 'the balance on his current account',
        'the firm\'s bank balance', 'the revaluation account',
    ], 1, 'The current account is the running balance between the firm and the partner.'),
    # ---- public sector and computers (38-40) ------------------------------
    q('The statement that compares approved expenditure with actual expenditure is the', [
        'appropriation account', 'vote account', 'statement of affairs', 'realisation account',
    ], 1, 'It sets out each sub-head, the approved figure, the actual and the difference.'),
    q('A ministry was voted ₦60,000,000 and spent ₦57,000,000. The unspent balance is', [
        '₦3,000,000', '₦57,000,000', '₦117,000,000', 'nil',
    ], 0, '60,000,000 − 57,000,000 = ₦3,000,000.'),
    q('The record in a computerised system that shows who entered a transaction and when is the', [
        'chart of accounts', 'audit trail', 'trial balance', 'bank reconciliation',
    ], 1, 'The audit trail is the control that makes a computerised ledger auditable.'),
]
