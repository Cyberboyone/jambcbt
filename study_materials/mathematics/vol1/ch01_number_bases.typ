#import "template.typ": *

#pagebreak()

#chapter-opener(
  1,
  "Number Bases & Positional Numeration",
  subtitle: "Radix Systems (Bases 2 to 10), Bicimals, Direct Base Arithmetic (+, −, ×, ÷) & Unknown-Base Equations",
  syllabus-ref: "JAMB Syllabus Sec. I • Topic 1(a–b)",
  utme-weight: "1 – 2 Questions Every Year (95% Frequency)",
)

#focus-radar(
  objectives: (
    "Understand positional place value and permissible digit sets in bases 2 through 10 (and awareness of base 12/16).",
    "Convert whole numbers and fractional parts (bicimals/radix fractions) between base 10 and any base b.",
    "Convert directly between two non-decimal bases via the Base-10 Bridge and binary grouping.",
    "Perform addition, subtraction, multiplication, and division directly in non-decimal bases.",
    "Formulate and solve linear, quadratic, and simultaneous algebraic equations involving unknown bases.",
  ),
  hotspots: (
    "Binary arithmetic (especially long subtraction with borrowing and difference-of-squares shortcuts).",
    "Quadratic unknown-base equations (e.g., 234_x = 123_10) and rejecting invalid roots!",
    "Converting fractional decimals (such as 0.6875_10) to binary bicimals.",
    "Missing-digit ('cryptarithmetic') addition and subtraction puzzles in base 5, 6, or 8.",
    "Simultaneous equations in two unknown bases (e.g., 23_x = 32_y).",
  ),
  trap-summary: "Over 60% of candidate errors in Number Bases come from two habits: (1) borrowing 10 instead of borrowing the base b during subtraction, and (2) failing to reject a positive algebraic root x when x is less than or equal to a digit appearing in the given numeral!",
)

// ============================================================================
// SECTION 1.1
// ============================================================================
== 1.1 Foundations of Positional Numeration Systems

In everyday life, human beings count, trade, and measure in *base ten* (the *decimal* or *denary* system), an inheritance from our ten fingers. Digital computers, logic gates, and smartphones operate in *base two* (*binary*), where every switch is either `OFF` ($0$) or `ON` ($1$). Traditional West African market counting systems historically used base five (*quinary*), base twelve (*duodecimal*), and base twenty (*vigesimal*).

What makes modern arithmetic so powerful is the *principle of positional place value*: the actual value contributed by a digit depends both on the *face value* of the symbol and on its *position* relative to the radix point.

#concept-box("Radix (Base) and the Fundamental Digit Constraint")[
  A positional numeration system of *base* (or *radix*) $b$, where $b >= 2$ is an integer, uses *exactly $b$ distinct symbols (digits)*:
  $ D_b = {0, 1, 2, 3, dots, b - 1} $
  - *Crucial Rule:* The digit $b$ itself *never* exists in base $b$! Instead, the quantity $b$ is always written as $10_b$ (read _"one-zero base $b$"_, *never* _"ten"_ unless $b = 10$).
  - Every valid numeral $N_b$ must satisfy:
  $ "Largest digit in " N_b < b quad arrow.r.double quad b >= ("Largest digit in " N_b) + 1 $
]

For instance:
- In *Base 2 (Binary)*, allowed digits are ${0, 1}$. A string like $1021_2$ is *mathematically meaningless* because $2 >= 2$.
- In *Base 5 (Quinary)*, allowed digits are ${0, 1, 2, 3, 4}$. The number after $4_5$ is $10_5$; the number after $44_5$ is $100_5$.
- In *Base 8 (Octal)*, allowed digits are ${0, 1, 2, 3, 4, 5, 6, 7}$.
- For bases larger than $10$ (such as *Duodecimal* base $12$ or *Hexadecimal* base $16$, occasionally referenced in Computer Studies and bonus UTME items), capital letters represent single-digit values beyond nine: $A = 10$, $B = 11$, $C = 12$, $D = 13$, $E = 14$, $F = 15$.

=== Place-Value Expansion of Integers and Radix Fractions

Consider a general numeral in base $b$ having both an integer part ($k+1$ digits to the left of the radix point) and a fractional part ($m$ digits to the right of the radix point):
$ N_b = (d_k d_(k-1) dots d_2 d_1 d_0 . d_(-1) d_(-2) dots d_(-m))_b $
Moving *left* from the radix point, place weights multiply successively by $b$ ($b^0 = 1, b^1, b^2, b^3, dots$). Moving *right* from the radix point, place weights divide successively by $b$ ($b^(-1) = 1/b, b^(-2) = 1/b^2, b^(-3) = 1/b^3, dots$).

#formula-box("Master Place-Value Expansion Formula")[
  For any valid base-$b$ numeral $(d_k d_(k-1) dots d_1 d_0 . d_(-1) d_(-2) dots d_(-m))_b$, its exact value in base $10$ is:
  $ N_(10) = sum_(i = -m)^k d_i b^i = d_k b^k + d_(k-1) b^(k-1) + dots + d_1 b^1 + d_0 b^0 + frac(d_(-1), b^1) + frac(d_(-2), b^2) + dots + frac(d_(-m), b^m) $
  Remember that for *every* positive base $b$, the units weight is $b^0 = 1$.
]

#diagram-fig(
  "diagrams/ch01_place_value.svg",
  "Anatomy of positional place value in Base b, using the mixed binary numeral (bicimal) 1101.101_2 = 13.625_10 as a concrete model.",
)

=== Comparative Counting Table Across Common JAMB Bases

Studying how numbers roll over when digits reach $b - 1$ builds instant exam intuition. Notice in the table below how every power $b^k$ is written $1$ followed by $k$ zeros in its own base:

#table(
  columns: (1fr, 1.3fr, 1.1fr, 1.1fr, 1.1fr, 1.1fr),
  inset: 6.5pt,
  align: center + horizon,
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Base 10\ (Decimal)],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Base 2\ (Binary)],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Base 3\ (Ternary)],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Base 4\ (Quaternary)],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Base 5\ (Quinary)],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Base 8\ (Octal)],

  [$0$], [$0_2$], [$0_3$], [$0_4$], [$0_5$], [$0_8$],
  [$1$], [$1_2$], [$1_3$], [$1_4$], [$1_5$], [$1_8$],
  [$2$], [$10_2$], [$2_3$], [$2_4$], [$2_5$], [$2_8$],
  [$3$], [$11_2$], [$10_3$], [$3_4$], [$3_5$], [$3_8$],
  [$4$], [$100_2$], [$11_3$], [$10_4$], [$4_5$], [$4_8$],
  [$5$], [$101_2$], [$12_3$], [$11_4$], [$10_5$], [$5_8$],
  [$7$], [$111_2$], [$21_3$], [$13_4$], [$12_5$], [$7_8$],
  [$8$], [$1000_2$], [$22_3$], [$20_4$], [$13_5$], [$10_8$],
  [$9$], [$1001_2$], [$100_3$], [$21_4$], [$14_5$], [$11_8$],
  [$15$], [$1111_2$], [$120_3$], [$33_4$], [$30_5$], [$17_8$],
  [$16$], [$10000_2$], [$121_3$], [$100_4$], [$31_5$], [$20_8$],
  [$25$], [$11001_2$], [$221_3$], [$121_4$], [$100_5$], [$31_8$],
)

#trap-box("Forgetting That Zero-Weight Columns Still Shift Powers")[
  When expanding a number containing internal zeros such as $20403_5$, never skip the powers of $5$ belonging to the zero digits! Count the positions carefully from *right to left* starting at index $0$:
  - Index $0$ (units): $3 times 5^0 = 3$
  - Index $1$: $0 times 5^1 = 0$
  - Index $2$: $4 times 5^2 = 100$
  - Index $3$: $0 times 5^3 = 0$
  - Index $4$: $2 times 5^4 = 2 times 625 = 1250$
  Total $= 1250 + 100 + 3 = 1353_(10)$. Skipping zero columns shrinks $5^4$ into $5^2$ — a guaranteed distractor!
]

// ============================================================================
// SECTION 1.2
// ============================================================================
== 1.2 Converting Any Base $b$ to Base Ten

