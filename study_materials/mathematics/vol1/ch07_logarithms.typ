#import "template.typ": *

#pagebreak()

#chapter-opener(
  7,
  "Logarithms",
  subtitle: "Index-Logarithm Duality, Laws of Logarithms, Change of Base, Calculations from Given Log Values & Logarithmic Equations",
  syllabus-ref: "JAMB Syllabus Sec. I • Topic 3(b, c)",
  utme-weight: "1 – 2 Questions Every Year (100% Frequency)",
)

#focus-radar(
  objectives: (
    "Translate fluently between exponential form y = a^x and logarithmic form x = log_a(y), enforcing domain rules N > 0, a > 0, a ≠ 1.",
    "Apply the product, quotient, power, base-power, reciprocal, and change-of-base laws to simplify logarithmic expressions.",
    "Evaluate logarithms of integers, fractions, decimals, and roots WITHOUT tables using given values such as log_10(2) = 0.3010, log_10(3) = 0.4771, and log_10(5) = 1 - log_10(2).",
    "Solve single-base, nested, mixed-base, quadratic, and simultaneous logarithmic equations and inequalities.",
  ),
  hotspots: (
    "Evaluating log_10(75), log_10(0.0045), or log_6(24) from given log_10(2) and log_10(3) — especially using log_10(5) = 1 - log_10(2) = 0.6990!",
    "Extraneous-root rejection in equations like log_10(x - 1) + log_10(x + 2) = 1 (roots making any argument ≤ 0 MUST be discarded!).",
    "Mixed-base equations log_a(x) + k·log_x(a) = m via the reciprocal identity log_x(a) = 1 / log_a(x).",
    "Ratio simplification: (log 81) / (log 27) = (4 log 3) / (3 log 3) = 4/3 — NEVER confuse (log A)/(log B) with log(A/B) = log A - log B!",
  ),
  trap-summary: "JAMB CBT neither provides four-figure mathematical tables nor permits scientific calculators. Consequently, Syllabus Objective 3(c) explicitly tests 'calculation of logarithms of numbers based on given logarithm values'. Memorize the single most important identity in UTME logarithms: log_10(5) = log_10(10/2) = 1 - log_10(2) = 0.6990!",
)

// ============================================================================
// SECTION 7.1
// ============================================================================
== 7.1 Index-Logarithm Duality, Domain Rules & Core Laws

The *logarithm* of a positive number $N$ to a valid base $a$ is simply *the exponent (index) to which the base $a$ must be raised to produce $N$*:
$ x = log_a N quad arrow.l.r.double quad a^x = N $

#diagram-fig(
  "diagrams/ch07_log_bridge.svg",
  "The Index-Logarithm Duality Bridge (y = a^x iff x = log_a y), Strict Domain Restrictions, and Change-of-Base Identities.",
)

=== 1. Non-Negotiable Domain Restrictions
In real-number algebra, $log_a N$ exists *if and only if ALL THREE conditions hold simultaneously*:
1. *Strict Positivity of the Argument:* $N > 0$ (*logarithms of $0$ and of negative numbers DO NOT EXIST in $RR$!*).
2. *Strict Positivity of the Base:* $a > 0$.
3. *Base Not Equal to Unity:* $a != 1$ (since $1^x = 1$ for every $x$, base $1$ cannot represent any number $N != 1$).

- *Common Logarithms:* Base $10$, written $log_(10) N$ or simply $log N$ ($log_(10) 10 = 1$, $log_(10) 100 = 2$, $log_(10) 0.01 = -2$).
- *Natural (Napierian) Logarithms:* Base $e approx 2.71828$, written $ln N = log_e N$ (central to Calculus in Volume 4).

#formula-box("The Nine Essential Laws & Identities of Logarithms")[
  For any valid bases $a, b, c > 0$ ($a, b, c != 1$) and any strictly positive arguments $M, N > 0$:
  1. *Zero & Unity Laws:* #h(8pt) $log_a 1 = 0$ #h(10pt) and #h(10pt) $log_a a = 1$
  2. *Inverse Cancellation Laws:* #h(8pt) $log_a (a^x) = x$ #h(10pt) and #h(10pt) $a^(log_a M) = M$
  3. *Product Law (Log of Product = Sum of Logs):* #h(8pt) $log_a (M N) = log_a M + log_a N$
  4. *Quotient Law (Log of Quotient = Difference of Logs):* #h(8pt) $log_a (frac(M, N)) = log_a M - log_a N$
  5. *Power Law:* #h(8pt) $log_a (M^p) = p log_a M$ #h(8pt) (in particular, $log_a root(q, M) = frac(1, q) log_a M$)
  6. *Base-Power Super-Shortcut:* #h(8pt) $log_(a^k) (M^p) = frac(p, k) log_a M$ #h(8pt) (so $log_(sqrt(a)) M = 2 log_a M$ and $log_(1 / a) M = -log_a M$!)
  7. *Change-of-Base Theorem:* #h(8pt) $log_a b = frac(log_c b, log_c a)$
  8. *Reciprocal & Telescoping Chain Laws:* #h(8pt) $log_a b = frac(1, log_b a)$ #h(8pt) and #h(8pt) $(log_a b)(log_b c)(log_c d) = log_a d$
  9. *Base-Swap Exponent Law:* #h(8pt) $a^(log_c b) = b^(log_c a)$
]

#trap-box("Four Fatal Algebra Mistakes in Logarithms")[
  - *NEVER distribute $log$ across addition or subtraction:* $log_a (M + N) != log_a M + log_a N$!
  - *NEVER confuse a ratio of logs with the log of a ratio:*
    $ frac(log_a M, log_a N) = log_N M != log_a (frac(M, N)) = log_a M - log_a N $
  - *NEVER confuse $(log_a x)^2$ with $log_a (x^2)$:* $(log_a x)^2 = (log_a x)(log_a x)$, whereas $log_a (x^2) = 2 log_a x$!
  - *Watch the domain when pulling down even powers:* Over $RR$, $log_a (x^2) = 2 log_a |x|$; if an original equation explicitly writes $2 log_a x$, then $x > 0$ is mandatory from the start!
]

// ============================================================================
// SECTION 7.2
// ============================================================================
== 7.2 Evaluating Logarithms Without Tables (Syllabus Topic 3c)

When JAMB supplies base-$10$ building blocks — almost always $log_(10) 2 = 0.3010$, $log_(10) 3 = 0.4771$, and occasionally $log_(10) 7 = 0.8451$ — you can compute the logarithm of *any* number whose prime factors belong to $\{2, 3, 5, 7\}$:

#diagram-fig(
  "diagrams/ch07_log_decomposition.svg",
  "Prime-Factor Decomposition Workflow for Evaluating Any Logarithm Without Tables, Highlighting the Essential log_10(5) = 1 - log_10(2) = 0.6990 Bridge.",
)

