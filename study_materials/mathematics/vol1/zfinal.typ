#import "template.typ": *

#pagebreak()

#current-chapter.update("Appendix K: 120 Numeric Speed Drills")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[120 Numeric Speed Drills]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Pure computation, no wording. Cover the answer column and complete each block of thirty in under twelve minutes. Speed here is what saves you minutes later for the questions that actually require thought.
  ]
]

#v(2pt)
== K.1 Bases, Modulo and Indices (1–30)

#table(
  columns: (auto, 2.6fr, 1.5fr),
  inset: 4.5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.35pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Drill],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Answer],

  [1], [$11001_2$ in base ten], [$25$],
  [2], [$111111_2$ in base ten], [$63$],
  [3], [$1000000_2$ in base ten], [$64$],
  [4], [$45_(10)$ in base two], [$101101_2$],
  [5], [$128_(10)$ in base two], [$10000000_2$],
  [6], [$81_(10)$ in base three], [$10000_3$],
  [7], [$100_(10)$ in base five], [$400_5$],
  [8], [$256_(10)$ in base four], [$10000_4$],
  [9], [$0.25_(10)$ in base two], [$0.01_2$],
  [10], [$0.125_(10)$ in base two], [$0.001_2$],
  [11], [$1011_2 + 1101_2$], [$11000_2$],
  [12], [$10000_2 - 111_2$], [$1001_2$],
  [13], [$444_5 + 11_5$], [$1010_5$],
  [14], [$1000_7 - 1_7$], [$666_7$],
  [15], [$11_2 times 11_2$], [$1001_2$],
  [16], [$101_2 times 100_2$], [$10100_2$],
  [17], [$88_{10} mod 9$], [$7$],
  [18], [$(-88) mod 9$], [$2$],
  [19], [$(-15) mod 4$], [$1$],
  [20], [$3^5 mod 7$], [$5$],
  [21], [$2^7 mod 5$], [$3$],
  [22], [$4^5 mod 6$], [$4$],
  [23], [$10^4 mod 9$], [$1$],
  [24], [$5^(-1) (mod 7)$], [$3$],
  [25], [$3^(-1) (mod 10)$], [$7$],
  [26], [$16^(3/4)$], [$8$],
  [27], [$32^(2/5)$], [$4$],
  [28], [$81^(-1/2)$], [$frac(1, 9)$],
  [29], [$2^10 - 2^9$], [$512$],
  [30], [$3^4 div 3^2$], [$9$],
)

== K.2 Fractions, Decimals, Ratios and Money (31–60)

#table(
  columns: (auto, 2.6fr, 1.5fr),
  inset: 4.5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.35pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Drill],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Answer],

  [31], [$frac(2, 3) + frac(3, 5)$], [$frac(19, 15) = 1 frac(4, 15)$],
  [32], [$frac(7, 8) - frac(5, 12)$], [$frac(11, 24)$],
  [33], [$frac(4, 9) times frac(3, 8)$], [$frac(1, 6)$],
  [34], [$frac(5, 6) div frac(25, 36)$], [$frac(6, 5) = 1 frac(1, 5)$],
  [35], [$frac(3, 4)$ of $2 frac(2, 3)$], [$2$],
  [36], [$0.125$ as a fraction], [$frac(1, 8)$],
  [37], [$frac(5, 16)$ as a decimal], [$0.3125$],
  [38], [$0.overline(4)$ as a fraction], [$frac(4, 9)$],
  [39], [$0.2overline(7)$ as a fraction], [$frac(5, 18)$],
  [40], [$0.00825$ to two s.f.], [$0.0083$],
  [41], [$12.964$ to three s.f.], [$13.0$],
  [42], [$0.9985$ to three d.p.], [$0.999$ (the fourth digit $5$ rounds the third up)],
  [43], [$frac(9, 20)$ as a percentage], [$45%$],
  [44], [$18%$ of $250$], [$45$],
  [45], [Increase $84$ by $25%$], [$105$],
  [46], [Decrease $320$ by $15%$], [$272$],
  [47], [$36 : 48$ simplified], [$3 : 4$],
  [48], [$0.4 : 0.6 : 0.2$ as integers], [$2 : 3 : 1$],
  [49], [Share $96$ in $5 : 7$], [$40$ and $56$],
  [50], [SI on ₦$40000$ at $9%$ for $2$ years], [₦$7200$],
  [51], [Amount on ₦$60000$ at $5%$ simple for $4$ years], [₦$72000$],
  [52], [CI on ₦$80000$ at $25%$ for $2$ years], [₦$45000$],
  [53], [Profit %: CP ₦$2500$, SP ₦$3000$], [$20%$],
  [54], [CP if SP ₦$9600$ at $20%$ profit], [₦$8000$],
  [55], [Discount equivalent to $10%$ then $10%$], [$19%$],
  [56], [VAT at $7.5%$ on ₦$40000$], [₦$3000$],
  [57], [Net of ₦$21500$ inclusive of $7.5%$ VAT], [₦$20000$],
  [58], [Dividend on $800$ shares of ₦$1.00$ at $12.5%$], [₦$100$],
  [59], [Yield if dividend ₦$0.18$ and price ₦$1.20$], [$15%$],
  [60], [Average speed: $60$ km/h out, $40$ km/h back], [$48$ km/h],
)