JAMB tests three flavours of base-to-decimal conversion: (1) whole numbers, (2) terminating bicimals/radix fractions, and (3) occasionally recurring radix fractions.

=== Method 1: Direct Power-Series Expansion
Assign superscripts $0, 1, 2, dots, k$ from the units digit leftward, and $-1, -2, dots, -m$ from the first fractional digit rightward, then sum $d_i b^i$. Memorizing the first ten powers of $2$ ($2^0 = 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024$) and the first five powers of $3, 4, 5$ makes this instantaneous.

=== Method 2: Horner's Nested Multiplication (Speed CBT Technique)
When a binary or ternary numeral has $7$ or $8$ digits (e.g., $1101011_2$), assigning exponents can invite counting slips under exam pressure. *Horner's scheme* rewrites the polynomial from the inside out:
$ d_3 b^3 + d_2 b^2 + d_1 b + d_0 = ((d_3 dot b + d_2) dot b + d_1) dot b + d_0 $

#shortcut-box("The 'Double-and-Add' Chain for Instant Binary-to-Decimal")[
  To convert any binary integer to base $10$ in 10 seconds using your basic 4-function CBT calculator (or mentally), start with the leftmost digit. At each step moving right: *multiply the running total by $2$ and add the next digit*:
  - Convert $1101011_2$:
    - Start: $1$
    - Next ($1$): $1 times 2 + 1 = 3$
    - Next ($0$): $3 times 2 + 0 = 6$
    - Next ($1$): $6 times 2 + 1 = 13$
    - Next ($0$): $13 times 2 + 0 = 26$
    - Next ($1$): $26 times 2 + 1 = 53$
    - Next ($1$): $53 times 2 + 1 = bold(107_(10))$.
  Zero exponents needed, zero chance of miscounting place positions! The exact same rule works in any base $b$: *multiply running total by $b$, then add the next digit*.
]

=== Converting Repeating (Recurring) Radix Fractions
Suppose an advanced UTME question asks for the base-$10$ fraction equal to the repeating bicimal $x = 0.dot(1)dot(0)_2 = 0.101010 dots_2$. Multiply $x$ by $2^2 = 4_(10)$ (shifting the radix point two binary places right):
$ 4x = 10.101010 dots_2 = 10_2 + x = 2_(10) + x quad arrow.r.double quad 3x = 2 quad arrow.r.double quad x = frac(2, 3) $
In general, if a block of $k$ digits with integer value $P_b$ repeats immediately after the radix point in base $b$, then:
$ (0.overline(d_1 d_2 dots d_k))_b = frac((d_1 d_2 dots d_k)_b, b^k - 1) $

// ============================================================================
// SECTION 1.3
// ============================================================================
== 1.3 Converting Base Ten & Non-Decimal Bases to Target Base $q$

Converting *out* of base ten reverses place-value expansion. Crucially, the integer part and the fractional part obey *opposite* operations!

#diagram-fig(
  "diagrams/ch01_base_bridge.svg",
  "The Universal Base-10 Bridge: to convert N_p to Base q, expand into Base 10 first, then apply successive division (for integers) or successive multiplication (for fractions) into Base q.",
)

=== Algorithm A: Integer Part via Successive Division by $q$
1. Divide the decimal integer $N$ by the target base $q$, recording both the integer *quotient* $Q$ and the *remainder* $R in {0, 1, dots, q-1}$.
2. Replace $N$ by $Q$ and divide by $q$ again, recording each remainder on the right.
3. Stop *only* when the quotient becomes *$0$* (the final remainder will be a non-zero digit $< q$).
4. Read the remainders *from BOTTOM to TOP* (upwards!). The last remainder obtained is the Most Significant Digit (leftmost), and the first remainder obtained is the units digit (rightmost).

=== Algorithm B: Fractional Part via Successive Multiplication by $q$
Why do we *multiply* fractions instead of dividing? Suppose $f = d_(-1) q^(-1) + d_(-2) q^(-2) + d_(-3) q^(-3) < 1$. Multiplying both sides by $q$ gives:
$ q dot f = underbrace(d_(-1), "Integer part") + underbrace((d_(-2) q^(-1) + d_(-3) q^(-2)), "New fraction " < 1) $
Thus multiplying $f$ by $q$ pushes the very first fractional digit $d_(-1)$ across the radix point into the units column!
1. Multiply the decimal fraction $f$ by target base $q$.
2. Record the *integer part* (the digit to the left of the decimal point) and strip it away, keeping *only the remaining fractional part*.
3. Multiply the new fractional part by $q$ again, repeating until the fractional part hits $.000$ (terminating) or starts cycling (recurring).
4. Read the recorded integer parts *from TOP to BOTTOM* (downwards!), placing them after `"0."`.

#diagram-fig(
  "diagrams/ch01_division_vs_mult.svg",
  "Side-by-side comparison of Integer Division (read remainders UPWARD) vs. Fractional Multiplication (read integer carries DOWNWARD) when converting 25.625_10 to 11001.101_2.",
)

#trap-box("Reversing the Arrow Direction on Remainders or Carries")[
  - For *whole numbers* ($25_(10) -> ?_2$), remainders emerge $1, 0, 0, 1, 1$. Reading top-to-bottom gives $10011_2 = 19_(10)$ (*WRONG*, and almost always Option A!). Reading *bottom-to-top* gives $11001_2 = 25_(10)$ (*CORRECT*).
  - For *fractions* ($0.625_(10) -> ?_2$), integer carries emerge $1$, then $0$, then $1$. Reading bottom-to-top gives $0.101_2$ here only by symmetry — for $0.6875_(10)$, carries emerge $1, 0, 1, 1$, so *top-to-bottom* gives $0.1011_2 = 11/16 = 0.6875$ (*CORRECT*), whereas bottom-to-top gives $0.1101_2 = 13/16 = 0.8125$ (*WRONG*)!
]

=== Direct Fast Conversion Between Bases $2$, $4$, and $8$ (Power-of-2 Grouping)
Because $4 = 2^2$ and $8 = 2^3$, you *never* need Base 10 to convert between Binary, Quaternary (Base 4), and Octal (Base 8)!
- *Binary $arrow.l.r$ Base 4 ($2$-bit blocks):* Starting from the radix point (outward in both directions), group binary digits in *pairs* (padding with leading/trailing $0$s if needed) and replace each pair using $00_2=0, 01_2=1, 10_2=2, 11_2=3$.
- *Binary $arrow.l.r$ Base 8 ($3$-bit blocks):* Group binary digits in *triplets* from the radix point and replace each triplet using $000_2=0, 001_2=1, 010_2=2, 011_2=3, 100_2=4, 101_2=5, 110_2=6, 111_2=7$.
  - _Example:_ Convert $1101110.11_2$ to octal. Group in threes away from the point: $(001)(101)(110).(110)_2 = bold(156.6_8)$ in 5 seconds!

// ============================================================================
// SECTION 1.4
// ============================================================================
== 1.4 Basic Operations ($+, -, times, div$) Directly in Base $b$

Although you can convert small numbers to base 10, compute, and convert back, *direct base-$b$ column arithmetic is far faster* for 4- to 6-digit numbers and *mandatory* for solving missing-digit puzzles!

#diagram-fig(
  "diagrams/ch01_carry_borrow.svg",
  "Exact mechanics of column carrying (Addition in Base 5, left) and column borrowing (Subtraction in Base 5, right). Notice that 1 borrowed unit from the next left column always equals +b (here +5), never +10!",
)

=== 1. Column Addition in Base $b$
Add digits column-by-column from right to left (including any incoming carry):
- If the column sum $S < b$, write $S$ directly and carry $0$.
- If $S >= b$, divide $S$ by $b$: $S = q dot b + r$ with $0 <= r < b$. *Write down the remainder $r$* in that column and *carry the quotient $q$* to the next column on the left!
  - _Binary special rules:_ $0+0=0$; $1+0=1$; $1+1 = 2_(10) = 10_2$ (write $0$, carry $1$); $1+1+1 = 3_(10) = 11_2$ (write $1$, carry $1$); $1+1+1+1 = 4_(10) = 100_2$ (write $0$, carry $10_2$, i.e. carry $2$ into next column!).

