#import "template.typ": *

#pagebreak()

#chapter-opener(
  3,
  "Fractions, Decimals, Approximations & Errors",
  subtitle: "Real Number Classification, HCF/LCM, BODMAS & Continued Fractions, Recurring Decimals, s.f./d.p. & Percentage Error",
  syllabus-ref: "JAMB Syllabus Sec. I • Topic 2(a–d)",
  utme-weight: "1 – 2 Questions Every Year (92% Frequency)",
)

#focus-radar(
  objectives: (
    "Classify real numbers (natural, whole, integer, rational, irrational) and apply prime factorization to HCF and LCM.",
    "Perform multi-step BODMAS operations on vulgar, mixed, and complex continued fractions.",
    "Convert terminating and recurring decimals into exact reduced vulgar fractions.",
    "Approximate numbers accurately to specified significant figures (s.f.) and decimal places (d.p.).",
    "Compute absolute error, measurement bounds, relative error, and percentage error.",
  ),
  hotspots: (
    "BODMAS expressions combining 'of' with division (e.g., 3⅗ ÷ ⅗ of 2 — 'of' MUST be evaluated BEFORE ÷!).",
    "Fraction-of-the-remainder word problems (rent, food, transport, savings).",
    "Distinguishing leading non-significant zeros from captive and trailing significant zeros (e.g., 0.004096 to 3 s.f. = 0.00410).",
    "Percentage error = |Measured − Actual| / Actual × 100%, including reverse actual-value problems and mistaken-operation errors.",
  ),
  trap-summary: "Two classic traps claim thousands of UTME marks every year: (1) dividing BEFORE evaluating 'of' in BODMAS fraction problems, and (2) putting the wrong (measured) value in the denominator of Percentage Error instead of the Actual (True) value!",
)

// ============================================================================
// SECTION 3.1
// ============================================================================
== 3.1 Classification of Real Numbers, Prime Factorization, HCF & LCM

Every calculation in UTME Mathematics lives inside the hierarchy of *real numbers* ($RR$). Understanding how number sets nest inside one another prevents subtle traps when JAMB specifies _"where $x$ is a natural number"_, _"an integer"_, or _"a rational number"_.

#diagram-fig(
  "diagrams/ch03_real_number_tree.svg",
  "Complete Hierarchy of the Real Number System (R): Natural numbers (N) ⊂ Whole numbers (W) ⊂ Integers (Z) ⊂ Rational numbers (Q), alongside the disjoint set of Irrational numbers (Q').",
)

=== Key Number Sets & Rational vs. Irrational Distinction
- *Natural (Counting) Numbers ($NN$):* ${1, 2, 3, 4, dots}$. *Prime numbers* ($2, 3, 5, 7, 11, 13, 17, 19, 23, 29, dots$) are integers $>= 2$ having *exactly two* distinct positive factors ($1$ and the number itself). Note: *$1$ is NOT a prime number*, and *$2$ is the ONLY even prime number*!
- *Whole Numbers ($WW$):* $NN union {0} = {0, 1, 2, 3, dots}$.
- *Integers ($ZZ$):* ${dots, -3, -2, -1, 0, 1, 2, 3, dots}$. Notice $0$ is an *even integer*, neither positive nor negative!
- *Rational Numbers ($QQ$):* Numbers expressible as $p / q$ where $p, q in ZZ$ and $q != 0$. Their decimal expansions *either terminate* (e.g., $3/8 = 0.375$) *or eventually repeat periodically* (e.g., $3/11 = 0.272727 dots$).
- *Irrational Numbers ($QQ'$):* Real numbers that *cannot* be written as a ratio of integers — their decimal expansions are *infinite and non-repeating* (e.g., $sqrt(2), sqrt(3), root(3, 5), pi, e$). Warning: $22/7 = 3.overline(142857)$ is a *rational approximation* to $pi$, whereas $pi = 3.14159265 dots$ itself is *irrational*!

=== Prime-Power Method for HCF (GCD) and LCM
By the *Fundamental Theorem of Arithmetic*, every integer $N >= 2$ factors uniquely into prime powers: $N = p_1^(a_1) p_2^(a_2) dots p_k^(a_k)$. Once two or more numbers are written over the *same list of primes* (using exponent $0$ for any missing prime):

#formula-box("Prime-Exponent Laws & Two-Number Product Identity")[
  1. *Highest Common Factor (HCF / GCD):* Multiply common primes raised to the *LOWEST* exponent appearing across the numbers.
  2. *Lowest Common Multiple (LCM):* Multiply *all* primes raised to the *HIGHEST* exponent appearing across the numbers.
  3. *Two-Number Product Identity:* For any *two* positive integers $A$ and $B$:
     $ "HCF"(A, B) times "LCM"(A, B) = A times B $
     *(Caution: This product formula applies strictly to TWO integers, never three integers directly!)*
  4. *Perfect Square / Perfect Cube Multipliers:* $N$ is a perfect square iff every prime exponent $a_i$ in $N$ is *even*; $N$ is a perfect cube iff every $a_i$ is a *multiple of $3$*.
]

*Recognising Word-Problem Triggers:*
- If a problem asks for the *next time cyclic events happen together* (bells tolling, traffic lights flashing, runners lapping a circular track) or the *smallest quantity divisible by given sizes* $arrow.r$ compute *LCM*!
- If a problem asks for the *largest equal length, largest square tile without cutting, or greatest container size that measures given volumes exactly* $arrow.r$ compute *HCF*!

// ============================================================================
// SECTION 3.2
// ============================================================================
== 3.2 Vulgar Fractions, Strict BODMAS Hierarchy & Complex Fractions

Simplifying vulgar and mixed fractions is an almost-annual JAMB question. Every error occurs from violating *strict operator precedence (BODMAS)*.

#concept-box("The Exact BODMAS Precedence Ladder")[
  1. *B — Brackets* `( )`, `[ ]`, `{ }`, and fraction bars (a horizontal fraction bar acts as invisible brackets around the entire numerator and entire denominator!).
  2. *O — "Of" & Orders (Powers/Roots):* In fraction arithmetic, the word *"of"* means *tightly bound multiplication* and *MUST be evaluated BEFORE adjacent `÷` or `×`*!
  3. *D & M — Division (`÷`) and Multiplication (`×`):* Equal priority! Evaluate *from left to right* (convert mixed numbers to improper fractions first, and turn `÷ (c/d)` into `× (d/c)`).
  4. *A & S — Addition (`+`) and Subtraction (`−`):* Equal priority! Combine over a common denominator *from left to right* (never turn $A - B + C$ into $A - (B + C)$!).
]

#trap-box("Two Deadly BODMAS Mistakes That Match Option A")[
  - *Trap 1 ('Of' vs Division):* Evaluate $3 frac(3, 5) div frac(3, 5) "of" 2$.
    - *WRONG:* $(18/5 div 3/5) times 2 = 6 times 2 = 12$.
    - *CORRECT:* Evaluate `"3/5 of 2"` *first*: $frac(3, 5) times 2 = frac(6, 5)$. Then divide: $frac(18, 5) div frac(6, 5) = frac(18, 5) times frac(5, 6) = bold(3)$!
  - *Trap 2 (Subtraction Before Addition):* Evaluate $3 frac(1, 2) - 1 frac(2, 3) + 1 frac(1, 4)$.
    - *WRONG:* Adding $1 frac(2, 3) + 1 frac(1, 4) = 2 frac(11, 12)$ first and subtracting *all* of it from $3 frac(1, 2)$! Remember $- B + C = -(B - C)$, NOT $-(B + C)$! Always put all terms over the single LCM $12$ keeping each term's own sign: $frac(42 - 20 + 15, 12) = frac(37, 12) = bold(3 frac(1, 12))$.
]

