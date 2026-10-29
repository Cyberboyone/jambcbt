#import "template.typ": *

#current-chapter.update("Chapter 10: Probability")
#pagebreak()

#chapter-opener(
  10,
  "Probability",
  subtitle: "Sample Spaces, Equally Likely Outcomes, Complementary Events, the Addition Rule, the Multiplication Rule, Tree Diagrams and Drawing Without Replacement",
  syllabus-ref: "Sec. V • Topic 10",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "List a sample space and count equally likely outcomes.",
    "Compute simple probabilities from a list, a table or a pack of cards.",
    "Use the complement, $P(\"not\" A) = 1 - P(A)$, especially for \"at least one\".",
    "Add probabilities for mutually exclusive events and correct for overlap.",
    "Multiply probabilities for independent events and for successive draws.",
    "Read a tree diagram, with and without replacement.",
  ),
  hotspots: (
    "\"Two dice are thrown — find the probability that the sum is …\" — count the $36$ outcomes.",
    "\"A card is drawn — find the probability that it is …\" — kings, hearts, or a red or a face card.",
    "\"At least one\" — always $1 - P(\"none\")$.",
    "\"Two balls are drawn without replacement\" — the second denominator changes.",
    "\"A and B are independent\" — multiply.",
  ),
  trap-summary: "Three slips. (1) Adding probabilities where the events happen together — that is multiplication. (2) Forgetting that the denominator falls by one on the second draw without replacement. (3) Writing a probability greater than $1$ — immediate evidence of double counting.",
)

// ============================================================================
// SECTION 10.1
// ============================================================================
== 10.1 Sample Spaces and Equally Likely Outcomes

#formula-box("The Definition")[
  $ P(A) = ("number of outcomes in" A)/("total number of equally likely outcomes") $

  #v(2pt)
  Every probability lies between $0$ and $1$. A probability of $0$ is impossible, of $1$ is certain, and of $1/2$ is even.

  #v(2pt)
  *Odds in favour* $a : b$ convert as $P = a/(a + b)$. Thus odds of $3 : 2$ mean a probability of $3/5$.
]

#worked-example(
  1,
  "A single die",
  tier: "FOUNDATION",
  [A fair die is thrown once. Find the probability of (a) an even number, (b) a number greater than $4$.],
  [
    *The sample space.* $1, 2, 3, 4, 5, 6$ — six equally likely outcomes.

    *(a) Even numbers.* $2, 4, 6$ — three outcomes:

    $ P("even") = 3/6 = 1/2 $

    *(b) Greater than $4$.* $5, 6$ — two outcomes:

    $ P(>4) = 2/6 = 1/3 $

    *The rule to state.* Probability is a count of outcomes over a count of outcomes. Nothing more complicated is happening in any dice question.
  ],
)

#diagram-fig("diagrams/ch10_sample_space.svg",
  "The $36$ equally likely outcomes of two dice, with the sums shown. Six of the cells sum to seven, so the probability is $6/36 = 1/6$.", width: 58%)

#worked-example(
  2,
  "Two dice",
  tier: "UTME STANDARD",
  [Two fair dice are thrown. Find the probability that the sum of the scores is $7$.],
  [
    *Step 1 — The total outcomes.* $6 times 6 = 36$.

    *Step 2 — Count the favourable ones.*

    $ (1,6), (2,5), (3,4), (4,3), (5,2), (6,1) "— six outcomes" $

    *Step 3 — Divide.*

    $ P("sum 7") = 6/36 = 1/6 $

    *The check.* Seven is the most likely sum with two dice, because it has the most ways of occurring; a glance at the grid confirms six cells against five for a sum of six or eight.
  ],
)

