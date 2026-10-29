#import "template.typ": *

#current-chapter.update("Appendix N: Forty Spot-the-Error Exercises")

#pagebreak()
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX N]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Forty Spot-the-Error Exercises]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Each item below is a solution containing exactly one error. Find the line, name the rule that was broken, and write the corrected line. Marking your own work is a skill; this appendix trains it deliberately.
  ]
]

#v(6pt)

#let spot(n, wrong, answer) = [
  #block(
    width: 100%,
    breakable: false,
    fill: white,
    stroke: 0.8pt + jamb-border,
    radius: 6pt,
    inset: 10pt,
  )[
    #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[#text(fill: trap-red)[ITEM #n.] ]
    #v(2pt)
    #set text(size: 9pt)
    #wrong
  ]
  #v(3pt)
  #block(
    width: 100%,
    breakable: false,
    fill: jamb-light,
    stroke: 0.5pt + jamb-border,
    radius: 6pt,
    inset: 8pt,
  )[
    #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[CORRECTION: ]
    #text(size: 8.8pt)[#answer]
  ]
  #v(6pt)
]

== N.1 Change of Subject and Polynomials

#spot(1, [Make $x$ the subject of $2x + 5 = y$: $" " 2x = y + 5$, so $x = (y + 5)/2$.],
  [The constant was added instead of subtracted. Correct: $2x = y - 5$, so $x = (y - 5)/2$. *Chapter 1.*])

#spot(2, [Make $x$ the subject of $y = 4/(x + 1)$: $" " x + 1 = 4/y$, so $x = 4/y + 1$.],
  [The $1$ must be subtracted, not added: $x = 4/y - 1$. *Chapter 1.*])

#spot(3, [Make $x$ the subject of $y = sqrt(2x)$: $" " y = 2x$, so $x = y/2$.],
  [Squaring gives $y^2 = 2x$, so $x = y^2/2$ — the square was dropped. *Chapter 1.*])

#spot(4, [Make $t$ the subject of $s = 1/2 a t^2$: $" " t^2 = 2s/a$, so $t = 2s/a$.],
  [The square root was omitted: $t = sqrt(2s/a)$. *Chapter 1.*])

#spot(5, [Find the remainder when $x^3 - 2x + 5$ is divided by $(x + 2)$: remainder $= 8 - 4 + 5 = 9$.],
  [The divisor $x + 2$ vanishes at $x = -2$, so the remainder is $-8 + 4 + 5 = 1$. *Chapter 2.*])

#spot(6, [If $(x - 3)$ is a factor of $x^2 + k x - 6$, then $9 + 3k - 6 = 0$, so $k = 1$.],
  [$9 + 3k - 6 = 0$ gives $3k = -3$, so $k = -1$. *Chapter 2.*])

#spot(7, [Divide $x^3 + 1$ by $(x + 1)$: quotient $x^2 + x + 1$.],
  [The quotient is $x^2 - x + 1$; expanding $(x + 1)(x^2 - x + 1)$ gives $x^3 + 1$. *Chapter 2.*])

#spot(8, [Factorise $x^2 - 9$ as $(x - 3)^2$.],
  [A difference of two squares factorises as $(x - 3)(x + 3)$; $(x - 3)^2$ would be $x^2 - 6x + 9$. *Chapter 2.*])

#spot(9, [If $P(x) = 2x^3 - 3x^2 + 4$, then $P(1) = 2 - 3 + 4 = 3$, so $(x - 1)$ is not a factor.],
  [The arithmetic is right but the conclusion is only half-stated: a non-zero value means the remainder is $3$, and $(x - 1)$ is indeed not a factor. *The error is in the wording* — the remainder should be quoted as the answer. *Chapter 2.*])

#spot(10, [Synthetic division of $x^3 - 4x + 1$ by $(x - 2)$ uses the coefficients $1, -4, 1$.],
  [The $x^2$ coefficient is missing and must be inserted as zero: $1, 0, -4, 1$. *Chapter 2.*])

== N.2 Quadratics, Simultaneous Equations and Inequalities

#spot(11, [Solve $x^2 = 16$: $x = 4$.],
  [Both roots are needed: $x = plus.minus 4$. *Chapter 3.*])

#spot(12, [Solve $2x^2 - 5x + 2 = 0$ by the formula: $x = (5 plus.minus sqrt(25 - 16))/2 = (5 plus.minus 3)/2$, so $x = 4$ or $x = 1$.],
  [The denominator must be $2a = 4$, not $2$. Correct: $x = (5 plus.minus 3)/4$, so $x = 2$ or $x = 1/2$. *Chapter 3.*])

