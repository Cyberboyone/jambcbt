#import "template.typ": *

#pagebreak()

#chapter-opener(
  5,
  "Commercial & Financial Mathematics",
  subtitle: "Simple & Compound Interest, Depreciation, Profit/Loss %, Discounts, Hire Purchase, Taxes, Shares/Dividends & VAT",
  syllabus-ref: "JAMB Syllabus Sec. I • Topic 2(e, f, h)",
  utme-weight: "1 – 2 Questions Every Year (90% Frequency)",
)

#focus-radar(
  objectives: (
    "Calculate simple interest, total amount, principal, rate, and time (converting months and days accurately to years).",
    "Compute compound interest, sub-annual compounding, and compound asset depreciation.",
    "Solve profit and loss percentage problems, markup-and-discount chains, successive discounts, commission, and hire purchase.",
    "Master stock-market calculations: nominal (par) value vs. market price, total investment, dividends, brokerage, and percentage yield.",
    "Compute forward and reverse Value Added Tax (VAT), personal income tax bands, property rates, and bankruptcy dividends.",
  ),
  hotspots: (
    "Shares & Dividends: Dividend % is ALWAYS paid on the NOMINAL (face) value, NEVER on the market price!",
    "Recovering Cost Price (CP) from Selling Price (SP): SP = CP(1 ± p/100), so divide by (1 ± p/100) — never multiply SP by (1 ∓ p/100)!",
    "Selling two items at the SAME Selling Price, one at +p% profit and one at −p% loss, ALWAYS yields a net LOSS of p²/100%!",
    "Extracting VAT embedded inside a VAT-inclusive bill: Pre-VAT Price = Inclusive Bill ÷ (1 + v/100).",
  ),
  trap-summary: "JAMB explicitly added 'Shares and Value Added Tax (VAT)' to Section I of the Mathematics syllabus. Nearly every Shares question hinges on one trap: an investor buys 50-kobo shares quoted at N1.50; if a 20% dividend is declared, the dividend per share is 20% of 50 kobo (= 10 kobo), NEVER 20% of N1.50!",
)

// ============================================================================
// SECTION 5.1
// ============================================================================
== 5.1 Simple Interest, Compound Growth & Asset Depreciation

When money (*Principal* $P$) is deposited in a bank or borrowed as a loan at an annual interest rate $R%$ per annum (*p.a.*) for time $T$ (measured in *years*), interest accumulates by one of two mechanisms:

#diagram-fig(
  "diagrams/ch05_interest_growth.svg",
  "Comparison of Linear Simple Interest A(t) = P(1 + rt) versus Exponential Compound Growth A(t) = P(1 + r)^t on N100,000 at 20% p.a. over 6 years.",
)

=== 1. Simple Interest (Linear Growth)
Under *Simple Interest (SI)*, interest is calculated strictly on the *original principal $P$* at the end of every period — prior interest never earns interest.

#formula-box("Simple Interest & Rearrangement Formulas")[
  Let $P =$ Principal, $R =$ Annual Percentage Rate (% p.a.), and $T =$ Time *in years* (if given $m$ months, set $T = m / 12$; if given $d$ days in an ordinary year, set $T = d / 365$):
  $ I = frac(P R T, 100), quad "Total Amount " A = P + I = P(1 + frac(R T, 100)) $
  Rearranging for any unknown variable:
  $ P = frac(100 I, R T) = frac(A, 1 + R T / 100), quad R = frac(100 I, P T), quad T = frac(100 I, P R) $
  - *Doubling / Tripling Time at Simple Interest:* For $P$ to *double* ($A = 2P arrow.r.double I = P$), we need $R T = 100$, so $T_("double") = 100 / R$ years. To *triple* ($A = 3P arrow.r.double I = 2P$), $T_("triple") = 200 / R$ years.
]

=== 2. Compound Interest & Compound Depreciation
Under *Compound Interest (CI)*, the interest earned at the end of each conversion period is *reinvested (added to the principal)* so that subsequent periods earn *"interest on interest"*.

#formula-box("Compound Growth, Sub-Annual Compounding & Depreciation")[
  1. *Annual Compounding ($r%$ p.a. for $n$ years):*
     $ A = P(1 + frac(r, 100))^n, quad "Compound Interest " "CI" = A - P = P[(1 + frac(r, 100))^n - 1] $
  2. *Two-Year Shortcut for $("CI" - "SI")$:* Over *exactly $2$ years* at rate $r%$ p.a.:
     $ "CI"_2 - "SI"_2 = P(frac(r, 100))^2 quad ("the interest earned in Year 2 on Year 1's interest!") $
  3. *Sub-Annual Compounding ($k$ times per year — e.g., $k = 2$ half-yearly, $k = 4$ quarterly):*
     Divide the annual rate by $k$ and multiply the number of years by $k$:
     $ A = P(1 + frac(r, 100 k))^(k n) $
  4. *Compound Depreciation (Reducing-Balance Method):* If a vehicle or machine of initial cost $V_0$ loses $d%$ of its book value each year, its residual value after $n$ years is:
     $ V_n = V_0 (1 - frac(d, 100))^n $
     *(If depreciation rates vary year by year — say $d_1%$ in Year 1 and $d_2%$ in Year 2 — chain the multipliers: $V_2 = V_0(1 - d_1 / 100)(1 - d_2 / 100)$.)*
]

// ============================================================================
// SECTION 5.2
// ============================================================================
== 5.2 Profit, Loss, Markup, Trade Discounts & Successive Discounts

Every commercial trading transaction revolves around three distinct prices — and confusing which one sits in the denominator is the \#1 source of wrong answers in commercial arithmetic:
1. *Cost Price ($"CP"$):* Total expenditure incurred to bring goods to the point of sale (*including transport, freight, packaging, and repairs*!).
2. *Marked / List / Catalogue Price ($"MP"$):* The advertised sticker price before any discount.
3. *Selling Price ($"SP"$):* The actual cash realized when the item is sold.

#diagram-fig(
  "diagrams/ch05_pricing_chain.svg",
  "The Complete Commercial Pricing Chain: Cost Price (CP) moves to Marked Price (MP) via Markup %, then drops to Selling Price (SP) via Discount %, then moves to Final Buyer Receipt via +VAT %. Net Profit/Loss % always bridges CP directly to SP!",
)

#formula-box("Profit, Loss, Discount & Multiplier Equations")[
  - *Profit & Loss (ALWAYS anchored on Cost Price $"CP"$!):*
    $ "Profit %" = frac("SP" - "CP", "CP") times 100%, quad "Loss %" = frac("CP" - "SP", "CP") times 100% $
  - *Forward & Reverse Multiplier Bridge:*
    $ "At " p% " profit: " "SP" = "CP"(1 + frac(p, 100)) quad arrow.l.r.double quad "CP" = frac("SP", 1 + p / 100) $
    $ "At " ell% " loss:   " "SP" = "CP"(1 - frac(ell, 100)) quad arrow.l.r.double quad "CP" = frac("SP", 1 - ell / 100) $
  - *Discount (ALWAYS anchored on Marked/List Price $"MP"$!):*
    $ "SP" = "MP"(1 - frac(d, 100)) $
  - *Single Discount Equivalent to Two Successive Discounts $d_1%$ then $d_2%$:*
    $ d_("eq") = (d_1 + d_2 - frac(d_1 d_2, 100))% $
]

