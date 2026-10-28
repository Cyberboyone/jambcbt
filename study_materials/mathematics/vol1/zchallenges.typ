#import "template.typ": *

#pagebreak()

#current-chapter.update("Appendix H: Thirty Additional Graded Worked Examples")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Thirty Additional Graded Worked Examples]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Once the chapter examples are secure, work through this second tier: same methods, less scaffolding. Every line of reasoning is still written out so that nothing is assumed.
  ]
]

#v(4pt)
== H.1 Number Bases & Modular Arithmetic

#worked-example(
  "H.1",
  "Two-Stage Base Conversion Through Ten",
  tier: "UTME STANDARD",
  [Convert $4321_5$ to a numeral in base seven.],
  [
    *Step 1 — Expand into base ten:*
    $ 4321_5 = 4(125) + 3(25) + 2(5) + 1 = 500 + 75 + 10 + 1 = 586_(10) $

    *Step 2 — Divide repeatedly by seven:*
    - $586 div 7 = 83$ rem $5$
    - $83 div 7 = 11$ rem $6$
    - $11 div 7 = 1$ rem $4$
    - $1 div 7 = 0$ rem $1$

    *Step 3 — Read remainders upward:* $bold(1465_7)$.
  ],
)

#worked-example(
  "H.2",
  "Binary Long Multiplication with Binary Addition",
  tier: "UTME STANDARD",
  [Evaluate $11011_2 times 1011_2$, giving the answer in base two.],
  [
    *Step 1 — Convert, since both numbers are short:* $11011_2 = 27$, $1011_2 = 11$, so the product is $297_(10)$.

    *Step 2 — Convert back by place value:* $297 = 256 + 32 + 8 + 1 = 2^8 + 2^5 + 2^3 + 2^0$.

    *Step 3 — Fill every column from $2^8$ down to $2^0$:* $bold(100101001_2)$.
  ],
)

#worked-example(
  "H.3",
  "Negative Residue of a Three-Digit Number",
  tier: "UTME STANDARD",
  [Find the least non-negative residue of $-123$ modulo $17$.],
  [
    *Step 1 — Divide the magnitude:* $123 = 7(17) + 4$, so the positive remainder is $4$.

    *Step 2 — Subtract from the modulus:* $17 - 4 = bold(13)$.

    *Check:* $-123 = (-8)(17) + 13$ ✓.
  ],
)

#worked-example(
  "H.4",
  "Linear Congruence with Three Solutions",
  tier: "JAMB CHALLENGE",
  [Find all $x in {0, 1, dots, 14}$ satisfying $9x equiv 6 (mod 15)$.],
  [
    *Step 1 — Compute $d = gcd(9, 15) = 3$.* Since $3 divides 6$, there are exactly *three* solutions.

    *Step 2 — Divide $a$, $b$ and the modulus by $3$:* $3x equiv 2 (mod 5)$. Adding $5$ to the right gives $3x = 12$, so $x equiv 4 (mod 5)$.

    *Step 3 — List with step $15 / 3 = 5$:* $bold(x in {4, 9, 14})$.
  ],
)

== H.2 Fractions, Ratio & Commercial Mathematics

#worked-example(
  "H.5",
  "Three-Term Fraction with Mixed Denominators",
  tier: "FOUNDATION",
  [Simplify $frac(3, 8) + frac(5, 12) - frac(7, 24)$.],
  [
    *Step 1 — Use $"LCM"(8, 12, 24) = 24$ for all three terms:* $frac(9, 24) + frac(10, 24) - frac(7, 24)$.

    *Step 2 — Combine numerators:* $frac(9 + 10 - 7, 24) = frac(12, 24) = bold(frac(1, 2))$.
  ],
)

#worked-example(
  "H.6",
  "Recurring Decimal with One Repeating Digit",
  tier: "UTME STANDARD",
  [Express $0.7dot(4)dot(2)$ as a fraction in lowest terms.],
  [
    *Step 1 — Two digits repeat after one non-repeating digit, so the denominator is $990$:*
    $0.7dot(4)dot(2) = frac(742 - 7, 990) = frac(735, 990)$.

    *Step 2 — Cancel the common factor $15$:* $frac(735 div 15, 990 div 15) = frac(49, 66) = bold(frac(49, 66))$.
  ],
)

