"""Paper 2 — forty questions, weighted towards the second half of the volume.

Distribution: manufacturing and cost elements 7, costing methods 6, marginal costing 6,
budgeting 7, incomplete records 6, partnership changes 4, public sector and computers 4.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


PAPER_2 = [
    # ---- manufacturing and cost elements (1-7) ----------------------------
    q('The three costs that make up prime cost are direct materials, direct expenses and', [
        'factory overhead', 'direct labour', 'administration cost', 'work in progress',
    ], 1, 'Prime cost is the three direct costs; factory overhead is added to it.'),
    q('Prime cost ₦180,000, factory overhead ₦70,000, opening work in progress ₦25,000, closing work in progress ₦15,000. Production cost is', [
        '₦260,000', '₦250,000', '₦270,000', '₦240,000',
    ], 0, '180,000 + 70,000 + 25,000 − 15,000 = ₦260,000.'),
    q('Cost of production ₦260,000, opening finished goods ₦40,000, closing finished goods ₦55,000. Cost of goods sold is', [
        '₦245,000', '₦275,000', '₦355,000', '₦260,000',
    ], 0, '260,000 + 40,000 − 55,000 = ₦245,000.'),
    q('A royalty paid to the holder of a patent, at a fixed amount for every unit produced, is classified as', [
        'a factory overhead', 'a direct expense', 'an administration cost', 'a selling cost',
    ], 1, 'It varies with the units made and can be traced to them, so it is a direct expense.'),
    q('In the manufacturing account, closing work in progress is', [
        'added to prime cost', 'deducted before arriving at production cost',
        'added to factory overhead', 'ignored',
    ], 1, 'It is unfinished, so it is not part of this year\'s cost of production.'),
    q('Carriage inwards on raw materials is treated as part of', [
        'factory overhead', 'direct materials', 'selling expenses', 'administration expenses',
    ], 1, 'It is a cost of bringing the material into the factory, so it is added to materials.'),
    q('A manufacturer\'s gross profit is sales less', [
        'prime cost', 'cost of goods sold', 'production cost', 'total cost',
    ], 1, 'Gross profit uses cost of goods sold, which already includes the finished-goods adjustment.'),
    # ---- costing methods (8-13) -------------------------------------------
    q('Job costing is used where', [
        'production is continuous', 'each order is separately identifiable and costed in full',
        'units are identical and made in groups', 'there is no direct labour',
    ], 1, 'The job card collects the cost of the customer\'s order.'),
    q('A job has prime cost of ₦50,000, overhead absorbed at 20 per cent of prime cost, and a 25 per cent mark-up on total cost. The price is', [
        '₦72,000', '₦75,000', '₦62,500', '₦70,000',
    ], 1, 'Total cost 50,000 + 10,000 = 60,000; price 60,000 × 1.25 = ₦75,000.'),
    q('Input 2,000 units costing ₦14,800; normal loss 10 per cent, sold as scrap at ₦2 a unit. The cost per good unit is', [
        '₦7.40', '₦8.00', '₦7.50', '₦8.22',
    ], 1, 'Scrap 200 × 2 = 400; (14,800 − 400) ÷ 1,800 = ₦8.00.'),
    q('Using the last figures, actual output was 1,750 units. The abnormal loss is', [
        '50 units', '250 units', '200 units', 'nil',
    ], 0, 'Expected output 1,800 less actual 1,750 = 50 units, valued at the cost per good unit.'),
    q('The sale of scrap from a process is', [
        'credited to the process account', 'debited to the process account', 'treated as sales revenue',
        'added to the cost of production',
    ], 0, 'Scrap is a recovery of cost, so it reduces the cost of the process.'),
    q('In process costing, the cost of the normal loss with no scrap value is', [
        'written off to profit and loss', 'borne by the good units', 'carried forward as stock',
        'debited to the trading account',
    ], 1, 'There is nothing to recover, so the surviving units carry the cost.'),
    # ---- marginal costing (14-19) -----------------------------------------
    q('Fixed cost ₦80,000, selling price ₦50, variable cost ₦30. The break-even point in units is', [
        '1,600', '4,000', '2,667', '1,000',
    ], 1, 'Contribution ₦20; 80,000 ÷ 20 = 4,000 units.'),
    q('A firm sells 6,000 units at ₦50 with a variable cost of ₦30 and fixed cost of ₦80,000. Its profit is', [
        '₦40,000', '₦120,000', '₦300,000', '₦60,000',
    ], 0, 'Contribution 6,000 × 20 = 120,000, less fixed 80,000 = ₦40,000.'),
    q('Using the last figures, the margin of safety in units is', [
        '2,000', '4,000', '6,000', '1,600',
    ], 0, '6,000 − 4,000 = 2,000 units.'),
    q('The profit difference between absorption and marginal costing is the change in stock multiplied by', [
        'the selling price', 'the fixed overhead absorbed per unit', 'the variable cost per unit',
        'the contribution per unit',
    ], 1, 'That is the fixed overhead deferred in stock or released from it.'),
    q('A special order at a price above variable cost should be accepted only if', [
        'the firm has spare capacity and the existing market is unaffected',
        'the price exceeds the normal selling price', 'the order is large enough',
        'the fixed cost has been fully absorbed',
    ], 0, 'Otherwise the firm undercuts its own full-price sales.'),
    q('A fixed cost per unit falls as output rises because', [
        'the cost itself has fallen', 'the same total cost is spread over more units',
        'the variable cost has risen', 'the selling price has fallen',
    ], 1, 'The total is unchanged; only the denominator moves.'),
    # ---- budgeting (20-26) ------------------------------------------------
    q('Budgetary control is the comparison of', [
        'this year with last year', 'actual results with the budget, followed by action on the difference',
        'cash with profit', 'one department with another',
    ], 1, 'The comparison and the action are what make it control.'),
    q('Production is budgeted at 5,200 units. Each unit needs 3 kg, opening material is 900 kg and closing is 1,100 kg. Purchases are', [
        '15,600 kg', '15,800 kg', '15,400 kg', '16,600 kg',
    ], 1, 'Usage 15,600 + 1,100 − 900 = 15,800 kg.'),
    q('A budget prepared from zero, justifying every cost afresh, is', [
        'incremental', 'zero-based', 'flexible', 'a fixed budget',
    ], 1, 'Zero-based budgeting re-justifies each activity every year.'),
    q('Opening cash ₦18,000, receipts ₦72,000, payments ₦80,000. The closing balance is', [
        '₦10,000', '₦10,000 overdrawn', '₦26,000', 'nil',
    ], 1, '18,000 + 72,000 − 80,000 = −₦10,000, an overdraft.'),
    q('Using the last figures, if the firm must keep ₦5,000 in the bank, the loan it needs is', [
        '₦5,000', '₦15,000', '₦10,000', '₦20,000',
    ], 1, 'From −10,000 to +5,000 is ₦15,000.'),
    q('The main weakness of incremental budgeting is that it', [
        'is too slow', 'carries forward past inefficiencies', 'ignores variable costs',
        'cannot be controlled',
    ], 1, 'Last year\'s figure becomes the base, so waste is protected.'),
    q('An adverse labour efficiency variance means that', [
        'the wage rate was below standard', 'more hours were worked than the output justified',
        'fewer units were sold', 'the budget was not flexed',
    ], 1, 'The hours used exceed the standard for the output achieved.'),
    # ---- incomplete records (27-32) ---------------------------------------
    q('Profit in incomplete records is', [
        'the closing capital', 'the movement in capital after adding back drawings and deducting new capital',
        'the cash book balance', 'the difference between sales and purchases',
    ], 1, 'Only trading changes capital; drawings and new money must be removed first.'),
    q('Opening capital ₦300,000, closing capital ₦390,000, drawings ₦45,000, capital introduced ₦15,000. Profit is', [
        '₦120,000', '₦150,000', '₦90,000', '₦60,000',
    ], 0, '390,000 + 45,000 − 15,000 − 300,000 = ₦120,000.'),
    q('A margin of 25 per cent on sales is equivalent to a mark-up of', [
        '25%', '33⅓%', '20%', '30%',
    ], 1, '25 ÷ 75 = 33⅓ per cent of cost.'),
    q('Sales ₦600,000 at a margin of 30 per cent. Cost of sales is', [
        '₦420,000', '₦180,000', '₦450,000', '₦400,000',
    ], 0, 'Cost is 70 per cent of sales: 600,000 × 0.70 = ₦420,000.'),
    q('Creditors opening ₦50,000, closing ₦65,000; cash paid to creditors ₦280,000; discounts received ₦5,000. Credit purchases are', [
        '₦300,000', '₦290,000', '₦310,000', '₦285,000',
    ], 0, '280,000 + 5,000 + 65,000 − 50,000 = ₦300,000.'),
    q('Goods taken by the owner for private use are recorded as', [
        'a sale', 'drawings, with purchases reduced', 'an expense of the business',
        'a loan to the owner',
    ], 1, 'The goods left the business for the owner, so drawings are debited and purchases credited.'),
    # ---- partnership changes (33-36) --------------------------------------
    q('On the retirement of a partner, goodwill is credited to the retiring partner and debited to', [
        'the revaluation account', 'the continuing partners in their new ratio', 'the bank account',
        'the realisation account',
    ], 1, 'The continuing partners will enjoy the reputation, so they bear its cost.'),
    q('A partner\'s loan on dissolution is repaid', [
        'after the partners\' capital', 'before the outside creditors', 'after outside creditors but before capital',
        'only if cash remains after capital',
    ], 2, 'The loan is a debt of the firm, ranking after trade creditors but ahead of capital.'),
    q('On dissolution, assets with a book value of ₦80,000 are sold for ₦65,000. The realisation account shows', [
        'a profit of ₦15,000', 'a loss of ₦15,000', 'a loss of ₦65,000', 'no entry',
    ], 1, 'The proceeds are ₦15,000 below book value, and the loss is shared by the partners.'),
    q('A and B share profits equally with capitals of ₦150,000 each. C is admitted for a one-third share, bringing ₦160,000. The total capital of the new firm is', [
        '₦300,000', '₦460,000', '₦310,000', '₦480,000',
    ], 1, '300,000 + 160,000 = ₦460,000, and C\'s third is ₦153,333.'),
    # ---- public sector and computers (37-40) ------------------------------
    q('Public-sector accounting in the traditional Nigerian system records transactions on the', [
        'accruals basis', 'cash basis', 'break-up basis', 'profit basis',
    ], 1, 'Receipts and payments are recorded when the money moves.'),
    q('Money approved for capital projects is kept in the', [
        'consolidated revenue fund', 'development fund', 'contingency fund', 'trust fund',
    ], 1, 'The development fund exists for capital expenditure.'),
    q('A ministry overspends one sub-head while remaining within the total vote. This is', [
        'acceptable, because the total was not exceeded', 'a breach requiring virement or a supplementary vote',
        'a profit on the vote', 'a matter for the Auditor-General only after the year end',
    ], 1, 'The vote is approved sub-head by sub-head, so an unauthorised line is a breach.'),
    q('A computerised accounting system still requires', [
        'no source documents', 'an audit trail and access controls', 'no trial balance',
        'no backup',
    ], 1, 'The system balances automatically, so the controls that catch a wrong entry must be built in.'),
]
