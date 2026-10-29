#import "template.typ": *

#current-chapter.update("Appendix A: Master Formula Compendium")

#pagebreak()
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Master Formula & Method Compendium]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every formula, law, condition and recognition cue from the nine chapters of Volume 2, arranged so that a single page answers a single exam question type. Photocopy these pages and keep them beside your practice screen.
  ]
]

#v(6pt)

== A.1 Change of Subject of Formula

#table(
  columns: (1.1fr, 2.0fr, 1.7fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Shape of formula],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[First move],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Result and watchpoint],

  [$y = a x + b$], [Subtract $b$; divide by $a$.], [$x = (y - b)/a$. Undo the addition before the multiplication.],
  [$y = a/x$], [Multiply by $x$; divide by $y$.], [$x = a/y$. Cross-multiply first, always.],
  [$y = a/(x + b)$], [Cross-multiply, expand, collect.], [$x = a/y - b$. The bracket divides as a whole.],
  [$a x + b x = c$], [Factorise the subject.], [$x = c/(a + b)$. Never divide by the subject.],
  [$y = (a x + b)/(c x + d)$], [Cross-multiply; collect; factorise.], [$x = (b - d y)/(c y - a)$; undefined at $y = a/c$.],
  [$y = a sqrt(x + b)$], [Divide by $a$; square; subtract $b$.], [$x = (y/a)^2 - b$. Square the WHOLE side.],
  [$y = sqrt((x + a)/(x - a))$], [Square, cross-multiply, collect.], [$x = a(1 + y^2)/(y^2 - 1)$.],
  [$1/f = 1/u + 1/v$], [Combine, then invert both sides.], [$f = u v/(u + v)$ — product over sum.],
  [$1/R = 1/R_1 + 1/R_2$], [Same rhythm as the lens formula.], [$R = R_1 R_2/(R_1 + R_2)$.],
  [$T = 2pi sqrt(l/g)$], [Divide, square, invert.], [$g = 4pi^2 l/T^2$. The $2pi$ is squared too.],
  [$y = a^x$], [Take logarithms of both sides.], [$x = log_a y$.],
  [$y = log_a x$], [Convert to exponential form.], [$x = a^y$.],
  [$A = P(1 + r/100)^n$], [Divide, take the $n$th root, subtract $1$.], [$r = 100[(A/P)^(1/n) - 1]$.],
  [$A = 2pi r^2 + 2pi r h$], [Arrange as a quadratic in $r$.], [$r = (-pi h + sqrt(pi^2 h^2 + 2pi A))/(2pi)$; positive root only.],
  [$s = u t + 1/2 a t^2$], [Subtract $u t$; multiply by $2$; divide by $t^2$.], [$a = 2(s - u t)/t^2$.],
)

== A.2 Polynomials, Factor and Remainder Theorems

#table(
  columns: (1.15fr, 1.9fr, 1.75fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Concept],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Statement],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Non-calculator note],

  [*Division identity*], [$P(x) = D(x)Q(x) + R(x)$, $"deg" R < "deg" D$.], [The remainder is always one degree lower than the divisor.],
  [*Remainder theorem*], [Dividing by $(x - a)$ leaves $P(a)$; by $(b x - a)$ leaves $P(a/b)$; by $(x + a)$ leaves $P(-a)$.],

  [Sign of the root is copied from the divisor, never guessed.],
  [*Factor theorem*], [$(x - a)$ is a factor $arrow.l.r.double$ $P(a) = 0$.], [A zero remainder is the *proof*; state it explicitly.],
  [*Synthetic division*], [Coefficients; bring down; multiply by $a$; add.], [Insert zeros for missing powers.],
  [*Long division*], [Divide leading terms; multiply; subtract; bring down.], [Align powers in descending order.],
  [*Cubic factorisation*], [Find one root, divide, factorise the quadratic.], [Test $plus.minus$ divisors of the constant term.],
  [*Repeated factor*], [$P(a) = 0$ and the quotient also vanishes at $a$.], [The graph touches the axis without crossing.],
  [*Identity matching*], [Coefficients of like powers are equal.], [Substituting a strategic value (often $x = a$) kills terms quickly.],
  [*Degree rules*], [$"deg"(P Q) = "deg" P + "deg" Q$.], [Multiply the leading terms only.],
)

== A.3 Quadratic Equations and Graphs