#spot(13, [For $3x^2 - 4x + 1 = 0$, the sum of the roots is $4/3$ and the product is $-1/3$.],
  [The product is $c/a = 1/3$; the minus sign belongs only to the sum formula. *Chapter 3.*])

#spot(14, [If $x^2 + k x + 9 = 0$ has equal roots, then $k^2 = 9$ and $k = 3$.],
  [$k^2 = 36$, so $k = plus.minus 6$; forgetting the factor $4 a c$ lost the $4$. *Chapter 3.*])

#spot(15, [Complete the square: $x^2 + 6x + 2 = (x + 3)^2 + 2$.],
  [$(x + 3)^2 = x^2 + 6x + 9$, so the constant must be adjusted: $(x + 3)^2 - 7$. *Chapter 3.*])

#spot(16, [Solve $3x + 2y = 12$ and $6x + 4y = 20$: the coefficients are proportional, so there are infinitely many solutions.],
  [The equations are $3x + 2y = 12$ and $3x + 2y = 10$ — same coefficients, different constants — so there is *no* solution. *Chapter 4.*])

#spot(17, [Solve $x + y = 4$ and $x y = 3$ by substituting $y = 4 - x$: $x(4 - x) = 3$, so $x^2 - 4x + 3 = 0$ and $x = 3$ or $x = 1$. The solution is $(3, 1)$.],
  [Each root of $x$ needs its partner: $(3, 1)$ and $(1, 3)$. *Chapter 4.*])

#spot(18, [Solve $4 - 2x > 10$: $-2x > 6$, so $x > -3$.],
  [Dividing by $-2$ reverses the symbol: $x < -3$. *Chapter 5.*])

#spot(19, [Solve $x^2 - 4 < 0$: $x^2 < 4$, so $x < 2$.],
  [$x^2 < 4$ gives $-2 < x < 2$; the negative side was lost. *Chapter 5.*])

#spot(20, [Solve $|x - 2| > 3$: $-3 < x - 2 < 3$, so $-1 < x < 5$.],
  [A "greater than" modulus gives two rays: $x - 2 < -3$ or $x - 2 > 3$, so $x < -1$ or $x > 5$. *Chapter 5.*])

== N.3 Variation, Progressions, Operations and Matrices

#spot(21, [$y$ varies inversely as $x$ and $y = 8$ when $x = 2$. Then $k = 8/2 = 4$ and $y = 4/x$.],
  [For inverse variation $k = x y = 16$, so $y = 16/x$. *Chapter 6.*])

#spot(22, [$y$ varies directly as $x^2$ and $y = 12$ when $x = 2$. So $y = 6x^2$ and, at $x = 3$, $y = 54$.],
  [$k = 12/4 = 3$, so $y = 3x^2$ and at $x = 3$, $y = 27$. *Chapter 6.*])

#spot(23, [The 10th term of the A.P. $4, 7, 10, dots$ is $4 + 10(3) = 34$.],
  [There are $9$ steps, not $10$: $T_10 = 4 + 9(3) = 31$. *Chapter 7.*])

#spot(24, [The sum of the first $10$ terms of $2, 4, 6, dots$ is $10/2[2 + 10(2)] = 110$.],
  [$S_n = n/2[2a + (n - 1)d]$, so $S_10 = 5[4 + 18] = 110$. The *numerical answer is right but the quoted formula used $n$ instead of $n - 1$* — that slip would fail on other data. *Chapter 7.*])

#spot(25, [Sum to infinity of $2 + 4 + 8 + dots$ is $2/(1 - 2) = -2$.],
  [$|r| = 2 > 1$, so the series diverges and no sum to infinity exists. *Chapter 7.*])

#spot(26, [For a G.P. with $a = 3$ and $r = 2$, $S_4 = 3(2^4 - 1)/(2 - 1) = 45$.],
  [$S_4 = 3(16 - 1) = 45$; the answer is correct, but note that the factor $(r - 1)$ in the denominator has been written as $(2 - 1)$ while the numerator used $(1 - r)$. *Using the wrong version of the formula with $r > 1$ cancels out only by luck.* *Chapter 7.*])

#spot(27, [If $a * b = a + b + a b$, then $3 * 4 = 3 + 4 + 12 = 19$. The operation is not commutative because the order matters.],
  [The arithmetic is right and the conclusion is wrong: $a * b$ is symmetric in $a$ and $b$, so the operation *is* commutative. *Chapter 8.*])

#spot(28, [If $a * b = a + b - 4$, the identity element is $0$.],
  [$a + e - 4 = a$ gives $e = 4$, not $0$. *Chapter 8.*])