== K.3 Proportional Reasoning and Measurement (61–90)

#table(
  columns: (auto, 2.6fr, 1.5fr),
  inset: 4.5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.35pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Drill],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Answer],

  [61], [$6$ men in $10$ days $arrow.r$ $12$ men in ?], [$5$ days],
  [62], [$4$ taps in $9$ h $arrow.r$ $6$ taps in ?], [$6$ h],
  [63], [A in $10$ d, B in $15$ d, together], [$6$ days],
  [64], [A in $6$ d, B in $12$ d, together], [$4$ days],
  [65], [Fill $4$ h, drain $12$ h together], [$6$ h],
  [66], [Fill $8$ h, drain $24$ h together], [$12$ h],
  [67], [$36$ km/h in m/s], [$10$ m/s],
  [68], [$25$ m/s in km/h], [$90$ km/h],
  [69], [Distance in $2.5$ h at $64$ km/h], [$160$ km],
  [70], [Time for $210$ km at $70$ km/h], [$3$ h],
  [71], [Gap $18$ km, relative $9$ km/h $arrow.r$ time], [$2$ h],
  [72], [$300$ km, speeds $70$ and $30$ km/h meeting], [$3$ h],
  [73], [Train $120$ m at $24$ m/s past a pole], [$5$ s],
  [74], [Train $180$ m at $20$ m/s over $220$ m bridge], [$20$ s],
  [75], [Alligation ₦$600$ and ₦$900$ to ₦$720$], [$3 : 1$],
  [76], [Alligation ₦$400$ and ₦$700$ to ₦$600$], [$1 : 2$],
  [77], [$20$ L of $40%$ plus $30$ L of $20%$ concentration], [$28%$],
  [78], [Water added to $10$ L of $60%$ to reach $40%$], [$5$ L],
  [79], [Map $1 : 50000$: $6$ cm on map], [$3$ km],
  [80], [Map $1 : 20000$: $5$ cm² on map], [$0.2$ km²],
  [81], [Max % error of $80$ kg to nearest kg], [$0.625%$],
  [82], [Max absolute error of $4.6$ m to 1 d.p.], [$0.05$ m],
  [83], [% error: measured $48$ of true $50$], [$4%$],
  [84], [Actual if $36$ is a $10%$ underestimate], [$40$],
  [85], [HCF of $36$ and $60$], [$12$],
  [86], [LCM of $12$ and $18$], [$36$],
  [87], [HCF of $48$, $72$ and $120$], [$24$],
  [88], [LCM of $6$, $8$ and $12$], [$24$],
  [89], [$1.44$ as a percentage of $3.6$], [$40%$],
  [90], [Value of $0.35$ as a percentage], [$35%$],
)

== K.4 Logarithms, Surds and Sets (91–120)

#table(
  columns: (auto, 2.6fr, 1.5fr),
  inset: 4.5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.35pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Drill],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Answer],

  [91], [$log_2 32$], [$5$],
  [92], [$log_10 10000$], [$4$],
  [93], [$log_5 125$], [$3$],
  [94], [$log_9 3$], [$frac(1, 2)$],
  [95], [$log_(16) 2$], [$frac(1, 4)$],
  [96], [$log_10 5$ given $log 2 = 0.3010$], [$0.6990$],
  [97], [$log_10 16$ given $log 2 = 0.3010$], [$1.2040$],
  [98], [$log_10 27$ given $log 3 = 0.4771$], [$1.4313$],
  [99], [$log_10 0.25$ given $log 2$], [$-0.6020$],
  [100], [$log_4 64$], [$3$],
  [101], [$sqrt(48)$ canonical], [$4 sqrt(3)$],
  [102], [$sqrt(162)$ canonical], [$9 sqrt(2)$],
  [103], [$sqrt(75) + sqrt(12)$], [$7 sqrt(3)$],
  [104], [$sqrt(98) - sqrt(72)$], [$sqrt(2)$],
  [105], [$sqrt(3) times sqrt(27)$], [$9$],
  [106], [$frac(1, sqrt(5))$ rationalized], [$frac(sqrt(5), 5)$],
  [107], [$frac(8, sqrt(2))$], [$4 sqrt(2)$],
  [108], [$frac(1, 3 - sqrt(8))$], [$3 + sqrt(8)$],
  [109], [$frac(5, 2 + sqrt(3))$ in the form $a + b sqrt(3)$], [$10 - 5 sqrt(3)$],
  [110], [$(sqrt(3) + sqrt(2))^2$], [$5 + 2 sqrt(6)$],
  [111], [$(sqrt(5) - 1)^2$], [$6 - 2 sqrt(5)$],
  [112], [$n$ if the power set has $16$ elements], [$4$],
  [113], [Number of proper subsets of a $5$-set], [$31$],
  [114], [Number of $3$-element subsets of a $5$-set], [$10$],
  [115], [$n(A union B)$ if $n(A) = 10, n(B) = 8, n(A inter B) = 3$], [$15$],
  [116], [$n(A inter B)$ if union $30$, $n(A) = 18$, $n(B) = 20$], [$8$],
  [117], [Neither if $n(cal(E)) = 50$ and union $41$], [$9$],
  [118], [Exactly one if $n(A) = 14, n(B) = 11, n(A inter B) = 5$], [$15$],
  [119], [Min overlap if $n(A) = 80, n(B) = 45, n(cal(E)) = 100$], [$25$],
  [120], [Elements outside both if $n(cal(E)) = 90$, $n(A) = 60$, $n(B) = 40$, $n(A inter B) = 18$], [$8$],
)