#worked-example(
  "H.7",
  "Maximum Percentage Error of a Rounded Mass",
  tier: "UTME STANDARD",
  [A bag of flour is recorded as $2.5$ kg, correct to one decimal place. Find the maximum possible percentage error.],
  [
    *Step 1 — Half-unit tolerance:* $u = 0.1$ kg, so the maximum absolute error is $0.05$ kg.

    *Step 2 — Divide by the stated value:* $frac(0.05, 2.5) times 100% = 2.0%$.
  ],
)

#worked-example(
  "H.8",
  "Inverse Proportion with a New Workforce",
  tier: "UTME STANDARD",
  [If $28$ men complete a drainage channel in $35$ days, how many days would $84$ men take at the same rate?],
  [
    *Step 1 — Man-days remain constant:* $28 times 35 = 980$ man-days.

    *Step 2 — Divide by the new workforce:* $980 div 84 = bold(11.67 " days approx")$. Since the answer is not an integer, state it as $11 frac(2, 3)$ days or approximately $11.67$ days — a reminder that JAMB sometimes asks for the nearest whole day ($12$).
  ],
)

#worked-example(
  "H.9",
  "Round Trip at Two Speeds",
  tier: "UTME STANDARD",
  [A driver travels to a town at $72$ km/h and returns along the same road at $48$ km/h. Find the average speed for the round trip.],
  [
    *Step 1 — Apply the harmonic mean for equal distances:*
    $ v = frac(2(72)(48), 72 + 48) = frac(6912, 120) = bold(57.6 " km/h") $

    *Check:* with a one-way distance of $144$ km, the times are $2$ h and $3$ h, so $288 div 5 = 57.6$ ✓.
  ],
)

#worked-example(
  "H.10",
  "Cistern with Two Inlets and a Leak",
  tier: "JAMB CHALLENGE",
  [Tap A fills a tank in $9$ hours, tap B in $12$ hours, and a leak empties a full tank in $36$ hours. With all three active and the tank initially empty, how long does filling take?],
  [
    *Step 1 — Net rate over $"LCM"(9, 12, 36) = 36$:* $frac(1, 9) + frac(1, 12) - frac(1, 36) = frac(4 + 3 - 1, 36) = frac(6, 36) = frac(1, 6)$.

    *Step 2 — Invert:* $T = bold(6 " hours")$.
  ],
)

#worked-example(
  "H.11",
  "Compound Interest Over Two Years at 5%",
  tier: "UTME STANDARD",
  [Find the compound interest on ₦$180000$ for $2$ years at $5%$ per annum.],
  [
    *Step 1 — Compute the amount:* $A = 180000(1.05)^2 = 180000 times 1.1025 = 198450$.

    *Step 2 — Subtract the principal:* $198450 - 180000 = bold("₦"18450)$.
  ],
)

#worked-example(
  "H.12",
  "Reducing-Balance Depreciation",
  tier: "UTME STANDARD",
  [A generator valued at ₦$300000$ depreciates by $15%$ each year. Find its value after two years.],
  [
    *Step 1 — Chain the survival factors:* $V_2 = 300000(0.85)^2 = 300000 times 0.7225$.

    *Step 2 — Multiply:* $V_2 = bold("₦"216750)$.
  ],
)

#worked-example(
  "H.13",
  "Dividend and Yield on 60-Kobo Shares",
  tier: "JAMB CHALLENGE",
  [An investor buys $5000$ shares of nominal value $60$ kobo at a market price of ₦$1.50$ each. If a $25%$ dividend is declared, find the total dividend and the percentage yield.],
  [
    *Step 1 — Compute the dividend on NOMINAL value:* $5000 times 0.60 times 0.25 = bold("₦"750)$.

    *Step 2 — Compute the cost:* $5000 times 1.50 = "₦"7500$.

    *Step 3 — Yield:* $frac(750, 7500) times 100% = bold(10%)$.
  ],
)

== H.3 Indices, Logarithms & Surds

