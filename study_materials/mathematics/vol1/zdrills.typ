#import "template.typ": *

#pagebreak()

#current-chapter.update("Appendix D: Chapter Recap Pages")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Nine One-Page Chapter Recaps]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Each recap condenses one chapter onto a single page: the four non-negotiable ideas, the exact method sequence, and the one trap that costs the most marks. Use these in the final 72 hours before your exam.
  ]
]

#v(4pt)

== D.1 Chapter 1 — Number Bases

#diagram-fig("diagrams/recap_ch01.svg", "Chapter 1 four-pillar recap: place value, base-b to base-10 expansion, base-10 to base-q algorithms, and arithmetic with base-b carry/borrow.")

*Method sequence.* (1) Identify the base and check every digit is legal. (2) To convert *out* of base 10, divide (integers) and multiply (fractions). (3) To convert *into* base 10, expand place values — or use Horner's double-and-add chain for long binaries. (4) For bases 2, 4, 8, group bits instead of using base 10. (5) For unknown bases, expand to base 10 and solve, then filter by digit validity.

*The trap.* Reading remainders downward (giving $10011_2 = 19$ instead of $11001_2 = 25$), and accepting a root $x = 3$ when the numeral contains the digit 4 or 5.

== D.2 Chapter 2 — Modular Arithmetic

#diagram-fig("diagrams/recap_ch02.svg", "Chapter 2 four-pillar recap: least residues, negative residues, inverse criterion, and the number of solutions of a linear congruence.")

*Method sequence.* (1) Always reduce into $0 <= r < n$. (2) For a negative input, compute $n - r_+$. (3) For inverse questions, test $gcd(a, n) = 1$ first. (4) For a x equiv b, compute $d = gcd(a, n)$: if d does not divide b, the answer is *no solution*; otherwise there are exactly d solutions. (5) For large powers, find the cycle and reduce the exponent.

*The trap.* Cancelling a common factor without dividing the modulus too, and writing a decimal for modular division.

== D.3 Chapter 3 — Fractions, Decimals & Errors

#diagram-fig("diagrams/recap_ch03.svg", "Chapter 3 four-pillar recap: HCF/LCM, BODMAS with 'of', significant figures counting, and percentage error over the actual value.")

*Method sequence.* (1) Prime-factorise for HCF/LCM. (2) In BODMAS, evaluate `"of"` before any division. (3) Convert recurring decimals using n nines and m zeros. (4) Reduce a fraction fully before deciding whether its decimal terminates. (5) Percentage error always divides by the *actual* value.

*The trap.* Turning $3 frac(1, 2) - 1 frac(2, 3) + 1 frac(1, 4)$ into $3 frac(1, 2) - (1 frac(2, 3) + 1 frac(1, 4))$; the signs of every term must be kept as written.

== D.4 Chapter 4 — Ratio, Proportion & Rates

#diagram-fig("diagrams/recap_ch04.svg", "Chapter 4 four-pillar recap: percentage error, chained ratios, combined work rates, and the harmonic mean average speed.")

*Method sequence.* (1) Convert every ratio to the same unit and to integer form. (2) Bridge chained ratios on the shared term via its LCM. (3) Direct proportion keeps the quotient; inverse keeps the product. (4) Combined work adds *rates*; water problems treat drains as negative. (5) Average speed is always total distance over total time.

*The trap.* Averaging $+20%$ and $-20%$ to get zero, and averaging two equal-distance speeds arithmetically instead of harmonically.

== D.5 Chapter 5 — Commercial & Financial Mathematics

#diagram-fig("diagrams/recap_ch05.svg", "Chapter 5 four-pillar recap: simple versus compound interest, profit and loss on cost price, dividends on nominal value, and reverse VAT division.")

*Method sequence.* (1) Convert time to years. (2) Compound interest needs $A - P$ at the end. (3) Recover cost price by dividing by $(1 plus.minus p/100)$, never multiplying. (4) Discounts apply to the marked price. (5) Shares: number bought by cash over market price; dividend by nominal value. (6) VAT inclusive: divide by $(1 + v/100)$.

*The trap.* Paying dividends on the market price, and adding successive discounts.

== D.6 Chapter 6 — Indices & Standard Form

#diagram-fig("diagrams/recap_ch06.svg", "Chapter 6 four-pillar recap: fractional powers taken root-first, sums factored, positivity filter on disguised quadratics, and standard-form normalisation.")

*Method sequence.* (1) Convert every composite base to its prime. (2) For fractional powers, take the root first. (3) For a sum or difference of powers, factor out the smallest exponent. (4) For disguised quadratics, let $u = a^x > 0$ and reject non-positive roots. (5) In standard form, re-normalise so the mantissa lies in $[1, 10)$.

*The trap.* Writing $2^a + 2^b = 2^(a + b)$, and accepting a negative root for $u = a^x$.

== D.7 Chapter 7 — Logarithms

#diagram-fig("diagrams/recap_ch07.svg", "Chapter 7 four-pillar recap: the definition duality, product and quotient laws, change of base, and table-free constants.")

*Method sequence.* (1) State the domain before solving. (2) Condense into a single logarithm, converting constants into logs of the base. (3) For mixed bases, convert everything to the smallest prime base. (4) Without tables, decompose into 2s, 3s and 5s, remembering $log_(10) 5 = 1 - log_(10) 2$. (5) Check every root in the original arguments.

*The trap.* Writing $log (M + N) = log M + log N$, and $frac(log M, log N) = log frac(M, N)$.

== D.8 Chapter 8 — Surds & Radical Equations

#diagram-fig("diagrams/recap_ch08.svg", "Chapter 8 four-pillar recap: canonical reduction, conjugate rationalisation, square root of a binomial surd, and non-negative principal roots.")

*Method sequence.* (1) Reduce each surd to $k sqrt(m)$. (2) Combine only like surds. (3) Rationalise with the conjugate — flip only the middle sign. (4) For $sqrt(a plus.minus 2 sqrt(b))$, find two numbers with the given sum and product, larger first. (5) Square equations, then *always* test the candidates.

*The trap.* Writing $sqrt(7 - 4 sqrt(3)) = sqrt(3) - 2$, which is negative — the principal root must be positive.

== D.9 Chapter 9 — Sets & Venn Diagrams

#diagram-fig("diagrams/recap_ch09.svg", "Chapter 9 four-pillar recap: subset counts, De Morgan duality, inside-out three-set filling, and the 'and' versus 'only' distinction.")

*Method sequence.* (1) Note whether a 'neither/none' group exists. (2) For two sets, subtract the intersection once. (3) For three sets, place the triple centre first, then the three petals, then the three crescents, then the outside. (4) Check the total matches $n(cal(E))$. (5) For bounds, use the min/max formulas.

