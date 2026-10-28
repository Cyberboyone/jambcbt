#import "template.typ": *

#pagebreak()

#chapter-opener(
  10,
  "Cumulative UTME Mock Examination",
  subtitle: "60 Questions Spanning All Nine Chapters • Full Timed CBT Simulation • Complete Step-by-Step Solutions",
  syllabus-ref: "JAMB Syllabus Sec. I • Complete Coverage",
  utme-weight: "Full-Section Simulation",
)

#focus-radar(
  objectives: (
    "Simulate the full Section I (Number and Numeration) portion of a real UTME Mathematics paper under timed CBT conditions.",
    "Diagnose weak chapters by tagging each mock question to its source chapter and reviewing the detailed solution.",
    "Consolidate non-calculator fluency across all nine chapters in a single continuous 45-minute sitting.",
  ),
  hotspots: (
    "Questions 1–9: Number Bases and Modular Arithmetic (the two most procedural chapters).",
    "Questions 10–18: Fractions/Errors, Ratio/Rates, and Commercial Mathematics (the highest-volume application block).",
    "Questions 19–27: Indices and Logarithms (the highest-scoring algebraic block).",
    "Questions 28–36: Surds and Sets (conceptual traps and symbolic manipulation).",
  ),
  trap-summary: "Treat this mock exactly like exam day: NO calculator, NO notes, strict 45-minute timer. Score yourself out of 60; a score of 45+ (75%) means your Section I foundation is exam-ready, 36–44 (60–73%) means targeted revision of two or three chapters, and below 36 means reworking the worked examples chapter by chapter before attempting further mocks.",
)

// ============================================================================
== 10.1 Mock Examination Instructions & Chapter Tag Map

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1.2pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 10.2pt, weight: "bold", fill: jamb-green)[EXAMINATION RULES — READ BEFORE STARTING]
  #v(5pt)
  - *Time Allowed:* 45 minutes for 60 questions (an average of 45 seconds each).
  - *Materials Permitted:* Pen/pencil and rough paper ONLY. No scientific calculator, no logarithm tables, no formula sheet.
  - *Marking Scheme:* +1 mark for each correct answer; 0 marks for wrong or blank answers (*zero negative marking* — always guess rather than leave a blank!).
  - *Strategy Reminder:* Complete Pass 1 (the quick procedural questions) first, flag anything requiring more than 60 seconds, then return for Pass 2.
]

#table(
  columns: (auto, 2.1fr, auto),
  inset: 7pt,
  align: (center + horizon, left + horizon, center + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Question Range],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Chapter Tested],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Marks],

  [1 – 5], [Ch 1: Number Bases & Positional Numeration], [5],
  [6 – 9], [Ch 2: Modular Arithmetic & Cyclic Systems], [4],
  [10 – 14], [Ch 3: Fractions, Decimals, Approximations & Errors], [5],
  [15 – 18], [Ch 4: Ratio, Proportion, Rates & Speed], [4],
  [19 – 26], [Ch 5: Commercial & Financial Mathematics], [8],
  [27 – 35], [Ch 6: Indices & Standard Form], [9],
  [36 – 43], [Ch 7: Logarithms], [8],
  [44 – 51], [Ch 8: Surds & Radical Equations], [8],
  [52 – 60], [Ch 9: Sets & Venn Diagrams], [9],
)

// ============================================================================
== 10.2 Mock Examination Questions

#mcq(1, [Evaluate $11011_2 + 1011_2 - 110_2$, giving your answer in base two.], [$100000_2$], [$111010_2$], [$100100_2$], [$101000_2$])

#mcq(2, [Convert the decimal fraction $0.5625_(10)$ to a bicimal in base two.], [$0.1001_2$], [$0.1010_2$], [$0.1101_2$], [$0.0111_2$])

#mcq(3, [Express $345_6$ as a numeral in base four.], [$2021_4$], [$2201_4$], [$1202_4$], [$2120_4$])

#mcq(4, [In the base-five addition $(2 P 3)_5 + (1 4 Q)_5 = (412)_5$, find the values of $P$ and $Q$ respectively.], [$P = 4, Q = 1$], [$P = 1, Q = 4$], [$P = 2, Q = 4$], [$P = 4, Q = 3$])