=== Continued (Multi-Deck) Fractions & "Remainder" Word Problems
- *Continued Fractions:* Simplify from the *bottom-most inner fraction upward* one layer at a time, using $1 div (a/b) = b/a$.
- *"Of the Remainder" Word Problems:* Read every preposition with surgical precision!
  - _"Spends $1/4$ on rent and $2/5$ on food"_ $arrow.r$ both fractions apply to the *whole salary*: remaining fraction $= 1 - (1/4 + 2/5) = 7/20$.
  - _"Spends $1/4$ on rent and $2/5$ *of the remainder* on food"_ $arrow.r$ after rent, $3/4$ remains; food takes $2/5 times 3/4 = 3/10$, or even faster by *multiplicative survival*: remaining fraction $= (1 - 1/4)(1 - 2/5) = frac(3, 4) times frac(3, 5) = bold(frac(9, 20))$!

// ============================================================================
// SECTION 3.3
// ============================================================================
== 3.3 Terminating vs. Recurring Decimals & Non-Calculator Decimal Division

=== Criterion for Terminating Decimals
Reduce a rational number $p / q$ to *lowest terms first* (cancel $gcd(p, q)$!). Inspect the prime factorization of the reduced denominator $q$:
- If $q = 2^a dot 5^b$ (only prime factors $2$ and/or $5$), the decimal *terminates* after $max(a, b)$ decimal places!
  - _Watch out:_ $frac(21, 120)$ looks like $120 = 2^3 times 3 times 5$ has a factor of $3$, *until* you cancel $3$: $frac(21, 120) = frac(7, 40) = frac(7, 2^3 times 5^1) = 0.175$ (terminates!).
- If the reduced denominator $q$ contains *any prime factor other than $2$ or $5$* (such as $3, 7, 11, 13$), the decimal is *infinitely recurring*.

#formula-box("Instant Conversion of Recurring Decimals to Vulgar Fractions")[
  1. *Pure Recurring Decimal* (all $k$ digits after the point repeat):
     $ 0.overline(d_1 d_2 dots d_k) = frac(d_1 d_2 dots d_k, underbrace(99 dots 9, k " nines")) quad ("e.g., " 0.dot(3)dot(6) = frac(36, 99) = frac(4, 11)) $
  2. *Mixed Recurring Decimal* ($m$ non-repeating digits $A$ followed by $k$ repeating digits $B$):
     $ 0.A overline(B) = frac(("All digits " A B) - ("Non-repeating digits " A), underbrace(99 dots 9, k " nines") underbrace(00 dots 0, m " zeros")) $
     _Example:_ $0.2dot(4)dot(5) = frac(245 - 2, 990) = frac(243, 990) = frac(27, 110)$.
]

#shortcut-box("Shift-and-Cancel Method for Decimal Fractions Without a Calculator")[
  To evaluate $frac(0.048 times 0.35, 0.014 times 0.16)$ cleanly by hand:
  1. Count total decimal places in the numerator: $3 + 2 = 5$ d.p.
  2. Count total decimal places in the denominator: $3 + 2 = 5$ d.p.
  3. Multiply top and bottom by $10^5$ so *all* decimals vanish simultaneously into pure integers:
     $ frac(48 times 35, 14 times 16) = frac((48 div 16) times (35 div 7), (14 div 7) times (16 div 16)) = frac(3 times 5, 2 times 1) = frac(15, 2) = bold(7.5) $
  If top and bottom have *unequal* d.p. counts, pad the side with fewer d.p.s with trailing zeros ($0.5 -> 0.500$) until both counts match!
]

// ============================================================================
// SECTION 3.4
// ============================================================================
== 3.4 Rounding: Significant Figures (s.f.) vs. Decimal Places (d.p.)

Students frequently confuse *decimal places* (counted strictly to the right of the decimal point) with *significant figures* (counted from the *first non-zero digit* moving left to right, regardless of where the decimal point sits).

#diagram-fig(
  "diagrams/ch03_sig_figs_anatomy.svg",
  "Anatomy of Significant Figures on 0.004070: leading zeros merely locate the decimal point (NEVER significant), whereas the first non-zero digit, captive interior zeros, and trailing decimal zeros ARE significant (4 s.f.).",
)

=== Complete Five-Rule Playbook for Significant Figures
1. *All non-zero digits ($1$–$9$) are ALWAYS significant.*
2. *Leading zeros* to the left of the first non-zero digit (e.g., the three zeros in $0.004096$) are *NEVER significant* — they are pure place-holders.
3. *Captive (trapped) zeros* between non-zero digits (e.g., $4096$ or $2.005$) are *ALWAYS significant*.
4. *Trailing zeros to the right of a decimal point* (e.g., $0.00410$ or $80.0$) *ARE significant* — you *must* write them when rounding causes a $9$ to roll over (e.g., $0.004096$ to $3$ s.f.: the $3$rd s.f. is $9$, followed by $6 >= 5$, so $409$ rounds up to $410$, giving *$0.00410$*, *never* $0.0041$!).
5. *Rounding Large Whole Numbers to $k$ s.f.:* Replace all dropped integer digits before the decimal point with *place-holder zeros*! For instance, $589","614$ to $2$ s.f. becomes *$590","000$* (writing $59$ shrinks half a million to fifty-nine!).

// ============================================================================
// SECTION 3.5
// ============================================================================
== 3.5 Measurement Bounds, Absolute Error & Percentage Error

No physical measurement is infinitely exact. If a rod is recorded as $x = 8.4" cm"$ *correct to the nearest $0.1" cm"$* ($1$ d.p.), the *unit of precision* is $u = 0.1" cm"$ and the *maximum absolute error* (half-unit tolerance) is $Delta x = u / 2 = 0.05" cm"$.

#diagram-fig(
  "diagrams/ch03_error_bounds.svg",
  "Measurement Error Bounds on the Continuous Number Line: any true length x_true satisfying 8.35 cm ≤ x_true < 8.45 cm rounds to 8.4 cm (to 1 d.p.), giving a half-unit tolerance of ±0.05 cm.",
)

#formula-box("Master Error & Bounds Equations")[
  1. *Lower & Upper Bounds* (measured to nearest unit $u$):
     $ x_("min") = x - frac(u, 2), quad x_("max") = x + frac(u, 2) quad (x_("min") <= x_("true") < x_("max")) $
  2. *Absolute Error:* $E_("abs") = |"Measured (Wrong) Value" - "Actual (True) Value"|$.
  3. *Relative Error:* $E_("rel") = frac(|"Measured" - "Actual"|, "Actual")$.
  4. *Percentage Error:*
     $ "Percentage Error" = frac(|"Measured Value" - "Actual Value"|, "Actual Value") times 100% $
  5. *Maximum Percentage Error of a Single Rounded Measurement $x$:*
     $ "Max % Error" = frac(u / 2, x) times 100% $
  6. *Propagation of Bounds Across Arithmetic Operations ($X, Y > 0$):*
     - $(X + Y)_("max") = X_("max") + Y_("max")$, #h(8pt) $(X + Y)_("min") = X_("min") + Y_("min")$
     - $(X - Y)_("max") = X_("max") - Y_("min")$, #h(8pt) $(X - Y)_("min") = X_("min") - Y_("max")$
     - $(X Y)_("max") = X_("max") Y_("max")$, #h(18pt) $(X Y)_("min") = X_("min") Y_("min")$
     - $(X / Y)_("max") = X_("max") / Y_("min")$, #h(16pt) $(X / Y)_("min") = X_("min") / Y_("max")$
]

