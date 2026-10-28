#import "template.typ": *

#pagebreak()

#chapter-opener(
  6,
  "Indices & Standard Form",
  subtitle: "Laws of Exponents, Fractional & Negative Powers, Indicial Equations, Disguised Quadratics & Scientific Notation",
  syllabus-ref: "JAMB Syllabus Sec. I • Topics 2(d) & 3(a)",
  utme-weight: "1 – 2 Questions Every Year (100% Frequency)",
)

#focus-radar(
  objectives: (
    "Apply the eight fundamental laws of indices to simplify products, quotients, powers, and radicals.",
    "Evaluate negative and fractional exponents cleanly without a calculator using the Root-Before-Power rule.",
    "Factorize sums and differences of exponential terms such as (2^(n+4) - 2·2^n) / (2·2^(n+3)).",
    "Solve all four UTME classes of indicial equations: common-base, unknown-base, factoring, and disguised quadratics.",
    "Convert between ordinary numbers and Standard Form A × 10^n (1 ≤ A < 10) and perform +, −, ×, ÷, and roots in standard form.",
  ),
  hotspots: (
    "Fractional negative powers of fractions/decimals, e.g. (81/16)^(-3/4) and (0.125)^(-2/3).",
    "Disguised quadratic indicial equations p·a^(2x) + q·a^x + r = 0 (always reject negative roots u = a^x ≤ 0!).",
    "Square roots and cube roots of numbers in standard form when the power of 10 is not divisible by 2 or 3.",
    "Simultaneous exponential equations reducing to 2 × 2 linear systems.",
  ),
  trap-summary: "Three errors ruin otherwise easy marks in Indices: (1) confusing -3^2 = -9 with (-3)^2 = +9; (2) trying to apply product laws to sums like 2^x + 2^y (you MUST factor out the smallest power instead!); and (3) forgetting that u = a^x > 0 for every real x when a > 0, so negative quadratic roots for u give NO real solution!",
)

// ============================================================================
// SECTION 6.1
// ============================================================================
== 6.1 The Eight Fundamental Laws of Indices

When a non-zero real number $a$ (*the base*) is multiplied by itself $n$ times, we write $a^n$, where $n$ is called the *index*, *exponent*, or *power*. Extending $n$ from positive integers to zero, negative integers, and rational fractions $p / q$ yields eight universal laws that hold for all $a, b > 0$ and all real exponents $m, n$:

#diagram-fig(
  "diagrams/ch06_ch07_exp_log_curves.svg",
  "The Eight Core Laws of Indices and the Essential Prime-Power Reference Chart for Non-Calculator UTME Speed.",
)

#formula-box("Master Summary of the Eight Laws of Indices")[
  1. *Multiplication Law (Same Base):* #h(8pt) $a^m times a^n = a^(m + n)$
  2. *Division Law (Same Base):* #h(8pt) $frac(a^m, a^n) = a^(m - n) quad (a != 0)$
  3. *Power-of-a-Power Law:* #h(8pt) $(a^m)^n = a^(m n)$
  4. *Power of a Product / Quotient:* #h(8pt) $(a b)^n = a^n b^n$ #h(10pt) and #h(10pt) $(frac(a, b))^n = frac(a^n, b^n)$
  5. *Zero-Index Law:* #h(8pt) $a^0 = 1 quad ("for EVERY " a != 0; " note that " 0^0 "is undefined")$
  6. *Negative-Index Law:* #h(8pt) $a^(-n) = frac(1, a^n)$
  7. *Reciprocal-Flip Law for Fractions:* #h(8pt) $(frac(a, b))^(-n) = (frac(b, a))^n = frac(b^n, a^n)$
  8. *Fractional-Index (Root-Power) Law:* #h(8pt) $a^(p / q) = (root(q, a))^p = root(q, a^p) quad (q in NN, a > 0)$
]

#shortcut-box("Three Non-Calculator Speed Rules for Fractional & Decimal Powers")[
  1. *Root FIRST, Power SECOND:* To evaluate $81^(3 / 4)$ mentally, *never* compute $81^3 = 531441$! Instead take the fourth root first: $(root(4, 81))^3 = 3^3 = 27$ in two seconds!
  2. *Convert Decimals to Reduced Fractions Immediately:* Whenever JAMB writes $(0.125)^(-2 / 3)$ or $(0.04)^(-3 / 2)$, convert the decimal to a unit fraction first: $0.125 = 1 / 8$, $0.25 = 1 / 4$, $0.04 = 1 / 25$, $0.008 = 1 / 125$, $2.25 = 9 / 4$. Then flip via Law 7!
  3. *Memorize Prime Powers up to $2^(10), 3^6, 5^4, 7^3$:*
     - Powers of $2$: $2^4 = 16, 2^5 = 32, 2^6 = 64, 2^7 = 128, 2^8 = 256, 2^9 = 512, 2^(10) = 1024$.
     - Powers of $3$: $3^3 = 27, 3^4 = 81, 3^5 = 243, 3^6 = 729$.
     - Powers of $5$ & $7$: $5^3 = 125, 5^4 = 625$; #h(6pt) $6^3 = 216$; #h(6pt) $7^3 = 343$.
]

#trap-box("Deadly Sign, Scope & Sum Pitfalls")[
  - *Scope of a Minus Sign or Coefficient:*
    $ -3^2 = -(3^2) = -9 != (-3)^2 = +9, quad "and" quad 2 x^(-1) = frac(2, x) != frac(1, 2x) = (2x)^(-1) $
  - *Sums and Differences Have NO Index Shortcut:*
    $a^m + a^n != a^(m + n)$ and $(a + b)^n != a^n + b^n$! Whenever exponential terms are *added or subtracted*, rewrite $a^(n + k) = a^n dot a^k$ and *factor out the smallest power* $a^n$!
  - *Stacked Tower Exponents vs. Bracketed Powers:*
    $2^(3^2) = 2^9 = 512$, whereas $(2^3)^2 = 2^6 = 64$!
]

// ============================================================================
// SECTION 6.2
// ============================================================================
== 6.2 Solving the Four Classes of JAMB Indicial Equations

An *indicial (exponential) equation* contains the unknown $x$ in an exponent (or carries a fractional exponent on an unknown base). Every UTME indicial equation belongs to one of four standard classes:

=== Class I — Common Prime Base Reduction ($a^(f(x)) = a^(g(x)) arrow.r.double f(x) = g(x)$)
When $a > 0$ and $a != 1$, exponential functions are *one-to-one*: if both sides can be rewritten as powers of the *same prime base* $a$ (typically $2, 3, 5,$ or $10$), equate their exponents directly!
- Watch for *composite bases* ($4 = 2^2, 8 = 2^3, 9 = 3^2, 27 = 3^3$) and *radical bases* ($2 sqrt(2) = 2^1 dot 2^(1 / 2) = 2^(3 / 2)$; $3 sqrt(3) = 3^(3 / 2)$).

=== Class II — Unknown Base with Rational Exponent ($x^(p / q) = k$)
Raise both sides to the reciprocal power $q / p$:
$ x^(p / q) = k quad arrow.r.double quad x = k^(q / p) = (root(p, k))^q $
- *CRITICAL SIGN CHECK:* If the numerator $p$ is *even* (e.g., $x^(2 / 3) = 9$, which means $(root(3, x))^2 = 9$) and $x$ is allowed to be any real number, then $root(3, x) = plus.minus 3$, giving *two real solutions* $x = +27$ and $x = -27$! Always check whether the question restricts $x > 0$.