#mcq(5, [Find the least non-negative residue of $(-47)$ modulo $9$.], [$7$], [$-2$], [$2$], [$8$])

#mcq(6, [Solve $5x equiv 3 (mod 7)$ for $x in {0, 1, dots, 6}$.], [$4$], [$2$], [$6$], [$3$])

#mcq(7, [Find *all* solutions of $8x equiv 4 (mod 12)$ in ${0, 1, dots, 11}$.], [${2, 6, 10}$], [${2, 5, 8, 11}$], [${2}$], [${1, 4, 7, 10}$])

#mcq(8, [Find the remainder when $3^(100)$ is divided by $7$.], [$1$], [$4$], [$2$], [$6$])

#mcq(9, [Today is Saturday. What day of the week was it $200$ days ago?], [Sunday], [Monday], [Tuesday], [Friday])

#mcq(10, [Evaluate $2 frac(1, 3) + frac(3, 4) "of" frac(8, 9) - frac(5, 6)$.], [$frac(11, 6)$], [$frac(13, 6)$], [$frac(5, 2)$], [$frac(7, 3)$])

#mcq(11, [Express the recurring decimal $0.41dot(6)$ as a vulgar fraction in lowest terms.], [$frac(5, 12)$], [$frac(41, 100)$], [$frac(25, 60)$], [$frac(3, 7)$])

#mcq(12, [Correct $0.0625$ to (i) two significant figures and (ii) three decimal places respectively.], [$0.063$ and $0.063$], [$0.06$ and $0.062$], [$0.063$ and $0.062$], [$0.0625$ and $0.063$])

#mcq(13, [Evaluate $4.96 times 10^(-3) + 7.4 times 10^(-4)$ in standard form.], [$1.236 times 10^(-3)$], [$5.7 times 10^(-3)$], [$5.7 times 10^(-4)$], [$1.236 times 10^(-2)$])

#mcq(14, [The true length of a table is $40" cm"$ but a carpenter measures it as $38" cm"$. Calculate the percentage error.], [$5.26\%$], [$2.0\%$], [$5.0\%$], [$4.76\%$])

#mcq(15, [The mass of a bag is $60" kg"$ correct to the nearest $10" kg"$. Find the maximum percentage error.], [$8.33\%$], [$16.67\%$], [$5.00\%$], [$1.67\%$])

#mcq(16, [Express the ratio $frac(2, 5) : frac(3, 4) : frac(1, 2)$ in its simplest integer form.], [$8 : 15 : 10$], [$2 : 3 : 1$], [$5 : 4 : 2$], [$4 : 15 : 5$])

#mcq(17, [Eight men can complete a task in $12$ days. How many days will six men working at the same rate take?], [$9$], [$16$], [$18$], [$14$])

#mcq(18, [Worker A can finish a job in $12$ days and Worker B in $18$ days. How long will they take working together?], [$7.2$ days], [$15$ days], [$6$ days], [$8$ days])

#mcq(19, [A car travels from town P to Q at $30" km/h"$ and returns along the same road at $20" km/h"$. Find its average speed for the round trip.], [$25" km/h"$], [$24" km/h"$], [$26" km/h"$], [$23" km/h"$])

#mcq(20, [A train $180" m"$ long travels at $90" km/h"$. How long does it take to cross completely a bridge $420" m"$ long?], [$18$ s], [$24$ s], [$16.8$ s], [$28$ s])

#mcq(21, [Find the simple interest on ₦$150000$ for $2 frac(1, 2)$ years at $12\%$ per annum.], [₦$40000$], [₦$45000$], [₦$36000$], [₦$54000$])

#mcq(22, [Calculate the compound interest on ₦$250000$ for $2$ years at $8\%$ per annum.], [₦$40000$], [₦$291600$], [₦$41600$], [₦$46400$])

#mcq(23, [A machine costing ₦$2000000$ depreciates at $15\%$ per annum on a reducing balance. Find its value after $2$ years.], [₦$1445000$], [₦$1400000$], [₦$1700000$], [₦$1512500$])