#trap-box("Reverse Percentage Error & Subtraction/Division Bounds")[
  1. *Reverse Actual-Value Trap:* _"A student measured a line as $19.8" cm"$, making an underestimate error of $10%$. Find the actual length."_
     - *WRONG:* Adding $10%$ of $19.8$ ($19.8 + 1.98 = 21.78" cm"$)! Why? Because the $10%$ error is $10%$ of the *Actual Length $L$*, NOT $10%$ of $19.8$!
     - *CORRECT:* $(100% - 10%) L = 19.8 arrow.r.double 0.90 L = 19.8 arrow.r.double L = frac(198, 9) = bold(22.0" cm")$!
  2. *Maximizing a Difference or Quotient:* To make $X - Y$ or $X / Y$ as *large* as possible, make the first/top quantity as *LARGE* as possible ($X_("max")$) and the subtracted/denominator quantity as *SMALL* as possible ($Y_("min")$)!
]

// ============================================================================
// GRADED WORKED EXAMPLES (3.1 – 3.22)
// ============================================================================
== 3.6 Graded Step-by-Step Worked Examples

#worked-example(
  "3.1",
  "Finding Both HCF and LCM via Prime-Power Factorization",
  tier: "FOUNDATION",
  [Find the Highest Common Factor (HCF) and Lowest Common Multiple (LCM) of $72$, $108$, and $180$.],
  [
    *Step 1 — Express each integer in prime-power form:*
    - $72 = 8 times 9 = 2^3 times 3^2 times 5^0$
    - $108 = 4 times 27 = 2^2 times 3^3 times 5^0$
    - $180 = 4 times 9 times 5 = 2^2 times 3^2 times 5^1$

    *Step 2 — Apply minimum exponents for HCF and maximum exponents for LCM:*
    $ "HCF" = 2^(min(3,2,2)) times 3^(min(2,3,2)) times 5^(min(0,0,1)) = 2^2 times 3^2 times 5^0 = 4 times 9 = bold(36) $
    $ "LCM" = 2^(max(3,2,2)) times 3^(max(2,3,2)) times 5^(max(0,0,1)) = 2^3 times 3^3 times 5^1 = 8 times 27 times 5 = bold(1080) $
    *Final Answers:* $"HCF" = bold(36)$, $"LCM" = bold(1080)$.
  ],
)

#worked-example(
  "3.2",
  "The HCF × LCM = A × B Identity",
  tier: "FOUNDATION",
  source: "UTME Past Paper",
  [The HCF and LCM of two positive integers are $18$ and $630$ respectively. If one of the integers is $90$, find the other integer.],
  [
    *Step 1 — Apply $"HCF"(A, B) times "LCM"(A, B) = A times B$:*
    Let the unknown integer be $B$. Substituting $A = 90$, $"HCF" = 18$, and $"LCM" = 630$:
    $ 90 times B = 18 times 630 $

    *Step 2 — Cancel cleanly before multiplying:*
    Divide both sides by $90$ (notice $630 div 90 = 7$!):
    $ B = frac(18 times 630, 90) = 18 times 7 = bold(126) $
    *Final Answer:* $bold(126)$.
  ],
)

#worked-example(
  "3.3",
  "Synchronising Periodic Events Using LCM",
  tier: "UTME STANDARD",
  [Three traffic lights at a junction flash every $24$ seconds, $36$ seconds, and $40$ seconds respectively. If they all flash simultaneously at $8:00" a.m."$, at what time will they next flash together?],
  [
    *Step 1 — Prime-factorize each interval:*
    $24 = 2^3 times 3$, #h(8pt) $36 = 2^2 times 3^2$, #h(8pt) $40 = 2^3 times 5$.

    *Step 2 — Find the LCM in seconds:*
    $ "LCM" = 2^3 times 3^2 times 5 = 8 times 9 times 5 = 360 "seconds" $

    *Step 3 — Convert seconds to minutes and add to $8:00" a.m."$:*
    $360 div 60 = 6$ minutes. Adding $6$ minutes to $8:00" a.m."$ gives *$8:06" a.m."$*.
    *Final Answer:* *8:06 a.m.*
  ],
)

#worked-example(
  "3.4",
  "BODMAS Fraction Simplification Involving 'Of' Before Division",
  tier: "UTME STANDARD",
  source: "JAMB Classic Trap",
  [Simplify $2 frac(1, 4) div frac(3, 4) "of" 1 frac(1, 2) - frac(5, 6)$.],
  [
    *Step 1 — Convert mixed numbers to improper fractions:*
    $ frac(9, 4) div frac(3, 4) "of" frac(3, 2) - frac(5, 6) $

    *Step 2 — Evaluate 'of' FIRST (before division!):*
    $ frac(3, 4) "of" frac(3, 2) = frac(3, 4) times frac(3, 2) = frac(9, 8) $

    *Step 3 — Perform division next:*
    $ frac(9, 4) div frac(9, 8) = frac(9, 4) times frac(8, 9) = 2 $

    *Step 4 — Perform subtraction last:*
    $ 2 - frac(5, 6) = frac(12 - 5, 6) = frac(7, 6) = bold(1 frac(1, 6)) $
    *Final Answer:* $bold(1 frac(1, 6))$.
  ],
)

#worked-example(
  "3.5",
  "Avoiding the Subtraction-Before-Addition Sign Trap",
  tier: "FOUNDATION",
  [Evaluate $3 frac(1, 2) - 1 frac(2, 3) + 1 frac(1, 4)$.],
  [
    *Step 1 — Convert to improper fractions:*
    $ frac(7, 2) - frac(5, 3) + frac(5, 4) $

    *Step 2 — Place ALL terms over $"LCM"(2, 3, 4) = 12$ preserving each term's exact sign:*
    $ = frac(7(6) - 5(4) + 5(3), 12) = frac(42 - 20 + 15, 12) = frac(37, 12) = bold(3 frac(1, 12)) $
    *Final Answer:* $bold(3 frac(1, 12))$.
  ],
)

#worked-example(
  "3.6",
  "Two-Story Complex Vulgar Fraction",
  tier: "UTME STANDARD",
  source: "JAMB 2014 Type",
  [Simplify $frac(frac(2, 3) - frac(1, 4), frac(3, 5) + frac(1, 2) "of" frac(1, 3))$.],
  [
    *Step 1 — Simplify the numerator independently:*
    $ frac(2, 3) - frac(1, 4) = frac(8 - 3, 12) = frac(5, 12) $

    *Step 2 — Simplify the denominator independently (evaluating 'of' first):*
    $ frac(1, 2) "of" frac(1, 3) = frac(1, 6) quad arrow.r.double quad frac(3, 5) + frac(1, 6) = frac(18 + 5, 30) = frac(23, 30) $

    *Step 3 — Divide numerator by denominator:*
    $ frac(5, 12) div frac(23, 30) = frac(5, 12) times frac(30, 23) = frac(5, 2) times frac(5, 23) = bold(frac(25, 46)) $
    *Final Answer:* $bold(frac(25, 46))$.
  ],
)

