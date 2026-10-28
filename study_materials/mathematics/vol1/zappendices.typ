#import "template.typ": *

#pagebreak()

#current-chapter.update("Appendix A: Master Formula & Concept Compendium")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Master Formula & Concept Compendium]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every formula, identity, law, and high-yield constant from all nine chapters of Volume 1 — the single most valuable revision pages in this book. Photocopy these pages and keep them beside your CBT practice screen.
  ]
]

#v(6pt)

== A.1 Number Bases (Chapter 1)

#table(
  columns: (1.15fr, 1.9fr, 1.7fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Concept],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Formula / Rule],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Non-Calculator Note],

  [*Valid digits*], [${0, 1, dots, b - 1}$; $b >$ largest digit.], [Base $1$ digits never appear; $b$ itself is written $10_b$.],
  [*Place value*], [$(d_k dots d_0 . d_(-1) dots)_b = sum d_i b^i$], [$b^0 = 1$ always; count from the radix point outward.],
  [*Horner's chain*], [Start leftmost digit; repeat: $("running" times b + "next")$.], [Converts any base to base $10$ with zero exponent slips.],
  [*Integer to base $q$*], [Divide repeatedly by $q$; stop at quotient $0$.], [Read remainders *UPWARD*.],
  [*Fraction to base $q$*], [Multiply fraction repeatedly by $q$; strip integer part.], [Read integer carries *DOWNWARD*.],
  [*Binary grouping*], [$4 = 2^2$ (pairs), $8 = 2^3$ (triplets), $16 = 2^4$.], [Pad fractional side with trailing zeros.],
  [*Carry / borrow*], [$S >= b arrow.r$ write $S mod b$, carry $floor(S/b)$; borrow $= +b$.], [$1000_b - 1_b = overline((b-1)(b-1)(b-1))_b$.],
  [*Unknown base*], [Expand both sides into base $10$, then solve linear / quadratic.], [Reject roots $<=$ any digit in the numeral!],
)

== A.2 Modular Arithmetic (Chapter 2)

#table(
  columns: (1.15fr, 1.9fr, 1.7fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Concept],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Formula / Rule],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Non-Calculator Note],

  [*Residue*], [$a = q n + r$, $0 <= r < n$; $a mod n = r$.], [Answer must satisfy $0 <= r < n$ — never negative!],
  [*Negative residue*], [If $r_+ = M mod n != 0$: $(-M) mod n = n - r_+$; if $r_+ = 0$: $0$.], [$(-43) mod 7 = 7 - 1 = 6$, never $-1$.],
  [*Operations*], [Reduce factors first, then $plus.o, minus.o, times.o$.], [Saves enormous products in multiplication.],
  [*Inverse*], [$a^(-1)$ exists iff $gcd(a, n) = 1$.], [Composite $ZZ_n$: factors of $n$ have no inverse (zero divisors).],
  [*Division $b div a$*], [Solve $a x equiv b (mod n)$; test $b + k n$ divisible by $a$.], [Never write a decimal fraction!],
  [*Linear congruence*], [$d = gcd(a, n)$. If $d divides.not b$: no solution. If $d divides b$: exactly $d$ solutions, step $n/d$.], [Divide the *modulus* too!],
  [*Large power*], [Find cycle when $a^m equiv 1$; write $k = m q + r$.], [$a^(p-1) equiv 1 (mod p)$ for prime $p$.],
  [*Calendar*], [$(d_0 plus.minus D) mod 7$, Sunday $= 0$.], [Ordinary year $= +1$ day; leap year $= +2$ days.],
)

== A.3 Fractions, Decimals, Approximations & Errors (Chapter 3)