#trap-box("Three Classic Commercial Arithmetic Traps")[
  1. *Two Items Sold at the SAME Selling Price ($+p%$ and $-p%$):* If a dealer sells two cars for ₦$2400000$ *each*, gaining $20%$ on the first and losing $20%$ on the second, he does *NOT* break even! Why? $"CP"_1 = 2.4"M" / 1.2 = 2.0"M"$ (gain ₦$0.4"M"$), whereas $"CP"_2 = 2.4"M" / 0.8 = 3.0"M"$ (loss ₦$0.6"M"$)! Net loss $= (20^2 / 100)% = bold(4%" loss")$. *(Note: if two items have the *same Cost Price*, $+p%$ and $-p%$ DO cancel out to $0%$!)*
  2. *Successive Discounts Never Add Simply:* A $20%$ trade discount followed by a $10%$ cash discount is $1 - (0.80)(0.90) = 1 - 0.72 = bold(28%)$, *never* $30%$!
  3. *Quantity-Equivalence Pricing ("CP of $m$ items = SP of $n$ items"):* Let $"CP"$ of $1$ item $= 1$ Naira. Then selling $n$ items costs $n$ Naira and brings in $"SP"$ of $n$ items $= "CP"$ of $m$ items $= m$ Naira! Hence:
     $ "Gain/Loss %" = frac(m - n, n) times 100% quad ("Denominator is ALWAYS the SP count " n!) $
]

// ============================================================================
// SECTION 5.3
// ============================================================================
== 5.3 Shares, Stocks, Dividends & Brokerage

Publicly quoted companies raise capital by issuing *ordinary shares* (equities). Mastering three vocabulary terms unlocks 100% of JAMB shares questions effortlessly:

#diagram-fig(
  "diagrams/ch05_shares_map.svg",
  "Anatomy of Stock & Share Calculations: Market Price determines how many shares your cash buys (and Yield %), whereas Nominal (Par/Face) Value ALONE determines the cash Dividend paid per share!",
)

#concept-box("The Four Golden Equations of Shares & Dividends")[
  1. *Nominal (Par / Face) Value ($V_("nom")$):* The fixed face denomination printed on each share certificate (commonly $50" kobo" = "₦"0.50$, $"₦"1.00$, or $"₦"2.00$).
  2. *Market (Quoted) Price ($P_("mkt")$):* The current stock-exchange buying/selling price per share:
     - *At par:* $P_("mkt") = V_("nom")$.
     - *At a premium (above par):* $P_("mkt") > V_("nom")$.
     - *At a discount (below par):* $P_("mkt") < V_("nom")$.
  3. *Number of Shares Purchased ($N$):*
     $ N = frac("Total Cash Invested", "Market Price per Share " P_("mkt")) $
     *(If a stockbroker charges $b%$ brokerage on purchase, effective cost per share is $P_("mkt")(1 + b / 100)$; on selling shares, net proceeds per share are $P_("mkt")(1 - b / 100)$.)*
  4. *Annual Cash Dividend & Actual Percentage Yield:*
     - *Dividend per share* $= (frac("Declared Dividend %", 100)) times bold(V_("nom"))$ (*ALWAYS on Nominal Value!*).
     - *Total Dividend* $= N times ("Dividend per share")$.
     - *Percentage Yield (Return on Investment)* $= frac("Total Dividend", "Total Cash Invested") times 100% = frac("Dividend per share", P_("mkt")) times 100%$.
]

// ============================================================================
// SECTION 5.4
// ============================================================================
== 5.4 Value Added Tax (VAT), Income Tax, Commission, Hire Purchase & Rates

=== 1. Value Added Tax (VAT)
VAT is an indirect consumption tax levied on goods and services (currently *$7.5%$* in Nigeria under the Finance Act, though older UTME questions also test *$5%$* — always use the exact percentage stated in the question!).
- *Forward VAT (from VAT-exclusive price $P_0$):*
  $ "VAT" = frac(v, 100) P_0, quad P_("inclusive") = P_0 (1 + frac(v, 100)) $
- *Reverse VAT (extracting VAT from a *VAT-inclusive* price $P_("inc")$):*
  $ P_0 = frac(P_("inc"), 1 + v / 100), quad "Embedded VAT" = P_("inc") - P_0 = P_("inc") times frac(v, 100 + v) $
  *Speed Tip for $7.5%$ VAT:* Note that $1 + 0.075 = 1.075 = frac(43, 40)$! So dividing by $1.075$ is simply *multiplying by $frac(40, 43)$* without a calculator! And for $5%$ VAT, $1.05 = frac(21, 20)$, so divide by $1.05$ by multiplying by $frac(20, 21)$!

=== 2. Personal Income Tax, Hire Purchase, Commission & Rates
- *Personal Income Tax:* First subtract all *tax-free allowances* (personal, spouse, children, pension/NHF reliefs) from *Gross Income* to obtain *Taxable (Chargeable) Income*:
  $ "Taxable Income" = "Gross Income" - "Total Tax-Free Allowances" $
  Apply progressive tax band percentages slice-by-slice to Taxable Income, then compute $"Net (Take-Home) Pay" = "Gross Income" - "Total Tax"$.
- *Hire Purchase (HP):* $"HP Price" = "Initial Deposit" + ("Number of Instalments" times "Instalment Amount")$. Extra HP finance charge $= "HP Price" - "Cash Price"$.
- *Property / Tenement Rates, Insurance & Bankruptcy:* Expressed as _"kobo in the Naira"_ ($k" kobo per ₦"1 = k%$) or _"per ₦$1000$ insured"_. If an insolvent debtor pays $35" kobo in the Naira"$, every creditor receives $35%$ of the debt owed (and loses $65%$).

// ============================================================================
// GRADED WORKED EXAMPLES (5.1 – 5.28)
// ============================================================================
== 5.5 Graded Step-by-Step Worked Examples

#worked-example(
  "5.1",
  "Simple Interest and Total Amount",
  tier: "FOUNDATION",
  [Find the simple interest and the total amount on ₦$150000$ invested for $3$ years at $8%$ per annum.],
  [
    *Step 1 — Compute Simple Interest $I = P R T / 100$:*
    $ I = frac(150000 times 8 times 3, 100) = 1500 times 24 = "₦"36000 $

    *Step 2 — Add Principal to obtain Total Amount $A$:*
    $ A = 150000 + 36000 = bold("₦"186000) $
    *Final Answers:* Interest $= bold("₦"36000)$; Amount $= bold("₦"186000)$.
  ],
)

#worked-example(
  "5.2",
  "Simple Interest Over Fractional Years (Months)",
  tier: "FOUNDATION",
  [Calculate the simple interest on a loan of ₦$240000$ for $9$ months at $15%$ per annum.],
  [
    *Step 1 — Convert $9$ months to years ($T = 9 / 12 = 3 / 4$ year):*
    $ I = frac(P R T, 100) = frac(240000 times 15 times 3, 100 times 4) = 600 times 45 = bold("₦"27000) $
    *Final Answer:* *₦27,000*.
  ],
)

#worked-example(
  "5.3",
  "Finding Original Principal from Total Amount (Reverse SI)",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [What principal will amount to ₦$98000$ in $4$ years at $10%$ per annum simple interest?],
  [
    *Step 1 — Use the Amount formula $A = P(1 + R T / 100)$:*
    Warning: ₦$98000$ is the *Amount $A$*, NOT the interest $I$!
    $ 98000 = P(1 + frac(10 times 4, 100)) = P(1 + 0.40) = 1.40 P $

    *Step 2 — Solve for $P$:*
    $ P = frac(98000, 1.40) = frac(980000, 14) = bold("₦"70000) $
    *Final Answer:* *₦70,000*.
  ],
)