=== 2. Column Subtraction in Base $b$
Subtract digits column-by-column from right to left (top digit $T$ minus bottom digit $B$):
- If $T >= B$, write $T - B$.
- If $T < B$, *borrow $1$* from the nearest non-zero digit to the left (reducing that left digit by $1$). In the current column, that borrowed $1$ arrives with value *$+b$*, so compute $(T + b) - B$!
- *Borrowing Across Zeros:* Suppose you compute $1000_b - 1_b$. Borrowing $1$ from the $b^3$ column leaves $0$, turns each intermediate $0$ into *$b - 1$* (not $9$, unless $b = 10$!), and adds $+b$ to the rightmost column. Hence:
  $ 1000_5 - 1_5 = 444_5, quad 1000_2 - 1_2 = 111_2, quad 1000_8 - 1_8 = 777_8 $

=== 3. Multiplication and Division in Base $b$
- *Long Multiplication in Base $b$:* Multiply the multiplicand by each digit of the multiplier (reducing each product modulo $b$ with carries), shift partial products leftward by one place per column, and add the partial products *using base-$b$ addition*.
- *Algebraic Identity Shortcut:* When JAMB asks you to evaluate $(111_2)^2 - (101_2)^2$ or $(23_4)^2 - (13_4)^2$, *never* square both numbers! Apply the *difference of two squares* $A^2 - B^2 = (A - B)(A + B)$ either in base $b$ or in base $10$:
  $ (111_2)^2 - (101_2)^2 = 7^2 - 5^2 = (7 - 5)(7 + 5) = 2 times 12 = 24_(10) = 11000_2 $
- *Division in Base $b$:* For clean exact divisions (e.g., $1001110_2 div 110_2$), converting dividend and divisor quickly to base 10 ($78 div 6 = 13_(10) = 1101_2$) takes under 25 seconds and avoids long-division subtraction errors! You can also perform long division directly in base $b$ by testing multiples $1 times D, 2 times D, dots, (b-1) times D$ in base $b$.

// ============================================================================
// SECTION 1.5
// ============================================================================
== 1.5 Algebraic Equations in Unknown Bases

Unknown-base equations are *JAMB's \#1 favourite Section I question type*. They appear in three distinct forms:

#formula-box("Three Canonical Forms of Unknown-Base Equations")[
  1. *Linear Base Equation* (2-digit unknown base):
     $ (a b)_x = K_(10) quad arrow.r.double quad a x + b = K quad ("solve linear equation for " x) $
  2. *Quadratic Base Equation* (3-digit unknown base):
     $ (a b c)_x = K_(10) quad arrow.r.double quad a x^2 + b x + c = K quad arrow.r.double quad a x^2 + b x + (c - K) = 0 $
     Factorize and *test every root* against two mandatory validity conditions:
     - $x$ must be a *positive integer* ($x in ZZ^+, x >= 2$);
     - $x$ must be *strictly greater than every digit* displayed in the base-$x$ numeral ($x > max(a, b, c)$).
  3. *Simultaneous Two-Base System*:
     Given two relations linking $x$ and $y$, such as $(23)_x = (32)_y$ and $x + y = 12$, expand every numeral into Base 10 first:
     $ 2x + 3 = 3y + 2 quad "and" quad x + y = 12 $
     Then solve the resulting simultaneous linear system in ordinary base-10 algebra!
]

#trap-box("Accepting an Algebraic Root That Violates Digit Validity")[
  Suppose an equation involving $(145)_x$ simplifies to $(x - 4)(x - 7) = 0$, giving $x = 4$ or $x = 7$. Even though $x = 4$ is a *positive integer*, look back at the original numeral $(145)_x$: it contains the digits $4$ and $5$! Since base $4$ only allows digits ${0, 1, 2, 3}$, $(145)_4$ cannot exist. You *must* reject $x = 4$ and choose *$x = 7$ alone*! JAMB *always* includes "4 or 7" as a trap option.
]

// ============================================================================
// GRADED WORKED EXAMPLES (1.1 – 1.16)
// ============================================================================
== 1.6 Graded Step-by-Step Worked Examples

#worked-example(
  "1.1",
  "Expanding a 7-Digit Binary Numeral to Base Ten",
  tier: "FOUNDATION",
  source: "UTME Classic",
  [Convert $1101011_2$ to a number in base ten.],
  [
    *Method A — Direct Powers of 2:*
    Label place indices from right ($0$) to left ($6$):
    $ 1101011_2 = 1(2^6) + 1(2^5) + 0(2^4) + 1(2^3) + 0(2^2) + 1(2^1) + 1(2^0) $
    Evaluate each power of $2$:
    $ = 64 + 32 + 0 + 8 + 0 + 2 + 1 = 107_(10) $

    *Method B — Horner's Double-and-Add Check:*
    $ 1 -> 3 -> 6 -> 13 -> 26 -> 53 -> 107_(10) $
    *Final Answer:* $bold(107_(10))$.
  ],
)

#worked-example(
  "1.2",
  "Converting a Mixed Bicimal (Binary Fraction) to Base Ten",
  tier: "FOUNDATION",
  source: "UTME Adaptation",
  [Express $110.101_2$ as a decimal number and as a mixed fraction in base ten.],
  [
    *Step 1 — Expand integer and fractional positions around the binary point:*
    $ 110.101_2 = 1(2^2) + 1(2^1) + 0(2^0) + 1(2^(-1)) + 0(2^(-2)) + 1(2^(-3)) $
    *Step 2 — Convert negative powers to unit fractions:*
    $ = 4 + 2 + 0 + frac(1, 2) + 0 + frac(1, 8) $
    *Step 3 — Combine whole and fractional parts:*
    $ = 6 + frac(4 + 1, 8) = 6 frac(5, 8) = 6 + 0.625 = 6.625_(10) $
    *Final Answer:* $bold(6.625_(10))$ (or $bold(6 frac(5, 8))$).
  ],
)

#worked-example(
  "1.3",
  "Successive Division: Base Ten to Base Five",
  tier: "FOUNDATION",
  [Convert $235_(10)$ to a numeral in base five.],
  [
    *Step 1 — Divide repeatedly by $5$, recording quotients and remainders:*
    - $235 div 5 = 47$ remainder *$0$* (units digit, LSB)
    - $47 div 5 = 9$ remainder *$2$*
    - $9 div 5 = 1$ remainder *$4$*
    - $1 div 5 = 0$ remainder *$1$* (stop since quotient $= 0$; MSB)

    *Step 2 — Read the remainders from bottom to top:*
    $ 235_(10) = 1420_5 $

    *Quick Check:* $1(5^3) + 4(5^2) + 2(5^1) + 0(5^0) = 125 + 100 + 10 + 0 = 235_(10)$ ✓.
    *Final Answer:* $bold(1420_5)$.
  ],
)

#worked-example(
  "1.4",
  "Converting a Base-Ten Decimal Fraction to Binary",
  tier: "UTME STANDARD",
  source: "UTME Past Archetype",
  [Convert $13.6875_(10)$ to base two.],
  [
    *Step 1 — Convert the integer part ($13_(10)$) by repeated division by $2$:*
    - $13 div 2 = 6$ rem $1$
    - $6 div 2 = 3$ rem $0$
    - $3 div 2 = 1$ rem $1$
    - $1 div 2 = 0$ rem $1$
    Reading upward: $13_(10) = 1101_2$.

    *Step 2 — Convert the fractional part ($0.6875_(10)$) by repeated multiplication by $2$:*
    - $0.6875 times 2 = bold(1).375$  $arrow.r$ record integer *$1$*, keep $.375$
    - $0.375 times 2 = bold(0).75$    $arrow.r$ record integer *$0$*, keep $.75$
    - $0.75 times 2 = bold(1).50$     $arrow.r$ record integer *$1$*, keep $.50$
    - $0.50 times 2 = bold(1).00$     $arrow.r$ record integer *$1$*, fraction is $.00$ (stop!)
    Reading *downward* (top to bottom): $0.6875_(10) = 0.1011_2$.

    *Step 3 — Join integer and fractional parts:*
    $ 13.6875_(10) = 1101.1011_2 $
    *Final Answer:* $bold(1101.1011_2)$.
  ],
)

