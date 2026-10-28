#import "template.typ": *

#pagebreak()

#chapter-opener(
  2,
  "Modular Arithmetic & Cyclic Systems",
  subtitle: "Congruences, Negative Residues, Cayley Tables, Zero Divisors, Linear/Quadratic Congruences & Calendar Cycles",
  syllabus-ref: "JAMB Syllabus Sec. I • Topic 1(c / Obj. iii)",
  utme-weight: "1 Question Most Years (65% Frequency)",
)

#focus-radar(
  objectives: (
    "Reduce positive and negative integers to their least non-negative residue modulo n.",
    "Perform modular addition (⊕), subtraction (⊖), multiplication (⊗), and division in finite residue rings Z_n.",
    "Construct and interpret Cayley operation tables and identify additive/multiplicative inverses and zero divisors.",
    "Solve linear congruences ax ≡ b (mod n) — including multi-solution and no-solution cases — and quadratic congruences.",
    "Apply cyclic arithmetic to 12/24-hour clocks, days of the week, leap years, and market-day cycles.",
  ),
  hotspots: (
    "Least non-negative residues of NEGATIVE numbers (e.g., −29 mod 6 = 1, never −5!).",
    "Linear congruences 4x ≡ 8 (mod 12) where gcd(a, n) > 1 produces MULTIPLE distinct solutions in Z_n!",
    "Modular division b ÷ a (mod n) by converting to ax ≡ b (mod n).",
    "High-exponent remainders (2^50 mod 7) and calendar day-of-the-week word problems.",
  ),
  trap-summary: "When evaluating (−17) mod 5, students divide 17 by 5 to get remainder 2 and slap a minus sign on it to pick −2. That is ALWAYS wrong! A standard modulo residue r must satisfy 0 ≤ r < n; keep adding +5 until the result lands in {0, 1, 2, 3, 4}, giving −17 + 20 = +3!",
)

// ============================================================================
// SECTION 2.1
// ============================================================================
== 2.1 Congruence, Least Non-Negative Residues, and Cyclic Arithmetic

Ordinary integer arithmetic takes place on an infinite straight number line stretching from $-infinity$ to $+infinity$. *Modular arithmetic* (invented systematically by Carl Friedrich Gauss in 1801 and often called *clock arithmetic*) wraps the infinite integer line around a finite circle of circumference $n$. Every time you take $n$ steps forward, you land right back at $0$!

#concept-box("The Division Algorithm & Least Non-Negative Residue")[
  For any integer $a in ZZ$ (positive, zero, or *negative*) and any positive integer *modulus* $n >= 2$, there exist *unique* integers $q$ (the quotient) and $r$ (the *least non-negative residue*) such that:
  $ a = q dot n + r quad "with" quad 0 <= r < n $
  We write $a mod n = r$. Thus the complete set of standard residues modulo $n$ is always the finite set of $n$ elements:
  $ ZZ_n = {0, 1, 2, 3, dots, n - 1} $
]

=== Equivalence Relation of Congruence Modulo $n$
Two integers $a$ and $b$ are said to be *congruent modulo $n$*, written:
$ a equiv b quad (mod n) $
if and only if any of the following three equivalent conditions holds:
1. $a$ and $b$ leave the *exact same least non-negative remainder* $r in {0, 1, dots, n-1}$ when divided by $n$.
2. Their difference $a - b$ is an exact integer multiple of $n$; that is, $n divides (a - b)$, or $a - b = k n$ for some $k in ZZ$.
3. $a = b + k n$ for some integer $k in ZZ$ ($a$ and $b$ sit at the exact same spoke on the modulo-$n$ wheel).

For example, $38 equiv 23 equiv 8 equiv -7 equiv -22 quad (mod 15)$, because adjacent numbers differ by multiples of $15$, and all of them have least non-negative residue $8$ in $ZZ_(15)$.

#diagram-fig(
  "diagrams/ch02_modulo_wheels.svg",
  "Visualising Modular Arithmetic as Cyclic Wheels: the 12-hour clock (Modulo 12, left) showing 9 ⊕ 7 ≡ 4 (mod 12), and the Modulo 5 wheel (right) showing why stepping anticlockwise from 0 places −17 at residue +3.",
)

=== Reducing Negative Integers Modulo $n$ Without Mistakes
Why does $-17 mod 5 = 3$ and *not* $-2$? Look closely at the inequality $0 <= r < 5$ in $a = q n + r$:
- If you write $-17 = (-3)(5) + (-2)$, the remainder $-2$ violates $0 <= r < 5$!
- Stepping the quotient down by $1$ to $q = floor(-17 / 5) = -4$ gives:
  $ -17 = (-4)(5) + bold(3), quad "where " 0 <= 3 < 5 $

#shortcut-box("Two-Step Formula for Negative Modulo (-M mod n)")[
  To reduce a negative number $-M$ (where $M > 0$) modulo $n$ in 5 seconds:
  1. Divide the positive magnitude $M$ by $n$ and find its ordinary positive remainder $r_+ = M mod n$.
  2. - If $r_+ = 0$, then $(-M) mod n = bold(0)$.
     - If $r_+ != 0$, subtract $r_+$ from the modulus $n$:
       $ (-M) mod n = n - r_+ $
  *Instant Check:* For $-43 mod 7$: first $43 = 6 times 7 + 1$ so $r_+ = 1$; since $r_+ != 0$, $(-43) mod 7 = 7 - 1 = bold(6)$! Indeed, $-43 = (-7)(7) + 6$ ✓.
]

// ============================================================================
// SECTION 2.2
// ============================================================================
== 2.2 Modular Addition ($plus.o$), Subtraction ($minus.o$), Multiplication ($times.o$) & Cayley Tables

Because congruence respects addition, subtraction, and multiplication, you *never* have to multiply giant numbers before taking the remainder — you can reduce every input modulo $n$ *before*, *during*, and *after* the calculation!

#formula-box("Fundamental Laws of Modular Arithmetic")[
  If $a_1 equiv b_1 (mod n)$ and $a_2 equiv b_2 (mod n)$, then:
  1. *Modular Addition:* $(a_1 + a_2) mod n = ((a_1 mod n) + (a_2 mod n)) mod n$.
  2. *Modular Subtraction:* $(a_1 - a_2) mod n = ((a_1 mod n) - (a_2 mod n) + n) mod n$.
  3. *Modular Multiplication:* $(a_1 times a_2) mod n = ((a_1 mod n) times (a_2 mod n)) mod n$.
  4. *Modular Exponentiation:* $a^k mod n = (a mod n)^k mod n$ for every positive integer $k$.
]

=== Additive Identities, Additive Inverses, and Multiplicative Identities
In any residue system $ZZ_n = {0, 1, 2, dots, n - 1}$:
- The *additive identity* is $0$, because $a plus.o 0 = a$ for all $a in ZZ_n$.
- Every element $a in ZZ_n$ possesses a unique *additive inverse* $(-a) in ZZ_n$ satisfying $a plus.o (-a) = 0$:
  $ -0 equiv 0 quad (mod n), quad "and for " a != 0: quad -a equiv n - a quad (mod n) $
  For example, in $ZZ_(11)$, the additive inverse of $7$ is $11 - 7 = 4$, since $7 + 4 = 11 equiv 0 (mod 11)$.