#shortcut-box("Three Non-Table Master Techniques")[
  1. *The Hidden $log_(10) 5$ Trick:* Examiners deliberately omit $log_(10) 5$ when asking for $log_(10) 5, log_(10) 15, log_(10) 25, log_(10) 75,$ or $log_(10) 0.45$! Write $5 = 10 / 2$ immediately:
     $ log_(10) 5 = log_(10)(frac(10, 2)) = log_(10) 10 - log_(10) 2 = 1 - 0.3010 = bold(0.6990) $
  2. *Decimals via Fractions Over $10^k$:* Never guess negative decimals! Convert any decimal into $frac("integer", 10^k)$ first:
     $ log_(10)(0.0045) = log_(10)(frac(45, 10^4)) = log_(10)(3^2 times 5) - 4 = 2 log_(10) 3 + log_(10) 5 - 4 $
  3. *Counting Digits of Huge Powers $N = a^k$:* If $log_(10) N = c.m$ where $c = floor(log_(10) N) >= 0$ is the integer part (*characteristic*), then $10^c <= N < 10^(c + 1)$, so $N$ has *exactly $c + 1$ digits* in ordinary base-$10$ notation!
  4. *Bar Notation ($overline(c).m$):* In classical logarithm notation, $overline(3).4771$ means *$-3 + 0.4771 = -2.5229$* (only the integer characteristic $-3$ is negative; the fractional mantissa $+0.4771$ is ALWAYS kept non-negative in $[0, 1)$!). When dividing $overline(c).m$ by $k$, adjust the negative characteristic downward until it is an exact multiple of $k$: e.g., $overline(2).40 div 4 = (-4 + 2.40) div 4 = -1 + 0.60 = overline(1).60$.
]

// ============================================================================
// SECTION 7.3
// ============================================================================
== 7.3 Solving Logarithmic Equations & Inequalities

1. *Same-Base Equations:* Condense each side to a single logarithm $log_a L(x) = log_a R(x)$ (converting any standalone constant $c$ into $log_a (a^c)$ first!), equate $L(x) = R(x)$, solve the resulting polynomial, and *MANDATORILY check every candidate root in EVERY original $log$ term* ($"argument" > 0$, $"base" > 0, != 1$)!
2. *Mixed-Base Equations:* Convert all logs to the smallest prime base using $log_(a^k) x = frac(1, k) log_a x$ or $log_x a = frac(1, log_a x)$, then substitute $u = log_a x$. *(Note: unlike $u = a^x > 0$ in Chapter 6, $u = log_a x$ CAN take ANY real value — positive, zero, or negative — because $x = a^u > 0$ is automatically positive for every real $u$!)*
3. *Logarithmic Inequalities ($log_a f(x) > k$):*
   - Always impose the domain condition *$f(x) > 0$ FIRST*!
   - If *$a > 1$* ($log_a$ is strictly increasing), keep the inequality direction: $f(x) > a^k$.
   - If *$0 < a < 1$* (e.g. $a = 1 / 2$ or $1 / 3$; $log_a$ is strictly decreasing), *REVERSE the inequality sign*: $0 < f(x) < a^k$!

// ============================================================================
// GRADED WORKED EXAMPLES (7.1 – 7.32)
// ============================================================================
== 7.4 Graded Step-by-Step Worked Examples

#worked-example(
  "7.1",
  "Evaluating Exact Logarithms from Prime Powers",
  tier: "FOUNDATION",
  [Evaluate without tables: (a) $log_3 81$; #h(8pt) (b) $log_2 (0.125)$.],
  [
    *Part (a):* Since $81 = 3^4$, we have $log_3 81 = log_3 (3^4) = bold(4)$.

    *Part (b):* Convert $0.125 = frac(1, 8) = 2^(-3)$, so $log_2 (0.125) = log_2 (2^(-3)) = bold(-3)$.
  ],
)

#worked-example(
  "7.2",
  "Composite Base and Argument via Base-Power Law",
  tier: "FOUNDATION",
  source: "UTME Past Paper",
  [Find the exact value of $log_(16) 64$.],
  [
    *Step 1 — Express both base $16 = 2^4$ and argument $64 = 2^6$ in prime base $2$:*
    $ log_(16) 64 = log_(2^4) (2^6) = frac(6, 4) log_2 2 = frac(3, 2) times 1 = bold(frac(3, 2)) $
    *Final Answer:* $bold(frac(3, 2))$ (or $1.5$).
  ],
)

#worked-example(
  "7.3",
  "Logarithm to a Surd Base",
  tier: "UTME STANDARD",
  [Evaluate $log_(sqrt(3)) 27$.],
  [
    *Step 1 — Write $sqrt(3) = 3^(1 / 2)$ and $27 = 3^3$:*
    $ log_(3^(1 / 2)) (3^3) = frac(3, 1 / 2) log_3 3 = 3 times 2 = bold(6) $
    *Final Answer:* *6*.
  ],
)

#worked-example(
  "7.4",
  "Combining Sums & Differences of Common Logarithms",
  tier: "FOUNDATION",
  source: "UTME Past Paper",
  [Simplify $log_(10) 25 + log_(10) 8 - log_(10) 2$.],
  [
    *Step 1 — Condense into a single base-$10$ logarithm using Product and Quotient laws:*
    $ log_(10) (frac(25 times 8, 2)) = log_(10) (25 times 4) = log_(10) 100 = log_(10) (10^2) = bold(2) $
    *Final Answer:* *2*.
  ],
)

#worked-example(
  "7.5",
  "Condensing Coefficients Before Combining Logs",
  tier: "UTME STANDARD",
  [Evaluate $2 log_3 6 + log_3 (frac(3, 4))$.],
  [
    *Step 1 — Move coefficient $2$ inside as an exponent first ($2 log_3 6 = log_3 (6^2) = log_3 36$):*
    $ log_3 36 + log_3 (frac(3, 4)) = log_3 (36 times frac(3, 4)) = log_3 (9 times 3) = log_3 27 = bold(3) $
    *Final Answer:* *3*.
  ],
)

#worked-example(
  "7.6",
  "Ratio of Logarithms vs. Logarithm of a Ratio",
  tier: "UTME STANDARD",
  [Evaluate and contrast: (a) $frac(log_(10) 81, log_(10) 27)$; #h(8pt) (b) $log_3 (frac(81, 27))$.],
  [
    *Part (a) — Ratio of two logarithms:* Write $81 = 3^4$ and $27 = 3^3$:
    $ frac(log_(10) (3^4), log_(10) (3^3)) = frac(4 cancel(log_(10) 3), 3 cancel(log_(10) 3)) = bold(frac(4, 3)) $

    *Part (b) — Logarithm of a ratio:* $log_3 (81 / 27) = log_3 3 = bold(1)$. Notice $4 / 3 != 1$!
  ],
)

#worked-example(
  "7.7",
  "Simplifying Radical Logarithmic Quotients (Famous JAMB Question!)",
  tier: "UTME STANDARD",
  source: "JAMB UTME Past Question",
  [Without using tables, simplify $frac(log sqrt(27) + log sqrt(8) - log sqrt(125), log 6 - log 5)$.],
  [
    *Step 1 — Pull out the common $1 / 2$ power from every square-root log in the numerator:*
    $ "Numerator" = frac(1, 2)(log 27 + log 8 - log 125) = frac(1, 2) log (frac(27 times 8, 125)) $

    *Step 2 — Recognize perfect cubes ($27 = 3^3, 8 = 2^3, 125 = 5^3$):*
    $ "Numerator" = frac(1, 2) log ((frac(3 times 2, 5))^3) = frac(3, 2) log (frac(6, 5)) $

    *Step 3 — Condense the denominator $log 6 - log 5 = log(6 / 5)$ and cancel:*
    $ frac(frac(3, 2) cancel(log(6 / 5)), cancel(log(6 / 5))) = bold(frac(3, 2)) $
    *Final Answer:* $bold(frac(3, 2))$.
  ],
)

#worked-example(
  "7.8",
  "Telescoping Multi-Base Logarithm Product",
  tier: "UTME STANDARD",
  [Evaluate $(log_2 5) times (log_5 9) times (log_3 16)$.],
  [
    *Step 1 — Pull prime powers out of arguments ($9 = 3^2, 16 = 2^4$):*
    $ (log_2 5) times (2 log_5 3) times (4 log_3 2) = 8 times (log_2 5)(log_5 3)(log_3 2) $

    *Step 2 — Apply the Telescoping Chain Law:*
    $(log_2 5)(log_5 3)(log_3 2) = log_2 2 = 1$, hence $8 times 1 = bold(8)$.
    *Final Answer:* *8*.
  ],
)