#table(
  columns: (1.15fr, 1.9fr, 1.7fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Concept],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Formula / Rule],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Non-Calculator Note],

  [*HCF / LCM*], [HCF $=$ lowest prime powers; LCM $=$ highest prime powers.], [$"HCF" times "LCM" = A B$ for two numbers only.],
  [*BODMAS*], [Brackets $arrow.r$ *of* $arrow.r$ $times / div$ (left to right) $arrow.r$ $+ / -$ (left to right).], [`"of"` binds tighter than $div$!],
  [*Recurring decimal*], [$0.overline(B) = frac(B, 99 dots 9)$; $0.A overline(B) = frac(A B - A, 99 dots 9 00 dots 0)$.], [Multiply by $10^k$ then subtract.],
  [*Terminating test*], [Reduced $q = 2^a 5^b arrow.r$ terminates in $max(a, b)$ d.p.], [Cancel common factors FIRST ($21/120 = 7/40$).],
  [*Significant figures*], [Count from first non-zero digit.], [Retain trailing decimal zeros; large integers need placeholder zeros.],
  [*Bounds*], [$x plus.minus u/2$: $x_("min") <= "true" < x_("max")$.], [Unit $u$ = precision of the last stated digit.],
  [*Percentage error*], [$frac(|"Measured" - "Actual"|, "Actual") times 100%$.], [Denominator is the ACTUAL value.],
  [*Reverse error*], [$(1 plus.minus p/100) times "Actual" = "Measured"$.], [$19.8$ underestimated $10%$ $arrow.r$ actual $= 19.8 / 0.90 = 22$.],
)

== A.4 Ratio, Proportion, Rates & Speed (Chapter 4)

#table(
  columns: (1.15fr, 1.9fr, 1.7fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Concept],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Formula / Rule],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Non-Calculator Note],

  [*Fractional ratio*], [$frac(1, a) : frac(1, b) : frac(1, c)$ multiply by $"LCM"(a, b, c)$.], [$1/2 : 1/3 : 1/4 = 6 : 4 : 3$ ($12$ parts).],
  [*Chained ratio*], [Match bridge term to its LCM, then multiply.], [$A : B = 3 : 4, B : C = 6 : 7 arrow.r 9 : 12 : 14$.],
  [*Sharing*], [$"Share"_i = frac(r_i, sum r) times Q$.], [Difference in parts saves computing both shares.],
  [*Direct / inverse*], [$y_1 / x_1 = y_2 / x_2$; $x_1 y_1 = x_2 y_2$.], [More workers $arrow.r$ fewer days (inverse).],
  [*Compound work*], [$frac(M_1 D_1 H_1, W_1) = frac(M_2 D_2 H_2, W_2)$.], [Provisions after $k$ days: $M_1(D_1 - k) = M_2 D$.],
  [*Combined rates*], [$frac(1, T) = sum frac(1, T_i)$; two: $T = frac(a b, a + b)$.], [Outlet/leak rates are *negative*.],
  [*Average speed*], [$frac("total distance", "total time")$; equal legs: $frac(2 v_1 v_2, v_1 + v_2)$.], [Never average the speeds arithmetically!],
  [*Unit conversion*], [$"km/h" times frac(5, 18) = "m/s"$; $"m/s" times frac(18, 5) = "km/h"$.], [$36, 54, 72, 90, 108" km/h" = 10, 15, 20, 25, 30" m/s"$.],
  [*Trains*], [Point object: $d = L_t$. Bridge/platform: $d = L_t + L_b$.], [Convert speed to $"m/s"$ first!],
  [*Alligation*], [$frac(m_1, m_2) = frac(C_2 - C_m, C_m - C_1)$.], [Also works for concentrations and speeds.],
  [*Map scales*], [Length: $times n$. Area: $times n^2$.], [Convert $1" cm"$ to ground units *before* squaring.],
)

== A.5 Commercial & Financial Mathematics (Chapter 5)