#v(4pt)
#trap-box("Drill Discipline")[
  Items 42, 49 and 109 are the ones candidates most often rush: the rounding of $0.9985$ (a $5$ in the next place always rounds up), the conversion of a decimal ratio into integers (multiply through by the same power of ten), and the sign pattern inside a binomial conjugate ($(p + q sqrt(r))(p - q sqrt(r)) = p^2 - q^2 r$, with the *middle* sign flipped and nothing else).
]

#pagebreak()

#current-chapter.update("Appendix L: Final Qualifying Test")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX L]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Final Qualifying Test — 40 Questions]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Sit this in the final week. Forty questions in thirty minutes. Scoring 33 or more means you are ready for the examination; anything less, return to the chapters flagged by your errors.
  ]
]

#v(4pt)
== L.1 Questions

#mcq(1, [Express $90_(10)$ in base four.], [$1122_4$], [$1212_4$], [$1022_4$], [$2202_4$])

#mcq(2, [Convert $2121_3$ to base ten.], [$70$], [$64$], [$72$], [$58$])

#mcq(3, [Express $70_(10)$ in base five.], [$240_5$], [$230_5$], [$320_5$], [$140_5$])

#mcq(4, [Find the least non-negative residue of $(-95)$ modulo $11$.], [$4$], [$7$], [$-7$], [$8$])

#mcq(5, [Solve $6x equiv 4 (mod 11)$.], [$8$], [$5$], [$2$], [$9$])

#mcq(6, [Evaluate $2^(100) (mod 13)$.], [$3$], [$1$], [$9$], [$4$])

#mcq(7, [Simplify $frac(5, 6) + frac(7, 9) - frac(11, 18)$.], [$1$], [$frac(7, 6)$], [$frac(11, 18)$], [$frac(4, 3)$])

#mcq(8, [Express $0.8dot(3)dot(1)$ as a fraction in lowest terms.], [$frac(823, 990)$], [$frac(83, 99)$], [$frac(831, 1000)$], [$frac(411, 500)$])

#mcq(9, [A length recorded as $1.5$ m is correct to one decimal place. Find the maximum percentage error.], [$3.33%$], [$2.50%$], [$1.67%$], [$5.00%$])

#mcq(10, [Twelve typists finish a report in $18$ days. How many days will fifteen typists take?], [$14.4$], [$22.5$], [$15$], [$12$])

#mcq(11, [Worker A takes $10$ days and worker B takes $15$ days. Working together, how long?], [$6$ days], [$12.5$ days], [$5$ days], [$7.5$ days])

#mcq(12, [A bus travels $90$ km at $45$ km/h and returns at $90$ km/h. Find the average speed.], [$67.5$ km/h], [$60$ km/h], [$72$ km/h], [$65$ km/h])

#mcq(13, [$54$ km/h expressed in metres per second], [$15$ m/s], [$18$ m/s], [$12$ m/s], [$20$ m/s])

#mcq(14, [Find the simple interest on ₦$200000$ at $7%$ for $3$ years.], [₦$42000$], [₦$21000$], [₦$63000$], [₦$28000$])

#mcq(15, [Calculate the compound interest on ₦$500000$ at $12%$ for $2$ years.], [₦$127200$], [₦$120000$], [₦$627200$], [₦$132000$])

#mcq(16, [A machine costing ₦$800000$ depreciates $10%$ yearly on a reducing balance. Find its value after $3$ years.], [₦$583200$], [₦$560000$], [₦$648000$], [₦$702000$])