*The trap.* Treating "10 study both Maths and Physics" as if it already excluded the third subject.

#pagebreak()

#current-chapter.update("Appendix E: 250-Item Flashcard Bank")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[250-Item Rapid-Recall Flashcard Bank]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Cover the right-hand column with a sheet of paper and state the answer aloud within three seconds. Any item you miss twice gets copied into your personal error log and re-tested the following morning.
  ]
]

#v(2pt)

== E.1 Number Bases & Modular Arithmetic (Items 1–60)

#table(
  columns: (auto, 2.4fr, 1.6fr),
  inset: 4.5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.35pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Prompt],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Answer],

  [1], [Digits allowed in base b], [0 to $b - 1$],
  [2], [$1000_2 - 1_2$], [$111_2$],
  [3], [$1000_5 - 1_5$], [$444_5$],
  [4], [$sqrt(144)$ in base 10], [12],
  [5], [$1101_2$ in base 10], [13],
  [6], [$101010_2$ in base 10], [42],
  [7], [$16_(10)$ in base 2], [$10000_2$],
  [8], [$64_(10)$ in base 8], [$100_8$],
  [9], [$255_(10)$ in base 16], [$FF_(16)$],
  [10], [$0.5_(10)$ in base 2], [$0.1_2$],
  [11], [$0.25_(10)$ in base 2], [$0.01_2$],
  [12], [$0.375_(10)$ in base 2], [$0.011_2$],
  [13], [$111_2 + 1_2$], [$1000_2$],
  [14], [$777_8 + 1_8$], [$1000_8$],
  [15], [Largest 2-digit number in base 5], [$44_5$],
  [16], [Value of $44_5$ in base 10], [24],
  [17], [$2^10$ as a decimal integer], [1024],
  [18], [Smallest valid base for $703_x$], [8],
  [19], [Remainder 29 div 6], [5],
  [20], [$236_(10)$ in base 5], [$1421_5$],
  [21], [$-1 mod 5$], [4],
  [22], [$-2 mod 5$], [3],
  [23], [$-17 mod 9$], [1],
  [24], [$-50 mod 10$], [0],
  [25], [53 mod 7], [4],
  [26], [2 mod 2], [0],
  [27], [Residue set of modulo 4], [${0, 1, 2, 3}$],
  [28], [Number of elements in $ZZ_(12)$], [12],
  [29], [Additive inverse of 3 in $ZZ_8$], [5],
  [30], [Additive inverse of 9 in $ZZ_(10)$], [1],
  [31], [Multiplicative inverse of 3 in $ZZ_7$], [5],
  [32], [Multiplicative inverse of 5 in $ZZ_6$], [None ($gcd = 1$ fails)],
  [33], [Multiplicative inverse of 1 in $ZZ_n$], [1],
  [34], [$gcd(7, 12)$], [1],
  [35], [$gcd(9, 15)$], [3],
  [36], [Zero divisors in $ZZ_6$], [2, 3, 4],
  [37], [Solutions of $2x equiv 4 (mod 6)$ in $ZZ_6$], [${2, 5}$],
  [38], [Number of solutions of $4x equiv 8 (mod 12)$], [4],
  [39], [Number of solutions of $6x equiv 4 (mod 9)$], [0],
  [40], [3 div 2 in modulo 7], [5],
  [41], [1 div 3 in modulo 7], [5],
  [42], [$10^3 mod 7$], [6],
  [43], [$2^5 mod 3$], [2],
  [44], [Units digit of $7^4$], [1],
  [45], [Units digit of $2^10$], [4],
  [46], [Units digit of $5^17$], [5],
  [47], [Day after 364 days if today is Monday ($364 mod 7 = 0$)], [Monday],
  [48], [Days in a leap year modulo 7], [2],
  [49], [12-hour clock: 10 o'clock plus 25 hours], [11 o'clock],
  [50], [24-hour clock: $21:00$ plus 30 hours], [$03:00$],
  [51], [17 times 19 mod 5], [3],
  [52], [$7 - 23 mod 8$], [0],
  [53], [Largest digit in $ZZ_9$], [8],
  [54], [Smallest prime modulus], [2],
  [55], [$9^2 mod 10$], [1],
  [56], [$(-3)^2 mod 5$], [4],
  [57], [100 mod 11], [1],
  [58], [$2^(4n) mod 5$ for any integer $n >= 1$], [1],
  [59], [Five consecutive days after a Wednesday market], [Monday],
  [60], [Remainder when 12345 is divided by 9], [0],
)

== E.2 Fractions, Ratio, Rates & Commercial Mathematics (Items 61–130)