#table(
  columns: (1.1fr, 2.0fr, 1.7fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Quantity],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Formula],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Use / watchpoint],

  [*Roots (formula)*], [$x = (-b plus.minus sqrt(b^2 - 4 a c))/(2a)$], [Always works; simplify the surd before dividing.],
  [*Discriminant*], [$Delta = b^2 - 4 a c$], [$> 0$ two roots; $= 0$ one; $< 0$ none (real).],
  [*Equal roots*], [$Delta = 0$], [Produces *two* parameter values when squared.],
  [*Sum of roots*], [$alpha + beta = -b/a$], [The minus sign is part of the formula.],
  [*Product of roots*], [$alpha beta = c/a$], [No sign change here.],
  [*Symmetric sums*], [$alpha^2 + beta^2 = (alpha + beta)^2 - 2 alpha beta$], [$(alpha - beta)^2 = (alpha + beta)^2 - 4 alpha beta$],
  [*Equation from roots*], [$x^2 - (alpha + beta)x + alpha beta = 0$], [For transformed roots, recompute sum and product.],
  [*Completed square*], [$a x^2 + b x + c = a(x + b/(2a))^2 + c - b^2/(4a)$], [Vertex at $x = -b slash 2a$.],
  [*Vertex form*], [$y = a(x - h)^2 + k$], [Vertex $(h, k)$; the sign of $h$ flips.],
  [*Minimum / maximum*], [$y_min = c - b^2/(4a)$ if $a > 0$], [$y_max$ by the same expression if $a < 0$.],
  [*Disguised quadratics*], [$u = x^2$, $u = 2^x$, $u = sqrt(x)$], [Convert back and keep every admissible root.],
)

== A.4 Simultaneous Equations

#table(
  columns: (1.15fr, 1.9fr, 1.75fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Situation],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Procedure],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Check],

  [*Two linear equations*], [Match coefficients; add if opposite signs, subtract if equal; back-substitute.],

  [The pair must satisfy BOTH originals.],
  [*One linear, one quadratic*], [Substitute the linear into the quadratic; solve; then use the linear for the partner value.],

  [Number of real roots = number of intersection points.],
  [*Three unknowns*], [Eliminate one variable from two different pairs; solve the $2 times 2$; back-substitute.],

  [Eliminate the SAME variable in both pairs.],
  [*Unique solution*], [$a_1 b_2 - a_2 b_1 != 0$.], [Determinant test.],
  [*No solution*], [Coefficients proportional, constants not.], [Parallel distinct lines.],
  [*Infinitely many*], [Both coefficients and constants proportional.], [Coincident lines.],
  [*Word problems*], [Define both unknowns in words first, then translate sentence by sentence.],

  [Check against the story, not only the algebra.],
  [*Two-digit numbers*], [Number $= 10a + b$; reversed $= 10b + a$.], [Digits are integers; $a$ from $1$ to $9$.],
)

== A.5 Inequalities

#table(
  columns: (1.1fr, 2.0fr, 1.7fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Type],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Rule],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Pitfall],

  [*Multiplication law*], [Multiplying or dividing by a negative reverses the symbol.], [The most expensive slip in the chapter.],
  [*Compound*], [$l < f(x) < u$: apply the operation to all three parts.], [Do not split unless the variable appears twice.],
  [*Quadratic, $a > 0$*], [$P(x) < 0$ between the roots; $P(x) > 0$ outside.], [Sketch the parabola to confirm.],
  [*Negative leading coefficient*], [Multiply by $-1$ and reverse first.], [Then re-read which side the symbol points to.],
  [*Rational*], [Sign chart on numerator and denominator zeros.], [Exclude denominator zeros from the solution set.],
  [*Modulus*], [$|x - h| < k arrow.r.double -k < x - h < k$.], [For $>$ the solution is two rays.],
  [*Feasible region*], [Draw the boundary; test $(0, 0)$; shade the correct side.], [Solid line for $<=$, dashed for $<$.],
  [*Integer counting*], [Solve, then list integers inside the interval.], [Read whether endpoints are included.],
)

== A.6 Variation

