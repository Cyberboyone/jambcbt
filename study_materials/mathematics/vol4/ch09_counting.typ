#import "template.typ": *

#current-chapter.update("Chapter 9: Permutations and Combinations")
#pagebreak()

#chapter-opener(
  9,
  "Permutations and Combinations",
  subtitle: "The Multiplication Principle, Factorials, Arrangements With and Without Repetition, Circular Arrangements, Selections, and Distinguishing One From the Other",
  syllabus-ref: "Sec. V • Topic 9",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "Use the multiplication principle to count the outcomes of a sequence of choices.",
    "Evaluate factorials and simplify expressions containing them.",
    "Count arrangements with $attach(P, tl: n, bl: r)$, including arrangements of letters with repeats.",
    "Count selections with $attach(C, tl: n, bl: r)$.",
    "Decide from the wording whether order matters — permutation or combination.",
  ),
  hotspots: (
    "\"In how many ways can a committee of 3 be chosen from 8 people?\" — a combination.",
    "\"In how many ways can 5 people be arranged in a row?\" — a permutation, $5!$.",
    "\"How many arrangements of the letters of the word …\" — factorial over the repeats.",
    "\"A team of 2 boys and 3 girls is chosen from …\" — multiply two combinations.",
    "\"At least one\" — count the complement and subtract from $1$.",
  ),
  trap-summary: "Three slips. (1) Using $attach(P, tl: n, bl: r)$ where the order is irrelevant, which multiplies the correct answer by $r!$. (2) Forgetting to divide by the factorial of repeated letters in a word arrangement. (3) Adding the two combinations in a \"2 boys *and* 3 girls\" question instead of multiplying them.",
)

// ============================================================================
// SECTION 9.1
// ============================================================================
== 9.1 The Multiplication Principle

If one choice can be made in $m$ ways and a second in $n$ ways, then the two together can be made in $m times n$ ways. That single sentence generates every counting formula in the chapter.

#worked-example(
  1,
  "Two independent choices",
  tier: "FOUNDATION",
  [A student owns $4$ shirts and $3$ pairs of trousers. In how many ways can he dress?],
  [
    *Multiply.*

    $ 4 times 3 = 12 $

    There are $12$ outfits.

    *Why multiplication and not addition.* For each shirt there are three trousers, so the outfits come in four groups of three. Multiplication counts the groups.

    *The signal word.* "And" joins the choices — a shirt *and* trousers — so multiply. "Or" would mean add.
  ],
)

#worked-example(
  2,
  "A three-stage choice",
  tier: "UTME STANDARD",
  [How many three-digit numbers can be formed from the digits $1$ to $9$ if no digit is repeated?],
  [
    *Stage 1 — the hundreds digit.* Nine choices.

    *Stage 2 — the tens digit.* Eight remain.

    *Stage 3 — the units digit.* Seven remain.

    *Multiply.*

    $ 9 times 8 times 7 = 504 $

    There are $504$ such numbers.

    *This is a permutation.* $attach(P, tl: 9, bl: 3) = 9 times 8 times 7 = 504$ — the order matters, because $123$ and $321$ are different numbers.
  ],
)

// ============================================================================
// SECTION 9.2
// ============================================================================
== 9.2 Factorials

#formula-box("Factorial Notation")[
  $ n! = n times (n - 1) times (n - 2) times ... times 2 times 1 $

  #v(2pt)
  $5! = 120$, $6! = 720$, $7! = 5040$. By convention $0! = 1$ and $1! = 1$.

  #v(2pt)
  Factorials grow fast, so UTME answers are usually left as an expression or simplified by cancelling: $7!/5! = 7 times 6 = 42$.
]

#worked-example(
  3,
  "Cancelling factorials",
  tier: "UTME STANDARD",
  [Simplify $8!/6!$.],
  [
    *Write out the top until it meets the bottom.*

    $ 8!/6! = (8 times 7 times 6!)/6! = 8 times 7 = 56 $

    The value is $56$.

    *The habit.* Never compute $40320/720$. Cancel first: factorials are built to cancel, and the arithmetic is far shorter.

    *In exam notation.* This is exactly $attach(P, tl: 8, bl: 2)$, which is why the permutation formula is written as a ratio of factorials.
  ],
)

// ============================================================================
// SECTION 9.3
// ============================================================================
== 9.3 Permutations: Order Matters

#diagram-fig("diagrams/ch09_arrangement_tree.svg",
  "Every arrangement of three letters. Three choices for the first place, two for the second, one for the last: $3 times 2 times 1 = 6$.")

#formula-box("Permutations")[
  $ attach(P, tl: n, bl: r) = n!/(n - r)! = n(n - 1)(n - 2)...(n - r + 1) $

  #v(2pt)
  *Arrangements of $n$ objects in a row:* $n!$.

  *Arrangements of a word with repeated letters:* $n! slash (p! q! ...)$ where $p$, $q$ are the frequencies of each repeated letter.

  *Circular arrangements of $n$ objects:* $(n - 1)!$, because a circle has no fixed starting point.
]