=== Class III — Exponential Sums & Differences ($c_1 a^(x + k) + c_2 a^x = M$)
Split each shifted exponent using $a^(x + k) = a^k dot a^x$ and $a^(x - k) = a^(-k) dot a^x$, factor out $a^x$, divide out the numeric bracket, and reduce to Class I.

=== Class IV — Disguised Quadratics ($p a^(2x) + q a^x + r = 0$) & Simultaneous Systems
Recognize $a^(2x) = (a^x)^2$ (for example, $4^x = (2^2)^x = (2^x)^2$, $9^x = (3^x)^2$, and $2^(2x + 1) = 2 dot (2^x)^2$). Substitute $u = a^x$:
$ p u^2 + q u + r = 0 $
Factorize for $u$, then back-substitute $a^x = u$.
- *NON-NEGATIVITY FILTER:* For any positive base $a > 0$ and any real number $x in RR$, *$a^x > 0$ strictly*! Therefore, *any root $u <= 0$ is extraneous and MUST be rejected*!

// ============================================================================
// SECTION 6.3
// ============================================================================
== 6.3 Standard Form (Scientific Notation)

A non-zero number is written in *Standard Form* when expressed as:
$ A times 10^n quad "where" quad 1 <= |A| < 10 quad "and" quad n in ZZ $

#diagram-fig(
  "diagrams/ch06_standard_form_slider.svg",
  "Scientific Notation / Standard Form Scale from Picometres (10^-12) to Terametres (10^12), showing decimal-shift sign rules.",
)

#concept-box("Complete Operations Guide in Standard Form")[
  1. *Converting to Standard Form:*
     - Numbers $>= 10$ have *positive* $n$: count places moved *left* ($48700000 = 4.87 times 10^7$).
     - Positive decimals $< 1$ have *negative* $n$: count places moved *right* past the first non-zero digit ($0.0000605 = 6.05 times 10^(-5)$ — equivalently, count all leading zeros *including* the zero before the decimal point!).
  2. *Multiplication & Division:* Multiply/divide the mantissas $A_1, A_2$ separately and add/subtract the powers of $10$; *re-normalize* at the end if the new mantissa falls outside $[1, 10)$!
     - Example: $(4.5 times 10^(-3))(6.0 times 10^7) = 27 times 10^4 = (2.7 times 10^1) times 10^4 = 2.7 times 10^5$.
  3. *Addition & Subtraction:* You *cannot* add mantissas with different powers of $10$! First rewrite the smaller-exponent term so *both share the same power of $10$*, then add/subtract:
     - $6.4 times 10^(-3) + 8.5 times 10^(-4) = 6.4 times 10^(-3) + 0.85 times 10^(-3) = 7.25 times 10^(-3)$.
  4. *Square Roots & Cube Roots (Divisibility Adjustment Rule!):*
     Before taking $sqrt(A times 10^n)$, adjust the decimal point so the exponent $n$ becomes *even* (divisible by $2$); before taking $root(3, A times 10^n)$, adjust so $n$ is *divisible by $3$*!
     - Example: $sqrt(1.6 times 10^(-7)) = sqrt(16 times 10^(-8)) = 4.0 times 10^(-4)$!
]

// ============================================================================
// GRADED WORKED EXAMPLES (6.1 – 6.28)
// ============================================================================
== 6.4 Graded Step-by-Step Worked Examples

#worked-example(
  "6.1",
  "Negative Fractional Power of a Vulgar Fraction",
  tier: "FOUNDATION",
  source: "UTME Past Paper",
  [Evaluate $(frac(81, 16))^(-3 / 4)$ without tables or a calculator.],
  [
    *Step 1 — Flip the fraction to clear the negative sign in the index:*
    $ (frac(81, 16))^(-3 / 4) = (frac(16, 81))^(3 / 4) $

    *Step 2 — Take the fourth root FIRST, then cube:*
    Since $16 = 2^4$ and $81 = 3^4$:
    $ (frac(root(4, 16), root(4, 81)))^3 = (frac(2, 3))^3 = bold(frac(8, 27)) $
    *Final Answer:* $bold(frac(8, 27))$.
  ],
)

#worked-example(
  "6.2",
  "Negative Fractional Power of a Decimal",
  tier: "FOUNDATION",
  source: "UTME Past Paper",
  [Simplify $(0.125)^(-2 / 3)$.],
  [
    *Step 1 — Convert $0.125$ to a simplified fraction:*
    $0.125 = frac(125, 1000) = frac(1, 8)$.

    *Step 2 — Flip and apply cube root before squaring:*
    $ (frac(1, 8))^(-2 / 3) = 8^(2 / 3) = (root(3, 8))^2 = 2^2 = bold(4) $
    *Final Answer:* *4*.
  ],
)

#worked-example(
  "6.3",
  "Zero, Negative & Signed-Bracket Exponents",
  tier: "FOUNDATION",
  [Evaluate $3^0 + 4^(-1) times 2^3 - (-2)^2$.],
  [
    *Step 1 — Evaluate each exponential term carefully:*
    $3^0 = 1$, #h(8pt) $4^(-1) = frac(1, 4)$, #h(8pt) $2^3 = 8$, #h(8pt) $(-2)^2 = +4$.

    *Step 2 — Combine using BODMAS:*
    $ 1 + (frac(1, 4) times 8) - 4 = 1 + 2 - 4 = bold(-1) $
    *Final Answer:* $-bold(1)$.
  ],
)

#worked-example(
  "6.4",
  "Algebraic Quotient with Negative Exponents",
  tier: "FOUNDATION",
  [Simplify $frac(18 x^4 y^(-2), 6 x^(-1) y^3)$, leaving your answer with positive indices only.],
  [
    *Step 1 — Divide numerical coefficients and subtract exponents of like bases:*
    $ frac(18, 6) dot x^(4 - (-1)) dot y^(-2 - 3) = 3 x^5 y^(-5) = bold(frac(3 x^5, y^5)) $
    *Final Answer:* $bold(frac(3 x^5, y^5))$.
  ],
)

#worked-example(
  "6.5",
  "Nested Radicals and Fractional Algebraic Powers",
  tier: "UTME STANDARD",
  [Simplify $frac(root(3, 27 a^6 b^(-9)), (9 a^4 b^(-2))^(1 / 2))$.],
  [
    *Step 1 — Simplify numerator (power $1 / 3$) and denominator (power $1 / 2$) separately:*
    - Numerator: $(27 a^6 b^(-9))^(1 / 3) = 27^(1 / 3) a^(6 / 3) b^(-9 / 3) = 3 a^2 b^(-3)$.
    - Denominator: $(9 a^4 b^(-2))^(1 / 2) = 9^(1 / 2) a^(4 / 2) b^(-2 / 2) = 3 a^2 b^(-1)$.

    *Step 2 — Divide numerator by denominator:*
    $ frac(3 a^2 b^(-3), 3 a^2 b^(-1)) = 1 dot a^(2 - 2) dot b^(-3 - (-1)) = b^(-2) = bold(frac(1, b^2)) $
    *Final Answer:* $bold(frac(1, b^2))$.
  ],
)