#worked-example(
  "3.7",
  "Three-Layer Continued Fraction",
  tier: "UTME STANDARD",
  [Simplify $1 + frac(1, 2 + frac(1, 3 + frac(1, 4)))$ as a mixed fraction.],
  [
    *Step 1 — Collapse from the bottom-most denominator upward:*
    - Bottom layer: $3 + frac(1, 4) = frac(13, 4)$.
    - Reciprocal: $frac(1, 13 / 4) = frac(4, 13)$.
    - Middle layer: $2 + frac(4, 13) = frac(26 + 4, 13) = frac(30, 13)$.
    - Reciprocal: $frac(1, 30 / 13) = frac(13, 30)$.
    - Top layer: $1 + frac(13, 30) = bold(1 frac(13, 30))$.
    *Final Answer:* $bold(1 frac(13, 30))$ (or $frac(43, 30)$).
  ],
)

#worked-example(
  "3.8",
  "Ordering Vulgar Fractions in Ascending Order",
  tier: "FOUNDATION",
  [Arrange the fractions $frac(5, 8), frac(7, 12), frac(2, 3), frac(11, 16)$ in ascending order of magnitude.],
  [
    *Step 1 — Find the LCM of all denominators ($8, 12, 3, 16$):*
    $"LCM"(8, 12, 3, 16) = 48$.

    *Step 2 — Express every fraction with denominator $48$:*
    $ frac(5, 8) = frac(30, 48), quad frac(7, 12) = frac(28, 48), quad frac(2, 3) = frac(32, 48), quad frac(11, 16) = frac(33, 48) $

    *Step 3 — Sort numerators from smallest ($28$) to largest ($33$):*
    $ frac(28, 48) < frac(30, 48) < frac(32, 48) < frac(33, 48) quad arrow.r.double quad bold(frac(7, 12) < frac(5, 8) < frac(2, 3) < frac(11, 16)) $
    *Final Answer:* $bold(frac(7, 12)"," frac(5, 8)"," frac(2, 3)"," frac(11, 16))$.
  ],
)

#worked-example(
  "3.9",
  "Fraction-of-the-Remainder Salary Word Problem",
  tier: "UTME STANDARD",
  source: "JAMB Favourite",
  [A civil servant spends $frac(1, 4)$ of his monthly salary on rent, $frac(2, 5)$ of the *remainder* on food, and saves the remaining ₦$54","000$. Calculate his monthly salary.],
  [
    *Step 1 — Use the Multiplicative Survival Method:*
    - Fraction remaining after spending $1/4$ on rent $= 1 - frac(1, 4) = frac(3, 4)$.
    - Fraction remaining after spending $2/5$ *of that remainder* on food $= (1 - frac(2, 5)) times frac(3, 4) = frac(3, 5) times frac(3, 4) = frac(9, 20)$.

    *Step 2 — Equate the surviving fraction of salary $S$ to ₦$54","000$:*
    $ frac(9, 20) S = 54","000 quad arrow.r.double quad S = frac(54","000 times 20, 9) = 6","000 times 20 = bold("₦"120","000) $
    *Final Answer:* *₦120,000*.
  ],
)

#worked-example(
  "3.10",
  "Converting Pure and Mixed Recurring Decimals to Vulgar Fractions",
  tier: "UTME STANDARD",
  [Express in lowest terms: (a) $0.dot(2)dot(7)$ ($0.272727 dots$); #h(10pt) (b) $0.2dot(4)dot(5)$ ($0.2454545 dots$).],
  [
    *Part (a) — Algebraic & Formula Check:*
    Let $x = 0.272727 dots$. Multiply by $100$: $100x = 27.2727 dots$. Subtract:
    $ 99x = 27 quad arrow.r.double quad x = frac(27, 99) = bold(frac(3, 11)) $

    *Part (b) — Mixed Recurring Decimal:*
    Let $y = 0.2454545 dots$. Multiply by $10$ ($10y = 2.4545 dots$) and by $1000$ ($1000y = 245.4545 dots$). Subtract:
    $ 990y = 245 - 2 = 243 quad arrow.r.double quad y = frac(243, 990) $
    Divide numerator and denominator by $9$: $243 div 9 = 27$ and $990 div 9 = 110$, giving $bold(frac(27, 110))$.
    *Final Answers:* (a) $bold(frac(3, 11))$; (b) $bold(frac(27, 110))$.
  ],
)

#worked-example(
  "3.11",
  "Testing Which Rational Numbers Yield Terminating Decimals",
  tier: "UTME STANDARD",
  [Without performing long division, determine which of $frac(7, 24), frac(13, 40), frac(11, 35), frac(21, 90)$ produces a terminating decimal, and state how many decimal places it has.],
  [
    *Step 1 — Reduce each fraction to lowest terms and factorize its denominator:*
    - $frac(7, 24)$: already reduced; $24 = 2^3 times 3$ (contains prime $3 arrow.r$ *recurring*).
    - $frac(13, 40)$: already reduced; $40 = 2^3 times 5^1$ (primes $2$ and $5$ ONLY $arrow.r$ *terminates*!).
    - $frac(11, 35)$: already reduced; $35 = 5 times 7$ (contains prime $7 arrow.r$ *recurring*).
    - $frac(21, 90) = frac(7, 30)$: $30 = 2 times 3 times 5$ (still contains prime $3 arrow.r$ *recurring*).

    *Step 2 — Count decimal places of $13 / 40$:*
    Number of d.p. $= max(3, 1) = 3$ decimal places. Indeed, $frac(13 times 25, 40 times 25) = frac(325, 1000) = 0.325$.
    *Final Answer:* *$frac(13, 40)$*, terminating in *$3$ decimal places* ($0.325$).
  ],
)

#worked-example(
  "3.12",
  "Non-Calculator Decimal Multiplication & Division",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Evaluate $frac(0.048 times 0.35, 0.014 times 0.16)$ without using a calculator.],
  [
    *Step 1 — Count decimal places in numerator and denominator:*
    - Numerator: $0.048$ ($3$ d.p.) $+ 0.35$ ($2$ d.p.) $= 5$ d.p. total.
    - Denominator: $0.014$ ($3$ d.p.) $+ 0.16$ ($2$ d.p.) $= 5$ d.p. total.

    *Step 2 — Multiply top and bottom by $10^5$ and cancel common factors:*
    $ frac(48 times 35, 14 times 16) = frac((48 div 16) times (35 div 7), (14 div 7) times (16 div 16)) = frac(3 times 5, 2 times 1) = frac(15, 2) = bold(7.5) $
    *Final Answer:* $bold(7.5)$.
  ],
)