#table(
  columns: (1.15fr, 1.4fr, 2.2fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Wording],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Equation],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Signature],

  ["varies directly as $x$"], [$y = k x$], [$y/x$ constant; line through the origin.],
  ["varies directly as $x^n$"], [$y = k x^n$], [Doubling $x$ multiplies $y$ by $2^n$.],
  ["varies inversely as $x$"], [$y = k/x$], [$x y$ constant; rectangular hyperbola.],
  ["varies inversely as $x^n$"], [$y = k/x^n$], [Inverse-square law when $n = 2$.],
  ["varies jointly as $x$ and $z$"], [$y = k x z$], [Doubling either input doubles $y$.],
  ["jointly and inversely"], [$y = k x z/w$], [One constant, several effects.],
  ["partly constant, partly varies as $x$"], [$y = k x + c$], [Line that misses the origin; two data pairs needed.],
  ["table of values"], [Test $y/x$ then $x y$.], [Constant quotient ⇒ direct; constant product ⇒ inverse.],
)

== A.7 Sequences and Series

#table(
  columns: (1.2fr, 1.5fr, 2.0fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Quantity],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[A.P.],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[G.P.],

  [*Common term*], [Difference $d = T_2 - T_1$.], [Ratio $r = T_2/T_1$.],
  [*$n$th term*], [$a + (n - 1)d$], [$a r^(n-1)$],
  [*Sum of $n$ terms*], [$frac(n, 2)[2a + (n - 1)d]$], [$a(1 - r^n)/(1 - r)$, $r != 1$],
  [*Sum using last term*], [$frac(n, 2)(a + l)$], [No analogue — use the standard formula.],
  [*Sum to infinity*], [Does not exist.], [$a/(1 - r)$ provided $|r| < 1$.],
  [*Number of terms*], [$n = (l - a)/d + 1$.], [Solve $l = a r^(n-1)$, possibly with logs.],
  [*Three-term modelling*], [$a - d, a, a + d$.], [$frac(a, r), a, a r$.],
  [*Test for three terms*], [$2 T_2 = T_1 + T_3$.], [$T_2^2 = T_1 T_3$.],
)

== A.8 Binary Operations

#table(
  columns: (1.1fr, 2.0fr, 1.7fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Property],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Definition to test],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[How JAMB asks it],

  [*Closure*], [$a * b in S$ for all $a, b in S$.], ["Is the set closed under $*$?"],
  [*Commutative*], [$a * b = b * a$.], [One counter-example disproves it.],
  [*Associative*], [$(a * b) * c = a * (b * c)$], ["Evaluate both groupings" is the standard stem.],
  [*Identity*], [$a * e = e * a = a$.], [Solve with $a$ general.],
  [*Inverse*], [$a * b = e$.], [Find $e$ first, then solve.],
  [*Equation in the operation*], [Convert to ordinary algebra.], ["Find $x$ such that $x * 3 = 14$".],
)

== A.9 Matrices and Determinants

#table(
  columns: (1.1fr, 2.0fr, 1.7fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Operation],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Rule],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  [*Order of product*], [$(m times n)(n times p) = m times p$.], [Inner dimensions must agree.],
  [*Product entry*], [Row $i$ of $A$ times column $j$ of $B$.], [Multiply and add — never entry by entry.],
  [*Commutativity*], [$A B != B A$ in general.], [Order is the whole answer in matrix equations.],
  [*Determinant $2 times 2$*], [$a d - b c$.], [Minus, not plus.],
  [*Determinant $3 times 3$*], [Expand along any row/column with alternating signs.], [Choose the row with zeros.],
  [*Inverse $2 times 2$*], [$frac(1, det) mat(d, -b; -c, a)$], [Swap diagonal, negate the other entries.],
  [*Singular*], [$det = 0$.], [No inverse, no unique solution.],
  [*Solving $A X = B$*], [$X = A^(-1) B$ or Cramer's rule.], [Multiply on the LEFT.],
  [*Cramer*], [$x = D_x/D$, $y = D_y/D$.], [Replace the relevant column with the constants.],
)

#current-chapter.update("Appendix B: 45-Day Countdown Plan")

#pagebreak()
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX B]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The 45-Day Algebra Countdown]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    A day-by-day plan that assumes one to one-and-a-half hours of Mathematics per day. Each day names a single chapter section, a practice target and a five-minute closing check.
  ]
]

#v(6pt)

== B.1 How to Use the Countdown

The plan is deliberately *front-loaded with method* and *back-loaded with recall*. Days 1–24 build each chapter; days 25–34 interleave (the single most effective memory technique available); days 35–45 are pure exam rehearsal. If you fall a day behind, do not compress two new-topic days into one — drop a revision day instead. Understanding cannot be rushed; recall can.