#table(
  columns: (1.15fr, 1.9fr, 1.7fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Concept],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Formula / Rule],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Non-Calculator Note],

  [*Simple interest*], [$I = (P R T) / 100$; $A = P (1 + (R T) / 100)$], [$T$ in years; months give $T = m / 12$.],
  [*Doubling (SI)*], [$T = 100 / R$; tripling $T = 200 / R$], [At 12.5 percent: doubles in 8 yrs, triples in 16.],
  [*Compound*], [$A = P (1 + r / 100)^n$; then $"CI" = A - P$], [Sub-annual: rate $div k$, periods $k n$.],
  [*2-year gap*], [$"CI"_2 - "SI"_2 = P (r / 100)^2$], [Equals interest earned on first-year interest.],
  [*Depreciation*], [$V_n = V_0 (1 - d / 100)^n$], [Varying rates: chain the yearly multipliers.],
  [*Profit / loss*], [$( "SP" - "CP" ) / "CP" times 100%$; $"SP" = "CP" (1 plus.minus p / 100)$], [CP includes transport and repairs.],
  [*Discount*], [$"SP" = "MP" (1 - d / 100)$; successive: $1 - (1 - d_1)(1 - d_2)$], [20% then 15% gives 32%, never 35%.],
  [*Same-SP trap*], [$+p%$ and $-p%$ on equal SP gives net loss $p^2 / 100$ percent], [+25% and -25% gives a 6.25% loss.],
  [*Hire purchase*], [$"HP" = "Deposit" + n times "Instalment"$], [Extra cost $= "HP" - "Cash Price"$.],
  [*Shares*], [$N = "Cash" / P_("mkt")$; $"Dividend" = N times (d / 100) times V_("nom")$], [Dividend percent applies to NOMINAL value only.],
  [*Yield*], [$("Dividend per share") / P_("mkt") times 100%$], [Different from the declared dividend rate.],
  [*VAT*], [$P_("inc") = P_0 (1 + v / 100)$; $P_0 = P_("inc") / (1 + v / 100)$], [7.5 percent: multiply by $40 / 43$; 5 percent: by $20 / 21$.],
  [*Tax*], [$"Taxable" = "Gross" - "Allowances"$; then apply bands slice by slice], [Net pay $=$ Gross minus total tax.],
)


== A.6 Indices & Standard Form (Chapter 6)

#table(
  columns: (1.15fr, 1.9fr, 1.7fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Rule],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Formula],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Non-Calculator Note],

  [*Product / quotient*], [$a^m a^n = a^(m + n)$; $frac(a^m, a^n) = a^(m - n)$], [Same base required!],
  [*Power of power*], [$(a^m)^n = a^(m n)$; $(a b)^n = a^n b^n$], [Distributes over products, NOT sums.],
  [*Zero / negative*], [$a^0 = 1$ ($a != 0$); $a^(-n) = frac(1, a^n)$], [$(frac(a, b))^(-n) = (frac(b, a))^n$],
  [*Fractional*], [$a^(p/q) = (root(q, a))^p$], [Root FIRST, power SECOND.],
  [*Sums factor*], [$a^(n + k) plus.minus a^n = a^n(a^k plus.minus 1)$], [Never add exponents across a sum!],
  [*Disguised quadratic*], [$u = a^x > 0$ in $p a^(2x) + q a^x + r = 0$], [Reject every root $u <= 0$.],
  [*Standard form*], [$A times 10^n$, $1 <= |A| < 10$, $n in ZZ$], [Large $arrow.r$ positive $n$; small $arrow.r$ negative $n$.],
  [*Add / subtract*], [Align both terms to the same power of $10$.], [Never add mantissas with different exponents.],
  [*Roots*], [$sqrt(A times 10^(2k)) = sqrt(A) 10^k$], [Adjust exponent to a multiple of $2$ or $3$ first.],
)

== A.7 Logarithms (Chapter 7)

#table(
  columns: (1.15fr, 1.9fr, 1.7fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Law / Identity],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Formula],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Non-Calculator Note],

  [*Definition*], [$log_a N = x arrow.l.r.double a^x = N$], [Domain: $N > 0$, $a > 0$, $a != 1$.],
  [*Anchors*], [$log_a 1 = 0$; $log_a a = 1$], [$log_(10) 10 = 1$, $log_(10) 100 = 2$.],
  [*Product / quotient*], [$log_a (M N) = log_a M + log_a N$; $log_a frac(M, N) = log_a M - log_a N$], [Never distribute over a sum!],
  [*Power*], [$log_a M^p = p log_a M$], [$(log_a x)^2 != log_a x^2$.],
  [*Base power*], [$log_(a^k)(M^p) = frac(p, k) log_a M$], [$log_(sqrt(3)) 27 = 6$ instantly.],
  [*Change of base*], [$log_a b = frac(log_c b, log_c a) = frac(1, log_b a)$], [$frac(log 81, log 27) = frac(4, 3)$.],
  [*Chain*], [$(log_a b)(log_b c) = log_a c$], [Telescoping products and sums.],
  [*Constants*], [$log_(10) 2 = 0.3010$; $log_(10) 3 = 0.4771$; $log_(10) 5 = 1 - log_(10) 2 = 0.6990$], [Memorize these three to score any log question!],
  [*Digits*], [$N = a^k$ has $floor(log_(10) N) + 1$ digits.], [$2^(50) arrow.r 15.05 arrow.r 16$ digits.],
  [*Bar notation*], [$overline(3).4771 = -3 + 0.4771$], [Keep the mantissa non-negative when dividing.],
  [*Inequalities*], [Base $> 1$: keep sign. Base $in (0, 1)$: *reverse* sign.], [Always impose the domain first.],
)