#worked-example(
  "5.4",
  "Time Required for Money to Double and Triple at Simple Interest",
  tier: "UTME STANDARD",
  [At $12.5%$ per annum simple interest, how many years does a sum of money take to: (a) double itself; (b) triple itself?],
  [
    *Part (a) — Doubling ($A = 2P arrow.r.double I = P$):*
    $ P = frac(P times 12.5 times T, 100) quad arrow.r.double quad T = frac(100, 12.5) = frac(1000, 125) = bold(8 "years") $

    *Part (b) — Tripling ($A = 3P arrow.r.double I = 2P$):*
    $ 2P = frac(P times 12.5 times T, 100) quad arrow.r.double quad T = frac(200, 12.5) = bold(16 "years") $
    *Final Answers:* (a) *8 years*; (b) *16 years*.
  ],
)

#worked-example(
  "5.5",
  "Split-Capital Portfolio Problem",
  tier: "JAMB CHALLENGE",
  [A retiree invests a total of ₦$500000$ in two accounts: part at $6%$ p.a. simple interest and the remainder at $10%$ p.a. simple interest. If her total annual interest from both accounts is ₦$42000$, how much did she invest at each rate?],
  [
    *Step 1 — Set up a single-variable linear equation:*
    Let the sum invested at $6%$ be $x$; then the sum invested at $10%$ is $(500000 - x)$.
    $ 0.06 x + 0.10 (500000 - x) = 42000 $

    *Step 2 — Expand and solve for $x$:*
    $ 0.06 x + 50000 - 0.10 x = 42000 quad arrow.r.double quad 0.04 x = 8000 quad arrow.r.double quad x = frac(800000, 4) = 200000 $
    Hence $500000 - 200000 = 300000$ was invested at $10%$.
    *Final Answer:* *₦200,000* at $6%$ and *₦300,000* at $10%$.
  ],
)

#worked-example(
  "5.6",
  "Compound Interest Over Three Years",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Calculate the compound interest on ₦$200000$ for $3$ years at $10%$ per annum compounded annually.],
  [
    *Step 1 — Compute compound Amount $A = P(1 + r / 100)^n$:*
    $ A = 200000 (1 + 0.10)^3 = 200000 times (1.1)^3 = 200000 times 1.331 = "₦"266200 $

    *Step 2 — Subtract Principal to isolate Compound Interest:*
    $ "CI" = 266200 - 200000 = bold("₦"66200) $
    *Final Answer:* *₦66,200*.
  ],
)

#worked-example(
  "5.7",
  "Fast 2-Year Difference Between Compound and Simple Interest",
  tier: "UTME STANDARD",
  [Find the positive difference between the compound interest and simple interest on ₦$400000$ for $2$ years at $15%$ per annum.],
  [
    *Step 1 — Apply the 2-year shortcut $"CI"_2 - "SI"_2 = P(r / 100)^2$:*
    $ "CI"_2 - "SI"_2 = 400000 times (frac(15, 100))^2 = 400000 times frac(225, 10000) = 40 times 225 = bold("₦"9000) $
    *(Verification: $"SI"_2 = 400000 times 0.30 = 120000$; $"CI"_2 = 400000(1.3225 - 1) = 129000$; difference $= 9000$ ✓.)*
    *Final Answer:* *₦9,000*.
  ],
)

#worked-example(
  "5.8",
  "Half-Yearly (Semi-Annual) Compounding",
  tier: "UTME STANDARD",
  [Find the total amount when ₦$100000$ is invested for $1$ year at $12%$ per annum compounded *half-yearly*.],
  [
    *Step 1 — Adjust rate and number of periods ($k = 2$):*
    Rate per half-year $= 12% div 2 = 6%$; number of half-years in $1$ year $= 2$.
    $ A = 100000 (1 + 0.06)^2 = 100000 times 1.1236 = bold("₦"112360) $
    *Final Answer:* *₦112,360*.
  ],
)

#worked-example(
  "5.9",
  "Compound Asset Depreciation",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [A delivery van bought for ₦$5000000$ depreciates at $20%$ per annum on the reducing-balance basis. Find its value after $3$ years.],
  [
    *Step 1 — Apply $V_3 = V_0 (1 - d / 100)^3$:*
    $ V_3 = 5000000 (1 - 0.20)^3 = 5000000 times (frac(4, 5))^3 = 5000000 times frac(64, 125) = 40000 times 64 = bold("₦"2560000) $
    *Final Answer:* *₦2,560,000*.
  ],
)

#worked-example(
  "5.10",
  "Profit Percentage with Spoilage / Breakage",
  tier: "FOUNDATION",
  [A poultry retailer buys a crate of $30$ eggs for ₦$3600$. During transport $3$ eggs break, and she sells the remaining good eggs at ₦$160$ each. Calculate her percentage profit.],
  [
    *Step 1 — Compute total Selling Price from the $30 - 3 = 27$ good eggs:*
    $"SP" = 27 times 160 = "₦"4320$.

    *Step 2 — Compute Profit % relative to total Cost Price (₦$3600$):*
    $ "Profit" = 4320 - 3600 = "₦"720 quad arrow.r.double quad "Profit %" = frac(720, 3600) times 100% = frac(1, 5) times 100% = bold(20%) $
    *Final Answer:* *20%*.
  ],
)

#worked-example(
  "5.11",
  "Recovering Cost Price from Selling Price",
  tier: "FOUNDATION",
  [By selling a smartphone for ₦$84000$, a dealer makes a profit of $20%$. How much did the dealer pay for the phone?],
  [
    *Step 1 — Use $"SP" = 1.20 times "CP"$:*
    $ 1.20 times "CP" = 84000 quad arrow.r.double quad "CP" = frac(84000, 1.20) = frac(840000, 12) = bold("₦"70000) $
    *Final Answer:* *₦70,000*.
  ],
)

#worked-example(
  "5.12",
  "Two-Stage Price Switch — From Loss % to Target Profit %",
  tier: "UTME STANDARD",
  source: "JAMB Classic",
  [A trader sold a wristwatch for ₦$18000$ at a loss of $10%$. At what price should he have sold it in order to make a profit of $25%$?],
  [
    *Step 1 — Find the Cost Price $"CP"$ from the $10%$ loss sale ($90%$ of $"CP"$):*
    $ 0.90 times "CP" = 18000 quad arrow.r.double quad "CP" = frac(18000, 0.90) = "₦"20000 $

    *Step 2 — Apply the $25%$ profit multiplier ($1.25$) to $"CP"$:*
    $ "New SP" = 1.25 times 20000 = bold("₦"25000) $
    *(One-Step Ratio Shortcut: $"SP"_2 = 18000 times frac(125, 90) = 200 times 125 = "₦"25000$!)*
    *Final Answer:* *₦25,000*.
  ],
)

#worked-example(
  "5.13",
  "Equal Selling Price (+20% and −20%) — The Net Loss Trap!",
  tier: "JAMB CHALLENGE",
  source: "JAMB Chief Examiner Trap",
  [A dealer sold two power generators for ₦$120000$ *each*. On one he gained $20%$, and on the other he lost $20%$. Find his overall cash gain or loss and overall percentage gain or loss.],
  [
    *Step 1 — Recover each generator's Cost Price separately:*
    - Generator 1 ($+20%$ gain): $"CP"_1 = frac(120000, 1.20) = "₦"100000$.
    - Generator 2 ($-20%$ loss): $"CP"_2 = frac(120000, 0.80) = "₦"150000$.

    *Step 2 — Compare Total Cost Price vs. Total Selling Price:*
    - $"Total CP" = 100000 + 150000 = "₦"250000$.
    - $"Total SP" = 120000 + 120000 = "₦"240000$.
    Since $"Total SP" < "Total CP"$, he suffers a *net cash loss of ₦$10000$*!

    *Step 3 — Compute overall Loss %:*
    $ "Loss %" = frac(10000, 250000) times 100% = bold(4% "loss") quad ("Matches formula " frac(20^2, 100)% = 4%!) $
    *Final Answer:* *Net loss of ₦10,000* (*4% loss*).
  ],
)