#table(
  columns: (auto, 1.5fr, 1.5fr, 1.2fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Day],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Focus],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Practice],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Closing check],

  [1], [Ch 1 §1.1–1.3: subject of formula, five-step algorithm], [Examples 1–8], [Recite the six families],
  [2], [Ch 1 §1.3: subject twice, roots, exponents], [Examples 9–16; Drill Q1–15], [Three cross-multiply rhythms],
  [3], [Ch 1: challenge transpositions], [Examples 17–22; Drill Q16–45], [Score the drill],
  [4], [Ch 1 recap + trap boxes], [Redo every wrong item], [Explain two errors aloud],
  [5], [Ch 2 §2.1–2.2: remainder theorem], [Examples 1–5], [State the theorem in one line],
  [6], [Ch 2 §2.3: factor theorem], [Examples 6–7; Drill Q1–15], [Sign rule for divisors],
  [7], [Ch 2 §2.4: long and synthetic division], [Examples 8–11], [One cubic by hand],
  [8], [Ch 2 §2.4–2.5: full factorisation, identities], [Examples 12–16; Drill Q16–37], [Score the drill],
  [9], [Ch 3 §3.1: factorisation and formula], [Examples 1–8], [Write the formula from memory],
  [10], [Ch 3 §3.1: completing the square], [Examples 3–5; Drill Q1–15], [Vertex from each form],
  [11], [Ch 3 §3.2: sum and product of roots], [Examples 9–13], [Three identities],
  [12], [Ch 3 §3.3: graphs and word problems], [Examples 14–22; Drill Q16–42], [Sketch two parabolas],
  [13], [Ch 4 §4.1: elimination and substitution], [Examples 1–5], [Add-or-subtract rule],
  [14], [Ch 4 §4.1–4.2: classification, linear–quadratic], [Examples 6–10; Drill Q1–17], [Determinant test],
  [15], [Ch 4: three unknowns, word problems], [Examples 11–15; Drill Q18–34], [One 3 × 3 by hand],
  [16], [Ch 5 §5.1: linear and modulus inequalities], [Examples 1–4], [Reversal rule],
  [17], [Ch 5 §5.2: quadratic inequalities], [Examples 5–10; Drill Q1–18], [Root-split rule],
  [18], [Ch 5 §5.3: regions], [Examples 11–12; Drill Q19–36], [Shade one region correctly],
  [19], [Ch 6: direct and inverse variation], [Examples 1–6], [Write four equations from memory],
  [20], [Ch 6: joint and partial variation], [Examples 7–15; Drill Q1–31], [Table test: quotient then product],
  [21], [Ch 7: A.P. terms and sums], [Examples 1–5], [Two A.P. formulae],
  [22], [Ch 7: G.P., sum to infinity], [Examples 6–12; Drill Q1–30], [Convergence condition],
  [23], [Ch 7: combined and applied problems], [Examples 13–15; Drill Q31–43], [Recurring decimal as G.P.],
  [24], [Ch 8: binary operations], [Examples 1–15; whole drill], [Identity then inverse routine],
  [25], [Ch 9 §9.1–9.3: orders, products], [Examples 1–10], [Order-checking trick],
  [26], [Ch 9 §9.4: determinants], [Examples 11–14], [3 × 3 expansion],
  [27], [Ch 9 §9.5–9.6: inverses and systems], [Examples 15–23; whole drill], [Cramer's rule],
  [28], [Interleave: Ch 1 + Ch 2 mixed], [20 mixed questions], [Error log review],
  [29], [Interleave: Ch 3 + Ch 4 mixed], [20 mixed questions], [Error log review],
  [30], [Interleave: Ch 5 + Ch 6 mixed], [20 mixed questions], [Error log review],
  [31], [Interleave: Ch 7 + Ch 8 mixed], [20 mixed questions], [Error log review],
  [32], [Ch 9 + mixed determinants], [20 mixed questions], [Error log review],
  [33], [Mock 1 under timed conditions], [40 questions, 40 minutes], [Mark and log],
  [34], [Review Mock 1 by chapter], [Redo every wrong item], [Name each rule missed],
  [35], [Appendix A compendium, sections 1–5], [Recite from memory], [Self-quiz with the book closed],
  [36], [Appendix A, sections 6–9], [Recite from memory], [Self-quiz],
  [37], [Appendix E flashcards, set 1], [60 cards], [Cards you missed go back in the box],
  [38], [Appendix E flashcards, set 2], [60 cards], [Same],
  [39], [Appendix K speed drills], [Items 1–60], [Accuracy before speed],
  [40], [Appendix K speed drills], [Items 61–150], [Two minutes per set],
  [41], [Mock 2 under timed conditions], [40 questions, 40 minutes], [Mark and log],
  [42], [Review Mock 2 + qualifying test], [All wrong items], [Rule-by-rule review],
  [43], [Appendix I challenge problems], [Ten items], [Reasoning aloud],
  [44], [Light revision: compendium + flashcards], [30 minutes only], [No new material],
  [45], [Rest, then one timed 20-question set], [Confidence, not cramming], [Sleep early],
)