#worked-example(
  "7.9",
  "Inverse Exponent-Logarithm Simplification",
  tier: "JAMB CHALLENGE",
  [Evaluate $9^(log_3 5) + 4^(1 - log_2 3)$.],
  [
    *Step 1 — Express $9 = 3^2$ and $4 = 2^2$ to match the logarithm bases:*
    - First term: $(3^2)^(log_3 5) = (3^(log_3 5))^2 = 5^2 = 25$.
    - Second term: $4^1 times 4^(-log_2 3) = 4 times (2^(log_2 3))^(-2) = 4 times 3^(-2) = frac(4, 9)$.

    *Step 2 — Add:*
    $25 + frac(4, 9) = bold(frac(229, 9))$ (or $25 frac(4, 9)$).
    *Final Answer:* $bold(frac(229, 9))$.
  ],
)

#worked-example(
  "7.10",
  "Symbolic Decomposition in Terms of p and q",
  tier: "UTME STANDARD",
  [Given $log_a 2 = p$ and $log_a 3 = q$, express in terms of $p$ and $q$: (a) $log_a 72$; #h(6pt) (b) $log_a (4.5)$.],
  [
    *Part (a):* Factorize $72 = 8 times 9 = 2^3 times 3^2$:
    $ log_a 72 = 3 log_a 2 + 2 log_a 3 = bold(3 p + 2 q) $

    *Part (b):* Convert $4.5 = 9 / 2 = 3^2 / 2$:
    $ log_a (frac(9, 2)) = 2 log_a 3 - log_a 2 = bold(2 q - p) $
  ],
)

#worked-example(
  "7.11",
  "Evaluating log_10(5) and log_10(75) from Given Log Values",
  tier: "UTME STANDARD",
  source: "JAMB Syllabus 3(c) Core",
  [Given that $log_(10) 2 = 0.3010$ and $log_(10) 3 = 0.4771$, calculate without tables: (a) $log_(10) 5$; #h(6pt) (b) $log_(10) 75$.],
  [
    *Part (a) — Use $5 = 10 / 2$:*
    $ log_(10) 5 = log_(10)(frac(10, 2)) = 1 - 0.3010 = bold(0.6990) $

    *Part (b) — Factorize $75 = 3 times 25 = 3 times 5^2$:*
    $ log_(10) 75 = log_(10) 3 + 2 log_(10) 5 = 0.4771 + 2(0.6990) = 0.4771 + 1.3980 = bold(1.8751) $
    *Final Answers:* (a) *0.6990*; (b) *1.8751*.
  ],
)

#worked-example(
  "7.12",
  "Logarithm of a Small Decimal Without Tables",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Given $log_(10) 2 = 0.3010$ and $log_(10) 3 = 0.4771$, evaluate $log_(10) (0.0045)$.],
  [
    *Step 1 — Rewrite $0.0045 = frac(45, 10000) = frac(3^2 times 5, 10^4)$:*
    $ log_(10)(0.0045) = 2 log_(10) 3 + log_(10) 5 - 4 $

    *Step 2 — Substitute $log_(10) 3 = 0.4771$ and $log_(10) 5 = 0.6990$:*
    $ 2(0.4771) + 0.6990 - 4 = 0.9542 + 0.6990 - 4 = 1.6532 - 4 = bold(-2.3468) $
    *(Note: in classical bar notation, $1.6532 - 4 = -3 + 0.6532 = overline(3).6532$.)*
    *Final Answer:* $-bold(2.3468)$ (or $overline(3).6532$).
  ],
)

#worked-example(
  "7.13",
  "Logarithm of a Cube Root of a Decimal Without Tables",
  tier: "JAMB CHALLENGE",
  [Given $log_(10) 2 = 0.3010$ and $log_(10) 3 = 0.4771$, find $log_(10) root(3, 0.72)$.],
  [
    *Step 1 — Factorize $0.72 = frac(72, 100) = frac(2^3 times 3^2, 10^2)$:*
    $ log_(10) root(3, 0.72) = frac(1, 3) (3 log_(10) 2 + 2 log_(10) 3 - 2) $

    *Step 2 — Substitute and divide by $3$:*
    $ frac(1, 3) (3(0.3010) + 2(0.4771) - 2) = frac(1, 3) (0.9030 + 0.9542 - 2) = frac(-0.1428, 3) = bold(-0.0476) $
    *Final Answer:* $-bold(0.0476)$.
  ],
)

#worked-example(
  "7.14",
  "Evaluating a Non-Decimal Base Logarithm from Base-10 Data",
  tier: "JAMB CHALLENGE",
  [Given $log_(10) 2 = 0.3010$ and $log_(10) 3 = 0.4771$, calculate $log_6 24$ correct to $3$ decimal places.],
  [
    *Step 1 — Apply Change of Base to base $10$:*
    $ log_6 24 = frac(log_(10) 24, log_(10) 6) = frac(log_(10)(2^3 times 3), log_(10)(2 times 3)) = frac(3 log_(10) 2 + log_(10) 3, log_(10) 2 + log_(10) 3) $

    *Step 2 — Substitute and divide:*
    $ frac(3(0.3010) + 0.4771, 0.3010 + 0.4771) = frac(1.3801, 0.7781) = frac(13801, 7781) approx 1.77368 approx bold(1.774) $
    *Final Answer:* *1.774* (to 3 d.p.).
  ],
)

#worked-example(
  "7.15",
  "Counting the Digits of a Large Power (2^50)",
  tier: "UTME STANDARD",
  [Given $log_(10) 2 = 0.30103$, how many digits are there in the ordinary decimal expansion of $2^(50)$?],
  [
    *Step 1 — Compute $log_(10)(2^(50))$:*
    $ log_(10)(2^(50)) = 50 times 0.30103 = 15.0515 $

    *Step 2 — Apply the Characteristic $+ 1$ rule:*
    Since $15 <= log_(10)(2^(50)) < 16$, we have $10^(15) <= 2^(50) < 10^(16)$, which has $15 + 1 = bold(16 "digits")$.
    *Final Answer:* *16 digits*.
  ],
)

#worked-example(
  "7.16",
  "Addition and Division in Classical Bar Notation",
  tier: "UTME STANDARD",
  [Simplify in bar notation: (a) $overline(2).64 + overline(3).78$; #h(8pt) (b) $overline(2).77 div 3$.],
  [
    *Part (a):* Separate negative integer characteristics and positive mantissas:
    $(-2 + -3) + (0.64 + 0.78) = -5 + 1.42 = (-5 + 1) + 0.42 = -4 + 0.42 = bold(overline(4).42)$.

    *Part (b):* Adjust $-2$ down to $-3$ (the next multiple of $3$) and compensate with $+1$ on the mantissa:
    $ frac(-2 + 0.77, 3) = frac(-3 + 1.77, 3) = -1 + 0.59 = bold(overline(1).59) $
  ],
)

#worked-example(
  "7.17",
  "Solving for an Unknown Logarithm Base",
  tier: "FOUNDATION",
  source: "UTME Past Paper",
  [Find $x$ if $log_x 64 = frac(3, 2)$.],
  [
    *Step 1 — Convert to exponential form ($x > 0, x != 1$):*
    $ x^(3 / 2) = 64 quad arrow.r.double quad x = 64^(2 / 3) = (root(3, 64))^2 = 4^2 = bold(16) $
    *Final Answer:* *16*.
  ],
)