#worked-example(
  "6.6",
  "Factoring Exponential Sums & Differences (Classic JAMB Question!)",
  tier: "UTME STANDARD",
  source: "JAMB UTME Past Question",
  [Simplify $frac(2^(n + 4) - 2 dot 2^n, 2 dot 2^(n + 3))$.],
  [
    *Step 1 — Split every shifted power using $2^(n + k) = 2^n dot 2^k$:*
    - Numerator: $2^n dot 2^4 - 2 dot 2^n = 2^n (16 - 2) = 14 dot 2^n$.
    - Denominator: $2^1 dot 2^n dot 2^3 = 2^4 dot 2^n = 16 dot 2^n$.

    *Step 2 — Cancel the common factor $2^n != 0$:*
    $ frac(14 cancel(2^n), 16 cancel(2^n)) = frac(14, 16) = bold(frac(7, 8)) $
    *Final Answer:* $bold(frac(7, 8))$.
  ],
)

#worked-example(
  "6.7",
  "Composite-Base Algebraic Exponent Simplification",
  tier: "UTME STANDARD",
  [Simplify $frac(9^(n + 1) times 3^(2n - 1), 27^n times 81)$.],
  [
    *Step 1 — Convert every factor ($9 = 3^2, 27 = 3^3, 81 = 3^4$) to prime base $3$:*
    $ frac((3^2)^(n + 1) times 3^(2n - 1), (3^3)^n times 3^4) = frac(3^(2n + 2) times 3^(2n - 1), 3^(3n) times 3^4) $

    *Step 2 — Combine numerator and denominator indices:*
    $ frac(3^(4n + 1), 3^(3n + 4)) = 3^((4n + 1) - (3n + 4)) = bold(3^(n - 3)) $
    *Final Answer:* $bold(3^(n - 3))$.
  ],
)

#worked-example(
  "6.8",
  "Class I Indicial Equation — Reciprocal Composite Bases",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Solve for $x$: #h(6pt) $8^(x - 1) = frac(1, 4^(2x + 1))$.],
  [
    *Step 1 — Express $8 = 2^3$ and $1 / 4 = 2^(-2)$ in common prime base $2$:*
    $ (2^3)^(x - 1) = (2^(-2))^(2x + 1) quad arrow.r.double quad 2^(3x - 3) = 2^(-4x - 2) $

    *Step 2 — Equate the exponents and solve:*
    $ 3x - 3 = -4x - 2 quad arrow.r.double quad 7x = 1 quad arrow.r.double quad x = bold(frac(1, 7)) $
    *Final Answer:* $bold(x = frac(1, 7))$.
  ],
)

#worked-example(
  "6.9",
  "Class I Indicial Equation with a Decimal Base",
  tier: "UTME STANDARD",
  source: "2014 UTME Style",
  [Solve the equation $(0.25)^(x - 1) = 32$.],
  [
    *Step 1 — Rewrite $0.25 = 1 / 4 = 2^(-2)$ and $32 = 2^5$:*
    $ (2^(-2))^(x - 1) = 2^5 quad arrow.r.double quad 2^(-2x + 2) = 2^5 $

    *Step 2 — Equate exponents:*
    $ -2x + 2 = 5 quad arrow.r.double quad -2x = 3 quad arrow.r.double quad x = bold(-frac(3, 2)) $
    *Final Answer:* $bold(x = -1 frac(1, 2))$ (or $-frac(3, 2)$).
  ],
)

#worked-example(
  "6.10",
  "Indicial Equation with a Surd Base",
  tier: "UTME STANDARD",
  [Find the value of $x$ if $(2 sqrt(2))^(x + 1) = 64$.],
  [
    *Step 1 — Convert $2 sqrt(2)$ and $64$ into powers of $2$:*
    $2 sqrt(2) = 2^1 dot 2^(1 / 2) = 2^(3 / 2)$ and $64 = 2^6$.

    *Step 2 — Substitute and equate indices:*
    $ (2^(3 / 2))^(x + 1) = 2^6 quad arrow.r.double quad frac(3, 2)(x + 1) = 6 quad arrow.r.double quad x + 1 = 4 quad arrow.r.double quad x = bold(3) $
    *Final Answer:* *3*.
  ],
)

#worked-example(
  "6.11",
  "Class II Unknown Base with Negative Fractional Index",
  tier: "UTME STANDARD",
  [Solve for $x > 0$: #h(6pt) $x^(-3 / 2) = frac(1, 27)$.],
  [
    *Step 1 — Invert both sides to make the exponent positive:*
    $ x^(3 / 2) = 27 $

    *Step 2 — Raise both sides to the reciprocal power $2 / 3$:*
    $ x = 27^(2 / 3) = (root(3, 27))^2 = 3^2 = bold(9) $
    *Final Answer:* *9*.
  ],
)

#worked-example(
  "6.12",
  "Even-Numerator Rational Power — The Dual-Root Trap!",
  tier: "JAMB CHALLENGE",
  [Find *all real values* of $x$ satisfying $(x - 1)^(2 / 3) = 9$.],
  [
    *Step 1 — Rewrite $(x - 1)^(2 / 3) = (root(3, x - 1))^2 = 9$:*
    Taking the square root of both sides yields *both positive and negative signs*:
    $ root(3, x - 1) = plus.minus 3 $

    *Step 2 — Cube both branches:*
    $ x - 1 = (+3)^3 = 27 arrow.r.double x = 28; quad "or" quad x - 1 = (-3)^3 = -27 arrow.r.double x = -26 $
    *Final Answer:* $bold(x = 28 "or" x = -26)$.
  ],
)

#worked-example(
  "6.13",
  "Class III Three-Term Exponential Sum/Difference Equation",
  tier: "UTME STANDARD",
  [Solve for $x$: #h(6pt) $3^(x + 2) - 3^(x + 1) + 3^x = 63$.],
  [
    *Step 1 — Factor out the smallest power $3^x$:*
    $ 3^x (3^2 - 3^1 + 1) = 63 quad arrow.r.double quad 3^x (9 - 3 + 1) = 63 quad arrow.r.double quad 7 dot 3^x = 63 $

    *Step 2 — Divide by $7$ and equate powers of $3$:*
    $ 3^x = 9 = 3^2 quad arrow.r.double quad x = bold(2) $
    *Final Answer:* *2*.
  ],
)

#worked-example(
  "6.14",
  "Class IV Disguised Quadratic Indicial Equation (Two Valid Roots)",
  tier: "UTME STANDARD",
  source: "JAMB Classic",
  [Solve the equation $2^(2x) - 6(2^x) + 8 = 0$.],
  [
    *Step 1 — Let $u = 2^x$ (noting $u > 0$), so $2^(2x) = u^2$:*
    $ u^2 - 6 u + 8 = 0 quad arrow.r.double quad (u - 2)(u - 4) = 0 $
    Hence $u = 2$ or $u = 4$ (both strictly positive!).

    *Step 2 — Back-substitute $2^x = u$:*
    - $2^x = 2 = 2^1 arrow.r.double x = 1$.
    - $2^x = 4 = 2^2 arrow.r.double x = 2$.
    *Final Answer:* $bold(x = 1 "or" x = 2)$.
  ],
)

#worked-example(
  "6.15",
  "Class IV Disguised Quadratic with Extraneous Negative Root Trap",
  tier: "JAMB CHALLENGE",
  source: "UTME Past Paper",
  [Find all real solutions to $3^(2x + 1) - 26(3^x) - 9 = 0$.],
  [
    *Step 1 — Split $3^(2x + 1) = 3^1 dot (3^x)^2 = 3 u^2$ where $u = 3^x > 0$:*
    $ 3 u^2 - 26 u - 9 = 0 $

    *Step 2 — Factorize the quadratic ($3 times (-9) = -27 = -27 times 1$):*
    $ 3 u^2 - 27 u + u - 9 = 0 quad arrow.r.double quad (3u + 1)(u - 9) = 0 $
    So $u = -frac(1, 3)$ or $u = 9$.

    *Step 3 — Apply the strict positivity filter ($u = 3^x > 0$):*
    Reject $u = -1 / 3$ (since $3^x$ can never be negative!). Keep $3^x = 9 = 3^2 arrow.r.double x = 2$.
    *Final Answer:* $bold(x = 2)$ *(unique real solution!)*.
  ],
)