#worked-example(
  "5.14",
  "Markup Followed by Cash Discount",
  tier: "UTME STANDARD",
  [A boutique marks its garments $40%$ above cost price, and then grants customers a $15%$ festive discount off the marked price. What actual percentage profit does the boutique make?],
  [
    *Step 1 — Chain the markup and discount multipliers (or let $"CP" = 100$):*
    - $"MP" = 1.40 times 100 = 140$.
    - $"SP" = 0.85 times 140 = 119$.

    *Step 2 — Read off net profit above $100$:*
    $119 - 100 = bold(19%" profit")$.
    *Final Answer:* *19% profit*.
  ],
)

#worked-example(
  "5.15",
  "Single Discount Equivalent to Successive Discounts",
  tier: "UTME STANDARD",
  [Find the single percentage discount equivalent to successive trade and cash discounts of $20%$ and $15%$.],
  [
    *Step 1 — Multiply survival factors:*
    $(1 - 0.20)(1 - 0.15) = 0.80 times 0.85 = 0.68$ (buyer pays $68%$ of list price).

    *Step 2 — Subtract from $100%$:*
    $"Equivalent single discount" = 100% - 68% = bold(32%)$.
    *(Formula check: $20 + 15 - frac(20 times 15, 100) = 35 - 3 = 32%$ ✓.)*
    *Final Answer:* *32%*.
  ],
)

#worked-example(
  "5.16",
  "Setting Marked Price to Achieve Target Profit After Discount",
  tier: "JAMB CHALLENGE",
  [An appliance costs a merchant ₦$16000$. At what Marked Price must he label it so that even after allowing a customer a $20%$ discount, he still realizes a $20%$ profit on cost?],
  [
    *Step 1 — Compute the required Selling Price for $20%$ profit:*
    $"SP" = 1.20 times 16000 = "₦"19200$.

    *Step 2 — Equate $"SP"$ to $80%$ of Marked Price ($20%$ discount):*
    $ 0.80 times "MP" = 19200 quad arrow.r.double quad "MP" = frac(19200, 0.80) = frac(192000, 8) = bold("₦"24000) $
    *Final Answer:* *₦24,000*.
  ],
)

#worked-example(
  "5.17",
  "Hire Purchase vs. Cash Price",
  tier: "UTME STANDARD",
  [The cash price of a deep freezer is ₦$250000$. Under a hire-purchase agreement, a buyer pays a $20%$ cash deposit followed by $12$ monthly instalments of ₦$20000$ each. By what amount and what percentage does the hire-purchase price exceed the cash price?],
  [
    *Step 1 — Calculate Total Hire-Purchase Price:*
    - Deposit $= 20% "of" 250000 = "₦"50000$.
    - Total instalments $= 12 times 20000 = "₦"240000$.
    - Total HP Price $= 50000 + 240000 = "₦"290000$.

    *Step 2 — Compute extra finance cost and percentage over cash price:*
    Extra paid $= 290000 - 250000 = bold("₦"40000)$.
    Percentage excess $= frac(40000, 250000) times 100% = bold(16%)$.
    *Final Answers:* *₦40,000* (*16%*).
  ],
)

#worked-example(
  "5.18",
  "Base Salary Plus Tiered Sales Commission",
  tier: "UTME STANDARD",
  [A sales representative receives a basic monthly salary of ₦$60000$ plus a $4%$ commission on all monthly sales exceeding ₦$500000$. Calculate his total earnings in a month when his sales reach ₦$1750000$.],
  [
    *Step 1 — Find commissionable sales above the ₦$500000$ threshold:*
    $"Excess sales" = 1750000 - 500000 = "₦"1250000$.

    *Step 2 — Compute commission and add basic salary:*
    $"Commission" = 0.04 times 1250000 = "₦"50000$.
    $"Total Earnings" = 60000 + 50000 = bold("₦"110000)$.
    *Final Answer:* *₦110,000*.
  ],
)

#worked-example(
  "5.19",
  "Progressive Personal Income Tax & Take-Home Pay",
  tier: "JAMB CHALLENGE",
  [An engineer earns a gross annual salary of ₦$1800000$ and enjoys total tax-free allowances of ₦$400000$. Income tax is charged at $10%$ on the first ₦$600000$ of taxable income and $15%$ on the remainder. Calculate her annual income tax and net annual take-home pay.],
  [
    *Step 1 — Determine Taxable Income:*
    $"Taxable Income" = 1800000 - 400000 = "₦"1400000$.

    *Step 2 — Apply progressive tax bands to ₦$1400000$:*
    - First ₦$600000$ at $10%$: $0.10 times 600000 = "₦"60000$.
    - Remaining $1400000 - 600000 = "₦"800000$ at $15%$: $0.15 times 800000 = "₦"120000$.
    - Total Annual Tax $= 60000 + 120000 = bold("₦"180000)$.

    *Step 3 — Subtract tax from GROSS salary:*
    $"Net Take-Home Pay" = 1800000 - 180000 = bold("₦"1620000)$.
    *Final Answers:* Tax $= bold("₦"180000)$; Net Pay $= bold("₦"1620000)$.
  ],
)

#worked-example(
  "5.20",
  "Shares Bought at a Premium — Investment, Dividend & Yield",
  tier: "UTME STANDARD",
  source: "JAMB Syllabus Core",
  [An investor buys $4000$ ordinary shares of nominal value ₦$1.00$ each at a market price of ₦$2.50$ per share. If the company declares an annual dividend of $15%$, calculate: (a) the total amount invested; (b) the annual dividend received; and (c) the percentage yield on the investment.],
  [
    *Part (a) — Total Investment (uses Market Price ₦$2.50$):*
    $"Total Investment" = 4000 times 2.50 = bold("₦"10000)$.

    *Part (b) — Annual Dividend (uses Nominal Value ₦$1.00$, NEVER ₦$2.50$!):*
    - Dividend per share $= 15% "of ₦"1.00 = "₦"0.15$.
    - Total Dividend $= 4000 times 0.15 = bold("₦"600)$.

    *Part (c) — Percentage Yield:*
    $ "Yield %" = frac("Total Dividend", "Total Investment") times 100% = frac(600, 10000) times 100% = bold(6%) $
    *Final Answers:* (a) *₦10,000*; (b) *₦600*; (c) *6%*.
  ],
)

#worked-example(
  "5.21",
  "Investing a Lump Sum in 50-Kobo Shares",
  tier: "JAMB CHALLENGE",
  source: "JAMB Favourite",
  [Alhaji Bello invests ₦$180000$ in $50$-kobo ordinary shares quoted on the exchange at ₦$1.50$ per share. If the company declares a dividend of $24%$, find: (a) how many shares he bought; (b) his gross annual dividend; and (c) his effective percentage return.],
  [
    *Part (a) — Number of shares $N$ (Cash $div$ Market Price):*
    $ N = frac(180000, 1.50) = frac(1800000, 15) = bold(120000 "shares") $

    *Part (b) — Annual Dividend (on Nominal Value $50" kobo" = "₦"0.50$):*
    - Total Nominal Value held $= 120000 times 0.50 = "₦"60000$.
    - Gross Dividend $= 24% "of ₦"60000 = 0.24 times 60000 = bold("₦"14400)$.

    *Part (c) — Effective Yield %:*
    $ "Yield" = frac(14400, 180000) times 100% = frac(144, 18)% = bold(8%) $
    *Final Answers:* (a) *120,000 shares*; (b) *₦14,400*; (c) *8%*.
  ],
)