#table(
  columns: (auto, 2.4fr, 1.6fr),
  inset: 4.5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.35pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Prompt],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Answer],

  [61], [$frac(1, 2) + frac(1, 3) + frac(1, 6)$], [1],
  [62], [$frac(3, 4) times frac(8, 9)$], [$frac(2, 3)$],
  [63], [$frac(5, 6) div frac(10, 9)$], [$frac(3, 4)$],
  [64], [$frac(3, 4) "of" 12$], [9],
  [65], [$2 frac(1, 4)$ as an improper fraction], [$frac(9, 4)$],
  [66], [$frac(9, 4)$ as a mixed number], [$2 frac(1, 4)$],
  [67], [0.75 as a fraction in lowest terms], [$frac(3, 4)$],
  [68], [$frac(7, 8)$ as a decimal], [0.875],
  [69], [$0.overline(7)$ as a fraction], [$frac(7, 9)$],
  [70], [$0.overline(36)$ as a fraction], [$frac(4, 11)$],
  [71], [$0.1overline(6)$ as a fraction], [$frac(1, 6)$],
  [72], [$0.08overline(3)$ as a fraction], [$frac(1, 12)$],
  [73], [Denominator primes allowing termination], [2 and 5 only],
  [74], [Does $frac(7, 40)$ terminate?], [Yes (0.175)],
  [75], [Does $frac(5, 12)$ terminate?], [No],
  [76], [$sqrt(2)$ to 3 s.f.], [1.41],
  [77], [0.004067 to 2 s.f.], [0.0041],
  [78], [0.004067 to 3 d.p.], [0.004],
  [79], [3.14159 to 4 s.f.], [3.142],
  [80], [9.995 to 2 d.p.], [10.00],
  [81], [Significant figures in 0.03040], [4],
  [82], [Significant figures in 5.0060], [5],
  [83], [Percentage error for 38 measured, 40 true], [5%],
  [84], [Maximum absolute error of 12.5 cm to 1 d.p.], [0.05 cm],
  [85], [Max % error of 200 m to nearest m], [0.25%],
  [86], [Ratio $45 : 60$ in lowest terms], [$3 : 4$],
  [87], [$0.5 : 0.75$ as integers], [$2 : 3$],
  [88], [$frac(1, 2) : frac(1, 3) : frac(1, 6)$ as integers], [$3 : 2 : 1$],
  [89], [Bridge of $2 : 5$ and $5 : 7$], [$2 : 5 : 7$],
  [90], [Bridge of $3 : 4$ and $6 : 11$], [$9 : 12 : 22$],
  [91], [Share 12,000 in $1 : 2 : 3$], [$2000 : 4000 : 6000$],
  [92], [Fraction of 40 represented by 8], [$frac(1, 5)$ or 20%],
  [93], [12 workers 10 days arrow.r 15 workers?], [8 days],
  [94], [4 taps fill in 6 h arrow.r 3 taps?], [8 h],
  [95], [A in 8 d, B in 24 d together], [6 days],
  [96], [Combined rate if A $= 1/4$ and B $= 1/6$], [$frac(5, 12)$ per day],
  [97], [Fill 6 h, drain 12 h together], [12 h],
  [98], [Average of 60 and 40 km/h over equal distance], [48 km/h],
  [99], [54 km/h in m/s], [15 m/s],
  [100], [20 m/s in km/h], [72 km/h],
  [101], [100 km in 1.25 h, average speed], [80 km/h],
  [102], [Catch-up time: gap 24 km, relative speed 12 km/h], [2 h],
  [103], [Meeting time: 180 km, speeds 50 and 40 km/h], [2 h],
  [104], [Train 100 m at 20 m/s past a pole], [5 s],
  [105], [Train 150 m at 25 m/s over a 350 m bridge], [20 s],
  [106], [Alligation of ₦800 and ₦1,200 to ₦1,000], [$1 : 1$],
  [107], [Alligation of ₦500 and ₦900 to ₦600], [$3 : 1$],
  [108], [Map $1 : 100000$: 4 cm on ground], [4 km],
  [109], [Map $1 : 25000$: ground area of 4 cm² (in km²)], [0.25 km²],
  [110], [SI on ₦50,000 at 8% for 3 years], [₦12,000],
  [111], [Amount on ₦50,000 at 8% simple for 3 years], [₦62,000],
  [112], [Years to double at 5% simple interest], [20],
  [113], [CI on ₦100,000 at 10% for 2 years], [₦21,000],
  [114], [Amount on ₦100,000 at 10% compound for 2 years], [₦121,000],
  [115], [CI − SI on ₦250,000 at 8% for 2 years], [₦1,600],
  [116], [Value of ₦500,000 after 2 years at 10% depreciation], [₦405,000],
  [117], [Profit % : CP ₦40,000, SP ₦50,000], [25%],
  [118], [Loss % : CP ₦60,000, SP ₦48,000], [20%],
  [119], [CP if SP ₦66,000 at 10% profit], [₦60,000],
  [120], [SP for 20% profit on CP ₦45,000], [₦54,000],
  [121], [MP if SP ₦72,000 after 10% discount], [₦80,000],
  [122], [Single discount equal to 25% then 20%], [40%],
  [123], [Net profit on 20% markup then 10% discount], [8%],
  [124], [Net loss for +20% and −20% on equal SP], [4%],
  [125], [Dividend on 2,000 shares of ₦1 at 15%], [₦300],
  [126], [Yield if dividend ₦0.30 and price ₦2.50], [12%],
  [127], [Market price for 12% yield on ₦0.60 dividend], [₦5.00],
  [128], [VAT at 7.5% on ₦200,000], [₦15,000],
  [129], [Pre-VAT of ₦107,500 inclusive at 7.5%], [₦100,000],
  [130], [Taxable income: gross ₦900,000, allowances ₦250,000], [₦650,000],
)

== E.3 Indices, Logarithms, Surds & Sets (Items 131–250)