#worked-example(
  "1.5",
  "Non-Decimal to Non-Decimal Conversion via the Base-10 Bridge",
  tier: "UTME STANDARD",
  source: "JAMB 2014 Type",
  [Convert $324_5$ to a numeral in base three.],
  [
    *Step 1 — Expand $324_5$ into Base 10:*
    $ 324_5 = 3(5^2) + 2(5^1) + 4(5^0) = 3(25) + 10 + 4 = 75 + 14 = 89_(10) $

    *Step 2 — Convert $89_(10)$ to Base 3 by successive division by $3$:*
    - $89 div 3 = 29$ rem *$2$*
    - $29 div 3 = 9$ rem *$2$*
    - $9 div 3 = 3$ rem *$0$*
    - $3 div 3 = 1$ rem *$0$*
    - $1 div 3 = 0$ rem *$1$*

    *Step 3 — Read remainders upward (bottom to top):*
    $ 89_(10) = 10022_3 $
    *Check:* $1(81) + 0(27) + 0(9) + 2(3) + 2(1) = 81 + 6 + 2 = 89_(10)$ ✓.
    *Final Answer:* $bold(10022_3)$.
  ],
)

#worked-example(
  "1.6",
  "Rapid Octal-to-Binary-to-Quaternary Grouping Shortcut",
  tier: "UTME STANDARD",
  [Without converting to base ten, express $563_8$ first in base two and then in base four.],
  [
    *Step 1 — Octal ($8 = 2^3$) to Binary:*
    Replace each octal digit by its exact $3$-bit binary block:
    - $5_8 = 101_2$
    - $6_8 = 110_2$
    - $3_8 = 011_2$
    Concatenating: $563_8 = 101110011_2$.

    *Step 2 — Binary to Base Four ($4 = 2^2$):*
    Regroup the $9$ bits into pairs of $2$ starting *from the right* (pad the leftmost single bit with a leading $0$):
    $ (01)(01)(11)(00)(11)_2 $
    Convert each $2$-bit pair ($01_2 = 1, 11_2 = 3, 00_2 = 0$):
    $ = 11303_4 $

    *Final Answer:* $bold(101110011_2)$ and $bold(11303_4)$.
  ],
)

#worked-example(
  "1.7",
  "Direct Column Addition in Base Six",
  tier: "UTME STANDARD",
  [Evaluate $435_6 + 254_6$, leaving your answer in base six.],
  [
    Align columns by place value ($6^2, 6^1, 6^0$) and add right-to-left:
    - *Units column ($6^0$):* $5 + 4 = 9_(10)$. Divide by $6$: $9 = 1 times 6 + 3$. Write *$3$*, carry *$1$*.
    - *Sixes column ($6^1$):* $3 + 5 + 1_("carry") = 9_(10) = 1 times 6 + 3$. Write *$3$*, carry *$1$*.
    - *Thirty-sixes column ($6^2$):* $4 + 2 + 1_("carry") = 7_(10) = 1 times 6 + 1$. Write *$1$*, carry *$1$* to the $6^3$ column.
    - *Leading column ($6^3$):* Bring down the final carry *$1$*.

    *Verification in Base 10:* $435_6 = 144 + 18 + 5 = 167$; $254_6 = 72 + 30 + 4 = 106$; $167 + 106 = 273_(10) = 1(216) + 1(36) + 3(6) + 3 = 1133_6$ ✓.
    *Final Answer:* $bold(1133_6)$.
  ],
)

#worked-example(
  "1.8",
  "Direct Column Subtraction with Multi-Column Borrowing in Base Five",
  tier: "UTME STANDARD",
  [Simplify $4123_5 - 2344_5$ in base five.],
  [
    Work from right to left, remembering that every borrowed unit brings *$+5$* (not $+10$):
    - *Column $5^0$:* $3 < 4$, so borrow $1$ from $2$ in column $5^1$ (leaving $1$). New top value $= 3 + 5 = 8$. Subtract: $8 - 4 = bold(4)$.
    - *Column $5^1$:* Remaining top digit is $1$. Since $1 < 4$, borrow $1$ from $1$ in column $5^2$ (leaving $0$). New top value $= 1 + 5 = 6$. Subtract: $6 - 4 = bold(2)$.
    - *Column $5^2$:* Remaining top digit is $0$. Since $0 < 3$, borrow $1$ from $4$ in column $5^3$ (leaving $3$). New top value $= 0 + 5 = 5$. Subtract: $5 - 3 = bold(2)$.
    - *Column $5^3$:* Remaining top digit is $3$. Subtract: $3 - 2 = bold(1)$.

    Putting the columns together gives $1224_5$.
    *Final Answer:* $bold(1224_5)$.
  ],
)

#worked-example(
  "1.9",
  "Long Multiplication in Base Four",
  tier: "UTME STANDARD",
  [Evaluate $231_4 times 32_4$, leaving your answer in base four.],
  [
    *Method A — Direct Base-4 Partial Products:*
    1. Multiply $231_4$ by units digit $2_4$:
       - $1 times 2 = 2$ (write $2$)
       - $3 times 2 = 6_(10) = 1 times 4 + 2$ (write $2$, carry $1$)
       - $2 times 2 + 1 = 5_(10) = 1 times 4 + 1$ (write $11$)
       First partial product $= 1122_4$.
    2. Multiply $231_4$ by fours digit $3_4$ (shifted left by one place):
       - $1 times 3 = 3$ (write $3$)
       - $3 times 3 = 9_(10) = 2 times 4 + 1$ (write $1$, carry $2$)
       - $2 times 3 + 2 = 8_(10) = 2 times 4 + 0$ (write $20$)
       Second partial product (shifted) $= 20130_4$.
    3. Add in Base 4: $1122_4 + 20130_4$:
       - Col $0$: $2 + 0 = 2$
       - Col $1$: $2 + 3 = 5 = 11_4$ (write $1$, carry $1$)
       - Col $2$: $1 + 1 + 1 = 3$
       - Col $3$: $1 + 0 = 1$
       - Col $4$: $2$
       Result $= 21312_4$.

    *Method B — Rapid Base-10 Bridge Check:*
    $231_4 = 32 + 12 + 1 = 45_(10)$ and $32_4 = 12 + 2 = 14_(10)$. Product $= 45 times 14 = 630_(10) = 2(256) + 1(64) + 3(16) + 1(4) + 2 = 21312_4$ ✓.
    *Final Answer:* $bold(21312_4)$.
  ],
)

#worked-example(
  "1.10",
  "Binary Division & Difference of Two Squares",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [(a) Divide $1001110_2$ by $110_2$. #h(10pt) (b) Find $y$ in base two if $(111_2)^2 - (101_2)^2 = y_2$.],
  [
    *Part (a):*
    Convert quickly via powers of $2$:
    $ 1001110_2 = 64 + 8 + 4 + 2 = 78_(10), quad 110_2 = 4 + 2 = 6_(10) $
    Divide in base 10: $78 div 6 = 13_(10)$.
    Express $13_(10)$ in binary: $13 = 8 + 4 + 0 + 1 = bold(1101_2)$.

    *Part (b):*
    Apply $A^2 - B^2 = (A - B)(A + B)$ where $111_2 = 7_(10)$ and $101_2 = 5_(10)$:
    $ 7^2 - 5^2 = (7 - 5)(7 + 5) = 2 times 12 = 24_(10) $
    Decompose $24_(10)$ into powers of $2$: $24 = 16 + 8 = 1(2^4) + 1(2^3) + 0(2^2) + 0(2^1) + 0(2^0) = bold(11000_2)$.
    *Final Answers:* (a) $bold(1101_2)$; (b) $bold(11000_2)$.
  ],
)