#worked-example(
  "6.16",
  "Reciprocal Indicial Equation",
  tier: "JAMB CHALLENGE",
  [Solve for $x$: #h(6pt) $5^x + 25 dot 5^(-x) = 26$.],
  [
    *Step 1 — Let $u = 5^x > 0$ so $5^(-x) = 1 / u$, and multiply through by $u$:*
    $ u + frac(25, u) = 26 quad arrow.r.double quad u^2 - 26 u + 25 = 0 quad arrow.r.double quad (u - 1)(u - 25) = 0 $

    *Step 2 — Solve each positive branch:*
    - $5^x = 1 = 5^0 arrow.r.double x = 0$.
    - $5^x = 25 = 5^2 arrow.r.double x = 2$.
    *Final Answer:* $bold(x = 0 "or" x = 2)$.
  ],
)

#worked-example(
  "6.17",
  "Simultaneous Indicial Equations",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Solve simultaneously for $x$ and $y$: #h(6pt) $2^(x + y) = 16$ #h(6pt) and #h(6pt) $4^(x - y) = frac(1, 4)$.],
  [
    *Step 1 — Reduce each equation to a linear relation in $x$ and $y$:*
    - From $2^(x + y) = 2^4$: #h(10pt) $x + y = 4$ #h(10pt) ...(i)
    - From $(2^2)^(x - y) = 2^(-2)$: #h(10pt) $2(x - y) = -2 arrow.r.double x - y = -1$ #h(10pt) ...(ii)

    *Step 2 — Add and subtract (i) and (ii):*
    Adding: $2x = 3 arrow.r.double x = frac(3, 2)$. Substituting into (i): $y = 4 - frac(3, 2) = frac(5, 2)$.
    *Final Answer:* *$x = frac(3, 2), quad y = frac(5, 2)$*.
  ],
)

#worked-example(
  "6.18",
  "Product & Quotient Simultaneous Indicial System",
  tier: "JAMB CHALLENGE",
  [Find $(x, y)$ given that $3^x times 9^y = 243$ and $frac(2^x, 4^y) = frac(1, 8)$.],
  [
    *Step 1 — Convert the first equation to base $3$ and the second to base $2$:*
    - $3^x dot 3^(2y) = 3^5 arrow.r.double x + 2y = 5$ ...(i)
    - $2^x dot 2^(-2y) = 2^(-3) arrow.r.double x - 2y = -3$ ...(ii)

    *Step 2 — Solve the linear system:*
    Add (i) and (ii): $2x = 2 arrow.r.double x = 1$. Then $1 + 2y = 5 arrow.r.double 2y = 4 arrow.r.double y = 2$.
    *Final Answer:* *$x = 1, quad y = 2$*.
  ],
)

#worked-example(
  "6.19",
  "When Does f(x)^g(x) = 1? (Three-Case Master Technique)",
  tier: "JAMB CHALLENGE",
  [Find all integer solutions $x$ to the equation $(x - 3)^(x^2 - 16) = 1$.],
  [
    *Step 1 — Check all three algebraic mechanisms that make $B^E = 1$:*
    1. *Exponent $E = 0$ with Base $B != 0$:* $x^2 - 16 = 0 arrow.r.double x = 4$ or $x = -4$. At $x = 4$, base $= 1 != 0$; at $x = -4$, base $= -7 != 0$. Both valid!
    2. *Base $B = 1$:* $x - 3 = 1 arrow.r.double x = 4$ (already found).
    3. *Base $B = -1$ with Exponent $E$ an EVEN integer:* $x - 3 = -1 arrow.r.double x = 2$. At $x = 2$, exponent $E = 2^2 - 16 = -12$ (even!), so $(-1)^(-12) = +1$ ✓!
    *Final Answer:* $bold(x = -4"," 2"," "or" 4)$.
  ],
)

#worked-example(
  "6.20",
  "Ordering Huge Powers Without a Calculator",
  tier: "UTME STANDARD",
  [Arrange $2^(60)$, $3^(45)$, and $5^(30)$ in ascending order of magnitude.],
  [
    *Step 1 — Extract the $gcd$ of all three exponents: $gcd(60, 45, 30) = 15$:*
    Rewrite each number as $("small integer")^(15)$:
    $ 2^(60) = (2^4)^(15) = 16^(15), quad 3^(45) = (3^3)^(15) = 27^(15), quad 5^(30) = (5^2)^(15) = 25^(15) $

    *Step 2 — Compare bases since $16 < 25 < 27$:*
    $16^(15) < 25^(15) < 27^(15) arrow.r.double bold(2^(60) < 5^(30) < 3^(45))$.
    *Final Answer:* *$2^(60), #h(4pt) 5^(30), #h(4pt) 3^(45)$*.
  ],
)

#worked-example(
  "6.21",
  "Converting Large & Small Numbers to Standard Form",
  tier: "FOUNDATION",
  [Express in standard form: (a) $48700000$; #h(8pt) (b) $0.0000605$.],
  [
    *Part (a):* Move the decimal point $7$ places *left* to sit after $4$: $bold(4.87 times 10^7)$.

    *Part (b):* Move the decimal point $5$ places *right* to sit after $6$: $bold(6.05 times 10^(-5))$.
  ],
)

#worked-example(
  "6.22",
  "Combined Multiplication & Division in Standard Form",
  tier: "UTME STANDARD",
  [Evaluate $frac(3.6 times 10^(-4) times 5.0 times 10^9, 4.5 times 10^2)$, giving your answer in standard form.],
  [
    *Step 1 — Group mantissas together and powers of $10$ together:*
    $ frac(3.6 times 5.0, 4.5) times 10^(-4 + 9 - 2) = frac(18.0, 4.5) times 10^3 = bold(4.0 times 10^3) $
    *Final Answer:* $bold(4.0 times 10^3)$.
  ],
)

#worked-example(
  "6.23",
  "Addition & Subtraction in Standard Form",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Evaluate in standard form: (a) $6.4 times 10^(-3) + 8.5 times 10^(-4)$; #h(6pt) (b) $4.2 times 10^5 - 7.0 times 10^4$.],
  [
    *Part (a) — Align both terms to $10^(-3)$:*
    $8.5 times 10^(-4) = 0.85 times 10^(-3)$, so:
    $ (6.4 + 0.85) times 10^(-3) = bold(7.25 times 10^(-3)) $

    *Part (b) — Align both terms to $10^5$:*
    $7.0 times 10^4 = 0.7 times 10^5$, so:
    $ (4.2 - 0.7) times 10^5 = bold(3.5 times 10^5) $
    *Final Answers:* (a) $bold(7.25 times 10^(-3))$; (b) $bold(3.5 times 10^5)$.
  ],
)

