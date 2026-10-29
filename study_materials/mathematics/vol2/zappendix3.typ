#import "template.typ": *

#current-chapter.update("Appendix S: Forty-Eight Method Cards")

#pagebreak()
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX S]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Forty-Eight Method Cards]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    One card per exam archetype: how to recognise it in the first five seconds, the method in
    three moves, and the single trap that costs the mark. Read a card before its chapter drills;
    re-read it the night before the paper.
  ]
]

#v(6pt)

#let card(n, name, recognise, method, trap) = [
  #block(
    width: 100%,
    breakable: false,
    fill: white,
    stroke: 0.8pt + jamb-border,
    radius: 6pt,
    inset: 10pt,
  )[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-navy)[#text(fill: jamb-bright)[CARD #n.] #name]
    #v(3pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 10pt,
      block(width: 100%)[
        #text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: jamb-green)[RECOGNISE]
        #v(1pt)
        #text(size: 8.6pt)[#recognise]
      ],
      block(width: 100%)[
        #text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: info-blue)[METHOD]
        #v(1pt)
        #text(size: 8.6pt)[#method]
      ],
      block(width: 100%)[
        #text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: trap-red)[THE TRAP]
        #v(1pt)
        #text(size: 8.6pt)[#trap]
      ],
    )
  ]
  #v(4pt)
]

== S.1 Change of Subject

#card(1, "Linear transposition",
  [One letter appears once, in a straightforward way.],
  [Undo the outermost operation first; peel towards the subject.],
  [Undoing the multiplication before the addition.])

#card(2, "Fractional formula",
  [The subject sits in a denominator.],
  [Cross-multiply, then isolate.],
  [Dividing a bracket term by term instead of the whole.])

#card(3, "Subject appears twice",
  [The letter to isolate appears in two terms, often on both sides.],
  [Collect, factorise, divide by the bracket.],
  [Dividing by the subject while it is still on both sides.])

#card(4, "Roots and powers",
  [The subject is inside a square root or a power.],
  [Divide first, then square or root the whole side.],
  [Squaring only part of the side - the bracket must go with it.])

#card(5, "Product-over-sum shape",
  [Lens formulae and parallel resistors: two fractions adding to one.],
  [Combine, then invert both sides.],
  [Reciprocating each term instead of the whole fraction.])

#card(6, "Subject inside a squared bracket",
  [Physics-style formulae such as $T = 2pi sqrt(l/g)$.],
  [Divide, square, invert, and take the root if needed.],
  [Forgetting that $2pi$ is squared along with everything else.])


== S.2 Polynomials

#card(7, "Remainder from a linear divisor",
  [The words find the remainder when ... is divided by.],
  [Substitute the root of the divisor and evaluate.],
  [Using the sign in the divisor rather than its root.])

#card(8, "Factor condition with a parameter",
  [A divisor is given as a factor and a letter is unknown.],
  [Set the polynomial to zero at the root and solve for the letter.],
  [Sign error when the divisor is of the form $x + a$.])

#card(9, "Divide a cubic",
  [Divide ..., or express in the form $(x - a)(...)$.],
  [Synthetic division with the root; record quotient and remainder.],
  [Leaving out missing powers when listing coefficients.])

#card(10, "Factorise completely",
  [Factorise completely, applied to a cubic.],
  [Find one root, divide, then factorise the quadratic.],
  [Stopping after the first linear factor.])

#card(11, "Identity matching",
  [Two expressions are identical and two letters are unknown.],
  [Compare coefficients of like powers, or substitute strategic values.],
  [Comparing after only one substitution.])

#card(12, "Two factors given",
  [Two divisors and two unknown coefficients.],
  [Two equations from two substitutions, then solve simultaneously.],
  [Solving one equation and stopping.])


== S.3 Quadratic Equations

#card(13, "Solve by factorising",
  [Small integer coefficients and neat roots.],
  [Find the pair with the right sum and product; split the middle term.],
  [Getting the sign pair backwards when the constant is negative.])

#card(14, "Solve by formula",
  [Awkward coefficients, or an answer containing a surd.],
  [Write $a$, $b$, $c$ with their signs, then substitute.],
  [Dropping the minus in $-b$ or in $2a$.])

#card(15, "Equal roots condition",
  [The words equal roots, or perfect square.],
  [Set the discriminant to zero and solve for the parameter.],
  [Reporting only the positive parameter value.])

#card(16, "Sum and product of roots",
  [Roots are named but never asked for individually.],
  [Use $-b/a$ and $c/a$; build symmetric expressions from them.],
  [The sign of the sum, and forgetting that $a$ may not be $1$.])

#card(17, "Equation from roots",
  [Form the equation whose roots are given.],
  [$x^2 - (text("sum"))x + (text("product")) = 0$.],
  [Using the roots themselves as coefficients.])

#card(18, "Maximum or minimum",
  [Find the least or greatest value, or the turning point.],
  [Complete the square, or use $x = -b/(2a)$ and substitute back.],
  [Quoting $x$ when the question asked for $y$.])

#card(19, "Disguised quadratic",
  [Powers double: $x^4$, $2^(2x)$, or $sqrt(x)$ appears.],
  [Substitute, solve the quadratic, convert back, keep valid roots.],
  [Discarding a root that is admissible after conversion.])

#card(20, "Quadratic inequality",
  [A squared term inside an inequality.],
  [Roots, then between or outside depending on sign and $a$.],
  [Using the between rule when $a$ is negative.])


== S.4 Simultaneous Equations