- The *multiplicative identity* is $1$, because $a times.o 1 = a$ for all $a in ZZ_n$.

=== Cayley Tables & Prime vs. Composite Moduli (Zero Divisors!)
JAMB frequently prints a square operation table (a *Cayley table*) for $(ZZ_n, plus.o)$ or $(ZZ_n, times.o)$ and asks about symmetry, inverses, or solutions to table equations.

#diagram-fig(
  "diagrams/ch02_cayley_tables.svg",
  "Contrast between Composite Modulo 6 Multiplication (left, containing red non-zero Zero Divisors 2 ⊗ 3 = 0, 3 ⊗ 4 = 0) and Prime Modulo 5 Multiplication (right, where every non-zero row contains a unique green 1, guaranteeing multiplicative inverses!).",
)

Compare the two tables in the figure above carefully:
- In *Composite Modulus $ZZ_6$*, non-zero numbers can multiply to give $0$! Specifically, $2 times.o 3 = 0$, $3 times.o 4 = 0$, and $2 times.o 0 = 0$. Non-zero elements $a, b != 0$ satisfying $a times.o b = 0 (mod n)$ are called *zero divisors*. Because of zero divisors, rows $2$, $3$, and $4$ in $ZZ_6$ *never contain the number $1$*, meaning $2, 3, 4$ have *no multiplicative inverse* in modulo $6$!
- In *Prime Modulus $ZZ_5$* (and in $ZZ_p$ for *every* prime $p$), $a times.o b = 0 (mod p)$ forces $a = 0$ or $b = 0$. Every non-zero element ${1, 2, 3, 4}$ has a *unique multiplicative inverse*: $1^(-1) = 1$, $2^(-1) = 3$ ($2 times 3 = 6 equiv 1$), $3^(-1) = 2$, and $4^(-1) = 4$ ($4 times 4 = 16 equiv 1$).

// ============================================================================
// SECTION 2.3
// ============================================================================
== 2.3 Multiplicative Inverses, Modular Division & Linear Congruences

In ordinary algebra, $6x = 6y$ always implies $x = y$. In modulo $12$, however, $6(1) = 6$ and $6(3) = 18 equiv 6 (mod 12)$, so $6(1) equiv 6(3) (mod 12)$ even though $1 not equiv 3 (mod 12)$! *Never blindly cancel a common factor across a congruence without checking its greatest common divisor with the modulus!*

#concept-box("Multiplicative Inverse Criterion & Safe Cancellation Law")[
  1. *Existence of Multiplicative Inverse:* An element $a in ZZ_n$ has a multiplicative inverse $a^(-1) in ZZ_n$ (satisfying $a dot a^(-1) equiv 1 (mod n)$) *if and only if $gcd(a, n) = 1$* ($a$ and $n$ are coprime).
  2. *Safe Modular Cancellation Law:* If $k a equiv k b (mod n)$ and $d = gcd(k, n)$, then dividing by $k$ *also divides the modulus by $d$*:
     $ k a equiv k b quad (mod n) quad arrow.l.r.double quad a equiv b quad (mod frac(n, gcd(k, n))) $
     In particular, if $gcd(k, n) = 1$, then $a equiv b (mod n)$ cleanly!
]

=== Modular Division $b div a (mod n)$
Whenever JAMB asks you to evaluate $b div a (mod n)$ or $frac(b, a) (mod n)$, *never write a decimal or vulgar fraction*! By definition, $x = b div a (mod n)$ means:
$ "Find " x in {0, 1, dots, n - 1} " such that " a x equiv b quad (mod n) $
For example, to evaluate $4 div 7 (mod 9)$, solve $7x equiv 4 (mod 9)$. Keep adding the modulus $9$ to the right-hand side ($4, 13, 22, 31, 40, bold(49)$) until you hit a multiple of $7$: since $49 = 7 times 7$, we immediately get $x = bold(7)$!

#shortcut-box("The 'Add-the-Modulus' Trick for Instant Linear Congruences")[
  To solve $a x equiv b (mod n)$ when $gcd(a, n) = 1$ without trial-and-error over all residues, simply inspect the congruence sequence $b, b + n, b + 2n, b + 3n, dots$ until you spot a number divisible by $a$!
  - Solve $5x equiv 3 (mod 8)$:
    Test $3$ (no), $3 + 8 = 11$ (no), $11 + 8 = 19$ (no), $19 + 8 = 27$ (no), $27 + 8 = bold(35)$ (divisible by $5$!).
    Divide: $x = 35 / 5 = bold(7)$. Total time: 8 seconds!
]

=== Master Theorem for Solving Any Linear Congruence $a x equiv b (mod n)$
What happens when $d = gcd(a, n) > 1$? Let $d = gcd(a, n)$:
- *Case 1 ($d$ does NOT divide $b$):* The congruence $a x equiv b (mod n)$ has *NO SOLUTION* ($$emptyset$$).
  - _Example:_ $6x equiv 4 (mod 9)$. Here $d = gcd(6, 9) = 3$. Since $3$ does not divide $4$, there is *zero* integer $x$ satisfying $6x - 9k = 4$ (the LHS is always a multiple of $3$, whereas $4$ is not!).
- *Case 2 ($d$ DOES divide $b$):* The congruence has *EXACTLY $d$ distinct solutions* in $ZZ_n = {0, 1, dots, n-1}$!
  - *Step 1:* Divide $a$, $b$, and $n$ all by $d$ to obtain the reduced coprime congruence:
    $ frac(a, d) x equiv frac(b, d) quad (mod frac(n, d)) $
  - *Step 2:* Find the unique solution $x_0 in {0, 1, dots, n/d - 1}$ of the reduced congruence.
  - *Step 3:* List all $d$ solutions in $ZZ_n$ by adding multiples of the step size $s = n / d$:
    $ x in {x_0, quad x_0 + frac(n, d), quad x_0 + 2 frac(n, d), quad dots, quad x_0 + (d - 1) frac(n, d)} $

#trap-box("Stopping After Finding Only ONE Solution When gcd(a, n) > 1")[
  Suppose JAMB asks: _"Solve $4x equiv 8 (mod 12)$ for $0 <= x < 12$."_
  A careless candidate divides by $4$ without dividing the modulus, gets $x = 2$, and clicks Option A (`2`)!
  Look at $d = gcd(4, 12) = 4$: since $4 divides 8$, there are *$4$ distinct solutions*! Dividing the entire congruence (including the modulus!) by $4$ gives $x equiv 2 (mod 3)$. Listing all residues in ${0, dots, 11}$ congruent to $2 (mod 3)$ gives *$x in {2, 5, 8, 11}$*! Indeed, $4(2)=8$, $4(5)=20 equiv 8$, $4(8)=32 equiv 8$, and $4(11)=44 equiv 8 (mod 12)$!
]