#worked-example(
  "6.24",
  "Square Root in Standard Form with an Odd Power of 10",
  tier: "UTME STANDARD",
  source: "JAMB Trap",
  [Without tables, express $sqrt(1.6 times 10^(-7))$ in standard form.],
  [
    *Step 1 — Make the exponent of $10$ EVEN before taking the square root:*
    Multiply $1.6$ by $10$ and decrease the power of $10$ by $1$:
    $ 1.6 times 10^(-7) = 16 times 10^(-8) $

    *Step 2 — Take square roots cleanly:*
    $ sqrt(16 times 10^(-8)) = sqrt(16) times 10^(-8 / 2) = bold(4.0 times 10^(-4)) $
    *Final Answer:* $bold(4.0 times 10^(-4))$.
  ],
)

#worked-example(
  "6.25",
  "Cube Root in Standard Form",
  tier: "UTME STANDARD",
  [Evaluate $root(3, 2.7 times 10^(-5))$ in standard form.],
  [
    *Step 1 — Adjust exponent $-5$ to $-6$ (a multiple of $3$):*
    $ 2.7 times 10^(-5) = 27 times 10^(-6) $

    *Step 2 — Extract the cube root:*
    $ root(3, 27 times 10^(-6)) = 3 times 10^(-6 / 3) = bold(3.0 times 10^(-2)) $
    *Final Answer:* $bold(3.0 times 10^(-2))$.
  ],
)

#worked-example(
  "6.26",
  "Simplifying Multi-Decimal Fractions via Standard Form",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Evaluate $frac(0.0024 times 35000, 0.014 times 0.06)$ and leave the answer in standard form.],
  [
    *Step 1 — Convert each number to whole-integer mantissa $times 10^k$:*
    $ frac((24 times 10^(-4)) times (35 times 10^3), (14 times 10^(-3)) times (6 times 10^(-2))) = frac(24 times 35, 14 times 6) times 10^((-1) - (-5)) $

    *Step 2 — Cancel common factors ($24 / 6 = 4$ and $35 / 14 = 5 / 2$):*
    $ (4 times frac(5, 2)) times 10^4 = 10 times 10^4 = bold(1.0 times 10^5) $
    *Final Answer:* $bold(1.0 times 10^5)$.
  ],
)

#worked-example(
  "6.27",
  "Symmetric Three-Base Exponential Identity",
  tier: "JAMB CHALLENGE",
  source: "Classic Olympiad / UTME Challenge",
  [If $2^x = 3^y = 6^(-z)$ where $x, y, z != 0$, find the numerical value of $frac(1, x) + frac(1, y) + frac(1, z)$.],
  [
    *Step 1 — Equate all three equal expressions to a common positive constant $k$:*
    $ 2^x = k arrow.r.double 2 = k^(1 / x), quad 3^y = k arrow.r.double 3 = k^(1 / y), quad 6^(-z) = k arrow.r.double 6 = k^(-1 / z) $

    *Step 2 — Use the arithmetic fact $2 times 3 = 6$:*
    $ k^(1 / x) dot k^(1 / y) = k^(-1 / z) quad arrow.r.double quad k^(1 / x + 1 / y) = k^(-1 / z) $
    Equating exponents ($k != 1$): $frac(1, x) + frac(1, y) = -frac(1, z) arrow.r.double frac(1, x) + frac(1, y) + frac(1, z) = bold(0)$.
    *Final Answer:* *0*.
  ],
)

#worked-example(
  "6.28",
  "Scientific Application — Solar System Light-Travel Time",
  tier: "UTME STANDARD",
  [The mean distance from the Sun to Saturn is $1.44 times 10^9" km"$. Taking the speed of light as $3.0 times 10^8" m/s"$, calculate the time (in minutes) light takes to travel from the Sun to Saturn.],
  [
    *Step 1 — Convert distance from $"km"$ to $"m"$ ($times 10^3$):*
    $d = 1.44 times 10^9 times 10^3" m" = 1.44 times 10^(12)" m"$.

    *Step 2 — Compute time in seconds, then divide by $60$:*
    $ t = frac(1.44 times 10^(12), 3.0 times 10^8) = 0.48 times 10^4" s" = 4800" s" = frac(4800, 60)" min" = bold(80 "minutes") $
    *Final Answer:* *80 minutes*.
  ],
)

// ============================================================================
// SECTION 6.5 RAPID-REVISION SUMMARY TABLE
// ============================================================================
== 6.5 Chapter 6 Rapid-Revision Checklist

#table(
  columns: (1.3fr, 2.0fr, 1.7fr),
  inset: 7.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Concept],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Core Rule / Formula],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Exam Pitfall to Avoid],

  [*Negative Fraction Power*],
  [$(frac(a, b))^(-p / q) = (frac(root(q, b), root(q, a)))^p$.],
  [Flip fraction FIRST, take root SECOND, raise to power LAST!],

  [*Sum/Diff of Powers*],
  [$a^(n + k) plus.minus a^n = a^n (a^k plus.minus 1)$.],
  [NEVER write $2^a + 2^b = 2^(a + b)$; always factor out smallest power!],

  [*Disguised Quadratic*],
  [Let $u = a^x > 0$ in $p a^(2x) + q a^x + r = 0$.],
  [Discard every root $u <= 0$ because $a^x > 0$ for all real $x$!],

  [*Standard Form +/-*],
  [$A times 10^n$ with $1 <= |A| < 10, n in ZZ$.],
  [Align both terms to the SAME power of $10$ before adding/subtracting.],

  [*Standard Form Roots*],
  [$sqrt(A times 10^(2k)) = sqrt(A) times 10^k$.],
  [Shift decimal point first so exponent is divisible by $2$ (or $3$)!],
)

// ============================================================================
// END-OF-CHAPTER JAMB UTME PRACTICE DRILL (50 QUESTIONS)
// ============================================================================
== 6.6 JAMB UTME Practice Drill — Chapter 6 (50 Questions)

Attempt all 50 questions without a calculator (target time: *40 minutes*).

#mcq(1, [Evaluate $16^(3 / 4)$.], [$8$], [$12$], [$4$], [$32$])

#mcq(2, [Simplify $27^(-2 / 3)$.], [$-18$], [$frac(1, 9)$], [$-frac(1, 9)$], [$frac(1, 18)$])

#mcq(3, [Evaluate $(frac(8, 125))^(-2 / 3)$.], [$frac(4, 25)$], [$frac(5, 2)$], [$frac(25, 4)$], [$-frac(25, 4)$])

#mcq(4, [Simplify $(0.04)^(-3 / 2)$.], [$frac(1, 125)$], [$25$], [$625$], [$125$])

#mcq(5, [Evaluate $5^0 + 2^(-2) - 4^(1 / 2)$.], [$-frac(3, 4)$], [$frac(13, 4)$], [$frac(1, 4)$], [$-frac(7, 4)$])

#mcq(6, [Evaluate $(-3)^2 - (-2)^3 - 3^0$.], [$0$], [$16$], [$17$], [$-2$])

#mcq(7, [Simplify $frac(12 a^3 b^(-2), 4 a^(-1) b^2)$.], [$frac(3 a^2, b^4)$], [$3 a^4 b^4$], [$frac(3 a^4, b^4)$], [$3 a^2$])

#mcq(8, [Simplify $(8 x^6 y^(-3))^(2 / 3)$.], [$frac(16 x^4, y^2)$], [$frac(4 x^4, y)$], [$4 x^4 y^2$], [$frac(4 x^4, y^2)$])

#mcq(9, [Simplify $frac(3^(n + 2) - 3^n, 3^n)$.], [$8$], [$6$], [$9$], [$2$])

#mcq(10, [Simplify $frac(5^(n + 3) - 6 dot 5^(n + 1), 19 dot 5^(n + 2))$.], [$5$], [$frac(1, 5)$], [$1$], [$frac(19, 25)$])