#worked-example(
  "H.14",
  "Fractional Power of a Whole Number",
  tier: "FOUNDATION",
  [Evaluate $125^(2/3)$.],
  [
    *Step 1 — Take the cube root first:* $root(3, 125) = 5$.

    *Step 2 — Square the result:* $5^2 = bold(25)$.
  ],
)

#worked-example(
  "H.15",
  "Negative Fractional Power of a Fraction",
  tier: "UTME STANDARD",
  [Evaluate $(frac(16, 81))^(-3/4)$.],
  [
    *Step 1 — Flip the fraction to clear the negative sign:* $(frac(81, 16))^(3/4)$.

    *Step 2 — Take fourth roots:* $root(4, 81) = 3$ and $root(4, 16) = 2$.

    *Step 3 — Cube:* $(frac(3, 2))^3 = bold(frac(27, 8))$.
  ],
)

#worked-example(
  "H.16",
  "Disguised Quadratic with a Double Root",
  tier: "JAMB CHALLENGE",
  [Solve $3^(2x) - 28(3^x) + 27 = 0$.],
  [
    *Step 1 — Let $u = 3^x$, so $3^(2x) = u^2$:* $u^2 - 28u + 27 = 0$.

    *Step 2 — Factor:* $(u - 1)(u - 27) = 0$, giving $u = 1$ or $u = 27$ (both positive, both admissible).

    *Step 3 — Back-substitute:* $3^x = 1 arrow.r x = 0$, and $3^x = 27 arrow.r x = 3$.
  ],
)

#worked-example(
  "H.17",
  "Quadratic in log_2 x",
  tier: "UTME STANDARD",
  [Solve $(log_2 x)^2 - 5 log_2 x + 6 = 0$.],
  [
    *Step 1 — Let $u = log_2 x$:* $(u - 2)(u - 3) = 0$.

    *Step 2 — Back-substitute:* $log_2 x = 2 arrow.r x = 4$; $log_2 x = 3 arrow.r x = 8$. Both satisfy $x > 0$.
  ],
)

#worked-example(
  "H.18",
  "Logarithm of a Cube Root",
  tier: "JAMB CHALLENGE",
  [Given $log_(10) 2 = 0.3010$, evaluate $log_(10) root(3, 0.064)$.],
  [
    *Step 1 — Write the radicand as a power:* $0.064 = frac(64, 1000) = frac(2^6, 10^3)$, so $root(3, 0.064) = frac(2^2, 10^1) = 0.4$.

    *Step 2 — Take the logarithm:* $log_(10) 0.4 = log_(10)(4 / 10) = 2(0.3010) - 1 = bold(-0.3980)$.
  ],
)

#worked-example(
  "H.19",
  "Rationalizing a Sum of Two Surds",
  tier: "UTME STANDARD",
  [Simplify $frac(2, sqrt(7) - sqrt(5))$ with a rational denominator.],
  [
    *Step 1 — Multiply by the conjugate $(sqrt(7) + sqrt(5))$ over $7 - 5 = 2$:*
    $ frac(2(sqrt(7) + sqrt(5)), 2) = bold(sqrt(7) + sqrt(5)) $.
  ],
)

#worked-example(
  "H.20",
  "Square Root of a Binomial Surd (Unit-Norm Case)",
  tier: "JAMB CHALLENGE",
  [Simplify $sqrt(9 + 4 sqrt(2))$.],
  [
    *Step 1 — Write $4 sqrt(2) = 2 sqrt(8)$ so the outer coefficient is $2$:* $sqrt(9 + 2 sqrt(8))$.

    *Step 2 — Seek $x > y$ with $x + y = 9$ and $x y = 8$:* $x = 8, y = 1$.

    *Step 3 — Apply the formula with the larger root first:* $sqrt(8) + sqrt(1) = bold(2 sqrt(2) + 1)$.
  ],
)

#worked-example(
  "H.21",
  "Radical Equation Requiring Two Squarings",
  tier: "JAMB CHALLENGE",
  [Solve $sqrt(x + 7) - sqrt(x) = 1$.],
  [
    *Step 1 — Isolate:* $sqrt(x + 7) = 1 + sqrt(x)$.

    *Step 2 — Square:* $x + 7 = 1 + 2 sqrt(x) + x$, so $6 = 2 sqrt(x)$ and $sqrt(x) = 3$.

    *Step 3 — Square again:* $x = 9$. *Check:* $sqrt(16) - sqrt(9) = 1$ ✓.
  ],
)