// ============================================================================
// SECTION 2.4
// ============================================================================
== 2.4 Large Modular Powers, Units Digits & Quadratic Congruences

=== Evaluating Giant Exponents $a^k mod n$ via Cycle Detection
To evaluate $2^(50) mod 7$ or $7^(103) mod 5$ without a calculator:
1. First reduce the base modulo $n$ (and notice *small negative equivalents* like $n - 1 equiv -1 (mod n)$!).
   - For instance, $9^(85) mod 5$: since $9 equiv 4 equiv -1 (mod 5)$, we immediately get $(-1)^(85) = -1 equiv bold(4) (mod 5)$ in 3 seconds!
2. Otherwise, compute $a^1, a^2, a^3, dots (mod n)$ until you hit $1 (mod n)$ (or $-1 (mod n)$). If $a^m equiv 1 (mod n)$, divide the large exponent $k$ by the cycle length $m$: writing $k = m q + r$, we have:
   $ a^k = (a^m)^q dot a^r equiv 1^q dot a^r = a^r quad (mod n) $
   By *Fermat's Little Theorem*, whenever $p$ is prime and $p$ does not divide $a$, we automatically know $a^(p-1) equiv 1 (mod p)$, so the cycle length $m$ always divides $p - 1$!

=== Finding the Last (Units) Digit of $a^k$
The *units digit* of any positive integer in base $10$ is simply its residue *modulo $10$*! The powers of any single digit $d in {0, dots, 9}$ modulo $10$ repeat in cycles of length $1$, $2$, or $4$:
- *Cycle length 1:* $0^k -> 0$; $1^k -> 1$; $5^k -> 5$; $6^k -> 6$ (for all $k >= 1$).
- *Cycle length 2:* $4^k -> 4, 6, 4, 6, dots$; $9^k -> 9, 1, 9, 1, dots$.
- *Cycle length 4:*
  - $2^k mod 10$: $2, 4, 8, 6$ (for $k equiv 1, 2, 3, 0 mod 4$)
  - $3^k mod 10$: $3, 9, 7, 1$ (for $k equiv 1, 2, 3, 0 mod 4$)
  - $7^k mod 10$: $7, 9, 3, 1$ (for $k equiv 1, 2, 3, 0 mod 4$)
  - $8^k mod 10$: $8, 4, 2, 6$ (for $k equiv 1, 2, 3, 0 mod 4$)

=== Quadratic & Polynomial Congruences
In a *prime* modulus $p$, a quadratic congruence $(x - r_1)(x - r_2) equiv 0 (mod p)$ behaves like ordinary algebra (at most $2$ roots in $ZZ_p$, because $ZZ_p$ has no zero divisors). In a *composite* modulus $n$ (like $n = 6, 8, 12$), *zero divisors allow MORE than 2 roots*! For small JAMB moduli ($n <= 12$), testing residues or factoring carefully while checking zero-divisor pairs catches every single root.

// ============================================================================
// SECTION 2.5
// ============================================================================
== 2.5 Cyclic Word Problems: Clocks, Calendars & Market Days

#diagram-fig(
  "diagrams/ch02_calendar_mod7.svg",
  "Day-of-the-Week Modulo 7 Wheel: assign Sunday = 0 through Saturday = 6. A shift of +N days moves clockwise by (N mod 7) steps; a shift of −N days ('N days ago') moves anticlockwise by (−N mod 7) steps.",
)

#formula-box("Clock, Calendar & Leap-Year Cyclic Rules")[
  1. *12-Hour Analogue Clock (Modulo 12):* Replace $0$ by $12$ o'clock. Time $H$ hours after $T$ o'clock is $((T + H - 1) mod 12) + 1$; time $H$ hours *ago* is $((T - H - 1) mod 12) + 1$.
  2. *24-Hour Military/Digital Clock (Modulo 24):* Hours run $00:00$ to $23:00$; compute $(T plus.minus H) mod 24$.
  3. *Days of the Week (Modulo 7):* Number Sunday $= 0$, Monday $= 1$, Tuesday $= 2$, Wednesday $= 3$, Thursday $= 4$, Friday $= 5$, Saturday $= 6$. After $D$ days from day $d_0$, the day index is $(d_0 + D) mod 7$.
  4. *Ordinary vs. Leap Years:*
     - *Ordinary year* $= 365$ days $= 52 times 7 + bold(1) arrow.r$ shifts the day of the week forward by *$+1$ day*!
     - *Leap year* $= 366$ days $= 52 times 7 + bold(2) arrow.r$ shifts the day of the week forward by *$+2$ days* (provided *29th February* lies inside the interval between the two dates!).
     - A year $Y$ is a leap year if $4 divides Y$, *except* century years ($1900, 2100$) which must be divisible by $400$ ($2000, 2400$ are leap years).
]

// ============================================================================
// GRADED WORKED EXAMPLES (2.1 – 2.20)
// ============================================================================
== 2.6 Graded Step-by-Step Worked Examples

#worked-example(
  "2.1",
  "Positive and Negative Least Non-Negative Residues",
  tier: "FOUNDATION",
  [Find the least non-negative residue of: (a) $87 (mod 9)$, (b) $-17 (mod 5)$, and (c) $-43 (mod 7)$.],
  [
    *Part (a):* Divide $87$ by $9$: $87 = 9 times 9 + 6$. Since $0 <= 6 < 9$, $87 mod 9 = bold(6)$.

    *Part (b):* For $-17 (mod 5)$, divide $17$ by $5$: $17 = 3 times 5 + 2$ ($r_+ = 2$). Subtract from modulus $5$:
    $ (-17) mod 5 = 5 - 2 = bold(3) quad ("Check: " -17 = (-4) times 5 + 3) $

    *Part (c):* For $-43 (mod 7)$, divide $43$ by $7$: $43 = 6 times 7 + 1$ ($r_+ = 1$). Subtract from modulus $7$:
    $ (-43) mod 7 = 7 - 1 = bold(6) quad ("Check: " -43 = (-7) times 7 + 6) $
    *Final Answers:* (a) $bold(6)$; (b) $bold(3)$; (c) $bold(6)$.
  ],
)

#worked-example(
  "2.2",
  "Negative Multiple of the Modulus",
  tier: "FOUNDATION",
  [Evaluate $(-36) (mod 9)$ and $(-50) (mod 10)$.],
  [
    *Step 1 — Check exact divisibility:*
    $-36 = (-4) times 9 + 0$, so the remainder is already $0$! (Warning: do *not* compute $9 - 0 = 9$, because $9$ is outside $ZZ_9 = {0, 1, dots, 8}$.)
    Similarly, $-50 = (-5) times 10 + 0$, so $(-50) mod 10 = 0$.
    *Final Answers:* $bold(0)$ and $bold(0)$.
  ],
)