#mcq(11, [Solve for $x$: $2^(3x - 1) = 32$.], [$frac(4, 3)$], [$frac(5, 3)$], [$2$], [$3$])

#mcq(12, [Find $x$ if $9^(2x - 1) = 27^(x + 1)$.], [$2$], [$3$], [$4$], [$5$])

#mcq(13, [Solve $(frac(1, 8))^(x - 2) = 4^(1 - x)$.], [$4$], [$-4$], [$2$], [$frac(8, 5)$])

#mcq(14, [Find $x$ given that $(0.125)^(2x + 1) = 16$.], [$-frac(5, 6)$], [$-frac(7, 6)$], [$frac(7, 6)$], [$-frac(3, 2)$])

#mcq(15, [Solve for $x$: $(3 sqrt(3))^(x - 1) = 81$.], [$frac(8, 3)$], [$3$], [$frac(11, 3)$], [$frac(7, 3)$])

#mcq(16, [Find the positive value of $x$ for which $x^(-2 / 3) = frac(1, 16)$.], [$32$], [$8$], [$256$], [$64$])

#mcq(17, [Solve the equation $(2x - 3)^3 = -64$.], [$-frac(1, 2)$], [$frac(7, 2)$], [$-frac(7, 2)$], [$frac(1, 2)$])

#mcq(18, [Find $x$ if $2^(x + 3) + 2^x = 72$.], [$2$], [$3$], [$4$], [$8$])

#mcq(19, [Solve for $x$: $5^(x + 1) - 5^(x - 1) = 120$.], [$1$], [$3$], [$2$], [$4$])

#mcq(20, [Find the roots of $2^(2x) - 10(2^x) + 16 = 0$.], [$2, 8$], [$1, 4$], [$2, 3$], [$1, 3$])

#mcq(21, [Find the real value of $x$ satisfying $4^x - 3(2^(x + 1)) - 16 = 0$.], [$3$], [$3$ or $-1$], [$8$], [$2$])

#mcq(22, [Solve $3^(2x) - 4(3^(x + 1)) + 27 = 0$.], [$3, 9$], [$1, 2$], [$0, 2$], [$1, 3$])

#mcq(23, [Find all real solutions of $2^x + 8 dot 2^(-x) = 6$.], [$2, 4$], [$0, 3$], [$1, 2$], [$1, 3$])

#mcq(24, [If $2^(x + y) = 32$ and $3^(x - y) = frac(1, 27)$, evaluate the product $x y$.], [$-4$], [$6$], [$5$], [$4$])

#mcq(25, [Given that $5^(2x - y) = 1$ and $2^(x + y) = 64$, find the value of $x + 2y$.], [$10$], [$8$], [$12$], [$6$])

#mcq(26, [Express $0.000308$ in standard form.], [$3.08 times 10^(-3)$], [$3.08 times 10^(-4)$], [$30.8 times 10^(-5)$], [$3.08 times 10^(-5)$])

#mcq(27, [Express $72500000$ in standard form.], [$72.5 times 10^6$], [$7.25 times 10^6$], [$7.25 times 10^7$], [$7.25 times 10^8$])

#mcq(28, [Evaluate $(4.5 times 10^(-3)) times (6.0 times 10^7)$ in standard form.], [$2.7 times 10^4$], [$27 times 10^4$], [$2.7 times 10^6$], [$2.7 times 10^5$])

#mcq(29, [Simplify $frac(8.4 times 10^(-2), 2.1 times 10^(-6))$ in standard form.], [$4.0 times 10^4$], [$4.0 times 10^(-8)$], [$4.0 times 10^(-4)$], [$4.0 times 10^3$])

#mcq(30, [Evaluate $5.3 times 10^4 + 9.0 times 10^3$, leaving the result in standard form.], [$1.43 times 10^5$], [$6.2 times 10^4$], [$6.2 times 10^7$], [$1.43 times 10^4$])

#mcq(31, [Evaluate $3.2 times 10^(-3) - 7.0 times 10^(-4)$ in standard form.], [$2.5 times 10^(-4)$], [$-3.8 times 10^(-3)$], [$2.5 times 10^(-3)$], [$3.13 times 10^(-3)$])

#mcq(32, [Without mathematical tables, simplify $sqrt(2.5 times 10^(-5))$ in standard form.], [$5.0 times 10^(-2)$], [$1.58 times 10^(-2)$], [$5.0 times 10^(-4)$], [$5.0 times 10^(-3)$])

#mcq(33, [Express $sqrt(3.6 times 10^7)$ in standard form.], [$6.0 times 10^3$], [$6.0 times 10^4$], [$1.9 times 10^3$], [$6.0 times 10^2$])

#mcq(34, [Evaluate $root(3, 6.4 times 10^(-8))$ in standard form.], [$4.0 times 10^(-2)$], [$4.0 times 10^(-3)$], [$8.0 times 10^(-3)$], [$4.0 times 10^(-4)$])

#mcq(35, [Simplify $frac(0.0016 times 0.045, 0.0009)$ and express your answer in standard form.], [$8.0 times 10^(-3)$], [$8.0 times 10^(-1)$], [$8.0 times 10^(-2)$], [$7.2 times 10^(-2)$])

#mcq(36, [If $2^x = 5$, find the numerical value of $2^(2x + 1)$.], [$20$], [$26$], [$100$], [$50$])

#mcq(37, [If $3^x = 4$, evaluate $9^(x - 1)$.], [$frac(16, 9)$], [$frac(8, 9)$], [$frac(16, 3)$], [$7$])

#mcq(38, [Evaluate $(frac(1, 4))^(-1.5) - (frac(1, 8))^(-2 / 3)$.], [$2$], [$4$], [$12$], [$-4$])

#mcq(39, [Solve the equation $10^(2x - 3) = 0.001$.], [$3$], [$1$], [$0$], [$-3$])

#mcq(40, [Simplify $frac(6^n times 10^(n + 1), 15^n times 2^(2n - 1))$.], [$10$], [$40$], [$5$], [$20$])

#mcq(41, [Arrange $3^(40)$, $4^(30)$, and $5^(20)$ in ascending order.], [$5^(20), 4^(30), 3^(40)$], [$3^(40), 4^(30), 5^(20)$], [$5^(20), 3^(40), 4^(30)$], [$4^(30), 5^(20), 3^(40)$])

#mcq(42, [Solve for $x$: $(frac(2, 3))^(2x - 1) = (frac(9, 4))^(x - 2)$.], [$frac(3, 4)$], [$frac(5, 4)$], [$-frac(5, 4)$], [$frac(5, 2)$])

#mcq(43, [Find $x$ if $8^(x / 2) = 2^(3 / 8) times 4^(3 / 4)$.], [$frac(3, 4)$], [$frac(5, 8)$], [$frac(5, 4)$], [$frac(15, 8)$])

#mcq(44, [Evaluate $(1 - frac(7, 16))^(-1 / 2)$.], [$frac(3, 4)$], [$frac(16, 9)$], [$frac(5, 4)$], [$frac(4, 3)$])

#mcq(45, [Simplify $(a^(1 / 2) - a^(-1 / 2))^2 + 2$ for $a > 0$.], [$a + frac(1, a)$], [$a - frac(1, a)$], [$a + frac(1, a) + 4$], [$a^2 + frac(1, a^2)$])

#mcq(46, [If $5^(x + 2y) = 5$ and $4^(x + 3y) = 16$, evaluate $3^(x + y)$.], [$3$], [$1$], [$frac(1, 3)$], [$9$])