#worked-example(
  "7.18",
  "Peeling a Triple Nested Logarithmic Equation",
  tier: "UTME STANDARD",
  [Solve for $x$: #h(6pt) $log_2 (log_3 (log_4 x)) = 0$.],
  [
    *Step 1 — Unwrap from the outermost logarithm inward:*
    - Outer base $2$: $log_3 (log_4 x) = 2^0 = 1$.
    - Middle base $3$: $log_4 x = 3^1 = 3$.
    - Inner base $4$: $x = 4^3 = bold(64)$.
    *Final Answer:* *64*.
  ],
)

#worked-example(
  "7.19",
  "Logarithmic Sum Equation — Mandatory Domain Filtering!",
  tier: "UTME STANDARD",
  source: "JAMB Classic Trap",
  [Solve for $x$: #h(6pt) $log_(10)(x - 1) + log_(10)(x + 2) = 1$.],
  [
    *Step 1 — Note the domain FIRST:* Both $x - 1 > 0$ and $x + 2 > 0$, so *$x > 1$* is mandatory!

    *Step 2 — Combine logs and convert $1 = log_(10) 10$:*
    $ log_(10)[(x - 1)(x + 2)] = log_(10) 10 quad arrow.r.double quad x^2 + x - 2 = 10 $
    $ x^2 + x - 12 = 0 quad arrow.r.double quad (x + 4)(x - 3) = 0 quad arrow.r.double quad x = -4 "or" x = 3 $

    *Step 3 — Filter against domain $x > 1$:*
    Reject $x = -4$ (makes $log_(10)(-5)$ undefined!). Accept *$x = 3$* only.
    *Final Answer:* $bold(x = 3)$.
  ],
)

#worked-example(
  "7.20",
  "Logarithmic Difference Equation",
  tier: "UTME STANDARD",
  [Find $x$ if $log_3 (2x + 5) - log_3 (x - 1) = 2$.],
  [
    *Step 1 — Domain requires $x > 1$. Apply Quotient Law and $3^2 = 9$:*
    $ log_3 (frac(2x + 5, x - 1)) = 2 quad arrow.r.double quad frac(2x + 5, x - 1) = 9 $

    *Step 2 — Cross-multiply and check domain:*
    $2x + 5 = 9x - 9 arrow.r.double 7x = 14 arrow.r.double x = 2$ (satisfies $x > 1$ ✓).
    *Final Answer:* $bold(x = 2)$.
  ],
)

#worked-example(
  "7.21",
  "Subtle Zero-Argument Extraneous Root Trap!",
  tier: "JAMB CHALLENGE",
  [Find all valid real solutions to $log_2 (x^2 - 3x) = 2 + log_2 (x - 3)$.],
  [
    *Step 1 — Record the domain BEFORE touching the algebra:*
    We need $x - 3 > 0 arrow.r.double bold(x > 3)$!

    *Step 2 — Replace $2 = log_2 4$ and combine the right-hand side:*
    $ log_2 (x^2 - 3x) = log_2 [4(x - 3)] quad arrow.r.double quad x(x - 3) = 4(x - 3) $
    $ (x - 4)(x - 3) = 0 quad arrow.r.double quad x = 4 "or" x = 3 $

    *Step 3 — Domain check:* At $x = 3$, the original equation gives $log_2(0)$ on BOTH sides, which is *undefined*! Thus $x = 3$ MUST be rejected, leaving *$x = 4$* alone!
    *Final Answer:* $bold(x = 4)$.
  ],
)

#worked-example(
  "7.22",
  "Multi-Base Equation with Powers of a Common Prime (Bases 2, 4, 8)",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Solve for $x$: #h(6pt) $log_2 x + log_4 x + log_8 x = 11$.],
  [
    *Step 1 — Convert bases $4 = 2^2$ and $8 = 2^3$ to base $2$ using $log_(2^k) x = frac(1, k) log_2 x$:*
    $ log_2 x + frac(1, 2) log_2 x + frac(1, 3) log_2 x = 11 $

    *Step 2 — Add the fractional coefficients ($1 + 1 / 2 + 1 / 3 = 11 / 6$):*
    $ frac(11, 6) log_2 x = 11 quad arrow.r.double quad log_2 x = 6 quad arrow.r.double quad x = 2^6 = bold(64) $
    *Final Answer:* *64*.
  ],
)

#worked-example(
  "7.23",
  "Reciprocal-Base Quadratic Equation (log_2 x and log_x 2)",
  tier: "JAMB CHALLENGE",
  source: "JAMB Classic",
  [Solve for $x$: #h(6pt) $log_2 x - 6 log_x 2 = 1$.],
  [
    *Step 1 — Use $log_x 2 = frac(1, log_2 x)$ and let $u = log_2 x$:*
    $ u - frac(6, u) = 1 quad arrow.r.double quad u^2 - u - 6 = 0 quad arrow.r.double quad (u - 3)(u + 2) = 0 $
    Hence $u = 3$ or $u = -2$.

    *Step 2 — Back-substitute BOTH values of $u$ (logs CAN be negative!):*
    - $log_2 x = 3 arrow.r.double x = 2^3 = 8$.
    - $log_2 x = -2 arrow.r.double x = 2^(-2) = frac(1, 4)$ (valid base: $1 / 4 > 0, != 1$ ✓!).
    *Final Answer:* $bold(x = 8 "or" x = frac(1, 4))$.
  ],
)

#worked-example(
  "7.24",
  "Distinguishing (log_10 x)^2 from log_10(x^3)",
  tier: "UTME STANDARD",
  [Find all solutions to $(log_(10) x)^2 - log_(10)(x^3) + 2 = 0$.],
  [
    *Step 1 — Apply Power Law ONLY to $log_(10)(x^3) = 3 log_(10) x$, and let $u = log_(10) x$:*
    $ u^2 - 3 u + 2 = 0 quad arrow.r.double quad (u - 1)(u - 2) = 0 $

    *Step 2 — Back-substitute:*
    $log_(10) x = 1 arrow.r.double x = 10$, or $log_(10) x = 2 arrow.r.double x = 100$.
    *Final Answer:* $bold(x = 10 "or" x = 100)$.
  ],
)

#worked-example(
  "7.25",
  "Variable in Both Base and Exponent (Taking Logs of Both Sides)",
  tier: "JAMB CHALLENGE",
  [Solve for $x > 0$: #h(6pt) $x^(log_3 x) = 81 x^3$.],
  [
    *Step 1 — Take base-$3$ logarithms of both sides:*
    $ log_3 (x^(log_3 x)) = log_3 (81 x^3) quad arrow.r.double quad (log_3 x)(log_3 x) = log_3 81 + 3 log_3 x $

    *Step 2 — Let $u = log_3 x$:*
    $ u^2 - 3 u - 4 = 0 quad arrow.r.double quad (u - 4)(u + 1) = 0 $
    Hence $log_3 x = 4 arrow.r.double x = 81$, or $log_3 x = -1 arrow.r.double x = frac(1, 3)$.
    *Final Answer:* $bold(x = 81 "or" x = frac(1, 3))$.
  ],
)

#worked-example(
  "7.26",
  "Exponential Equation with Coprime Bases (2^(x+1) = 5^x)",
  tier: "UTME STANDARD",
  [Solve $2^(x + 1) = 5^x$ correct to $3$ significant figures, given $log_(10) 2 = 0.3010$.],
  [
    *Step 1 — Take base-$10$ logs of both sides:*
    $ (x + 1) log_(10) 2 = x log_(10) 5 quad arrow.r.double quad x (log_(10) 5 - log_(10) 2) = log_(10) 2 $

    *Step 2 — Substitute $log_(10) 2 = 0.3010$ and $log_(10) 5 = 0.6990$:*
    $ x = frac(0.3010, 0.6990 - 0.3010) = frac(0.3010, 0.3980) = frac(301, 398) approx 0.75628 approx bold(0.756) $
    *Final Answer:* *0.756* (to 3 s.f.).
  ],
)