#table(
  columns: (auto, 2.4fr, 1.6fr),
  inset: 4.5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.35pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Prompt],
  text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Answer],

  [131], [$2^3 times 2^5$], [$2^8 = 256$],
  [132], [$frac(3^7, 3^4)$], [27],
  [133], [$(5^2)^3$], [$5^6 = 15625$],
  [134], [$(2 x^3)^4$], [$16 x^12$],
  [135], [$7^0$], [1],
  [136], [$4^(-2)$], [$frac(1, 16)$],
  [137], [$(frac(2, 3))^(-1)$], [$frac(3, 2)$],
  [138], [$16^(3/4)$], [8],
  [139], [$27^(-2/3)$], [$frac(1, 9)$],
  [140], [$32^(2/5)$], [4],
  [141], [$8^(2/3) times 4^(1/2)$], [8],
  [142], [Simplify $2^(n+3) / 2^n$], [8],
  [143], [Simplify $3^(n+1) + 3^n$], [$4 dot 3^n$],
  [144], [Solve $2^x = 64$], [$x = 6$],
  [145], [Solve $5^(x-1) = 25$], [$x = 3$],
  [146], [Solve $3^(2x) = 81$], [$x = 2$],
  [147], [Solve $4^x = 8$], [$x = frac(3, 2)$],
  [148], [Values of x if $u^2 - 6u + 8 = 0$ with $u = 2^x$], [$x = 1$ and $x = 2$],
  [149], [Standard form of 0.00052], [$5.2 times 10^(-4)$],
  [150], [Standard form of 7,400,000], [$7.4 times 10^6$],
  [151], [$3 times 10^4 times 2 times 10^3$], [$6 times 10^7$],
  [152], [$frac(8 times 10^(-4), 2 times 10^(-7))$], [$4 times 10^3$],
  [153], [$10^(-3)$ as a decimal], [0.001],
  [154], [$sqrt(9 times 10^(-6))$], [$3 times 10^(-3)$],
  [155], [$log_2 8$], [3],
  [156], [$log_3 1$], [0],
  [157], [$log_(10) 0.01$], [$-2$],
  [158], [$log_5 1$], [0],
  [159], [$log_2 64$], [6],
  [160], [$log_(10) 1000$], [3],
  [161], [$log_4 16$], [2],
  [162], [$log_9 81$], [2],
  [163], [$log_2 (1/32)$], [$-5$],
  [164], [$log_(10) 1$], [0],
  [165], [$log_2 3 times log_3 8$], [3],
  [166], [$log_5 2 times log_2 25$], [2],
  [167], [$frac(log 9, log 3)$], [2],
  [168], [$frac(log 32, log 2)$], [5],
  [169], [$log_a a^7$], [7],
  [170], [$log_(10) sqrt(10)$], [0.5],
  [171], [$2^(log_2 9)$], [9],
  [172], [$10^(log_(10) 7)$], [7],
  [173], [$log_(10) 2 + log_(10) 5$], [1],
  [174], [$log_(10) 25 + log_(10) 4$], [2],
  [175], [$log_10 5$ given $log 2 = 0.3010$], [0.6990],
  [176], [$log_10 8$ given $log 2 = 0.3010$], [0.9030],
  [177], [$log_10 6$ given log 2, log 3], [0.7781],
  [178], [$log_10 9$ given $log 3 = 0.4771$], [0.9542],
  [179], [$log_10 0.5$ given log 2], [$-0.3010$],
  [180], [Solve $log_2 x = 5$], [32],
  [181], [Solve $log_3 (x - 1) = 2$], [10],
  [182], [Solve $log_(10) x + log_(10) 2 = 1$], [5],
  [183], [Solve $log_2 x + log_2 (x - 3) = 2$], [4],
  [184], [Domain of $log_(10) (x - 4)$], [$x > 4$],
  [185], [Domain of $log_x 7$], [$x > 0, x != 1$],
  [186], [$sqrt(50)$ in canonical form], [$5 sqrt(2)$],
  [187], [$sqrt(200)$ in canonical form], [$10 sqrt(2)$],
  [188], [$sqrt(12) + sqrt(27)$], [$5 sqrt(3)$],
  [189], [$sqrt(45) - sqrt(20)$], [$sqrt(5)$],
  [190], [$2 sqrt(3) times 3 sqrt(2)$], [$6 sqrt(6)$],
  [191], [$frac(sqrt(18), sqrt(2))$], [3],
  [192], [$(sqrt(5))^2$], [5],
  [193], [$(2 + sqrt(3))(2 - sqrt(3))$], [1],
  [194], [$(sqrt(7) + 1)(sqrt(7) - 1)$], [6],
  [195], [Rationalise $frac(1, sqrt(2))$], [$frac(sqrt(2), 2)$],
  [196], [Rationalise $frac(6, sqrt(3))$], [$2 sqrt(3)$],
  [197], [Rationalise $frac(1, 1 + sqrt(2))$], [$sqrt(2) - 1$],
  [198], [Rationalise $frac(4, sqrt(5) - 1)$], [$sqrt(5) + 1$],
  [199], [$frac(1, sqrt(3) + sqrt(2))$], [$sqrt(3) - sqrt(2)$],
  [200], [$sqrt(6 + 2 sqrt(5))$], [$sqrt(5) + 1$],
  [201], [$sqrt(7 + 2 sqrt(6))$], [$sqrt(6) + 1$],
  [202], [$sqrt(12 - 2 sqrt(35))$], [$sqrt(7) - sqrt(5)$],
  [203], [$sqrt(3) times root(3, 3)$], [$3^(5/6)$],
  [204], [Solve $sqrt(x) = 7$], [49],
  [205], [Solve $sqrt(2x + 6) = 4$], [5],
  [206], [Solve $sqrt(x + 2) = x$], [2],
  [207], [Solve $root(3, x) = -2$], [$-8$],
  [208], [n if a set has 64 subsets], [6],
  [209], [n if a set has 31 proper subsets], [5],
  [210], [Number of subsets of ${a, b, c}$], [8],
  [211], [Number of proper subsets of ${1, 2, 3, 4}$], [15],
  [212], [$A' inter B'$ equals], [$(A union B)'$],
  [213], [$(A inter B)'$ equals], [$A' union B'$],
  [214], [$A union (A inter B)$], [$A$],
  [215], [$A inter (A union B)$], [$A$],
  [216], [$A triangle.t A$], [emptyset],
  [217], [$n(A union B)$ given $n(A) = 9, n(B) = 7, n(A inter B) = 3$], [13],
  [218], [$n(A inter B)$ given union 20, $n(A) = 14$, $n(B) = 12$], [6],
  [219], [Neither $= ?$ given $n(cal(E)) = 40$, union 33], [7],
  [220], [Exactly one, given union 20 and intersection 4], [12],
  [221], [Min overlap: $n(A) = 70$, $n(B) = 50$, $n(cal(E)) = 100$], [20],
  [222], [Max overlap: $n(A) = 70$, $n(B) = 50$], [50],
  [223], [3-set union: $30 + 25 + 20 - 10 - 8 - 7 + 3$], [53],
  [224], [Exactly two: pairs 12, 10, 8 and triple 4], [18],
  [225], [Exactly one, given union 60 and exactly two 18 and triple 4], [38],
  [226], [Number of elements in ${emptyset, {1}, 2}$], [3],
  [227], [Number of elements in ${emptyset}$], [1],
  [228], [$n(A times B)$ given $n(A) = 3, n(B) = 7$], [21],
  [229], [Multiples of 6 or 8 from 1 to 96], [24],
  [230], [Multiples of 3 or 4 from 1 to 60], [30],
  [231], [Multiples of both 4 and 6 up to 60], [5],
  [232], [Number of integers from 1 to 50 divisible by neither 2 nor 5], [20],
  [233], [Distinct letters in `"BANANA"`], [3],
  [234], [Distinct letters in `"BOOKKEEPER"`], [6],
  [235], [Subsets of a 10-element set], [1024],
  [236], [Elements of a set with $2^n = 512$], [9],
  [237], [Complement of $cal(E)$], [emptyset],
  [238], [Complement of emptyset], [$cal(E)$],
  [239], [$A union A'$], [$cal(E)$],
  [240], [$A inter A'$], [emptyset],
  [241], [Disjoint means], [$A inter B = emptyset$],
  [242], [$n(A union B)$ when disjoint, $n(A) = 12, n(B) = 8$], [20],
  [243], [If $A subset B$ then $A inter B$], [$A$],
  [244], [If $A subset B$ then $A union B$], [$B$],
  [245], [$n(A without B)$ given $n(A) = 15, n(A inter B) = 6$], [9],
  [246], [Symmetric difference count: $n(A) = 10, n(B) = 8, n(A inter B) = 3$], [12],
  [247], [Universal set of odd numbers under 10], [${1, 3, 5, 7, 9}$],
  [248], [Integers x with $-2 < x <= 3$], [${-1, 0, 1, 2, 3}$],
  [249], [3-set union if all three sets equal $cal(E)$], [$n(cal(E))$],
  [250], [Triple intersection minimum: $n(A) = 90, n(B) = 85, n(C) = 80$, $U = 100$], [55],
)

#v(4pt)
#trap-box("Flashcard Discipline")[
  Do not read these as notes — *test yourself aloud*. Any item you fail should be written out in full on a separate card with the reasoning, not just the answer. Whenever an item feels familiar, still recompute it: familiarity with the *look* of a question is not the same as having performed the arithmetic.
]

#pagebreak()

#current-chapter.update("Appendix F: Second Full Mock Examination")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Second Full Mock Examination]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    60 fresh questions across all nine chapters. Sit this at least one week after Mock Examination 1 so that you are measuring retention, not short-term memory. Time allowed: 45 minutes. No calculator, no tables.
  ]
]