#mcq(17, [A trader bought goods for ₦$108000$ and sold them for ₦$135000$. Find the percentage profit.], [$20%$], [$25%$], [$30%$], [$12.5%$])

#mcq(18, [Goods are marked $40%$ above cost and then sold at a $15%$ discount. Find the percentage profit.], [$19%$], [$25%$], [$21%$], [$15%$])

#mcq(19, [A sum inclusive of $7.5%$ VAT is ₦$64500$. Find the pre-VAT value.], [₦$60000$], [₦$59925$], [₦$62500$], [₦$57500$])

#mcq(20, [Given $log_(10) 2 = 0.3010$ and $log_(10) 3 = 0.4771$, evaluate $log_(10) 24$.], [$1.3801$], [$1.0791$], [$1.4771$], [$1.2552$])

#mcq(21, [Given $log_(10) 2 = 0.3010$, evaluate $log_(10) 50$.], [$1.6990$], [$1.3010$], [$1.5229$], [$1.8751$])

#mcq(22, [Solve the quadratic congruence $x^2 equiv 4 (mod 13)$ for $0 <= x < 13$.], [${2, 11}$], [${2}$], [${2, 11, 15}$], [$emptyset$])

#mcq(23, [Solve $3x equiv 7 (mod 10)$.], [$9$], [$1$], [$7$], [$3$])

#mcq(24, [Evaluate $1011_2 times 1101_2$ in base two.], [$10001111_2$], [$11001111_2$], [$10011111_2$], [$10010111_2$])

#mcq(25, [Simplify $frac(sqrt(3) - 1, sqrt(3) + 1)$ in the form $a + b sqrt(3)$.], [$2 - sqrt(3)$], [$2 + sqrt(3)$], [$1 - sqrt(3)$], [$sqrt(3) - 2$])

#mcq(26, [Simplify $sqrt(9 + 4 sqrt(2))$.], [$1 + 2 sqrt(2)$], [$2 + sqrt(2)$], [$3 + sqrt(2)$], [$sqrt(2) + 3 sqrt(2)$])

#mcq(27, [Simplify $sqrt(11 + 4 sqrt(6))$.], [$2 sqrt(2) + sqrt(3)$], [$3 + sqrt(2)$], [$sqrt(6) + sqrt(5)$], [$2 sqrt(3) + 1$])

#mcq(28, [Solve $sqrt(2x + 7) = x$.], [$x = 7$], [$x = 7$ or $-1$], [$x = 3$], [$x = 1$])

#mcq(29, [If $n(A) = 18$, $n(B) = 24$ and $n(A inter B) = 9$, how many elements belong to exactly one set?], [$24$], [$33$], [$15$], [$42$])

#mcq(30, [How many subsets does a set with $9$ elements have?], [$512$], [$511$], [$256$], [$81$])

#mcq(31, [Simplify $log_3 27 + log_9 81$.], [$5$], [$7$], [$4$], [$6$])

#mcq(32, [Solve $2^(2x) - 9(2^x) + 8 = 0$.], [$0$ and $3$], [$1$ and $8$], [$1$ and $3$], [$0$ and $1$])

#mcq(33, [Evaluate $(0.0625)^(-3/4)$? Given $0.0625 = frac(1, 16)$, compute the value.], [$8$], [$4$], [$16$], [$2$])

#mcq(34, [Express $0.0000725$ in standard form.], [$7.25 times 10^(-5)$], [$7.25 times 10^(-6)$], [$72.5 times 10^(-6)$], [$7.25 times 10^5$])

#mcq(35, [Evaluate $3.6 times 10^(-3) + 4.5 times 10^(-2)$ in standard form.], [$4.86 times 10^(-2)$], [$8.1 times 10^(-5)$], [$4.86 times 10^(-3)$], [$8.1 times 10^(-2)$])

#mcq(36, [In a class of $50$ students, $32$ offer Biology, $28$ offer Chemistry and $12$ offer neither. How many offer both?], [$22$], [$10$], [$18$], [$16$])

#mcq(37, [Three sets satisfy $n(A) = 24$, $n(B) = 20$, $n(C) = 18$, pairwise intersections $9, 8, 7$ and triple intersection $3$. Find the union.], [$41$], [$38$], [$45$], [$47$])

#mcq(38, [The HCF and LCM of two numbers are $9$ and $180$. If one number is $36$, find the other.], [$45$], [$40$], [$54$], [$36$])

#mcq(39, [A trader mixes $3$ kg of rice at ₦$700$ per kg with $2$ kg at ₦$1200$ per kg. Find the cost per kg of the mixture.], [₦$900$], [₦$950$], [₦$880$], [₦$1000$])

#mcq(40, [A sum amounts to ₦$66000$ in $2$ years at $10%$ per annum simple interest. Find the principal.], [₦$55000$], [₦$60000$], [₦$52800$], [₦$58000$])