#worked-example(
  3,
  "A pack of cards",
  tier: "UTME STANDARD",
  [A card is drawn at random from a standard pack of $52$. Find the probability that it is (a) a king, (b) a red card or a king.],
  [
    *(a) Kings.* There are $4$:

    $ P("king") = 4/52 = 1/13 $

    *(b) Red or king.* Red cards number $26$, kings number $4$, but two kings are red and have been counted twice:

    $ (26 + 4 - 2)/52 = 28/52 = 7/13 $

    *Why the subtraction.* "Or" usually means add, but the overlap must be removed once. Two of the four kings are already inside the twenty-six red cards.

    *The general rule.* $P(A union B) = P(A) + P(B) - P(A inter B)$. The subtraction is what distinguishes a correct answer from the commonest wrong one, $30/52$.
  ],
)

// ============================================================================
// SECTION 10.2
// ============================================================================
== 10.2 The Complement

#diagram-fig("diagrams/ch10_complement.svg",
  "An event and its complement fill the sample space exactly. One subtraction converts the probability of one into the probability of the other.")

#formula-box("The Complement Rule")[
  $ P("not" A) = 1 - P(A) $

  #v(2pt)
  The phrases that signal a complement are *"not"*, *"none"*, *"neither"* and — most importantly — *"at least one"*:

  $ P("at least one") = 1 - P("none") $
]

#worked-example(
  4,
  "Two coin tosses",
  tier: "FOUNDATION",
  [A fair coin is tossed twice. Find the probability of (a) two heads, (b) at least one head.],
  [
    *The sample space.* $H H, H T, T H, T T$ — four outcomes.

    *(a) Two heads.* One outcome:

    $ P(HH) = 1/4 $

    *(b) At least one head.* Three outcomes contain a head, so $P = 3/4$.

    *By the complement.* $P("at least one head") = 1 - P("no head") = 1 - 1/4 = 3/4$. The same answer, and the method that still works when there are ten tosses instead of two.
  ],
)

#worked-example(
  5,
  "A bag of counters",
  tier: "UTME STANDARD",
  [A bag contains $5$ red and $3$ blue counters. One counter is drawn. Find the probability that it is not red.],
  [
    *Direct count.* Three blue counters out of eight:

    $ P("blue") = 3/8 $

    *By the complement.* $P("red") = 5/8$, so

    $ P("not red") = 1 - 5/8 = 3/8 $

    *The two methods agree*, as they must: "not red" is exactly "blue" when those are the only colours. The complement earns its keep when "not red" would require counting many alternatives.
  ],
)

// ============================================================================
// SECTION 10.3
// ============================================================================
== 10.3 The Addition Rule

#diagram-fig("diagrams/ch10_venn_rules.svg",
  "Two overlapping events. The union is everything inside either circle, and the overlap is counted twice unless it is subtracted once.")

#formula-box("Adding Probabilities")[
  $ P(A union B) = P(A) + P(B) - P(A inter B) $

  #v(2pt)
  If the events cannot both happen — *mutually exclusive* — the overlap is empty and $P(A inter B) = 0$, so the rule collapses to a plain sum.

  #v(2pt)
  Read "or" as a union and "and" as an intersection. The subtraction exists only to repair double counting.
]

#worked-example(
  6,
  "Mutually exclusive events",
  tier: "FOUNDATION",
  [A bag holds cards numbered $1$ to $20$. A card is drawn. Find the probability that it is a multiple of $5$ or a multiple of $3$.],
  [
    *Multiples of $5$.* $5, 10, 15, 20$ — four cards.

    *Multiples of $3$.* $3, 6, 9, 12, 15, 18$ — six cards.

    *The overlap.* $15$ is both.

    *Apply the rule.*

    $ (4 + 6 - 1)/20 = 9/20 $

    The probability is $9/20$.

    *Why not simply $10/20$.* Adding $4$ and $6$ counts the card $15$ twice; a union counts each outcome once, so the double count must come back out.
  ],
)