#worked-example(
  "3.13",
  "Significant Figures vs. Decimal Places on Small Decimals",
  tier: "FOUNDATION",
  [Approximate $0.005984$ correct to: (a) $1$ s.f.; (b) $2$ s.f.; (c) $3$ s.f.; and (d) $3$ d.p.],
  [
    The leading zeros $0.00$ are *not* significant; significant digits begin at $5$:
    - *(a) $1$ s.f.:* First s.f. is $5$, next digit is $9 >= 5$, so round up to *$0.006$*.
    - *(b) $2$ s.f.:* Second s.f. is $9$, next digit is $8 >= 5$, so $59$ rounds up to $60$! Keep the trailing significant zero: *$0.0060$*.
    - *(c) $3$ s.f.:* Third s.f. is $8$, next digit is $4 < 5$, so keep $598$: *$0.00598$*.
    - *(d) $3$ d.p.:* Third digit after the decimal point is $5$, followed by $9 >= 5$: *$0.006$*.
    *Final Answers:* (a) $bold(0.006)$; (b) $bold(0.0060)$; (c) $bold(0.00598)$; (d) $bold(0.006)$.
  ],
)

#worked-example(
  "3.14",
  "Significant Figures on Large Integers",
  tier: "FOUNDATION",
  [Round $398","642$ correct to: (a) $2$ significant figures; (b) $3$ significant figures.],
  [
    - *(a) $2$ s.f.:* The first two digits are $39$, followed by $8 >= 5$. Rounding $39$ up gives $40$, and replacing the $4$ remaining integer places with zeros gives *$400","000$*.
    - *(b) $3$ s.f.:* The first three digits are $398$, followed by $6 >= 5$. Rounding $398$ up gives $399$, followed by $3$ place-holder zeros: *$399","000$*.
    *Final Answers:* (a) $bold(400","000)$; (b) $bold(399","000)$.
  ],
)

#worked-example(
  "3.15",
  "Direct Percentage Error Calculation",
  tier: "FOUNDATION",
  source: "UTME Past Paper",
  [The actual length of a laboratory bench is $1.25" m"$, but a student measures it as $1.20" m"$. Find the percentage error in the measurement.],
  [
    *Step 1 — Compute the absolute error:*
    $ E_("abs") = |1.20 - 1.25| = 0.05" m" $

    *Step 2 — Divide by the ACTUAL length ($1.25" m"$) and multiply by $100%$:*
    $ "Percentage Error" = frac(0.05, 1.25) times 100% = frac(5, 125) times 100% = frac(1, 25) times 100% = bold(4%) $
    *Final Answer:* $bold(4%)$.
  ],
)

#worked-example(
  "3.16",
  "Reverse Percentage Error — Finding the True Value",
  tier: "UTME STANDARD",
  source: "JAMB Classic",
  [A student measured the length of a rope as $19.8" cm"$. If this measurement underestimated the true length by $10%$, calculate the actual length of the rope.],
  [
    *Step 1 — Express the measured value as a percentage of the true length $L$:*
    An underestimate of $10%$ means the measured value equals $(100% - 10%) = 90%$ of $L$:
    $ 0.90 L = 19.8 $

    *Step 2 — Solve for $L$:*
    $ L = frac(19.8, 0.90) = frac(198, 9) = bold(22.0" cm") $
    *Check:* $|19.8 - 22.0| / 22.0 times 100% = 2.2 / 22.0 times 100% = 10%$ ✓.
    *Final Answer:* $bold(22.0" cm")$.
  ],
)

#worked-example(
  "3.17",
  "Maximum Percentage Error of a Rounded Measurement",
  tier: "UTME STANDARD",
  [The length of a pencil is recorded as $25" cm"$, correct to the nearest centimetre. Calculate the maximum possible percentage error.],
  [
    *Step 1 — Determine the half-unit tolerance:*
    Precision unit $u = 1" cm" arrow.r$ maximum absolute error $= u / 2 = 0.5" cm"$.

    *Step 2 — Compute maximum percentage error relative to $25" cm"$:*
    $ "Max % Error" = frac(0.5, 25) times 100% = 0.5 times 4% = bold(2.0%) $
    *Final Answer:* $bold(2.0%)$.
  ],
)

#worked-example(
  "3.18",
  "Lower and Upper Bounds of Rectangular Area",
  tier: "UTME STANDARD",
  [A rectangular metal plate has dimensions $8" cm"$ by $5" cm"$, each measured correct to the nearest centimetre. Find the minimum and maximum possible values of its area.],
  [
    *Step 1 — Write bounds for length $L$ and width $W$ ($$plus.minus$ 0.5" cm"$):*
    - $7.5" cm" <= L < 8.5" cm"$
    - $4.5" cm" <= W < 5.5" cm"$

    *Step 2 — Compute minimum and maximum area:*
    $ A_("min") = L_("min") times W_("min") = 7.5 times 4.5 = frac(15, 2) times frac(9, 2) = frac(135, 4) = bold(33.75" cm"^2) $
    $ A_("max") = L_("max") times W_("max") = 8.5 times 5.5 = frac(17, 2) times frac(11, 2) = frac(187, 4) = bold(46.75" cm"^2) $
    *Final Answer:* Minimum area $= bold(33.75" cm"^2)$, Maximum area $= bold(46.75" cm"^2)$.
  ],
)

#worked-example(
  "3.19",
  "Percentage Error from a Mistaken Arithmetic Operation",
  tier: "JAMB CHALLENGE",
  source: "JAMB Favourite",
  [Instead of dividing a positive number by $frac(3, 5)$, a candidate mistakenly multiplied the number by $frac(3, 5)$. Calculate the percentage error in his result.],
  [
    *Step 1 — Express both the Actual (True) result and Wrong result in terms of the number $x > 0$:*
    - *Actual (intended) value:* $x div frac(3, 5) = frac(5, 3) x$
    - *Wrong (mistaken) value:* $x times frac(3, 5) = frac(3, 5) x$

    *Step 2 — Find the absolute error:*
    $ E_("abs") = |frac(3, 5) x - frac(5, 3) x| = (frac(25 - 9, 15)) x = frac(16, 15) x $

    *Step 3 — Divide by the ACTUAL value ($frac(5, 3) x$) and multiply by $100%$:*
    Notice $x$ cancels out completely!
    $ "Percentage Error" = frac(frac(16, 15) x, frac(5, 3) x) times 100% = frac(16, 15) times frac(3, 5) times 100% = frac(16, 25) times 100% = 16 times 4% = bold(64%) $
    *Final Answer:* $bold(64%)$.
  ],
)

#worked-example(
  "3.20",
  "Compounded Percentage Error in Area",
  tier: "JAMB CHALLENGE",
  [In measuring a rectangular plot, the length is overestimated by $10%$ while the width is underestimated by $10%$. Find the percentage error in the calculated area.],
  [
    *Step 1 — Let true dimensions be $L$ and $W$ (so true area $A_("true") = L W$):*
    - Measured length $L' = (1 + 0.10) L = 1.10 L$
    - Measured width $W' = (1 - 0.10) W = 0.90 W$

    *Step 2 — Compute the measured area $A'$:*
    $ A' = (1.10 L)(0.90 W) = 0.99 L W $
    *(Notice $+10%$ and $-10%$ do NOT cancel out to $0%$!)*

    *Step 3 — Compute percentage error:*
    $ "Percentage Error" = frac(|0.99 L W - 1.00 L W|, 1.00 L W) times 100% = 0.01 times 100% = bold(1%) quad ("an underestimate of " 1%) $
    *Final Answer:* $bold(1%)$.
  ],
)