== A.8 Surds & Radical Equations (Chapter 8)

#table(
  columns: (1.15fr, 1.9fr, 1.7fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Concept],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Formula / Rule],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Non-Calculator Note],

  [*Reduce*], [$sqrt(k^2 m) = k sqrt(m)$ ($m$ square-free).], [$sqrt(72) = 6 sqrt(2)$, $sqrt(108) = 6 sqrt(3)$.],
  [*Pure form*], [$k sqrt(m) = sqrt(k^2 m)$ (for $k > 0$).], [Best way to order surds.],
  [*Like terms*], [$p sqrt(m) plus.minus q sqrt(m) = (p plus.minus q) sqrt(m)$], [Different radicands cannot combine.],
  [*Conjugate*], [$(p + q sqrt(r))(p - q sqrt(r)) = p^2 - q^2 r$], [Flip only the middle sign.],
  [*Unit norm*], [If $p^2 - q^2 r = 1$, reciprocal $=$ conjugate.], [$frac(1, 2 + sqrt(3)) = 2 - sqrt(3)$.],
  [*Root of surd*], [$sqrt(a plus.minus 2 sqrt(b)) = sqrt(x) plus.minus sqrt(y)$, $x + y = a$, $x y = b$.], [Larger root first to stay positive.],
  [*Equality*], [$a + b sqrt(k) = c + d sqrt(k) arrow.r.double a = c, b = d$.], [Rational vs irrational parts match separately.],
  [*Radical equations*], [$sqrt(f) = g arrow.r.double g >= 0$, $f = g^2$.], [ALWAYS test candidates; discard extraneous roots.],
  [*Two radicals*], [$sqrt(f) - sqrt(g) = c arrow.r$ isolate one, square twice.], [Or use conjugate: sum $= frac(f - g, c)$.],
  [*Exact trig surds*], [$sin 30 = cos 60 = 1/2$; $sin 45 = cos 45 = frac(sqrt(2), 2)$; $sin 60 = cos 30 = frac(sqrt(3), 2)$; $tan 60 = sqrt(3)$], [$tan 45 = 1$; $tan 30 = frac(sqrt(3), 3)$.],
)

== A.9 Sets & Venn Diagrams (Chapter 9)

#table(
  columns: (1.15fr, 1.9fr, 1.7fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Concept],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Formula / Rule],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Non-Calculator Note],

  [*Subsets*], [$2^n$ total; $2^n - 1$ proper; $2^n - 2$ non-empty proper.], [${0}$ and ${emptyset}$ are singletons, not empty!],
  [*De Morgan*], [$(A union B)' = A' inter B'$; $(A inter B)' = A' union B'$], [Complement flips union with inter.],
  [*Absorption*], [$A union (A inter B) = A$; $A inter (A union B) = A$], [Also $A union (A' inter B) = A union B$.],
  [*Two-set count*], [$n(A union B) = n(A) + n(B) - n(A inter B)$], [Subtract 'neither' from $n(cal(E))$ first.],
  [*Exactly one*], [$n(A triangle.t B) = n(A) + n(B) - 2 n(A inter B)$], [Symmetric difference.],
  [*Three-set count*], [$n(A union B union C) = sum n - sum n("pairs") + n(A inter B inter C)$], [Fill the triple center FIRST.],
  [*Exactly two*], [$E_2 = sum n("pairs") - 3 E_3$], ["A and B" $!= $ "A and B only".],
  [*Exactly one*], [$E_1 = sum n("singles") - 2 sum n("pairs") + 3 E_3$], [Check: $E_1 + E_2 + E_3 = n(union)$.],
  [*Bounds*], [$max(0, a + b - U) <= n(A inter B) <= min(a, b)$], [3 sets: min triple $= max(0, a + b + c - 2U)$.],

)

#pagebreak()

// ============================================================================
#current-chapter.update("Appendix B: 45-Day Countdown Revision Plan")
== Appendix B — 45-Day Countdown Revision Plan & CBT Exam-Day Protocol

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 10.2pt, weight: "bold", fill: jamb-green)[HOW TO USE THIS 45-DAY PLAN]
  #v(4pt)
  Each day has a *teaching block* (read notes and reproduce every worked example on paper), a *drill block* (attempt the chapter drill under a timer), and a *retention block* (re-attempt only the questions you previously got wrong). Never move to a new chapter until you score at least *24/30 (80%)* on the current chapter drill.
]