#worked-example(
  "1.11",
  "Missing-Digit ('Cryptarithmetic') Base-5 Puzzle",
  tier: "JAMB CHALLENGE",
  source: "JAMB Classic",
  [In the base-five addition $(2 P 4)_5 + (1 3 Q)_5 = (4 2 2)_5$, find the missing digits $P$ and $Q$.],
  [
    *Step 1 — Inspect the units column ($5^0$):*
    We have $4 + Q$ ending in digit $2$ in base $5$. Since $Q in {0, 1, 2, 3, 4}$, $4 + Q$ cannot equal $2$, so it must equal the next number ending in $2_5$, namely $12_5 = 7_(10)$:
    $ 4 + Q = 7 quad arrow.r.double quad Q = 3 quad ("write " 2, " carry " 1 " to the " 5^1 " column") $

    *Step 2 — Inspect the fives column ($5^1$):*
    Including the carry of $1$, we have $1 + P + 3 = P + 4$, which must end in digit $2$ in base $5$. Again $P >= 0$ implies $P + 4 >= 4$, so $P + 4 = 12_5 = 7_(10)$:
    $ P + 4 = 7 quad arrow.r.double quad P = 3 quad ("write " 2, " carry " 1 " to the " 5^2 " column") $

    *Step 3 — Verify the twenty-fives column ($5^2$):*
    $1_("carry") + 2 + 1 = 4$, which matches the leftmost digit $4$ of $(422)_5$!
    *Final Answer:* $bold(P = 3)$ and $bold(Q = 3)$.
  ],
)

#worked-example(
  "1.12",
  "Quadratic Equation in an Unknown Base",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Find the base $x$ if $234_x = 123_(10)$.],
  [
    *Step 1 — Note digit validity requirement:*
    The digits in $234_x$ are $2, 3, 4$, so any valid base must be an integer satisfying *$x > 4$*.

    *Step 2 — Expand $234_x$ into Base 10 and form a quadratic equation:*
    $ 2x^2 + 3x + 4 = 123 $
    $ 2x^2 + 3x - 119 = 0 $

    *Step 3 — Factorize $2x^2 + 3x - 119 = 0$:*
    We need two integers whose product is $2 times (-119) = -238$ and sum is $+3$. Since $119 = 7 times 17$, notice $+17$ and $-14$ satisfy $17 times (-14) = -238$ and $17 - 14 = +3$:
    $ 2x^2 - 14x + 17x - 119 = 0 $
    $ 2x(x - 7) + 17(x - 7) = 0 quad arrow.r.double quad (2x + 17)(x - 7) = 0 $

    *Step 4 — Filter roots:*
    $x = -17/2$ (rejected: negative and non-integer) or $x = 7$. Since $7 > 4$, $x = 7$ is completely valid!
    *Final Answer:* $bold(x = 7)$.
  ],
)

#worked-example(
  "1.13",
  "Unknown Base Appearing on BOTH Sides of an Equation",
  tier: "JAMB CHALLENGE",
  [Find the number base $n$ for which $23_n times 4_n = 125_n$.],
  [
    *Step 1 — Establish the minimum valid base:*
    The largest digit appearing across $23_n, 4_n, 125_n$ is $5$, so *$n >= 6$*.

    *Step 2 — Expand every numeral into Base 10:*
    - $23_n = 2n + 3$
    - $4_n = 4$
    - $125_n = 1 dot n^2 + 2n + 5$

    *Step 3 — Equate and solve the resulting quadratic:*
    $ 4(2n + 3) = n^2 + 2n + 5 $
    $ 8n + 12 = n^2 + 2n + 5 $
    $ n^2 - 6n - 7 = 0 $
    Factorizing:
    $ (n - 7)(n + 1) = 0 quad arrow.r.double quad n = 7 " or " n = -1 $
    Rejecting $n = -1$ and checking $7 >= 6$ confirms $n = 7$.
    *Final Answer:* $bold(n = 7)$.
  ],
)

#worked-example(
  "1.14",
  "Unknown Base with Linear Expression on the Right-Hand Side",
  tier: "JAMB CHALLENGE",
  [Solve for the valid base $b$ given that $(134)_b = 7b + 16_(10)$.],
  [
    *Step 1 — Record the digit-validity condition FIRST:*
    The numeral $(134)_b$ contains the digit $4$, so any valid base must satisfy *$b > 4$* (i.e. $b >= 5$).

    *Step 2 — Expand $(134)_b$ in powers of $b$:*
    $ 1 dot b^2 + 3b + 4 = 7b + 16 $
    $ b^2 - 4b - 12 = 0 $

    *Step 3 — Factorize and filter roots:*
    $ (b - 6)(b + 2) = 0 quad arrow.r.double quad b = 6 " or " b = -2 $
    Rejecting the negative root $b = -2$ and verifying $6 > 4$ leaves $b = 6$.
    *Check:* $(134)_6 = 36 + 18 + 4 = 58_(10)$, and $7(6) + 16 = 42 + 16 = 58_(10)$ ✓.
    *Final Answer:* $bold(b = 6)$.
  ],
)

#worked-example(
  "1.15",
  "Simultaneous Equations in Two Unknown Bases",
  tier: "JAMB CHALLENGE",
  source: "JAMB Past Paper",
  [If $23_x = 32_y$ and $x + y = 12$, find the values of the bases $x$ and $y$.],
  [
    *Step 1 — Note digit bounds:*
    From $23_x$ and $32_y$, both bases must exceed $3$: $x >= 4$ and $y >= 4$.

    *Step 2 — Convert $23_x = 32_y$ to Base 10:*
    $ 2x + 3 = 3y + 2 quad arrow.r.double quad 2x - 3y = -1 quad dots (1) $
    We are also given:
    $ x + y = 12 quad arrow.r.double quad x = 12 - y quad dots (2) $

    *Step 3 — Substitute (2) into (1):*
    $ 2(12 - y) - 3y = -1 $
    $ 24 - 2y - 3y = -1 $
    $ -5y = -25 quad arrow.r.double quad y = 5 $

    *Step 4 — Back-substitute for $x$:*
    $ x = 12 - 5 = 7 $
    Both $x = 7 > 3$ and $y = 5 > 3$ satisfy digit constraints!
    *Check:* $23_7 = 14 + 3 = 17_(10)$ and $32_5 = 15 + 2 = 17_(10)$ ✓.
    *Final Answer:* $bold(x = 7), quad bold(y = 5)$.
  ],
)

#worked-example(
  "1.16",
  "Converting a Recurring Bicimal & Multi-Base Word Synthesis",
  tier: "JAMB CHALLENGE",
  [A merchant buys $32_5$ crates of eggs in the morning, receives $24_5$ more crates at noon, and sells $41_5$ crates before evening. How many crates remain, expressed in (a) base five, and (b) base two?],
  [
    *Step 1 — Compute directly in Base 5:*
    First add morning and noon stock: $32_5 + 24_5$:
    - Units: $2 + 4 = 6_(10) = 11_5$ (write $1$, carry $1$)
    - Fives: $3 + 2 + 1 = 6_(10) = 11_5$
    Total crates $= 111_5$.

    Now subtract crates sold: $111_5 - 41_5$:
    - Units: $1 - 1 = 0$
    - Fives: $1 < 4$, borrow $1$ from $5^2$ column: $(1 + 5) - 4 = 2$.
    Remaining crates in base five $= bold(20_5)$.

    *Step 2 — Convert $20_5$ to Base 2:*
    $20_5 = 2(5) + 0 = 10_(10)$. In binary, $10_(10) = 8 + 2 = bold(1010_2)$.
    *Final Answers:* (a) $bold(20_5)$; (b) $bold(1010_2)$.
  ],
)

#worked-example(
  "1.17",
  "The Classic Two-Positive-Roots Trap — Rejecting Invalid Digit Bases",
  tier: "JAMB CHALLENGE",
  source: "Chief Examiner Trap",
  [Find all valid values of the number base $x$ satisfying $(104)_x + 17_(10) = 10_(10) times (10)_x$.],
  [
    *Step 1 — Write down the mandatory digit-validity inequality FIRST:*
    Because the numeral $(104)_x$ explicitly displays the digit $4$, the base $x$ *must* be strictly greater than $4$:
    $ x > 4 quad ("that is, " x >= 5) $

    *Step 2 — Expand every base-$x$ numeral into Base 10:*
    - $(104)_x = 1 dot x^2 + 0 dot x + 4 = x^2 + 4$
    - $(10)_x = 1 dot x + 0 = x$

    Substitute into the given equation:
    $ (x^2 + 4) + 17 = 10 x $
    $ x^2 - 10 x + 21 = 0 $

    *Step 3 — Factorize the quadratic equation:*
    $ (x - 3)(x - 7) = 0 quad arrow.r.double quad x = 3 " or " x = 7 $

    *Step 4 — Apply the digit-validity filter:*
    Although $x = 3$ is a positive integer, $(104)_3$ is *impossible* because base $3$ only permits digits ${0, 1, 2}$! Therefore $x = 3$ is an extraneous root and *must be rejected*. Only $x = 7$ satisfies $x > 4$.
    *Check:* $(104)_7 + 17 = (49 + 4) + 17 = 70$, and $10 times (10)_7 = 10 times 7 = 70$ ✓.
    *Final Answer:* $bold(x = 7)$ *only* (never "3 or 7"!).
  ],
)