#worked-example(
  "3.21",
  "Fractional Tank Capacity Problem",
  tier: "UTME STANDARD",
  [A water storage tank is $frac(1, 3)$ full. When $35$ litres of water are poured into it, the tank becomes $frac(5, 6)$ full. What is the total capacity of the tank when completely full?],
  [
    *Step 1 — Find the fraction of total capacity $C$ represented by $35$ litres:*
    $ (frac(5, 6) - frac(1, 3)) C = 35 quad arrow.r.double quad (frac(5 - 2, 6)) C = 35 quad arrow.r.double quad frac(1, 2) C = 35 $

    *Step 2 — Solve for $C$:*
    $ C = 35 times 2 = bold(70 "litres") $
    *Final Answer:* $bold(70" litres")$.
  ],
)

#worked-example(
  "3.22",
  "Largest Square Tile Without Cutting (HCF Application)",
  tier: "UTME STANDARD",
  [A rectangular hall measures $5.4" m"$ long by $4.2" m"$ wide. Find the side length (in cm) of the *largest* identical square tiles that can pave the entire floor exactly without cutting any tile, and how many such tiles are needed.],
  [
    *Step 1 — Convert dimensions to centimetres to work in integers:*
    $5.4" m" = 540" cm"$ and $4.2" m" = 420" cm"$.

    *Step 2 — Compute $"HCF"(540, 420)$:*
    - $540 = 60 times 9$
    - $420 = 60 times 7$
    Since $gcd(9, 7) = 1$, $"HCF"(540, 420) = bold(60" cm")$.

    *Step 3 — Count total tiles required:*
    $"Number of tiles" = frac(540, 60) times frac(420, 60) = 9 times 7 = bold(63" tiles")$.
    *Final Answers:* Tile side $= bold(60" cm")$; Number of tiles $= bold(63)$.
  ],
)

// ============================================================================
// SECTION 3.7 RAPID-REVISION SUMMARY TABLE
// ============================================================================
== 3.7 Chapter 3 Rapid-Revision Checklist

#table(
  columns: (1.2fr, 2.2fr, 1.6fr),
  inset: 7.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Subtopic],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Master Rule / Formula],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Exam Watchpoint],

  [*HCF & LCM*],
  [HCF $=$ min prime powers; LCM $=$ max prime powers; $"HCF" times "LCM" = A B$.],
  [Product rule $A B$ works for *two* integers only!],

  [*BODMAS on Fractions*],
  [Brackets $arrow.r$ *Of* $arrow.r$ Div/Mult (left-to-right) $arrow.r$ Add/Sub (left-to-right).],
  [*Always* evaluate `"of"` BEFORE `÷`! Keep signs intact in $A - B + C$.],

  [*Recurring Decimals*],
  [$0.overline(B) = B / 99 dots 9$; #h(6pt) $0.A overline(B) = (A B - A) / (99 dots 9 00 dots 0)$.],
  [Reduce $p / q$ first before testing $q = 2^a 5^b$ for termination!],

  [*Significant Figures*],
  [Start counting at the *first non-zero digit* moving left to right.],
  [Retain trailing decimal zeros ($0.00410$) & whole-number zeros ($590","000$).],

  [*Percentage Error*],
  [$frac(|"Measured" - "Actual"|, "Actual") times 100%$. Bounds: $x plus.minus u / 2$.],
  [Denominator is *ALWAYS* the Actual (True) value!],
)

// ============================================================================
// END-OF-CHAPTER JAMB UTME PRACTICE DRILL (40 QUESTIONS)
// ============================================================================
== 3.8 JAMB UTME Practice Drill — Chapter 3 (40 Questions)

Attempt all 40 questions without a calculator (target time: *34 minutes*).

#mcq(1, [Find the Highest Common Factor (HCF) of $84$, $126$, and $210$.], [$42$], [$21$], [$14$], [$84$])

#mcq(2, [Calculate the Lowest Common Multiple (LCM) of $18$, $24$, and $30$.], [$180$], [$360$], [$720$], [$240$])

#mcq(3, [The HCF and LCM of two numbers are $12$ and $420$ respectively. If one of the numbers is $60$, find the other number.], [$70$], [$72$], [$84$], [$96$])

#mcq(4, [Simplify $frac(5, 6) + frac(2, 3) times frac(3, 4) - frac(1, 2)$.], [$frac(1, 2)$], [$frac(2, 3)$], [$frac(3, 4)$], [$frac(5, 6)$])

#mcq(5, [Evaluate $3 frac(3, 5) div frac(3, 5) "of" 2$.], [$3$], [$12$], [$1 frac(4, 5)$], [$6$])

#mcq(6, [Simplify $2 frac(1, 2) - 1 frac(1, 3) + frac(3, 4)$.], [$frac(5, 12)$], [$1 frac(11, 12)$], [$1 frac(5, 12)$], [$2 frac(1, 12)$])

#mcq(7, [Evaluate $frac(frac(3, 4) - frac(1, 3), frac(1, 2) + frac(1, 3))$.], [$frac(5, 12)$], [$frac(25, 72)$], [$frac(1, 2)$], [$frac(3, 5)$])

#mcq(8, [Simplify the continued fraction $2 - frac(1, 1 + frac(1, 2 + frac(1, 3)))$.], [$frac(7, 10)$], [$1 frac(7, 10)$], [$1 frac(1, 3)$], [$1 frac(3, 10)$])

#mcq(9, [Which of the following lists arranges $frac(2, 3), frac(5, 9), frac(7, 12), frac(3, 4)$ in *ascending* order?], [$frac(5, 9), frac(7, 12), frac(2, 3), frac(3, 4)$], [$frac(7, 12), frac(5, 9), frac(2, 3), frac(3, 4)$], [$frac(5, 9), frac(2, 3), frac(7, 12), frac(3, 4)$], [$frac(3, 4), frac(2, 3), frac(7, 12), frac(5, 9)$])

#mcq(10, [A student spent $frac(2, 5)$ of her pocket money on textbooks and $frac(1, 3)$ of the *remainder* on transport. If she had ₦$1","600$ left, how much did she have initially?], [₦$6","000$], [₦$4","000$], [₦$3","600$], [₦$4","800$])

#mcq(11, [An oil drum is $frac(2, 5)$ full. After $18$ litres are drawn out, it remains $frac(1, 4)$ full. What is the full capacity of the drum?], [$90$ L], [$108$ L], [$120$ L], [$144$ L])

#mcq(12, [Express the pure recurring decimal $0.363636 dots$ as a vulgar fraction in lowest terms.], [$frac(9, 25)$], [$frac(4, 9)$], [$frac(12, 33)$], [$frac(4, 11)$])

#mcq(13, [Convert the mixed recurring decimal $0.16666 dots$ ($0.1dot(6)$) into a simple fraction.], [$frac(1, 6)$], [$frac(4, 25)$], [$frac(16, 99)$], [$frac(3, 16)$])

#mcq(14, [Express $1.23333 dots$ ($1.2dot(3)$) as a mixed fraction in lowest terms.], [$1 frac(23, 99)$], [$1 frac(7, 30)$], [$1 frac(23, 90)$], [$1 frac(1, 4)$])

#mcq(15, [Which of the following fractions converts into a *terminating* decimal?], [$frac(11, 30)$], [$frac(17, 60)$], [$frac(21, 120)$], [$frac(15, 70)$])

#mcq(16, [Without using tables or a calculator, evaluate $frac(0.072 times 0.25, 0.018 times 0.05)$.], [$2$], [$0.2$], [$200$], [$20$])

#mcq(17, [Evaluate $(0.36)^2 - (0.14)^2$ exactly.], [$0.11$], [$0.22$], [$0.0484$], [$1.10$])

