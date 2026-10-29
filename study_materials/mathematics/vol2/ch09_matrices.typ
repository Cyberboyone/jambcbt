#import "template.typ": *

#current-chapter.update("Chapter 9: Matrices and Determinants")
#pagebreak()

#chapter-opener(
  9,
  "Matrices & Determinants",
  subtitle: "Orders, Equality, Addition, Scalar and Matrix Multiplication, Transpose, 2 × 2 and 3 × 3 Determinants, Inverses & Matrix Solution of Systems",
  syllabus-ref: "JAMB Syllabus Sec. II • Topic 9",
  utme-weight: "1 – 2 Questions Every Year (95% Frequency)",
)

#focus-radar(
  objectives: (
    "State the order of a matrix and identify corresponding elements.",
    "Add, subtract and multiply matrices, and multiply by a scalar.",
    "Determine when two matrices can be multiplied and what the product's order will be.",
    "Evaluate $2 times 2$ and $3 times 3$ determinants.",
    "Find the inverse of a non-singular $2 times 2$ matrix.",
    "Solve simultaneous equations using the matrix method (Cramer's rule or inverse matrices).",
  ),
  hotspots: (
    "Matrix multiplication order: $A B != B A$, and $A B$ may be defined while $B A$ is not.",
    "The negative signs in $A^(-1) = 1/det (A) mat(d, -b; -c, a)$ — transposing the diagonal and negating the other.",
    "Determinant of a $3 times 3$ by expanding along a row, with alternating signs.",
    "Singular matrices: $det = 0$ means no inverse and no unique solution.",
    "Multiplying by the inverse on the LEFT to solve $A X = B$.",
  ),
  trap-summary: "Three recurring mistakes: (1) multiplying matrices without checking the inner dimensions; (2) forgetting to change the signs of the off-diagonal entries when forming $A^(-1)$; (3) writing $X = B A^(-1)$ instead of $X = A^(-1) B$ — matrix multiplication is not commutative, so the order is the whole answer.",
)

// ============================================================================
== 9.1 Matrices: Order and Notation

A *matrix* is a rectangular array of numbers. A matrix with $m$ rows and $n$ columns has *order* $m times n$; the element in row $i$, column $j$ is written $a_(i j)$.

#diagram-fig("diagrams/ch09_matrix_anatomy.svg",
  "Rows first, columns second. Transposing swaps them, so a $2 times 3$ matrix becomes $3 times 2$.")

#concept-box("Order Rules Worth Automating")[
  - *Equality:* two matrices are equal only if they have the same order and every corresponding element is equal.
  - *Addition/subtraction:* only possible for matrices of the *same* order; combine element by element.
  - *Multiplication:* $A B$ is defined only when the number of *columns of $A$* equals the number of *rows of $B$*. If $A$ is $m times n$ and $B$ is $n times p$, then $A B$ is $m times p$.
  - *Scalar:* multiply every single element by the scalar.
  - *Transpose $A^T$:* interchange rows and columns.
]

#worked-example(
  1,
  "Finding an unknown element",
  tier: "FOUNDATION",
  [Given $A = mat(2, 5, -1; 4, 0, 3)$, state the order of $A$ and the value of $a_23$.],
  [
    *Step 1 — Count:* $A$ has $2$ rows and $3$ columns, so the order is $2 times 3$.

    *Step 2 — Locate $a_23$:* row $2$, column $3$ entry is $3$.

    *Answer:* order $2 times 3$; $a_23 = 3$.

  ],
)

#worked-example(
  2,
  "Equating matrices to find unknowns",
  tier: "UTME STANDARD",
  [If $mat(x + 1, 4; 3, y - 2) = mat(5, 4; 3, 7)$, find $x$ and $y$.],
  [
    *Step 1 — Equate corresponding entries:* top-left gives $x + 1 = 5$; bottom-right gives $y - 2 = 7$.

    *Step 2 — Solve:* $x = 4$ and $y = 9$.

    *Note.* The other two entries already agree, so they carry no information.

  ],
)