#mcq(24, [A trader bought goods for ₦$48000$ and sold them for ₦$60000$. Find the percentage profit.], [$20\%$], [$25\%$], [$12.5\%$], [$30\%$])

#mcq(25, [A dealer sells two identical generators at ₦$25000$ each, gaining $25\%$ on the first and losing $25\%$ on the second. His overall result is:], [a $6.25\%$ loss], [no profit, no loss], [a $6.25\%$ profit], [a $12.5\%$ loss])

#mcq(26, [An investor buys $6000$ ordinary shares of nominal value ₦$1.00$ at a market price of ₦$2.40$ each. If an $18\%$ dividend is declared, find the percentage yield on the investment.], [$18\%$], [$7.5\%$], [$10\%$], [$4.32\%$])

#mcq(27, [A bill for ₦$129000$ is inclusive of $7.5\%$ VAT. Find the pre-VAT (net) value of the goods.], [₦$119325$], [₦$121500$], [₦$120000$], [₦$118680$])

#mcq(28, [Simplify $(frac(27, 8))^(-2 / 3)$.], [$frac(4, 9)$], [$frac(9, 4)$], [$-frac(4, 9)$], [$frac(2, 3)$])

#mcq(29, [Solve for $x$: $4^(2x - 1) = 8^(x + 2)$.], [$4$], [$6$], [$8$], [$10$])

#mcq(30, [Find the real values of $x$ satisfying $5^(2x) - 6(5^x) + 5 = 0$.], [$0$ and $1$], [$1$ and $5$], [$0$ and $5$], [$-1$ and $1$])

#mcq(31, [Evaluate $log_9 27$.], [$frac(2, 3)$], [$3$], [$frac(3, 2)$], [$2$])

#mcq(32, [Given $log_(10) 2 = 0.3010$ and $log_(10) 3 = 0.4771$, find $log_(10) 45$.], [$1.6532$], [$1.1761$], [$1.9542$], [$1.4314$])

#mcq(33, [Solve $log_2 x + log_4 x = 9$.], [$8$], [$27$], [$64$], [$81$])

#mcq(34, [Find the valid real solution to $log_(10)(x - 2) + log_(10)(x + 1) = 1$.], [$4$], [$-3$], [$4$ or $-3$], [$11$])

#mcq(35, [Simplify $sqrt(98) - sqrt(32) + sqrt(18)$.], [$4 sqrt(2)$], [$6 sqrt(2)$], [$8 sqrt(2)$], [$5 sqrt(2)$])

#mcq(36, [Simplify $frac(8, 3 - sqrt(5))$.], [$6 - 2 sqrt(5)$], [$3 + sqrt(5)$], [$6 + 2 sqrt(5)$], [$2 + sqrt(5)$])

#mcq(37, [Evaluate $sqrt(9 - 4 sqrt(5))$ in surd form.], [$sqrt(5) - 2$], [$2 - sqrt(5)$], [$sqrt(5) + 2$], [$5 - 2 sqrt(2)$])

#mcq(38, [Find the valid root of $sqrt(3x + 4) = x$.], [$x = 4$], [$x = -1$], [$x = 4$ or $-1$], [$x = 2$])

#mcq(39, [Arrange $2^(40)$, $3^(30)$, and $5^(20)$ in ascending order.], [$2^(40), 5^(20), 3^(30)$], [$3^(30), 5^(20), 2^(40)$], [$5^(20), 2^(40), 3^(30)$], [$2^(40), 3^(30), 5^(20)$])

#mcq(40, [Simplify $sqrt(2) times root(3, 4)$ as a single radical.], [$root(6, 128)$], [$root(6, 32)$], [$root(5, 8)$], [$root(3, 8)$])

#mcq(41, [Evaluate $frac(3, 2 - sqrt(3)) - frac(3, 2 + sqrt(3))$.], [$6 sqrt(3)$], [$2 sqrt(3)$], [$3 sqrt(3)$], [$12$])

#mcq(42, [If $x = 4 - sqrt(15)$, find the exact value of $x + frac(1, x)$.], [$4$], [$8$], [$2 sqrt(15)$], [$16$])