== L.2 Answer Key

#answer-key-grid((
  "A", "A", "A", "A", "A", "A", "A", "A", "A", "A",
  "A", "B", "A", "A", "A", "A", "B", "A", "A", "A",
  "A", "A", "A", "A", "A", "A", "A", "A", "A", "A",
  "A", "C", "A", "A", "A", "A", "A", "A", "A", "A",
))

== L.3 Condensed Solutions

#sol-item(1, "A")[$90 = 1(64) + 0(16) + 1(4) + 2 = 1122_4$ (successive division gives remainders $2, 2, 1, 1$ read upward).]

#sol-item(2, "A")[$2(27) + 1(9) + 2(3) + 1 = 54 + 9 + 6 + 1 = 70$.]

#sol-item(3, "A")[$70 div 5 = 14$ rem $0$; $14 div 5 = 2$ rem $4$; $2 div 5 = 0$ rem $2 arrow.r 240_5$.]

#sol-item(4, "A")[$95 = 8(11) + 7$, so $(-95) equiv 11 - 7 = 4$; check: $-95 = (-9)(11) + 4$ ✓.]

#sol-item(5, "A")[$gcd(6, 11) = 1$, unique solution. Test $4 + 11k$ for divisibility by $6$: $4, 15, 26, 37, 48 arrow.r x = 48 / 6 = 8$.]

#sol-item(6, "A")[Cycle of $2$ modulo $13$: $2, 4, 8, 3, 6, 12, 11, 9, 5, 10, 7, 1$ — length $12$. Since $100 = 12(8) + 4$, $2^(100) equiv 2^4 = 16 equiv 3$.]

#sol-item(7, "A")[Over $"LCM"(6, 9, 18) = 18$: $frac(15, 18) + frac(14, 18) - frac(11, 18) = frac(18, 18) = 1$.]

#sol-item(8, "A")[$0.8dot(3)dot(1) = frac(831 - 8, 990) = frac(823, 990)$, already in lowest terms.]

#sol-item(9, "A")[Half-unit $= 0.05$ m; $frac(0.05, 1.5) times 100% = 3.33%$.]

#sol-item(10, "A")[$12 times 18 = 216$ typist-days; $216 div 15 = 14.4$ days.]

#sol-item(11, "A")[$frac(1, 10) + frac(1, 15) = frac(5, 30) = frac(1, 6) arrow.r 6$ days.]

#sol-item(12, "B")[Equal distances, so harmonic mean: $frac(2(45)(90), 135) = 60$ km/h.]

#sol-item(13, "A")[$54 times frac(5, 18) = 15$ m/s.]

#sol-item(14, "A")[$I = frac(200000 times 7 times 3, 100) = "₦"42000$.]

#sol-item(15, "A")[$A = 500000(1.12)^2 = 627200$; CI $= "₦"127200$.]

#sol-item(16, "A")[$800000(0.9)^3 = 800000 times 0.729 = "₦"583200$.]

#sol-item(17, "B")[$frac(27000, 108000) times 100% = 25%$.]

#sol-item(18, "A")[$1.40 times 0.85 = 1.19 arrow.r 19%$ profit.]

#sol-item(19, "A")[$64500 div 1.075 = 64500 times frac(40, 43) = "₦"60000$.]

#sol-item(20, "A")[$24 = 2^3 times 3 arrow.r 3(0.3010) + 0.4771 = 1.3801$.]

#sol-item(21, "A")[$50 = 100 / 2 arrow.r 2 - 0.3010 = 1.6990$.]

#sol-item(22, "A")[Testing residues: $2^2 = 4$ ✓ and $11^2 = 121 = 9(13) + 4$ ✓; no others below $13$.]

#sol-item(23, "A")[Test $7 + 10k$ divisible by $3$: $7, 17, 27 arrow.r x = 9$.]

#sol-item(24, "A")[$1011_2 = 11$ and $1101_2 = 13$; product $143 = 128 + 8 + 4 + 2 + 1 = 10001111_2$.]

#sol-item(25, "A")[Multiply by $(sqrt(3) - 1)$ over $3 - 1 = 2$: $frac((sqrt(3) - 1)^2, 2) = frac(4 - 2 sqrt(3), 2) = 2 - sqrt(3)$.]

#sol-item(26, "A")[$4 sqrt(2) = 2 sqrt(8)$; $x + y = 9$, $x y = 8 arrow.r x = 8, y = 1$; larger first gives $2 sqrt(2) + 1$.]

#sol-item(27, "A")[$4 sqrt(6) = 2 sqrt(24)$; $x + y = 11$, $x y = 24 arrow.r x = 8, y = 3$; larger first gives $2 sqrt(2) + sqrt(3)$.]