== 9.2 Addition, Subtraction and Scalar Multiplication

#worked-example(
  3,
  "Addition and subtraction",
  tier: "FOUNDATION",
  [Given $A = mat(1, 2; 3, 4)$ and $B = mat(5, 0; -1, 2)$, find $A + B$ and $A - B$.],
  [
    *Step 1 — Add corresponding entries:*

    $ A + B = mat(1+5, 2+0; 3-1, 4+2) = mat(6, 2; 2, 6) $
    *Step 2 — Subtract corresponding entries:*

    $ A - B = mat(1-5, 2-0; 3+1, 4-2) = mat(-4, 2; 4, 2) $
    *Watchpoint.* In the second entry of the bottom row, $4 - 2 = 2$; the subtraction sign applies to the whole entry, so watch double negatives: $3 - (-1) = 4$.
  ],
)

#worked-example(
  4,
  "Scalar multiplication combined with addition",
  tier: "UTME STANDARD",
  [Given $A = mat(2, -1; 3, 0)$ and $B = mat(1, 4; -2, 5)$, find $3A - 2B$.],
  [
    *Step 1 — Multiply each matrix by its scalar:*

    $ 3A = mat(6, -3; 9, 0) , quad 2B = mat(2, 8; -4, 10) $
    *Step 2 — Subtract:*

    $ 3A - 2B = mat(6-2, -3-8; 9+4, 0-10) = mat(4, -11; 13, -10) $
  ],
)

#worked-example(
  5,
  "Finding a matrix from an equation",
  tier: "JAMB CHALLENGE",
  [If $mat(2, 1; 0, 3) + X = mat(5, 4; 1, 1)$, find $X$.],
  [
    *Step 1 — Rearrange the matrix equation as you would a scalar one:*

    $ X = mat(5, 4; 1, 1) - mat(2, 1; 0, 3) $
    *Step 2 — Subtract entry by entry:*

    $ X = mat(3, 3; 1, -2) $
    *Check.* $mat(2,1;0,3) + mat(3,3;1,-2) = mat(5,4;1,1)$ ✓

  ],
)

== 9.3 Matrix Multiplication

#formula-box("Row Times Column")[
  If $A$ is $m times n$ and $B$ is $n times p$, then $(A B)_(i j) = sum_(k=1)^n a_(i k) b_(k j)$ — the $(i, j)$ entry is the dot product of *row $i$* of $A$ with *column $j$* of $B$.
  #v(2pt)
  Orders: $(m times n)(n times p) = (m times p)$. The inner dimensions must match; the outer dimensions give the answer's order.
]

#worked-example(
  6,
  "A $2 times 2$ product",
  tier: "UTME STANDARD",
  [If $A = mat(1, 2; 3, 4)$ and $B = mat(5, 6; 7, 8)$, find $A B$.],
  [
    *Step 1 — Row 1 of A with each column of B:*

    $ (1)(5) + (2)(7) = 19 ; quad (1)(6) + (2)(8) = 22 $
    *Step 2 — Row 2 of A with each column of B:*

    $ (3)(5) + (4)(7) = 43 ; quad (3)(6) + (4)(8) = 50 $
    *Step 3 — Assemble:*

    $ A B = mat(19, 22; 43, 50) $
  ],
)

#worked-example(
  7,
  "Showing $A B != B A$",
  tier: "JAMB CHALLENGE",
  [Using $A = mat(1, 2; 3, 4)$ and $B = mat(5, 6; 7, 8)$, compute $B A$ and compare with $A B$.],
  [
    *Step 1 — Row 1 of B with columns of A:*

    $ (5)(1) + (6)(3) = 23 ; quad (5)(2) + (6)(4) = 34 $
    *Step 2 — Row 2 of B:*

    $ (7)(1) + (8)(3) = 31 ; quad (7)(2) + (8)(4) = 46 $
    *Step 3 — Compare:*

    $ B A = mat(23, 34; 31, 46) != mat(19, 22; 43, 50) = A B $
    *Conclusion.* Matrix multiplication is *not* commutative. This single fact drives every matrix-equation question.
  ],
)