#mcq(18, [Correct $0.004096$ to *three significant figures*.], [$0.004$], [$0.00410$], [$0.0041$], [$0.00409$])

#mcq(19, [Correct $0.004096$ to *three decimal places*.], [$0.00410$], [$0.005$], [$0.004$], [$0.0041$])

#mcq(20, [Express $589","614$ correct to *two significant figures*.], [$59$], [$580","000$], [$590$], [$590","000$])

#mcq(21, [Round $79.964$ correct to *one decimal place*.], [$80.0$], [$80$], [$79.9$], [$79.0$])

#mcq(22, [How many significant figures are there in the decimal numeral $0.02050$?], [$3$], [$4$], [$5$], [$2$])

#mcq(23, [Evaluate $14.382 + 5.749$ and state your answer correct to *two significant figures*.], [$20.13$], [$20.1$], [$20$], [$21$])

#mcq(24, [A parcel of actual mass $2.50" kg"$ was weighed on a faulty scale as $2.65" kg"$. Find the percentage error.], [$5.66%$], [$6.25%$], [$15%$], [$6.0%$])

#mcq(25, [A boy measured a $4.0" m"$ electric pole as $4.2" m"$. Find his percentage error.], [$5.0%$], [$4.76%$], [$2.0%$], [$0.5%$])

#mcq(26, [An angle of $60^degree$ is wrongly measured with a protractor as $57^degree$. What is the percentage error?], [$3.0%$], [$5.0%$], [$5.26%$], [$4.5%$])

#mcq(27, [A shopper estimated her grocery bill as ₦$15","400$, which turned out to be an overestimate of $10%$. What was the actual bill?], [₦$13","860$], [₦$14","400$], [₦$14","000$], [₦$16","940$])

#mcq(28, [A carpenter cut a wooden plank to $76" cm"$, making an underestimate error of $5%$. What was the intended length?], [$79.8" cm"$], [$82" cm"$], [$81" cm"$], [$80" cm"$])

#mcq(29, [The length of a textbook is $20" cm"$ correct to the nearest centimetre. Find the maximum percentage error in this measurement.], [$2.5%$], [$5.0%$], [$0.5%$], [$1.25%$])

#mcq(30, [A bag of rice has mass $4.0" kg"$ correct to $1$ decimal place. If its true mass is $m" kg"$, find the range of values of $m$.], [$3.9 <= m < 4.1$], [$3.95 <= m < 4.05$], [$3.5 <= m < 4.5$], [$3.99 <= m < 4.01$])

#mcq(31, [In measuring the side of a square tile of true side $10" cm"$, a mason made an overestimate error of $10%$. What is the percentage error in the calculated *area* of the tile?], [$10%$], [$20%$], [$21%$], [$100%$])

#mcq(32, [A candidate multiplied a positive number by $frac(4, 5)$ instead of dividing it by $frac(4, 5)$. Calculate the percentage error in his answer.], [$20%$], [$25%$], [$56.25%$], [$36%$])

#mcq(33, [Three school bells ring at intervals of $15$, $20$, and $30$ minutes. If they ring together at $9:00" a.m."$, when will they next ring together?], [$10:00" a.m."$], [$9:45" a.m."$], [$10:30" a.m."$], [$11:00" a.m."$])

#mcq(34, [What is the side length of the largest square slab that can pave a courtyard $5.4" m"$ by $4.2" m"$ without cutting any slab?], [$30" cm"$], [$60" cm"$], [$90" cm"$], [$120" cm"$])

#mcq(35, [If $frac(3, 4)$ of a number exceeds $frac(2, 5)$ of the same number by $14$, find the number.], [$28$], [$35$], [$40$], [$56$])

#mcq(36, [Simplify $frac(1 frac(2, 3) + 2 frac(1, 4), 3 frac(1, 2) - 1 frac(5, 12))$.], [$1 frac(11, 25)$], [$2 frac(3, 25)$], [$frac(25, 47)$], [$1 frac(22, 25)$])

#mcq(37, [A rectangle measures $12" cm"$ by $8" cm"$, each correct to the nearest cm. Find the *minimum* possible perimeter of the rectangle.], [$38.0" cm"$], [$39.0" cm"$], [$39.5" cm"$], [$40.0" cm"$])

#mcq(38, [Express $0.dot(4)dot(5) + 0.dot(1)dot(8)$ as a single vulgar fraction in lowest terms.], [$frac(63, 100)$], [$frac(7, 11)$], [$frac(8, 11)$], [$frac(7, 9)$])

#mcq(39, [Find the smallest positive integer $k$ by which $252$ must be multiplied so that the product is a perfect square.], [$2$], [$3$], [$7$], [$14$])

#mcq(40, [Two lengths $X = 30" cm"$ and $Y = 12" cm"$ are each measured to the nearest centimetre. What is the upper bound (supremum) of $X - Y$?], [$18.0" cm"$], [$18.5" cm"$], [$17.0" cm"$], [$19.0" cm"$])

// ============================================================================
// ANSWER KEY & FULL STEP-BY-STEP SOLUTIONS
// ============================================================================
== 3.9 Quick Answer Key & Complete Worked Solutions — Chapter 3

#answer-key-grid((
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
))

#sol-item(1, "A")[
  Prime factorize: $84 = 2^2 times 3 times 7$, $126 = 2 times 3^2 times 7$, $210 = 2 times 3 times 5 times 7$. Taking lowest common powers gives $"HCF" = 2^1 times 3^1 times 7^1 = 42$.
]

#sol-item(2, "B")[
  $18 = 2 times 3^2$, $24 = 2^3 times 3$, $30 = 2 times 3 times 5$. Taking highest powers gives $"LCM" = 2^3 times 3^2 times 5 = 8 times 9 times 5 = 360$.
]

#sol-item(3, "C")[
  Using $"HCF" times "LCM" = A times B$:
  $ 60 times B = 12 times 420 quad arrow.r.double quad B = frac(12 times 420, 60) = 12 times 7 = 84 $
]

#sol-item(4, "D")[
  Multiply first: $frac(2, 3) times frac(3, 4) = frac(1, 2)$. Then evaluate left to right:
  $ frac(5, 6) + frac(1, 2) - frac(1, 2) = frac(5, 6) $
]

#sol-item(5, "A")[
  Evaluate `"of"` *before* division! $frac(3, 5) "of" 2 = frac(6, 5)$. Then divide:
  $ 3 frac(3, 5) div frac(6, 5) = frac(18, 5) times frac(5, 6) = 3 $
]

#sol-item(6, "B")[
  Convert to improper fractions over $"LCM"(2, 3, 4) = 12$:
  $ frac(5, 2) - frac(4, 3) + frac(3, 4) = frac(30 - 16 + 9, 12) = frac(23, 12) = 1 frac(11, 12) $
]

#sol-item(7, "C")[
  Numerator: $frac(3, 4) - frac(1, 3) = frac(5, 12)$. Denominator: $frac(1, 2) + frac(1, 3) = frac(5, 6)$. Divide:
  $ frac(5, 12) div frac(5, 6) = frac(5, 12) times frac(6, 5) = frac(1, 2) $
]

#sol-item(8, "D")[
  Work upward from the bottom: $2 + frac(1, 3) = frac(7, 3) arrow.r 1 + frac(3, 7) = frac(10, 7) arrow.r 2 - frac(7, 10) = frac(13, 10) = 1 frac(3, 10)$.
]