== H.4 Sets, Diagrams & Mixed Synthesis

#worked-example(
  "H.22",
  "Two-Set Problem with an Outside Group",
  tier: "UTME STANDARD",
  [In a class of $100$ students, $60$ offer Biology, $55$ offer Chemistry and $25$ offer both. How many offer neither science?],
  [
    *Step 1 — Compute the union:* $60 + 55 - 25 = 90$.

    *Step 2 — Subtract from the universal set:* $100 - 90 = bold(10)$.
  ],
)

#worked-example(
  "H.23",
  "Three-Set Inclusion–Exclusion",
  tier: "UTME STANDARD",
  [Given $n(A) = 35$, $n(B) = 28$, $n(C) = 22$, $n(A inter B) = 12$, $n(A inter C) = 9$, $n(B inter C) = 7$, $n(A inter B inter C) = 3$, find $n(A union B union C)$.],
  [
    *Step 1 — Sum singles:* $35 + 28 + 22 = 85$.

    *Step 2 — Subtract pairs:* $85 - (12 + 9 + 7) = 85 - 28 = 57$.

    *Step 3 — Add back the triple:* $57 + 3 = bold(60)$.
  ],
)

#worked-example(
  "H.24",
  "Exactly-One Count from a Three-Set Diagram",
  tier: "JAMB CHALLENGE",
  [With $n(A) = 25$, $n(B) = 18$, and $n(A inter B) = 8$, and with no element belonging to any third set, how many belong to exactly one of $A$ and $B$?],
  [
    *Step 1 — Apply the symmetric difference formula:*
    $ n(A triangle.t B) = 25 + 18 - 2(8) = 43 - 16 = bold(27) $.
  ],
)

#worked-example(
  "H.25",
  "Subset Counting with a Condition",
  tier: "UTME STANDARD",
  [A set $S$ has $8$ elements. How many of its subsets contain at least two elements?],
  [
    *Step 1 — Count the excluded cases:* the empty set ($1$) and the eight singletons ($8$).

    *Step 2 — Subtract from the total:* $2^8 - 1 - 8 = 256 - 9 = bold(247)$.
  ],
)

#worked-example(
  "H.26",
  "Mixed Base-and-Modulo Synthesis",
  tier: "JAMB CHALLENGE",
  [A number $N$ written in base five is $324_5$. Find $N mod 7$.],
  [
    *Step 1 — Convert to base ten:* $324_5 = 3(25) + 2(5) + 4 = 75 + 10 + 4 = 89$.

    *Step 2 — Reduce modulo seven:* $89 = 12(7) + 5$, so $N equiv bold(5) (mod 7)$.
  ],
)

#worked-example(
  "H.27",
  "Commercial Synthesis — Discount then VAT",
  tier: "UTME STANDARD",
  [A trader lists an item at ₦$25000$, allows a $12%$ trade discount, and then charges $7.5%$ VAT on the discounted price. Find the amount the customer pays.],
  [
    *Step 1 — Apply the discount:* $0.88 times 25000 = "₦"22000$.

    *Step 2 — Add VAT:* $22000 times 1.075 = 22000 + 1650 = bold("₦"23650)$.
  ],
)

#worked-example(
  "H.28",
  "Indices and Surds Combined",
  tier: "JAMB CHALLENGE",
  [Simplify $frac(2^(n+2) times 8^(n-1), 4^(2n))$ in the form $2^(a n + b)$.],
  [
    *Step 1 — Convert all bases to $2$:* $8^(n-1) = 2^(3n-3)$ and $4^(2n) = 2^(4n)$.

    *Step 2 — Combine exponents in the numerator:* $2^(n+2) times 2^(3n-3) = 2^(4n-1)$.

    *Step 3 — Apply the quotient law:* $2^(4n-1-4n) = bold(2^(-1) = frac(1, 2))$, independent of $n$.
  ],
)