#spot(29, [If $a * b = 2a - b$, the inverse of $3$ is found by solving $2(3) - b = 0$, giving $b = 6$.],
  [The identity is not $0$: $2a - e = a$ gives $e = a$, which is not constant, so no identity exists and the operation has no inverses. *Chapter 8.*])

#spot(30, [The determinant of $mat(3, 5; 2, 4)$ is $12 + 10 = 22$.],
  [$det = 3(4) - 5(2) = 2$; the products are subtracted, not added. *Chapter 9.*])

#spot(31, [The inverse of $mat(2, 4; 1, 3)$ is $mat(3, -4; -1, 2)$, because the determinant is $2$.],
  [$det = 6 - 4 = 2$, so the inverse is $frac(1, 2) mat(3, -4; -1, 2)$ — the division by the determinant was dropped. *Chapter 9.*])

#spot(32, [If $A$ is $2 times 3$ and $B$ is $3 times 2$, then $A B$ has order $3 times 3$.],
  [The product takes the outer dimensions: $2 times 2$. *Chapter 9.*])

#spot(33, [$mat(1, 2; 3, 4)^2 = mat(1, 4; 9, 16)$.],
  [Matrices square by multiplication, not entry by entry: $mat(7, 10; 15, 22)$. *Chapter 9.*])

#spot(34, [Solving $2x + y = 7$, $5x + 3y = 18$ by Cramer's rule gives $x = 3$ and $y = (2 times 18 - 5 times 7)/1 = 1$.],
  [$D_y = a_1 c_2 - a_2 c_1 = 2(18) - 5(7) = 1$, so both the rule and the answer are correct here. *The error is in the earlier line's claim that $D = 1$ "by inspection"* — $D$ must be shown: $2(3) - 5(1) = 1$. *Chapter 9.*])

#spot(35, [Solve $3x + 2y = 12$, $x - 2y = 4$: subtracting gives $2x = 8$, so $x = 4$ and $y = 0$.],
  [The $y$ coefficients are opposites, so the equations must be *added*: $4x = 16$, giving the same $x = 4$ here. *Subtracting would give $2x + 4y = 8$, which is not a solution step.* *Chapter 4.*])

#spot(36, [If $P(x) = x^3 - 6x^2 + 11x - 6$, then $P(1) = 0$, so the roots are $1$ and nothing else can be a root.],
  [A zero value shows only that $(x - 1)$ is *a* factor. The other roots are $2$ and $3$. *Chapter 2.*])

#spot(37, [Find $k$ if $x - 1$ is a factor of $k x^2 - 3x + 2$: $k - 3 + 2 = 0$, so $k = 1$.],
  [The substitution is right and the answer is right; the *stated reasoning* omitted the word "factor means $P(1) = 0$" — write it, because marks depend on the statement. *Chapter 2.*])

#spot(38, [Solve $2^(2x) = 8$: $2x = 8$, so $x = 4$.],
  [Write $8 = 2^3$, then $2x = 3$ and $x = 3/2$. *Chapter 3.*])

#spot(39, [Solve $x + 1/x = 3$: multiplying by $x$ gives $x^2 + 1 = 3$, so $x^2 = 2$.],
  [Multiplying by $x$ gives $x^2 + 1 = 3x$, so $x^2 - 3x + 1 = 0$. *Chapter 3.*])

#spot(40, [The quadratic $x^2 + 4x + 4 = 0$ has two distinct real roots because the discriminant is positive.],
  [The discriminant is $16 - 16 = 0$, so there is one repeated root, $x = -2$. *Chapter 3.*])

#trap-box("Why This Appendix Exists")[
  In the examination you will mark nothing. In study, however, marking your own work — and finding the *line* where reasoning broke, not merely the wrong final number — is the single fastest way to stop repeating an error. An error you can name is an error you can refuse.
]

#current-chapter.update("Appendix O: Exam-Day Playbook and FAQs")

#pagebreak()
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX O]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Exam-Day Playbook]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    What to do in the last week, what to take into the hall, how to use the CBT interface, and honest answers to the thirty questions candidates actually ask.
  ]
]

#v(6pt)

== O.1 The Last Seven Days