#worked-example(
  "2.3",
  "Modular Addition and Subtraction",
  tier: "FOUNDATION",
  [Simplify: (a) $28 plus.o 47$ in modulo $8$; #h(10pt) (b) $13 minus.o 29$ in modulo $6$.],
  [
    *Part (a):* Reduce each number modulo $8$ first:
    $28 = 3(8) + 4 equiv 4 (mod 8)$ and $47 = 5(8) + 7 equiv 7 (mod 8)$.
    Add the residues: $4 + 7 = 11 equiv bold(3) (mod 8)$.

    *Part (b):* Subtract first: $13 - 29 = -16$. Now reduce $-16$ modulo $6$:
    Since $16 = 2(6) + 4$, $(-16) mod 6 = 6 - 4 = bold(2)$.
    *Final Answers:* (a) $bold(3)$; (b) $bold(2)$.
  ],
)

#worked-example(
  "2.4",
  "Modular Multiplication Without Large Products",
  tier: "FOUNDATION",
  [Evaluate $(19 times 23) (mod 7)$.],
  [
    *Step 1 — Reduce each factor modulo $7$ BEFORE multiplying:*
    - $19 = 2(7) + 5 equiv 5 (mod 7)$
    - $23 = 3(7) + 2 equiv 2 (mod 7)$

    *Step 2 — Multiply the small residues and reduce modulo $7$:*
    $ 19 times 23 equiv 5 times 2 = 10 equiv bold(3) quad (mod 7) $
    *Final Answer:* $bold(3)$.
  ],
)

#worked-example(
  "2.5",
  "Combined Modular BODMAS Expression",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Evaluate $(5 times 7 - 29) (mod 4)$.],
  [
    *Step 1 — Follow BODMAS (multiplication before subtraction):*
    $ 5 times 7 - 29 = 35 - 29 = 6 $

    *Step 2 — Reduce $6$ modulo $4$:*
    $ 6 = 1 times 4 + 2 equiv bold(2) quad (mod 4) $
    *Final Answer:* $bold(2)$.
  ],
)

#worked-example(
  "2.6",
  "Finding Additive and Multiplicative Inverses in Z_12",
  tier: "UTME STANDARD",
  [In arithmetic modulo $12$, find: (a) the additive inverse of $5$; (b) the multiplicative inverse of $5$; and (c) explain why $8$ has no multiplicative inverse in modulo $12$.],
  [
    *Part (a):* The additive inverse of $5$ in $ZZ_(12)$ is $12 - 5 = bold(7)$, because $5 + 7 = 12 equiv 0 (mod 12)$.

    *Part (b):* Since $gcd(5, 12) = 1$, $5$ has a unique multiplicative inverse $x in ZZ_(12)$ satisfying $5x equiv 1 (mod 12)$. Testing multiples of $12$ plus $1$: $1, 13, bold(25)$! Since $5 times 5 = 25 = 2(12) + 1 equiv 1 (mod 12)$, $5$ is *its own multiplicative inverse*: $5^(-1) = bold(5)$.

    *Part (c):* $gcd(8, 12) = 4 != 1$. For every integer $x$, $8x - 12k = 4(2x - 3k)$ is divisible by $4$ and therefore can *never* equal $1$! In fact, $8 times 3 = 24 equiv 0 (mod 12)$, so $8$ is a zero divisor.
    *Final Answers:* (a) $bold(7)$; (b) $bold(5)$; (c) $gcd(8, 12) = 4 != 1$.
  ],
)

#worked-example(
  "2.7",
  "Modular Division via Linear Congruence",
  tier: "UTME STANDARD",
  source: "JAMB Classic",
  [Evaluate $3 div 5$ in modulo $7$.],
  [
    *Step 1 — Rewrite modular division as a multiplication congruence:*
    Let $x = 3 div 5 (mod 7)$. By definition, $x in {0, 1, 2, 3, 4, 5, 6}$ satisfies:
    $ 5x equiv 3 quad (mod 7) $

    *Step 2 — Apply the 'Add-the-Modulus' trick:*
    Add $7$ to the RHS $3$: $3 + 7 = bold(10)$, which is immediately divisible by $5$!
    $ 5x = 10 quad arrow.r.double quad x = 2 $

    *Check:* $5 times 2 = 10 = 1(7) + 3 equiv 3 (mod 7)$ ✓.
    *Final Answer:* $bold(2)$.
  ],
)

#worked-example(
  "2.8",
  "Linear Congruence with a Unique Solution",
  tier: "UTME STANDARD",
  [Find the truth set of $3x + 4 equiv 2 (mod 7)$ for $0 <= x < 7$.],
  [
    *Step 1 — Isolate the $x$-term:*
    Subtract $4$ from both sides:
    $ 3x equiv 2 - 4 = -2 quad (mod 7) $
    Convert $-2$ to its positive residue modulo $7$: $-2 + 7 = 5$:
    $ 3x equiv 5 quad (mod 7) $

    *Step 2 — Check $gcd(3, 7) = 1$ (unique solution) and add $7$ until divisible by $3$:*
    $5 + 7 = bold(12) arrow.r 3x = 12 arrow.r x = 4$.
    *Check:* $3(4) + 4 = 16 = 2(7) + 2 equiv 2 (mod 7)$ ✓.
    *Final Answer:* $bold(x = 4)$.
  ],
)

#worked-example(
  "2.9",
  "Linear Congruence with Variables on Both Sides",
  tier: "UTME STANDARD",
  [Solve $2x - 3 equiv 4x + 5 (mod 9)$ for $x in ZZ_9$.],
  [
    *Step 1 — Collect $x$-terms on one side and constants on the other:*
    Subtract $2x$ and $5$ from both sides:
    $ -3 - 5 equiv 4x - 2x quad (mod 9) quad arrow.r.double quad 2x equiv -8 quad (mod 9) $

    *Step 2 — Reduce $-8$ modulo $9$:*
    $-8 + 9 = 1$, so:
    $ 2x equiv 1 quad (mod 9) $

    *Step 3 — Add $9$ to RHS:*
    $1 + 9 = 10 arrow.r 2x = 10 arrow.r x = 5$.
    *Check:* LHS $= 2(5) - 3 = 7$; RHS $= 4(5) + 5 = 25 = 2(9) + 7 equiv 7 (mod 9)$ ✓.
    *Final Answer:* $bold(x = 5)$.
  ],
)

#worked-example(
  "2.10",
  "Linear Congruence with MULTIPLE Solutions (gcd > 1)",
  tier: "JAMB CHALLENGE",
  source: "High-Yield Trap",
  [Find *all* values of $x$ in the set ${0, 1, 2, dots, 11}$ satisfying $4x equiv 8 (mod 12)$.],
  [
    *Step 1 — Compute $d = gcd(a, n)$:*
    Here $a = 4$ and $n = 12$, so $d = gcd(4, 12) = 4$. Since $4$ divides $b = 8$, there are *exactly $4$ distinct solutions* in $ZZ_(12)$!

    *Step 2 — Divide $a$, $b$, and the modulus $n$ by $d = 4$:*
    $ frac(4, 4) x equiv frac(8, 4) quad (mod frac(12, 4)) quad arrow.r.double quad x equiv 2 quad (mod 3) $

    *Step 3 — Generate all $4$ solutions in ${0, 1, dots, 11}$ using step size $s = 12 / 4 = 3$:*
    $ x_0 = 2, quad x_1 = 2 + 3 = 5, quad x_2 = 5 + 3 = 8, quad x_3 = 8 + 3 = 11 $
    *Final Answer:* $bold(x in {2, 5, 8, 11})$.
  ],
)