== B.2 The CBT Exam-Day Protocol

#grid(
  columns: (1fr, 1fr),
  column-gutter: 12pt,
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.6pt, weight: "bold", fill: jamb-green)[Minute-by-minute]
    #v(4pt)
    - *T−60 min:* arrive, present your slip, no new material.
    - *T−10 min:* write the five core formulae on rough paper.
    - *0–2 min:* scan the whole paper; note the questions you can do instantly.
    - *2–30 min:* first pass — all direct questions, flagging anything over 90 seconds.
    - *30–38 min:* second pass — the flagged multi-step questions.
    - *38–40 min:* final sweep — ensure every question has an answer. No blanks.
  ],
  block(width: 100%, fill: trap-bg, stroke: 0.8pt + trap-red, radius: 7pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.6pt, weight: "bold", fill: trap-red)[Five exam-hall rules]
    #v(4pt)
    + *Never* leave a blank; there is no negative marking.
    + If two options differ only in sign, the question is testing a sign rule — slow down for that one.
    + Estimate before computing: if the answer must be near $20$, an option of $200$ is out.
    + Substitute your answer back; it costs five seconds and catches most slips.
    + If the machine freezes, raise your hand immediately and stay calm — the timer is the invigilator's responsibility, not yours.
  ],
)

#current-chapter.update("Appendix C: Glossary of Essential Algebra Terms")

#pagebreak()
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX C]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Glossary of 140 Essential Terms]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Precise definitions in exam language. If you cannot define a term, you cannot argue with an option that misuses it.
  ]
]

#v(4pt)