#worked-example(
  "7.27",
  "Simultaneous Logarithmic and Linear Equations",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Solve simultaneously for $x$ and $y$: #h(6pt) $log_(10) x + log_(10) y = 2$ #h(6pt) and #h(6pt) $x - y = 15$.],
  [
    *Step 1 — Condense the logarithmic equation ($x > 0, y > 0$):*
    $ log_(10)(x y) = 2 quad arrow.r.double quad x y = 10^2 = 100 $

    *Step 2 — Substitute $x = y + 15$ into $x y = 100$:*
    $ (y + 15) y = 100 quad arrow.r.double quad y^2 + 15 y - 100 = 0 quad arrow.r.double quad (y + 20)(y - 5) = 0 $
    Reject $y = -20$ (since $y > 0$!). Thus $y = 5$ and $x = 5 + 15 = 20$.
    *Final Answer:* *$x = 20, quad y = 5$*.
  ],
)

#worked-example(
  "7.28",
  "Hybrid Simultaneous Logarithmic & Indicial System",
  tier: "JAMB CHALLENGE",
  [Find $(x, y)$ given that $log_3 x + log_3 y = 3$ and $2^(x - 2y) = 8$.],
  [
    *Step 1 — Convert both equations to polynomial form ($x, y > 0$):*
    - $log_3 (x y) = 3 arrow.r.double x y = 3^3 = 27$.
    - $2^(x - 2y) = 2^3 arrow.r.double x - 2y = 3 arrow.r.double x = 2y + 3$.

    *Step 2 — Substitute and solve:*
    $ (2y + 3) y = 27 quad arrow.r.double quad 2 y^2 + 3 y - 27 = 0 quad arrow.r.double quad (2y + 9)(y - 3) = 0 $
    Reject $y = -9 / 2$ (domain $y > 0$). Keep $y = 3$, giving $x = 2(3) + 3 = 9$.
    *Final Answer:* *$x = 9, quad y = 3$*.
  ],
)

#worked-example(
  "7.29",
  "Logarithmic Inequality with a Fractional Base (0 < a < 1 Sign-Flip Trap!)",
  tier: "JAMB CHALLENGE",
  [Find the range of values of $x$ satisfying $log_(1 / 2) (2x - 4) > -3$.],
  [
    *Step 1 — Impose strict positivity of the argument FIRST:*
    $ 2x - 4 > 0 quad arrow.r.double quad x > 2 $

    *Step 2 — Remove $log_(1 / 2)$, REVERSING the inequality because base $1 / 2 < 1$:*
    $ 2x - 4 < (frac(1, 2))^(-3) = 8 quad arrow.r.double quad 2x < 12 quad arrow.r.double quad x < 6 $

    *Step 3 — Intersect both conditions:* $bold(2 < x < 6)$.
    *Final Answer:* *$2 < x < 6$*.
  ],
)

#worked-example(
  "7.30",
  "Symmetric Three-Variable Logarithm Identity",
  tier: "JAMB CHALLENGE",
  [If $x = log_a (b c)$, $y = log_b (c a)$, and $z = log_c (a b)$ for positive $a, b, c != 1$ with $a b c != 1$, evaluate $frac(1, x + 1) + frac(1, y + 1) + frac(1, z + 1)$.],
  [
    *Step 1 — Add $1 = log_a a$ to $x$:*
    $ x + 1 = log_a (b c) + log_a a = log_a (a b c) quad arrow.r.double quad frac(1, x + 1) = frac(1, log_a (a b c)) = log_(a b c) a $

    *Step 2 — By symmetry, sum all three reciprocals:*
    $ log_(a b c) a + log_(a b c) b + log_(a b c) c = log_(a b c) (a b c) = bold(1) $
    *Final Answer:* *1*.
  ],
)

#worked-example(
  "7.31",
  "Telescoping Finite Logarithm Series",
  tier: "UTME STANDARD",
  [Evaluate the sum $log_(10)(frac(2, 1)) + log_(10)(frac(3, 2)) + log_(10)(frac(4, 3)) + dots.c + log_(10)(frac(100, 99))$.],
  [
    *Step 1 — Combine the sum of $99$ logs into the logarithm of a single product:*
    $ log_(10) (frac(cancel(2), 1) times frac(cancel(3), cancel(2)) times frac(cancel(4), cancel(3)) times dots.c times frac(100, cancel(99))) = log_(10)(frac(100, 1)) = log_(10)(10^2) = bold(2) $
    *Final Answer:* *2*.
  ],
)

#worked-example(
  "7.32",
  "Scientific Decibel Scale Application",
  tier: "UTME STANDARD",
  [Acoustic intensity level is defined by $L = 10 log_(10)(I / I_0)$ decibels ($"dB"$). If a loudspeaker's acoustic intensity $I$ increases to $2000 times I_0$ and $log_(10) 2 = 0.3010$, find $L$ in $"dB"$.],
  [
    *Step 1 — Substitute $I / I_0 = 2000 = 2 times 10^3$:*
    $ L = 10 log_(10)(2 times 10^3) = 10 (log_(10) 2 + 3) = 10 (0.3010 + 3) = 10 times 3.3010 = bold(33.01 "dB") $
    *Final Answer:* *33.01 dB*.
  ],
)

// ============================================================================
// SECTION 7.5 RAPID-REVISION SUMMARY TABLE
// ============================================================================
== 7.5 Chapter 7 Rapid-Revision Checklist

