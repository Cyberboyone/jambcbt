#import "template.typ": *

#current-chapter.update("Chapter 7: Sequences and Series")
#pagebreak()

#chapter-opener(
  7,
  "Arithmetic & Geometric Progressions",
  subtitle: "nth Terms, Sums, Means, Sum to Infinity, Convergence Conditions and Real-World Series Problems",
  syllabus-ref: "JAMB Syllabus Sec. II • Topic 7",
  utme-weight: "1 – 2 Questions Every Year (95% Frequency)",
)

#focus-radar(
  objectives: (
    "Identify an arithmetic progression (A.P.) and a geometric progression (G.P.) from its terms.",
    "Use the $n$th-term formulae $T_n = a + (n - 1)d$ and $T_n = a r^(n-1)$.",
    "Use the sum formulae $S_n = n/2[2a + (n - 1)d]$ and $S_n = a(1 - r^n)/(1 - r)$.",
    "Find the sum to infinity of a convergent G.P. and state the condition for convergence.",
    "Insert arithmetic or geometric means between two numbers.",
    "Solve word problems: savings, depreciation, population growth and repeated percentages.",
  ),
  hotspots: (
    "Finding $n$ when the last term is known — a linear or logarithmic equation, not a guess.",
    "Sum to infinity, including 'express a recurring decimal as a fraction'.",
    "'Find the number of terms' questions where candidates confuse $n$ with the term's value.",
    "Three-term A.P./G.P. problems: let the terms be $a - d$, $a$, $a + d$ or $a/r$, $a$, $a r$.",
    "Combining both: an A.P. and a G.P. sharing terms.",
  ),
  trap-summary: "Two errors dominate. First, substituting the term *value* for $n$ in $S_n$. Second, using $S_n = a(r^n - 1)/(r - 1)$ with $|r| < 1$ and losing the sign; use $S_n = a(1 - r^n)/(1 - r)$ instead, which keeps numerator and denominator positive. And never write $S_infinity$ when $|r| >= 1$ — the sum does not exist.",
)

// ============================================================================
== 7.1 Arithmetic Progressions

A sequence in which each term after the first is obtained by adding a fixed number $d$ (the *common difference*) is an arithmetic progression:

$ a, quad a + d, quad a + 2d, quad a + 3d, quad dots $

#formula-box("A.P. Toolkit")[
  $ T_n = a + (n - 1) d , quad S_n = n/2 [2a + (n - 1)d] = n/2 (a + l) $
  where $a$ is the first term, $d$ the common difference and $l$ the last term. The number of terms from $a$ to $l$ is $n = (l - a)/d + 1$.
]

#diagram-fig("diagrams/ch07_ap_gp_terms.svg",
  "An A.P. grows linearly (constant step) while a G.P. grows exponentially (constant multiplier). Recognising which curve you are looking at answers many graph-based questions.")

#worked-example(
  1,
  "nth term",
  tier: "FOUNDATION",
  [Find the 15th term of the A.P. $5, 9, 13, dots$],
  [
    *Step 1 — Identify:* $a = 5$, $d = 9 - 5 = 4$.

    *Step 2 — Substitute:*

    $ T_15 = 5 + (15 - 1)(4) = 5 + 56 = 61 $
    *Check.* The 2nd term is $5 + 4 = 9$ ✓, so the formula's count is right.

  ],
)

#worked-example(
  2,
  "Sum of n terms",
  tier: "UTME STANDARD",
  [Find the sum of the first 20 terms of the A.P. $3, 7, 11, dots$],
  [
    *Step 1 — Identify:* $a = 3$, $d = 4$, $n = 20$.

    *Step 2 — Substitute:*

    $ S_20 = 20/2 [2(3) + 19(4)] = 10[6 + 76] = 10 times 82 = 820 $
    *Alternative check.* The 20th term is $3 + 19(4) = 79$, so $S_20 = 20/2 (3 + 79) = 10 times 82 = 820$ ✓
  ],
)