#worked-example(
  "H.29",
  "Logarithmic Equation with a Reverse Filter",
  tier: "JAMB CHALLENGE",
  [Solve $log_4 (x + 3) + log_4 (x - 3) = 1$.],
  [
    *Step 1 — Domain requires $x > 3$. Condense:* $(x + 3)(x - 3) = 4^1 = 4$.

    *Step 2 — Solve:* $x^2 - 9 = 4 arrow.r x^2 = 13 arrow.r x = plus.minus sqrt(13)$.

    *Step 3 — Filter:* only $x = bold(sqrt(13))$ satisfies $x > 3$; the negative root is rejected.
  ],
)

#worked-example(
  "H.30",
  "Full Multi-Chapter Synthesis",
  tier: "JAMB CHALLENGE",
  [A trader buys an item for ₦$8000$ and marks it up by $25%$. He then sells it at a $10%$ discount and pays $7.5%$ VAT on the sale. Find his profit percentage on cost.],
  [
    *Step 1 — Marked price:* $1.25 times 8000 = "₦"10000$.

    *Step 2 — Selling price after discount:* $0.90 times 10000 = "₦"9000$ (VAT is collected for the government and is not part of his revenue).

    *Step 3 — Profit percentage:* $frac(9000 - 8000, 8000) times 100% = bold(12.5%)$.
  ],
)

#pagebreak()

#current-chapter.update("Appendix I: Twenty Advanced Challenge Problems")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Twenty Advanced Challenge Problems]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    These multi-step problems combine two or more chapters. They are harder than the real paper — deliberately — so that the actual examination feels routine. Attempt each before reading the solution.
  ]
]

#v(4pt)
== I.1 The Problems

Sit these in one continuous thirty-minute block. Each requires at least two steps and most combine two chapters.

#mcq(1, [In base six, $1234_6 = 310_(10)$. Find the remainder when $310_(10)$ is divided by $24_6$.], [$4$], [$6$], [$10$], [$16$])

#mcq(2, [If $k$ is the least non-negative residue of $-47$ modulo $12$, find the least non-negative residue of $k^2$ modulo $7$.], [$1$], [$2$], [$4$], [$0$])

#mcq(3, [A trader allows a $20%$ discount on the marked price and the discounted price still exceeds his cost by $25%$ of cost. Find the markup percentage on cost.], [$50%$], [$45%$], [$56.25%$], [$40%$])

#mcq(4, [How many integers from $1$ to $500$ inclusive are divisible by $6$ but not by $9$?], [$56$], [$83$], [$72$], [$65$])

#mcq(5, [Simplify $sqrt(3 + 2 sqrt(2)) + sqrt(3 - 2 sqrt(2))$.], [$2 sqrt(2)$], [$2$], [$3$], [$sqrt(2)$])

#mcq(6, [If $log_2 3 = p$, express $log_(12) 18$ in terms of $p$.], [$frac(2p + 1, p + 2)$], [$frac(p + 2, 2p + 1)$], [$frac(2p - 1, p + 2)$], [$frac(3p, p + 2)$])

#mcq(7, [A sum invested at compound interest doubles in $5$ years. Its value after $20$ years is how many times the original sum?], [$16$], [$8$], [$12$], [$20$])

#mcq(8, [In a class, $60%$ like tea, $50%$ like coffee and $10%$ like neither. If $60$ students like both, how many students are in the class?], [$150$], [$180$], [$120$], [$200$])

#mcq(9, [Find the least positive integer $n$ for which $2^n equiv 1 (mod 9)$.], [$6$], [$9$], [$3$], [$12$])

#mcq(10, [If $frac(a + sqrt(b), a - sqrt(b)) = 7 + 4 sqrt(3)$ for positive integers $a$ and square-free $b$, find $a + b$.], [$5$], [$7$], [$6$], [$12$])

#mcq(11, [A debt of ₦$120000$ is repaid in $12$ equal monthly instalments together with simple interest at $10%$ per annum charged on the whole debt for one year. Find the monthly instalment.], [$11000$], [$10000$], [$12000$], [$11500$])