#table(
  columns: (auto, 1.5fr, 2.3fr),
  inset: 6.5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Days],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Focus],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Target Deliverable],

  [1 – 5], [Ch 1 Number Bases (all five sections + drill 1–35)], [Binary/other-base conversions by hand in under 45 s each.],
  [6 – 9], [Ch 2 Modular Arithmetic (residues, congruences, calendars)], [Solve any $a x equiv b$ congruence and state the exact number of solutions.],
  [10 – 14], [Ch 3 Fractions, decimals, s.f. / d.p., error bounds], [Zero arithmetic slips on BODMAS and s.f. items.],
  [15 – 18], [Ch 4 Ratio, proportion, rates, speed, mixtures], [Recognise inverse vs direct proportion instantly.],
  [19 – 26], [Ch 5 Commercial maths (interest, profit, shares, VAT, tax)], [Shares dividend on NOMINAL value, VAT reverse division correct.],
  [27 – 35], [Ch 6 Indices & standard form (including disguised quadratics)], [All four indicial equation classes solved cleanly.],
  [36 – 43], [Ch 7 Logarithms (laws, change of base, equations)], [Evaluate logs from $log 2$ and $log 3$ with no tables.],
  [44 – 51], [Ch 8 Surds (rationalisation, root of surd, radical equations)], [Every rationalisation completed in under 60 s.],
  [52 – 60], [Ch 9 Sets & Venn (2-set and 3-set applications, bounds)], [Fill any 3-set Venn diagram inside-out without error.],
  [61], [*Full Mock Examination (Chapter 10)*], [Score 45+/60 under exam timing.],
  [62 – 66], [Re-drill every previously wrong question + Appendices C & D], [Error log fully reworked and closed out.],
)

#v(8pt)
== B.1 CBT Exam-Day Protocol (Minute-by-Minute)

#block(breakable: false)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 12pt,
    block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: jamb-navy)[Before the Exam]
      #v(4pt)
      - Sleep 7–8 hours; no new topics after 9 p.m. the night before.
      - Rehearse the *on-screen calculator's* 4-function layout so no seconds are lost.
      - Confirm JAMB profile, centre, and exam-time details; arrive 60+ minutes early.
      - Bring only the approved items; leave phones and smart devices behind.
      - *Five-minute mental warm-up:* recite the powers of $2$ to $2^(10)$, the $log_(10) 2$, $log_(10) 3$, $log_(10) 5$ constants, and the three exact trig surd triangles.
    ],
    block(width: 100%, fill: trap-bg, stroke: 0.8pt + trap-red, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: trap-red)[During the Exam]
      #v(4pt)
      - *Minutes 0–2:* Read the on-screen instructions; note the total question count and timer.
      - *Pass 1 (roughly half the time):* Answer every question you can do in under 45 seconds; flag the rest.
      - *Pass 2:* Return to flagged questions; always eliminate two options before computing.
      - *Substitution shortcut:* Plug options *into* the question (especially for equations and unknown-base iterations) instead of solving.
      - *Final 3 minutes:* Ensure *no blank answers* — there is no negative marking.
    ],
  )
]

#trap-box("The Five Most Expensive Exam-Day Mistakes")[
  1. Leaving a question blank because it looks long — nearly every Section I question is 45 seconds of arithmetic.
  2. Trusting mental arithmetic for multi-step percentages instead of writing the intermediate line.
  3. Forgetting to convert months to years (simple interest) or $"km/h"$ to $"m/s"$ (trains).
  4. Using the market price instead of the nominal value for a share dividend.
  5. Not checking whether an answer should be in the *same base* as the question! (Most base questions ask for the answer in a specific base.)
]

#pagebreak()