#worked-example(
  4,
  "Arranging people in a row",
  tier: "FOUNDATION",
  [In how many ways can $5$ students be seated in a row of $5$ chairs?],
  [
    *Five choices for the first chair, four for the second, and so on.*

    $ 5! = 5 times 4 times 3 times 2 times 1 = 120 $

    There are $120$ arrangements.

    *A useful sanity check.* $5! = 120$ and $6! = 720$; the answers in the options will be one of these, so an answer like $25$ signals that you multiplied the wrong numbers.
  ],
)

#worked-example(
  5,
  "A word with repeated letters",
  tier: "UTME STANDARD",
  [In how many ways can the letters of the word LEVEL be arranged?],
  [
    *Step 1 — Count the letters and the repeats.* Five letters: $L$ twice, $E$ twice, $V$ once.

    *Step 2 — Apply the formula.*

    $ 5!/(2! times 2!) = 120/(2 times 2) = 30 $

    There are $30$ distinct arrangements.

    *Why divide.* Swapping the two $L$s produces the same word, so the $120$ raw arrangements have counted every word four times — twice for the $L$s and twice for the $E$s.

    *If all letters were different.* The answer would be $120$. The repeats are the whole question.
  ],
)

#worked-example(
  6,
  "A circular table",
  tier: "JAMB CHALLENGE",
  [In how many ways can $5$ people be seated around a circular table?],
  [
    *Fix one person to remove the rotation.*

    $ (5 - 1)! = 4! = 24 $

    There are $24$ arrangements.

    *Why $4!$ and not $5!$.* Around a circle, every seating can be rotated into five positions that are physically identical. Dividing $5! = 120$ by $5$ gives $24$ — the same answer, and a useful way to remember the formula.
  ],
)

#worked-example(
  7,
  "Two people must sit together",
  tier: "JAMB CHALLENGE",
  [In how many ways can $5$ people be arranged in a row if two particular people must sit together?],
  [
    *Step 1 — Treat the pair as one block.* The block plus the other three people makes four objects: $4! = 24$ arrangements.

    *Step 2 — Arrange the pair inside the block.* Two orders: $2! = 2$.

    *Step 3 — Multiply.*

    $ 24 times 2 = 48 $

    There are $48$ arrangements.

    *The principle.* "Together" means glue the objects into a single block, count the arrangements of the blocks, then multiply by the internal arrangements. "Apart" is the complementary count.
  ],
)

// ============================================================================
// SECTION 9.4
// ============================================================================
== 9.4 Combinations: Order Does Not Matter

#diagram-fig("diagrams/ch09_perm_vs_comb.svg",
  "The decision that decides the whole question: does swapping two chosen items produce a different outcome? If yes, it is a permutation; if no, a combination.")

#formula-box("Combinations")[
  $ attach(C, tl: n, bl: r) = n!/(r!(n - r)!) = attach(P, tl: n, bl: r) / r! $

  #v(2pt)
  A combination is a permutation with the internal order divided out. Choosing 3 from 8 gives $attach(C, tl: 8, bl: 3) = 56$ selections but $attach(P, tl: 8, bl: 3) = 336$ arrangements — the ratio is exactly $3! = 6$.

  #v(2pt)
  Two identities worth knowing: $attach(C, tl: n, bl: 0) = 1$ and $attach(C, tl: n, bl: r) = attach(C, tl: n, bl: (n - r))$.
]

#worked-example(
  8,
  "A committee",
  tier: "UTME STANDARD",
  [In how many ways can a committee of $3$ be chosen from $8$ people?],
  [
    *Order is irrelevant — a committee has no positions.*

    $ attach(C, tl: 8, bl: 3) = (8 times 7 times 6)/(3 times 2 times 1) = 336/6 = 56 $

    There are $56$ committees.

    *The check against permutations.* If the three were given positions — chairman, secretary, treasurer — the answer would be $336$. The word "committee" alone tells you it is $56$.
  ],
)

#worked-example(
  9,
  "Two groups, both chosen",
  tier: "JAMB CHALLENGE",
  [A team of $2$ boys and $3$ girls is chosen from $5$ boys and $6$ girls. In how many ways can this be done?],
  [
    *Step 1 — Choose the boys.*

    $ attach(C, tl: 5, bl: 2) = 10 $

    *Step 2 — Choose the girls.*

    $ attach(C, tl: 6, bl: 3) = 20 $

    *Step 3 — Multiply, because both choices happen.*

    $ 10 times 20 = 200 $

    There are $200$ teams.

    *Multiply, never add.* The words "and" and "together" between two separate selections mean multiplication; addition is only for alternatives ("either a team of 2 boys or a team of 3 boys").
  ],
)