#mcq(12, [How many integers from $1$ to $600$ inclusive are divisible by exactly two of the numbers $2$, $3$ and $5$?], [$140$], [$180$], [$160$], [$120$])

#mcq(13, [If $x = sqrt(3) + sqrt(2)$, evaluate $x^2 + frac(1, x^2)$.], [$10$], [$8$], [$12$], [$14$])

#mcq(14, [Given $log_(10) 2 = 0.3010$ and $log_(10) 3 = 0.4771$, find $log_(10) 1.2$.], [$0.0791$], [$0.1761$], [$0.0912$], [$0.3010$])

#mcq(15, [A retailer allows a $5%$ discount for cash and still makes $18.5%$ profit on cost. Find his markup percentage on cost, to the nearest whole number.], [$25%$], [$20%$], [$24%$], [$30%$])

#mcq(16, [Find all real solutions of $sqrt(3x + 1) - sqrt(x - 1) = 2$.], [$x = 1$ or $x = 5$], [$x = 5$ only], [$x = 1$ only], [$x = 0$ or $x = 5$])

#mcq(17, [If $n(A) = 40$, $n(B) = 34$ and $n(A union B) = 60$, how many elements belong to exactly one of the two sets?], [$46$], [$28$], [$34$], [$40$])

#mcq(18, [Evaluate $9^(log_3 2) + 16^(log_2 3)$.], [$85$], [$100$], [$73$], [$97$])

#mcq(19, [A trader mixes $2$ kg of coffee at ₦$3000$ per kg, $3$ kg at ₦$4000$ per kg and $5$ kg at ₦$5000$ per kg. Find the cost per kg of the blend.], [$4300$], [$4000$], [$4500$], [$4200$])

#mcq(20, [Find the value of $x$ for which $log_2 (x - 1) + log_2 (x + 1) = 3$.], [$x = 3$], [$x = 5$], [$x = 1$], [$x = 7$])

== I.2 Answer Key and Full Solutions

#answer-key-grid((
  "B", "A", "C", "A", "A", "A", "A", "A", "A", "A",
  "A", "A", "A", "A", "A", "A", "A", "A", "A", "A",
))

#sol-item(1, "B")[
  *Chapters 1 and 2.* $24_6 = 2(6) + 4 = 16_(10)$. Divide: $310 = 16(19) + 6$, so the remainder is $bold(6)$ (and indeed $6 < 16$ as a valid remainder requires). Note that the remainder $6$ is written simply as $6$ because any digit below the divisor base is unchanged.
]

#sol-item(2, "A")[
  *Chapter 2.* $47 = 3(12) + 11$, so $-47 equiv 12 - 11 = 1 (mod 12)$, giving $k = 1$. Then $k^2 = 1$, and $1 equiv bold(1) (mod 7)$.
]

#sol-item(3, "C")[
  *Chapter 5.* Let the cost be $C$ and the marked price be $M$. The selling price is $0.80 M$, and it exceeds cost by $25%$ of cost, so $0.80 M = 1.25 C$. Hence $M = frac(1.25, 0.80) C = 1.5625 C$, a markup of $bold(56.25%)$.
]

#sol-item(4, "A")[
  *Chapter 9.* Multiples of $6$ up to $500$: $floor(500/6) = 83$. Multiples of both $6$ and $9$, i.e. multiples of $op("lcm")(6, 9) = 18$: $floor(500/18) = 27$. Therefore $83 - 27 = bold(56)$.
]

#sol-item(5, "A")[
  *Chapter 8.* $sqrt(3 + 2 sqrt(2)) = sqrt(2) + 1$ and $sqrt(3 - 2 sqrt(2)) = sqrt(2) - 1$. Their sum is $bold(2 sqrt(2))$.
]

#sol-item(6, "A")[
  *Chapter 7.* $log_(12) 18 = frac(log_2 18, log_2 12) = frac(2p + 1, p + 2)$, since $18 = 2 times 3^2$ and $12 = 2^2 times 3$.
]

#sol-item(7, "A")[
  *Chapter 5.* Doubling every $5$ years means the value is multiplied by $2^(20/5) = 2^4 = bold(16)$ after $20$ years.
]