#mcq(43, [Find all real values of $x$ satisfying $sqrt(2x + 3) - sqrt(x + 1) = 1$.], [$x = 3$ or $x = -1$], [$x = 3$ only], [$x = -1$ only], [$x = 5$])

#mcq(44, [Simplify $frac(5, sqrt(7) - sqrt(2))$ with a rational denominator.], [$sqrt(7) + sqrt(2)$], [$5(sqrt(7) + sqrt(2))$], [$sqrt(7) - sqrt(2)$], [$frac(sqrt(7) + sqrt(2), 5)$])

#mcq(45, [Simplify $(sqrt(6) + sqrt(2))(sqrt(6) - sqrt(2))$.], [$8$], [$4$], [$2 sqrt(12)$], [$6$])

#mcq(46, [Given $sqrt(2) = 1.4142$, evaluate $frac(8, sqrt(2))$ correct to $3$ decimal places.], [$5.657$], [$4.000$], [$2.828$], [$11.314$])

#mcq(47, [Evaluate $log_(10) root(3, 0.008)$ given $log_(10) 2 = 0.3010$.], [$-0.6020$], [$-0.6990$], [$-0.3010$], [$-0.9030$])

#mcq(48, [Simplify $frac(log_(10) 32, log_(10) 2) + log_2 8$.], [$8$], [$5$], [$7$], [$10$])

#mcq(49, [If $3^(x + y) = 81$ and $2^(x - y) = frac(1, 4)$, find the value of $x y$.], [$3$], [$4$], [$5$], [$8$])

#mcq(50, [Evaluate $(0.064)^(-2 / 3)$.], [$frac(25, 4)$], [$frac(125, 8)$], [$frac(4, 25)$], [$15.625$])

#mcq(51, [Express $0.0000407$ in standard form.], [$4.07 times 10^(-5)$], [$4.07 times 10^(-6)$], [$40.7 times 10^(-6)$], [$4.07 times 10^5$])

#mcq(52, [A set $Q$ has $5$ elements. How many *non-empty proper* subsets does $Q$ possess?], [$32$], [$31$], [$30$], [$10$])

#mcq(53, [In a class of $90$ students, every student offers at least one of French and German. If $55$ offer French and $48$ offer German, how many offer *both*?], [$13$], [$7$], [$17$], [$22$])

#mcq(54, [In a survey of $75$ students, $n(A) = 35$, $n(B) = 30$, $n(C) = 28$, $n(A inter B) = 12$, $n(A inter C) = 10$, $n(B inter C) = 9$, and $n(A inter B inter C) = 4$. How many students belong to *none* of the three sets?], [$9$], [$6$], [$12$], [$15$])

#mcq(55, [Out of $100$ students, $70$ like Rice and $65$ like Beans. What is the *minimum* possible number who like *both*?], [$35$], [$30$], [$65$], [$45$])

#mcq(56, [How many subsets does a set with $7$ elements have?], [$128$], [$127$], [$64$], [$14$])

#mcq(57, [Simplify $P inter (P' union Q)$ for any two sets $P$ and $Q$.], [$P$], [$P inter Q$], [$P union Q$], [$emptyset$])

#mcq(58, [What is the cardinality of the set of distinct letters in the word `"STATISTICS"`?], [$10$], [$5$], [$6$], [$4$])

#mcq(59, [How many integers from $1$ to $150$ inclusive are divisible by $4$ *or* by $6$?], [$62$], [$50$], [$37$], [$25$])

#mcq(60, [In $cal(E) = {1, 2, dots, 20}$, let $P$ be the set of primes and $O$ the set of odd numbers. How many elements are in $P inter O'$?], [$1$], [$0$], [$2$], [$8$])

// ============================================================================
== 10.3 Mock Examination — Quick Answer Key & Complete Solutions

#answer-key-grid((
  "A", "A", "A", "B", "A", "B", "B", "B", "C", "B",
  "A", "A", "B", "C", "A", "A", "B", "A", "B", "B",
  "B", "C", "A", "B", "A", "B", "C", "A", "C", "A",
  "C", "A", "C", "A", "B", "C", "A", "A", "A", "A",
  "A", "B", "A", "A", "B", "A", "B", "A", "A", "A",
  "A", "C", "A", "A", "A", "A", "B", "B", "B", "A",
))