#worked-example(
  "5.22",
  "Shares Bought at a Discount with Stockbroker's Commission",
  tier: "UTME STANDARD",
  [Find the total amount paid by an investor who buys $5000$ shares of nominal value ₦$2.00$ quoted at ₦$1.60$ per share, if the stockbroker charges $2.5%$ brokerage on the market value.],
  [
    *Step 1 — Market value of the $5000$ shares:*
    $"Market Cost" = 5000 times 1.60 = "₦"8000$ (note: Nominal Value ₦$2.00$ is irrelevant to purchase cost!).

    *Step 2 — Add $2.5%$ brokerage fee:*
    $"Brokerage" = 0.025 times 8000 = "₦"200$.
    $"Total Paid" = 8000 + 200 = bold("₦"8200)$.
    *Final Answer:* *₦8,200*.
  ],
)

#worked-example(
  "5.23",
  "Finding the Market Share Price Required for a Target Yield",
  tier: "UTME STANDARD",
  [At what market price must a ₦$1.00$ nominal share paying an $18%$ annual dividend be purchased so that the investor earns a $12%$ return on her money?],
  [
    *Step 1 — Cash dividend per share:*
    $"Dividend per share" = 18% "of ₦"1.00 = "₦"0.18$.

    *Step 2 — Equate yield to $12%$:*
    $ frac(0.18, P_("mkt")) = 0.12 quad arrow.r.double quad P_("mkt") = frac(0.18, 0.12) = frac(18, 12) = bold("₦"1.50) $
    *Final Answer:* *₦1.50*.
  ],
)

#worked-example(
  "5.24",
  "Forward VAT Calculation (7.5%)",
  tier: "FOUNDATION",
  [The pre-tax price of a laptop is ₦$320000$. If Value Added Tax (VAT) is charged at $7.5%$, find the VAT amount and the total price paid by the buyer.],
  [
    *Step 1 — Compute $7.5%$ ($= 3 / 40$) of ₦$320000$:*
    $ "VAT" = frac(7.5, 100) times 320000 = frac(3, 40) times 320000 = 3 times 8000 = bold("₦"24000) $

    *Step 2 — Add to pre-VAT price:*
    $"Total VAT-inclusive price" = 320000 + 24000 = bold("₦"344000)$.
    *Final Answers:* VAT $= bold("₦"24000)$; Total $= bold("₦"344000)$.
  ],
)

#worked-example(
  "5.25",
  "Extracting Embedded VAT from a VAT-Inclusive Receipt",
  tier: "UTME STANDARD",
  source: "JAMB Syllabus Trap",
  [A customer pays ₦$86000$ for a washing machine, *inclusive of $7.5%$ VAT*. Calculate the pre-VAT price of the machine and the exact VAT remitted to the tax authority.],
  [
    *Step 1 — Divide the VAT-inclusive bill by $1.075 = 43 / 40$ (NEVER take $7.5%$ of ₦$86000$!):*
    $ P_0 = frac(86000, 1.075) = 86000 times frac(40, 43) = 2000 times 40 = bold("₦"80000) $

    *Step 2 — Subtract to find the exact VAT:*
    $"VAT" = 86000 - 80000 = bold("₦"6000)$.
    *Final Answers:* Pre-VAT price $= bold("₦"80000)$; VAT $= bold("₦"6000)$.
  ],
)

#worked-example(
  "5.26",
  "Trade Discount Followed by VAT",
  tier: "UTME STANDARD",
  [An invoice lists building materials at ₦$100000$, subject to a $10%$ trade discount and then $7.5%$ VAT on the discounted invoice value. Find the final amount payable.],
  [
    *Step 1 — Apply the $10%$ trade discount first:*
    $"Net Invoice Price" = 0.90 times 100000 = "₦"90000$.

    *Step 2 — Add $7.5%$ VAT to the discounted price:*
    $"Final Payable" = 90000 times 1.075 = 90000 + 6750 = bold("₦"96750)$.
    *Final Answer:* *₦96,750*.
  ],
)

#worked-example(
  "5.27",
  "Comparing Two Competing Investments (Fixed Deposit vs. Equities)",
  tier: "JAMB CHALLENGE",
  [Mrs. Okafor has ₦$300000$ to invest for one year. Option A is a bank fixed deposit paying $9%$ p.a. simple interest. Option B is buying ₦$1.00$ nominal shares quoted at ₦$1.20$ per share in a firm paying a $12%$ annual dividend. Which option yields higher annual income, and by how much?],
  [
    *Step 1 — Evaluate Option A (Bank Deposit):*
    $"Income"_A = 0.09 times 300000 = "₦"27000$.

    *Step 2 — Evaluate Option B (Equities):*
    - Number of shares bought $= 300000 div 1.20 = 250000$ shares.
    - Dividend per share $= 12% "of ₦"1.00 = "₦"0.12$.
    - $"Income"_B = 250000 times 0.12 = "₦"30000$.

    *Step 3 — Compare:*
    Option B exceeds Option A by $30000 - 27000 = bold("₦"3000)$.
    *Final Answer:* *Option B (Shares)*, by *₦3,000*.
  ],
)

#worked-example(
  "5.28",
  "Dishonest Scale / Short-Weight Profit Percentage",
  tier: "JAMB CHALLENGE",
  [A dishonest grain seller claims to sell rice at his exact cost price per kg, but uses a tampered weight of $800" g"$ whenever a buyer pays for $1" kg"$ ($1000" g"$). What actual percentage profit does he make?],
  [
    *Step 1 — Compare revenue vs. true cost on $800" g"$ handed over:*
    Suppose $1" g"$ truly costs ₦$1$.
    - True Cost Price of the $800" g"$ actually delivered: $"CP" = "₦"800$.
    - Cash collected from buyer (charged for $1000" g"$): $"SP" = "₦"1000$.

    *Step 2 — Compute Profit % on true $"CP"$ ($"₦"800$):*
    $ "Profit %" = frac(1000 - 800, 800) times 100% = frac(200, 800) times 100% = bold(25%) $
    *Final Answer:* *25%*.
  ],
)

// ============================================================================
// SECTION 5.6 RAPID-REVISION SUMMARY TABLE
// ============================================================================
== 5.6 Chapter 5 Rapid-Revision Checklist