#let gloss(rows) = table(
  columns: (1fr, 2.6fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  ..rows.map(((a, b)) => ([*#a*], [#b])).flatten(),
)

== C.1 Foundations of Algebra

#gloss((
  ("Algebra", "The branch of mathematics in which letters represent numbers and relationships are expressed as equations or formulae."),
  ("Variable", "A letter standing for a number that may change or is not yet known."),
  ("Constant", "A quantity whose value does not change within a given problem."),
  ("Coefficient", "The numerical factor multiplying a variable, as the 3 in $3x$."),
  ("Term", "A single algebraic component separated from others by plus or minus signs."),
  ("Expression", "A combination of terms with no equality sign."),
  ("Equation", "A statement that two expressions are equal, containing an equality sign."),
  ("Formula", "An equation expressing one quantity in terms of others."),
  ("Identity", "An equation true for every value of the variable, written with $equiv$."),
  ("Subject of a formula", "The single variable standing alone on one side of the equality sign."),
  ("Transposition", "Rearranging a formula to change its subject."),
  ("Like terms", "Terms with identical variable parts, which may be added or subtracted."),
  ("Bracket expansion", "Multiplying every term inside a bracket by the factor outside."),
  ("Factorisation", "Writing an expression as a product of factors."),
  ("Common factor", "A factor present in every term of an expression."),
  ("Degree", "The highest power of the variable in a polynomial."),
  ("Linear expression", "An expression of degree one."),
  ("Quadratic expression", "An expression of degree two."),
  ("Cubic expression", "An expression of degree three."),
  ("Polynomial", "A finite sum of terms in which every power of the variable is a non-negative whole number."),
))

== C.2 Polynomials and Equations

#gloss((
  ("Monomial", "A polynomial with exactly one term."),
  ("Binomial", "A polynomial with exactly two terms."),
  ("Trinomial", "A polynomial with exactly three terms."),
  ("Leading coefficient", "The coefficient of the highest power in a polynomial."),
  ("Constant term", "The term free of the variable; also the y-intercept of the graph."),
  ("Root (zero)", "A value of the variable that makes the polynomial equal to zero."),
  ("Factor", "A quantity that divides another exactly, leaving no remainder."),
  ("Remainder", "The quantity left over after division, of lower degree than the divisor."),
  ("Quotient", "The result of a division, excluding the remainder."),
  ("Remainder theorem", "The remainder on division by $(x - a)$ equals $P(a)$."),
  ("Factor theorem", "The statement that $(x - a)$ divides $P(x)$ exactly when $P(a) = 0$."),
  ("Synthetic division", "A shorthand division by a linear factor using coefficients only."),
  ("Long division", "The full written algorithm for dividing polynomials."),
  ("Repeated root", "A root occurring more than once, corresponding to a squared factor."),
  ("Multiplicity", "The number of times a root is repeated."),
  ("Irrational root", "A root that cannot be written as a fraction of integers."),
  ("Discriminant", "The quantity $b^2 - 4ac$, which decides the number of real roots."),
  ("Completing the square", "Rewriting a quadratic as a perfect square plus a constant."),
  ("Vertex form", "The form $y = a(x - h)^2 + k$, which displays the turning point."),
  ("Vertex", "The turning point of a parabola."),
  ("Axis of symmetry", "The vertical line through the vertex, about which the parabola is symmetric."),
  ("Parabola", "The curve of a quadratic function."),
  ("Maximum value", "The greatest value a function attains; occurs at the vertex of a downward parabola."),
  ("Minimum value", "The least value a function attains; occurs at the vertex of an upward parabola."),
  ("Roots in a ratio", "A condition relating the two roots, handled without solving the equation."),
  ("Sum of roots", "$-b slash a$ for $a x^2 + b x + c = 0$."),
  ("Product of roots", "$c slash a$ for $a x^2 + b x + c = 0$."),
  ("Disguised quadratic", "An equation that becomes quadratic under a substitution such as $u = x^2$."),
  ("Extraneous root", "An apparent solution introduced by squaring or multiplying, which fails the original equation."),
))

== C.3 Simultaneous Equations and Inequalities

#gloss((
  ("Simultaneous equations", "Two or more equations that must be satisfied at the same time."),
  ("Elimination", "Removing one variable by adding or subtracting matched equations."),
  ("Substitution", "Replacing one variable by an equivalent expression in the other."),
  ("Inconsistent system", "A system with no solution; its lines are parallel and distinct."),
  ("Dependent system", "A system with infinitely many solutions; its equations describe the same line."),
  ("Coincident lines", "Two lines that lie exactly on top of each other."),
  ("Inequality", "A statement that one quantity is greater than or less than another."),
  ("Strict inequality", "An inequality using $<$ or $>$, excluding the boundary."),
  ("Non-strict inequality", "An inequality using $<=$ or $>=$, including the boundary."),
  ("Compound inequality", "Two inequalities combined, such as $a < x < b$."),
  ("Interval notation", "A way of writing a set of numbers, using brackets for inclusion and parentheses for exclusion."),
  ("Number line", "A horizontal line on which the solution of an inequality is represented."),
  ("Open circle", "Marks a value excluded from the solution set."),
  ("Solid circle", "Marks a value included in the solution set."),
  ("Sign chart", "A diagram recording the sign of an expression between its critical values."),
  ("Critical value", "A value at which an expression changes sign or is undefined."),
  ("Modulus", "The distance of a number from zero, written $|x|$."),
  ("Feasible region", "The set of points satisfying every constraint in a system of inequalities."),
  ("Boundary line", "The line forming the edge of a region described by an inequality."),
  ("Linear programming", "Maximising or minimising a linear expression over a feasible region."),
))

== C.4 Variation and Proportion

#gloss((
  ("Proportion", "A statement that two ratios are equal."),
  ("Direct variation", "One quantity is a constant multiple of another: $y = k x$."),
  ("Inverse variation", "One quantity increases as the other decreases: $y = k/x$."),
  ("Joint variation", "A quantity varies as the product of two or more others."),
  ("Partial variation", "A quantity is the sum of a constant and a varying part."),
  ("Constant of variation", "The fixed multiplier $k$ linking the quantities."),
  ("Proportionality symbol", "$prop$, meaning 'varies as'."),
  ("Rectangular hyperbola", "The graph of inverse variation, $y = k/x$."),
  ("Worker-days", "The product of workers and days, constant for a fixed task."),
  ("Inverse-square law", "A relationship in which one quantity is inversely proportional to the square of another."),
  ("Rate of change", "How quickly one quantity changes with respect to another."),
  ("Linear relationship", "A relationship whose graph is a straight line."),
))