#worked-example(
  8,
  "Non-square product and order checking",
  tier: "UTME STANDARD",
  [If $A$ is $2 times 3$ and $B$ is $3 times 1$, find the order of $A B$ and of $B A$, stating which products are defined.],
  [
    *Step 1 — $A B$:* inner dimensions $3$ and $3$ match, so $A B$ is defined with order $2 times 1$.

    *Step 2 — $B A$:* inner dimensions $1$ and $2$ do not match, so $B A$ is *not defined*.

    *Rule.* Write the orders side by side and cancel the inner numbers: $(2 times 3)(3 times 1) arrow.r 2 times 1$ ✓; $(3 times 1)(2 times 3)$ has no match ✗.
  ],
)

#worked-example(
  9,
  "Product with the identity",
  tier: "FOUNDATION",
  [Show that $A I = A$ for $A = mat(3, -1; 2, 5)$ and $I = mat(1, 0; 0, 1)$.],
  [
    *Step 1 — Multiply:*

    $ mat(3, -1; 2, 5) mat(1, 0; 0, 1) = mat(3+0, 0-1; 2+0, 0+5) = mat(3, -1; 2, 5) $
    *Step 2 — Conclude.* The identity matrix behaves like the number $1$: $A I = I A = A$.

  ],
)

#worked-example(
  10,
  "Powers of a matrix",
  tier: "JAMB CHALLENGE",
  [If $A = mat(1, 1; 0, 1)$, find $A^2$ and $A^3$.],
  [
    *Step 1 — $A^2 = A A$:*

    $ mat(1, 1; 0, 1) mat(1, 1; 0, 1) = mat(1, 2; 0, 1) $
    *Step 2 — $A^3 = A^2 A$:*

    $ mat(1, 2; 0, 1) mat(1, 1; 0, 1) = mat(1, 3; 0, 1) $
    *Pattern.* $A^n = mat(1, n; 0, 1)$ — a useful induction observation if asked for $A^10$.
  ],
)

== 9.4 Determinants

#formula-box("Determinants")[
  $2 times 2$:
  $ det mat(a, b; c, d) = a d - b c $
  $3 times 3$, expanded along the first row (alternating signs):
  $ det mat(a, b, c; d, e, f; g, h, i) = a(e i - f h) - b(d i - f g) + c(d h - e g) $
  A matrix whose determinant is zero is *singular* and has no inverse.
]

#worked-example(
  11,
  "Basic 2 × 2 determinant",
  tier: "FOUNDATION",
  [Evaluate $det mat(3, 4; 2, 5)$ and $det mat(2, -1; 6, -3)$.],
  [
    *Part (i):* $3(5) - 4(2) = 15 - 8 = 7$.
    *Part (ii):* $2(-3) - (-1)(6) = -6 + 6 = 0$.
    *Interpretation of (ii).* The determinant is zero, so the matrix is singular — it has no inverse, and it collapses area to zero (the two rows are proportional: $6 = 3 times 2$ and $-3 = 3 times (-1)$).
  ],
)

#worked-example(
  12,
  "Determinant with algebraic entries",
  tier: "UTME STANDARD",
  [Find $x$ if $det mat(x, 2; 3, x - 1) = 0$.],
  [
    *Step 1 — Expand:* $x(x - 1) - 6 = 0$.

    *Step 2 — Solve:* $x^2 - x - 6 = 0$, i.e. $(x - 3)(x + 2) = 0$.

    *Answer:* $x = 3$ or $x = -2$.

    *Check.* With $x = 3$: $det mat(3, 2; 3, 2) = 6 - 6 = 0$ ✓

  ],
)

