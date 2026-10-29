#import "template.typ": *

#current-chapter.update("Chapter 6: Variation")
#pagebreak()

#chapter-opener(
  6,
  "Variation",
  subtitle: "Direct, Inverse, Joint and Partial Variation — with Graphs, Tables and Multi-Step Word Problems",
  syllabus-ref: "JAMB Syllabus Sec. II • Topic 6",
  utme-weight: "1 Question Most Years (90% Frequency)",
)

#focus-radar(
  objectives: (
    "Distinguish direct, inverse, joint and partial variation from the wording of a question.",
    "Determine the constant of variation $k$ from given data.",
    "Use the equation of variation to find unknown values, including square, cube and root cases.",
    "Solve problems involving three or more variables (joint and combined variation).",
    "Recognise partial variation from a table or graph that does not pass through the origin.",
  ),
  hotspots: (
    "'$y$ varies directly as the square of $x$' — the square must be in the equation, not just the statement.",
    "'$y$ varies inversely as the square root of $x$' — the root goes in the denominator.",
    "Joint variation with a constant term, e.g. $y = k x z + c$ (a *partial* joint variation).",
    "Tables of values: deciding direct versus inverse from the products or quotients.",
    "Two-stage problems: find $k$ from one pair, then evaluate at a second pair.",
  ),
  trap-summary: "Almost all lost marks come from writing the wrong equation before finding $k$. Translate the English word by word: 'varies directly as' becomes multiplication; 'inversely as' becomes division; 'jointly as $x$ and $z$' becomes $k x z$; 'partly constant and partly as $x$' becomes $k x + c$. Write the equation first, then substitute.",
)

// ============================================================================
== 6.1 Direct Variation

$ y$ varies directly as $x$ (equivalently, $y$ is directly proportional to $x$) means

$ y = k x , quad k != 0 $

The graph is a straight line through the origin, and the ratio $y/x$ is constant.

#diagram-fig("diagrams/ch06_variation_family.svg",
  "The four variation types and their equations. Every variation question is answered by writing the correct equation first, then finding $k$.")

#worked-example(
  1,
  "Basic direct variation",
  tier: "FOUNDATION",
  [If $y$ varies directly as $x$ and $y = 12$ when $x = 3$, find $y$ when $x = 7$.],
  [
    *Step 1 — Write the equation:* $y = k x$.

    *Step 2 — Find $k$ from the given pair:*

    $ 12 = 3k quad arrow.r.double quad k = 4 $
    *Step 3 — Evaluate:*

    $ y = 4(7) = 28 $
    *Shortcut.* In direct variation $y_1/x_1 = y_2/x_2$, so $y_2 = 12 times 7/3 = 28$ — the same result with no explicit $k$.
  ],
)

#worked-example(
  2,
  "Direct variation with a square",
  tier: "UTME STANDARD",
  [If $y$ varies directly as the square of $x$ and $y = 48$ when $x = 4$, find $y$ when $x = 3$.],
  [
    *Step 1 — Equation:* $y = k x^2$.

    *Step 2 — Find $k$:*

    $ 48 = 16k quad arrow.r.double quad k = 3 $
    *Step 3 — Evaluate:* $y = 3(9) = 27$.

    *Ratio method:* $y_2 = y_1 (x_2/x_1)^2 = 48 (3/4)^2 = 48 times 9/16 = 27$ ✓
  ],
)

#worked-example(
  3,
  "Direct variation with a cube root",
  tier: "JAMB CHALLENGE",
  [If $p$ varies directly as the cube root of $q$, and $p = 6$ when $q = 27$, find $q$ when $p = 10$.],
  [
    *Step 1 — Equation:* $p = k root(3, q)$.

    *Step 2 — Find $k$:* $root(3, 27) = 3$, so $6 = 3k$ and $k = 2$.

    *Step 3 — Solve for $q$:*

    $ 10 = 2 root(3, q) quad arrow.r.double quad root(3, q) = 5 quad arrow.r.double quad q = 125 $
    *Watchpoint.* The question asks for $q$, not $k$ — read the demand line twice.
  ],
)

== 6.2 Inverse Variation

$ y$ varies inversely as $x$ means

$ y = k/x , quad "i.e." quad x y = k $

The graph is a rectangular hyperbola and the product $x y$ is constant.

#diagram-fig("diagrams/ch06_direct_vs_inverse.svg",
  "Direct and inverse variation side by side. In the direct case the quotient is constant; in the inverse case the product is constant.")

#worked-example(
  4,
  "Basic inverse variation",
  tier: "FOUNDATION",
  [If $y$ varies inversely as $x$ and $y = 5$ when $x = 4$, find $y$ when $x = 10$.],
  [
    *Step 1 — Equation:* $x y = k$ (equivalently $y = k/x$).

    *Step 2 — Find $k$:* $k = 4 times 5 = 20$.

    *Step 3 — Evaluate:* $y = 20/10 = 2$.

    *Sanity check.* $x$ was multiplied by $2.5$, so $y$ should be divided by $2.5$: $5/2.5 = 2$ ✓
  ],
)