#sol-item(8, "A")[
  *Chapter 9.* Neither $= 10%$, so the union is $90%$. Both $= 60% + 50% - 90% = 20%$. Since $20%$ of the class is $60$ students, the class size is $60 div 0.20 = bold(150)$.
]

#sol-item(9, "A")[
  *Chapter 2.* Powers of $2$ modulo $9$: $2, 4, 8, 7, 5, 1$. The first return to $1$ occurs at the $bold(6)$th power.
]

#sol-item(10, "A")[
  *Chapter 8.* With $a = 2$ and $b = 3$: $frac(2 + sqrt(3), 2 - sqrt(3)) = frac((2 + sqrt(3))^2, 1) = 7 + 4 sqrt(3)$ ✓. Hence $a + b = 2 + 3 = bold(5)$.
]

#sol-item(11, "A")[
  *Chapter 5.* Total repayable $= 120000 times 1.10 = "₦"132000$. Monthly instalment $= 132000 div 12 = bold("₦"11000)$.
]

#sol-item(12, "A")[
  *Chapter 9.* Count multiples of $6$ not $5$: $100 - 20 = 80$. Multiples of $10$ not $3$: $60 - 20 = 40$. Multiples of $15$ not $2$: $40 - 20 = 20$. Sum $= 80 + 40 + 20 = bold(140)$. (Multiples of $30$ are excluded from every pair because they belong to all three sets.)
]

#sol-item(13, "A")[
  *Chapter 8.* $x^2 = (sqrt(3) + sqrt(2))^2 = 5 + 2 sqrt(6)$, and since $(sqrt(3) - sqrt(2))(sqrt(3) + sqrt(2)) = 1$, we get $frac(1, x) = sqrt(3) - sqrt(2)$, so $frac(1, x^2) = 5 - 2 sqrt(6)$. Adding gives $5 + 5 = bold(10)$.
]

#sol-item(14, "A")[
  *Chapter 7.* $1.2 = frac(12, 10) = frac(2^2 times 3, 10)$, so $log_(10) 1.2 = 2(0.3010) + 0.4771 - 1 = bold(0.0791)$.
]

#sol-item(15, "A")[
  *Chapter 5.* $0.95 M = 1.185 C$, so $M = 1.2474 C$. The markup is therefore approximately $bold(25%)$ to the nearest whole number (exactly $24.74%$).
]

#sol-item(16, "A")[
  *Chapter 8.* Isolate: $sqrt(3x + 1) = 2 + sqrt(x - 1)$. Squaring gives $3x + 1 = 4 + 4 sqrt(x - 1) + x - 1$, hence $2x - 2 = 4 sqrt(x - 1)$ and $x - 1 = 2 sqrt(x - 1)$. Let $u = sqrt(x - 1) >= 0$: $u^2 = 2u$, so $u = 0$ or $u = 2$, giving $x = 1$ or $x = 5$.
  *Check:* at $x = 1$, $sqrt(4) - sqrt(0) = 2$ ✓; at $x = 5$, $sqrt(16) - sqrt(4) = 2$ ✓. Both solutions are valid, so the answer is $bold(x = 1 "or" x = 5)$.
]

#sol-item(17, "A")[
  *Chapter 9.* Intersection $= 40 + 34 - 60 = 14$. Elements in exactly one set $= 40 + 34 - 2(14) = bold(46)$.
]

#sol-item(18, "A")[
  *Chapters 7 and 6.* Use $a^(log_a m) = m$: $9^(log_3 2) = (3^(log_3 2))^2 = 2^2 = 4$, and $16^(log_2 3) = (2^(log_2 3))^4 = 3^4 = 81$. Sum $= 4 + 81 = bold(85)$.
]

#sol-item(19, "A")[
  *Chapter 4.* Total cost $= 2(3000) + 3(4000) + 5(5000) = 6000 + 12000 + 25000 = "₦"43000$ over $10$ kg, so the cost per kg is $bold("₦"4300)$.
]

#sol-item(20, "A")[
  *Chapter 7.* Domain requires $x > 1$. Condense: $(x - 1)(x + 1) = 2^3 = 8$, so $x^2 = 9$ and $x = plus.minus 3$. Only $x = bold(3)$ satisfies the domain ($x > 1$); the negative root is rejected.
]