#table(
  columns: (auto, 2.4fr),
  inset: 6pt,
  align: (center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  ..(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Task],
  ),
  [D−7], [Sit Mock 2 from Appendix F under full timing. Mark, then complete the error log for every miss.],
  [D−6], [Rebuild the two weakest chapters only — read the worked examples, then redo their drills.],
  [D−5], [Appendix K, blocks 1–5. Aim for eighteen out of twenty in each block, in under six minutes.],
  [D−4], [Appendix L derivations 1–13. Reproduce five of them from memory on blank paper.],
  [D−3], [Appendix M, questions 1–60. Mark; return only to chapters that produced two or more misses.],
  [D−2], [Appendix A compendium, recited aloud, then Appendix E flashcards in two passes.],
  [D−1], [The Final Forty (Appendix P). Light review of the error log. Pack your documents. Sleep early.],
  [D−0], [No new material. Read the compendium for twenty minutes, then close the book.],
)

== O.2 What to Take into the Hall

#grid(
  columns: (1fr, 1fr),
  column-gutter: 12pt,
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Bring]
    #v(3pt)
    - Your JAMB profile slip and registration number.
    - One valid means of identification, as specified on the slip.
    - Two pencils (HB), a sharpener, and a clean eraser.
    - A simple, non-programmable four-function calculator if, and only if, your centre permits it.
    - A transparent water bottle, if permitted.
    - Yourself, thirty minutes early.
  ],
  block(width: 100%, fill: trap-bg, stroke: 0.8pt + trap-red, radius: 7pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: trap-red)[Leave behind]
    #v(3pt)
    - Any phone, smartwatch or earpiece — even switched off.
    - Printed notes, textbooks or "small chops" of paper.
    - Scientific or programmable calculators.
    - Correction fluid, which many centres refuse.
    - Anything borrowed from another candidate at the gate.
  ],
)

== O.3 Using the CBT Interface Well

#grid(
  columns: (1fr, 1fr),
  column-gutter: 12pt,
  block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-navy)[Ten interface habits]
    #v(3pt)
    + Read the on-screen instruction page properly; it names the keys that move you forward.
    + Note the question counter — it tells you how many remain, not how many you have answered.
    + Flag, do not stall. A flagged question is revisited; a stalled one costs three others.
    + Re-read the stem for the words "not", "except" and "least".
    + Type nothing into the answer box; select an option.
    + If the option you computed is absent, re-read the question before recomputing.
    + Use the on-screen calculator only for the final arithmetic of a step you have already set up.
    + Keep both hands off the keyboard when you are thinking.
    + Submit only after the review screen shows every question answered.
    + If the machine behaves strangely, raise your hand — do not restart anything yourself.
  ],
  block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-navy)[A forty-minute arithmetic]
    #v(3pt)
    The Mathematics paper is one component of four. Treat it as forty minutes of work:

    - *Minutes 0–2:* scan, and write the five core formulae on rough paper.
    - *Minutes 2–30:* first pass — every question you can begin immediately.
    - *Minutes 30–38:* second pass — the flagged, multi-step questions.
    - *Minutes 38–40:* every remaining blank gets a considered guess.

    At one minute per question on the first pass you will clear roughly twenty-eight questions; the remaining twelve sit inside the second pass at about forty seconds each. That arithmetic, not raw speed, is what produces a complete paper.
  ],
)

== O.4 Thirty Questions Candidates Ask

#let faq(q, a) = block(
  width: 100%,
  breakable: false,
  inset: (left: 10pt),
  stroke: (left: 2pt + jamb-bright),
)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[#q]
  #v(2pt)
  #text(size: 9pt)[#a]
]

#faq("1. Is this volume enough on its own?", [For the algebra half of the syllabus, yes — with the drills done honestly. Volume 1 covers number and numeration, and together they cover the Mathematics syllabus in this series.])

#faq("2. Must I finish every chapter before starting the drills?", [No. Do the worked examples of a section, then its drill questions. Interleaving beats block completion.])

#faq("3. How many hours a day?", [Ninety minutes of focused Mathematics is worth more than four hours of half-attention. The countdown in Appendix B assumes one to one-and-a-half hours.])

#faq("4. I keep forgetting formulae. What now?", [Derive them. Appendix L exists precisely for this: a formula you can derive in three lines is not memorisation, it is knowledge.])

#faq("5. Is a calculator allowed?", [JAMB permits only simple four-function calculators, and many centres restrict them further. Practise every drill without one.])

#faq("6. What score should I be getting in the drills?", [Eighty per cent of each chapter drill, before moving on; ninety per cent on the second attempt a week later.])

#faq("7. I score well in drills but badly in mocks. Why?", [Drills isolate a skill; mocks test selection under time pressure. The fix is the mixed bank in Appendix M and the flag-and-return habit in O.3.])

#faq("8. Should I guess when I do not know?", [Always. There is no negative marking. Eliminate two options first and the guess is worth half a mark on average.])

