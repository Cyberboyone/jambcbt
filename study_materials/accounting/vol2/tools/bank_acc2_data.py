"""The 120-question master bank for Financial Accounting Volume 2 — fifteen per chapter.

No stem in this file repeats a stem in the chapter drills or in either paper.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


BANK_1 = [
    q('A manufacturer prepares a manufacturing account in order to find the', [
        'gross profit on sales', 'cost of producing the goods', 'net profit for the year',
        'value of the closing stock of raw materials',
    ], 1, 'The account collects the cost of making the goods and hands it to the trading account.'),
    q('The cost of finished goods that were made last year and sold this year is part of', [
        'this year\'s production cost', 'this year\'s cost of goods sold', 'last year\'s gross profit',
        'the work in progress',
    ], 1, 'The opening stock of finished goods is added when computing this year\'s cost of goods sold.'),
    q('Prime cost ₦90,000 and factory overhead ₦40,000, with no work in progress. Production cost is', [
        '₦50,000', '₦130,000', '₦90,000', '₦140,000',
    ], 1, '90,000 + 40,000 = ₦130,000, with no adjustment for work in progress.'),
    q('Factory overtime premium paid because the factory is short of hands is a', [
        'direct labour cost', 'factory overhead', 'selling cost', 'direct expense',
    ], 1, 'No single order caused it, so it is spread over all output.'),
    q('The cost of testing a newly installed machine before production begins is', [
        'a direct material cost', 'a factory overhead', 'an administration cost', 'a selling cost',
    ], 1, 'It is incurred to make the factory ready, and it cannot be traced to a unit.'),
    q('Which item would appear on the credit side of a manufacturing account?', [
        'factory rent', 'closing work in progress', 'carriage inwards', 'direct labour',
    ], 1, 'Closing work in progress is deducted from the cost of the period, so it is credited.'),
    q('Cost of production ₦250,000 and the opening and closing finished goods are ₦20,000 and ₦30,000. Cost of goods sold is', [
        '₦240,000', '₦260,000', '₦300,000', '₦250,000',
    ], 0, '250,000 + 20,000 − 30,000 = ₦240,000.'),
    q('A manufacturer\'s administration expenses are shown in the', [
        'manufacturing account', 'trading account', 'profit and loss account', 'work in progress',
    ], 2, 'They are period costs, incurred after the factory has finished.'),
    q('When goods are transferred to the trading account at cost plus a mark-up, the difference is', [
        'gross profit', 'manufacturing profit', 'net profit', 'a revaluation gain',
    ], 1, 'It is the excess of the transfer price over the cost of production.'),
    q('Direct expenses are also known as', [
        'chargeable expenses', 'factory overheads', 'administration costs', 'period costs',
    ], 0, 'They are charged directly to the product, alongside direct material and direct labour.'),
    q('A firm\'s factory overhead is 40 per cent of direct wages of ₦150,000. Factory overhead is', [
        '₦60,000', '₦37,500', '₦210,000', '₦150,000',
    ], 0, '150,000 × 40% = ₦60,000.'),
    q('Which of these would be treated as indirect material?', [
        'timber used to make a table', 'machine oil and cleaning cloth', 'flour used to bake bread',
        'cloth used to sew a shirt to order',
    ], 1, 'They are consumed by the factory in general and cannot be traced to a unit.'),
    q('The wages of a worker who is paid by the unit produced are', [
        'indirect labour', 'direct labour', 'a factory overhead', 'an administration cost',
    ], 1, 'The units can be traced to the product, so the wage is direct.'),
    q('If the closing stock of finished goods is overstated, the gross profit is', [
        'understated', 'overstated', 'unaffected', 'always a loss',
    ], 1, 'A higher closing stock reduces cost of goods sold and raises gross profit.'),
    q('The sequence of the manufacturer\'s accounts is', [
        'trading, manufacturing, profit and loss', 'manufacturing, trading, profit and loss',
        'profit and loss, trading, manufacturing', 'manufacturing, profit and loss, trading',
    ], 1, 'Cost of production flows into the trading account, whose gross profit flows into the profit and loss account.'),
]

BANK_2 = [
    q('The stores ledger is kept by the', [
        'storekeeper, in quantities only', 'costing office, in quantities and values', 'supplier',
        'sales department',
    ], 1, 'The bin card is the storekeeper\'s quantity record; the stores ledger values the movements.'),
    q('Under FIFO, the closing stock is valued at', [
        'the oldest prices', 'the most recent prices', 'the average price', 'the market price',
    ], 1, 'The old units are issued first, so the new ones remain in stock.'),
    q('Stock of 300 units at ₦8 is followed by 200 units at ₦10. Under the weighted average, the price per unit is', [
        '₦8.80', '₦9.00', '₦9.20', '₦10.00',
    ], 0, '(2,400 + 2,000) ÷ 500 = ₦8.80.'),
    q('The reorder level is computed as', [
        'average usage × average lead time', 'maximum usage × maximum lead time',
        'minimum usage × minimum lead time', 'economic order quantity ÷ 2',
    ], 1, 'It must cover the worst case, so the maxima are used.'),
    q('Maximum level is computed as reorder level plus EOQ less', [
        'maximum usage × maximum lead time', 'minimum usage × minimum lead time',
        'average usage × average lead time', 'normal loss',
    ], 1, 'The least that can be used while waiting is what may remain.'),
    q('A stock item that is not moving is a', [
        'holding cost', 'cost of capital', 'waste of working capital', 'direct material',
    ], 2, 'It ties up money and space without producing revenue.'),
    q('The piece-rate system is criticised because it may', [
        'reduce output', 'sacrifice quality for quantity', 'increase idle time', 'reduce wages',
    ], 1, 'A worker paid by the piece is tempted to hurry.'),
    q('A guaranteed day rate with a piece rate above a stated output is designed to', [
        'protect the worker in a bad week', 'increase the employer\'s profit only', 'remove all incentive',
        'fix the wage regardless of output',
    ], 0, 'The guarantee protects the basic wage and the piece rate rewards extra output.'),
    q('The employer\'s contribution to a pension scheme is', [
        'a deduction from the worker\'s wage', 'part of the cost of labour', 'a loan to the worker',
        'a distribution of profit',
    ], 1, 'It is paid by the employer in addition to wages, so it is a labour cost.'),
    q('Overtime worked to complete a customer\'s urgent order is charged as', [
        'a factory overhead', 'direct labour of that order', 'an administration cost', 'a selling cost',
    ], 1, 'The order caused the cost, so the order bears it.'),
    q('Allocation of overhead means', [
        'sharing a cost between departments on a fair basis', 'charging a whole cost to the department that caused it',
        'spreading service department costs over production', 'charging overhead to a job',
    ], 1, 'Where a cost belongs wholly to one department, it is allocated rather than apportioned.'),
    q('Rent apportioned to departments on floor area is an example of', [
        'allocation', 'apportionment', 'absorption', 'reapportionment',
    ], 1, 'A common cost is shared on a basis that reflects the benefit.'),
    q('Budgeted overhead ₦360,000 and budgeted machine hours 12,000. The absorption rate is', [
        '₦30 per hour', '₦3 per hour', '₦12 per hour', '₦36 per hour',
    ], 0, '360,000 ÷ 12,000 = ₦30 per machine hour.'),
    q('If actual overhead is ₦370,000 and absorbed overhead is ₦390,000, the difference is', [
        '₦20,000 under-absorbed', '₦20,000 over-absorbed', '₦370,000 over-absorbed', 'nil',
    ], 1, 'More was absorbed than spent, so the difference is credited to profit and loss.'),
    q('Perpetual inventory means', [
        'stock is counted only at the year end', 'a running record of stock is kept continuously',
        'stock is valued at selling price', 'stock is never counted',
    ], 1, 'A continuous record is maintained and checked by physical counts.'),
]

BANK_3 = [
    q('Contract costing is used for', [
        'small repetitive items', 'large, long-term work carried out on the customer\'s site',
        'continuous processing', 'services only',
    ], 1, 'Construction and road building are the classic examples.'),
    q('The cost unit in job costing is the', [
        'batch', 'job', 'process', 'department',
    ], 1, 'Each job is separately identified and costed.'),
    q('In batch costing, the cost per unit is', [
        'the cost of the batch', 'the cost of the batch divided by the good units', 'the prime cost',
        'the cost of the batch divided by the input units',
    ], 1, 'The rejected units do not reduce the cost that the good units must carry.'),
    q('A process account is debited with', [
        'the output transferred out', 'the costs put into the process', 'the normal loss',
        'the abnormal gain',
    ], 1, 'Costs are debited, output and losses are credited.'),
    q('Normal loss in a process is', [
        'unexpected and written off', 'expected and allowed for in the unit cost', 'always 10 per cent',
        'valued at selling price',
    ], 1, 'It is a known feature of the process and is built into the cost per unit.'),
    q('Scrap value of normal loss is deducted from the total cost because', [
        'it is a profit', 'the firm recovers that money', 'it reduces the number of units',
        'it is a tax allowance',
    ], 1, 'Only the net cost is borne by the good units.'),
    q('Expected output is', [
        'input units plus normal loss', 'input units less normal loss', 'input units less closing work in progress',
        'the actual output',
    ], 1, 'The normal loss is not available to be sold as good output.'),
    q('An abnormal loss is written off to the', [
        'manufacturing account', 'profit and loss account', 'trading account', 'capital account',
    ], 1, 'It is not a cost of production, so it is charged to the period.'),
    q('Abnormal gain is valued at', [
        'scrap value', 'the cost per good unit', 'the selling price', 'nil',
    ], 1, 'It uses the same basis as abnormal loss, so the two are symmetrical.'),
    q('Work in progress at the end of a process is valued using', [
        'the selling price', 'equivalent units', 'the input cost only', 'the scrap value',
    ], 1, 'The degree of completion is expressed in equivalent units and priced at the process rate.'),
    q('If 800 units are 50 per cent complete, the equivalent units are', [
        '800', '400', '1,600', '200',
    ], 1, '800 × 50% = 400 equivalent units.'),
    q('The output of process I is transferred to process II as', [
        'a direct expense', 'a material cost', 'a normal loss', 'an administration cost',
    ], 1, 'It becomes an input of the next process and is treated as material there.'),
    q('A job cost card would NOT include', [
        'direct materials issued', 'direct labour booked', 'the firm\'s office rent', 'absorbed overhead',
    ], 2, 'Office rent is a period cost of the whole firm.'),
    q('Which costing method produces an average cost per unit for a continuous stream?', [
        'job costing', 'batch costing', 'process costing', 'contract costing',
    ], 2, 'Identical units make an average both possible and sufficient.'),
    q('If actual output exceeds expected output, the process shows', [
        'an abnormal loss', 'an abnormal gain', 'a normal loss', 'no adjustment',
    ], 1, 'The excess is the abnormal gain.'),
]

BANK_4 = [
    q('The contribution-to-sales ratio is', [
        'contribution divided by sales', 'sales divided by contribution', 'profit divided by sales',
        'fixed cost divided by sales',
    ], 0, 'It shows how much of each naira of sales remains after variable cost.'),
    q('Sales ₦300,000, variable cost ₦180,000. The C/S ratio is', [
        '60%', '40%', '20%', '180%',
    ], 1, 'Contribution 120,000 ÷ 300,000 = 40 per cent.'),
    q('Fixed cost ₦72,000 and C/S ratio 40 per cent. Break-even sales value is', [
        '₦180,000', '₦72,000', '₦28,800', '₦120,000',
    ], 0, '72,000 ÷ 0.40 = ₦180,000.'),
    q('At break-even, a firm makes', [
        'a profit equal to contribution', 'neither profit nor loss', 'a loss equal to fixed cost',
        'a profit equal to fixed cost',
    ], 1, 'Contribution exactly covers the fixed cost.'),
    q('A margin of safety of 25 per cent means that', [
        'sales could fall by a quarter before a loss is made', 'profit is 25 per cent of sales',
        'variable cost is 25 per cent of sales', 'fixed cost is 25 per cent of sales',
    ], 0, 'The cushion is a quarter of budgeted sales.'),
    q('Budgeted sales ₦500,000 and break-even sales ₦350,000. The margin of safety is', [
        '30%', '70%', '35%', '20%',
    ], 0, '150,000 ÷ 500,000 × 100 = 30 per cent.'),
    q('Profit equals the margin of safety in units multiplied by the', [
        'selling price', 'contribution per unit', 'fixed cost per unit', 'variable cost per unit',
    ], 1, 'Every unit above break-even adds its contribution to profit.'),
    q('Fixed cost ₦90,000, contribution per unit ₦30, target profit ₦45,000. Units needed are', [
        '3,000', '4,500', '1,500', '6,000',
    ], 1, '(90,000 + 45,000) ÷ 30 = 4,500 units.'),
    q('After-tax profit targets are grossed up because', [
        'tax is a fixed cost', 'the profit before tax must cover the tax and the target',
        'tax is a variable cost', 'the rate changes each year',
    ], 1, 'The target is divided by (1 − tax rate) before it is added to the fixed cost.'),
    q('Marginal costing values closing stock at', [
        'variable cost only', 'total cost', 'selling price', 'prime cost plus overhead',
    ], 0, 'Fixed overhead is a cost of the period, not of the unit.'),
    q('Absorption costing is required for published accounts because', [
        'it shows a higher profit', 'stock must include a share of production overhead',
        'it ignores fixed costs', 'it uses contribution',
    ], 1, 'The standards require inventory to carry its production cost.'),
    q('Sunk costs are excluded from decisions because', [
        'they are too large', 'no decision can recover them', 'they are variable', 'they are fixed',
    ], 1, 'They have already been incurred and cannot change.'),
    q('Opportunity cost is relevant to a decision because it measures', [
        'the cash already spent', 'the benefit given up by choosing one option', 'the tax effect',
        'the depreciation charge',
    ], 1, 'The cost of the alternative forgone is a real cost of the choice.'),
    q('In a make-or-buy decision, the relevant comparison is the bought-in price against', [
        'the total cost of making', 'the avoidable cost of making', 'the selling price',
        'the fixed overhead absorbed',
    ], 1, 'Only the costs that disappear if the firm stops making are relevant.'),
    q('A break-even chart assumes that, as output rises, the variable cost per unit', [
        'falls', 'remains constant', 'rises', 'becomes a fixed cost',
    ], 1, 'The straight-line cost line of the chart rests on a constant variable cost per unit.'),
]

BANK_5 = [
    q('A budget is expressed in', [
        'money only', 'money or quantities', 'quantities only', 'narrative only',
    ], 1, 'A production budget is in units and a cash budget is in money.'),
    q('The purpose of budgetary control is to', [
        'record past transactions', 'compare actual with planned and take corrective action',
        'prepare the trial balance', 'value stock',
    ], 1, 'The comparison and the action are the control.'),
    q('Co-ordination is achieved through budgeting because', [
        'each department\'s plan is reconciled with the others', 'the budget is prepared by one person',
        'the figures are historical', 'the cash budget is prepared last',
    ], 0, 'The sales plan becomes the production target and the purchasing plan.'),
    q('A budget centre is a unit of the firm for which', [
        'no records are kept', 'a budget is prepared and a manager is responsible', 'only cash is recorded',
        'the auditor is responsible',
    ], 1, 'Responsibility is the defining feature.'),
    q('Sales 9,000 units, opening stock 600, closing stock 900. Production is', [
        '8,700 units', '9,300 units', '9,900 units', '9,000 units',
    ], 1, '9,000 + 900 − 600 = 9,300 units.'),
    q('Production 9,300 units, each needing 2 kg; opening material 700 kg, closing 900 kg. Purchases are', [
        '18,600 kg', '18,800 kg', '18,400 kg', '19,600 kg',
    ], 1, 'Usage 18,600 + 900 − 700 = 18,800 kg.'),
    q('The labour budget is computed from', [
        'sales units × hours per unit', 'production units × hours per unit × the wage rate',
        'fixed cost ÷ wage rate', 'the cash budget',
    ], 1, 'Production determines the hours, and the rate converts them into money.'),
    q('The master budget is summarised in the budgeted', [
        'trial balance only', 'profit and loss, balance sheet and cash flow', 'sales budget only',
        'purchases ledger',
    ], 1, 'The functional budgets are consolidated into the three statements.'),
    q('A budget prepared by the managers who will be held to it is described as', [
        'imposed', 'participative', 'zero-based', 'flexible',
    ], 1, 'Participation improves acceptance but may introduce slack.'),
    q('Budget slack is dangerous because it', [
        'makes the budget harder to meet', 'hides inefficiency in a target that is easy to beat',
        'reduces the cash balance', 'increases tax',
    ], 1, 'A padded budget is beaten by construction, so it controls nothing.'),
    q('A fixed budget is unsuitable for cost control because it', [
        'is prepared for one level of activity', 'contains no fixed costs', 'is prepared too early',
        'is not approved',
    ], 0, 'Actual activity differs, so the comparison mixes volume with control.'),
    q('A flexible budget at 4,000 units, with fixed cost ₦30,000 and variable cost ₦5 a unit, totals', [
        '₦50,000', '₦30,000', '₦20,000', '₦45,000',
    ], 0, '30,000 + 20,000 = ₦50,000.'),
    q('A cash budget records', [
        'income earned', 'cash received and paid', 'accruals', 'depreciation',
    ], 1, 'Timing of cash is its whole purpose.'),
    q('The purchase of a fixed asset for cash appears in', [
        'the sales budget', 'the capital expenditure budget and the cash budget', 'the materials budget',
        'the production budget',
    ], 1, 'It is a capital payment and a cash outflow.'),
    q('A closing cash balance of ₦12,000 becomes, in the next month,', [
        'a receipt', 'the opening balance', 'a payment', 'a loan',
    ], 1, 'The months are linked by their balances.'),
]

BANK_6 = [
    q('Single entry means that', [
        'both sides of every transaction are recorded', 'only one aspect of a transaction is recorded',
        'the books are computerised', 'a trial balance is prepared',
    ], 1, 'The second entry is missing, so the books cannot be proved.'),
    q('A statement of affairs lists', [
        'income and expenditure', 'assets and liabilities at a date', 'sales and purchases',
        'receipts and payments',
    ], 1, 'Its balance is the capital at that date.'),
    q('Assets ₦450,000 and liabilities ₦180,000. Capital is', [
        '₦630,000', '₦270,000', '₦180,000', '₦450,000',
    ], 1, '450,000 − 180,000 = ₦270,000.'),
    q('A rise in capital during the year is caused by', [
        'drawings', 'profit and capital introduced', 'an increase in creditors', 'a fall in stock',
    ], 1, 'Only trading profit and new money from the owner raise capital.'),
    q('Opening capital ₦270,000, closing capital ₦350,000, drawings ₦40,000, no new capital. Profit is', [
        '₦120,000', '₦80,000', '₦40,000', '₦310,000',
    ], 0, '350,000 + 40,000 − 270,000 = ₦120,000.'),
    q('A mark-up is a percentage of', [
        'sales', 'cost', 'profit', 'capital',
    ], 1, 'A margin, by contrast, is a percentage of sales.'),
    q('A margin of 40 per cent is equivalent to a mark-up of', [
        '40%', '66⅔%', '60%', '28%',
    ], 1, '40 ÷ 60 = 66⅔ per cent of cost.'),
    q('Cost of sales ₦180,000 with a mark-up of 50 per cent gives sales of', [
        '₦270,000', '₦360,000', '₦240,000', '₦120,000',
    ], 0, '180,000 × 1.50 = ₦270,000.'),
    q('Sales ₦270,000 at a margin of 33⅓ per cent gives a gross profit of', [
        '₦90,000', '₦67,500', '₦180,000', '₦45,000',
    ], 0, '270,000 × 1/3 = ₦90,000.'),
    q('Credit sales are reconstructed from', [
        'the creditors\' account', 'cash received from debtors and the movement in debtors',
        'the stock account', 'the fixed asset register',
    ], 1, 'Discounts allowed are added back because no cash arrived for them.'),
    q('Cash paid to creditors ₦200,000, opening creditors ₦40,000, closing creditors ₦55,000, discounts received ₦3,000. Credit purchases are', [
        '₦218,000', '₦188,000', '₦212,000', '₦222,000',
    ], 0, '200,000 + 3,000 + 55,000 − 40,000 = ₦218,000.'),
    q('An expense paid in cash ₦50,000 with an opening accrual of ₦4,000 and a closing accrual of ₦6,000 is charged at', [
        '₦52,000', '₦48,000', '₦50,000', '₦60,000',
    ], 0, '50,000 − 4,000 + 6,000 = ₦52,000.'),
    q('The two routes through incomplete records are the statement of affairs and', [
        'the trial balance', 'the margin method', 'the bank reconciliation', 'the control account',
    ], 1, 'One works from capital, the other from the trading account.'),
    q('A statement of affairs is not a balance sheet because', [
        'it has no liabilities', 'capital is derived rather than extracted from a ledger',
        'it is prepared monthly', 'it shows only fixed assets',
    ], 1, 'The double entry has not been done, so the capital is the balancing figure.'),
    q('If the closing stock is valued at selling price instead of cost, the profit is', [
        'understated', 'overstated', 'unchanged', 'always a loss',
    ], 1, 'The stock is too high, so cost of sales is too low and profit too high.'),
]

BANK_7 = [
    q('A revaluation account is prepared before a change in the partnership so that', [
        'the tax is computed', 'the assets are at their true value when the partners settle',
        'the bank is informed', 'goodwill is eliminated',
    ], 1, 'The settlement must reflect the value of what is being shared.'),
    q('A loss on revaluation is shared', [
        'among all partners equally', 'by the old partners in the old ratio', 'by the new partner',
        'by the continuing partners only',
    ], 1, 'The loss arose while the old ratio applied.'),
    q('Goodwill raised in the books is credited to', [
        'the new partner', 'the old partners in the old ratio', 'the revaluation account',
        'the realisation account',
    ], 1, 'They built the reputation that the goodwill represents.'),
    q('After a new partner is admitted, capitals are often adjusted', [
        'by paying cash out of the firm', 'through the current accounts to agree with the new ratio',
        'by writing off the assets', 'by creating a reserve',
    ], 1, 'The adjustment moves balances between partners, not money.'),
    q('A retiring partner\'s share of goodwill is borne by the continuing partners because', [
        'they caused the goodwill', 'they will enjoy the reputation after he leaves',
        'the law requires it', 'goodwill is a liability',
    ], 1, 'The benefit and the cost follow each other.'),
    q('If a retiring partner is paid part of his balance and the rest is left in the firm, the unpaid part is', [
        'a capital account', 'a loan account', 'a current account', 'goodwill',
    ], 1, 'The firm owes him the money, so it is a loan.'),
    q('On dissolution, the realisation account records', [
        'the payment of outside creditors', 'the assets, their proceeds and the expenses of realisation',
        'the partners\' capital', 'only the cash received',
    ], 1, 'Liabilities are paid directly and do not pass through the account.'),
    q('A loss on realisation is shared', [
        'equally', 'in the profit-sharing ratio', 'by the partner with the largest capital',
        'by the creditors',
    ], 1, 'It is a loss of the venture, and it follows the profit-sharing ratio.'),
    q('Which is paid last on dissolution?', [
        'expenses of realisation', 'outside creditors', 'partners\' loans', 'partners\' capital',
    ], 3, 'Capital is the owners\' residual claim.'),
    q('A partner with a debit balance on capital at dissolution must', [
        'be paid first', 'bring in cash to clear it', 'receive it from the bank', 'transfer it to goodwill',
    ], 1, 'He owes the firm the deficit.'),
    q('On dissolution, a provision for doubtful debts that is no longer required is', [
        'debited to the realisation account', 'credited to the realisation account', 'shown as a liability',
        'carried to the capital reserve',
    ], 1, 'The provision is released, and the release is a gain in the realisation account.'),
    q('The capital of a new firm is:', [
        'the old capitals only', 'the old capitals plus the new partner\'s cash plus any goodwill raised',
        'the new partner\'s cash only', 'the total assets',
    ], 1, 'The resources of the firm are the sum of what each partner brings.'),
    q('Interest on capital is credited to a partner because', [
        'the firm borrows from a bank', 'his capital is a resource the firm uses', 'he pays tax on it',
        'it reduces his drawings',
    ], 1, 'It rewards the capital he has left in the business.'),
    q('A partnership deed is', [
        'a tax return', 'the agreement setting out capital, profit-sharing and other terms', 'a bank mandate',
        'an audit report',
    ], 1, 'It governs the relationship between the partners.'),
    q('On admission, if the new partner pays more than his share of the net assets, the excess is', [
        'a loss to the old partners', 'goodwill paid to the old partners', 'a loan to the firm',
        'a revaluation gain',
    ], 1, 'He is paying for the reputation he is joining.'),
]

BANK_8 = [
    q('Public-sector accounting is governed principally by', [
        'the Companies Act', 'financial regulations and the constitution', 'the partnership deed',
        'the memorandum of association',
    ], 1, 'Votes, warrants and financial regulations control the spending.'),
    q('The estimate is', [
        'the figure actually spent', 'the figure proposed for approval', 'the audit report',
        'the cash book balance',
    ], 1, 'It becomes the appropriation once the legislature approves it.'),
    q('An overspend on a vote is regularised by', [
        'a bank loan', 'a supplementary vote or virement', 'a transfer from a trust fund',
        'writing it off',
    ], 1, 'Further authority must be obtained for money not originally approved.'),
    q('Virement is', [
        'the transfer of funds between sub-heads with approval', 'a loan from the central bank',
        'an audit query', 'a type of trust fund',
    ], 0, 'It allows a saving on one line to meet a need on another.'),
    q('Value for money has three elements: economy, effectiveness and', [
        'efficiency', 'equity', 'expediency', 'econometrics',
    ], 0, 'Efficiency compares output with the resources consumed.'),
    q('The consolidated revenue fund holds', [
        'money for capital projects', 'revenue received and not earmarked by law', 'trust money',
        'emergency reserves',
    ], 1, 'It is the main fund out of which recurrent expenditure is met.'),
    q('A contingency fund exists for', [
        'routine salaries', 'unforeseen expenditure', 'capital projects', 'foreign loans',
    ], 1, 'It meets emergencies with approval.'),
    q('Fund accounting requires that', [
        'all funds be pooled', 'each fund be spent only on its own purpose', 'only one fund be audited',
        'funds be invested in shares',
    ], 1, 'The separation is the reason for keeping separate books.'),
    q('The Auditor-General is appointed to', [
        'prepare the accounts', 'audit public accounts and report to the legislature', 'collect taxes',
        'approve the budget',
    ], 1, 'Independence from the executive is the point of the office.'),
    q('IPSAS is a set of', [
        'Nigerian tax laws', 'international public-sector accounting standards', 'banking regulations',
        'company law provisions',
    ], 1, 'It moves public entities towards accruals-based reporting.'),
    q('In a computerised system, the trial balance is produced', [
        'at the year end only', 'automatically, whenever it is requested', 'by the auditor',
        'by the bank',
    ], 1, 'The ledger is a database, so the report is a query.'),
    q('A validation check would reject', [
        'a purchase of ₦500', 'an entry with no account code', 'a credit sale', 'a payment by cheque',
    ], 1, 'Validation tests the form of the data before it is saved.'),
    q('Segregation of duties in a computerised system is achieved through', [
        'a single shared password', 'access rights that limit what each user may do', 'a printed trial balance',
        'a bigger server',
    ], 1, 'Each user may touch only the parts of the system his job requires.'),
    q('The chart of accounts must be designed before the system is used because', [
        'it is required by law', 'it determines the structure into which every entry is posted',
        'it replaces the trial balance', 'it is the audit trail',
    ], 1, 'A poor structure produces poor reports however fast the software.'),
    q('One risk that increases in a computerised system is that', [
        'transactions are recorded slowly', 'a single wrong entry is replicated in every report',
        'the trial balance cannot be produced', 'source documents are no longer needed',
    ], 1, 'Speed and integration spread an error as efficiently as a correction.'),
]

BANK = {1: BANK_1, 2: BANK_2, 3: BANK_3, 4: BANK_4,
        5: BANK_5, 6: BANK_6, 7: BANK_7, 8: BANK_8}

SECTIONS = {
    1: "Manufacturing Accounts",
    2: "Materials, Labour and Overheads",
    3: "Job, Batch and Process Costing",
    4: "Marginal Costing and Break-Even",
    5: "Budgeting and Budgetary Control",
    6: "Incomplete Records",
    7: "Partnership Changes",
    8: "Public Sector and Computerised Accounting",
}