#worked-example(
  "2.11",
  "Identifying an Unsolvable Linear Congruence",
  tier: "UTME STANDARD",
  [Determine how many solutions the congruence $6x + 4 equiv 2 (mod 9)$ possesses in $ZZ_9$.],
  [
    *Step 1 — Rewrite in standard form $a x equiv b (mod n)$:*
    $ 6x equiv 2 - 4 = -2 equiv 7 quad (mod 9) $

    *Step 2 — Test the solvability condition $gcd(a, n) divides b$:*
    Compute $d = gcd(6, 9) = 3$. Does $3$ divide $7$? *No!* ($7 div 3$ leaves remainder $1$).
    Because $6x - 9k = 3(2x - 3k)$ is always a multiple of $3$ for every integer $x$ and $k$, it can never equal $7$.
    *Final Answer:* *Zero solutions* (empty truth set $emptyset$).
  ],
)

#worked-example(
  "2.12",
  "Solving a Mixed Operation Equation in Modulo 6",
  tier: "UTME STANDARD",
  [If $plus.o$ and $times.o$ denote addition and multiplication modulo $6$, find all $x in {0, 1, 2, 3, 4, 5}$ such that $x plus.o (x times.o 4) = 5$.],
  [
    *Step 1 — Translate into an algebraic congruence modulo $6$:*
    $ x + 4x equiv 5 quad (mod 6) quad arrow.r.double quad 5x equiv 5 quad (mod 6) $

    *Step 2 — Cancel $5$ safely:*
    Since $gcd(5, 6) = 1$, we can cancel $5$ from both sides without changing the modulus:
    $ x equiv 1 quad (mod 6) $
    *Final Answer:* $bold(x = 1)$.
  ],
)

#worked-example(
  "2.13",
  "Quadratic Congruence in a Prime Modulus",
  tier: "JAMB CHALLENGE",
  [Solve $x^2 + 2x + 4 equiv 0 (mod 7)$ for $0 <= x < 7$.],
  [
    *Step 1 — Replace $+4$ by a congruent constant modulo $7$ that makes factoring easy:*
    Notice that $4 equiv 4 - 7 = -3 (mod 7)$! Rewriting $+4$ as $-3$ turns the LHS into a classic factorable quadratic:
    $ x^2 + 2x - 3 equiv 0 quad (mod 7) $
    $ (x + 3)(x - 1) equiv 0 quad (mod 7) $

    *Step 2 — Use the prime-modulus property ($7$ is prime, so no zero divisors exist):*
    Either $x + 3 equiv 0 (mod 7) arrow.r.double x equiv -3 equiv 4 (mod 7)$, OR $x - 1 equiv 0 (mod 7) arrow.r.double x equiv 1 (mod 7)$.

    *Check:* For $x = 1$: $1 + 2 + 4 = 7 equiv 0$. For $x = 4$: $16 + 8 + 4 = 28 = 4(7) equiv 0$ ✓.
    *Final Answer:* $bold(x = 1 " or " 4)$.
  ],
)

#worked-example(
  "2.14",
  "Quadratic Congruence in a Composite Modulus (Four Roots!)",
  tier: "JAMB CHALLENGE",
  [Find the complete truth set of $x^2 equiv 4 (mod 12)$ for $x in {0, 1, 2, dots, 11}$.],
  [
    *Step 1 — Rewrite as a difference of two squares:*
    $ x^2 - 4 equiv 0 quad (mod 12) quad arrow.r.double quad (x - 2)(x + 2) equiv 0 quad (mod 12) $

    *Step 2 — Watch out for composite zero divisors!*
    In modulo $12$, $(x - 2)(x + 2)$ does *not* require $x equiv plus.minus 2$ alone — it can also be $4 times 6 = 24$ or $6 times 10 = 60$! Notice both factors $(x - 2)$ and $(x + 2)$ have the same parity. Since their product is divisible by $12 = 4 times 3$, both must be *even* (so $x$ is even!). Test the $6$ even residues in $ZZ_(12)$:
    - $x = 0$: $0^2 = 0 not equiv 4$
    - $x = 2$: $2^2 = 4 equiv 4$ ✓
    - $x = 4$: $4^2 = 16 = 12 + 4 equiv 4$ ✓
    - $x = 6$: $6^2 = 36 = 3(12) + 0 not equiv 4$
    - $x = 8$: $8^2 = 64 = 5(12) + 4 equiv 4$ ✓
    - $x = 10$: $10^2 = 100 = 8(12) + 4 equiv 4$ ✓

    *Final Answer:* $bold({2, 4, 8, 10})$ (four roots in $ZZ_(12)$!).
  ],
)

#worked-example(
  "2.15",
  "Large Modular Power via Cycle Reduction",
  tier: "UTME STANDARD",
  [Find the remainder when $7^(103)$ is divided by $5$.],
  [
    *Step 1 — Reduce the base $7$ modulo $5$:*
    $ 7 equiv 2 quad (mod 5) quad arrow.r.double quad 7^(103) equiv 2^(103) quad (mod 5) $

    *Step 2 — Find the cycle length of powers of $2$ modulo $5$:*
    $2^1 = 2$, $2^2 = 4$, $2^3 = 8 equiv 3$, $2^4 = 16 equiv bold(1) (mod 5)$. Cycle length $= 4$.

    *Step 3 — Divide the exponent $103$ by $4$:*
    $103 = 4 times 25 + 3$. Therefore:
    $ 2^(103) = (2^4)^(25) dot 2^3 equiv 1^(25) dot 8 = 8 equiv bold(3) quad (mod 5) $
    *Final Answer:* $bold(3)$.
  ],
)

#worked-example(
  "2.16",
  "Finding the Units Digit of a Massive Exponential",
  tier: "UTME STANDARD",
  [What is the units (last) digit of $3^(2026)$ when expanded in base ten?],
  [
    *Step 1 — Recall that the units digit is $3^(2026) mod 10$:*
    Inspect the cycle of powers of $3$ modulo $10$:
    $ 3^1 equiv 3, quad 3^2 equiv 9, quad 3^3 = 27 equiv 7, quad 3^4 = 81 equiv bold(1) quad (mod 10) $
    The cycle $(3, 9, 7, 1)$ has period $4$.

    *Step 2 — Divide the exponent $2026$ by $4$:*
    Only the last two digits matter for divisibility by $4$: $26 = 4 times 6 + 2$, so $2026 = 4(506) + 2$.
    $ 3^(2026) = (3^4)^(506) dot 3^2 equiv 1^(506) dot 9 = bold(9) quad (mod 10) $
    *Final Answer:* $bold(9)$.
  ],
)