#v(4pt)
#trap-box("What These Twenty Teach")[
  Each of these requires *two* recognitions, not one: a base conversion followed by a congruence, a discount followed by a markup equation, a logarithm followed by an index law. Practise naming both recognitions before writing anything — that is the habit JAMB's composite questions reward.
]

#pagebreak()

#current-chapter.update("Appendix J: Error Log & Progress Trackers")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Error Log, Progress Trackers & Printable Templates]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Print these pages. A candidate who records every mistake and re-tests it weekly will outperform a candidate who only re-reads notes — because the examination tests execution, not familiarity.
  ]
]

#v(4pt)
== J.1 The Error Log Template

#table(
  columns: (auto, 1.5fr, 1.2fr, 1.4fr, 1.1fr),
  inset: 8pt,
  align: (center + horizon, left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Date],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Question / Chapter],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[My Wrong Answer],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Root Cause in My Own Words],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Re-test Date],

  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
)

#concept-box("The Five Root-Cause Categories")[
  Tag every error with exactly one of these five labels. After twenty errors, the pattern tells you precisely which chapter to revisit.
  1. *Concept Gap:* I did not know the rule or formula at all.
  2. *Recall Slip:* I knew the rule but misremembered a constant (for example $log_(10) 5$).
  3. *Arithmetic Slip:* The method was right, the calculation was wrong.
  4. *Reading Error:* I misread the question (base requested, "only", "neither", units).
  5. *Time Pressure:* I abandoned a question I could have solved.
]

== J.2 Chapter Mastery Tracker

#table(
  columns: (1.4fr, 0.7fr, 0.7fr, 0.9fr, 0.9fr),
  inset: 8pt,
  align: (left + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Chapter],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Drill 1 %],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Drill 2 %],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Weakest Subtopic],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Ready? (Y/N)],

  [1. Number Bases], [ ], [ ], [ ], [ ],
  [2. Modular Arithmetic], [ ], [ ], [ ], [ ],
  [3. Fractions & Errors], [ ], [ ], [ ], [ ],
  [4. Ratio & Rates], [ ], [ ], [ ], [ ],
  [5. Commercial Maths], [ ], [ ], [ ], [ ],
  [6. Indices & Standard Form], [ ], [ ], [ ], [ ],
  [7. Logarithms], [ ], [ ], [ ], [ ],
  [8. Surds], [ ], [ ], [ ], [ ],
  [9. Sets & Venn], [ ], [ ], [ ], [ ],
  [Mock 1 (out of 60)], [ ], [ ], [ ], [ ],
  [Mock 2 (out of 60)], [ ], [ ], [ ], [ ],
)

== J.3 Weekly Study Log

#table(
  columns: (0.8fr, 1.1fr, 1.4fr, 1.1fr, 1.0fr),
  inset: 8pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Week],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Chapters Covered],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Questions Attempted],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Accuracy %],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Hours],

  [1], [ ], [ ], [ ], [ ],
  [2], [ ], [ ], [ ], [ ],
  [3], [ ], [ ], [ ], [ ],
  [4], [ ], [ ], [ ], [ ],
  [5], [ ], [ ], [ ], [ ],
  [6], [ ], [ ], [ ], [ ],
  [7], [ ], [ ], [ ], [ ],
  [8], [ ], [ ], [ ], [ ],
  [9], [ ], [ ], [ ], [ ],
  [10], [ ], [ ], [ ], [ ],
  [11], [ ], [ ], [ ], [ ],
  [12], [ ], [ ], [ ], [ ],
)

#v(6pt)
#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 14pt,
)[
  #text(font: "DejaVu Sans", size: 11pt, weight: "bold", fill: jamb-green)[The Closing Word]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 9.8pt, fill: jamb-navy)[
    Section I rewards discipline more than brilliance. Nine chapters, roughly two thousand five hundred practice questions, and fifty-nine diagrams later, the only remaining variable is your consistency: ninety focused minutes a day, one error logged honestly, one drill retaken weekly. Do that, and the first ten to twelve questions of your Mathematics paper become the most reliable marks you will ever earn.
  ]
]