#worked-example(
  3,
  "Finding n from the last term",
  tier: "JAMB CHALLENGE",
  [How many terms are there in the A.P. $7, 11, 15, dots, 143$?],
  [
    *Step 1 — Identify:* $a = 7$, $d = 4$, $T_n = 143$.

    *Step 2 — Set up the equation:*

    $ 143 = 7 + (n - 1)(4) quad arrow.r.double quad 136 = 4(n - 1) quad arrow.r.double quad n - 1 = 34 $
    *Step 3 — Solve:* $n = 35$ terms.

    *Check.* $T_35 = 7 + 34(4) = 143$ ✓

  ],
)

#worked-example(
  4,
  "Two conditions give a and d",
  tier: "JAMB CHALLENGE",
  [The 5th term of an A.P. is $19$ and the 12th term is $47$. Find the first term, the common difference and the sum of the first 15 terms.],
  [
    *Step 1 — Translate each condition:*

    $ a + 4d = 19 quad (1) ; quad a + 11d = 47 quad (2) $
    *Step 2 — Subtract (2) − (1):* $7d = 28$, so $d = 4$; then $a = 19 - 16 = 3$.

    *Step 3 — Sum:*

    $ S_15 = 15/2 [2(3) + 14(4)] = 15/2 [6 + 56] = 15/2 times 62 = 465 $
    *Check.* $T_15 = 3 + 14(4) = 59$, so $S_15 = 15/2 (3 + 59) = 465$ ✓

  ],
)

#worked-example(
  5,
  "Three terms in A.P.",
  tier: "JAMB CHALLENGE",
  [Three numbers are in A.P. Their sum is $18$ and their product is $192$. Find the numbers.],
  [
    *Step 1 — Choose symmetrical unknowns:* let the numbers be $a - d$, $a$, $a + d$.

    *Step 2 — Use the sum:* $(a - d) + a + (a + d) = 3a = 18$, so $a = 6$.

    *Step 3 — Use the product:* $(6 - d)(6)(6 + d) = 192$, so $(36 - d^2) = 32$, giving $d^2 = 4$ and $d = plus.minus 2$.

    *Step 4 — The numbers are* $4, 6, 8$ (taking $d = 2$; the negative root simply reverses the order).

    *Technique note.* The symmetric choice $a - d, a, a + d$ makes the sum equation trivial. Always try it when a sum is given.
  ],
)

#diagram-fig("diagrams/ch07_ap_pairing.svg",
  "Gauss pairing: the first and last terms sum to the same total as the second and second-last, and so on. This is where $S_n = frac(n,2)(a + l)$ comes from.")

== 7.2 Geometric Progressions

A sequence in which each term is obtained by multiplying the previous term by a fixed number $r$ (the *common ratio*) is a geometric progression:

$ a, quad a r, quad a r^2, quad a r^3, quad dots $

#formula-box("G.P. Toolkit")[
  $ T_n = a r^(n-1) , quad S_n = (a(1 - r^n))/(1 - r) quad (r != 1) , quad S_infinity = a/(1 - r) quad ("only if" |r| < 1) $
  The common ratio is found by dividing any term by the one before it: $r = T_2/T_1 = T_3/T_2$.
]

#worked-example(
  6,
  "nth term of a G.P.",
  tier: "FOUNDATION",
  [Find the 8th term of $3, 6, 12, dots$],
  [
    *Step 1 — Identify:* $a = 3$, $r = 6/3 = 2$.

    *Step 2 — Substitute:*

    $ T_8 = 3(2^7) = 3(128) = 384 $
    *Watchpoint.* The exponent is $n - 1 = 7$, not $8$; using $2^8$ gives $768$, which is always a distractor.
  ],
)

#worked-example(
  7,
  "Sum of a G.P.",
  tier: "UTME STANDARD",
  [Find the sum of the first 6 terms of $2, 6, 18, dots$],
  [
    *Step 1 — Identify:* $a = 2$, $r = 3$, $n = 6$.

    *Step 2 — Substitute:*

    $ S_6 = (2(3^6 - 1))/(3 - 1) = (2(729 - 1))/2 = 728 $
    *Check by addition.* $2 + 6 + 18 + 54 + 162 + 486 = 728$ ✓ — worth doing once to convince yourself of the formula.

  ],
)