#worked-example(
  "2.17",
  "Calendar Day-of-the-Week Forward Calculation",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [If today is Wednesday, what day of the week will it be $250$ days from today?],
  [
    *Step 1 — Reduce the day shift $250$ modulo $7$:*
    Divide $250$ by $7$:
    $ 250 = 35 times 7 + bold(5) quad arrow.r.double quad 250 equiv 5 quad (mod 7) $

    *Step 2 — Count $5$ days forward from Wednesday (or $2$ days backward!):*
    $"Wednesday" + 5 "days" = "Thursday (1), Friday (2), Saturday (3), Sunday (4), " bold("Monday (5)")$.
    *(Shortcut: $+5 equiv -2 (mod 7)$, and $2$ days before Wednesday is immediately Monday!)*
    *Final Answer:* *Monday*.
  ],
)

#worked-example(
  "2.18",
  "Leap-Year Date Shift Problem",
  tier: "JAMB CHALLENGE",
  [1st March 2023 fell on a Wednesday. On what day of the week did 1st March 2025 fall?],
  [
    *Step 1 — Count exact days across each year interval, checking 29th February:*
    - *1st March 2023 to 1st March 2024:* This interval passes through *February 2024*. Since $2024 div 4 = 506$ exactly, $2024$ is a *leap year* ($29$ days in Feb 2024), so this 1-year span has *$366$ days* ($366 equiv +2 mod 7$).
    - *1st March 2024 to 1st March 2025:* Passes through February 2025 ($2025$ is an ordinary year, $28$ days in Feb), so this 1-year span has *$365$ days* ($365 equiv +1 mod 7$).

    *Step 2 — Add the modular shifts:*
    Total shift $= (+2) + (+1) = +3$ days forward from Wednesday:
    $"Wednesday" + 3 = bold("Saturday")$.
    *Final Answer:* *Saturday*.
  ],
)

#worked-example(
  "2.19",
  "Analogue Clock Backward Shift ('Hours Ago')",
  tier: "UTME STANDARD",
  [A 12-hour wall clock currently reads $9$ o'clock. What time did it show $100$ hours ago?],
  [
    *Step 1 — Reduce $100$ hours modulo $12$:*
    $ 100 = 8 times 12 + 4 quad arrow.r.double quad 100 equiv 4 quad (mod 12) $

    *Step 2 — Step backward by $4$ hours from $9$ o'clock:*
    $ 9 - 4 = bold(5) " o'clock" $
    *Final Answer:* *5 o'clock*.
  ],
)

#worked-example(
  "2.20",
  "Simultaneous Congruences (Remainder Word Problem)",
  tier: "JAMB CHALLENGE",
  [Find the smallest positive integer which leaves a remainder of $2$ when divided by $5$, and a remainder of $3$ when divided by $7$.],
  [
    *Step 1 — Write the two congruences:*
    $ x equiv 2 quad (mod 5) quad "and" quad x equiv 3 quad (mod 7) $

    *Step 2 — Step through the arithmetic progression of the larger modulus ($7$):*
    Numbers satisfying $x equiv 3 (mod 7)$ are $3, 10, 17, 24, 31, dots$
    Test each modulo $5$ until we get remainder $2$:
    - $3 mod 5 = 3$ (no)
    - $10 mod 5 = 0$ (no)
    - $17 mod 5 = bold(2)$ ✓!

    *(Note: By the Chinese Remainder Theorem, the general positive solution is $x = 17 + 35k$ for $k = 0, 1, 2, dots$)*
    *Final Answer:* $bold(17)$.
  ],
)

// ============================================================================
// SECTION 2.7 RAPID-REVISION SUMMARY TABLE
// ============================================================================
== 2.7 Chapter 2 Rapid-Revision Checklist

#table(
  columns: (1.3fr, 2.1fr, 1.6fr),
  inset: 7.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Concept],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Formula / Procedure],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[JAMB Exam Trap],

  [*Negative Residue*],
  [If $r_+ = M mod n != 0$, then $(-M) mod n = n - r_+$.],
  [Never leave a negative answer! If $r_+ = 0$, answer is $0$ (not $n$).],

  [*Multiplicative Inverse*],
  [$a^(-1) mod n$ exists iff $gcd(a, n) = 1$.],
  [In composite $ZZ_n$, factors of $n$ are *zero divisors* and have NO inverse.],

  [*Modular Division $b div a$*],
  [Solve $a x equiv b (mod n)$ by testing $b + k n$ divisible by $a$.],
  [Never write decimals like $3 div 5 = 0.6$ in modular arithmetic!],

  [*Linear Congruence $a x equiv b$*],
  [Let $d = gcd(a, n)$. If $d divides.not b$: $0$ sols. If $d divides b$: *$d$ sols* spaced by $n/d$.],
  [Always divide *the modulus $n$ too* by $d$, then list all $d$ roots in $ZZ_n$!],

  [*Calendar Shifts*],
  [Day index $(d_0 plus.minus D) mod 7$. Ordinary yr $= +1$, Leap yr $= +2$.],
  [$+5$ days forward is identical to $-2$ days backward!],
)

// ============================================================================
// END-OF-CHAPTER JAMB UTME PRACTICE DRILL (35 QUESTIONS)
// ============================================================================
== 2.8 JAMB UTME Practice Drill — Chapter 2 (35 Questions)

Attempt all 35 questions under strict non-calculator conditions (target time: *28 minutes*).

#mcq(1, [Find the least non-negative residue of $87$ in modulo $9$.], [$6$], [$5$], [$7$], [$3$])

#mcq(2, [Evaluate $(-29) (mod 6)$.], [$-5$], [$1$], [$5$], [$4$])

#mcq(3, [What is the least non-negative value of $(-64) (mod 11)$?], [$9$], [$-9$], [$2$], [$3$])

#mcq(4, [Simplify $(17 + 26 + 35) (mod 8)$.], [$2$], [$4$], [$5$], [$6$])

#mcq(5, [Evaluate $11 minus.o 38$ in arithmetic modulo $7$.], [$1$], [$6$], [$-6$], [$2$])

#mcq(6, [Calculate $(14 times 19) (mod 5)$.], [$4$], [$1$], [$2$], [$3$])

#mcq(7, [Simplify $(8 times 9 - 15) (mod 7)$.], [$6$], [$2$], [$1$], [$3$])

#mcq(8, [What is the additive inverse of $7$ in arithmetic modulo $11$?], [$3$], [$5$], [$7$], [$4$])

#mcq(9, [Find the multiplicative inverse of $7$ in modulo $10$.], [$3$], [$7$], [$9$], [$2$])

#mcq(10, [Which of the following elements does *NOT* possess a multiplicative inverse in modulo $9$?], [$2$], [$6$], [$4$], [$7$])

#mcq(11, [Evaluate $4 div 7$ in modulo $9$.], [$2$], [$5$], [$7$], [$8$])