#sol-item(1, "A")[
  *Chapter 1.* Convert to base ten: $11011_2 = 27$, $1011_2 = 11$, $110_2 = 6$. Then $27 + 11 - 6 = 32_(10)$. Since $32 = 2^5$, the answer is $100000_2$.
]

#sol-item(2, "A")[
  *Chapter 1.* Multiply $0.5625$ repeatedly by $2$: $0.5625 times 2 = bold(1).125$; $0.125 times 2 = bold(0).25$; $0.25 times 2 = bold(0).50$; $0.50 times 2 = bold(1).00$. Reading downward: $0.1001_2$.
]

#sol-item(3, "A")[
  *Chapter 1.* Base-10 bridge: $345_6 = 3(36) + 4(6) + 5 = 108 + 24 + 5 = 137_(10)$. Divide by $4$: $137 div 4 = 34$ rem $1$; $34 div 4 = 8$ rem $2$; $8 div 4 = 2$ rem $0$; $2 div 4 = 0$ rem $2$. Reading upward: $2021_4$.
]

#sol-item(4, "B")[
  *Chapter 1.* Units column: $3 + Q$ must end in $2_5$, so $3 + Q = 7 arrow.r.double Q = 4$ (carry $1$). Fives column: $1 + P + 4$ must end in $1_5$, so $P + 5 = 11 arrow.r.double P = 1$ (carry $1$). Check hundreds column: $1 + 2 + 1 = 4$ ✓. Hence $P = 1, Q = 4$.
]

#sol-item(5, "A")[
  *Chapter 2.* Divide $47$ by $9$: $47 = 5 times 9 + 2$ ($r_+ = 2$). For the negative, compute $9 - 2 = 7$. Check: $-47 = (-6)(9) + 7$ ✓.
]

#sol-item(6, "B")[
  *Chapter 2.* Add $7$ to $3$: $3 + 7 = 10$, which is divisible by $5$. Thus $5x = 10 arrow.r.double x = 2$ (check: $5(2) = 10 equiv 3 mod 7$ ✓).
]

#sol-item(7, "B")[
  *Chapter 2.* Here $d = gcd(8, 12) = 4$, and $4 divides 4$, so there are exactly $4$ solutions in $ZZ_(12)$. Divide $a = 8$, $b = 4$, and the modulus $12$ all by $4$: $2x equiv 1 (mod 3)$. Adding $3$ to the RHS gives $2x = 4 arrow.r.double x equiv 2 (mod 3)$. Listing residues in ${0, dots, 11}$ with step $12 / 4 = 3$: $x in {2, 5, 8, 11}$.
]

#sol-item(8, "B")[
  *Chapter 2.* Cycle: $3^1 = 3$, $3^2 = 2$, $3^3 = 6$, $3^4 = 4$, $3^5 = 5$, $3^6 = 1 (mod 7)$ — cycle length $6$. Since $100 = 6(16) + 4$, $3^(100) equiv 3^4 = 81 equiv 4 (mod 7)$.
]

#sol-item(9, "C")[
  *Chapter 2.* $200 = 7(28) + 4$, so $200 equiv +4 (mod 7)$. Going back $4$ days from Saturday: Friday (1), Thursday (2), Wednesday (3), *Tuesday (4)*.
]

#sol-item(10, "B")[
  *Chapter 3.* Evaluate `"of"` first: $frac(3, 4) times frac(8, 9) = frac(2, 3)$. Then $frac(7, 3) + frac(2, 3) - frac(5, 6) = frac(9, 3) - frac(5, 6) = 3 - frac(5, 6) = frac(13, 6) = 2 frac(1, 6)$.
]

#sol-item(11, "A")[
  *Chapter 3.* $0.41dot(6) = frac(416 - 41, 900) = frac(375, 900) = frac(5, 12)$.
]

#sol-item(12, "A")[
  *Chapter 3.* Significant figures start at $6$: two s.f. rounds $6|25$ up to $0.063$. Three d.p. gives $0.062|5 arrow.r 0.063$ (the $5$ rounds up). Both answers equal $0.063$.
]