#table(
  columns: (1.3fr, 2.1fr, 1.6fr),
  inset: 7.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Topic],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Master Formula],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[JAMB Exam Trap],

  [*Simple Interest*],
  [$I = frac(P R T, 100)$, #h(6pt) $A = P(1 + frac(R T, 100))$.],
  [Convert months ($m / 12$) to years! Distinguish Amount $A$ from Interest $I$.],

  [*Compound / Deprec.*],
  [$A = P(1 + frac(r, 100))^n$; #h(6pt) $V_n = V_0(1 - frac(d, 100))^n$.],
  [$"CI" = A - P$ (remember to subtract $P$ when asked for interest!).],

  [*Profit, Loss & Disc.*],
  [$"SP" = "CP"(1 plus.minus p / 100) = "MP"(1 - d / 100)$.],
  [Same $"SP"$ with $+p%$ and $-p%$ ALWAYS gives $p^2 / 100%$ *net loss*!],

  [*Shares & Dividends*],
  [$N = frac("Cash", P_("mkt"))$, #h(6pt) $"Div" = N times frac(d, 100) times V_("nom")$.],
  [Dividend % multiplies *Nominal Value $V_("nom")$*, NEVER Market Price!],

  [*Value Added Tax*],
  [$P_("inc") = P_0(1 + frac(v, 100))$; #h(6pt) $P_0 = frac(P_("inc"), 1 + v / 100)$.],
  [For $7.5%$ VAT-inclusive bills, multiply by $frac(40, 43)$ to get $P_0$!],
)

// ============================================================================
// END-OF-CHAPTER JAMB UTME PRACTICE DRILL (50 QUESTIONS)
// ============================================================================
== 5.7 JAMB UTME Practice Drill — Chapter 5 (50 Questions)

Attempt all 50 questions without a scientific calculator (target time: *42 minutes*).

#mcq(1, [Find the simple interest on ₦$80000$ for $5$ years at $6%$ per annum.], [₦$24000$], [₦$20000$], [₦$104000$], [₦$28000$])

#mcq(2, [Calculate the simple interest on ₦$120000$ borrowed for $8$ months at $10%$ per annum.], [₦$9600$], [₦$8000$], [₦$12000$], [₦$6000$])

#mcq(3, [In how many years will ₦$90000$ yield a simple interest of ₦$27000$ at $6%$ per annum?], [$4$ years], [$6$ years], [$5$ years], [$4.5$ years])

#mcq(4, [At what annual percentage rate of simple interest will ₦$75000$ earn ₦$18000$ in $3$ years?], [$6%$], [$7.5%$], [$9%$], [$8%$])

#mcq(5, [Find the principal that amounts to ₦$68000$ in $4$ years at $9%$ per annum simple interest.], [₦$50000$], [₦$43520$], [₦$48000$], [₦$52000$])

#mcq(6, [How many years will it take any sum of money to *double* itself at $8%$ per annum simple interest?], [$10$ years], [$12.5$ years], [$16$ years], [$25$ years])

#mcq(7, [Find the total amount if ₦$50000$ is invested for $2$ years at $10%$ per annum *compound* interest.], [₦$60000$], [₦$55000$], [₦$60500$], [₦$61000$])

#mcq(8, [Calculate the *compound interest* on ₦$100000$ for $3$ years at $20%$ per annum compounded annually.], [₦$60000$], [₦$172800$], [₦$68400$], [₦$72800$])

#mcq(9, [Find the difference between the compound interest and simple interest on ₦$250000$ for $2$ years at $12%$ per annum.], [₦$3600$], [₦$3000$], [₦$7200$], [₦$1800$])

#mcq(10, [A photocopying machine bought for ₦$800000$ depreciates at $10%$ per annum. Find its book value at the end of $2$ years.], [₦$640000$], [₦$648000$], [₦$720000$], [₦$656000$])

#mcq(11, [A trader buys a bag of garri for ₦$36000$ and sells it for ₦$45000$. What is her percentage profit?], [$20%$], [$22.5%$], [$25%$], [$18%$])

#mcq(12, [An item bought for ₦$50000$ is sold for ₦$42500$. Calculate the percentage loss.], [$17.6%$], [$7.5%$], [$12.5%$], [$15%$])

#mcq(13, [A bicycle was sold for ₦$46000$ at a profit of $15%$. Find the cost price of the bicycle.], [₦$40000$], [₦$39100$], [₦$42000$], [₦$38500$])

#mcq(14, [By selling a carpet for ₦$34000$, a shopkeeper incurred a loss of $15%$. What was the cost price of the carpet?], [₦$39100$], [₦$40000$], [₦$38000$], [₦$42500$])

#mcq(15, [A textbook was sold for ₦$27000$ at a loss of $10%$. For how much should it be sold to gain $20%$?], [₦$32400$], [₦$33000$], [₦$36000$], [₦$35000$])

#mcq(16, [A dealer sells two phones at the *exact same selling price*, gaining $10%$ on the first and losing $10%$ on the second. His overall result on the two transactions is:], [neither gain nor loss], [$1%$ profit], [$2%$ loss], [$1%$ loss])

#mcq(17, [A retailer marks goods $25%$ above cost price and allows a cash discount of $10%$ off the marked price. Find his actual percentage profit.], [$12.5%$], [$15.0%$], [$10.0%$], [$17.5%$])

#mcq(18, [What single percentage discount is equivalent to two successive discounts of $10%$ and $20%$?], [$30%$], [$28%$], [$25%$], [$27%$])

#mcq(19, [After receiving a $20%$ discount, a customer paid ₦$48000$ for a suit. What was the Marked Price of the suit?], [₦$57600$], [₦$58000$], [₦$60000$], [₦$64000$])

#mcq(20, [A jacket costs a tailor ₦$15000$. At what Marked Price should she tag it so that after granting a $25%$ discount she still makes a $20%$ profit?], [₦$22500$], [₦$21000$], [₦$25000$], [₦$24000$])

#mcq(21, [A television has a cash price of ₦$160000$. On hire purchase, a customer pays a deposit of ₦$30000$ and $10$ monthly instalments of ₦$15000$ each. How much extra does hire purchase cost above the cash price?], [₦$20000$], [₦$10000$], [₦$30000$], [₦$25000$])

#mcq(22, [An agent earns a monthly retainer of ₦$40000$ plus $5%$ commission on all sales. Find her total income in a month with sales of ₦$800000$.], [₦$44000$], [₦$80000$], [₦$60000$], [₦$85000$])

#mcq(23, [A worker's gross annual income is ₦$1200000$ with tax-free allowances of ₦$250000$. Tax is $10%$ on the first ₦$500000$ of taxable income and $20%$ on the remainder. Find his total annual tax.], [₦$120000$], [₦$190000$], [₦$140000$], [₦$150000$])

#mcq(24, [An investor holds $6000$ ordinary shares of nominal value ₦$1.00$ each, currently quoted at ₦$1.80$ per share. If the company declares a $12%$ dividend, how much dividend does she receive?], [₦$1296$], [₦$1080$], [₦$600$], [₦$720$])

#mcq(25, [How many $50$-kobo nominal shares quoted on the stock market at ₦$1.50$ per share can be bought with ₦$90000$?], [$60000$], [$180000$], [$45000$], [$135000$])

#mcq(26, [A woman invests ₦$72000$ in $50$-kobo shares quoted at ₦$1.20$ each. Calculate her annual dividend if a $16%$ dividend is declared.], [₦$11520$], [₦$4800$], [₦$9600$], [₦$5760$])

#mcq(27, [A ₦$1.00$ nominal share is bought at a market price of ₦$2.50$. If the company pays a $20%$ dividend, what is the investor's actual percentage yield?], [$20%$], [$10%$], [$8%$], [$12.5%$])

#mcq(28, [At what market price must a ₦$1.00$ share paying a $15%$ dividend be purchased in order to yield $10%$ on the sum invested?], [₦$1.20$], [₦$1.25$], [₦$1.80$], [₦$1.50$])

#mcq(29, [A dining table has a pre-tax price of ₦$80000$. Find its final selling price after adding $7.5%$ VAT.], [₦$86000$], [₦$87500$], [₦$85600$], [₦$84000$])

#mcq(30, [A hotel receipt reads ₦$43000$ *inclusive of $7.5%$ VAT*. How much of this bill represents VAT?], [₦$3225$], [₦$3000$], [₦$2800$], [₦$3500$])

#mcq(31, [An appliance was bought for ₦$63000$ inclusive of $5%$ VAT. What was its price before VAT?], [₦$59850$], [₦$60500$], [₦$60000$], [₦$58000$])

#mcq(32, [Goods listed at ₦$50000$ attract a $10%$ trade discount and then $7.5%$ VAT on the net price. Find the final amount paid.], [₦$48750$], [₦$49250$], [₦$47500$], [₦$48375$])

#mcq(33, [If the cost price of $12$ oranges equals the selling price of $10$ oranges, find the percentage profit.], [$20%$], [$16.7%$], [$25%$], [$15%$])

#mcq(34, [If the cost price of $15$ pens equals the selling price of $20$ pens, find the percentage loss.], [$20%$], [$25%$], [$33.3%$], [$15%$])

#mcq(35, [An electricity utility charges a monthly fixed meter fee of ₦$1500$ plus ₦$65$ per unit ($"kWh"$) consumed. Calculate the pre-VAT bill for $200$ units.], [₦$13000$], [₦$15000$], [₦$14500$], [₦$16500$])

#mcq(36, [A municipal council levies tenement rates at $4$ kobo in the Naira on the ratable value of buildings. Find the annual rate payable on a property valued at ₦$750000$.], [₦$3000$], [₦$35000$], [₦$25000$], [₦$30000$])

#mcq(37, [A bankrupt firm pays its creditors $35$ kobo in the Naira. How much does a supplier owed ₦$400000$ receive?], [₦$140000$], [₦$260000$], [₦$120000$], [₦$150000$])

#mcq(38, [A town of population $200000$ grows steadily at a compound rate of $5%$ per annum. Find its population after $2$ years.], [$220000$], [$220500$], [$210500$], [$225000$])

#mcq(39, [A sum of money invested at simple interest amounts to ₦$52000$ in $3$ years and to ₦$60000$ in $5$ years. Find the annual rate of interest.], [$8%$], [$12%$], [$10%$], [$7.5%$])

#mcq(40, [A shareholder sells $10000$ shares at a market price of ₦$3.50$ each. If the stockbroker deducts $2%$ brokerage, find the net cash proceeds received.], [₦$35700$], [₦$34000$], [₦$33600$], [₦$34300$])

#mcq(41, [A merchant buys $50" kg"$ of beans at ₦$1200$ per kg, pays ₦$4000$ for transport, and sells all the beans at ₦$1520$ per kg. Calculate his percentage profit.], [$18.75%$], [$20.0%$], [$26.67%$], [$16.25%$])

#mcq(42, [Fire insurance on a house worth ₦$12000000$ is charged at ₦$2.50$ per ₦$1000$ insured. Find the annual insurance premium.], [₦$25000$], [₦$30000$], [₦$300000$], [₦$24000$])

#mcq(43, [Customs import duty of $25%$ is levied on machinery with a CIF value of $\$4000$. Taking $\$1 = "₦"1500$, calculate the import duty in Naira.], [₦$1200000$], [₦$1800000$], [₦$1500000$], [₦$600000$])

#mcq(44, [At what annual rate of simple interest will ₦$45000$ earn ₦$13500$ interest in $2 frac(1, 2)$ years?], [$10%$], [$15%$], [$8%$], [$12%$])

#mcq(45, [A car bought for ₦$4000000$ depreciates by $20%$ in the first year and by $15%$ in the second year. Find its value after $2$ years.], [₦$2720000$], [₦$2600000$], [₦$2800000$], [₦$2680000$])

#mcq(46, [A shareholder owning $8000$ shares of nominal value $50$ kobo each received a gross annual dividend of ₦$1000$. What percentage dividend did the company declare?], [$12.5%$], [$25%$], [$20%$], [$15%$])

#mcq(47, [A trader sells sugar ostensibly at cost price, but uses a false $800" g"$ weight in place of a $1" kg"$ standard weight. His real percentage gain is:], [$20%$], [$15%$], [$25%$], [$12.5%$])

#mcq(48, [A wholesaler allows a $10%$ trade discount and an additional $5%$ cash-prompt-payment discount on an invoice of ₦$200000$. How much does a prompt cash buyer pay?], [₦$170000$], [₦$172000$], [₦$175000$], [₦$171000$])

#mcq(49, [In how many years will ₦$60000$ amount to ₦$79860$ at $10%$ per annum *compound* interest?], [$3$ years], [$2$ years], [$4$ years], [$3.5$ years])

#mcq(50, [A merchant sells $40%$ of a consignment at a $25%$ profit and the remaining $60%$ at a $10%$ loss. Find his overall percentage profit or loss on the whole consignment.], [$15%$ profit], [$4%$ profit], [$2%$ profit], [$4%$ loss])

// ============================================================================
// ANSWER KEY & FULL STEP-BY-STEP SOLUTIONS
// ============================================================================
== 5.8 Quick Answer Key & Complete Worked Solutions — Chapter 5

#answer-key-grid((
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
))

#sol-item(1, "A")[
  *Step 1:* Apply $I = P R T / 100$ with $P = 80000, R = 6, T = 5$:
  $ I = frac(80000 times 6 times 5, 100) = 800 times 30 = "₦"24000 $
]