#worked-example(
  "1.18",
  "Simplifying Binary Algebraic Fractions",
  tier: "UTME STANDARD",
  [Evaluate $frac(1111_2 times 110_2, 1001_2 + 110_2)$, leaving your answer in base two.],
  [
    *Step 1 — Convert each small binary component rapidly to Base 10:*
    - $1111_2 = 8 + 4 + 2 + 1 = 15_(10)$
    - $110_2 = 4 + 2 + 0 = 6_(10)$
    - $1001_2 = 8 + 0 + 0 + 1 = 9_(10)$

    *Step 2 — Simplify the fraction in Base 10:*
    $ frac(15 times 6, 9 + 6) = frac(90, 15) = 6_(10) $

    *Step 3 — Express $6_(10)$ back in Base 2:*
    $ 6_(10) = 4 + 2 + 0 = 110_2 $
    *Final Answer:* $bold(110_2)$.
  ],
)

#worked-example(
  "1.19",
  "Binary Division Leaving Both Quotient and Remainder",
  tier: "UTME STANDARD",
  [Find the quotient and remainder in base two when $101101_2$ is divided by $111_2$.],
  [
    *Step 1 — Convert dividend and divisor to Base 10 (or divide directly):*
    - Dividend: $101101_2 = 32 + 0 + 8 + 4 + 0 + 1 = 45_(10)$
    - Divisor: $111_2 = 4 + 2 + 1 = 7_(10)$

    *Step 2 — Perform Euclidean division in Base 10:*
    $ 45 = 6 times 7 + 3 quad arrow.r.double quad "Quotient" = 6_(10), quad "Remainder" = 3_(10) $

    *Step 3 — Convert both quotient and remainder back to Binary:*
    - Quotient: $6_(10) = 4 + 2 = 110_2$
    - Remainder: $3_(10) = 2 + 1 = 11_2$

    *Check in Binary:* $110_2 times 111_2 + 11_2 = 101010_2 + 11_2 = 101101_2$ ✓.
    *Final Answer:* Quotient $= bold(110_2)$, Remainder $= bold(11_2)$.
  ],
)

#worked-example(
  "1.20",
  "Multi-Base Age Word Problem",
  tier: "JAMB CHALLENGE",
  [A father is $121_6$ years old while his son is $31_5$ years old. Express the positive difference between their ages as a numeral in base two.],
  [
    *Step 1 — Convert both ages into Base 10:*
    - Father's age: $121_6 = 1(6^2) + 2(6^1) + 1(6^0) = 36 + 12 + 1 = 49$ years.
    - Son's age: $31_5 = 3(5^1) + 1(5^0) = 15 + 1 = 16$ years.

    *Step 2 — Compute the age difference in Base 10:*
    $ "Difference" = 49 - 16 = 33_(10) "years" $

    *Step 3 — Decompose $33_(10)$ into powers of $2$:*
    $ 33_(10) = 32 + 1 = 1(2^5) + 0(2^4) + 0(2^3) + 0(2^2) + 0(2^1) + 1(2^0) = 100001_2 $
    *Final Answer:* $bold(100001_2)$.
  ],
)

// ============================================================================
// SECTION 1.7 RAPID-REVISION SUMMARY TABLE
// ============================================================================
== 1.7 Chapter 1 Rapid-Revision Checklist

#table(
  columns: (1.2fr, 2.2fr, 1.6fr),
  inset: 7.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Operation / Concept],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Core Rule / Formula],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Critical Exam Watchpoint],

  [*Valid Digits in Base $b$*],
  [Allowed digits: ${0, 1, 2, dots, b - 1}$. Largest digit $<= b - 1$.],
  [Reject any root $x$ if $x <=$ any digit shown in the base-$x$ numeral!],

  [*Base $b arrow.r$ Base $10$*],
  [$sum d_i b^i$ (left of point: $b^0, b^1, dots$; right: $b^(-1), b^(-2), dots$).],
  [Units digit is always $b^0 = 1$, *never* $b^1$. Do not skip zero digits!],

  [*Base $10 arrow.r$ Base $q$ (Integer)*],
  [Divide repeatedly by $q$ until quotient $= 0$.],
  [Read remainders *UPWARD* (bottom-to-top).],

  [*Base $10 arrow.r$ Base $q$ (Fraction)*],
  [Multiply fractional part repeatedly by $q$.],
  [Read integer carries *DOWNWARD* (top-to-bottom).],

  [*Base $2 arrow.l.r 4 arrow.l.r 8$*],
  [Group bits in pairs ($4 = 2^2$) or triplets ($8 = 2^3$) from the radix point.],
  [Pad *right* of fractional bits with $0$s (e.g., $.11_2 = .110_2 = .6_8$).],

  [*Addition / Subtraction in Base $b$*],
  [Sum $S >= b$: write $S mod b$, carry $floor(S/b)$. Borrow $1 = +b$.],
  [Across zeros, $1000_b - 1_b = (b-1)(b-1)(b-1)_b$.],
)

// ============================================================================
// END-OF-CHAPTER JAMB UTME PRACTICE DRILL (35 QUESTIONS)
// ============================================================================
== 1.8 JAMB UTME Practice Drill — Chapter 1 (35 Questions)

Attempt all 35 questions under strict non-calculator conditions (target time: *30 minutes*). Check your score against the Quick Answer Key and study the full step-by-step solutions that follow.

#mcq(1, [Convert the binary numeral $110110_2$ to base ten.], [$54_(10)$], [$52_(10)$], [$56_(10)$], [$27_(10)$])

#mcq(2, [Express $117_(10)$ as a number in base two.], [$1101101_2$], [$1110101_2$], [$1011101_2$], [$1110011_2$])

#mcq(3, [What is the decimal (base-ten) equivalent of $432_5$?], [$107_(10)$], [$112_(10)$], [$117_(10)$], [$217_(10)$])

#mcq(4, [Convert $243_6$ to a numeral in base four.], [$1302_4$], [$1230_4$], [$3021_4$], [$1203_4$])

#mcq(5, [Evaluate the mixed bicimal $11.101_2$ in base ten.], [$3.625$], [$3.25$], [$3.50$], [$3.875$])

#mcq(6, [Convert the decimal fraction $0.8125_(10)$ to a bicimal (base two).], [$0.1011_2$], [$0.1110_2$], [$0.1001_2$], [$0.1101_2$])

#mcq(7, [Express $23.13_4$ as a decimal number in base ten.], [$11.3125$], [$11.4375$], [$11.5625$], [$9.4375$])

#mcq(8, [Simplify $11011_2 + 10111_2 + 1110_2$, leaving your answer in base two.], [$111110_2$], [$1000010_2$], [$1000000_2$], [$1001000_2$])

#mcq(9, [Find the difference $100101_2 - 11011_2$ in base two.], [$1010_2$], [$1100_2$], [$1011_2$], [$1001_2$])

#mcq(10, [Evaluate $543_7 + 365_7$ in base seven.], [$1231_7$], [$1341_7$], [$1141_7$], [$1241_7$])

#mcq(11, [Simplify $6123_8 - 3567_8$, leaving the result in base eight.], [$2334_8$], [$2434_8$], [$2554_8$], [$2344_8$])

#mcq(12, [Multiply $1101_2$ by $111_2$ and express the product in base two.], [$1010111_2$], [$1101011_2$], [$1011011_2$], [$1001011_2$])

