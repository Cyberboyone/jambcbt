#import "template.typ": *

#current-chapter.update("Appendix A: Master Formula Compendium")

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix A: Master Formula & Method Compendium]]

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
    Every formula, rule and recognition cue from the ten chapters of Volume 4, one table per chapter. Photocopy these pages and keep them beside your practice screen.
  ]
]

#v(6pt)

== A.1 Limits

#table(
  columns: (1.2fr, 1.6fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Situation],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Watchpoint],
  [Polynomial at a point], [Substitute], [No work needed if the function is defined],
  [$0/0$ from a quadratic], [Factorise, cancel, substitute], [Cancel first, substitute after],
  [$0/0$ from a cubic difference], [$x^3 - a^3 = (x - a)(x^2 + a x + a^2)$], [Both factors needed],
  [Square roots], [Multiply by the conjugate], [The denominator becomes a difference of squares],
  [Ratio of polynomials as $x -> infinity$], [Divide by the highest power], [Only the leading terms survive],
  [Trigonometric limit], [$lim_(x -> 0) sin(k x)/x = k$], [The multiplier $k$ must be kept],
  [Limit does not exist], [Two one-sided limits differ], [Say so explicitly in the answer],
)

== A.2 Differentiation

#table(
  columns: (1.2fr, 1.6fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Rule],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Statement],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[When to reach for it],
  [Power], [$dif / dif x (x^n) = n x^(n - 1)$], [Any single power, including negative powers],
  [Constant], [$dif / dif x (k) = 0$], [A number standing alone],
  [Sum], [Differentiate term by term], [Polynomials],
  [Product], [$(u v)' = u' v + u v'$], [Two expressions multiplied, both containing $x$],
  [Quotient], [$(u/v)' = (u' v - u v')/v^2$], [One expression over another],
  [Chain], [$dif / dif x [f(g(x))] = f'(g(x)) g'(x)$], [Any bracket raised to a power],
  [Trigonometric], [$dif / dif x sin(k x) = k cos(k x)$], [Sine and cosine of a multiple of $x$],
  [Second derivative], [$y'' = dif / dif x (dif y / dif x)$], [Deciding maximum or minimum],
)

== A.3 Applications of the Derivative

#table(
  columns: (1.2fr, 1.6fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Watchpoint],
  [Gradient at a point], [Substitute the point into $dif y / dif x$], [Differentiate first, substitute second],
  [Stationary points], [Solve $f'(x) = 0$], [Both roots, not one],
  [Maximum or minimum], [Evaluate $f''$ at each stationary point], [$f'' > 0$ is a minimum],
  [Increasing or decreasing], [Sign of $f'$], [Positive means increasing],
  [Tangent line], [$y - y_1 = m(x - x_1)$ with $m = f'(x_1)$], [Position and gradient come from the same $x$],
  [Normal line], [Gradient $-1/m$], [Never forget the negative reciprocal],
  [Rate of change], [Chain rule in time], [Multiply by the given rate],
  [Small increment], [$dif y approx f'(x) dif x$], [Keep the sign of $dif x$],
)

== A.4 Integration

#table(
  columns: (1.2fr, 1.6fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Integrand],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Result],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Watchpoint],
  [$x^n$, $n != -1$], [$x^(n + 1)/(n + 1) + c$], [Divide by the new power],
  [$k$], [$k x + c$], [A constant integrates to a multiple of $x$],
  [A sum], [Integrate term by term], [The constant $c$ is added once, at the end],
  [$(a x + b)^n$], [$(a x + b)^(n + 1)/(a(n + 1)) + c$], [Divide by the coefficient inside as well],
  [Definite integral], [$F(b) - F(a)$], [Upper minus lower, in that order],
  [Given $dif y / dif x$ and a point], [Integrate, then substitute to find $c$], [$c$ is not optional],
  [Area under a curve], [$integral_a^b y dif x$], [Only if $y >= 0$ on the interval],
)

== A.5 Area and Motion

#table(
  columns: (1.2fr, 1.6fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[From what],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How],
  [Area between two curves], [Their crossing points], [$integral ("upper" - "lower") dif x$],
  [Area below the axis], [The roots], [Split, integrate, take magnitudes],
  [Displacement], [Velocity], [Integrate $v$, keeping signs],
  [Distance travelled], [Velocity and its zeros], [Integrate $|v|$ piece by piece],
  [Velocity], [Acceleration], [Integrate $a$, using the initial speed for $c$],
  [Acceleration], [Velocity], [Differentiate $v$],
  [Trapezium estimate], [A table of ordinates], [$(h/2)[y_0 + y_n + 2(y_1 + dots + y_(n-1))]$],
)