#worked-example(
  7,
  "Probabilities given as decimals",
  tier: "UTME STANDARD",
  [
    $P(A) = 0.5$, $P(B) = 0.4$ and $P(A inter B) = 0.2$. Find $P(A union B)$ and $P("neither")$.
  ],
  [
    *The union.*

    $ P(A union B) = 0.5 + 0.4 - 0.2 = 0.7 $

    *Neither.*

    $ P("neither") = 1 - 0.7 = 0.3 $

    *The check.* All the probabilities stay inside $0$ to $1$, and the three regions $A$ only, $B$ only and neither satisfy $0.3 + 0.2 + 0.2 + 0.3 = 1$.

    *The exam pattern.* Two of these three numbers are usually given and the third asked for. Rearranging the same formula answers every version.
  ],
)

// ============================================================================
// SECTION 10.4
// ============================================================================
== 10.4 The Multiplication Rule

#formula-box("Independent Events")[
  $ P(A inter B) = P(A) times P(B) quad "when" A "and" B "are independent" $

  #v(2pt)
  Two events are independent when one does not change the probability of the other: two tosses of a coin, two spins of a wheel, a draw that is replaced before the next.

  #v(2pt)
  The signal word is *"and"* — both things happen — and the operation is multiplication, not addition.
]

#worked-example(
  8,
  "Two independent events",
  tier: "UTME STANDARD",
  [A die is thrown and a coin is tossed. Find the probability of a six and a head.],
  [
    *The two probabilities.*

    $ P(6) = 1/6 quad P(H) = 1/2 $

    *Multiply, because both must happen.*

    $ 1/6 times 1/2 = 1/12 $

    The probability is $1/12$.

    *The list check.* The combined sample space has $6 times 2 = 12$ equally likely outcomes, and exactly one is "six and head". Counting and multiplying agree.
  ],
)

#worked-example(
  9,
  "At least one in three attempts",
  tier: "JAMB CHALLENGE",
  [
    The probability that a student passes a test on the first attempt is $1/3$. If he sits three independent attempts, find the probability that he passes at least once.
  ],
  [
    *Step 1 — The complement of "at least once" is "fails all three".*

    $ P("fail") = 1 - 1/3 = 2/3 $

    *Step 2 — Multiply for three independent failures.*

    $ (2/3)^3 = 8/27 $

    *Step 3 — Subtract from $1$.*

    $ 1 - 8/27 = 19/27 $

    The probability is $19/27$, about $0.70$.

    *Why the complement is the only practical route.* "At least once" includes passing on the first, second, third, or several of these — four separate cases. "Fails all three" is one case.
  ],
)

// ============================================================================
// SECTION 10.5
// ============================================================================
== 10.5 Drawing Without Replacement

#diagram-fig("diagrams/ch10_tree.svg",
  "A tree for two draws without replacement. Multiply along the branches, add between the branches that produce the same outcome.")

#concept-box("The Denominator Changes")[
  With replacement, the second probability is identical to the first. *Without* replacement, one item has gone, so the denominator falls by one — and the numerator falls too if the item drawn was of the type you are counting.

  #v(3pt)
  Bag: $5$ red, $3$ blue. Two drawn without replacement.

  - $P("both red") = 5/8 times 4/7 = 20/56 = 5/14$
  - $P("one of each") = (5/8 times 3/7) + (3/8 times 5/7) = 15/56 + 15/56 = 15/28$
]

#worked-example(
  10,
  "Two reds without replacement",
  tier: "UTME STANDARD",
  [
    A bag contains $5$ red and $3$ blue balls. Two balls are drawn at random without replacement. Find the probability that both are red.
  ],
  [
    *Step 1 — First draw.*

    $ P("red") = 5/8 $

    *Step 2 — Second draw, after one red has gone.*

    $ P("red") = 4/7 $

    *Step 3 — Multiply.*

    $ 5/8 times 4/7 = 20/56 = 5/14 $

    The probability is $5/14$, about $0.36$.

    *The error to avoid.* Using $5/8$ twice gives $25/64$, which is the answer *with* replacement. The two words "without replacement" are worth a mark, and they are always in the question for this reason.
  ],
)