#mcq(13, [Calculate $212_3 times 22_3$ in base three.], [$20121_3$], [$20211_3$], [$21011_3$], [$12211_3$])

#mcq(14, [Divide $111100_2$ by $101_2$.], [$1010_2$], [$1110_2$], [$1001_2$], [$1100_2$])

#mcq(15, [Evaluate $312_4 div 12_4$, leaving your answer in base four.], [$21_4$], [$13_4$], [$22_4$], [$23_4$])

#mcq(16, [Find the unknown base $x$ if $35_x = 29_(10)$.], [$6$], [$7$], [$8$], [$9$])

#mcq(17, [If $234_x = 123_(10)$, find the value of $x$.], [$5$], [$6$], [$8$], [$7$])

#mcq(18, [Determine the positive base $x$ satisfying $104_x = 68_(10)$.], [$8$], [$6$], [$7$], [$9$])

#mcq(19, [Find the number base $n$ in which the addition $23_n + 14_n = 41_n$ is true.], [$5$], [$6$], [$7$], [$8$])

#mcq(20, [In what number base $n$ does the multiplication $23_n times 4_n = 125_n$ hold?], [$6$], [$8$], [$7$], [$9$])

#mcq(21, [Given that $23_x = 32_y$ and $x + y = 12$, find the ordered pair $(x, y)$.], [$(5, 7)$], [$(8, 4)$], [$(6, 6)$], [$(7, 5)$])

#mcq(22, [In the base-six subtraction $(4 P 2)_6 - (1 5 Q)_6 = (2 3 4)_6$, find the digits $P$ and $Q$ respectively.], [$P = 3, Q = 4$], [$P = 2, Q = 4$], [$P = 4, Q = 3$], [$P = 3, Q = 2$])

#mcq(23, [Convert the mixed binary number $111011.11_2$ directly to base eight (octal).], [$73.3_8$], [$73.6_8$], [$163.6_8$], [$67.6_8$])

#mcq(24, [Express the infinitely repeating bicimal $0.101010 dots_2$ ($0.dot(1)dot(0)_2$) as a vulgar fraction in base ten.], [$frac(1, 3)$], [$frac(2, 5)$], [$frac(2, 3)$], [$frac(5, 8)$])

#mcq(25, [If $(111_2)^2 - (101_2)^2 = P_2$, find $P_2$.], [$10100_2$], [$11100_2$], [$10010_2$], [$11000_2$])

#mcq(26, [What is the *smallest* possible integer base $b$ for which the numeral $4062_b$ is mathematically valid?], [$7$], [$6$], [$8$], [$10$])

#mcq(27, [Write the base-ten sum $2^5 + 2^3 + 2^0$ directly as a binary numeral.], [$10101_2$], [$101001_2$], [$100101_2$], [$110001_2$])

#mcq(28, [A fruit seller had $32_5$ mangoes, bought $24_5$ more, and sold $41_5$ of them. How many mangoes are left in base five?], [$14_5$], [$21_5$], [$20_5$], [$22_5$])

#mcq(29, [Find the binary numeral $y_2$ that satisfies $101_2 times y_2 = 100011_2$.], [$101_2$], [$110_2$], [$1001_2$], [$111_2$])

#mcq(30, [If $213_b = 44_8 + 34_6$, find the positive base $b$.], [$5$], [$4$], [$6$], [$7$])

#mcq(31, [Convert the mixed bicimal $10110.011_2$ to base ten.], [$22.25$], [$22.375$], [$22.625$], [$11.375$])

#mcq(32, [Find all valid values of the number base $x$ for which $(104)_x + 17_(10) = 10 x$.], [$3$ only], [$3$ or $7$], [$7$ only], [$5$ only])

#mcq(33, [Simplify $frac(1011_2 + 111_2, 110_2)$, leaving your answer in base two.], [$10_2$], [$11_2$], [$100_2$], [$101_2$])

#mcq(34, [Express $47.625_(10)$ as a mixed numeral in base eight (octal).], [$57.4_8$], [$56.5_8$], [$57.6_8$], [$57.5_8$])

#mcq(35, [If $32_x + 24_y = 37_(10)$ and $x - y = 2$, find the value of $x$.], [$7$], [$6$], [$8$], [$9$])

// ============================================================================
// ANSWER KEY & FULL STEP-BY-STEP SOLUTIONS
// ============================================================================
== 1.9 Quick Answer Key & Complete Worked Solutions — Chapter 1

#answer-key-grid((
  "A", "B", "C", "D", "A", "D", "B", "C", "A", "D",
  "A", "C", "B", "D", "A", "C", "D", "A", "B", "C",
  "D", "A", "B", "C", "D", "A", "B", "C", "D", "A",
  "B", "C", "B", "D", "A",
))

#sol-item(1, "A")[
  Assign place powers from right ($2^0$) to left ($2^5$):
  $ 110110_2 = 1(2^5) + 1(2^4) + 0(2^3) + 1(2^2) + 1(2^1) + 0(2^0) = 32 + 16 + 0 + 4 + 2 + 0 = 54_(10) $
]

#sol-item(2, "B")[
  Decompose $117_(10)$ into descending powers of $2$ (or divide successively by $2$):
  $ 117 = 64 + 32 + 16 + 0(8) + 4 + 0(2) + 1 = 1(2^6) + 1(2^5) + 1(2^4) + 0(2^3) + 1(2^2) + 0(2^1) + 1(2^0) = 1110101_2 $
]

#sol-item(3, "C")[
  Expand in powers of $5$:
  $ 432_5 = 4(5^2) + 3(5^1) + 2(5^0) = 4(25) + 3(5) + 2(1) = 100 + 15 + 2 = 117_(10) $
]

#sol-item(4, "D")[
  Use the Base-10 Bridge. First convert $243_6$ to base ten:
  $ 243_6 = 2(6^2) + 4(6^1) + 3(6^0) = 72 + 24 + 3 = 99_(10) $
  Next divide $99$ repeatedly by $4$: $99 div 4 = 24$ rem $3$; $24 div 4 = 6$ rem $0$; $6 div 4 = 1$ rem $2$; $1 div 4 = 0$ rem $1$. Reading remainders *upward* gives $1203_4$.
]

#sol-item(5, "A")[
  Expand both integer and fractional binary places:
  $ 11.101_2 = 1(2^1) + 1(2^0) + 1(2^(-1)) + 0(2^(-2)) + 1(2^(-3)) = 2 + 1 + 0.5 + 0 + 0.125 = 3.625_(10) $
]

#sol-item(6, "D")[
  Multiply the fractional part successively by $2$ and record the integer carries:
  $ 0.8125 times 2 = bold(1).625, quad 0.625 times 2 = bold(1).25, quad 0.25 times 2 = bold(0).50, quad 0.50 times 2 = bold(1).00 $
  Reading integer parts *downward* gives $0.1101_2$.
]

#sol-item(7, "B")[
  Expand in powers of $4$:
  $ 23.13_4 = 2(4^1) + 3(4^0) + 1(4^(-1)) + 3(4^(-2)) = 8 + 3 + frac(1, 4) + frac(3, 16) = 11 + frac(7, 16) = 11.4375_(10) $
]

#sol-item(8, "C")[
  Convert addends rapidly to base 10: $11011_2 = 27$, $10111_2 = 23$, and $1110_2 = 14$.
  $ 27 + 23 + 14 = 64_(10) = 2^6 = 1000000_2 $
]

#sol-item(9, "A")[
  Via base 10 (or binary borrowing): $100101_2 = 32 + 4 + 1 = 37_(10)$ and $11011_2 = 16 + 8 + 2 + 1 = 27_(10)$.
  $ 37 - 27 = 10_(10) = 8 + 2 = 1010_2 $
]

#sol-item(10, "D")[
  Add column-by-column in base $7$:
  - Units ($7^0$): $3 + 5 = 8_(10) = 1 times 7 + 1 arrow.r$ write $1$, carry $1$.
  - Sevens ($7^1$): $4 + 6 + 1 = 11_(10) = 1 times 7 + 4 arrow.r$ write $4$, carry $1$.
  - Forty-nines ($7^2$): $5 + 3 + 1 = 9_(10) = 1 times 7 + 2 arrow.r$ write $12$.
  Result $= 1241_7$.
]