#card(21, "Two linear equations",
  [Two equations, two unknowns, small coefficients.],
  [Match a coefficient, add or subtract, then back-substitute.],
  [Subtracting when the signs are already opposite.])

#card(22, "Linear and quadratic",
  [One equation squared, one not.],
  [Substitute the linear into the quadratic, then pair the answers.],
  [Reporting only one value of the second variable.])

#card(23, "Three unknowns",
  [Three equations, three letters.],
  [Eliminate the same letter twice, solve the pair, then back-substitute.],
  [Eliminating different letters in the two pairs.])

#card(24, "Classification",
  [How many solutions has the system.],
  [Compare ratios of coefficients, then of constants.],
  [Testing only the coefficients and ignoring the constants.])

#card(25, "Word problem",
  [A story with two unknown quantities.],
  [Name both unknowns in words, then one equation per sentence.],
  [Mixing the units of the two sides of an equation.])

#card(26, "Two-digit number",
  [Digits, reversal, and the sum or difference with the reverse.],
  [Write $10a + b$ and $10b + a$.],
  [Allowing $a = 0$, which would not be a two-digit number.])


== S.5 Inequalities

#card(27, "Linear inequality",
  [A single inequality with a linear expression.],
  [Collect, divide, and reverse if the divisor is negative.],
  [Forgetting to reverse the symbol.])

#card(28, "Compound inequality",
  [A quantity trapped between two bounds.],
  [Operate on all three parts together.],
  [Splitting and recombining inconsistently.])

#card(29, "Quadratic inequality",
  [A squared term inside an inequality.],
  [Factorise, find roots, sketch, then read the interval.],
  [Writing one interval when the answer is two rays.])

#card(30, "Rational inequality",
  [The unknown appears in a denominator.],
  [Move everything to one side, combine, then use a sign chart.],
  [Multiplying by a denominator whose sign is unknown.])

#card(31, "Modulus",
  [An absolute value compared with a constant.],
  [Convert to the double inequality, or to the pair of rays.],
  [Using the between form for a greater-than comparison.])

#card(32, "Integer counting",
  [How many integers satisfy a given condition.],
  [Solve, then list and count the integers inside the interval.],
  [Counting an endpoint that is excluded.])


== S.6 Variation

#card(33, "Direct variation",
  [The words varies directly as.],
  [$y = k x$; find $k$ from the given pair.],
  [Using the new value before $k$ has been found.])

#card(34, "Inverse variation",
  [The words varies inversely as.],
  [$y = k/x$, so $k = x y$.],
  [Computing $k$ as $y/x$.])

#card(35, "Joint variation",
  [Varies jointly as two or more quantities.],
  [Multiply the joint quantities; divide any inverse ones.],
  [Missing the inverse part of a joint and inverse statement.])

#card(36, "Partial variation",
  [Partly constant and partly varies.],
  [$y = k x + c$; two data pairs are needed.],
  [Attempting it with a single data pair.])

#card(37, "Table of values",
  [A table with no words at all.],
  [Test $y/x$; if it is not constant, test $x y$.],
  [Testing only the first two rows.])


== S.7 Sequences and Series

#card(38, "A.P. term or sum",
  [A list with a constant difference.],
  [Identify $a$ and $d$, then substitute into $T_n$ or $S_n$.],
  [Using $n$ where $n - 1$ belongs.])

#card(39, "G.P. term or sum",
  [A list with a constant ratio.],
  [Identify $a$ and $r$; watch the sign of $r$.],
  [Treating a negative ratio as an error.])

#card(40, "Sum to infinity",
  [Sum to infinity, or a recurring decimal.],
  [Check that the ratio is smaller than $1$, then $a/(1 - r)$.],
  [Applying it to a divergent series.])

#card(41, "Three symmetric terms",
  [Three consecutive terms satisfying an identity.],
  [$a - d, a, a + d$ or $a/r, a, a r$.],
  [Choosing the symmetric form and losing the sign of $r$.])

#card(42, "Two terms given",
  [The third term is ... and the seventh is ....],
  [Two equations; subtract for $d$, divide for $r$.],
  [Counting the gap between the terms wrongly.])


== S.8 Binary Operations

#card(43, "Evaluate an operation",
  [A definition using symbols in an unfamiliar way.],
  [Substitute both numbers into the definition.],
  [Applying the usual meaning of the symbol.])

#card(44, "Identity element",
  [Find the identity element.],
  [Solve for $e$ in $a * e = a$, independent of $a$.],
  [Assuming the identity is $0$ or $1$.])

#card(45, "Inverse element",
  [Find the inverse of a given element.],
  [Find $e$ first, then solve $x * b = e$.],
  [Solving $x * b = 0$ without checking the identity.])

#card(46, "Property proof",
  [Is the operation commutative or associative.],
  [Test the definition with letters; one counter-example disproves.],
  [Assuming associativity from commutativity.])


== S.9 Matrices

#card(47, "Determinant and inverse",
  [A two-by-two matrix with numerical entries.],
  [$a d - b c$; swap and negate, then divide by the determinant.],
  [Forgetting the division by the determinant.])

#card(48, "Matrix system",
  [Solve using matrices, or a matrix equation.],
  [$X = A^(-1) B$; multiply on the left.],
  [Writing $B A^(-1)$ instead.])


#shortcut-box("Using the Cards in the Last Week")[
  Shuffle the cards. For each one, say the three lines aloud before looking. A card you can
  deliver in ten seconds is a chapter you can trust; a card you stumble on names the chapter
  to revise that evening. Forty-eight cards, twelve minutes a pass, three passes a week.
]