#worked-example(
  10,
  "\"At least one\"",
  tier: "JAMB CHALLENGE",
  [
    From $3$ boys and $2$ girls, two students are chosen at random. In how many ways can the choice include at least one girl?
  ],
  [
    *Step 1 — Count the complement.* "At least one girl" is the opposite of "no girls", i.e. two boys:

    $ attach(C, tl: 3, bl: 2) = 3 $

    *Step 2 — Count all choices.*

    $ attach(C, tl: 5, bl: 2) = 10 $

    *Step 3 — Subtract.*

    $ 10 - 3 = 7 $

    There are $7$ ways.

    *The two-step alternative.* One girl and one boy: $attach(C, tl: 2, bl: 1) times attach(C, tl: 3, bl: 1) = 6$; two girls: $attach(C, tl: 2, bl: 2) = 1$; total $7$. Both routes agree, but the complement is faster and far less error-prone when the numbers grow.
  ],
)

// ============================================================================
// SECTION 9.5
// ============================================================================
== 9.5 Telling Them Apart

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[The five-word test]
  #v(3pt)
  Ask: *"does the order matter?"*

  - *Order matters* — queue, arrangement, ranking, seating, password, number formed from digits. Use $attach(P, tl: n, bl: r)$ or $n!$.
  - *Order does not matter* — committee, team, selection, hand of cards, group. Use $attach(C, tl: n, bl: r)$.

  #v(3pt)
  If the question could describe the outcome two different ways and still mean the same thing, the order does not matter.
]

#worked-example(
  11,
  "One question, both readings",
  tier: "UTME STANDARD",
  [
    From $7$ candidates, how many different sets of $3$ can be shortlisted? How many different rankings of the top $3$ can be produced?
  ],
  [
    *Sets — order irrelevant.*

    $ attach(C, tl: 7, bl: 3) = (7 times 6 times 5)/(3 times 2 times 1) = 35 $

    *Rankings — order matters.*

    $ attach(P, tl: 7, bl: 3) = 7 times 6 times 5 = 210 $

    *The relationship.* $210 = 35 times 6 = 35 times 3!$: every set of three can be ranked in six ways. When both numbers appear in the options, this ratio tells you which is which.
  ],
)

#worked-example(
  12,
  "A password with a restriction",
  tier: "JAMB CHALLENGE",
  [How many four-digit numbers can be formed from the digits $1$, $2$, $3$, $4$, $5$ if no digit is repeated and the number must be odd?],
  [
    *Stage 1 — the units digit.* Odd means $1$, $3$ or $5$: three choices.

    *Stage 2 — the other three places.* Four digits remain, arranged in order:

    $ 4 times 3 times 2 = 24 $

    *Multiply.*

    $ 3 times 24 = 72 $

    There are $72$ such numbers.

    *Why the restriction comes first.* Start with the place that has a restriction; every other place then has an unrestricted, easily counted set of choices.
  ],
)

// ============================================================================
// SECTION 9.6
// ============================================================================
== 9.6 Chapter 9 Rapid-Revision Checklist

#table(
  columns: (1.4fr, 1.8fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question wording],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  ["shirts and trousers, outfits"], [Multiply the choices], ["And" means multiply],
  ["arrange $n$ people in a row"], [$n!$], [$5! = 120$],
  ["arrange the letters of a word"], [$n! slash$ repeats], [Divide by each repeated letter factorial],
  ["around a circular table"], [$(n - 1)!$], [Fix one person first],
  ["two people must be together"], [Block, then $times 2!$], [Do not forget the internal order],
  ["choose a committee"], [$attach(C, tl: n, bl: r)$], [Order does not matter],
  ["give positions to the chosen"], [$attach(P, tl: n, bl: r)$], [Order matters],
  ["$2$ boys and $3$ girls"], [Multiply the two combinations], [Not add],
  ["at least one"], [$"total" - "none"$], [The complement is quicker],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 9 in One Breath]
  #v(3pt)
  Multiply the choices in a sequence. If the order matters — arrangements, rankings, passwords — count permutations, $n!$ for a full row and $n! slash$ repeats for a word. If the order does not matter — committees, teams, selections — count combinations. Two separate selections multiply; alternatives add; "at least one" is a subtraction from the total.
]

#diagram-fig("diagrams/recap_ch09.svg",
  "Chapter 9 recap card: permutations, combinations and the order test.", width: 62%)

// ============================================================================
// SECTION 9.7
// ============================================================================
== 9.7 Chapter 9 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Evaluate $attach(P, tl: 6, bl: 2)$.], [$15$], [$12$], [$30$], [$36$])
#mcq(2, [Evaluate $attach(C, tl: 6, bl: 2)$.], [$30$], [$12$], [$36$], [$15$])
#mcq(3, [In how many ways can the letters of the word MATHS be arranged?], [$120$], [$60$], [$24$], [$720$])
#mcq(4, [In how many ways can a committee of $3$ be chosen from $7$ people?], [$210$], [$35$], [$21$], [$42$])

#answer-key-grid(("C", "D", "A", "B"))

#include "drill_ch09.typ"