#mcq(47, [The rest mass of one electron is $9.1 times 10^(-31)" kg"$. Find the combined mass of $2.0 times 10^(12)$ electrons in standard form.], [$1.82 times 10^(-19)" kg"$], [$1.82 times 10^(-17)" kg"$], [$1.82 times 10^(-18)" kg"$], [$4.55 times 10^(-19)" kg"$])

#mcq(48, [If $27^x = 9^y$ for non-zero $x$ and $y$, find the ratio $x : y$.], [$3 : 2$], [$9 : 27$], [$4 : 9$], [$2 : 3$])

#mcq(49, [Find the values of $x$ satisfying $7^(x^2 - 5x + 6) = 1$.], [$2$ or $3$], [$-2$ or $-3$], [$1$ or $6$], [$0$ or $5$])

#mcq(50, [Given $x = 3.0 times 10^4$ and $y = 5.0 times 10^3$, evaluate $frac(x + y, x - y)$.], [$4.0$], [$1.4$], [$2.0$], [$1.25$])

// ============================================================================
// ANSWER KEY & FULL MULTI-STEP SOLUTIONS
// ============================================================================
== 6.7 Quick Answer Key & Complete Worked Solutions — Chapter 6

#answer-key-grid((
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
))

#sol-item(1, "A")[
  *Step 1 — Take the fourth root of $16$ before cubing:*
  $ 16^(3 / 4) = (root(4, 16))^3 = 2^3 = 8 $
]

#sol-item(2, "B")[
  *Step 1 — Clear negative exponent and take cube root first:*
  $ 27^(-2 / 3) = frac(1, (root(3, 27))^2) = frac(1, 3^2) = frac(1, 9) $
]

#sol-item(3, "C")[
  *Step 1 — Flip fraction to invert the negative sign, then take cube roots:*
  $ (frac(8, 125))^(-2 / 3) = (frac(125, 8))^(2 / 3) = (frac(5, 2))^2 = frac(25, 4) $
]

#sol-item(4, "D")[
  *Step 1 — Write $0.04 = 4 / 100 = 1 / 25$ and invert:*
  $ (frac(1, 25))^(-3 / 2) = 25^(3 / 2) = (sqrt(25))^3 = 5^3 = 125 $
]

#sol-item(5, "A")[
  *Step 1 — Evaluate each term ($5^0 = 1, 2^(-2) = 1 / 4, 4^(1 / 2) = 2$):*
  $ 1 + frac(1, 4) - 2 = frac(5, 4) - 2 = -frac(3, 4) $
]

#sol-item(6, "B")[
  *Step 1 — Watch odd/even powers of negative numbers:*
  $ (-3)^2 - (-2)^3 - 3^0 = (+9) - (-8) - 1 = 9 + 8 - 1 = 16 $
]

#sol-item(7, "C")[
  *Step 1 — Subtract exponents of like bases:*
  $ frac(12, 4) a^(3 - (-1)) b^(-2 - 2) = 3 a^4 b^(-4) = frac(3 a^4, b^4) $
]

#sol-item(8, "D")[
  *Step 1 — Apply power $2 / 3$ to each factor inside the bracket:*
  $ 8^(2 / 3) dot x^(6 times 2 / 3) dot y^(-3 times 2 / 3) = 4 x^4 y^(-2) = frac(4 x^4, y^2) $
]

#sol-item(9, "A")[
  *Step 1 — Factor out $3^n$ from the numerator:*
  $ frac(3^n (3^2 - 1), 3^n) = 9 - 1 = 8 $
]

#sol-item(10, "B")[
  *Step 1 — Factor out the smallest power $5^(n + 1)$ from numerator and denominator:*
  $ frac(5^(n + 1)(5^2 - 6), 19 dot 5^1 dot 5^(n + 1)) = frac(25 - 6, 19 times 5) = frac(19, 95) = frac(1, 5) $
]

#sol-item(11, "C")[
  *Step 1 — Express $32 = 2^5$ and equate indices:*
  $ 2^(3x - 1) = 2^5 quad arrow.r.double quad 3x - 1 = 5 quad arrow.r.double quad 3x = 6 quad arrow.r.double quad x = 2 $
]

#sol-item(12, "D")[
  *Step 1 — Convert $9 = 3^2$ and $27 = 3^3$ to base $3$:*
  $ 3^(2(2x - 1)) = 3^(3(x + 1)) quad arrow.r.double quad 4x - 2 = 3x + 3 quad arrow.r.double quad x = 5 $
]

#sol-item(13, "A")[
  *Step 1 — Write $1 / 8 = 2^(-3)$ and $4 = 2^2$:*
  $ 2^(-3(x - 2)) = 2^(2(1 - x)) quad arrow.r.double quad -3x + 6 = 2 - 2x quad arrow.r.double quad x = 4 $
]

#sol-item(14, "B")[
  *Step 1 — Write $0.125 = 1 / 8 = 2^(-3)$ and $16 = 2^4$:*
  $ -3(2x + 1) = 4 quad arrow.r.double quad -6x - 3 = 4 quad arrow.r.double quad x = -frac(7, 6) $
]

#sol-item(15, "C")[
  *Step 1 — Write $3 sqrt(3) = 3^(3 / 2)$ and $81 = 3^4$:*
  $ frac(3, 2)(x - 1) = 4 quad arrow.r.double quad x - 1 = frac(8, 3) quad arrow.r.double quad x = frac(11, 3) $
]

#sol-item(16, "D")[
  *Step 1 — Invert both sides and raise to $3 / 2$ ($x > 0$):*
  $ x^(2 / 3) = 16 quad arrow.r.double quad x = (sqrt(16))^3 = 4^3 = 64 $
]

#sol-item(17, "A")[
  *Step 1 — Take the real cube root of both sides ($root(3, -64) = -4$):*
  $ 2x - 3 = -4 quad arrow.r.double quad 2x = -1 quad arrow.r.double quad x = -frac(1, 2) $
]

#sol-item(18, "B")[
  *Step 1 — Factor out $2^x$:*
  $ 2^x (2^3 + 1) = 72 quad arrow.r.double quad 9 dot 2^x = 72 quad arrow.r.double quad 2^x = 8 = 2^3 quad arrow.r.double quad x = 3 $
]

#sol-item(19, "C")[
  *Step 1 — Factor out $5^(x - 1)$:*
  $ 5^(x - 1)(5^2 - 1) = 120 quad arrow.r.double quad 24 dot 5^(x - 1) = 120 quad arrow.r.double quad 5^(x - 1) = 5^1 quad arrow.r.double quad x = 2 $
]

#sol-item(20, "D")[
  *Step 1 — Let $u = 2^x > 0$:*
  $ u^2 - 10 u + 16 = 0 quad arrow.r.double quad (u - 2)(u - 8) = 0 $
  Hence $2^x = 2 arrow.r.double x = 1$ or $2^x = 8 arrow.r.double x = 3$.
]

#sol-item(21, "A")[
  *Step 1 — Rewrite $4^x = u^2$ and $3(2^(x + 1)) = 6 u$ where $u = 2^x > 0$:*
  $ u^2 - 6 u - 16 = 0 quad arrow.r.double quad (u - 8)(u + 2) = 0 $
  Reject $u = -2 < 0$; keep $2^x = 8 = 2^3 arrow.r.double x = 3$.
]