== C.5 Sequences and Series

#gloss((
  ("Sequence", "An ordered list of numbers following a rule."),
  ("Series", "The sum of the terms of a sequence."),
  ("Term", "An individual entry in a sequence, denoted $T_n$."),
  ("Arithmetic progression", "A sequence with a constant difference between consecutive terms."),
  ("Common difference", "The constant added to obtain each new term in an A.P."),
  ("Geometric progression", "A sequence with a constant ratio between consecutive terms."),
  ("Common ratio", "The constant multiplier in a G.P."),
  ("Arithmetic mean", "The average of two numbers, inserted as a middle term of an A.P."),
  ("Geometric mean", "The square root of the product of two numbers, inserted in a G.P."),
  ("Sum to infinity", "The limiting value of the partial sums of a convergent series."),
  ("Convergent series", "A series whose partial sums approach a finite limit."),
  ("Divergent series", "A series whose partial sums do not approach a finite limit."),
  ("nth partial sum", "The sum of the first $n$ terms, denoted $S_n$."),
  ("Recurring decimal", "A decimal in which a digit or block of digits repeats indefinitely; it is a convergent G.P."),
  ("Degenerate progression", "A progression with $d = 0$ or $r = 1$, in which every term is equal."),
))

== C.6 Binary Operations

#gloss((
  ("Binary operation", "A rule that combines two elements of a set to produce one element of the same set."),
  ("Closure", "The property that every result of the operation lies inside the set."),
  ("Commutative", "Order does not affect the result: $a * b = b * a$."),
  ("Associative", "Grouping does not affect the result: $(a * b) * c = a * (b * c)$."),
  ("Distributive", "One operation spreads over another, as multiplication over addition."),
  ("Identity element", "The element $e$ satisfying $a * e = a$ for every $a$."),
  ("Inverse element", "The element $b$ satisfying $a * b = e$ for a given $a$."),
  ("Self-inverse", "An element that is its own inverse, such as $0$ under addition."),
  ("Cayley table", "A table displaying all results of a binary operation on a finite set."),
  ("Group", "A set with an associative operation, an identity and inverses for every element."),
))

== C.7 Matrices

#gloss((
  ("Matrix", "A rectangular array of numbers arranged in rows and columns."),
  ("Order of a matrix", "Its size, written rows × columns."),
  ("Element", "A single entry of a matrix, written $a_(i j)$."),
  ("Square matrix", "A matrix with equal numbers of rows and columns."),
  ("Row matrix", "A matrix with a single row."),
  ("Column matrix", "A matrix with a single column, also called a vector."),
  ("Zero matrix", "A matrix in which every entry is zero."),
  ("Identity matrix", "A square matrix with ones on the main diagonal and zeros elsewhere."),
  ("Transpose", "The matrix obtained by interchanging rows and columns."),
  ("Symmetric matrix", "A matrix equal to its own transpose."),
  ("Scalar", "A single number used to multiply every element of a matrix."),
  ("Determinant", "A number computed from a square matrix that decides invertibility and measures area scaling."),
  ("Singular matrix", "A square matrix with zero determinant; it has no inverse."),
  ("Non-singular", "A square matrix with non-zero determinant; it has an inverse."),
  ("Minor", "The determinant left after deleting one row and one column."),
  ("Cofactor", "A minor with an associated sign from the alternating pattern."),
  ("Adjugate", "The transpose of the cofactor matrix, used in forming the inverse."),
  ("Inverse matrix", "The matrix which, multiplied by the original, gives the identity."),
  ("Cramer's rule", "Solving a linear system using determinants of modified coefficient matrices."),
  ("Matrix transformation", "A mapping of points in the plane produced by multiplying by a matrix."),
))

#shortcut-box("How to Use the Glossary in the Last Week")[
  Cover the right-hand column and recite each definition aloud. Any term you cannot define precisely, mark with a dot. On the second pass, define only the dotted terms. Three passes over 140 terms takes about forty minutes in total and closes the vocabulary gaps that make option-elimination unreliable.
]