#sol-item(13, "B")[
  *Chapter 6 (Standard Form).* Align to $10^(-3)$: $7.4 times 10^(-4) = 0.74 times 10^(-3)$. Sum: $(4.96 + 0.74) times 10^(-3) = 5.70 times 10^(-3)$.
]

#sol-item(14, "C")[
  *Chapter 3.* Percentage error $= frac(|38 - 40|, 40) times 100% = frac(2, 40) times 100% = 5.0\%$.
]

#sol-item(15, "A")[
  *Chapter 3.* Precision unit $u = 10" kg"$, half-unit $= 5" kg"$. Max % error $= frac(5, 60) times 100% = 8.33\%$.
]

#sol-item(16, "A")[
  *Chapter 4.* Multiply each fraction by $"LCM"(5, 4, 2) = 20$: $frac(2, 5)(20) = 8$, $frac(3, 4)(20) = 15$, $frac(1, 2)(20) = 10$. Ratio $= 8 : 15 : 10$.
]

#sol-item(17, "B")[
  *Chapter 4.* Man-days: $8 times 12 = 96$. Days for $6$ men $= 96 div 6 = 16$ days.
]

#sol-item(18, "A")[
  *Chapter 4.* Combined rate $= frac(1, 12) + frac(1, 18) = frac(3 + 2, 36) = frac(5, 36)$, so $T = frac(36, 5) = 7.2$ days.
]

#sol-item(19, "B")[
  *Chapter 4.* Harmonic mean (equal distances): $v_("avg") = frac(2(30)(20), 30 + 20) = frac(1200, 50) = 24" km/h"$ (never $25$!).
]

#sol-item(20, "B")[
  *Chapter 4.* Speed $= 90 times frac(5, 18) = 25" m/s"$. Total clearance $= 180 + 420 = 600" m"$, so $t = 600 div 25 = 24$ s.
]

#sol-item(21, "B")[
  *Chapter 5.* $T = 2.5$ years. $I = frac(150000 times 12 times 2.5, 100) = 1500 times 30 = "₦"45000$.
]

#sol-item(22, "C")[
  *Chapter 5.* $A = 250000(1.08)^2 = 250000 times 1.1664 = 291600$. $"CI" = 291600 - 250000 = "₦"41600$ (beware of distractor ₦$291600$, which is the *amount*).
]

#sol-item(23, "A")[
  *Chapter 5.* $V_2 = 2000000(0.85)^2 = 2000000 times 0.7225 = "₦"1445000$.
]

#sol-item(24, "B")[
  *Chapter 5.* Profit $= 60000 - 48000 = 12000$. Profit % $= frac(12000, 48000) times 100% = 25\%$.
]

#sol-item(25, "A")[
  *Chapter 5.* Same selling price with $+p\%$ and $-p\%$ gives a net loss of $frac(p^2, 100)\% = frac(625, 100)\% = 6.25\%$ loss.
]

#sol-item(26, "B")[
  *Chapter 5.* Dividend per share $= 18\% "of ₦"1.00 = "₦"0.18$; total dividend $= 6000 times 0.18 = "₦"1080$. Investment $= 6000 times 2.40 = "₦"14400$. Yield $= frac(1080, 14400) times 100% = 7.5\%$.
]

#sol-item(27, "C")[
  *Chapter 5.* For $7.5\%$ VAT, divide by $1.075 = frac(43, 40)$: $129000 times frac(40, 43) = 3000 times 40 = "₦"120000$.
]

#sol-item(28, "A")[
  *Chapter 6.* Flip to clear the negative: $(frac(8, 27))^(2 / 3) = (frac(2, 3))^2 = frac(4, 9)$.
]

#sol-item(29, "C")[
  *Chapter 6.* Convert to base $2$: $2^(2(2x - 1)) = 2^(3(x + 2)) arrow.r.double 4x - 2 = 3x + 6 arrow.r.double x = 8$.
]

#sol-item(30, "A")[
  *Chapter 6.* Let $u = 5^x > 0$: $u^2 - 6u + 5 = (u - 1)(u - 5) = 0$. Hence $5^x = 1 arrow.r x = 0$, or $5^x = 5 arrow.r x = 1$.
]