#worked-example(
  8,
  "Sum to infinity",
  tier: "UTME STANDARD",
  [Find the sum to infinity of $8 + 4 + 2 + dots$],
  [
    *Step 1 — Identify:* $a = 8$, $r = 4/8 = 1/2$; since $|r| < 1$, the sum exists.

    *Step 2 — Substitute:*

    $ S_infinity = (8)/(1 - 1/2) = (8)/(1/2) = 16 $
    *Interpretation.* The partial sums $8, 12, 14, 15, 15.5, dots$ approach $16$ without reaching it.
  ],
)

#diagram-fig("diagrams/ch07_gp_convergence.svg",
  "Partial sums against the number of terms: only $|r| < 1$ converges. Note that a negative ratio such as $-½$ still converges — the sums oscillate towards the limit.")

#worked-example(
  9,
  "Recurring decimal as a G.P.",
  tier: "JAMB CHALLENGE",
  [Express $0.dot(3) = 0.333 dots$ as a fraction using the sum to infinity.],
  [
    *Step 1 — Write the decimal as a series:*

    $ 0.333 dots = 3/10 + 3/100 + 3/1000 + dots $
    *Step 2 — Identify the G.P.:* $a = 3/10$, $r = 1/10$, and $|r| < 1$.

    *Step 3 — Apply $S_infinity = a/(1 - r)$:*

    $ (3/10)/(1 - 1/10) = (3/10)/(9/10) = 3/9 = 1/3 $
    *Extension.* Recurring two-digit patterns work identically: $0.dot(1)dot(8) = 18/100 + 18/10000 + dots = (18/100)/(99/100) = 2/11$.
  ],
)

#worked-example(
  10,
  "Geometric means",
  tier: "UTME STANDARD",
  [Insert two geometric means between $3$ and $24$.],
  [
    *Step 1 — Four terms in all,* so the sequence is $3, 3r, 3r^2, 3r^3 = 24$.

    *Step 2 — Solve for r:*

    $ 3 r^3 = 24 quad arrow.r.double quad r^3 = 8 quad arrow.r.double quad r = 2 $
    *Step 3 — The means are* $T_2 = 6$ and $T_3 = 12$.

    *Check.* $3, 6, 12, 24$ — each term is twice the previous ✓

  ],
)

#worked-example(
  11,
  "Three terms in G.P.",
  tier: "JAMB CHALLENGE",
  [Three numbers are in G.P. Their sum is $26$ and their product is $216$. Find the numbers.],
  [
    *Step 1 — Symmetric unknowns:* let the terms be $a/r$, $a$, $a r$.

    *Step 2 — Product:* $(a/r)(a)(a r) = a^3 = 216$, so $a = 6$.

    *Step 3 — Sum:*

    $ 6/r + 6 + 6r = 26 quad arrow.r.double quad 6 + 6r^2 = 20r quad arrow.r.double quad 3r^2 - 10r + 3 = 0 $
    *Step 4 — Solve:* $(3r - 1)(r - 3) = 0$, so $r = 1/3$ or $r = 3$.

    *Step 5 — Numbers:* with $r = 3$ they are $2, 6, 18$; with $r = 1/3$ they are $18, 6, 2$ — the same set.

    *Check.* $2 + 6 + 18 = 26$ ✓ and $2 times 6 times 18 = 216$ ✓

  ],
)

#worked-example(
  12,
  "Finite G.P. with a fractional ratio",
  tier: "JAMB CHALLENGE",
  [Find the sum of the first 5 terms of $16, 8, 4, dots$],
  [
    *Step 1 — Identify:* $a = 16$, $r = 1/2$, $n = 5$.

    *Step 2 — Use the form that keeps both numerator and denominator positive:*

    $ S_5 = (16(1 - (1/2)^5))/(1 - 1/2) = (16(1 - 1/32))/(1/2) = (16 times 31/32)/(1/2) = (31/2)/(1/2) = 31 $
    *Check by addition:* $16 + 8 + 4 + 2 + 1 = 31$ ✓

    *Contrast with $S_infinity$:* $16/(1 - 1/2) = 32$, so the first five terms already give $31$ of the eventual $32$.
  ],
)