#mcq(12, [Find the value of $x$ in ${0, 1, dots, 7}$ such that $5x equiv 3 (mod 8)$.], [$3$], [$5$], [$6$], [$7$])

#mcq(13, [Solve the linear congruence $3x + 5 equiv 1 (mod 7)$ for $0 <= x < 7$.], [$1$], [$2$], [$4$], [$5$])

#mcq(14, [Find the complete truth set of $3x equiv 6 (mod 9)$ within $ZZ_9 = {0, 1, dots, 8}$.], [${2}$], [${2, 5, 8}$], [${2, 6}$], [${3, 6, 8}$])

#mcq(15, [Solve $4x + 2 equiv 0 (mod 6)$ for all $x in {0, 1, 2, 3, 4, 5}$.], [${1}$], [${4}$], [${1, 4}$], [${2, 5}$])

#mcq(16, [Which of the following linear congruences has *NO* solution in integers?], [$5x equiv 4 (mod 9)$], [$3x equiv 6 (mod 9)$], [$4x equiv 2 (mod 9)$], [$6x equiv 4 (mod 9)$])

#mcq(17, [Find *all* values of $x in {0, 1, dots, 11}$ satisfying $x^2 equiv 4 (mod 12)$.], [${2, 4, 8, 10}$], [${2, 10}$], [${2}$], [${2, 6, 10}$])

#mcq(18, [Find the truth set of the quadratic congruence $x^2 + x + 1 equiv 0 (mod 7)$ in $ZZ_7$.], [${1, 5}$], [${2, 4}$], [${3, 6}$], [$emptyset$])

#mcq(19, [In $(ZZ_8, times.o)$, find all *non-zero* elements $x in {1, 2, dots, 7}$ satisfying $4 times.o x = 0$.], [${2}$], [${4}$], [${2, 4, 6}$], [${2, 6}$])

#mcq(20, [Find the remainder when $2^(50)$ is divided by $7$.], [$1$], [$2$], [$3$], [$4$])

#mcq(21, [Evaluate $9^(85) (mod 5)$.], [$4$], [$1$], [$2$], [$3$])

#mcq(22, [What is the units (last) digit of $7^(99)$ when written out in base ten?], [$1$], [$3$], [$7$], [$9$])

#mcq(23, [If today is Friday, what day of the week will it be $100$ days from today?], [Saturday], [Monday], [Sunday], [Tuesday])

#mcq(24, [If today is Tuesday, what day of the week was it $60$ days *ago*?], [Thursday], [Saturday], [Wednesday], [Friday])

#mcq(25, [A 12-hour clock shows $10$ o'clock. What time will it show after $77$ hours?], [$3$ o'clock], [$5$ o'clock], [$2$ o'clock], [$4$ o'clock])

#mcq(26, [A 24-hour digital clock reads $19:00$. What time will it display $80$ hours later?], [$01:00$], [$03:00$], [$05:00$], [$15:00$])

#mcq(27, [Find the *smallest* modulus $n >= 2$ for which $47 equiv 12 (mod n)$ is true.], [$3$], [$7$], [$5$], [$35$])

#mcq(28, [Find the *greatest* integer $m > 1$ for which $53 equiv 17 (mod m)$.], [$9$], [$12$], [$18$], [$36$])

#mcq(29, [Solve the simultaneous congruences $x + y equiv 2 (mod 7)$ and $x - y equiv 4 (mod 7)$ for $(x, y)$ in $ZZ_7$.], [$(3, 6)$], [$(3, 1)$], [$(4, 5)$], [$(6, 3)$])

#mcq(30, [A village market holds every $5$ days. If a market holds on a Monday, on what day of the week will the *fourth* market after that Monday hold?], [Saturday], [Sunday], [Friday], [Wednesday])

#mcq(31, [Evaluate $(3^4 + 4^3) (mod 6)$.], [$5$], [$3$], [$1$], [$0$])

#mcq(32, [Solve $2x - 3 equiv 4x + 5 (mod 9)$ for $x in {0, 1, dots, 8}$.], [$1$], [$4$], [$7$], [$5$])

#mcq(33, [Find the smallest positive integer $x$ satisfying both $x equiv 3 (mod 4)$ and $x equiv 4 (mod 5)$.], [$19$], [$9$], [$14$], [$23$])

#mcq(34, [In arithmetic modulo $6$, evaluate $(5 minus.o 9) times.o (4 plus.o 7)$.], [$2$], [$4$], [$0$], [$5$])

#mcq(35, [What is the remainder when $2^(2025) + 5^(2025)$ is divided by $3$?], [$0$], [$2$], [$1$], [$3$])

// ============================================================================
// ANSWER KEY & FULL STEP-BY-STEP SOLUTIONS
// ============================================================================
== 2.9 Quick Answer Key & Complete Worked Solutions — Chapter 2

#answer-key-grid((
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C",
))

#sol-item(1, "A")[
  Divide $87$ by $9$:
  $ 87 = 9 times 9 + 6 quad arrow.r.double quad 87 mod 9 = 6 $
]

#sol-item(2, "B")[
  First divide $29$ by $6$: $29 = 4 times 6 + 5$, so $r_+ = 5$. Subtract from modulus $6$:
  $ (-29) mod 6 = 6 - 5 = 1 quad ("since " -29 = -5 times 6 + 1) $
]

#sol-item(3, "C")[
  Divide $64$ by $11$: $64 = 5 times 11 + 9$ ($r_+ = 9$). Subtract from $11$:
  $ (-64) mod 11 = 11 - 9 = 2 quad ("since " -64 = -6 times 11 + 2) $
]

#sol-item(4, "D")[
  Sum the integers (or reduce each modulo $8$ first: $1 + 2 + 3 = 6$):
  $ 17 + 26 + 35 = 78 = 9 times 8 + 6 equiv 6 quad (mod 8) $
]

#sol-item(5, "A")[
  Subtract first: $11 - 38 = -27$. Since $27 = 3(7) + 6$, we get $(-27) mod 7 = 7 - 6 = 1$.
]

#sol-item(6, "B")[
  Reduce factors modulo $5$: $14 equiv 4 (mod 5)$ and $19 equiv 4 (mod 5)$.
  $ 14 times 19 equiv 4 times 4 = 16 = 3(5) + 1 equiv 1 quad (mod 5) $
]

#sol-item(7, "C")[
  By BODMAS, $8 times 9 - 15 = 72 - 15 = 57$. Divide by $7$: $57 = 8 times 7 + 1 equiv 1 (mod 7)$.
]

#sol-item(8, "D")[
  The additive inverse of $a != 0$ in $ZZ_n$ is $n - a = 11 - 7 = 4$, since $7 + 4 = 11 equiv 0 (mod 11)$.
]

#sol-item(9, "A")[
  Solve $7x equiv 1 (mod 10)$. Testing $1, 11, 21$: since $21 = 7 times 3$, we obtain $x = 3$.
]