#sol-item(31, "C")[
  *Chapter 7.* $log_9 27 = log_(3^2)(3^3) = frac(3, 2)$.
]

#sol-item(32, "A")[
  *Chapter 7.* $45 = 9 times 5 = 3^2 times 5$, and $log_(10) 5 = 1 - 0.3010 = 0.6990$. Thus $2(0.4771) + 0.6990 = 0.9542 + 0.6990 = 1.6532$.
]

#sol-item(33, "C")[
  *Chapter 7.* $log_4 x = frac(1, 2) log_2 x$. Thus $frac(3, 2) log_2 x = 9 arrow.r.double log_2 x = 6 arrow.r.double x = 64$.
]

#sol-item(34, "A")[
  *Chapter 7.* Domain requires $x > 2$. Condense: $(x - 2)(x + 1) = 10 arrow.r.double x^2 - x - 12 = 0 arrow.r.double (x - 4)(x + 3) = 0$. Reject $x = -3$ (violates domain); accept $x = 4$.
]

#sol-item(35, "B")[
  *Chapter 8.* $sqrt(98) = 7 sqrt(2)$, $sqrt(32) = 4 sqrt(2)$, $sqrt(18) = 3 sqrt(2)$. Hence $(7 - 4 + 3) sqrt(2) = 6 sqrt(2)$.
]

#sol-item(36, "C")[
  *Chapter 8.* Multiply by $(3 + sqrt(5))$: $frac(8(3 + sqrt(5)), 9 - 5) = frac(8(3 + sqrt(5)), 4) = 2(3 + sqrt(5)) = 6 + 2 sqrt(5)$.
]

#sol-item(37, "A")[
  *Chapter 8.* Write $4 sqrt(5) = 2 sqrt(20)$; $x + y = 9$, $x y = 20 arrow.r x = 5, y = 4$. Larger root first: $sqrt(5) - 2$ (positive ✓).
]

#sol-item(38, "A")[
  *Chapter 8.* Square: $3x + 4 = x^2 arrow.r x^2 - 3x - 4 = (x - 4)(x + 1) = 0$. Reject $x = -1$ ($sqrt(1) = 1 != -1$); accept $x = 4$.
]

#sol-item(39, "A")[
  *Chapter 6.* Raise to power $frac(1, 10)$: $2^4 = 16$, $5^2 = 25$, $3^3 = 27$. Since $16 < 25 < 27$: $2^(40) < 5^(20) < 3^(30)$.
]

#sol-item(40, "A")[
  *Chapter 8.* Convert both radicals to sixth roots: $sqrt(2) = 2^(1 / 2) = 2^(3 / 6) = root(6, 8)$ and $root(3, 4) = 4^(1 / 3) = 2^(2 / 3) = 2^(4 / 6) = root(6, 16)$. Multiplying gives $root(6, 8 times 16) = root(6, 128)$.
]

#sol-item(41, "A")[
  *Chapter 8.* Since $(2 - sqrt(3))(2 + sqrt(3)) = 4 - 3 = 1$, combine over the common denominator $1$:
  $ 3(2 + sqrt(3)) - 3(2 - sqrt(3)) = 3[(2 + sqrt(3)) - (2 - sqrt(3))] = 3(2 sqrt(3)) = 6 sqrt(3) $
]

#sol-item(42, "B")[
  *Chapter 8.* Note $16 - 15 = 1$, so $frac(1, x) = 4 + sqrt(15)$. Hence $x + frac(1, x) = (4 - sqrt(15)) + (4 + sqrt(15)) = 8$.
]

#sol-item(43, "A")[
  *Chapter 8.* Isolate one radical: $sqrt(2x + 3) = 1 + sqrt(x + 1)$. Square both sides:
  $ 2x + 3 = 1 + 2 sqrt(x + 1) + (x + 1) quad arrow.r.double quad x + 1 = 2 sqrt(x + 1) $
  Let $u = sqrt(x + 1) >= 0$: $u^2 = 2u arrow.r.double u(u - 2) = 0 arrow.r.double u = 0$ or $u = 2$, giving $x = -1$ or $x = 3$.
  *Check both in the original equation:* $x = -1$ gives $sqrt(1) - sqrt(0) = 1$ ✓; $x = 3$ gives $sqrt(9) - sqrt(4) = 1$ ✓. Unlike most radical equations, *both* roots survive.
]