#table(
  columns: (1.3fr, 2.0fr, 1.7fr),
  inset: 7.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Topic],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Master Formula],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[JAMB Exam Trap],

  [*Domain of $log_a N$*],
  [$N > 0$, #h(6pt) $a > 0$, #h(6pt) $a != 1$.],
  [ALWAYS test roots in original log arguments; reject $N <= 0$!],

  [*Base-Power Law*],
  [$log_(a^k)(M^p) = frac(p, k) log_a M$.],
  [Turns $log_4 x$ into $frac(1, 2) log_2 x$ and $log_(sqrt(3)) 27$ into $6$ instantly.],

  [*Change of Base*],
  [$log_a b = frac(log_c b, log_c a) = frac(1, log_b a)$.],
  [$frac(log A, log B) = log_B A$, NEVER $log(A / B) = log A - log B$!],

  [*Hidden $log_(10) 5$*],
  [$log_(10) 5 = 1 - log_(10) 2 = 0.6990$.],
  [Essential whenever $5, 15, 25, 45, 75$ appear without tables!],

  [*Log Inequalities*],
  [$0 < a < 1 arrow.r.double$ flip $>$ to $<$.],
  [Don't forget the lower bound $f(x) > 0$!],
)

// ============================================================================
// END-OF-CHAPTER JAMB UTME PRACTICE DRILL (55 QUESTIONS)
// ============================================================================
== 7.6 JAMB UTME Practice Drill — Chapter 7 (55 Questions)

Attempt all 55 questions without tables or a calculator (target time: *45 minutes*).

#mcq(1, [Evaluate $log_5 125$.], [$3$], [$25$], [$5$], [$frac(1, 3)$])

#mcq(2, [Find the value of $log_3 (frac(1, 81))$.], [$4$], [$-4$], [$-27$], [$-frac(1, 4)$])

#mcq(3, [Evaluate $log_8 32$.], [$4$], [$frac(3, 5)$], [$frac(5, 3)$], [$frac(5, 2)$])

#mcq(4, [Simplify $log_5 (0.04)$.], [$-frac(1, 2)$], [$2$], [$-25$], [$-2$])

#mcq(5, [Evaluate $log_(sqrt(2)) 8$.], [$6$], [$3$], [$frac(3, 2)$], [$4$])

#mcq(6, [Simplify $log_(10) 20 + log_(10) 50$.], [$log_(10) 70$], [$3$], [$2$], [$10$])

#mcq(7, [Evaluate $log_3 54 - log_3 2$.], [$27$], [$9$], [$3$], [$4$])

#mcq(8, [Simplify $2 log_(10) 5 + log_(10) 4$.], [$1$], [$log_(10) 14$], [$100$], [$2$])

#mcq(9, [Evaluate $frac(log_(10) 16, log_(10) 8)$.], [$frac(4, 3)$], [$2$], [$log_(10) 2$], [$frac(3, 4)$])

#mcq(10, [Simplify $frac(log 81 - log 9, log 3)$.], [$3$], [$2$], [$9$], [$frac(4, 3)$])

#mcq(11, [Given that $log_(10) 2 = 0.3010$, find $log_(10) 5$ without tables.], [$0.6020$], [$0.7525$], [$0.6990$], [$0.5000$])

#mcq(12, [Given $log_(10) 2 = 0.3010$ and $log_(10) 3 = 0.4771$, evaluate $log_(10) 12$.], [$0.7781$], [$1.2552$], [$0.9542$], [$1.0791$])

#mcq(13, [Given $log_(10) 2 = 0.3010$ and $log_(10) 3 = 0.4771$, find $log_(10) 15$.], [$1.1761$], [$0.7781$], [$1.4771$], [$1.0791$])

#mcq(14, [If $log_(10) 2 = 0.3010$, evaluate $log_(10) (0.08)$.], [$-0.9030$], [$-1.0970$], [$-2.9030$], [$-1.3010$])

#mcq(15, [Given $log_(10) 3 = 0.4771$ and $log_(10) 7 = 0.8451$, find $log_(10) 63$.], [$1.3222$], [$2.1673$], [$1.7993$], [$1.6902$])

#mcq(16, [Given $log_(10) 2 = 0.3010$, find $log_(10) sqrt(5)$.], [$0.1505$], [$0.6990$], [$0.8495$], [$0.3495$])

#mcq(17, [Evaluate $(log_3 7) times (log_7 25) times (log_5 9)$.], [$4$], [$2$], [$1$], [$6$])

#mcq(18, [Find the exact value of $25^(log_5 3)$.], [$6$], [$9$], [$15$], [$3$])

#mcq(19, [Find $x$ if $log_x 243 = 5$.], [$9$], [$27$], [$3$], [$7$])

#mcq(20, [Solve for $x$: $log_8 x = -frac(2, 3)$.], [$-frac(16, 3)$], [$4$], [$-frac(1, 4)$], [$frac(1, 4)$])

#mcq(21, [Solve the equation $log_3 (2x - 1) = 3$.], [$14$], [$5$], [$13$], [$4$])

#mcq(22, [Find $x$ if $log_5 (log_2 x) = 1$.], [$10$], [$32$], [$25$], [$64$])

#mcq(23, [Find all valid real solutions to $log_(10) x + log_(10)(x - 3) = 1$.], [$5$ or $-2$], [$-2$ only], [$5$ only], [$4$ only])

#mcq(24, [Solve for $x$: $log_2 (x + 3) + log_2 (x - 3) = 4$.], [$5$ or $-5$], [$sqrt(13)$], [$7$], [$5$])

#mcq(25, [Solve $log_4 (3x + 4) - log_4 (x - 1) = 1$.], [$8$], [$5$], [$3$], [$0$])

#mcq(26, [Find $x$ if $log_3 x + log_9 x = 6$.], [$27$], [$81$], [$9$], [$243$])

#mcq(27, [Solve the equation $log_3 x + 3 log_x 3 = 4$.], [$1$ or $3$], [$3$ or $9$], [$3$ or $27$], [$9$ or $27$])

#mcq(28, [Find the roots of $(log_2 x)^2 - 5 log_2 x + 6 = 0$.], [$2$ or $3$], [$4$ or $6$], [$2$ or $8$], [$4$ or $8$])

#mcq(29, [Without tables, evaluate $frac(log 8 + log 27, log 6)$.], [$3$], [$6$], [$frac(35, 6)$], [$2$])

#mcq(30, [If $log_a 2 = x$ and $log_a 5 = y$, express $log_a 40$ in terms of $x$ and $y$.], [$2x + y$], [$3x + y$], [$x^3 y$], [$8x + y$])

#mcq(31, [If $log_(10) 2 = p$, express $log_(10) 25$ in terms of $p$.], [$2p$], [$1 - 2p$], [$2 - 2p$], [$2 - p$])

#mcq(32, [Evaluate $log_(10)(frac(3, 5)) + log_(10)(frac(15, 9)) + log_(10) 1$.], [$1$], [$log_(10) 2$], [$-1$], [$0$])

#mcq(33, [Simplify $frac(1, log_2 12) + frac(1, log_6 12)$.], [$1$], [$2$], [$log_(12) 8$], [$frac(1, 2)$])

#mcq(34, [Given $log_(10) 3 = 0.47712$, how many digits does the integer $3^(20)$ have in base $10$?], [$9$], [$10$], [$11$], [$20$])

#mcq(35, [Simplify $overline(3).6 + overline(2).8$ in bar notation.], [$overline(5).4$], [$overline(6).4$], [$overline(4).4$], [$overline(4).6$])

#mcq(36, [Evaluate $overline(2).4 div 4$ in bar notation.], [$overline(1).1$], [$overline(2).1$], [$overline(0).6$], [$overline(1).6$])

#mcq(37, [Solve for $x$: $log_(10)(2x + 1) - log_(10)(3x - 2) = 0$.], [$3$], [$1$], [$-3$], [$2$])

#mcq(38, [If $log_2 (x + y) = 5$ and $log_2 (x - y) = 3$, find the value of $x$.], [$12$], [$20$], [$16$], [$24$])

#mcq(39, [Given $log_(10) 2 = 0.3010$, find the number $a$ for which $log_(10) a = 1.3010$.], [$12$], [$200$], [$20$], [$10.2$])

#mcq(40, [Evaluate $log_4 (0.125)$.], [$-frac(2, 3)$], [$-3$], [$frac(3, 2)$], [$-frac(3, 2)$])

#mcq(41, [Find all positive values of $x$ satisfying $x^(log_2 x) = 16$.], [$4$ or $frac(1, 4)$], [$4$ only], [$2$ or $frac(1, 2)$], [$8$ or $frac(1, 8)$])

#mcq(42, [Simplify $frac(log 125, log 25)$.], [$5$], [$frac(3, 2)$], [$frac(2, 3)$], [$log 5$])

#mcq(43, [Given $log_(10) 7 = 0.8451$, find $log_(10)(frac(1, 70))$.], [$-0.8451$], [$1.8451$], [$-1.8451$], [$-0.1549$])

#mcq(44, [How many *integers* $x$ belong to the domain of $f(x) = log_(x - 2) (10 - 2x)$?], [$3$], [$2$], [$0$], [$1$])

#mcq(45, [Find the complete solution set of the inequality $log_(1 / 3) (x - 2) >= -2$.], [$2 < x <= 11$], [$x <= 11$], [$x >= 11$], [$2 < x <= 8$])

#mcq(46, [Evaluate $log_2 (frac(1, 16)) + log_3 27$.], [$7$], [$-1$], [$1$], [$-7$])

#mcq(47, [If $3^x = 7$, then $x$ is equal to:], [$log_7 3$], [$log_(10)(frac(7, 3))$], [$frac(log_(10) 7, log_(10) 3)$], [$log_(10) 7 - log_(10) 3$])

#mcq(48, [For any base $a > 0, a != 1$, simplify $log_a (a^3) + log_a (frac(1, a)) + log_a 1$.], [$3$], [$4$], [$1$], [$2$])

#mcq(49, [Evaluate $log_9 3 + log_(27) 3 + log_(81) 3$.], [$frac(13, 12)$], [$9$], [$frac(1, 9)$], [$frac(11, 12)$])

#mcq(50, [If $log_(10) y = 2 + 3 log_(10) x - log_(10) z$, express $y$ free of logarithms.], [$frac(2 x^3, z)$], [$frac(100 x^3, z)$], [$100 + x^3 - z$], [$frac(100 + 3x, z)$])

#mcq(51, [Evaluate the telescoping sum $log_2 (1 + frac(1, 1)) + log_2 (1 + frac(1, 2)) + log_2 (1 + frac(1, 3)) + dots.c + log_2 (1 + frac(1, 15))$.], [$15$], [$8$], [$4$], [$3$])

#mcq(52, [Find $m$ if $log_8 m + log_8 (frac(1, 6)) = frac(2, 3)$.], [$32$], [$16$], [$12$], [$24$])

#mcq(53, [Given $log_(10) 2 = 0.3010$ and $log_(10) 3 = 0.4771$, find $log_2 3$ correct to $2$ decimal places.], [$1.59$], [$0.63$], [$1.48$], [$1.77$])

#mcq(54, [Find all real solutions to $log_(10)(x^2 + 9) - 2 log_(10) x = 1$.], [$1$ or $-1$], [$1$ only], [$3$ only], [$9$ only])

#mcq(55, [If $a = log_2 3$ and $b = log_3 5$, express $log_2 45$ in terms of $a$ and $b$.], [$2a + b$], [$a^2 b$], [$2a + a b$], [$a + 2b$])

// ============================================================================
// ANSWER KEY & FULL MULTI-STEP SOLUTIONS
// ============================================================================
== 7.7 Quick Answer Key & Complete Worked Solutions — Chapter 7

#answer-key-grid((
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C",
))