#worked-example(
  13,
  "Depreciation as a G.P.",
  tier: "JAMB CHALLENGE",
  [A machine costing ₦$500000$ depreciates by $20%$ of its value each year. Find its value after 3 years and after $n$ years.],
  [
    *Step 1 — Each year the value is multiplied by $0.8$:* this is a G.P. with $a = 500000$ and $r = 0.8$.

    *Step 2 — After 3 years:*

    $ T_4 = 500000(0.8)^3 = 500000 times 0.512 = 256000 $
    *Step 3 — After n years:*

    $ V_n = 500000(0.8)^n $
    *Watchpoint.* "After 3 years" means the 4th term, because the purchase value is year 0. Write the sequence out for two steps before trusting an index.
  ],
)

#worked-example(
  14,
  "Finding the ratio from a sum condition",
  tier: "JAMB CHALLENGE",
  [The sum of the first three terms of a G.P. is $21$ and the first term is $3$. Find the possible values of the common ratio.],
  [
    *Step 1 — Write the sum:*

    $ 3 + 3r + 3r^2 = 21 quad arrow.r.double quad 3r^2 + 3r - 18 = 0 quad arrow.r.double quad r^2 + r - 6 = 0 $
    *Step 2 — Factorise:* $(r + 3)(r - 2) = 0$.

    *Step 3 — Both values are possible:* $r = 2$ gives $3, 6, 12$ (sum $21$ ✓); $r = -3$ gives $3, -9, 27$ (sum $21$ ✓).

    *Lesson.* A G.P. question can legitimately have two answers; if the options list only one, check which appears.
  ],
)

#worked-example(
  15,
  "Mixed A.P. and G.P.",
  tier: "JAMB CHALLENGE",
  [The 1st, 2nd and 6th terms of an A.P. are in geometric progression. If the first term is $2$, find the common difference.],
  [
    *Step 1 — Write the three terms:* $2$, $2 + d$, $2 + 5d$.

    *Step 2 — In a G.P. the middle term squared equals the product of the outer two:*

    $ (2 + d)^2 = 2(2 + 5d) $
    *Step 3 — Expand and solve:*

    $ 4 + 4d + d^2 = 4 + 10d quad arrow.r.double quad d^2 - 6d = 0 quad arrow.r.double quad d(d - 6) = 0 $
    *Step 4 — Reject $d = 0$* (a constant sequence is a degenerate G.P. and the question assumes a genuine progression), leaving $d = 6$.

    *Check.* $2, 8, 32$ — indeed a G.P. with ratio $4$ ✓

  ],
)

== 7.3 Chapter 7 Rapid-Revision Checklist

#table(
  columns: (1.15fr, 1.35fr, 2.0fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Quantity],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[A.P.],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[G.P.],

  ["$n$th term"], ["$a + (n - 1)d$"], ["$a r^(n-1)$"],
  ["sum of $n$ terms"], ["$frac(n,2)[2a + (n - 1)d]$"], ["$a(1 - r^n) slash (1 - r)$"],
  ["sum with last term given"], ["$frac(n,2)(a + l)$"], ["No such shortcut — use the formula."],
  ["sum to infinity"], ["Never applicable (diverges)."], ["$frac(a,1 - r)$, only if $|r| < 1$."],
  ["number of terms"], ["Solve $l = a + (n - 1)d$."], ["Solve $l = a r^(n-1)$; may need logs."],
  ["middle term of three"], ["Terms $a - d, a, a + d$."], ["Terms $frac(a,r), a, a r$."],
  ["condition for G.P. of three terms"], ["—"], ["$frac(T_2, T_1) = frac(T_3, T_2)$, i.e. $T_2^2 = T_1 T_3$."],
)

// ============================================================================
#pagebreak()

// ============================================================================

// ============================================================================
#include "drill_ch07.typ"