#worked-example(
  13,
  "3 × 3 determinant by first-row expansion",
  tier: "JAMB CHALLENGE",
  [Evaluate $det mat(1, 2, 3; 4, 5, 6; 7, 8, 10)$.],
  [
    *Step 1 — Write the expansion with alternating signs:*

    $ 1 det mat(5, 6; 8, 10) - 2 det mat(4, 6; 7, 10) + 3 det mat(4, 5; 7, 8) $
    *Step 2 — Evaluate each minor:*

    - $5(10) - 6(8) = 50 - 48 = 2$
    - $4(10) - 6(7) = 40 - 42 = -2$
    - $4(8) - 5(7) = 32 - 35 = -3$
    *Step 3 — Combine:*

    $ 1(2) - 2(-2) + 3(-3) = 2 + 4 - 9 = -3 $
    *Answer:* $-3$.

  ],
)

#shortcut-box("Choosing the Easiest Row")[
  You may expand along *any* row or column, using the sign pattern
  $ mat(+, -, +; -, +, -; +, -, +) $
  Choose the row or column with the most zeros: each zero deletes an entire $2 times 2$ minor from the work. In Example 13, expanding along the first column instead gives $1(2) - 4(20 - 24) + 7(12 - 15) = 2 + 16 - 21 = -3$ — the same value, a useful check.
]

#diagram-fig("diagrams/ch09_determinant_area.svg",
  "The determinant as an area scale factor: a unit square mapped by $mat(3, 1; 0, 2)$ becomes a parallelogram of area $6 = |det|$. A zero determinant collapses the area to nothing.")

#worked-example(
  14,
  "Determinant with an unknown in a 3 × 3",
  tier: "JAMB CHALLENGE",
  [Find $k$ if $det mat(k, 1, 0; 1, k, 1; 0, 1, k) = 0$.],
  [
    *Step 1 — Expand along the first row:*

    $ k det mat(k, 1; 1, k) - 1 det mat(1, 1; 0, k) + 0 $
    *Step 2 — Evaluate the minors:*

    $ (k^2 - 1) quad "and" quad (k - 0) = k $
    *Step 3 — Form the equation:*

    $ k(k^2 - 1) - k = 0 quad arrow.r.double quad k^3 - 2k = 0 quad arrow.r.double quad k(k^2 - 2) = 0 $
    *Step 4 — Solutions:* $k = 0$ or $k = plus.minus sqrt(2)$.

  ],
)

== 9.5 The Inverse of a $2 times 2$ Matrix

#formula-box("Inverse of a $2 times 2$ Matrix")[
  $ A = mat(a, b; c, d) quad arrow.r.double quad A^(-1) = 1/(a d - b c) mat(d, -b; -c, a) , quad a d - b c != 0 $
  The diagonal entries are *interchanged*; the off-diagonal entries *change sign*; the whole matrix is divided by the determinant.
]

#worked-example(
  15,
  "Finding an inverse",
  tier: "UTME STANDARD",
  [Find the inverse of $A = mat(4, 3; 2, 1)$.],
  [
    *Step 1 — Determinant:* $4(1) - 3(2) = 4 - 6 = -2$.

    *Step 2 — Swap the diagonal and negate the off-diagonal:*

    $ mat(1, -3; -2, 4) $
    *Step 3 — Divide by the determinant:*

    $ A^(-1) = -1/2 mat(1, -3; -2, 4) = mat(-1/2, 3/2; 1, -2) $
    *Step 4 — Verify:* $A A^(-1)$ must be $I$. The top-left entry is $4(-1/2) + 3(1) = -2 + 3 = 1$ ✓, and the top-right is $4(3/2) + 3(-2) = 6 - 6 = 0$ ✓

  ],
)

#worked-example(
  16,
  "Singular matrix — no inverse",
  tier: "UTME STANDARD",
  [Explain why $mat(2, 4; 1, 2)$ has no inverse.],
  [
    *Step 1 — Determinant:* $2(2) - 4(1) = 0$.

    *Step 2 — Conclude.* Division by zero is undefined, so the inverse does not exist. The matrix is singular.

    *Geometric meaning.* The two rows are proportional, so the matrix maps the whole plane onto a single line — information is destroyed and cannot be recovered.
  ],
)