#sol-item(1, "A")[
  *Step 1:* Express $125 = 5^3$:
  $ log_5 125 = log_5 (5^3) = 3 $
]

#sol-item(2, "B")[
  *Step 1:* Express $1 / 81 = 3^(-4)$:
  $ log_3 (3^(-4)) = -4 $
]

#sol-item(3, "C")[
  *Step 1:* Convert both base $8 = 2^3$ and argument $32 = 2^5$ to base $2$:
  $ log_(2^3) (2^5) = frac(5, 3) log_2 2 = frac(5, 3) $
]

#sol-item(4, "D")[
  *Step 1:* Write $0.04 = 4 / 100 = 1 / 25 = 5^(-2)$:
  $ log_5 (5^(-2)) = -2 $
]

#sol-item(5, "A")[
  *Step 1:* Write $sqrt(2) = 2^(1 / 2)$ and $8 = 2^3$:
  $ log_(2^(1 / 2)) (2^3) = frac(3, 1 / 2) = 6 $
]

#sol-item(6, "B")[
  *Step 1:* Product Law:
  $ log_(10)(20 times 50) = log_(10) 1000 = log_(10)(10^3) = 3 $
]

#sol-item(7, "C")[
  *Step 1:* Quotient Law:
  $ log_3 (frac(54, 2)) = log_3 27 = log_3 (3^3) = 3 $
]

#sol-item(8, "D")[
  *Step 1:* Move coefficient $2$ into power first:
  $ log_(10)(5^2) + log_(10) 4 = log_(10)(25 times 4) = log_(10) 100 = 2 $
]

#sol-item(9, "A")[
  *Step 1:* Write $16 = 2^4$ and $8 = 2^3$:
  $ frac(4 log_(10) 2, 3 log_(10) 2) = frac(4, 3) $
]

#sol-item(10, "B")[
  *Step 1:* Write $81 = 3^4$ and $9 = 3^2$:
  $ frac(4 log 3 - 2 log 3, log 3) = frac(2 log 3, log 3) = 2 $
]

#sol-item(11, "C")[
  *Step 1:* Use $5 = 10 / 2$:
  $ log_(10) 5 = log_(10) 10 - log_(10) 2 = 1 - 0.3010 = 0.6990 $
]

#sol-item(12, "D")[
  *Step 1:* Factorize $12 = 2^2 times 3$:
  $ 2(0.3010) + 0.4771 = 0.6020 + 0.4771 = 1.0791 $
]

#sol-item(13, "A")[
  *Step 1:* Factorize $15 = 3 times 5$ and use $log_(10) 5 = 0.6990$:
  $ 0.4771 + 0.6990 = 1.1761 $
]

#sol-item(14, "B")[
  *Step 1:* Rewrite $0.08 = 8 / 100 = 2^3 / 10^2$:
  $ 3(0.3010) - 2 = 0.9030 - 2 = -1.0970 $
]

#sol-item(15, "C")[
  *Step 1:* Factorize $63 = 3^2 times 7$:
  $ 2(0.4771) + 0.8451 = 0.9542 + 0.8451 = 1.7993 $
]

#sol-item(16, "D")[
  *Step 1:* Apply Power Law $1 / 2$ to $log_(10) 5 = 0.6990$:
  $ frac(1, 2)(0.6990) = 0.3495 $
]

#sol-item(17, "A")[
  *Step 1:* Extract prime powers ($25 = 5^2, 9 = 3^2$) and telescope:
  $ (log_3 7)(2 log_7 5)(2 log_5 3) = 4 (log_3 3) = 4 $
]

#sol-item(18, "B")[
  *Step 1:* Rewrite $25 = 5^2$:
  $ (5^(log_5 3))^2 = 3^2 = 9 $
]

#sol-item(19, "C")[
  *Step 1:* Convert to exponential form:
  $ x^5 = 243 = 3^5 quad arrow.r.double quad x = 3 $
]

#sol-item(20, "D")[
  *Step 1:* Convert to exponential form:
  $ x = 8^(-2 / 3) = (root(3, 8))^(-2) = 2^(-2) = frac(1, 4) $
]

#sol-item(21, "A")[
  *Step 1:* Convert to exponential form:
  $ 2x - 1 = 3^3 = 27 quad arrow.r.double quad 2x = 28 quad arrow.r.double quad x = 14 $
]

#sol-item(22, "B")[
  *Step 1:* Peel outer base $5$, then inner base $2$:
  $ log_2 x = 5^1 = 5 quad arrow.r.double quad x = 2^5 = 32 $
]

#sol-item(23, "C")[
  *Step 1:* Domain requires $x > 3$. Condense:
  $ x(x - 3) = 10 quad arrow.r.double quad x^2 - 3x - 10 = (x - 5)(x + 2) = 0 $
  Reject $x = -2$; accept $x = 5$ only.
]

#sol-item(24, "D")[
  *Step 1:* Domain requires $x > 3$. Condense:
  $ (x + 3)(x - 3) = 2^4 = 16 quad arrow.r.double quad x^2 = 25 quad arrow.r.double quad x = 5 " (reject " -5 ")" $
]

#sol-item(25, "A")[
  *Step 1:* Domain $x > 1$. Quotient Law:
  $ frac(3x + 4, x - 1) = 4^1 = 4 quad arrow.r.double quad 3x + 4 = 4x - 4 quad arrow.r.double quad x = 8 $
]