#sol-item(11, "A")[
  Subtract column-by-column in base $8$ (each borrowed $1$ adds $+8$):
  - $8^0$: $(3 + 8) - 7 = 4$ (leaving $1$ in $8^1$).
  - $8^1$: $(1 + 8) - 6 = 3$ (leaving $0$ in $8^2$).
  - $8^2$: $(0 + 8) - 5 = 3$ (leaving $5$ in $8^3$).
  - $8^3$: $5 - 3 = 2$.
  Result $= 2334_8$.
]

#sol-item(12, "C")[
  $1101_2 = 13_(10)$ and $111_2 = 7_(10)$. Multiply: $13 times 7 = 91_(10)$. Decompose into powers of $2$:
  $ 91 = 64 + 16 + 8 + 0(4) + 2 + 1 = 1011011_2 $
]

#sol-item(13, "B")[
  $212_3 = 2(9) + 3 + 2 = 23_(10)$ and $22_3 = 6 + 2 = 8_(10)$. Product $= 23 times 8 = 184_(10)$. In base $3$:
  $ 184 = 2(81) + 0(27) + 2(9) + 1(3) + 1(1) = 20211_3 $
]

#sol-item(14, "D")[
  $111100_2 = 32 + 16 + 8 + 4 = 60_(10)$ and $101_2 = 4 + 1 = 5_(10)$.
  $ 60 div 5 = 12_(10) = 8 + 4 = 1100_2 $
]

#sol-item(15, "A")[
  $312_4 = 3(16) + 4 + 2 = 54_(10)$ and $12_4 = 4 + 2 = 6_(10)$.
  $ 54 div 6 = 9_(10) = 2(4) + 1 = 21_4 $
]

#sol-item(16, "C")[
  Expand $35_x$ in base 10 (noting $x > 5$):
  $ 3x + 5 = 29 quad arrow.r.double quad 3x = 24 quad arrow.r.double quad x = 8 $
]

#sol-item(17, "D")[
  Expand $234_x$ in base 10 (noting $x > 4$):
  $ 2x^2 + 3x + 4 = 123 quad arrow.r.double quad 2x^2 + 3x - 119 = 0 quad arrow.r.double quad (2x + 17)(x - 7) = 0 $
  Since $x$ must be a positive integer $> 4$, $x = 7$.
]

#sol-item(18, "A")[
  Expand $104_x$ in base 10 (noting $x > 4$):
  $ 1 dot x^2 + 0 dot x + 4 = 68 quad arrow.r.double quad x^2 = 64 quad arrow.r.double quad x = 8 $
]

#sol-item(19, "B")[
  Expand every term into base 10 (requiring $n > 4$):
  $ (2n + 3) + (n + 4) = 4n + 1 quad arrow.r.double quad 3n + 7 = 4n + 1 quad arrow.r.double quad n = 6 $
]

#sol-item(20, "C")[
  Expand into base 10 (requiring $n > 5$):
  $ 4(2n + 3) = n^2 + 2n + 5 quad arrow.r.double quad n^2 - 6n - 7 = 0 quad arrow.r.double quad (n - 7)(n + 1) = 0 $
  Rejecting $n = -1$ leaves $n = 7$.
]

#sol-item(21, "D")[
  From $23_x = 32_y$, we get $2x + 3 = 3y + 2 arrow.r.double 2x - 3y = -1$. Substitute $x = 12 - y$:
  $ 2(12 - y) - 3y = -1 quad arrow.r.double quad 24 - 5y = -1 quad arrow.r.double quad y = 5, quad x = 12 - 5 = 7 $
  Hence $(x, y) = (7, 5)$.
]

#sol-item(22, "A")[
  Rewrite as $(4 P 2)_6 = (2 3 4)_6 + (1 5 Q)_6$.
  - Units ($6^0$): $4 + Q = 12_6 = 8_(10) arrow.r.double Q = 4$ (write $2$, carry $1$).
  - Sixes ($6^1$): $1 + 3 + 5 = 9_(10) = 13_6 arrow.r.double P = 3$ (write $3$, carry $1$).
  - Check $6^2$: $1 + 2 + 1 = 4$ ✓. Thus $P = 3, Q = 4$.
]

#sol-item(23, "B")[
  Group into $3$-bit blocks away from the binary point, padding the fractional right side with one zero:
  $ (111)(011).(110)_2 = 73.6_8 $
]

#sol-item(24, "C")[
  Let $x = 0.101010 dots_2$. Multiply by $2^2 = 4_(10)$:
  $ 4x = 10.101010 dots_2 = 2 + x quad arrow.r.double quad 3x = 2 quad arrow.r.double quad x = frac(2, 3) $
]

#sol-item(25, "D")[
  Use difference of two squares with $111_2 = 7$ and $101_2 = 5$:
  $ P_(10) = 7^2 - 5^2 = (7 - 5)(7 + 5) = 2 times 12 = 24_(10) = 16 + 8 = 11000_2 $
]

#sol-item(26, "A")[
  The largest digit in $4062_b$ is $6$. Since every digit in base $b$ must satisfy $d < b$, we require $b >= 6 + 1 = 7$.
]

#sol-item(27, "B")[
  Place $1$ in columns $2^5, 2^3, 2^0$ and $0$ in columns $2^4, 2^2, 2^1$:
  $ 1(2^5) + 0(2^4) + 1(2^3) + 0(2^2) + 0(2^1) + 1(2^0) = 101001_2 $
]

#sol-item(28, "C")[
  Convert to base 10: $32_5 = 17$, $24_5 = 14$, $41_5 = 21$.
  $ "Remaining" = 17 + 14 - 21 = 10_(10) = 2(5) + 0 = 20_5 $
]

#sol-item(29, "D")[
  $101_2 = 5_(10)$ and $100011_2 = 32 + 2 + 1 = 35_(10)$.
  $ 5 y = 35 quad arrow.r.double quad y = 7_(10) = 4 + 2 + 1 = 111_2 $
]

#sol-item(30, "A")[
  Evaluate RHS in base 10: $44_8 = 32 + 4 = 36_(10)$ and $34_6 = 18 + 4 = 22_(10)$, giving $36 + 22 = 58_(10)$.
  $ 2b^2 + b + 3 = 58 quad arrow.r.double quad 2b^2 + b - 55 = 0 quad arrow.r.double quad (2b + 11)(b - 5) = 0 $
  Since $b > 3$, $b = 5$.
]

#sol-item(31, "B")[
  Expand integer and fractional parts:
  $ 10110.011_2 = (16 + 4 + 2) + (0 + frac(1, 4) + frac(1, 8)) = 22 + 0.25 + 0.125 = 22.375_(10) $
]

#sol-item(32, "C")[
  Digit validity requires $x > 4$ (because of digit $4$ in $(104)_x$). Expanding gives:
  $ x^2 + 4 + 17 = 10 x quad arrow.r.double quad x^2 - 10 x + 21 = 0 quad arrow.r.double quad (x - 3)(x - 7) = 0 $
  Since $3 <= 4$, $x = 3$ is invalid! Only $x = 7$ is valid.
]

#sol-item(33, "B")[
  Convert components to base 10: $1011_2 = 11$, $111_2 = 7$, and $110_2 = 6$.
  $ frac(11 + 7, 6) = frac(18, 6) = 3_(10) = 11_2 $
]

#sol-item(34, "D")[
  Integer part: $47 div 8 = 5$ rem $7 arrow.r 57_8$. Fractional part: $0.625 times 8 = bold(5).00 arrow.r .5_8$. Combining gives $57.5_8$.
]

#sol-item(35, "A")[
  Expand $32_x + 24_y = 37$: $(3x + 2) + (2y + 4) = 37 arrow.r.double 3x + 2y = 31$. Substitute $y = x - 2$:
  $ 3x + 2(x - 2) = 31 quad arrow.r.double quad 5x - 4 = 31 quad arrow.r.double quad 5x = 35 quad arrow.r.double quad x = 7 $
  (Then $y = 5 > 4$, so all digits in $32_7$ and $24_5$ are valid ✓.)
]