== A.6 Representation of Data

#table(
  columns: (1.2fr, 1.6fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chart or table],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it shows],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The common error],
  [Bar chart], [Frequencies of categories], [Bar height is frequency],
  [Pie chart], [Proportions of a whole], [Angle $= (f/N) times 360^degree$],
  [Histogram], [Grouped numerical data], [Plot frequency density, not frequency],
  [Frequency polygon], [Midpoints joined], [Plot at the midpoint],
  [Ogive], [Cumulative frequency], [Plot against the upper boundary],
  [Frequency table], [Raw counts before any average], [Total the frequency column first],
)

== A.7 Measures of Location

#table(
  columns: (1.2fr, 1.6fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Average],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Notes],
  [Mean, ungrouped], [$overline(x) = (sum x)/n$], [Sensitive to outliers],
  [Mean, grouped], [$overline(x) = (sum f x)/(sum f)$], [$x$ is the class midpoint],
  [Median, ungrouped], [Middle value of the ordered list], [Order the data first],
  [Median, grouped], [$L + ((N/2 - F)/f_m) w$], [Cumulative frequency up to the class before],
  [Mode], [Most frequent value], [For grouped data: the modal class],
  [Quartiles], [$Q_1$ at $(n + 1)/4$, $Q_3$ at $3(n + 1)/4$], [Interquartile range $= Q_3 - Q_1$],
  [Combined mean], [$((n_1 overline(x)_1 + n_2 overline(x)_2))/(n_1 + n_2)$], [Weight by the sizes, not by the means],
)

== A.8 Measures of Dispersion

#table(
  columns: (1.2fr, 1.6fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Measure],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Notes],
  [Range], [largest $-$ smallest], [Uses only two values],
  [Mean deviation], [$(sum |x - overline(x)|)/n$], [Always positive],
  [Variance], [$(sum (x - overline(x))^2)/n$], [Squared units],
  [Variance, grouped], [$(sum f (x - overline(x))^2)/(sum f)$], [Midpoints again],
  [Standard deviation], [$sqrt("variance")$], [Same units as the data],
  [Coefficient of variation], [standard deviation over mean, times $100$], [Compares sets with different means],
  [Adding $k$ to every value], [Mean $+ k$; spread unchanged], [No change to variance or SD],
  [Multiplying every value by $k$], [Mean $times k$; standard deviation $times k$; variance $times k^2$], [The variance scales by $k^2$],
)

== A.9 Permutations and Combinations

#table(
  columns: (1.2fr, 1.6fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Situation],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Test],
  [Arrange $n$ distinct objects], [$n!$], [All different, all used],
  [Arrange with repeats], [$n! div (r_1! r_2! ...)$], [Divide by every repeat],
  [Arrange $r$ from $n$, order matters], [$attach(P, tl: n, bl: r)$], [Posts, rankings, passwords],
  [Choose $r$ from $n$, order ignored], [$attach(C, tl: n, bl: r)$], [Committees, teams, handshakes],
  [Round table], [$(n - 1)!$], [Fix one person to kill rotations],
  [Block of people together], [$("block"!)(n - 1)!$], [Permute the block's interior too],
  [Two separate groups], [Multiply the two results], [Choose one from each, then multiply],
  [Diagonals of a polygon], [$attach(C, tl: n, bl: 2) - n$], [Subtract the sides],
)

== A.10 Probability