#sol-item(28, "A")[Square both sides: $2x + 7 = x^2$, so $x^2 - 2x - 7 = 0$ and $x = 1 plus.minus 2 sqrt(2)$. Testing the positive root against the requirement $x >= 0$ leaves $x = 1 + 2 sqrt(2) approx 3.83$. The examinable method is always the same: square, solve, then substitute back to discard extraneous roots.]

#sol-item(29, "A")[Exactly one $= 18 + 24 - 2(9) = 24$.]

#sol-item(30, "A")[$2^9 = 512$.]

#sol-item(31, "A")[$log_3 27 = 3$ and $log_9 81 = 2$; sum $= 5$.]

#sol-item(32, "C")[$u = 2^x$: $u^2 - 9u + 8 = (u - 1)(u - 8) = 0 arrow.r x = 0$ or $x = 3$.]

#sol-item(33, "A")[$0.0625 = frac(1, 16) = 2^(-4)$, so the expression is $2^(3) = 8$.]

#sol-item(34, "A")[$0.0000725 = 7.25 times 10^(-5)$ (five places right).]

#sol-item(35, "A")[Align: $3.6 times 10^(-3) = 0.36 times 10^(-2)$; sum $= 4.86 times 10^(-2)$.]

#sol-item(36, "A")[Union $= 50 - 12 = 38$; both $= 32 + 28 - 38 = 22$.]

#sol-item(37, "A")[$24 + 20 + 18 - (9 + 8 + 7) + 3 = 62 - 24 + 3 = 41$.]

#sol-item(38, "A")[$"HCF" times "LCM" = 9 times 180 = 1620$; other number $= 1620 div 36 = 45$.]

#sol-item(39, "A")[$frac(3(700) + 2(1200), 5) = frac(2100 + 2400, 5) = "₦"900$ per kg.]

#sol-item(40, "A")[$P(1 + 0.20) = 66000 arrow.r P = "₦"55000$.]

#pagebreak()

#current-chapter.update("Appendix M: Archetype Recognition Catalogue")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX M]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Sixty Question Archetypes and Their First Move]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Recognition beats calculation. For each archetype below, the middle column states the *first move* that unlocks the question; the right column tells you where the worked method lives.
  ]
]