#faq("9. How do I stop careless sign errors?", [Write the sign in the same stroke as the number, and circle any negative divisor before dividing. Two habits, most of the lost marks recovered.])

#faq("10. What if I run out of time?", [That is a selection problem, not a knowledge problem. Practise the first-pass discipline until it is automatic.])

#faq("11. Are the chapter drills harder than the real paper?", [Slightly. The UTME STANDARD band matches the paper; the JAMB CHALLENGE band is deliberately above it.])

#faq("12. What is the single highest-yield topic?", [Quadratics: it appears directly and inside variation, matrices and simultaneous equations. If you master one chapter, master Chapter 3.])

#faq("13. Do I need to memorise the 3 × 3 determinant expansion?", [You need the cofactor pattern — plus, minus, plus — and the minors. That is enough to rebuild the expansion in ten seconds.])

#faq("14. How do I handle word problems?", [Define every unknown in words, then translate one sentence at a time. Never start with the equations.])

#faq("15. Is it worth learning synthetic division if long division works?", [Yes; it halves the time and removes an entire class of alignment errors.])

#faq("16. My handwriting is slow. Does it matter?", [In the CBT hall you type nothing and write only rough work. Legibility matters only in that you must be able to re-read your own line.])

#faq("17. How many past questions should I do?", [Quality beats quantity: forty a week, fully reviewed, beats four hundred skimmed. The mocks and banks in this volume give you four hundred with full solutions.])

#faq("18. What do I do the night before?", [Nothing new. Read the compendium, check your documents, and sleep. A tired brain loses more marks than an unprepared one gains.])

#faq("19. Can I use this book for WAEC or NECO too?", [Yes. The algebra content is common to the senior secondary syllabus; only the timing and paper structure differ.])

#faq("20. What if a question looks unfamiliar?", [It is almost always a familiar question wearing different clothes. Name the chapter it belongs to; the method follows from the name.])

#faq("21. Should I attempt Mathematics first or last in the CBT?", [The order is set by the system, not by you. Treat whatever appears first as the first pass of O.3.])

#faq("22. How do I keep my working tidy under pressure?", [Number every line of rough work with the question number, and draw a line between questions. Untidy rough work is the main cause of "I solved it but entered the wrong option".])

#faq("23. Is it a problem if I cannot finish the JAMB CHALLENGE examples?", [No, provided you can finish the UTME STANDARD band. The challenge band is for the top marks, not for the pass.])

#faq("24. What is a good mock score to aim at?", [Thirty out of forty on this volume's mocks, rising to thirty-two by the final paper.])

#faq("25. Should I study with a friend?", [For the last week, yes — explaining a rule aloud exposes gaps. For drills, no; timed practice is solitary.])

#faq("26. How long should a chapter take?", [Two to three study sessions, each ending with a block of drill questions. Not one long sitting.])

#faq("27. I understand in class but forget at home. Why?", [You recognised rather than recalled. Close the book and reproduce the method on blank paper — that is the test, not recognition.])

#faq("28. Which appendix do I use when I have only ten minutes?", [Appendix E flashcards, or any block of Appendix K. Both are built for short, sharp sessions.])

#faq("29. How do I know I am ready?", [When you can sit any mock in this book cold and score thirty or more, with no chapter losing three marks, and finish in thirty-five minutes.])

#faq("30. What if I fail this time?", [Then you will sit it again with a map of exactly what to fix, which is more than most candidates have. Nothing in this volume becomes useless after one paper.])

== O.5 If Something Goes Wrong

#table(
  columns: (1.3fr, 2.2fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  ..(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Situation],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Response],
  ),
  [The screen freezes], [Stop typing, raise your hand, and wait. The invigilator logs the time; do not touch the machine yourself.],
  [You are given a different paper], [Read the instruction page again — the numbering may differ. Start the first pass as usual.],
  [You lose ten minutes], [Shorten the first pass to twenty minutes and protect the final two minutes for guesses.],
  [You cannot remember a formula], [Derive it, or substitute the options into the question. Both routes are faster than staring.],
  [Two options seem identical], [Re-read the units and the sign. If they truly are identical, the question is faulty and either will be accepted.],
  [You feel panic rising], [Four slow breaths, then one single easy question. Momentum returns through action, not through willpower.],
)

#shortcut-box("The One Sentence to Remember")[
  Every question in this book has a *name* — a chapter and an archetype — and the method follows from the name. When the paper looks strange, name the question first; the numbers will follow.
]

#include "final40.typ"

#include "marathon80.typ"