#table(
  columns: (1.2fr, 1.6fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Rule],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Statement],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Trigger words],
  [Definition], [$P(A) = ("favourable")/("total")$], [Equally likely outcomes],
  [Complement], [$P("not" A) = 1 - P(A)$], [not, none, neither, at least one],
  [Addition], [$P(A union B) = P(A) + P(B) - P(A inter B)$], [or],
  [Mutually exclusive], [$P(A union B) = P(A) + P(B)$], [cannot happen together],
  [Multiplication], [$P(A inter B) = P(A) P(B)$], [and, independent],
  [Without replacement], [Denominator falls by one], [drawn without replacement],
  [Odds], [$P = a/(a + b)$], [odds in favour $a : b$],
  [At least one], [$1 - P("none")$], [Multiply the failures first],
)

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix B: The Twelve Question Types]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX B]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Twelve Question Types]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Twelve stems account for almost every calculus and statistics question in the UTME paper. Read the stem, name the type, write its first line. That is the whole method.
  ]
]

#v(6pt)

#table(
  columns: (1.7fr, 1.5fr, 1.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The stem begins],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Type],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The first line],
  [Evaluate $lim_(x -> 2) ...$], [Substitution limit], [Put $x = 2$],
  [Evaluate $lim_(x -> 3) (x^2 - 9)/(x - 3)$], [Cancellation limit], [Factorise the top],
  [Differentiate $y = ...$], [Rule application], [Apply the rule term by term],
  [Find the gradient of $y = ...$ at $x = ...$], [Point gradient], [Differentiate, then substitute],
  [Find the turning point], [Stationary point], [$dif y / dif x = 0$],
  [Find the maximum or minimum value], [Optimisation], [$f' = 0$, then $f''$],
  [Evaluate $integral ... dif x$], [Indefinite integral], [Raise the power, divide, add $c$],
  [Evaluate $integral_a^b ... dif x$], [Definite integral], [Find $F$, substitute, subtract],
  [Find the area under the curve], [Area], [Integrate between the limits],
  [Find the mean, median or mode], [Average], [Tabulate, then apply the formula],
  [Find the variance or standard deviation], [Dispersion], [Mean first, then squared deviations],
  [In how many ways can ...], [Counting], [Decide order or not, then apply $P$ or $C$],
  [Find the probability that ...], [Probability], [Count favourable over total],
)

#v(6pt)

#concept-box("How to use the twelve types")[
  Cover the middle column and read only the stems. Say the type and the first line aloud. Ten stems a minute is the goal; when you can do twenty in two minutes without a mistake, the recognition is secure and the paper becomes a matter of arithmetic.

  #v(3pt)
  Every drill in this volume is drawn from these twelve types. If a question does not match one of them, you have misread the stem — read it again before writing anything.
]

== B.1 Three Stems That Look Alike

#table(
  columns: (1.7fr, 1.4fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Stem],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What is wanted],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
  [Differentiate $x^3$], [The derivative function], [Power rule],
  [Find the gradient at $x = 2$], [A number], [Power rule, then substitute $2$],
  [Find the equation of the tangent at $x = 2$], [A line], [Gradient, then point-slope form],
  [Evaluate the integral of $x^2$], [A function plus $c$], [Raise the power],
  [Evaluate the integral from $0$ to $2$], [A number], [Find $F$, then $F(2) - F(0)$],
  [Find the area under $y = x^2$ from $0$ to $2$], [A number of square units], [Same integral, then attach units],
  [How many ways to arrange $5$ people], [$120$], [$5!$],
  [How many ways to choose $3$ from $5$], [$10$], [$attach(C, tl: 5, bl: 3)$],
  [How many ways to fill $3$ posts from $5$ candidates], [$60$], [$attach(P, tl: 5, bl: 3)$],
)

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix C: Tables Worth Memorising]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX C]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Tables Worth Memorising]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The arithmetic that turns a correct method into a correct answer in ninety seconds. None of it needs a calculator; all of it needs to be automatic.
  ]
]

#v(6pt)

== C.1 Squares and Cubes