#sol-item(2, "B")[
  *Step 1:* Convert $8$ months to years: $T = 8 / 12 = 2 / 3$ year.
  $ I = frac(120000 times 10 times 2, 100 times 3) = 400 times 20 = "₦"8000 $
]

#sol-item(3, "C")[
  *Step 1:* Rearrange $I = P R T / 100$ for $T$:
  $ T = frac(100 I, P R) = frac(100 times 27000, 90000 times 6) = frac(270, 54) = 5 "years" $
]

#sol-item(4, "D")[
  *Step 1:* Rearrange for $R$:
  $ R = frac(100 I, P T) = frac(100 times 18000, 75000 times 3) = frac(1800, 225) = 8% $
]

#sol-item(5, "A")[
  *Step 1:* Use $A = P(1 + R T / 100)$:
  $ 68000 = P(1 + frac(9 times 4, 100)) = 1.36 P quad arrow.r.double quad P = frac(68000, 1.36) = "₦"50000 $
]

#sol-item(6, "B")[
  *Step 1:* Doubling at simple interest means $I = P$, so $R T = 100$:
  $ T = frac(100, 8) = 12.5 "years" $
]

#sol-item(7, "C")[
  *Step 1:* Apply compound amount formula:
  $ A = 50000 (1 + 0.10)^2 = 50000 times 1.21 = "₦"60500 $
]

#sol-item(8, "D")[
  *Step 1:* Compute Amount first: $A = 100000 (1.20)^3 = 100000 times 1.728 = "₦"172800$.
  *Step 2:* Subtract Principal: $"CI" = 172800 - 100000 = "₦"72800$ (Trap Option B is the Amount!).
]

#sol-item(9, "A")[
  *Step 1:* Use the 2-year identity $"CI"_2 - "SI"_2 = P(r / 100)^2$:
  $ 250000 times (0.12)^2 = 250000 times 0.0144 = "₦"3600 $
]

#sol-item(10, "B")[
  *Step 1:* Reducing-balance depreciation:
  $ V_2 = 800000 (1 - 0.10)^2 = 800000 times 0.81 = "₦"648000 $
]

#sol-item(11, "C")[
  *Step 1:* Profit $= 45000 - 36000 = "₦"9000$.
  $ "Profit %" = frac(9000, 36000) times 100% = frac(1, 4) times 100% = 25% $
]

#sol-item(12, "D")[
  *Step 1:* Loss $= 50000 - 42500 = "₦"7500$.
  $ "Loss %" = frac(7500, 50000) times 100% = 15% $
]

#sol-item(13, "A")[
  *Step 1:* $1.15 times "CP" = 46000 arrow.r.double "CP" = frac(46000, 1.15) = frac(4600000, 115) = "₦"40000$.
]