#v(4pt)

== F.1 Mock Examination 2 — Questions

#mcq(1, [Convert $111010_2$ to base ten.], [58], [56], [62], [46])

#mcq(2, [Express $176_(10)$ in base eight.], [$260_8$], [$206_8$], [$226_8$], [$162_8$])

#mcq(3, [Convert the decimal fraction $0.4375_(10)$ to base two.], [$0.0111_2$], [$0.1011_2$], [$0.1101_2$], [$0.1110_2$])

#mcq(4, [Find the base x if $(23)_x = 19_(10)$.], [6], [7], [8], [9])

#mcq(5, [Find the base x if $(124)_x = 84_(10)$.], [6], [8], [7], [9])

#mcq(6, [Find the least non-negative residue of $(-71)$ modulo 12.], [1], [11], [$-11$], [5])

#mcq(7, [Solve $7x equiv 5 (mod 11)$.], [5], [7], [8], [3])

#mcq(8, [Find all solutions of $2x equiv 6 (mod 10)$ in ${0, 1, dots, 9}$.], [${3}$], [${3, 8}$], [${2, 8}$], [emptyset])

#mcq(9, [Find the units digit of $4^(123)$.], [4], [6], [2], [8])

#mcq(10, [Find $5^(60) (mod 7)$.], [1], [2], [5], [6])

#mcq(11, [Simplify $frac(frac(3, 4) + frac(5, 6), frac(5, 8) - frac(1, 4))$.], [$frac(19, 3)$], [$frac(38, 9)$], [$frac(19, 9)$], [$frac(38, 3)$])

#mcq(12, [Express $0.8dot(2)dot(7)$ as a vulgar fraction in lowest terms.], [$frac(91, 110)$], [$frac(82, 99)$], [$frac(41, 55)$], [$frac(27, 110)$])

#mcq(13, [Express 0.0525 correct to two significant figures.], [0.05], [0.053], [0.052], [0.0525])

#mcq(14, [Evaluate $3.2 times 10^(-4) - 1.5 times 10^(-3)$, giving your answer in standard form.], [$-1.18 times 10^(-3)$], [$1.18 times 10^(-3)$], [$-1.18 times 10^(-4)$], [$-1.82 times 10^(-3)$])

#mcq(15, [A student measured a 90 cm board as 87.5 cm. Find the percentage error correct to 2 decimal places.], [2.78%], [2.86%], [2.50%], [3.00%])

#mcq(16, [₦78,000 is shared in the ratio $frac(3, 4) : frac(5, 6) : frac(7, 12)$. Find the smallest share.], [₦21,000], [₦30,000], [₦27,000], [₦24,000])

#mcq(17, [Twenty-five men can build a wall in 18 days. How long will thirty men take at the same rate?], [15 days], [12 days], [21 days], [22 days])

#mcq(18, [A can mow a field in 20 days and B in 30 days. Working together, how long will they take?], [10 days], [12 days], [25 days], [15 days])

#mcq(19, [Five pumps running 8 hours a day empty a tank in 6 days. How many hours a day must four pumps run to empty it in 5 days?], [14 h], [12 h], [10 h], [16 h])

#mcq(20, [A cyclist covers a route at 40 km/h and returns along the same route at 60 km/h. Find the average speed for the whole journey.], [50 km/h], [48 km/h], [52 km/h], [45 km/h])

#mcq(21, [A train 200 m long travelling at 108 km/h crosses a bridge 400 m long. Find the time taken to clear the bridge completely.], [15 s], [20 s], [24 s], [18 s])

#mcq(22, [Find the simple interest on ₦250,000 for 4 years at 7.5% per annum.], [₦70,000], [₦75,000], [₦80,000], [₦65,000])

#mcq(23, [Calculate the compound interest on ₦400,000 for 2 years at 15% per annum.], [₦120,000], [₦129,000], [₦529,000], [₦136,000])

#mcq(24, [A machine costing ₦1,500,000 depreciates at 12% per annum on a reducing balance. Find its value after 2 years.], [₦1,161,600], [₦1,140,000], [₦1,320,000], [₦1,176,000])

#mcq(25, [A trader bought goods for ₦64,000 and sold them for ₦80,000. Calculate the percentage profit.], [20%], [25%], [16%], [28%])

#mcq(26, [A shopkeeper marks goods 30% above cost and then allows a 20% discount. Find the percentage profit.], [4%], [10%], [6%], [8%])

#mcq(27, [An investor buys 4,000 shares of nominal value ₦0.50 at ₦1.25 each. If a 20% dividend is declared, find the percentage yield.], [20%], [10%], [8%], [12%])

#mcq(28, [A receipt shows ₦84,000 inclusive of 5% VAT. Find the pre-VAT value.], [₦79,800], [₦80,000], [₦78,500], [₦81,000])

#mcq(29, [Evaluate $(0.0081)^(-1/4)$.], [$frac(10, 3)$], [$frac(3, 10)$], [$frac(100, 81)$], [3])

#mcq(30, [Solve for x: $9^(2x - 3) = 27^(x + 1)$.], [6], [8], [9], [12])

#mcq(31, [Find the real values of x satisfying $2^(2x) - 12(2^x) + 32 = 0$.], [2 and 3], [1 and 4], [2 and 4], [3 and 5])

#mcq(32, [Evaluate $log_4 8$.], [$frac(3, 2)$], [$frac(2, 3)$], [2], [3])

#mcq(33, [Given $log_(10) 2 = 0.3010$ and $log_(10) 7 = 0.8451$, find $log_(10) 56$.], [1.7481], [1.1461], [1.8491], [2.0452])

#mcq(34, [Solve $log_3 x + log_9 x = 3$.], [27], [9], [81], [3])

#mcq(35, [Find the valid solution of $log_2 (x + 5) - log_2 (x - 1) = 2$.], [3], [$-3$], [9], [7])

#mcq(36, [Simplify $sqrt(147) + sqrt(27) - sqrt(75)$.], [$5 sqrt(3)$], [$7 sqrt(3)$], [$9 sqrt(3)$], [$3 sqrt(3)$])

#mcq(37, [Simplify $frac(12, sqrt(6) + sqrt(2))$.], [$3(sqrt(6) - sqrt(2))$], [$3(sqrt(6) + sqrt(2))$], [$12(sqrt(6) - sqrt(2))$], [$6 - sqrt(2)$])