#worked-example(
  17,
  "Inverse with an unknown entry",
  tier: "JAMB CHALLENGE",
  [If $mat(3, k; 2, 4)$ is singular, find $k$.],
  [
    *Step 1 — Singular means determinant zero:*

    $ 3(4) - 2k = 0 quad arrow.r.double quad 12 = 2k quad arrow.r.double quad k = 6 $
    *Check.* $det mat(3, 6; 2, 4) = 12 - 12 = 0$ ✓

  ],
)

#worked-example(
  18,
  "Inverse of a matrix with a zero determinant? — a contrast",
  tier: "JAMB CHALLENGE",
  [Find the inverse of $mat(0, 1; 1, 0)$ and verify it is its own inverse.],
  [
    *Step 1 — Determinant:* $0(0) - 1(1) = -1$.

    *Step 2 — Swap and negate:*

    $ A^(-1) = 1/(-1) mat(0, -1; -1, 0) = mat(0, 1; 1, 0) = A $
    *Step 3 — Interpret.* This matrix swaps the coordinates; applying it twice returns the original point, so it is *self-inverse* ($A^2 = I$).

  ],
)

== 9.6 Solving Simultaneous Equations with Matrices

#diagram-fig("diagrams/ch09_inverse_flow.svg",
  "The matrix solution in three lines: write $A X = B$, multiply both sides on the LEFT by $A^(-1)$, and read off $X = A^(-1) B$.")

#worked-example(
  19,
  "Matrix method",
  tier: "JAMB CHALLENGE",
  [Solve $2x + 3y = 12$ and $x + 4y = 14$ using matrices.],
  [
    *Step 1 — Write in the form $A X = B$:*

    $ mat(2, 3; 1, 4) mat(x; y) = mat(12; 14) $
    *Step 2 — Determinant of the coefficient matrix:* $8 - 3 = 5$.

    *Step 3 — Inverse:*

    $ A^(-1) = 1/5 mat(4, -3; -1, 2) $
    *Step 4 — Multiply on the left, $X = A^(-1) B$:*

    $ mat(x; y) = 1/5 mat(4, -3; -1, 2) mat(12; 14) = 1/5 mat(48 - 42; -12 + 28) = 1/5 mat(6; 16) = mat(6/5; 16/5) $
    *Answer:* $x = 6/5 = 1.2$, $y = 16/5 = 3.2$.

    *Check in the first equation:* $2(1.2) + 3(3.2) = 2.4 + 9.6 = 12$ ✓

  ],
)

#worked-example(
  20,
  "Cramer's rule — the same answer faster",
  tier: "JAMB CHALLENGE",
  [Solve $3x + 2y = 16$ and $2x - y = 1$ by determinants (Cramer's rule).],
  [
    *Step 1 — Coefficient determinant:*

    $ D = det mat(3, 2; 2, -1) = -3 - 4 = -7 $
    *Step 2 — Replace the $x$-column with the constants:*

    $ D_x = det mat(16, 2; 1, -1) = -16 - 2 = -18 quad arrow.r.double quad x = D_x/D = (-18)/(-7) = 18/7 $
    *Step 3 — Replace the $y$-column:*

    $ D_y = det mat(3, 16; 2, 1) = 3 - 32 = -29 quad arrow.r.double quad y = D_y/D = 29/7 $
    *Check.* $3(18/7) + 2(29/7) = (54 + 58)/7 = 112/7 = 16$ ✓

    *Note.* Cramer's rule is the fastest route in an exam, and it never requires writing down the inverse matrix.

  ],
)

#worked-example(
  21,
  "When the determinant is zero",
  tier: "JAMB CHALLENGE",
  [Use determinants to determine whether $2x - 3y = 4$ and $4x - 6y = 9$ have a unique solution.],
  [
    *Step 1 — Coefficient determinant:*

    $ D = det mat(2, -3; 4, -6) = -12 + 12 = 0 $
    *Step 2 — Interpret.* $D = 0$ means no unique solution. Comparing the constants ($4$ and $9$), the equations are inconsistent, so there is *no* solution at all (the lines are parallel).

    *If the constants had been proportional,* e.g. $4$ and $8$, the equations would describe the same line and there would be infinitely many solutions.
  ],
)