#worked-example(
  11,
  "One of each colour",
  tier: "JAMB CHALLENGE",
  [
    From the same bag ($5$ red, $3$ blue), two balls are drawn without replacement. Find the probability of one red and one blue.
  ],
  [
    *There are two orders, and both count.*

    $ P("red then blue") = 5/8 times 3/7 = 15/56 $

    $ P("blue then red") = 3/8 times 5/7 = 15/56 $

    *Add the two branches.*

    $ 15/56 + 15/56 = 30/56 = 15/28 $

    The probability is $15/28$, about $0.54$.

    *The rule.* Different orders of the same outcome are separate branches of the tree; their probabilities are added. Missing the second branch halves the answer, and half the options will be exactly that.
  ],
)

#worked-example(
  12,
  "Independence in symbols",
  tier: "JAMB CHALLENGE",
  [
    $A$ and $B$ are independent with $P(A) = 1/3$ and $P(B) = 1/4$. Find $P(A inter B)$ and $P(A union B)$.
  ],
  [
    *The intersection — multiply.*

    $ P(A inter B) = 1/3 times 1/4 = 1/12 $

    *The union — add and correct.*

    $ P(A union B) = 1/3 + 1/4 - 1/12 = 4/12 + 3/12 - 1/12 = 6/12 = 1/2 $

    So $P(A inter B) = 1/12$ and $P(A union B) = 1/2$.

    *Why the order matters.* "Independent" licenses multiplication; the addition rule then needs the intersection you have just computed. Questions of this shape always ask for both, in that order.
  ],
)

// ============================================================================
// SECTION 10.6
// ============================================================================
== 10.6 Chapter 10 Rapid-Revision Checklist

#table(
  columns: (1.4fr, 1.8fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question wording],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  ["a die, a coin, a card"], [Count favourable over total], [Kings are $4$ in $52$; hearts $13$],
  ["two dice"], [Count the $36$ pairs], [Ordered pairs, not combinations],
  ["not, none, neither"], [$1 - P(A)$], [The fastest route in the paper],
  ["at least one"], [$1 - P("none")$], [Multiply the failures, then subtract],
  ["or, with overlap"], [$P(A) + P(B) - P(A inter B)$], [Subtract the double count],
  ["mutually exclusive"], [Plain sum], [No overlap to subtract],
  ["and, independent"], [Multiply], [Not add],
  ["without replacement"], [Denominator falls by one], [Numerator falls too if the item was of that type],
  ["one of each colour"], [Add the two orders], [Two branches, both counted],
  ["odds in favour $a : b$"], [$a/(a + b)$], [Add the two parts for the denominator],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 10 in One Breath]
  #v(3pt)
  Probability is favourable outcomes over total outcomes. "Or" adds, minus any overlap; "and" multiplies when the events are independent; "not" and "at least one" are one subtraction from $1$. Without replacement, the denominator falls by one on every later draw, and different orders of the same outcome are added as separate branches.
]

#diagram-fig("diagrams/recap_ch10.svg",
  "Chapter 10 recap card: the definition, the addition and multiplication rules, and the complement.", width: 62%)

// ============================================================================
// SECTION 10.7
// ============================================================================
== 10.7 Chapter 10 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [A fair die is thrown once. Find the probability of obtaining a prime number.], [$1/3$], [$1/2$], [$2/3$], [$1/6$])
#mcq(2, [A card is drawn from a pack of $52$. Find the probability that it is a heart.], [$1/13$], [$1/2$], [$1/4$], [$4/13$])
#mcq(3, [Two coins are tossed. Find the probability of at least one tail.], [$3/4$], [$1/2$], [$1/4$], [$1$])
#mcq(4, [A bag has $4$ red and $2$ blue balls. Two are drawn without replacement. Find the probability that both are red.], [$4/9$], [$1/3$], [$8/15$], [$2/5$])

#answer-key-grid(("B", "C", "A", "D"))

#include "drill_ch10.typ"