#mcq(38, [Evaluate $sqrt(14 - 6 sqrt(5))$ in surd form.], [$3 - sqrt(5)$], [$sqrt(5) - 3$], [$3 + sqrt(5)$], [$5 - sqrt(3)$])

#mcq(39, [Find the valid root of $sqrt(4x + 5) = x$.], [$x = 5$], [$x = -1$], [$x = 5$ or $-1$], [$x = 1$])

#mcq(40, [Arrange $2^(30)$, $3^(20)$, and $5^(15)$ in ascending order.], [$2^(30), 3^(20), 5^(15)$], [$5^(15), 3^(20), 2^(30)$], [$3^(20), 2^(30), 5^(15)$], [$2^(30), 5^(15), 3^(20)$])

#mcq(41, [How many proper subsets does a set with 6 elements have?], [63], [64], [62], [36])

#mcq(42, [In a class of 120 students, every student offers at least one of French and German. If 72 offer French and 65 offer German, how many offer both?], [17], [7], [23], [31])

#mcq(43, [In a survey of 80 people, $n(A) = 40$, $n(B) = 35$, $n(C) = 30$, $n(A inter B) = 14$, $n(A inter C) = 11$, $n(B inter C) = 10$, and $n(A inter B inter C) = 5$. How many belong to *none* of the three sets?], [5], [10], [8], [15])

#mcq(44, [Out of 100 students, 85 like rice and 62 like beans. What is the *minimum* number who like both?], [47], [38], [62], [53])

#mcq(45, [How many integers from 1 to 140 inclusive are divisible by 5 or by 7?], [44], [48], [40], [52])

#mcq(46, [What is the cardinality of the set of distinct letters in the word `"ENGINEERING"`?], [5], [11], [6], [7])

#mcq(47, [If $n(A) = 18$, $n(B) = 14$, and $n(A inter B) = 7$, how many elements belong to *exactly one* of the two sets?], [18], [25], [11], [32])

#mcq(48, [A set has 256 subsets. How many elements does it contain?], [8], [9], [7], [16])

#mcq(49, [For any sets $P$ and $Q$, simplify $P union (P inter Q)$.], [$Q$], [$P inter Q$], [$P union Q$], [$P$])

#mcq(50, [In a class of 45 students, 25 study Mathematics, 22 study Physics, and 8 study both. How many study *neither* subject?], [6], [4], [8], [10])

#mcq(51, [Evaluate $10111_2 times 101_2$, leaving your answer in base two.], [$1110011_2$], [$1101011_2$], [$1011011_2$], [$1110111_2$])

#mcq(52, [Convert $0.6875_(10)$ to a bicimal.], [$0.1011_2$], [$0.1101_2$], [$0.1001_2$], [$0.1111_2$])

#mcq(53, [Solve $3x equiv 5 (mod 8)$.], [7], [5], [3], [1])

#mcq(54, [Find the units digit of $3^(2024)$.], [1], [3], [9], [7])

#mcq(55, [Express $0.4dot(5)$ as a vulgar fraction in lowest terms.], [$frac(41, 90)$], [$frac(45, 99)$], [$frac(5, 11)$], [$frac(41, 99)$])

#mcq(56, [If $frac(2, 3)$ of $frac(4, 5)$ of a number is 24, find the number.], [45], [36], [54], [60])

#mcq(57, [Nine workers can complete a job in 16 days. How many days will twelve workers take at the same rate?], [12], [14], [16], [21])

#mcq(58, [A cistern can be filled in 5 hours and emptied by a drain in 9 hours. Starting empty with both open, how long does it take to fill?], [11.25 h], [14 h], [4.5 h], [7.2 h])

#mcq(59, [A car covers 60 km at 30 km/h, another 60 km at 40 km/h, and a final 60 km at 60 km/h. Find its average speed.], [43.2 km/h], [40 km/h], [45 km/h], [42 km/h])

#mcq(60, [At what rate of simple interest will a sum double itself in 16 years?], [6.25%], [5.25%], [8%], [12.5%])

== F.2 Mock Examination 2 — Answer Key

#answer-key-grid((
  "A", "A", "A", "C", "B", "A", "B", "B", "A", "A",
  "B", "A", "B", "A", "A", "A", "A", "B", "B", "A",
  "B", "B", "B", "A", "B", "A", "C", "B", "A", "C",
  "A", "A", "A", "B", "A", "A", "A", "A", "A", "A",
  "A", "A", "A", "A", "A", "A", "A", "A", "D", "A",
  "A", "A", "A", "A", "A", "A", "A", "A", "B", "A",
))

== F.3 Mock Examination 2 — Condensed Solutions

#block(
  width: 100%,
  fill: jamb-light,
  stroke: 0.8pt + jamb-border,
  radius: 7pt,
  inset: 11pt,
)[
  #text(font: "DejaVu Sans", size: 9.6pt, weight: "bold", fill: jamb-navy)[How to use these solutions]
  #v(3pt)
  Each line states the *decisive step only*. If a line does not immediately make sense, return to that chapter's worked examples — the full multi-line method is there. Aim to reproduce each one-line solution from memory within 30 seconds.
]

#sol-item(1, "A")[$111010_2 = 32 + 16 + 8 + 0 + 2 + 0 = 58$.]

#sol-item(2, "A")[$176 div 8 = 22$ rem 0; $22 div 8 = 2$ rem 6; $2 div 8 = 0$ rem $2 arrow.r 260_8$.]

#sol-item(3, "A")[$0.4375 times 2 = 0.875 (0)$; $times 2 = 1.75 (1)$; $times 2 = 1.5 (1)$; $times 2 = 1.0 (1) arrow.r 0.0111_2$.]

#sol-item(4, "C")[$2x + 3 = 19 arrow.r x = 8$ (valid, $8 > 3$).]

#sol-item(5, "B")[$x^2 + 2x + 4 = 84 arrow.r x^2 + 2x - 80 = (x + 10)(x - 8) = 0$; reject $-10$, keep $x = 8$ ($8 > 4$).]

#sol-item(6, "A")[$71 = 5(12) + 11$, so $(-71) mod 12 = 12 - 11 = 1$.]

#sol-item(7, "B")[$gcd(7, 11) = 1$. Test $5 + 11k$ divisible by 7: $5, 16, 27, 38, 49 arrow.r x = 7$.]

#sol-item(8, "B")[$d = gcd(2, 10) = 2$, which divides 6, so there are 2 solutions. Reduce to $x equiv 3 (mod 5)$: $x in {3, 8}$.]

#sol-item(9, "A")[Units digits of $4^k$ cycle 4, 6; 123 is odd arrow.r 4.]

#sol-item(10, "A")[$5^6 equiv 1 (mod 7)$ (check $5^2 = 4$, $5^3 = 6$, $5^6 = 1$); $60 = 6(10) arrow.r 1$.]