#sol-item(44, "A")[
  *Chapter 8.* Multiply numerator and denominator by the conjugate $(sqrt(7) + sqrt(2))$, whose product with the denominator is $7 - 2 = 5$:
  $ frac(5(sqrt(7) + sqrt(2)), 5) = sqrt(7) + sqrt(2) $
]

#sol-item(45, "B")[
  *Chapter 8.* Difference of squares: $(sqrt(6))^2 - (sqrt(2))^2 = 6 - 2 = 4$.
]

#sol-item(46, "A")[
  *Chapter 8.* Rationalize first: $frac(8, sqrt(2)) = 4 sqrt(2) = 4(1.4142) = 5.6568 approx 5.657$.
]

#sol-item(47, "B")[
  *Chapter 7.* $0.008 = 8 / 1000 = 2^3 / 10^3$, so $log_(10)(0.008) = 3(0.3010) - 3 = 0.9030 - 3 = -2.0970$; cube root divides by $3$: $-0.6990$.
]

#sol-item(48, "A")[
  *Chapter 7.* $frac(log_(10) 32, log_(10) 2) = log_2 32 = 5$ and $log_2 8 = 3$. Sum $= 8$.
]

#sol-item(49, "A")[
  *Chapter 6.* Convert to common bases: $3^(x + y) = 3^4 arrow.r.double x + y = 4$, and $2^(x - y) = 2^(-2) arrow.r.double x - y = -2$.
  Adding gives $2x = 2 arrow.r.double x = 1$, so $y = 4 - 1 = 3$. Hence $x y = 1 times 3 = 3$.
]

#sol-item(50, "A")[
  *Chapter 6.* $0.064 = frac(64, 1000) = frac(8, 125) = (frac(2, 5))^3$. So $(frac(2, 5))^(-2) = (frac(5, 2))^2 = frac(25, 4) = 6.25$.
]

#sol-item(51, "A")[
  *Chapter 6.* Shift the decimal point $5$ places right: $0.0000407 = 4.07 times 10^(-5)$.
]

#sol-item(52, "C")[
  *Chapter 9.* $2^5 - 2 = 32 - 2 = 30$.
]

#sol-item(53, "A")[
  *Chapter 9.* $n(F inter G) = 55 + 48 - 90 = 13$.
]

#sol-item(54, "A")[
  *Chapter 9.* Union $= (35 + 30 + 28) - (12 + 10 + 9) + 4 = 93 - 31 + 4 = 66$. None $= 75 - 66 = 9$.
]

#sol-item(55, "A")[
  *Chapter 9.* Minimum overlap $= 70 + 65 - 100 = 35$.
]

#sol-item(56, "A")[
  *Chapter 9.* $2^7 = 128$.
]

#sol-item(57, "B")[
  *Chapter 9.* Distribute: $(P inter P') union (P inter Q) = emptyset union (P inter Q) = P inter Q$.
]

#sol-item(58, "B")[
  *Chapter 9.* `"STATISTICS"` distinct letters: ${S, T, A, I, C}$ — five elements.
]

#sol-item(59, "B")[
  *Chapter 9.* $floor(150/4) + floor(150/6) - floor(150/12) = 37 + 25 - 12 = 50$.
]

#sol-item(60, "A")[
  *Chapter 9.* Even primes in ${1, dots, 20}$: only $2$. So $P inter O' = {2}$, with $n = 1$.
]

#v(6pt)
#trap-box("Scoring & Diagnosis Guide")[
  - *51 – 60 correct (85%+):* Section I is exam-ready. Move to Volume 2 (Algebra).
  - *41 – 50 (68 – 83%):* Strong. Re-read the *JAMB Trap* boxes in the 1–2 chapters where you slipped.
  - *31 – 40 (52 – 67%):* Re-work every worked example in your two weakest chapters, then retake this mock in 3 days.
  - *Below 31:* Study chapters sequentially, mastering each 30-question drill before moving on. Do not skip the solutions — every solution teaches a distinct method.
]