#worked-example(
  5,
  "Inverse variation with a square",
  tier: "UTME STANDARD",
  [The intensity $I$ of light varies inversely as the square of the distance $d$ from the source. If $I = 80$ units at $d = 2$ m, find $I$ at $d = 5$ m.],
  [
    *Step 1 — Equation:* $I = k/d^2$.

    *Step 2 — Find $k$:* $80 = k/4$, so $k = 320$.

    *Step 3 — Evaluate:* $I = 320/25 = 12.8$ units.

    *Physical check.* Moving further away must reduce the intensity — if your answer exceeds $80$, you inverted the equation.
  ],
)

#worked-example(
  6,
  "Inverse variation with a root",
  tier: "JAMB CHALLENGE",
  [If $t$ varies inversely as the square root of $s$, and $t = 8$ when $s = 9$, find $t$ when $s = 36$.],
  [
    *Step 1 — Equation:* $t = k/sqrt(s)$.

    *Step 2 — Find $k$:* $sqrt(9) = 3$, so $8 = k/3$ and $k = 24$.

    *Step 3 — Evaluate:* $t = 24/sqrt(36) = 24/6 = 4$.

    *Ratio method:* $t_2 = t_1 sqrt(s_1/s_2) = 8 sqrt(9/36) = 8 times 1/2 = 4$ ✓
  ],
)

== 6.3 Joint Variation

$ y$ varies jointly as $x$ and $z$ means $y = k x z$. With a third variable as a divisor, the product or quotient is constant.

#worked-example(
  7,
  "Joint variation of three variables",
  tier: "UTME STANDARD",
  [If $y$ varies jointly as $x$ and $z$, and $y = 24$ when $x = 3$ and $z = 4$, find $y$ when $x = 5$ and $z = 2$.],
  [
    *Step 1 — Equation:* $y = k x z$.

    *Step 2 — Find $k$:* $24 = k(3)(4) = 12k$, so $k = 2$.

    *Step 3 — Evaluate:* $y = 2(5)(2) = 20$.

  ],
)

#worked-example(
  8,
  "Joint variation with a square",
  tier: "JAMB CHALLENGE",
  [If $z$ varies jointly as $x^2$ and $y$, and $z = 36$ when $x = 3$ and $y = 2$, find $z$ when $x = 2$ and $y = 5$.],
  [
    *Step 1 — Equation:* $z = k x^2 y$.

    *Step 2 — Find $k$:* $36 = k(9)(2) = 18k$, so $k = 2$.

    *Step 3 — Evaluate:* $z = 2(4)(5) = 40$.

  ],
)

#diagram-fig("diagrams/ch06_joint_surface.svg",
  "Joint variation as a surface: doubling either input doubles the output, which is exactly the statement $y = k x z$.")

#worked-example(
  9,
  "Combined direct and inverse",
  tier: "JAMB CHALLENGE",
  [$w$ varies directly as $x$ and inversely as $y^2$. If $w = 3$ when $x = 2$ and $y = 4$, find $w$ when $x = 8$ and $y = 2$.],
  [
    *Step 1 — Equation:* $w = (k x)/y^2$.

    *Step 2 — Find $k$:*

    $ 3 = (2k)/16 quad arrow.r.double quad k = 24 $
    *Step 3 — Evaluate:*

    $ w = (24 times 8)/4 = 48 $
    *Check the direction of change.* $x$ increased fourfold while $y$ halved, and $y$ appears squared, so $w$ should be multiplied by $4 times 4 = 16$: $3 times 16 = 48$ ✓

  ],
)

== 6.4 Partial Variation

$ y$ is *partly constant and partly varies as $x$* means

$ y = k x + c $

The graph is a straight line that does *not* pass through the origin; $c$ is the fixed part and $k$ the varying part.

#diagram-fig("diagrams/ch06_partial_line.svg",
  "Partial variation: the intercept $c$ is the part that does not depend on $x$, and the gradient $k$ is the part that does.")

#worked-example(
  10,
  "Two conditions give two constants",
  tier: "UTME STANDARD",
  [$y$ is partly constant and partly varies as $x$. When $x = 2$, $y = 11$; when $x = 5$, $y = 23$. Find the equation and the value of $y$ when $x = 8$.],
  [
    *Step 1 — Model:* $y = k x + c$.

    *Step 2 — Translate both conditions:*

    $ 11 = 2k + c quad (1) ; quad 23 = 5k + c quad (2) $
    *Step 3 — Subtract (1) from (2):* $12 = 3k$, so $k = 4$; then $c = 11 - 8 = 3$.

    *Step 4 — Equation and evaluation:*

    $ y = 4x + 3 quad arrow.r.double quad y(8) = 35 $
  ],
)