#sol-item(11, "B")[Numerator $= frac(19, 12)$; denominator $= frac(3, 8)$; quotient $= frac(19, 12) times frac(8, 3) = frac(38, 9)$.]

#sol-item(12, "A")[$0.8dot(2)dot(7) = frac(827 - 8, 990) = frac(819, 990) = frac(91, 110)$.]

#sol-item(13, "B")[Two s.f. start at 5: 0.0525 arrow.r 0.053 (the trailing 2 rounds up because of 5).]

#sol-item(14, "A")[Align: $3.2 times 10^(-4) = 0.32 times 10^(-3)$; $0.32 - 1.5 = -1.18 arrow.r -1.18 times 10^(-3)$.]

#sol-item(15, "A")[$frac(2.5, 90) times 100% = 2.777 dots approx 2.78%$.]

#sol-item(16, "A")[Multiply by 12: $9 : 10 : 7$ (26 parts); smallest $= frac(7, 26) times 78000 = $ ₦21,000.]

#sol-item(17, "A")[$25 times 18 = 450$ man-days; $450 div 30 = 15$ days.]

#sol-item(18, "B")[$frac(1, 20) + frac(1, 30) = frac(5, 60) = frac(1, 12) arrow.r 12$ days.]

#sol-item(19, "B")[Pump-hours constant: $5 times 6 times 8 = 240$; $4 times 5 times H = 240 arrow.r H = 12$ h.]

#sol-item(20, "A")[Harmonic mean $= frac(2(40)(60), 100) = 48$ km/h.]

#sol-item(21, "B")[108 km/h $= 30$ m/s; distance $= 200 + 400 = 600$ m; $t = 20$ s.]

#sol-item(22, "B")[$I = frac(250000 times 7.5 times 4, 100) = $ ₦75,000.]

#sol-item(23, "B")[$A = 400000(1.15)^2 = 529000$; CI $= 529000 - 400000 = $ ₦129,000.]

#sol-item(24, "A")[$1500000 (0.88)^2 = 1500000 times 0.7744 = $ ₦1,161,600.]

#sol-item(25, "B")[$frac(16000, 64000) times 100% = 25%$.]

#sol-item(26, "A")[$1.30 times 0.80 = 1.04 arrow.r 4%$ profit.]

#sol-item(27, "C")[Nominal value held $= 4000 times 0.50 = $ ₦2,000; dividend $= 20% "of" 2000 = $ ₦400; cost $= 4000 times 1.25 = $ ₦5,000; yield $= frac(400, 5000) = 8%$.]

#sol-item(28, "B")[Divide by 1.05: $84000 times frac(20, 21) = $ ₦80,000.]

#sol-item(29, "A")[$0.0081 = frac(81, 10000) = (frac(3, 10))^4$, so the expression is $(frac(10, 3))^(4 times 1/4) = frac(10, 3)$.]

#sol-item(30, "C")[$3^(2(2x - 3)) = 3^(3(x + 1)) arrow.r 4x - 6 = 3x + 3 arrow.r x = 9$.]

#sol-item(31, "A")[$u = 2^x$: $u^2 - 12u + 32 = (u - 4)(u - 8) = 0 arrow.r x = 2$ or $x = 3$.]

#sol-item(32, "A")[$log_4 8 = log_(2^2)(2^3) = frac(3, 2)$.]

#sol-item(33, "A")[$56 = 8 times 7 = 2^3 times 7 arrow.r 3(0.3010) + 0.8451 = 1.7481$.]

#sol-item(34, "B")[$log_9 x = frac(1, 2) log_3 x arrow.r frac(3, 2) log_3 x = 3 arrow.r x = 3^2 = 9$.]

#sol-item(35, "A")[Domain $x > 1$; $frac(x + 5, x - 1) = 4 arrow.r x + 5 = 4x - 4 arrow.r x = 3$.]

#sol-item(36, "A")[$7 sqrt(3) + 3 sqrt(3) - 5 sqrt(3) = 5 sqrt(3)$.]

#sol-item(37, "A")[Conjugate $(sqrt(6) - sqrt(2))$ over $6 - 2 = 4$: $frac(12(sqrt(6) - sqrt(2)), 4) = 3(sqrt(6) - sqrt(2))$.]

#sol-item(38, "A")[$6 sqrt(5) = 2 sqrt(45)$; $x + y = 14, x y = 45 arrow.r x = 9, y = 5$; larger first gives $3 - sqrt(5)$.]

#sol-item(39, "A")[$4x + 5 = x^2 arrow.r x^2 - 4x - 5 = (x - 5)(x + 1) = 0$; reject $-1$.]

#sol-item(40, "A")[Raise to $frac(1, 5)$: $2^6 = 64$, $3^4 = 81$, $5^3 = 125 arrow.r 2^(30) < 3^(20) < 5^(15)$.]

#sol-item(41, "A")[$2^6 - 1 = 63$.]

#sol-item(42, "A")[$72 + 65 - 120 = 17$.]

#sol-item(43, "A")[Union $= 105 - 35 + 5 = 75$; none $= 80 - 75 = 5$.]

#sol-item(44, "A")[$85 + 62 - 100 = 47$.]

#sol-item(45, "A")[$floor(140/5) + floor(140/7) - floor(140/35) = 28 + 20 - 4 = 44$.]

#sol-item(46, "A")[Distinct letters ${E, N, G, I, R}$ arrow.r 5.]

#sol-item(47, "A")[Exactly one $= 18 + 14 - 2(7) = 18$.]

#sol-item(48, "A")[$2^n = 256 = 2^8 arrow.r n = 8$.]

#sol-item(49, "D")[Absorption law: $P union (P inter Q) = P$.]

#sol-item(50, "A")[$25 + 22 - 8 = 39$; neither $= 45 - 39 = 6$.]

#sol-item(51, "A")[$10111_2 = 23$, $101_2 = 5$; product $115 = 64 + 32 + 16 + 2 + 1 = 1110011_2$.]

#sol-item(52, "A")[0.6875 times 2 gives carries $1, 0, 1, 1 arrow.r 0.1011_2$.]

#sol-item(53, "A")[Test $5 + 8k$ divisible by 3: $5, 13, 21 arrow.r x = 7$.]

#sol-item(54, "A")[Cycle 3, 9, 7, 1; $2024 = 4(506) arrow.r$ last entry 1.]

#sol-item(55, "A")[$0.4dot(5) = frac(45 - 4, 90) = frac(41, 90)$.]

#sol-item(56, "A")[$frac(8, 15) x = 24 arrow.r x = 45$.]