#v(2pt)
#table(
  columns: (auto, 1.1fr, 2.2fr, auto),
  inset: 5.5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.35pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Archetype],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[First Move],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Where],

  [1], [Pure binary to decimal], [Horner's double-and-add, left to right], [Ch 1.2],
  [2], [Decimal to base $q$ integer], [Divide by $q$, read remainders upward], [Ch 1.3],
  [3], [Decimal fraction to base $q$], [Multiply by $q$, read carries downward], [Ch 1.3],
  [4], [Octal to binary], [Replace each digit with three bits], [Ch 1.3],
  [5], [Addition in base $b$], [Write $S mod b$, carry $floor(S/b)$], [Ch 1.4],
  [6], [Subtraction in base $b$], [Borrow one as $+b$], [Ch 1.4],
  [7], [Missing digits in base $b$], [Work column by column from the right], [Ch 1.6 Ex 1.11],
  [8], [Unknown base, two digits], [Expand linearly and solve], [Ch 1.6 Ex 1.12],
  [9], [Unknown base, three digits], [Expand to a quadratic, then filter roots], [Ch 1.6 Ex 1.12],
  [10], [Two unknown bases simultaneous], [Expand both, then solve the linear system], [Ch 1.6 Ex 1.15],
  [11], [Negative residue], [Compute $n - r_+$], [Ch 2.1],
  [12], [Exact multiple residue], [Answer is $0$, never $n$], [Ch 2.6 Ex 2.2],
  [13], [Modular division], [Rewrite as $a x equiv b$ and test $b + k n$], [Ch 2.6 Ex 2.7],
  [14], [Multiplicative inverse], [Check $gcd(a, n) = 1$ first], [Ch 2.3],
  [15], [No-solution congruence], [Show $d$ does not divide $b$], [Ch 2.6 Ex 2.11],
  [16], [Multi-solution congruence], [Divide by $d$, then list $d$ roots], [Ch 2.6 Ex 2.10],
  [17], [Large modular power], [Find the cycle, reduce the exponent], [Ch 2.4],
  [18], [Units digit of a power], [Work modulo $10$ with a four-step cycle], [Ch 2.6 Ex 2.16],
  [19], [Day-of-week forward], [Add $D mod 7$], [Ch 2.5],
  [20], [Day-of-week backward], [Subtract $D mod 7$ or add its complement], [Ch 2.6 Ex 2.19],
  [21], [Leap-year shift], [Count $+1$ or $+2$ per interval], [Ch 2.6 Ex 2.18],
  [22], [BODMAS with 'of'], [Evaluate `"of"` before any division], [Ch 3.2],
  [23], [Signed term chain], [Single denominator, keep each sign], [Ch 3.6 Ex 3.5],
  [24], [Complex fraction], [Simplify numerator and denominator separately], [Ch 3.6 Ex 3.6],
  [25], [Continued fraction], [Collapse from the bottom upward], [Ch 3.6 Ex 3.7],
  [26], [Recurring decimal to fraction], [Use $n$ nines and $m$ zeros], [Ch 3.3],
  [27], [Terminating decimal test], [Reduce, then inspect the denominator], [Ch 3.6 Ex 3.11],
  [28], [Significant figures], [Start at the first non-zero digit], [Ch 3.4],
  [29], [Error bounds], [Add and subtract half the precision unit], [Ch 3.5],
  [30], [Percentage error], [Divide by the actual value], [Ch 3.6 Ex 3.15],
  [31], [Reverse percentage error], [Divide the measurement by $1 plus.minus p/100$], [Ch 3.6 Ex 3.16],
  [32], [Mistaken-operation error], [Write true and wrong values in terms of $x$], [Ch 3.6 Ex 3.19],
  [33], [Chained ratio], [Match the middle term to its LCM], [Ch 4.1],
  [34], [Fractional ratio], [Multiply by the LCM of denominators], [Ch 4.6 Ex 4.4],
  [35], [Ratio shift problem], [Let the values be $a k$ and $b k$], [Ch 4.6 Ex 4.6],
  [36], [Compound work], [Equate man-days-hours over work], [Ch 4.6 Ex 4.10],
  [37], [Provisions after arrivals], [Use $M_1 (D_1 - k) = M_2 D$], [Ch 4.6 Ex 4.9],
  [38], [Combined rate], [Add reciprocals], [Ch 4.3],
  [39], [Cistern with leak], [Treat the drain as negative], [Ch 4.6 Ex 4.13],
  [40], [Two-leg average speed], [Use the harmonic mean], [Ch 4.6 Ex 4.14],
  [41], [Staged journey average], [Total distance over total time], [Ch 4.6 Ex 4.15],
  [42], [Meeting problem], [Add speeds], [Ch 4.6 Ex 4.16],
  [43], [Overtaking problem], [Subtract speeds; compute the head start], [Ch 4.6 Ex 4.17],
  [44], [Train past a pole], [Distance equals train length], [Ch 4.6 Ex 4.18],
  [45], [Train over a bridge], [Add both lengths], [Ch 4.6 Ex 4.18],
  [46], [Mixture alligation], [Cross-subtract from the mean], [Ch 4.6 Ex 4.19],
  [47], [Dilution], [Conserve the solute amount], [Ch 4.6 Ex 4.20],
  [48], [Map area scale], [Square the linear scale], [Ch 4.6 Ex 4.21],
  [49], [Simple interest], [Use $P R T / 100$ with $T$ in years], [Ch 5.1],
  [50], [Reverse simple interest], [Use $A = P(1 + R T / 100)$], [Ch 5.5 Ex 5.3],
  [51], [Compound interest], [$A = P(1 + r)^n$, then subtract $P$], [Ch 5.1],
  [52], [CI − SI for two years], [$P (r / 100)^2$], [Ch 5.5 Ex 5.7],
  [53], [Depreciation], [$V_0 (1 - d)^n$], [Ch 5.5 Ex 5.9],
  [54], [Profit with spoilage], [Compute SP from saleable units only], [Ch 5.5 Ex 5.10],
  [55], [Recover cost price], [Divide by $1 plus.minus p/100$], [Ch 5.5 Ex 5.11],
  [56], [Equal-SP trap], [Total CP versus total SP], [Ch 5.5 Ex 5.13],
  [57], [Markup then discount], [Chain the two multipliers], [Ch 5.5 Ex 5.14],
  [58], [Successive discounts], [$1 - (1 - d_1)(1 - d_2)$], [Ch 5.5 Ex 5.15],
  [59], [Required marked price], [Equate $M (1 - d) = C (1 + p)$], [Ch 5.5 Ex 5.16],
  [60], [Shares and dividend], [Dividend on nominal value only], [Ch 5.3],
  [61], [Yield on shares], [Dividend over market price], [Ch 5.5 Ex 5.20],
  [62], [Market price for target yield], [Solve dividend over price equals rate], [Ch 5.5 Ex 5.23],
  [63], [Reverse VAT], [Divide by $1 + v/100$], [Ch 5.5 Ex 5.25],
  [64], [Income tax bands], [Taxable income, then slice by slice], [Ch 5.5 Ex 5.19],
  [65], [Negative fractional power], [Flip, take the root, then the power], [Ch 6.4 Ex 6.1],
  [66], [Sum of powers], [Factor out the smallest power], [Ch 6.4 Ex 6.6],
  [67], [Composite base equation], [Convert to the prime base], [Ch 6.4 Ex 6.8],
  [68], [Disguised quadratic], [$u = a^x > 0$, reject negative roots], [Ch 6.4 Ex 6.15],
  [69], [Simultaneous indicial], [Reduce to linear equations], [Ch 6.4 Ex 6.17],
  [70], [Ordering large powers], [Raise to a common root], [Ch 6.4 Ex 6.20],
  [71], [Standard form sums], [Align the powers of ten], [Ch 6.4 Ex 6.23],
  [72], [Roots in standard form], [Adjust the exponent to a multiple], [Ch 6.4 Ex 6.24],
  [73], [Logarithm of a product], [Sum the logs], [Ch 7.1],
  [74], [Ratio of logs], [Change of base, never subtract], [Ch 7.4 Ex 7.6],
  [75], [Table-free log value], [Decompose into 2s, 3s, 5s], [Ch 7.4 Ex 7.11],
  [76], [Nested logarithm], [Unwrap outward-in], [Ch 7.4 Ex 7.18],
  [77], [Log sum equation], [Condense, then check the domain], [Ch 7.4 Ex 7.19],
  [78], [Mixed-base log equation], [Convert to the smallest base], [Ch 7.4 Ex 7.22],
  [79], [Reciprocal-log quadratic], [$u = log_a x$, both roots allowed], [Ch 7.4 Ex 7.23],
  [80], [Log inequality], [Flip the sign for bases below one], [Ch 7.4 Ex 7.29],
  [81], [Canonical surd], [Factor out the largest square], [Ch 8.1],
  [82], [Adding like surds], [Combine coefficients only], [Ch 8.4 Ex 8.1],
  [83], [Ordering surds], [Square the coefficients back inside], [Ch 8.4 Ex 8.3],
  [84], [Monomial rationalisation], [Multiply by the surd], [Ch 8.2],
  [85], [Binomial rationalisation], [Multiply by the conjugate], [Ch 8.4 Ex 8.9],
  [86], [Paired conjugate fractions], [Combine over the conjugate product], [Ch 8.4 Ex 8.10],
  [87], [Root of a binomial surd], [Find two numbers with the given sum and product], [Ch 8.3],
  [88], [Surd equality], [Match rational and irrational parts], [Ch 8.4 Ex 8.13],
  [89], [Radical equation], [Isolate, square, and test], [Ch 8.3],
  [90], [Two-radical equation], [Isolate one radical first], [Ch 8.4 Ex 8.22],
  [91], [Subset count], [$2^n$ and its variants], [Ch 9.1],
  [92], [Power-set difference], [Factor out $2^n$], [Ch 9.4 Ex 9.3],
  [93], [De Morgan simplification], [Flip union and intersection], [Ch 9.2],
  [94], [Absorption], [Drop the redundant term], [Ch 9.2],
  [95], [Two-set count], [$n(A) + n(B) - n(A inter B)$], [Ch 9.3],
  [96], [Two-set with neither], [Subtract 'neither' first], [Ch 9.4 Ex 9.10],
  [97], [Percentage Venn], [Work with $U = 100%$], [Ch 9.4 Ex 9.11],
  [98], [Algebraic Venn unknown], [Sum all regions to $n(cal(E))$], [Ch 9.4 Ex 9.12],
  [99], [Three-set centre], [Substitute into inclusion–exclusion], [Ch 9.4 Ex 9.16],
  [100], [Eight-region breakdown], [Fill centre, petals, crescents, outside], [Ch 9.4 Ex 9.17],
  [101], [Exactly two globally], [Use the $E_1, E_2, E_3$ equations], [Ch 9.4 Ex 9.20],
  [102], [Multiples with inclusion–exclusion], [Use the LCM as the intersection], [Ch 9.4 Ex 9.21],
  [103], [Neither divisible by three primes], [Subtract the 3-set union], [Ch 9.4 Ex 9.22],
  [104], [Min/max intersection], [Use the bounds formula], [Ch 9.4 Ex 9.14],
  [105], [Interval operations], [Sketch on a number line], [Ch 9.4 Ex 9.7],
  [106], [Symmetric difference], [$n(A) + n(B) - 2 n(A inter B)$], [Ch 9.2],
  [107], [Cartesian product count], [Multiply cardinalities], [Ch 9.1],
  [108], [Distinct letters in a word], [List and count once], [Ch 9.1],
)

#v(6pt)
#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 14pt,
)[
  #text(font: "DejaVu Sans", size: 11pt, weight: "bold", fill: jamb-green)[How to Use This Catalogue on Exam Day]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 9.8pt, fill: jamb-navy)[
    Within the first five seconds of reading a question, name the archetype. If you can name it, you already know the first move, and the rest is arithmetic. If you cannot name it within fifteen seconds, flag it and move on — then, on the second pass, run down this list until one row matches. That single habit converts hesitation into a procedure.
  ]
]