#sol-item(9, "A")[
  Express over $"LCM"(3, 9, 12, 4) = 36$:
  $ frac(5, 9) = frac(20, 36), quad frac(7, 12) = frac(21, 36), quad frac(2, 3) = frac(24, 36), quad frac(3, 4) = frac(27, 36) $
  Hence $frac(5, 9) < frac(7, 12) < frac(2, 3) < frac(3, 4)$.
]

#sol-item(10, "B")[
  Surviving fraction $= (1 - frac(2, 5))(1 - frac(1, 3)) = frac(3, 5) times frac(2, 3) = frac(2, 5)$.
  $ frac(2, 5) M = 1","600 quad arrow.r.double quad M = frac(1","600 times 5, 2) = "₦"4","000 $
]

#sol-item(11, "C")[
  $(frac(2, 5) - frac(1, 4)) C = 18 arrow.r.double frac(8 - 5, 20) C = 18 arrow.r.double frac(3, 20) C = 18 arrow.r.double C = frac(18 times 20, 3) = 120" L"$.
]

#sol-item(12, "D")[
  $0.dot(3)dot(6) = frac(36, 99) = frac(36 div 9, 99 div 9) = frac(4, 11)$.
]

#sol-item(13, "A")[
  $0.1dot(6) = frac(16 - 1, 90) = frac(15, 90) = frac(1, 6)$.
]

#sol-item(14, "B")[
  Separate integer part: $1 + 0.2dot(3) = 1 + frac(23 - 2, 90) = 1 + frac(21, 90) = 1 frac(7, 30)$.
]

#sol-item(15, "C")[
  Reduce each fraction first! $frac(21, 120) = frac(7, 40) = frac(7, 2^3 times 5^1)$, whose reduced denominator has prime factors $2$ and $5$ only ($0.175$). The others retain prime factors $3$ or $7$.
]

#sol-item(16, "D")[
  Numerator has $3 + 2 = 5$ d.p.; denominator has $3 + 2 = 5$ d.p. Multiply top and bottom by $10^5$:
  $ frac(72 times 25, 18 times 5) = frac(72, 18) times frac(25, 5) = 4 times 5 = 20 $
]

#sol-item(17, "A")[
  Apply difference of two squares: $(0.36 - 0.14)(0.36 + 0.14) = 0.22 times 0.50 = 0.11$.
]

#sol-item(18, "B")[
  Significant digits start at $4$: first three are $4, 0, 9$, followed by $6 >= 5$. Rounding $409$ up gives $410$, so we MUST retain the trailing zero: $0.00410$.
]

#sol-item(19, "C")[
  Count $3$ places after the decimal point: $0.004|096$. Since the $4$th decimal digit is $0 < 5$, it rounds to $0.004$.
]

#sol-item(20, "D")[
  First two digits are $58$, followed by $9 >= 5$, rounding up to $59$ with four place-holder zeros: $590","000$.
]

#sol-item(21, "A")[
  First decimal digit is $9$, followed by $6 >= 5$, rolling $79.9$ up to $80.0$ (retain `.0` to show $1$ d.p.!).
]

#sol-item(22, "B")[
  Ignore leading zeros `0.0`; count `2`, `0` (captive), `5`, and `0` (trailing decimal zero) $= 4$ significant figures.
]

#sol-item(23, "C")[
  Add exact values FIRST before rounding: $14.382 + 5.749 = 20.131$. Correct to $2$ s.f. is $20$.
]

#sol-item(24, "D")[
  $"% Error" = frac(|2.65 - 2.50|, 2.50) times 100% = frac(0.15, 2.50) times 100% = frac(15, 2.5)% = 6.0%$.
]

#sol-item(25, "A")[
  $"% Error" = frac(|4.2 - 4.0|, 4.0) times 100% = frac(0.2, 4.0) times 100% = 5.0%$.
]

#sol-item(26, "B")[
  $"% Error" = frac(|57 - 60|, 60) times 100% = frac(3, 60) times 100% = 5.0%$.
]

#sol-item(27, "C")[
  Overestimate of $10%$ means $1.10 times "Actual" = 15","400 arrow.r.double "Actual" = frac(154","000, 11) = "₦"14","000$.
]

#sol-item(28, "D")[
  Underestimate of $5%$ means $0.95 L = 76 arrow.r.double L = frac(7","600, 95) = 80" cm"$.
]

#sol-item(29, "A")[
  Half-unit tolerance $= 0.5" cm"$. Maximum percentage error $= frac(0.5, 20) times 100% = 2.5%$.
]

#sol-item(30, "B")[
  Precision unit $u = 0.1" kg"$, half-unit $= 0.05" kg"$, so $4.0 - 0.05 <= m < 4.0 + 0.05 arrow.r.double 3.95 <= m < 4.05$.
]

#sol-item(31, "C")[
  True area $= 10^2 = 100" cm"^2$. Measured side $= 1.10(10) = 11" cm"$, so measured area $= 11^2 = 121" cm"^2$.
  $ "% Error in Area" = frac(121 - 100, 100) times 100% = 21% $
]

#sol-item(32, "D")[
  True value $= x div frac(4, 5) = frac(5, 4) x$; Wrong value $= frac(4, 5) x$.
  $ "% Error" = frac(frac(5, 4) x - frac(4, 5) x, frac(5, 4) x) times 100% = frac(9 / 20, 5 / 4) times 100% = frac(9, 25) times 100% = 36% $
]

#sol-item(33, "A")[
  $"LCM"(15, 20, 30) = 60$ minutes $= 1$ hour. Next simultaneous ring is $9:00" a.m." + 1" hr" = 10:00" a.m."$
]

#sol-item(34, "B")[
  Convert to cm: $"HCF"(540" cm", 420" cm") = 60" cm"$.
]

#sol-item(35, "C")[
  $(frac(3, 4) - frac(2, 5)) x = 14 arrow.r.double frac(15 - 8, 20) x = 14 arrow.r.double frac(7, 20) x = 14 arrow.r.double x = 40$.
]

#sol-item(36, "D")[
  Numerator: $frac(5, 3) + frac(9, 4) = frac(47, 12)$. Denominator: $frac(7, 2) - frac(17, 12) = frac(25, 12)$. Quotient $= frac(47 / 12, 25 / 12) = frac(47, 25) = 1 frac(22, 25)$.
]

#sol-item(37, "A")[
  Minimum length $L_("min") = 11.5" cm"$, minimum width $W_("min") = 7.5" cm"$.
  $ P_("min") = 2(11.5 + 7.5) = 2(19.0) = 38.0" cm" $
]

#sol-item(38, "B")[
  $0.dot(4)dot(5) + 0.dot(1)dot(8) = frac(45, 99) + frac(18, 99) = frac(63, 99) = frac(7, 11)$.
]

#sol-item(39, "C")[
  Prime factorize $252$: $252 = 4 times 63 = 2^2 times 3^2 times 7^1$. Only prime $7$ has an odd exponent ($1$), so multiplying by $k = 7$ makes $252 times 7 = 2^2 times 3^2 times 7^2 = 42^2$.
]

#sol-item(40, "D")[
  $29.5 <= X < 30.5$ and $11.5 <= Y < 12.5$. To maximize $X - Y$, take $X_("max") - Y_("min") = 30.5 - 11.5 = 19.0" cm"$.
]