#sol-item(26, "B")[
  *Step 1:* Write $log_9 x = frac(1, 2) log_3 x$:
  $ frac(3, 2) log_3 x = 6 quad arrow.r.double quad log_3 x = 4 quad arrow.r.double quad x = 3^4 = 81 $
]

#sol-item(27, "C")[
  *Step 1:* Let $u = log_3 x$:
  $ u + frac(3, u) = 4 quad arrow.r.double quad u^2 - 4 u + 3 = (u - 1)(u - 3) = 0 $
  Hence $log_3 x = 1 arrow.r.double x = 3$ or $log_3 x = 3 arrow.r.double x = 27$.
]

#sol-item(28, "D")[
  *Step 1:* Let $u = log_2 x$:
  $ (u - 2)(u - 3) = 0 quad arrow.r.double quad x = 2^2 = 4 "or" x = 2^3 = 8 $
]

#sol-item(29, "A")[
  *Step 1:* Condense numerator:
  $ frac(log(8 times 27), log 6) = frac(log(216), log 6) = frac(log(6^3), log 6) = 3 $
]

#sol-item(30, "B")[
  *Step 1:* Factorize $40 = 2^3 times 5$:
  $ log_a 40 = 3 log_a 2 + log_a 5 = 3x + y $
]

#sol-item(31, "C")[
  *Step 1:* Write $25 = 5^2 = (10 / 2)^2$:
  $ 2 log_(10)(frac(10, 2)) = 2(1 - p) = 2 - 2p $
]

#sol-item(32, "D")[
  *Step 1:* Combine:
  $ log_(10)(frac(3, 5) times frac(15, 9) times 1) = log_(10)(frac(45, 45)) = log_(10) 1 = 0 $
]

#sol-item(33, "A")[
  *Step 1:* Use reciprocal law $1 / log_a b = log_b a$:
  $ log_(12) 2 + log_(12) 6 = log_(12)(2 times 6) = log_(12) 12 = 1 $
]

#sol-item(34, "B")[
  *Step 1:* Compute $log_(10)(3^(20)) = 20 times 0.47712 = 9.5424$.
  *Step 2:* Number of digits $= floor(9.5424) + 1 = 9 + 1 = 10$.
]

#sol-item(35, "C")[
  *Step 1:* Separate characteristics and mantissas:
  $ (-3 + -2) + (0.6 + 0.8) = -5 + 1.4 = -4 + 0.4 = overline(4).4 $
]

#sol-item(36, "D")[
  *Step 1:* Adjust $-2$ to $-4$ (divisible by $4$):
  $ frac(-2 + 0.4, 4) = frac(-4 + 2.4, 4) = -1 + 0.6 = overline(1).6 $
]

#sol-item(37, "A")[
  *Step 1:* Equate positive arguments:
  $ 2x + 1 = 3x - 2 quad arrow.r.double quad x = 3 quad ("gives " log_(10) 7 - log_(10) 7 = 0 " ✓") $
]

#sol-item(38, "B")[
  *Step 1:* Exponentiate both equations:
  $ x + y = 2^5 = 32, quad x - y = 2^3 = 8 quad arrow.r.double quad 2x = 40 quad arrow.r.double quad x = 20 $
]

#sol-item(39, "C")[
  *Step 1:* Split $1.3010 = 1 + 0.3010$:
  $ log_(10) a = log_(10) 10 + log_(10) 2 = log_(10) 20 quad arrow.r.double quad a = 20 $
]

#sol-item(40, "D")[
  *Step 1:* Write $4 = 2^2$ and $0.125 = 1 / 8 = 2^(-3)$:
  $ log_(2^2)(2^(-3)) = -frac(3, 2) $
]

#sol-item(41, "A")[
  *Step 1:* Take $log_2$ of both sides:
  $ (log_2 x)^2 = log_2 16 = 4 quad arrow.r.double quad log_2 x = plus.minus 2 quad arrow.r.double quad x = 4 "or" frac(1, 4) $
]

#sol-item(42, "B")[
  *Step 1:* Express in powers of $5$:
  $ frac(3 log 5, 2 log 5) = frac(3, 2) $
]

#sol-item(43, "C")[
  *Step 1:* Apply Quotient Law:
  $ log_(10)(frac(1, 70)) = -log_(10)(10 times 7) = -(1 + 0.8451) = -1.8451 $
]

#sol-item(44, "D")[
  *Step 1:* Base conditions: $x - 2 > 0 arrow.r.double x > 2$ and $x - 2 != 1 arrow.r.double x != 3$.
  *Step 2:* Argument condition: $10 - 2x > 0 arrow.r.double x < 5$. The *only* integer in $(2, 5)$ with $x != 3$ is $x = 4$ ($1$ integer).
]

#sol-item(45, "A")[
  *Step 1:* Domain: $x - 2 > 0 arrow.r.double x > 2$.
  *Step 2:* Flip $>=$ to $<=$ since base $1 / 3 < 1$:
  $ x - 2 <= (frac(1, 3))^(-2) = 9 quad arrow.r.double quad x <= 11 quad arrow.r.double quad 2 < x <= 11 $
]

#sol-item(46, "B")[
  *Step 1:* Evaluate each term directly:
  $ log_2 (2^(-4)) + log_3 (3^3) = -4 + 3 = -1 $
]

#sol-item(47, "C")[
  *Step 1:* Take base-$10$ logs of both sides:
  $ x log_(10) 3 = log_(10) 7 quad arrow.r.double quad x = frac(log_(10) 7, log_(10) 3) $
]

#sol-item(48, "D")[
  *Step 1:* Evaluate term by term:
  $ 3 + (-1) + 0 = 2 $
]

#sol-item(49, "A")[
  *Step 1:* Apply Base-Power Law ($9 = 3^2, 27 = 3^3, 81 = 3^4$):
  $ frac(1, 2) + frac(1, 3) + frac(1, 4) = frac(6 + 4 + 3, 12) = frac(13, 12) $
]

#sol-item(50, "B")[
  *Step 1:* Write $2 = log_(10) 100$ and condense:
  $ log_(10) y = log_(10)(frac(100 x^3, z)) quad arrow.r.double quad y = frac(100 x^3, z) $
]

#sol-item(51, "C")[
  *Step 1:* Rewrite $1 + 1 / k = (k + 1) / k$ and telescope:
  $ log_2 (frac(2, 1) times frac(3, 2) times dots.c times frac(16, 15)) = log_2 16 = 4 $
]

#sol-item(52, "D")[
  *Step 1:* Combine logs:
  $ log_8 (frac(m, 6)) = frac(2, 3) quad arrow.r.double quad frac(m, 6) = 8^(2 / 3) = 4 quad arrow.r.double quad m = 24 $
]

#sol-item(53, "A")[
  *Step 1:* Change of Base to base $10$:
  $ log_2 3 = frac(log_(10) 3, log_(10) 2) = frac(0.4771, 0.3010) approx 1.5850 approx 1.59 $
]

#sol-item(54, "B")[
  *Step 1:* Domain of $2 log_(10) x$ requires $x > 0$! Condense:
  $ frac(x^2 + 9, x^2) = 10 quad arrow.r.double quad 9 x^2 = 9 quad arrow.r.double quad x = 1 " (reject " x = -1 ")" $
]

#sol-item(55, "C")[
  *Step 1:* Note $log_2 5 = (log_2 3)(log_3 5) = a b$. Factorize $45 = 3^2 times 5$:
  $ log_2 45 = 2 log_2 3 + log_2 5 = 2 a + a b $
]