// ============================================================================
#current-chapter.update("Appendix C: Glossary of 140 Key Terms")
== Appendix C — Glossary of 140 Essential Terms

#table(
  columns: (1fr, 2.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Term],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Meaning in the UTME Context],

  [*Absolute error*], [The positive difference between a measured value and the true value.],
  [*Absorption law*], [$A union (A inter B) = A$ and $A inter (A union B) = A$.],
  [*Additive inverse (mod n)*], [The residue $n - a$ that sums with $a$ to $0$ modulo $n$.],
  [*Alligation*], [The cross-subtraction method for the ratio in which two priced items must be mixed.],
  [*Argument of a logarithm*], [The number $N$ in $log_a N$; must be strictly positive.],
  [*Average speed*], [Total distance divided by total time — never the arithmetic mean of leg speeds for equal distances.],
  [*Bar notation*], [Classical log form $overline(3).4771 = -3 + 0.4771$, with only the characteristic negative.],
  [*Base (radix)*], [The number of distinct digits available in a positional system; base $b$ uses $0$ to $b - 1$.],
  [*Bicimal*], [A fractional number written in binary (base-$2$ "decimal").],
  [*BODMAS*], [Brackets, Of, Division/Multiplication, Addition/Subtraction — the fixed order of operations.],
  [*Bounds (lower/upper)*], [The smallest and largest true values consistent with a rounded measurement ($x plus.minus u/2$).],
  [*Brokerage*], [The percentage commission a stockbroker charges on the market value of shares traded.],
  [*Cayley table*], [A square table displaying all results of a binary operation on a finite set.],
  [*Change of base*], [$log_a b = log_c b / log_c a$, converting any logarithm to a convenient base.],
  [*Characteristic*], [The integer part of a logarithm; determines the position of the decimal point.],
  [*Cistern problem*], [A rate problem combining inlet taps (+) with outlet drains ($-$) to find the net filling time.],
  [*Complement (set)*], [All elements of the universal set not in the given set; written $A'$.],
  [*Composite modulus*], [A modulo $n$ where $n$ is not prime; contains zero divisors.],
  [*Compound interest*], [Interest computed on principal plus previously accumulated interest ($A = P(1 + r)^n$).],
  [*Congruence*], [$a equiv b (mod n)$ means $n$ divides $a - b$ exactly.],
  [*Conjugate surd*], [The same binomial with the middle sign reversed; clears a binomial radical denominator.],
  [*Coprime*], [Two integers whose greatest common divisor is $1$.],
  [*Cost price (CP)*], [Total outlay to make goods available for sale, including transport and repairs.],
  [*Cumulative dividend*], [Total dividend paid on all shares held by an investor.],
  [*Decimal place*], [A digit position to the right of the decimal point.],
  [*De Morgan's laws*], [Complement converts $union$ to $inter$ and vice versa.],
  [*Denary*], [Base ten; the everyday decimal system.],
  [*Depreciation*], [Annual loss in the book value of an asset, usually as a fixed percentage of the reducing balance.],
  [*Direct proportion*], [Two quantities increase together so their ratio stays constant.],
  [*Disjoint sets*], [Sets with no common element; $A inter B = emptyset$.],
  [*Dividend (shares)*], [The cash distribution per share, calculated on the nominal value.],
  [*Discriminant*], [$b^2 - 4 a c$; in modular work it indicates the number of quadratic solutions.],
  [*Element (member)*], [An object belonging to a set.],
  [*Empty set*], [The set with no elements, $emptyset$ or ${}$; NOT ${0}$.],
  [*Error interval*], [The range of true values that round to a given stated measurement.],
  [*Extraneous root*], [A root produced by squaring (or multiplying) that does not satisfy the original equation.],
  [*HCF (GCD)*], [Highest common factor; product of common primes to their lowest powers.],
  [*Hire purchase*], [Instalment purchase: deposit plus periodic payments, total exceeding the cash price.],
  [*Harmonic mean*], [For two speeds over equal distances, $2 v_1 v_2 / (v_1 + v_2)$.],
  [*Inclusion–exclusion*], [Counting formula removing double-counted overlaps: $n(A) + n(B) - n(A inter B)$.],
  [*Indicial equation*], [An equation with the unknown in an exponent, e.g. $2^(3x-1) = 32$.],
  [*Inverse proportion*], [Two quantities whose product remains constant as one increases.],
  [*Irrational number*], [A real number that is not a ratio of integers; its decimal never repeats or terminates.],
  [*Least non-negative residue*], [The remainder $r$ with $0 <= r < n$.],
  [*LCM*], [Lowest common multiple; product of all primes at their highest powers.],
  [*Logarithm*], [The exponent to which a base must be raised to give a number.],
  [*Mantissa*], [The non-negative fractional part of a logarithm.],
  [*Marked price (MP)*], [The advertised price before discounts; discount % applies to it.],
  [*Modulo*], [The remainder operation after division by a fixed modulus.],
  [*Modulus*], [The fixed integer $n$ in modular arithmetic (also: the size of a number).],
  [*Multiplicative inverse*], [The residue $a^(-1)$ with $a a^(-1) equiv 1 (mod n)$; exists iff $gcd(a, n) = 1$.],
  [*Nominal (par) value*], [The face value printed on a share, on which dividends are computed.],
  [*Perfect square*], [An integer whose prime exponents are all even.],
  [*Percentage error*], [Absolute error divided by the ACTUAL value, times $100%$.],
  [*Permissible digit*], [Any integer from $0$ to $b - 1$ in base $b$.],
  [*Place value*], [The value a digit carries because of its position relative to the radix point.],
  [*Power set*], [The set of all subsets of a given set; has $2^n$ members.],
  [*Precision unit*], [The last stated place value of a measurement (e.g. $0.1" cm"$).],
  [*Prime factorization*], [Writing a number as a product of prime powers.],
  [*Principal (money)*], [The original sum invested or borrowed, before interest.],
  [*Proper subset*], [A subset that is not the whole set; $2^n - 1$ of them.],
  [*Radical equation*], [An equation containing the unknown inside a square (or higher) root.],
  [*Radicand*], [The number under a radical sign.],
  [*Ratio*], [A comparison of two quantities of the same kind; scaled like a fraction.],
  [*Rationalising*], [Rewriting a quotient to remove surds from the denominator.],
  [*Recurring decimal*], [A decimal whose digits repeat indefinitely; always rational.],
  [*Reducing balance*], [Depreciation applied to the remaining value each year.],
  [*Relative speed*], [The sum (opposite directions) or difference (same direction) of two speeds.],
  [*Roster form*], [A set written by listing its elements in braces.],
  [*Scientific notation*], [Standard form $A times 10^n$ with $1 <= |A| < 10$.],
  [*Set-builder notation*], [A set defined by a rule, e.g. ${x in ZZ : x > 3}$.],
  [*Significant figure*], [A digit counted from the first non-zero digit, which carries measurement information.],
  [*Simple interest*], [Interest computed only on the original principal ($I = P R T / 100$).],
  [*Standard form*], [Number written as $A times 10^n$ with a mantissa between $1$ and $10$.],
  [*Subset*], [A set whose elements all lie in another set; $A subset.eq B$.],
  [*Surd*], [An irrational root of a rational number, e.g. $sqrt(2)$ or $3 - sqrt(7)$.],
  [*Symmetric difference*], [Elements in exactly one of two sets: $A triangle.t B$.],
  [*Terminating decimal*], [A decimal that stops; occurs iff the reduced denominator has only $2$ and $5$ as prime factors.],
  [*Union*], [The set of elements belonging to either or both sets.],
  [*Universal set*], [The master set containing every element under discussion.],
  [*Value added tax (VAT)*], [A consumption tax added to the net price or embedded within the inclusive price.],
  [*Yield*], [The actual percentage return on the market price of a share.],
  [*Zero divisor*], [A non-zero element $a$ in $ZZ_n$ for which some non-zero $b$ gives $a b equiv 0$.],
)

#v(6pt)
#block(
  width: 100%,
  fill: jamb-navy,
  radius: 8pt,
  inset: 14pt,
)[
  #text(font: "DejaVu Sans", size: 11pt, weight: "bold", fill: white)[End of Volume 1 — Number & Numeration]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#CBD5E1"))[
    You have now covered the entire JAMB Section I syllabus in depth: every objective, every law, every diagram, and every exam trap. Continue with *Volume 2 — Complete Algebra* to master polynomials, variation, inequalities, progressions, binary operations, and matrices.
  ]
]