#worked-example(
  11,
  "Partial variation with a square",
  tier: "JAMB CHALLENGE",
  [$p$ is partly constant and partly varies as the square of $q$. When $q = 1$, $p = 7$; when $q = 3$, $p = 31$. Find $p$ when $q = 2$.],
  [
    *Step 1 — Model:* $p = k q^2 + c$.

    *Step 2 — Conditions:*

    $ 7 = k + c quad (1) ; quad 31 = 9k + c quad (2) $
    *Step 3 — Subtract:* $24 = 8k$, so $k = 3$ and $c = 4$.

    *Step 4 — Evaluate:* $p = 3(4) + 4 = 16$.

  ],
)

#worked-example(
  12,
  "Deciding the type of variation from a table",
  tier: "JAMB CHALLENGE",
  [The table shows corresponding values of $x$ and $y$. Determine the type of variation and the constant.
  #v(2pt)
  #table(
    columns: 4,
    inset: 5pt,
    align: center,
    stroke: 0.5pt + jamb-border,
    [*$x$*], [*$2$*], [*$4$*], [*$6$*],
    [*$y$*], [$18$], [$9$], [$6$],
  )],
  [
    *Step 1 — Test the quotient $y/x$:* $9, 2.25, 1$ — not constant, so not direct.

    *Step 2 — Test the product $x y$:* $36, 36, 36$ — constant! So $y$ varies inversely as $x$ with

    $ x y = 36 quad "i.e." quad y = 36/x $
    *Step 3 — State the answer in words:* $y$ is inversely proportional to $x$, constant $36$.

    *Method note.* Testing quotient first and product second resolves almost every table question in the syllabus.

  ],
)

#worked-example(
  13,
  "Practical: wages with a basic salary",
  tier: "UTME STANDARD",
  [A sales assistant earns a fixed basic salary plus a commission proportional to the value of goods sold. In one month she sold ₦$40000$ worth of goods and earned ₦$22000$; in another she sold ₦$70000$ and earned ₦$29500$. Find her basic salary and commission rate.],
  [
    *Step 1 — Model:* $E = k S + c$, where $S$ is sales value.

    *Step 2 — Conditions:*

    $ 22000 = 40000k + c quad (1) ; quad 29500 = 70000k + c quad (2) $
    *Step 3 — Subtract:* $7500 = 30000k$, so $k = 0.25$ (a commission of $25%$).

    *Step 4 — Then* $c = 22000 - 10000 = 12000$.

    *Answer:* basic salary ₦$12000$, commission $25%$.

    *Check.* $70000 times 0.25 = 17500$; $17500 + 12000 = 29500$ ✓

  ],
)

#worked-example(
  14,
  "Inverse variation in a work problem",
  tier: "JAMB CHALLENGE",
  [The time $t$ taken to complete a job varies inversely as the number $n$ of workers. If $6$ workers take $10$ days, how long will $15$ workers take?],
  [
    *Step 1 — Equation:* $n t = k$.

    *Step 2 — Find $k$:* $k = 6 times 10 = 60$ worker-days.

    *Step 3 — Evaluate:* $t = 60/15 = 4$ days.

    *Interpretation.* The constant $k$ is the total work content — the number of worker-days needed. This single idea solves every "men and days" question.
  ],
)

#worked-example(
  15,
  "Combined variation with three variables",
  tier: "JAMB CHALLENGE",
  [$V$ varies jointly as $r^2$ and $h$ and inversely as $t$. If $V = 12$ when $r = 2$, $h = 3$ and $t = 2$, find $V$ when $r = 3$, $h = 4$ and $t = 6$.],
  [
    *Step 1 — Equation:*

    $ V = (k r^2 h)/t $
    *Step 2 — Find $k$:*

    $ 12 = (k(4)(3))/2 = 6k quad arrow.r.double quad k = 2 $
    *Step 3 — Evaluate:*

    $ V = (2(9)(4))/6 = 72/6 = 12 $
    *Observation.* The answer happens to equal the original value — a good reminder to check the arithmetic rather than assume an error.
  ],
)

== 6.5 Chapter 6 Rapid-Revision Checklist

#table(
  columns: (1.1fr, 1.5fr, 2.0fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[English wording],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Equation],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Interpretation],

  ["varies directly as $x$"], ["$y = k x$"], ["$y/x$ is constant; graph is a line through the origin."],
  ["varies directly as $x^2$"], ["$y = k x^2$"], ["Doubling $x$ multiplies $y$ by $4$."],
  ["varies inversely as $x$"], ["$y = k/x$"], ["$x y$ is constant; doubling $x$ halves $y$."],
  ["varies inversely as $x^2$"], ["$y = k/x^2$"], ["Doubling $x$ divides $y$ by $4$ (inverse-square law)."],
  ["varies jointly as $x$ and $z$"], ["$y = k x z$"], ["Doubling either variable doubles $y$."],
  ["varies directly as $x$, inversely as $y$"], ["$y = k x/y$"], ["Combined variation — one constant, two effects."],
  ["partly constant, partly varies as $x$"], ["$y = k x + c$"], ["Straight line, intercept $c$; needs two data pairs."],
  ["table with constant $x y$"], ["Inverse variation"], ["Also check $y/x$ first to rule out direct."],
)

// ============================================================================
#pagebreak()

// ============================================================================

// ============================================================================
#include "drill_ch06.typ"