#sol-item(10, "B")[
  An element $a$ has an inverse modulo $9$ iff $gcd(a, 9) = 1$. Since $gcd(6, 9) = 3 != 1$, $6$ has *no* multiplicative inverse in $ZZ_9$.
]

#sol-item(11, "C")[
  Let $x = 4 div 7 (mod 9)$, meaning $7x equiv 4 (mod 9)$. Add $9$ repeatedly to $4$: $4, 13, 22, 31, 40, bold(49)$. Since $7 times 7 = 49$, $x = 7$.
]

#sol-item(12, "D")[
  In $5x equiv 3 (mod 8)$, add $8$ repeatedly to $3$: $3, 11, 19, 27, bold(35)$. Dividing $35$ by $5$ gives $x = 7$.
]

#sol-item(13, "A")[
  Subtract $5$: $3x equiv 1 - 5 = -4 equiv 3 (mod 7)$. Since $gcd(3, 7) = 1$, divide by $3$ to get $x = 1$.
]

#sol-item(14, "B")[
  Here $d = gcd(3, 9) = 3$, and $3 divides 6$, so there are $3$ distinct solutions! Divide all three numbers ($3, 6, 9$) by $3$:
  $ x equiv 2 quad (mod 3) quad arrow.r.double quad x in {2, 5, 8} $
]

#sol-item(15, "C")[
  Rewrite as $4x equiv -2 equiv 4 (mod 6)$. Since $d = gcd(4, 6) = 2$ divides $4$, divide through (including the modulus!) by $2$:
  $ 2x equiv 2 quad (mod 3) quad arrow.r.double quad x equiv 1 quad (mod 3) quad arrow.r.double quad x in {1, 4} $
]

#sol-item(16, "D")[
  Check $gcd(a, 9) divides b$: for $6x equiv 4 (mod 9)$, $gcd(6, 9) = 3$, which does *not* divide $4$! The other three options satisfy $gcd(5,9)=1$, $gcd(3,9)=3 divides 6$, and $gcd(4,9)=1$.
]

#sol-item(17, "A")[
  Testing even residues in $ZZ_(12)$: $2^2 = 4$, $4^2 = 16 equiv 4$, $8^2 = 64 equiv 4$, $10^2 = 100 equiv 4 (mod 12)$. Thus the complete truth set is ${2, 4, 8, 10}$.
]

#sol-item(18, "B")[
  Replace $+1$ by $1 - 7$? Or replace $+x$ by $-6x$: $x^2 - 6x + 8 equiv 0 (mod 7)$ since $8 equiv 1 (mod 7)$! Factoring gives $(x - 2)(x - 4) equiv 0 (mod 7) arrow.r.double x in {2, 4}$.
]

#sol-item(19, "C")[
  We solve $4x equiv 0 (mod 8)$ for $x != 0$. Dividing by $d = gcd(4, 8) = 4$ gives $x equiv 0 (mod 2)$. Excluding $0$, the non-zero solutions in $ZZ_8$ are ${2, 4, 6}$.
]

#sol-item(20, "D")[
  Notice $2^3 = 8 equiv 1 (mod 7)$ (cycle length $3$). Since $50 = 3 times 16 + 2$:
  $ 2^(50) = (2^3)^(16) dot 2^2 equiv 1^(16) dot 4 = 4 quad (mod 7) $
]

#sol-item(21, "A")[
  Since $9 equiv -1 (mod 5)$ and $85$ is odd:
  $ 9^(85) equiv (-1)^(85) = -1 equiv 4 quad (mod 5) $
]

#sol-item(22, "B")[
  Modulo $10$, powers of $7$ cycle every $4$ steps: $7^1 equiv 7, 7^2 equiv 9, 7^3 equiv 3, 7^4 equiv 1$. Since $99 = 4(24) + 3$, the units digit equals the $3$rd entry in the cycle, which is $3$.
]

#sol-item(23, "C")[
  Divide $100$ by $7$: $100 = 14 times 7 + 2 equiv +2 (mod 7)$. Stepping $2$ days forward from Friday gives *Sunday*.
]

#sol-item(24, "D")[
  Divide $60$ by $7$: $60 = 8 times 7 + 4$, so $60$ days *ago* shifts by $-4 equiv +3 (mod 7)$ days. Three days forward from Tuesday (or four days back) is *Friday*.
]

#sol-item(25, "A")[
  Reduce $77$ modulo $12$: $77 = 6 times 12 + 5 equiv +5 (mod 12)$. From $10$ o'clock, $+5$ hours reaches $15 equiv 3$ o'clock.
]

#sol-item(26, "B")[
  On a 24-hour clock: $(19 + 80) mod 24 = 99 mod 24$. Since $99 = 4(24) + 3$, the clock displays $03:00$.
]

#sol-item(27, "C")[
  $47 equiv 12 (mod n) arrow.l.r.double n divides (47 - 12) = 35$. Since $35 = 5 times 7$, the smallest integer divisor $n >= 2$ is $5$.
]

#sol-item(28, "D")[
  $53 equiv 17 (mod m) arrow.l.r.double m divides (53 - 17) = 36$. The greatest positive divisor of $36$ is $36$ itself!
]

#sol-item(29, "A")[
  Add the two congruences: $2x equiv 6 (mod 7) arrow.r.double x = 3$ (since $gcd(2,7)=1$). Then $y equiv 2 - x = 2 - 3 = -1 equiv 6 (mod 7)$, giving $(3, 6)$.
]

#sol-item(30, "B")[
  Four market cycles equal $4 times 5 = 20$ days later. Since $20 = 2(7) + 6 equiv +6 equiv -1 (mod 7)$, $1$ day before Monday is *Sunday*.
]

#sol-item(31, "C")[
  Modulo $6$: $3^k equiv 3 (mod 6)$ for every $k >= 1$, and $4^k equiv 4 (mod 6)$ for every $k >= 1$! Thus $3^4 + 4^3 equiv 3 + 4 = 7 equiv 1 (mod 6)$.
]

#sol-item(32, "D")[
  Rearrange: $2x equiv -8 equiv 1 (mod 9)$. Adding $9$ gives $2x = 10 arrow.r.double x = 5$.
]

#sol-item(33, "A")[
  Notice both congruences say $x equiv -1 (mod 4)$ and $x equiv -1 (mod 5)$! Therefore $x equiv -1 (mod op("lcm")(4, 5)) arrow.r.double x equiv -1 (mod 20)$, giving smallest positive integer $x = 20 - 1 = 19$.
]

#sol-item(34, "B")[
  Modulo $6$: $5 minus.o 9 = (-4) mod 6 = 2$, and $4 plus.o 7 = 11 mod 6 = 5$. Then $2 times.o 5 = 10 mod 6 = 4$.
]

#sol-item(35, "C")[
  Modulo $3$, both $2 equiv -1 (mod 3)$ and $5 equiv -1 (mod 3)$! Since $2025$ is odd:
  $ 2^(2025) + 5^(2025) equiv (-1)^(2025) + (-1)^(2025) = -2 equiv 1 quad (mod 3) $
]