#worked-example(
  22,
  "Word problem in matrix form",
  tier: "JAMB CHALLENGE",
  [Four pencils and three rulers cost ₦$250$; two pencils and five rulers cost ₦$290$. Set up a matrix equation and solve it.],
  [
    *Step 1 — Define:* pencil $= p$, ruler $= r$.

    $ 4p + 3r = 250 ; quad 2p + 5r = 290 $
    *Step 2 — Matrix form:*

    $ mat(4, 3; 2, 5) mat(p; r) = mat(250; 290) $
    *Step 3 — Determinant:* $20 - 6 = 14$.

    *Step 4 — Inverse and product:*

    $ mat(p; r) = 1/14 mat(5, -3; -2, 4) mat(250; 290) = 1/14 mat(1250 - 870; -500 + 1160) = 1/14 mat(380; 660) $
    *Answer:* $p = 380/14 = 190/7 approx 27.14$, $r = 660/14 = 330/7 approx 47.14$.

    *Comment.* In an exam, such fractional answers usually signal that the numbers were chosen for a different pair; here the method is what is being tested, and both values check: $4(190/7) + 3(330/7) = (760 + 990)/7 = 1750/7 = 250$ ✓
  ],
)

#worked-example(
  23,
  "Matrix transformation of a point",
  tier: "UTME STANDARD",
  [Find the image of the point $(2, 3)$ under the transformation $mat(0, -1; 1, 0)$. Describe the transformation.],
  [
    *Step 1 — Multiply the matrix by the position vector:*

    $ mat(0, -1; 1, 0) mat(2; 3) = mat(0 - 3; 2 + 0) = mat(-3; 2) $
    *Step 2 — Describe.* $(2, 3) arrow.r (-3, 2)$ is a rotation of $90degree$ anticlockwise about the origin.

    *Check the determinant.* $det = 0 - (-1) = 1$, so areas are preserved — as expected for a rotation.

  ],
)

#diagram-fig("diagrams/ch09_matrix_transform.svg",
  "A rotation matrix acting on a triangle: every vertex is multiplied by the same matrix, and the shape keeps its area because $|det| = 1$.")

== 9.7 Chapter 9 Rapid-Revision Checklist

#table(
  columns: (1.1fr, 2.0fr, 1.5fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Task],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Watchpoint],

  ["order of a product"], ["Cancel inner dimensions."], ["$A B$ may exist while $B A$ does not."],
  ["$A B$ entry $(i, j)$"], ["Row $i$ of $A$ times column $j$ of $B$."], [Multiply corresponding entries and add — never multiply entry by entry.],
  ["$det$ of $2 times 2$"], ["$a d - b c$."], [Minus sign, not plus.],
  ["$det$ of $3 times 3$"], ["Expand along a row with alternating signs."], [Expand along the row with zeros to save work.],
  ["$A^(-1)$"], ["$1/det$ times the swapped-negated matrix."], [Swap main diagonal, negate the other, divide by $det$.],
  ["no inverse"], ["$det = 0$."], [Singular matrices collapse area and destroy information.],
  ["solve $A X = B$"], ["$X = A^(-1) B$ (or Cramer's rule)."], [Multiply on the LEFT; order matters.],
  ["$det$ with unknown"], ["Set the expansion equal to $0$ or to a given value, then solve."], [Quadratics usually produce two answers.],
  ["transformation of a point"], ["Matrix times the position vector."], [The result is a column vector, not a row.],
)

// ============================================================================
#pagebreak()

// ============================================================================

// ============================================================================
#include "drill_ch09.typ"