#sol-item(14, "B")[
  *Step 1:* $0.85 times "CP" = 34000 arrow.r.double "CP" = frac(34000, 0.85) = frac(3400000, 85) = "₦"40000$.
]

#sol-item(15, "C")[
  *Step 1:* $"CP" = 27000 div 0.90 = "₦"30000$.
  *Step 2:* For $20%$ gain: $"SP"_2 = 1.20 times 30000 = "₦"36000$.
]

#sol-item(16, "D")[
  *Step 1:* Equal selling price with $+p%$ and $-p%$ always produces a net loss of $frac(p^2, 100)% = frac(10^2, 100)% = 1%$ loss.
]

#sol-item(17, "A")[
  *Step 1:* Net multiplier $= 1.25 times 0.90 = 1.125$, which is $12.5%$ above Cost Price.
]

#sol-item(18, "B")[
  *Step 1:* $(1 - 0.10)(1 - 0.20) = 0.90 times 0.80 = 0.72 arrow.r.double 1 - 0.72 = 28%$ single discount.
]

#sol-item(19, "C")[
  *Step 1:* $0.80 times "MP" = 48000 arrow.r.double "MP" = 48000 div 0.80 = "₦"60000$.
]

#sol-item(20, "D")[
  *Step 1:* Target $"SP" = 1.20 times 15000 = "₦"18000$.
  *Step 2:* $0.75 times "MP" = 18000 arrow.r.double "MP" = 18000 div 0.75 = "₦"24000$.
]

#sol-item(21, "A")[
  *Step 1:* Total HP price $= 30000 + 10(15000) = "₦"180000$.
  *Step 2:* Excess over cash price $= 180000 - 160000 = "₦"20000$.
]

#sol-item(22, "B")[
  *Step 1:* $"Total Income" = 40000 + 0.05(800000) = 40000 + 40000 = "₦"80000$.
]

#sol-item(23, "C")[
  *Step 1:* Taxable income $= 1200000 - 250000 = "₦"950000$.
  *Step 2:* Tax $= 10%(500000) + 20%(450000) = 50000 + 90000 = "₦"140000$.
]

#sol-item(24, "D")[
  *Step 1:* Dividend % applies strictly to *Nominal Value* (₦$1.00$):
  $ "Dividend" = 6000 times 1.00 times 0.12 = "₦"720 $
]

#sol-item(25, "A")[
  *Step 1:* Number of shares $=$ Cash $div$ Market Price $= 90000 div 1.50 = 60000$ shares.
]

#sol-item(26, "B")[
  *Step 1:* Shares bought $= 72000 div 1.20 = 60000$ shares.
  *Step 2:* Nominal value held $= 60000 times 0.50 = "₦"30000$.
  *Step 3:* Dividend $= 16% "of ₦"30000 = "₦"4800$.
]

#sol-item(27, "C")[
  *Step 1:* Dividend per share $= 20% "of ₦"1.00 = "₦"0.20$.
  *Step 2:* $"Yield" = frac(0.20, 2.50) times 100% = 8%$.
]

#sol-item(28, "D")[
  *Step 1:* Dividend per share $= "₦"0.15$. For $10%$ yield: $frac(0.15, P_("mkt")) = 0.10 arrow.r.double P_("mkt") = "₦"1.50$.
]

#sol-item(29, "A")[
  *Step 1:* $80000 times 1.075 = 80000 + 6000 = "₦"86000$.
]

#sol-item(30, "B")[
  *Step 1:* Pre-VAT bill $= 43000 div 1.075 = 43000 times frac(40, 43) = "₦"40000$.
  *Step 2:* Embedded VAT $= 43000 - 40000 = "₦"3000$.
]

#sol-item(31, "C")[
  *Step 1:* Pre-VAT price $= 63000 div 1.05 = 63000 times frac(20, 21) = "₦"60000$.
]

#sol-item(32, "D")[
  *Step 1:* Net after $10%$ trade discount $= 0.90 times 50000 = "₦"45000$.
  *Step 2:* Add $7.5%$ VAT: $45000 times 1.075 = "₦"48375$.
]

#sol-item(33, "A")[
  *Step 1:* $"CP"$ of $12 = "SP"$ of $10 arrow.r.double "Profit %" = frac(12 - 10, 10) times 100% = 20%$.
]

#sol-item(34, "B")[
  *Step 1:* $"CP"$ of $15 = "SP"$ of $20 arrow.r.double "Loss %" = frac(20 - 15, 20) times 100% = 25%$.
]

#sol-item(35, "C")[
  *Step 1:* $"Bill" = 1500 + 65(200) = 1500 + 13000 = "₦"14500$.
]

#sol-item(36, "D")[
  *Step 1:* $4$ kobo per Naira $= 4%$: $0.04 times 750000 = "₦"30000$.
]

#sol-item(37, "A")[
  *Step 1:* $35$ kobo per Naira $= 35%$: $0.35 times 400000 = "₦"140000$.
]

#sol-item(38, "B")[
  *Step 1:* $P_2 = 200000 (1.05)^2 = 200000 times 1.1025 = 220500$.
]

#sol-item(39, "C")[
  *Step 1:* Simple interest for $(5 - 3) = 2$ years is $60000 - 52000 = "₦"8000$, so $1$-year interest $= "₦"4000$.
  *Step 2:* Principal $P = 52000 - 3(4000) = "₦"40000$. Rate $R = frac(4000, 40000) times 100% = 10%$.
]

#sol-item(40, "D")[
  *Step 1:* Gross sale $= 10000 times 3.50 = "₦"35000$. Net after $2%$ brokerage $= 0.98 times 35000 = "₦"34300$.
]

#sol-item(41, "A")[
  *Step 1:* Total $"CP"$ (including transport!) $= 50(1200) + 4000 = "₦"64000$.
  *Step 2:* Total $"SP" = 50(1520) = "₦"76000$. Profit $= "₦"12000$.
  $ "Profit %" = frac(12000, 64000) times 100% = frac(3, 16) times 100% = 18.75% $
]

#sol-item(42, "B")[
  *Step 1:* Number of ₦$1000$ units $= 12000000 div 1000 = 12000$. Premium $= 12000 times 2.50 = "₦"30000$.
]

#sol-item(43, "C")[
  *Step 1:* CIF value in Naira $= 4000 times 1500 = "₦"6000000$. Duty $= 25% "of ₦"6000000 = "₦"1500000$.
]

#sol-item(44, "D")[
  *Step 1:* $R = frac(100 times 13500, 45000 times 2.5) = frac(1350, 112.5) = 12%$.
]

#sol-item(45, "A")[
  *Step 1:* Chain annual survival factors: $V_2 = 4000000 times 0.80 times 0.85 = 4000000 times 0.68 = "₦"2720000$.
]

#sol-item(46, "B")[
  *Step 1:* Total Nominal Value $= 8000 times 0.50 = "₦"4000$.
  *Step 2:* Declared Dividend Rate $= frac(1000, 4000) times 100% = 25%$.
]

#sol-item(47, "C")[
  *Step 1:* Gains $200" g"$ on every $800" g"$ actually parted with: $frac(200, 800) times 100% = 25%$.
]

#sol-item(48, "D")[
  *Step 1:* $200000 times 0.90 times 0.95 = 180000 times 0.95 = "₦"171000$.
]

#sol-item(49, "A")[
  *Step 1:* $(1.10)^n = frac(79860, 60000) = 1.331 = (1.10)^3 arrow.r.double n = 3$ years.
]

#sol-item(50, "B")[
  *Step 1:* Weighted net percentage change $= 0.40(+25%) + 0.60(-10%) = +10% - 6% = +4%$ profit.
]