#sol-item(57, "A")[$9 times 16 = 144$ man-days; $144 div 12 = 12$ days.]

#sol-item(58, "A")[$frac(1, 5) - frac(1, 9) = frac(4, 45)$ per hour $arrow.r frac(45, 4) = 11.25$ h.]

#sol-item(59, "B")[Times: 2, 1.5, 1 h (total 4.5); distance 180 km; $180 / 4.5 = 40$ km/h.]

#sol-item(60, "A")[Doubling needs $R T = 100 arrow.r R = frac(100, 16) = 6.25%$.]

#pagebreak()

#current-chapter.update("Appendix G: Exam FAQ & Final Study Calendar")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Examination FAQ & Twelve-Week Study Calendar]
  #v(4pt)
  [
    #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
      The questions students actually ask in the final months, answered directly — plus a printable twelve-week calendar so nothing is left to chance.
    ]
  ]
]

#v(4pt)

== G.1 Twenty Questions Candidates Ask Most Often

#table(
  columns: (1.1fr, 2.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Question],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Direct Answer],

  [Is a scientific calculator allowed?], [No. The CBT on-screen calculator is a basic four-function device; every item in Section I is designed to be solved without logs, roots, or base conversion keys.],
  [How many Section I questions should I expect?], [Typically 10–12 of the 40 Mathematics questions, so roughly a quarter of your Mathematics score.],
  [How long should I spend on Mathematics?], [35–40 minutes of the 120-minute total. Divide your time into a fast sweep, a calculation pass, and a final guessing pass.],
  [Should I guess when unsure?], [Always. There is no negative marking in UTME, so every blank answer is a guaranteed zero. Eliminate two options first.],
  [Which chapters give the fastest marks?], [Number bases, laws of indices, standard form, two-set Venn diagrams, and simple interest — all are 30-second procedural items.],
  [Which chapter do candidates lose most marks in?], [Commercial mathematics, especially shares and reverse VAT, because the wrong base value (market price instead of nominal value) is used.],
  [Do I need to memorise log tables?], [No. Memorise $log_(10) 2 = 0.3010$, $log_(10) 3 = 0.4771$, and derive $log_(10) 5 = 0.6990$.],
  [How do I handle unknown bases quickly?], [Expand to base 10 and solve; then immediately discard any root not strictly greater than the largest digit shown.],
  [Can I use a rough sheet?], [Yes, but write in columns: the question number, the decisive formula, and the answer. This makes the final review pass much faster.],
  [What if two options look identical in value?], [That usually signals a mis-copied option or a disguised duplicate; re-read the stem: the intended answer is usually the one in the requested form (base, units, or standard form).],
  [How do I improve speed?], [Practise conversions and formula recall out loud for five minutes daily; speed in Section I is recall speed, not reasoning speed.],
  [Should I study all of Volume 1 before Volume 2?], [Yes. Section I concepts (ratios, indices, logs, surds) recur inside algebra, geometry, and calculus questions.],
  [What is the single best revision activity?], [Re-solving items you previously got wrong, without looking at the solution, then comparing your written steps with the printed steps.],
  [Are diagrams examinable?], [Venn diagrams, number lines, curves, and error-bound diagrams all appear; you must be able to read and sketch them.],
  [How many past questions should I do?], [At minimum, every question in this volume plus two full mocks; then move to complete past papers under timing.],
  [How do I stop careless arithmetic errors?], [Write one intermediate line per operation, and never compute two percentage operations in your head at once.],
  [What if I run out of time?], [Fill every remaining answer in the final 60 seconds; then, if time remains, revisit only the flagged items with the simplest arithmetic.],
  [Is memorising formulas enough?], [No. JAMB disguises standard items; you must recognise which formula applies — that is what the trap boxes train.],
  [How do I manage exam anxiety?], [Simulate the environment: timed sittings, no phone, single rough sheet. Familiarity reduces arousal more than reassurance does.],
  [When should I stop learning new topics?], [Seventy-two hours before the exam. In that window, revise recaps, flashcards, and your error log only.],
)

== G.2 Twelve-Week Final Calendar

#table(
  columns: (auto, 2.0fr, 2.0fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Week],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Core Work],
  text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[Assessment],

  [1], [Ch 1 complete: notes, all worked examples, drill 1–35], [Drill score $>= 28/35$],
  [2], [Ch 2 complete + revise Ch 1 flashcards], [Drill score $>= 28/35$],
  [3], [Ch 3 complete + revise Ch 2], [Drill score $>= 32/40$],
  [4], [Ch 4 complete + revise Ch 3], [Drill score $>= 32/40$],
  [5], [Ch 5 (interest to profit and loss) + revise flashcards], [Mini-test: 20 mixed items $>= 16$],
  [6], [Ch 5 (shares, VAT, tax) + revise Ch 4], [Drill score $>= 40/50$],
  [7], [Ch 6 complete + revise Ch 5], [Drill score $>= 40/50$],
  [8], [Ch 7 complete + revise Ch 6], [Drill score $>= 44/55$],
  [9], [Ch 8 complete + revise Ch 7], [Drill score $>= 44/55$],
  [10], [Ch 9 complete + revise Ch 8], [Drill score $>= 48/60$],
  [11], [Mock Examination 1, then rework every wrong item], [Score $>= 45/60$],
  [12], [Mock Examination 2, recaps (Appendix D), flashcards (Appendix E)], [Score $>= 48/60$],
)

#v(6pt)
#shortcut-box("The 72-Hour Protocol")[
  1. *Day −3:* Re-read all nine recap pages (Appendix D). Re-solve one worked example per chapter from memory.
  2. *Day −2:* Run the 250 flashcards (Appendix E), twice, morning and evening. Copy failures to a single sheet.
  3. *Day −1:* Only the failure sheet, the formula compendium (Appendix A), and the trap boxes. Sleep early; do not attempt new questions after 8 p.m.
  4. *Exam morning:* Read the CBT instructions carefully on screen, note the countdown timer, and begin with the questions you recognise instantly.
]

#v(8pt)
#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 14pt,
)[
  #text(font: "DejaVu Sans", size: 11pt, weight: "bold", fill: jamb-green)[Final Note to the Candidate]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 9.8pt, fill: jamb-navy)[
    Section I of the UTME Mathematics syllabus is the most predictable part of the entire paper. It rewards preparation with something rare in examinations: near-certainty. The nine chapters in this volume contain every method, every trap, and every archetype that has appeared repeatedly across decades of JAMB papers. If you can reproduce each worked example unaided and score above 80% on each chapter drill, you have secured more than a quarter of your Mathematics paper before a single algebra or geometry question is attempted. Work steadily, test yourself honestly, and record every mistake — because in this section, your error log is worth more than any textbook.
  ]
]