#table(
  columns: (0.8fr, 0.9fr, 1fr, 0.8fr, 0.9fr, 1fr),
  inset: 5pt,
  align: center + horizon,
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$n$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$n^2$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$n^3$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$n$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$n^2$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$n^3$],
  [$1$], [$1$], [$1$], [$11$], [$121$], [$1331$],
  [$2$], [$4$], [$8$], [$12$], [$144$], [$1728$],
  [$3$], [$9$], [$27$], [$13$], [$169$], [$2197$],
  [$4$], [$16$], [$64$], [$14$], [$196$], [$2744$],
  [$5$], [$25$], [$125$], [$15$], [$225$], [$3375$],
  [$6$], [$36$], [$216$], [$16$], [$256$], [$4096$],
  [$7$], [$49$], [$343$], [$17$], [$289$], [$4913$],
  [$8$], [$64$], [$512$], [$18$], [$324$], [$5832$],
  [$9$], [$81$], [$729$], [$19$], [$361$], [$6859$],
  [$10$], [$100$], [$1000$], [$20$], [$400$], [$8000$],
)

== C.2 Factorials and Small Counting Values

#table(
  columns: (1fr, 1.2fr, 1.2fr, 1.2fr),
  inset: 5pt,
  align: center + horizon,
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$n$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$n!$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$attach(C, tl: 6, bl: n)$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$attach(P, tl: 6, bl: n)$],
  [$0$], [$1$], [$1$], [$1$],
  [$1$], [$1$], [$6$], [$6$],
  [$2$], [$2$], [$15$], [$30$],
  [$3$], [$6$], [$20$], [$120$],
  [$4$], [$24$], [$15$], [$360$],
  [$5$], [$120$], [$6$], [$720$],
  [$6$], [$720$], [$1$], [$720$],
)

== C.3 Fractions, Decimals and Percentages

#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 5pt,
  align: center + horizon,
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Fraction],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Decimal],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Percent],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Fraction],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Decimal],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Percent],
  [$1/2$], [$0.5$], [$50$], [$1/8$], [$0.125$], [$12.5$],
  [$1/3$], [$0.333$], [$33.3$], [$3/8$], [$0.375$], [$37.5$],
  [$2/3$], [$0.667$], [$66.7$], [$5/8$], [$0.625$], [$62.5$],
  [$1/4$], [$0.25$], [$25$], [$1/6$], [$0.167$], [$16.7$],
  [$3/4$], [$0.75$], [$75$], [$5/6$], [$0.833$], [$83.3$],
  [$1/5$], [$0.2$], [$20$], [$1/10$], [$0.1$], [$10$],
)

== C.4 Integrals Worth Knowing on Sight

#table(
  columns: (1.5fr, 1.2fr, 1.5fr, 1.2fr),
  inset: 5.5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Integral],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Integral],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
  [$integral_0^1 x^2 dif x$], [$1/3$], [$integral_0^2 x^2 dif x$], [$8/3$],
  [$integral_0^1 x^3 dif x$], [$1/4$], [$integral_0^2 x^3 dif x$], [$4$],
  [$integral_0^1 x dif x$], [$1/2$], [$integral_0^2 x dif x$], [$2$],
  [$integral_0^1 (x - x^2) dif x$], [$1/6$], [$integral_0^1 (x^2 - x^3) dif x$], [$1/12$],
  [$integral_1^2 1/x^2 dif x$], [$1/2$], [$integral_1^2 (x^2 + 1) dif x$], [$10/3$],
)

== C.5 Probability and Statistics Constants

#table(
  columns: (1.3fr, 1.5fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where it is used],
  [Outcomes of one die], [$6$], [Single-die questions],
  [Outcomes of two dice], [$36$], [Sum, product and difference questions],
  [Cards in a pack], [$52$], [Suit questions: $13$ of each],
  [Face cards], [$12$], [Jacks, queens and kings],
  [Outcomes of $n$ coin tosses], [$2^n$], [At least one head questions],
  [Ways to sum $7$ with two dice], [$6$], [The most likely sum],
  [Degrees in a pie chart], [$360$], [Sector angle $= (f/N) times 360$],
)

#v(8pt)
#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[THE FIVE-MINUTE WARM-UP]
  #v(3pt)
  Before any paper, write these from memory: the power rule for differentiation, the power rule for integration, the quadratic formula, the variance formula, and the three probability rules (complement, addition, multiplication). Five lines, five minutes, and the paper starts with the machinery already loaded.
]