#sol-item(22, "B")[
  *Step 1 — Let $u = 3^x > 0$, noting $4(3^(x + 1)) = 12 u$:*
  $ u^2 - 12 u + 27 = 0 quad arrow.r.double quad (u - 3)(u - 9) = 0 $
  Thus $3^x = 3 arrow.r.double x = 1$ or $3^x = 9 arrow.r.double x = 2$.
]

#sol-item(23, "C")[
  *Step 1 — Let $u = 2^x > 0$ and multiply by $u$:*
  $ u^2 - 6 u + 8 = 0 quad arrow.r.double quad (u - 2)(u - 4) = 0 $
  Hence $2^x = 2 arrow.r.double x = 1$ or $2^x = 4 arrow.r.double x = 2$.
]

#sol-item(24, "D")[
  *Step 1 — Equate powers:* $x + y = 5$ and $x - y = -3$.
  *Step 2 — Solve:* $2x = 2 arrow.r.double x = 1$, $y = 4$, so $x y = 1 times 4 = 4$.
]

#sol-item(25, "A")[
  *Step 1 — Since $5^0 = 1$ and $64 = 2^6$:* $2x - y = 0 arrow.r.double y = 2x$ and $x + y = 6$.
  *Step 2 — Substitute:* $3x = 6 arrow.r.double x = 2, y = 4$, so $x + 2y = 2 + 8 = 10$.
]

#sol-item(26, "B")[
  *Step 1 — Shift decimal $4$ places right:*
  $ 0.000308 = 3.08 times 10^(-4) $
]

#sol-item(27, "C")[
  *Step 1 — Shift decimal $7$ places left:*
  $ 72500000 = 7.25 times 10^7 $
]

#sol-item(28, "D")[
  *Step 1 — Multiply and re-normalize mantissa:*
  $ (4.5 times 6.0) times 10^(-3 + 7) = 27 times 10^4 = 2.7 times 10^5 $
]

#sol-item(29, "A")[
  *Step 1 — Divide mantissas and subtract powers:*
  $ frac(8.4, 2.1) times 10^(-2 - (-6)) = 4.0 times 10^4 $
]

#sol-item(30, "B")[
  *Step 1 — Align to $10^4$:*
  $ 5.3 times 10^4 + 0.9 times 10^4 = 6.2 times 10^4 $
]

#sol-item(31, "C")[
  *Step 1 — Align to $10^(-3)$:*
  $ 3.2 times 10^(-3) - 0.7 times 10^(-3) = 2.5 times 10^(-3) $
]

#sol-item(32, "D")[
  *Step 1 — Make exponent even ($-6$):*
  $ sqrt(2.5 times 10^(-5)) = sqrt(25 times 10^(-6)) = 5.0 times 10^(-3) $
]

#sol-item(33, "A")[
  *Step 1 — Make exponent even ($+6$):*
  $ sqrt(3.6 times 10^7) = sqrt(36 times 10^6) = 6.0 times 10^3 $
]

#sol-item(34, "B")[
  *Step 1 — Make exponent divisible by $3$ ($-9$):*
  $ root(3, 6.4 times 10^(-8)) = root(3, 64 times 10^(-9)) = 4.0 times 10^(-3) $
]

#sol-item(35, "C")[
  *Step 1 — Convert to integer mantissas:*
  $ frac((16 times 10^(-4))(45 times 10^(-3)), 9 times 10^(-4)) = 16 times 5 times 10^(-3) = 80 times 10^(-3) = 8.0 times 10^(-2) $
]

#sol-item(36, "D")[
  *Step 1 — Split exponent:*
  $ 2^(2x + 1) = 2^1 dot (2^x)^2 = 2 times 5^2 = 50 $
]

#sol-item(37, "A")[
  *Step 1 — Express in terms of $3^x$:*
  $ 9^(x - 1) = frac(9^x, 9) = frac((3^x)^2, 9) = frac(4^2, 9) = frac(16, 9) $
]

#sol-item(38, "B")[
  *Step 1 — Flip both unit fractions:*
  $ 4^(3 / 2) - 8^(2 / 3) = (sqrt(4))^3 - (root(3, 8))^2 = 8 - 4 = 4 $
]

#sol-item(39, "C")[
  *Step 1 — Write $0.001 = 10^(-3)$:*
  $ 2x - 3 = -3 quad arrow.r.double quad 2x = 0 quad arrow.r.double quad x = 0 $
]

#sol-item(40, "D")[
  *Step 1 — Factor every composite base into primes $2, 3, 5$:*
  $ frac((2^n dot 3^n)(2^(n + 1) dot 5^(n + 1)), (3^n dot 5^n) dot 2^(2n - 1)) = 2^((2n + 1) - (2n - 1)) dot 3^(n - n) dot 5^(n + 1 - n) = 2^2 times 1 times 5 = 20 $
]

#sol-item(41, "A")[
  *Step 1 — Raise to common index $gcd(40, 30, 20) = 10$:*
  $ 3^(40) = 81^(10), quad 4^(30) = 64^(10), quad 5^(20) = 25^(10) quad arrow.r.double quad 5^(20) < 4^(30) < 3^(40) $
]

#sol-item(42, "B")[
  *Step 1 — Rewrite $9 / 4 = (2 / 3)^(-2)$:*
  $ 2x - 1 = -2(x - 2) = -2x + 4 quad arrow.r.double quad 4x = 5 quad arrow.r.double quad x = frac(5, 4) $
]

#sol-item(43, "C")[
  *Step 1 — Convert both sides to base $2$:*
  $ 2^(3x / 2) = 2^(3 / 8) dot 2^(3 / 2) = 2^(15 / 8) quad arrow.r.double quad frac(3x, 2) = frac(15, 8) quad arrow.r.double quad x = frac(5, 4) $
]

#sol-item(44, "D")[
  *Step 1 — Simplify inside bracket first:*
  $ (frac(9, 16))^(-1 / 2) = (frac(16, 9))^(1 / 2) = frac(4, 3) $
]

#sol-item(45, "A")[
  *Step 1 — Expand the square using $(u - v)^2 = u^2 - 2 u v + v^2$:*
  $ (a - 2 a^(1 / 2) a^(-1 / 2) + a^(-1)) + 2 = (a - 2 + frac(1, a)) + 2 = a + frac(1, a) $
]

#sol-item(46, "B")[
  *Step 1 — Equate powers:* $x + 2y = 1$ and $x + 3y = 2$.
  *Step 2 — Subtract:* $y = 1 arrow.r.double x = -1$, so $x + y = 0$ and $3^0 = 1$.
]

#sol-item(47, "C")[
  *Step 1 — Multiply and normalize:*
  $ (9.1 times 2.0) times 10^(-31 + 12) = 18.2 times 10^(-19) = 1.82 times 10^(-18)" kg" $
]

#sol-item(48, "D")[
  *Step 1 — Convert to base $3$:*
  $ 3^(3x) = 3^(2y) quad arrow.r.double quad 3x = 2y quad arrow.r.double quad frac(x, y) = frac(2, 3) $
]

#sol-item(49, "A")[
  *Step 1 — Since base $7 != 1$, exponent must equal $0$:*
  $ x^2 - 5x + 6 = (x - 2)(x - 3) = 0 quad arrow.r.double quad x = 2 "or" 3 $
]

#sol-item(50, "B")[
  *Step 1 — Write $x = 30 times 10^3$ and $y = 5 times 10^3$:*
  $ frac(x + y, x - y) = frac(35 times 10^3, 25 times 10^3) = frac(35, 25) = frac(7, 5) = 1.4 $
]
