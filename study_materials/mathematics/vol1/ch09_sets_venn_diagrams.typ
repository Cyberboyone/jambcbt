#import "template.typ": *

#pagebreak()

#chapter-opener(
  9,
  "Sets & Venn Diagrams",
  subtitle: "Set Notation, Subsets & Power Sets, Algebra of Sets, De Morgan's Laws, Two-Set & Three-Set Venn Applications",
  syllabus-ref: "JAMB Syllabus Sec. I • Topic 4(a, b, c)",
  utme-weight: "1 – 2 Questions Every Year (100% Frequency)",
)

#focus-radar(
  objectives: (
    "Identify empty, singleton, finite, infinite, universal, equal, equivalent, disjoint, subset, and power sets (2^n subsets).",
    "Perform union, intersection, complement, set difference, and symmetric difference on roster, builder, and real-interval sets.",
    "Apply Commutative, Distributive, Absorption, and De Morgan's Laws to simplify symbolic set expressions and shaded Venn regions.",
    "Solve 2-set and 3-set Venn diagram word problems (counts, percentages, algebraic unknowns, and min/max intersection bounds).",
  ),
  hotspots: (
    "3-Set Venn Diagrams filled INSIDE-OUT starting from the triple center x = n(A ∩ B ∩ C)!",
    "Critical wording distinction: 'n(A ∩ B)' (= (a_pair) + x, MUST subtract x!) versus 'A and B ONLY' (= already excludes C, DO NOT subtract x again!).",
    "Forgetting the outside 'neither/none' region n(A ∪ B)' when subtracting from the universal set n(E).",
    "Counting distinct elements in word sets (e.g. letters of 'MATHEMATICS' has 8 distinct elements, NOT 11!) and power-set counts 2^n vs 2^n - 1.",
  ),
  trap-summary: "Every single UTME paper includes at least one 2-set or 3-set Venn problem and often a second symbolic set-algebra / interval question. Always check FIRST whether 'every member belongs to at least one set' (outside = 0) or whether a 'neither/none' group exists outside the circles!",
)

// ============================================================================
// SECTION 9.1
// ============================================================================
== 9.1 Set Notation, Cardinality, Subsets & Power Sets

A *set* is a *well-defined collection of distinct objects* called *elements* or *members*. Sets are written either in *roster (tabular) form* $A = {2, 3, 5, 7}$ or in *set-builder (rule) form* $A = {x in ZZ : 1 < x < 8, x "prime"}$.
- *Distinctness & Order Independence:* Repeated elements are listed *only once* and order does not matter: the set of letters in `"MATHEMATICS"` is ${"M", "A", "T", "H", "E", "I", "C", "S"}$, so its *cardinality* (number of distinct elements) is $n(S) = 8$, *never* $11$!

#concept-box("Essential Set Classifications & Subset Counting Formulas")[
  1. *Empty (Null) Set ($emptyset$ or ${}$):* Contains zero elements, $n(emptyset) = 0$.
     - *Classic Trap:* ${0}$ and ${emptyset}$ are *NOT empty* — each is a *singleton set* of cardinality $1$!
  2. *Universal Set ($cal(E)$ or $U$):* The master reference set containing all elements under discussion in a given problem.
  3. *Equal vs. Equivalent Sets:* $A = B$ means *exact same elements* ($A subset.eq B$ and $B subset.eq A$); $A equiv B$ (*equivalent*) merely means *equal cardinality* $n(A) = n(B)$. Equal sets are always equivalent, but equivalent sets need not be equal!
  4. *Subsets, Proper Subsets & Power Set $cal(P)(A)$:* If $n(A) = k$:
     - Total number of *subsets* of $A$ (including $emptyset$ and $A$ itself) $= bold(2^k) = n(cal(P)(A))$.
     - Number of *proper subsets* ($B subset A$, excluding $A$ itself) $= bold(2^k - 1)$.
     - Number of *non-empty proper subsets* (excluding both $emptyset$ and $A$) $= bold(2^k - 2)$.
  5. *Cartesian Product ($A times B$):* The set of all ordered pairs ${(a, b) : a in A, b in B}$, with cardinality $n(A times B) = n(A) times n(B)$.
]

#diagram-fig(
  "diagrams/ch09_subset_disjoint.svg",
  "Visualizing Proper Inclusion (A ⊂ B, Maximum Overlap) versus Disjoint Sets (A ∩ B = ∅, Zero Overlap), Fixing Cardinality Bounds.",
)

// ============================================================================
// SECTION 9.2
// ============================================================================
== 9.2 Set Operations, Algebra of Sets & De Morgan's Laws

Given subsets $A, B subset.eq cal(E)$:
- *Union ($A union B$):* Elements in $A$ *or* $B$ (*or both — inclusive OR*).
- *Intersection ($A inter B$):* Elements simultaneously in $A$ *and* $B$.
- *Complement ($A'$ or $A^c$):* Elements in $cal(E)$ that are *not* in $A$; $n(A') = n(cal(E)) - n(A)$.
- *Set Difference ($A without B = A inter B'$):* Elements in *$A$ only* (in $A$ *but not* in $B$).
- *Symmetric Difference ($A triangle.t B$):* Elements in *exactly one* of $A$ or $B$:
  $ A triangle.t B = (A without B) union (B without A) = (A union B) without (A inter B) $

#diagram-fig(
  "diagrams/ch09_two_set_atlas.svg",
  "Complete Six-Panel Visual Atlas of Shaded Two-Set Venn Regions Tested in JAMB UTME.",
)

#formula-box("Fundamental Laws of Set Algebra & De Morgan's Duality")[
  - *Idempotent & Identity:* #h(6pt) $A union A = A$, #h(6pt) $A inter A = A$, #h(6pt) $A union emptyset = A$, #h(6pt) $A inter cal(E) = A$, #h(6pt) $A union cal(E) = cal(E)$, #h(6pt) $A inter emptyset = emptyset$.
  - *Complement & Involution:* #h(6pt) $A union A' = cal(E)$, #h(6pt) $A inter A' = emptyset$, #h(6pt) $(A')' = A$.
  - *Absorption Laws:* #h(6pt) $A union (A inter B) = A$ #h(10pt) and #h(10pt) $A inter (A union B) = A$.
  - *Distributive Laws:*
    $ A inter (B union C) = (A inter B) union (A inter C), quad A union (B inter C) = (A union B) inter (A union C) $
  - *Partition Identity (Huge Venn Shortcut!):* #h(6pt) $(A inter B) union (A inter B') = A$, and $A union (B inter A') = A union B$.
  - *De Morgan's Laws (Complement Flips $union arrow.l.r inter$!):*
    $ (A union B)' = A' inter B' quad "and" quad (A inter B)' = A' union B' $
    *(For three sets: $(A union B union C)' = A' inter B' inter C'$ and $(A inter B inter C)' = A' union B' union C'$.)*
]

// ============================================================================
// SECTION 9.3
// ============================================================================
== 9.3 Two-Set & Three-Set Venn Diagrams and Inclusion–Exclusion

Every 3-set Venn diagram partitions the universal set $cal(E)$ into *8 mutually exclusive (disjoint) atomic regions*: the triple center ($1$), three "exactly-two" petals ($3$), three "only-one" crescents ($3$), and the exterior "none" region ($1$).

#diagram-fig(
  "diagrams/ch09_three_set_anatomy.svg",
  "Anatomy of the Eight Disjoint Atomic Regions of a Three-Set Venn Diagram — Always Fill from the Center x = n(A ∩ B ∩ C) Outward!",
)

#diagram-fig(
  "diagrams/ch09_three_set_shadings.svg",
  "High-Frequency Shaded Three-Set Regions in UTME Questions: (A ∩ B) ∩ C', A ∩ (B ∪ C), 'Exactly Two Sets', and 'Exactly One Set'.",
)

#formula-box("Inclusion–Exclusion & Exact-Count Master Equations")[
  1. *Two-Set Principle & Bounds:*
     $ n(cal(E)) = n(A union B) + n((A union B)'), quad n(A union B) = n(A) + n(B) - n(A inter B) $
     $ n("Exactly one of " A, B) = n(A triangle.t B) = n(A) + n(B) - 2 n(A inter B) $
     - *Min/Max Intersection Bounds* (inside universe $n(cal(E)) = U$):
       $ max(0, #h(3pt) n(A) + n(B) - U) <= n(A inter B) <= min(n(A), #h(3pt) n(B)) $
  2. *Three-Set Inclusion–Exclusion Principle:*
     $ n(A union B union C) = n(A) + n(B) + n(C) - n(A inter B) - n(A inter C) - n(B inter C) + n(A inter B inter C) $
  3. *"Exactly $k$" Shortcut Equations ($E_1 =$ Exactly 1, $E_2 =$ Exactly 2, $E_3 = n(A inter B inter C)$):*
     $ E_1 + E_2 + E_3 = n(A union B union C) quad "and" quad E_1 + 2 E_2 + 3 E_3 = n(A) + n(B) + n(C) $
     $ E_2 = [n(A inter B) + n(A inter C) + n(B inter C)] - bold(3) E_3 $
     $ E_1 = [n(A) + n(B) + n(C)] - bold(2)[n(A inter B) + n(A inter C) + n(B inter C)] + bold(3) E_3 $
]

// ============================================================================
// GRADED WORKED EXAMPLES (9.1 – 9.34)
// ============================================================================
== 9.4 Graded Step-by-Step Worked Examples

#worked-example(
  "9.1",
  "Basic Set Operations Inside a Finite Universal Set",
  tier: "FOUNDATION",
  [Given $cal(E) = {1, 2, 3, dots, 12}$, $A = {2, 3, 5, 7, 11}$, and $B = {2, 4, 6, 8, 10, 12}$, find: (a) $A inter B$; #h(6pt) (b) $A without B$; #h(6pt) (c) $(A union B)'$.],
  [
    *Part (a):* The sole even prime in both sets is $A inter B = bold({2})$.

    *Part (b):* Elements in $A$ not in $B$: $A without B = bold({3, 5, 7, 11})$.

    *Part (c):* $A union B = {2, 3, 4, 5, 6, 7, 8, 10, 11, 12}$, so the elements of $cal(E)$ outside $A union B$ are $(A union B)' = bold({1, 9})$.
  ],
)

#worked-example(
  "9.2",
  "Counting Subsets, Proper Subsets & Non-Empty Proper Subsets",
  tier: "FOUNDATION",
  source: "UTME Past Paper",
  [A set $S$ has $5$ distinct elements. Find: (a) the total number of subsets of $S$; (b) the number of proper subsets; and (c) the number of non-empty proper subsets.],
  [
    *Step 1 — Apply the $2^n$ power-set formulas with $n = 5$:*
    - (a) Total subsets $= 2^5 = bold(32)$.
    - (b) Proper subsets (exclude $S$) $= 2^5 - 1 = bold(31)$.
    - (c) Non-empty proper subsets (exclude $S$ and $emptyset$) $= 2^5 - 2 = bold(30)$.
  ],
)

#worked-example(
  "9.3",
  "Difference of Power-Set Cardinalities",
  tier: "UTME STANDARD",
  [Two finite sets $M$ and $N$ have $m$ and $n$ elements respectively. If the total number of subsets of $M$ exceeds the total number of subsets of $N$ by $96$, find $m$ and $n$.],
  [
    *Step 1 — Set up $2^m - 2^n = 96$ ($m > n$) and factor out $2^n$:*
    $ 2^n (2^(m - n) - 1) = 96 = 32 times 3 = 2^5 times (2^2 - 1) $

    *Step 2 — Match the unique even ($2^n$) and odd ($2^(m - n) - 1$) factors:*
    $2^n = 2^5 arrow.r.double n = 5$, and $2^(m - n) - 1 = 3 arrow.r.double m - n = 2 arrow.r.double m = 7$.
    *Final Answer:* *$m = 7, quad n = 5$*.
  ],
)

#worked-example(
  "9.4",
  "Verifying De Morgan's Law Explicitly",
  tier: "FOUNDATION",
  [Using $cal(E) = {1, 2, dots, 12}$, $A = {2, 3, 5, 7, 11}$, and $B = {2, 4, 6, 8, 10, 12}$, verify directly that $A' inter B' = (A union B)'$.],
  [
    *Step 1 — List $A'$ and $B'$ separately:*
    - $A' = {1, 4, 6, 8, 9, 10, 12}$
    - $B' = {1, 3, 5, 7, 9, 11}$

    *Step 2 — Intersect $A'$ and $B'$:*
    $A' inter B' = {1, 9}$, which matches $(A union B)' = {1, 9}$ from Example 9.1 ✓!
  ],
)

#worked-example(
  "9.5",
  "Simplifying Symbolic Set Expressions",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Simplify using the laws of set algebra: (a) $(P inter Q) union (P inter Q')$; #h(8pt) (b) $P inter (P' union Q)$.],
  [
    *Part (a) — Factor out $P inter$ via the Distributive Law:*
    $ (P inter Q) union (P inter Q') = P inter (Q union Q') = P inter cal(E) = bold(P) $

    *Part (b) — Distribute $P inter$ across $(P' union Q)$:*
    $ (P inter P') union (P inter Q) = emptyset union (P inter Q) = bold(P inter Q) $
  ],
)

#worked-example(
  "9.6",
  "Set-Builder Integer Inequality Sets",
  tier: "UTME STANDARD",
  source: "2014 UTME Style",
  [Given $M = {x in ZZ : -3 < x <= 4}$ and $N = {x in ZZ : x^2 <= 9}$, find $n(M)$ and list $M inter N$.],
  [
    *Step 1 — List elements of both integer sets carefully (watch $<$ vs $<=$!):*
    - $M = {-2, -1, 0, 1, 2, 3, 4} arrow.r.double n(M) = bold(7)$.
    - $N = {-3, -2, -1, 0, 1, 2, 3}$ (since $(-3)^2 = 9 <= 9$).

    *Step 2 — Intersect:*
    $M inter N = bold({-2, -1, 0, 1, 2, 3})$ ($6$ elements).
  ],
)

#worked-example(
  "9.7",
  "Operations on Continuous Real Intervals",
  tier: "UTME STANDARD",
  [If $P = {x in RR : -2 <= x < 5}$ and $Q = {x in RR : 1 < x <= 8}$, find: (a) $P inter Q$; (b) $P union Q$; and (c) $P without Q$.],
  [
    *Step 1 — Sketch both intervals on a real number line:*
    - (a) Overlap where *both* hold: $P inter Q = bold({x in RR : 1 < x < 5})$.
    - (b) Combined span from $-2$ to $8$: $P union Q = bold({x in RR : -2 <= x <= 8})$.
    - (c) Points in $P$ NOT in $Q$ (note $x = 1$ IS in $P$ and NOT in $Q$, so $1$ stays INCLUDED!): $P without Q = bold({x in RR : -2 <= x <= 1})$.
  ],
)

#worked-example(
  "9.8",
  "Symmetric Difference of Two Sets",
  tier: "FOUNDATION",
  [If $A = {1, 3, 5, 7, 9}$ and $B = {2, 3, 5, 7}$, find the symmetric difference $A triangle.t B$.],
  [
    *Step 1 — Remove the common intersection $A inter B = {3, 5, 7}$ from $A union B = {1, 2, 3, 5, 7, 9}$:*
    $ A triangle.t B = (A without B) union (B without A) = {1, 9} union {2} = bold({1, 2, 9}) $
  ],
)

#worked-example(
  "9.9",
  "Two-Set Survey (Every Member Takes At Least One)",
  tier: "FOUNDATION",
  source: "UTME Past Paper",
  [In a class of $50$ science students, $32$ offer Physics, $28$ offer Chemistry, and every student offers at least one of the two subjects. How many students offer: (a) both subjects; (b) Physics only?],
  [
    *Step 1 — Apply $n(P union C) = n(P) + n(C) - n(P inter C)$ with $n(P union C) = 50$:*
    $ 50 = 32 + 28 - n(P inter C) quad arrow.r.double quad n(P inter C) = 60 - 50 = bold(10) $

    *Step 2 — Subtract intersection from Physics total:*
    $"Physics only" = 32 - 10 = bold(22)$.
  ],
)

#worked-example(
  "9.10",
  "Two-Set Survey with 'Neither' Outside Region",
  tier: "UTME STANDARD",
  source: "JAMB Classic",
  [Out of $80$ market traders surveyed, $48$ sell Yam, $42$ sell Plantain, and $12$ sell *neither* Yam nor Plantain. Find how many traders sell: (a) both items; (b) Yam only; and (c) *exactly one* of the two items.],
  [
    *Step 1 — Subtract 'neither' FIRST to obtain $n(Y union P)$:*
    $ n(Y union P) = 80 - 12 = 68 $

    *Step 2 — Compute intersection and single-item crescents:*
    - (a) Both: $n(Y inter P) = 48 + 42 - 68 = 90 - 68 = bold(22)$.
    - (b) Yam only: $48 - 22 = bold(26)$. (Plantain only $= 42 - 22 = 20$.)
    - (c) Exactly one: $26 + 20 = bold(46)$.
  ],
)

#worked-example(
  "9.11",
  "Percentage Two-Set Problem & Recovering Total Population",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [In an examination, $65%$ of the candidates passed Mathematics, $55%$ passed English, and $10%$ failed both subjects. If $120$ candidates passed *both* subjects, find the total number of candidates who sat for the examination.],
  [
    *Step 1 — Work in percentages ($U = 100%$):*
    Passed at least one $= 100% - 10% = 90%$.
    $ "% passing both" = 65% + 55% - 90% = 30% $

    *Step 2 — Equate $30%$ of total candidates $N$ to $120$:*
    $ 0.30 N = 120 quad arrow.r.double quad N = frac(120, 0.30) = bold(400 "candidates") $
    *Final Answer:* *400 candidates*.
  ],
)

#worked-example(
  "9.12",
  "Solving for an Algebraic Unknown in a Two-Set Venn Diagram",
  tier: "UTME STANDARD",
  [Given $n(cal(E)) = 60$, $n(A) = 3x + 4$, $n(B) = 2x + 8$, $n(A inter B) = x$, and $n((A union B)') = 8$, find the value of $x$ and hence $n(A without B)$.],
  [
    *Step 1 — Sum $n(A union B) + n((A union B)') = n(cal(E))$:*
    $ [(3x + 4) + (2x + 8) - x] + 8 = 60 quad arrow.r.double quad 4x + 20 = 60 quad arrow.r.double quad x = bold(10) $

    *Step 2 — Evaluate $n(A without B) = n(A) - n(A inter B)$:*
    $n(A without B) = (3x + 4) - x = 2x + 4 = 2(10) + 4 = bold(24)$.
  ],
)

#worked-example(
  "9.13",
  "Distinguishing n(B) from n(B Only) — Partition Shortcut",
  tier: "UTME STANDARD",
  [Among $70$ morning commuters, $45$ read *The Guardian*, $30$ read *The Punch*, and $18$ read *The Punch ONLY*. Find how many commuters read: (a) both newspapers; and (b) neither newspaper.],
  [
    *Part (a):* Since $P = (G inter P) union ("Punch only")$ disjointly:
    $n(G inter P) = 30 - 18 = bold(12)$.

    *Part (b):* Notice $G union P$ is the disjoint union of *all of $G$* ($45$) plus *Punch only* ($18$)!
    $n(G union P) = 45 + 18 = 63 arrow.r.double "Neither" = 70 - 63 = bold(7)$.
  ],
)

#worked-example(
  "9.14",
  "Minimum and Maximum Possible Intersection of Two Sets",
  tier: "JAMB CHALLENGE",
  source: "JAMB Challenge Classic",
  [In a conference hall of $100$ delegates, $72$ speak Hausa and $58$ speak Yoruba. Find the *minimum* and *maximum* possible number of delegates who speak *both* languages.],
  [
    *Step 1 — Minimum overlap occurs when $n(H union Y)$ is as large as possible ($<= 100$):*
    $ n(H inter Y)_("min") = 72 + 58 - 100 = bold(30) $

    *Step 2 — Maximum overlap occurs when the smaller set sits completely inside the larger set ($Y subset.eq H$):*
    $ n(H inter Y)_("max") = min(72, 58) = bold(58) $
    *Final Answers:* Minimum $= bold(30)$; Maximum $= bold(58)$.
  ],
)

#worked-example(
  "9.15",
  "Subset Cardinalities",
  tier: "FOUNDATION",
  [If $A subset B$ inside a universal set $cal(E)$ with $n(A) = 12$, $n(B) = 29$, and $n(cal(E)) = 40$, find $n(A inter B)$, $n(A union B)$, and $n(A' inter B)$.],
  [
    *Step 1 — Since $A subset B$:*
    $n(A inter B) = n(A) = bold(12)$, #h(6pt) $n(A union B) = n(B) = bold(29)$, #h(6pt) and $n(A' inter B) = n(B without A) = 29 - 12 = bold(17)$.
  ],
)

#worked-example(
  "9.16",
  "Three-Set Inclusion–Exclusion — Finding the Triple Center x",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [In a college of $100$ students, every student studies at least one of Mathematics ($M$), Physics ($P$), and Biology ($B$). Given $n(M) = 52$, $n(P) = 48$, $n(B) = 44$, $n(M inter P) = 22$, $n(M inter B) = 18$, and $n(P inter B) = 16$, find how many students study *all three* subjects.],
  [
    *Step 1 — Apply the 3-Set Inclusion–Exclusion formula with $x = n(M inter P inter B)$:*
    $ 100 = (52 + 48 + 44) - (22 + 18 + 16) + x = 144 - 56 + x = 88 + x $
    $ x = 100 - 88 = bold(12 "students") $
    *Final Answer:* *12 students*.
  ],
)

#worked-example(
  "9.17",
  "Complete Eight-Region Breakdown of a Three-Set Venn Diagram",
  tier: "UTME STANDARD",
  [Using the data and result ($x = 12$) of Example 9.16, find how many students study: (a) Mathematics *only*; (b) *exactly two* subjects; and (c) *exactly one* subject.],
  [
    *Step 1 — Work outward from the triple center $x = 12$ to the three 'exactly-two' petals:*
    - $M$ and $P$ only $= 22 - 12 = 10$.
    - $M$ and $B$ only $= 18 - 12 = 6$.
    - $P$ and $B$ only $= 16 - 12 = 4$.
    Hence *(b) Exactly two subjects* $= 10 + 6 + 4 = bold(20)$.

    *Step 2 — Subtract the three inner regions of each circle to find the 'only-one' crescents:*
    - *(a) Mathematics only* $= 52 - (10 + 6 + 12) = bold(24)$.
    - Physics only $= 48 - (10 + 4 + 12) = 22$; Biology only $= 44 - (6 + 4 + 12) = 22$.
    - *(c) Exactly one subject* $= 24 + 22 + 22 = bold(68)$. *(Check: $68 + 20 + 12 = 100$ ✓!)*
  ],
)

#worked-example(
  "9.18",
  "Three-Set Survey Finding 'None of the Three'",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [A survey of $120$ households on pay-TV decoders ($D, G, S$) showed $n(D) = 60, n(G) = 55, n(S) = 45$, $n(D inter G) = 25, n(D inter S) = 20, n(G inter S) = 18$, and $n(D inter G inter S) = 10$. How many households use *none* of the three decoders?],
  [
    *Step 1 — Compute $n(D union G union S)$:*
    $ n(D union G union S) = (60 + 55 + 45) - (25 + 20 + 18) + 10 = 160 - 63 + 10 = 107 $

    *Step 2 — Subtract from $n(cal(E)) = 120$:*
    $"None" = 120 - 107 = bold(13 "households")$.
  ],
)

#worked-example(
  "9.19",
  "Pairwise 'ONLY' Wording Trap in Three-Set Venn Problems!",
  tier: "JAMB CHALLENGE",
  source: "JAMB Chief Examiner Trap",
  [In a group of $84$ students (each offering at least one of $M, P, C$), $n(M) = 45$, $n(P) = 40$, and $n(C) = 38$. Exactly $8$ offer $M$ and $P$ *only*, $7$ offer $M$ and $C$ *only*, and $6$ offer $P$ and $C$ *only*. Find how many students offer *all three* subjects.],
  [
    *Step 1 — Let $x = n(M inter P inter C)$ and do NOT subtract $x$ from $8, 7, 6$ (they ALREADY say 'only'!):*
    - $M$ only $= 45 - (8 + 7 + x) = 30 - x$
    - $P$ only $= 40 - (8 + 6 + x) = 26 - x$
    - $C$ only $= 38 - (7 + 6 + x) = 25 - x$

    *Step 2 — Sum all $7$ non-empty regions inside the union to $84$:*
    $ (30 - x) + (26 - x) + (25 - x) + (8 + 7 + 6) + x = 84 $
    $ 102 - 2x = 84 quad arrow.r.double quad 2x = 18 quad arrow.r.double quad x = bold(9) $
    *Final Answer:* *9 students*.
  ],
)

#worked-example(
  "9.20",
  "Finding 'Exactly Two' When Individual Pairwise Counts Are Unknown",
  tier: "JAMB CHALLENGE",
  [In a sports club of $90$ athletes, every member plays at least one of Football ($F$), Basketball ($B$), and Tennis ($T$). Given $n(F) = 50, n(B) = 45, n(T) = 40$, and $12$ athletes play *all three* sports, how many play *exactly two* sports?],
  [
    *Step 1 — Use the global $E_1, E_2, E_3$ equations with $E_3 = 12$:*
    - Total people: $E_1 + E_2 + 12 = 90 arrow.r.double E_1 + E_2 = 78$ ...(i)
    - Sum of memberships: $E_1 + 2 E_2 + 3(12) = 50 + 45 + 40 = 135 arrow.r.double E_1 + 2 E_2 = 99$ ...(ii)

    *Step 2 — Subtract (i) from (ii):*
    $ E_2 = 99 - 78 = bold(21 "athletes") $
    *Final Answer:* *21 athletes*.
  ],
)

#worked-example(
  "9.21",
  "Number-Theory Inclusion–Exclusion (Multiples of 4 or 6)",
  tier: "UTME STANDARD",
  [How many integers from $1$ to $200$ inclusive are divisible by $4$ *or* by $6$?],
  [
    *Step 1 — Count multiples of $4$, multiples of $6$, and multiples of $"lcm"(4, 6) = 12$:*
    *(Trap: common multiples of $4$ and $6$ are multiples of $"lcm"(4, 6) = 12$, NOT $4 times 6 = 24$!)*
    - $n(M_4) = floor(200 / 4) = 50$
    - $n(M_6) = floor(200 / 6) = 33$
    - $n(M_4 inter M_6) = n(M_(12)) = floor(200 / 12) = 16$

    *Step 2 — Apply Inclusion–Exclusion:*
    $50 + 33 - 16 = bold(67 "integers")$.
  ],
)

#worked-example(
  "9.22",
  "Three-Prime Divisibility Sieve (Divisible by Neither 2, 3, Nor 5)",
  tier: "JAMB CHALLENGE",
  [How many integers from $1$ to $120$ inclusive are divisible by *neither* $2$, *nor* $3$, *nor* $5$?],
  [
    *Step 1 — Compute 3-Set Union of $M_2, M_3, M_5$ inside ${1, dots, 120}$:*
    - Singles: $120 / 2 + 120 / 3 + 120 / 5 = 60 + 40 + 24 = 124$.
    - Pairs ($6, 10, 15$): $120 / 6 + 120 / 10 + 120 / 15 = 20 + 12 + 8 = 40$.
    - Triple ($30$): $120 / 30 = 4$.
    $ n(M_2 union M_3 union M_5) = 124 - 40 + 4 = 88 $

    *Step 2 — Subtract from $120$:*
    $120 - 88 = bold(32 "integers")$.
  ],
)

#worked-example(
  "9.23",
  "Cartesian Product Intersection Identity",
  tier: "UTME STANDARD",
  [If $A = {1, 2, 3}$ and $B = {2, 3, 4}$, find $n(A times B)$ and $n((A times B) inter (B times A))$.],
  [
    *Step 1:* $n(A times B) = 3 times 3 = bold(9)$.

    *Step 2:* An ordered pair $(x, y)$ belongs to *both* $A times B$ and $B times A$ iff $x in A inter B$ and $y in A inter B$. Since $A inter B = {2, 3}$ has $2$ elements:
    $ n((A times B) inter (B times A)) = 2 times 2 = bold(4) quad ("namely " {(2, 2), (2, 3), (3, 2), (3, 3)}) $
  ],
)

#worked-example(
  "9.24",
  "Simplifying a Three-Set Shaded Venn Formula",
  tier: "UTME STANDARD",
  [Simplify $[(A inter B') union (A inter B)] inter C'$.],
  [
    *Step 1 — Apply Partition Identity inside the square brackets:*
    $(A inter B') union (A inter B) = A(B' union B) = A$.
    Hence the expression simplifies to $bold(A inter C')$ (or $A without C$).
  ],
)

#worked-example(
  "9.25",
  "Translating Everyday Logic Phrases into Exact Set Notation",
  tier: "FOUNDATION",
  [For events/sets $A, B, C$, write in set notation: (a) "$A$ occurs, but neither $B$ nor $C$ occurs"; (b) "at least two of $A, B, C$ occur".],
  [
    *Part (a):* $bold(A inter B' inter C')$ (equivalently $A without (B union C)$).

    *Part (b):* $bold((A inter B) union (A inter C) union (B inter C))$.
  ],
)

#worked-example(
  "9.26",
  "Prime, Odd & Perfect-Square Subsets of {1, 2, ..., 20}",
  tier: "UTME STANDARD",
  [Inside $cal(E) = {1, 2, 3, dots, 20}$, let $P =$ primes, $S =$ perfect squares, and $O =$ odd integers. Find: (a) $P inter S$; (b) $O inter S$; and (c) $n((P union O)')$.],
  [
    *Step 1 — List the sets:*
    $P = {2, 3, 5, 7, 11, 13, 17, 19}$, #h(6pt) $S = {1, 4, 9, 16}$.
    - (a) No prime is a perfect square: $P inter S = bold(emptyset)$.
    - (b) Odd squares $<= 20$: $O inter S = bold({1, 9})$.
    - (c) $P union O$ contains all $10$ odd numbers plus the even prime $2$ ($11$ elements), so $(P union O)'$ consists of the composite even numbers ${4, 6, 8, 10, 12, 14, 16, 18, 20}$, giving $n((P union O)') = 20 - 11 = bold(9)$.
  ],
)

#worked-example(
  "9.27",
  "Intersection and Union of Quadratic Solution Sets",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Let $P = {x in RR : x^2 - 5x + 6 = 0}$ and $Q = {x in RR : x^2 + x - 6 = 0}$. Find $P inter Q$ and $P union Q$.],
  [
    *Step 1 — Factor both quadratics:*
    - $(x - 2)(x - 3) = 0 arrow.r.double P = {2, 3}$.
    - $(x + 3)(x - 2) = 0 arrow.r.double Q = {-3, 2}$.

    *Step 2 — Intersect and unite:*
    $P inter Q = bold({2})$ and $P union Q = bold({-3, 2, 3})$.
  ],
)

#worked-example(
  "9.28",
  "Finding Community Population from Bilingual Overlap",
  tier: "UTME STANDARD",
  [In a community survey, $58%$ speak Igbo, $47%$ speak English, $15%$ speak neither language, and $60$ residents speak *both* languages. Find the total number of residents surveyed.],
  [
    *Step 1 — Percentage speaking at least one language $= 100% - 15% = 85%$:*
    $"% speaking both" = 58% + 47% - 85% = 20%$.

    *Step 2 — Solve $0.20 N = 60$:*
    $N = 60 div 0.20 = bold(300 "residents")$.
  ],
)

#worked-example(
  "9.29",
  "Symmetric Pairwise Intersections in a Three-Set Exam",
  tier: "JAMB CHALLENGE",
  [Seventy-five candidates sat for Accounts ($A$), Commerce ($C$), and Economics ($E$); $5$ failed all three. Given $n(A) = 38$, $n(C) = 36$, $n(E) = 33$, $n(A inter C inter E) = 8$, and an *equal number* $k$ passed each pair of subjects ($n(A inter C) = n(A inter E) = n(C inter E) = k$), find $k$.],
  [
    *Step 1 — Passed at least one $= 75 - 5 = 70$. Substitute into Inclusion–Exclusion:*
    $ 70 = (38 + 36 + 33) - 3 k + 8 = 115 - 3 k $
    $ 3 k = 45 quad arrow.r.double quad k = bold(15) $
  ],
)

#worked-example(
  "9.30",
  "Subgroup Ratio Inside a Three-Set Venn Diagram",
  tier: "UTME STANDARD",
  [In Example 9.29 ($n(A) = 38$, $k = 15$, $x = 8$), what fraction of the candidates who passed Accounts passed *Accounts only*?],
  [
    *Step 1 — Compute 'Accounts only':*
    - $A$ and $C$ only $= 15 - 8 = 7$; #h(6pt) $A$ and $E$ only $= 15 - 8 = 7$.
    - Accounts only $= 38 - (7 + 7 + 8) = 16$.

    *Step 2 — Form the fraction over $n(A) = 38$:*
    $ frac(16, 38) = bold(frac(8, 19)) $
  ],
)

#worked-example(
  "9.31",
  "Nested Empty-Set & Singleton Cardinality Trap",
  tier: "UTME STANDARD",
  [State the cardinalities of $A = emptyset$, $B = {0}$, $C = {emptyset}$, and $D = {0, emptyset}$.],
  [
    *Step 1 — Count top-level elements separated by commas inside the outer braces:*
    $n(A) = bold(0)$, #h(8pt) $n(B) = bold(1)$, #h(8pt) $n(C) = bold(1)$, #h(8pt) $n(D) = bold(2)$.
  ],
)

#worked-example(
  "9.32",
  "Solving Unknowns from Equal Sets",
  tier: "UTME STANDARD",
  [If ${2, a + 1, 7} = {5, 7, b - 3}$, find $a, b,$ and $a + b$.],
  [
    *Step 1 — Match distinct elements across the two equal sets:*
    Since $7$ matches $7$, $2$ cannot equal $5$, so we must have $a + 1 = 5 arrow.r.double a = 4$ and $b - 3 = 2 arrow.r.double b = 5$. Thus $a + b = bold(9)$.
  ],
)

#worked-example(
  "9.33",
  "Finding n(A ∩ B) Given Only Complement Counts!",
  tier: "JAMB CHALLENGE",
  [Given $n(cal(E)) = 50$, $n(A') = 22$, $n(B') = 19$, and $n(A' inter B') = 7$, find $n(A inter B)$.],
  [
    *Step 1 — Recover $n(A)$, $n(B)$, and use De Morgan's Law $A' inter B' = (A union B)'$:*
    - $n(A) = 50 - 22 = 28$; #h(8pt) $n(B) = 50 - 19 = 31$.
    - $n(A union B) = 50 - n((A union B)') = 50 - 7 = 43$.

    *Step 2 — Apply 2-set formula:*
    $n(A inter B) = 28 + 31 - 43 = bold(16)$.
  ],
)

#worked-example(
  "9.34",
  "Minimum Possible Triple Intersection of Three Sets",
  tier: "JAMB CHALLENGE",
  [In a hostel of $100$ students, $80$ like Rice, $75$ like Beans, and $70$ like Yam. What is the *minimum possible* number of students who like *all three* foods?],
  [
    *Step 1 — Count the MAXIMUM possible number of students missing at least one food:*
    - Dislike Rice: $n(R') = 100 - 80 = 20$.
    - Dislike Beans: $n(B') = 100 - 75 = 25$.
    - Dislike Yam: $n(Y') = 100 - 70 = 30$.
    By Boole's union bound, $n(R' union B' union Y') <= 20 + 25 + 30 = 75$.

    *Step 2 — Apply De Morgan's Law $(R inter B inter Y) = (R' union B' union Y')'$:*
    $ n(R inter B inter Y)_("min") = 100 - 75 = bold(25 "students") $
    *Final Answer:* *25 students*.
  ],
)

// ============================================================================
// SECTION 9.5 RAPID-REVISION SUMMARY TABLE
// ============================================================================
== 9.5 Chapter 9 Rapid-Revision Checklist

#table(
  columns: (1.3fr, 2.0fr, 1.7fr),
  inset: 7.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Concept],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Master Formula],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[JAMB Exam Trap],

  [*Subsets of $n$-Set*],
  [Total $= 2^n$; Proper $= 2^n - 1$.],
  [${emptyset}$ has $1$ element, NOT $0$; word sets drop duplicate letters!],

  [*De Morgan's Laws*],
  [$(A union B)' = A' inter B'$; $(A inter B)' = A' union B'$.],
  [Complementing ALWAYS flips union $union$ and intersection $inter$!],

  [*2-Set Inclusion*],
  [$n(A union B) = n(A) + n(B) - n(A inter B)$.],
  [Subtract 'neither' from $n(cal(E))$ FIRST to get $n(A union B)$!],

  [*3-Set Center-Out*],
  [Fill $x = n(A inter B inter C)$ FIRST!],
  ["$A$ and $B$" $= p - x$ vs "$A$ and $B$ ONLY" $= p$ (don't subtract $x$ twice!).],

  [*Overlap Bounds*],
  [$max(0, a + b - U) <= n(A inter B) <= min(a, b)$.],
  [For 3 sets, $n(A inter B inter C)_("min") = max(0, a + b + c - 2 U)$!],
)

// ============================================================================
// END-OF-CHAPTER JAMB UTME PRACTICE DRILL (60 QUESTIONS)
// ============================================================================
== 9.6 JAMB UTME Practice Drill — Chapter 9 (60 Questions)

Attempt all 60 questions without a calculator (target time: *48 minutes*).

#mcq(1, [How many subsets does a set with $4$ distinct elements possess?], [$16$], [$15$], [$8$], [$14$])

#mcq(2, [Find the number of *proper* subsets of a set containing $6$ elements.], [$64$], [$63$], [$62$], [$36$])

#mcq(3, [If $P = {2, 3, 5, 7}$ and $Q = {1, 3, 5, 7, 9}$, find $n(P inter Q)$.], [$4$], [$6$], [$3$], [$2$])

#mcq(4, [Given $A = {1, 2, 3, 4, 5}$ and $B = {2, 4, 6}$, find $A without B$.], [${1, 3, 5, 6}$], [${2, 4}$], [${6}$], [${1, 3, 5}$])

#mcq(5, [What is the cardinality of the set of letters in the word `"MATHEMATICS"`?], [$8$], [$11$], [$9$], [$7$])

#mcq(6, [If $X$ is the set of distinct letters in the word `"MISSISSIPPI"`, find $n(X)$.], [$11$], [$4$], [$5$], [$6$])

#mcq(7, [By De Morgan's Law, the set $(P union Q)'$ is always equal to:], [$P' union Q'$], [$P inter Q'$], [$P' inter Q'$], [$P' without Q'$])

#mcq(8, [For any two sets $A$ and $B$, the expression $A union (A inter B)$ simplifies to:], [$B$], [$A inter B$], [$A union B$], [$A$])

#mcq(9, [Simplify $(X inter Y') union (X inter Y)$.], [$X$], [$Y$], [$emptyset$], [$X inter Y$])

#mcq(10, [In a class of $40$ students, $28$ play Football, $22$ play Basketball, and every student plays at least one of the two games. How many play *both* games?], [$12$], [$10$], [$18$], [$8$])

#mcq(11, [Among $55$ guests at a seminar, $35$ drank Tea, $27$ drank Coffee, and $5$ drank *neither*. How many guests drank *both* Tea and Coffee?], [$7$], [$17$], [$12$], [$10$])

#mcq(12, [In Question 11, how many guests drank *Tea only*?], [$30$], [$28$], [$15$], [$23$])

#mcq(13, [In Question 11, how many guests drank *exactly one* of the two beverages?], [$38$], [$50$], [$43$], [$35$])

#mcq(14, [In an exam, $70%$ of candidates passed English, $50%$ passed Mathematics, and $10%$ failed both. What percentage passed *both* subjects?], [$20%$], [$30%$], [$40%$], [$25%$])

#mcq(15, [If $90$ candidates passed both subjects in Question 14, find the total number of candidates who sat for the exam.], [$270$], [$450$], [$300$], [$360$])

#mcq(16, [Given $n(cal(E)) = 34$, $n(A) = 2x + 5$, $n(B) = x + 7$, $n(A inter B) = x$, and $n((A union B)') = 4$, find $x$.], [$6$], [$8$], [$11$], [$9$])

#mcq(17, [Out of $60$ shoppers, $38$ bought bread and $14$ bought butter *only*. How many shoppers bought *neither* bread nor butter?], [$8$], [$10$], [$6$], [$12$])

#mcq(18, [In a hall of $100$ students, $64$ offer Economics and $52$ offer Government. What is the *minimum* possible number offering both subjects?], [$12$], [$16$], [$36$], [$52$])

#mcq(19, [In Question 18, what is the *maximum* possible number of students offering both subjects?], [$64$], [$48$], [$52$], [$16$])

#mcq(20, [Given $n(cal(E)) = 40$, $n(A') = 15$, $n(B') = 18$, and $n(A' inter B') = 6$, find $n(A inter B)$.], [$7$], [$19$], [$11$], [$13$])

#mcq(21, [Given $n(A) = 30$, $n(B) = 25$, $n(C) = 20$, $n(A inter B) = 10$, $n(A inter C) = 8$, $n(B inter C) = 7$, and $n(A inter B inter C) = 4$, find $n(A union B union C)$.], [$54$], [$46$], [$50$], [$58$])

#mcq(22, [Using the sets in Question 21 inside a universal set of $n(cal(E)) = 60$, find $n((A union B union C)')$.], [$10$], [$6$], [$4$], [$14$])

#mcq(23, [Using the sets in Question 21, find the number of elements belonging to *$A$ only*.], [$12$], [$20$], [$16$], [$14$])

#mcq(24, [Using the sets in Question 21, how many elements belong to *exactly two* of the three sets?], [$25$], [$17$], [$21$], [$13$])

#mcq(25, [Using the sets in Question 21, how many elements belong to *exactly one* of the three sets?], [$37$], [$41$], [$33$], [$45$])

#mcq(26, [If $n(A union B union C) = 80$, $n(A) = 42$, $n(B) = 38$, $n(C) = 34$, $n(A inter B) = 15$, $n(A inter C) = 14$, and $n(B inter C) = 12$, find $n(A inter B inter C)$.], [$5$], [$7$], [$9$], [$11$])

#mcq(27, [In a survey of $65$ readers (each reading at least one of $A, B, C$), $n(A) = 32, n(B) = 30, n(C) = 28$. If $6$ read $A$ and $B$ *only*, $5$ read $A$ and $C$ *only*, and $4$ read $B$ and $C$ *only*, how many read *all three*?], [$10$], [$8$], [$5$], [$6$])

#mcq(28, [In a club of $70$ members (all playing at least one of $3$ games), $n(A) = 38$, $n(B) = 34$, $n(C) = 30$, and $8$ play all three games. How many play *exactly two* games?], [$24$], [$12$], [$20$], [$16$])

#mcq(29, [How many integers from $1$ to $100$ inclusive are multiples of $3$ *or* $5$?], [$47$], [$53$], [$46$], [$50$])

#mcq(30, [Find the number of elements in $K = {x in ZZ : -4 <= x < 3}$.], [$6$], [$7$], [$8$], [$5$])

#mcq(31, [If $P = {x in RR : -1 <= x < 6}$ and $Q = {x in RR : 2 < x <= 9}$, find $P inter Q$.], [${x : 2 <= x < 6}$], [${x : -1 <= x <= 9}$], [${x : 2 < x < 6}$], [${x : 2 < x <= 6}$])

#mcq(32, [If $R = {x in RR : -1 <= x <= 4}$ and $S = {x in RR : 2 < x < 7}$, find $R union S$.], [${x : -1 <= x <= 7}$], [${x : 2 < x <= 4}$], [${x : -1 < x < 7}$], [${x : -1 <= x < 7}$])

#mcq(33, [Let $M = {x in RR : x^2 - 9 = 0}$ and $N = {x in RR : x^2 - 5x + 6 = 0}$. Find $M inter N$.], [${3}$], [${-3, 3}$], [${2, 3}$], [$emptyset$])

#mcq(34, [If $A = {1, 2, 3, 4}$ and $B = {3, 4, 5, 6}$, how many elements belong to the symmetric difference $A triangle.t B$?], [$2$], [$4$], [$6$], [$8$])

#mcq(35, [A finite set has $127$ proper subsets. How many elements are in the set?], [$6$], [$8$], [$7$], [$9$])

#mcq(36, [Find the cardinality of the nested set $T = {{1, 2}, {3}, 4}$.], [$4$], [$2$], [$5$], [$3$])

#mcq(37, [Two sets $A$ and $B$ are disjoint with $n(A) = 14$ and $n(B) = 19$. Find $n(A union B)$.], [$33$], [$5$], [$0$], [$28$])

#mcq(38, [If $A subset B$, then $(A union B)$ and $(A inter B)$ are respectively equal to:], [$A$ and $B$], [$B$ and $A$], [$B$ and $emptyset$], [$A$ and $emptyset$])

#mcq(39, [If $n(A) = 5$ and $n(B) = 6$, find the number of ordered pairs in $A times B$.], [$11$], [$60$], [$30$], [$25$])

#mcq(40, [In a class of $100$ students, $85$ have pens, $80$ have pencils, and $75$ have rulers. What is the *minimum* possible number of students who have *all three* items?], [$60$], [$25$], [$50$], [$40$])

#mcq(41, [Let $F$ be the set of distinct prime factors of $210$. Find $n(F)$.], [$4$], [$3$], [$5$], [$6$])

#mcq(42, [In $cal(E) = {1, 2, dots, 15}$, let $P =$ primes and $E =$ even numbers. Find $n(P inter E')$.], [$6$], [$5$], [$7$], [$4$])

#mcq(43, [If the two-element sets ${x + 2, 7}$ and ${5, y - 1}$ are equal, find $x + y$.], [$9$], [$12$], [$11$], [$10$])

#mcq(44, [Which of the following sets is the *empty set* over the real numbers $RR$?], [${0}$], [${x in RR : x^2 - 4 = 0}$], [${emptyset}$], [${x in RR : x^2 + 4 = 0}$])

#mcq(45, [For any sets $A$ and $B$, the union $(A without B) union (A inter B)$ equals:], [$A$], [$B$], [$A union B$], [$A triangle.t B$])

#mcq(46, [In a poll of $200$ voters, $120$ approved Policy $X$, $95$ approved Policy $Y$, and $30$ approved neither. How many voters approved *both* policies?], [$15$], [$45$], [$35$], [$55$])

#mcq(47, [In Question 46, how many voters approved Policy $X$ *only*?], [$90$], [$65$], [$75$], [$85$])

#mcq(48, [Given $n(P without Q) = 18$, $n(Q without P) = 13$, and $n(P union Q) = 40$, find $n(P inter Q)$.], [$11$], [$5$], [$7$], [$9$])

#mcq(49, [From the data in Question 48, find $n(P)$.], [$27$], [$22$], [$31$], [$18$])

#mcq(50, [If $n(A) = 24$, $n(B) = 18$, and $n(A triangle.t B) = 20$, find $n(A inter B)$.], [$22$], [$11$], [$10$], [$12$])

#mcq(51, [Which set expression describes the region *"elements in both $A$ and $B$, but not in $C$"*?], [$A inter (B union C')$], [$(A union B) inter C'$], [$A inter B inter C'$], [$A' inter B' inter C$])

#mcq(52, [By the three-set De Morgan's Law, $(A union B union C)'$ equals:], [$A' union B' union C'$], [$(A inter B inter C)'$], [$A' inter B' union C'$], [$A' inter B' inter C'$])

#mcq(53, [How many *non-empty proper* subsets does the set ${a, b, c, d, e}$ have?], [$30$], [$31$], [$32$], [$24$])

#mcq(54, [In $cal(E) = {1, 2, dots, 30}$, let $M =$ multiples of $4$ and $N =$ multiples of $6$. Find $n(M inter N)$.], [$5$], [$2$], [$1$], [$3$])

#mcq(55, [Three sets $P, Q, R$ are pairwise disjoint with $n(P) = 8$, $n(Q) = 11$, and $n(R) = 15$. Find $n(P union Q union R)$.], [$26$], [$30$], [$34$], [$0$])

#mcq(56, [Among $150$ secondary-school teachers, $90$ own cars, $70$ own motorcycles, and $25$ own both. How many teachers own *neither*?], [$10$], [$20$], [$40$], [$15$])

#mcq(57, [Let $M =$ positive factors of $18$ and $N =$ positive factors of $24$. Find $n(M inter N)$.], [$4$], [$3$], [$6$], [$2$])

#mcq(58, [For any subsets $P, Q subset.eq cal(E)$, the set difference $P' without Q'$ simplifies to:], [$P without Q$], [$Q without P$], [$(P union Q)'$], [$P inter Q$])

#mcq(59, [In a 3-set survey, $n(A inter B) = 14$, $n(A inter C) = 11$, $n(B inter C) = 9$, and $n(A inter B inter C) = 5$. How many members belong to *at least two* of the three sets?], [$29$], [$19$], [$24$], [$34$])

#mcq(60, [In a school, $45%$ of students are boys, $30%$ of all students wear glasses, and $12%$ of all students are boys who wear glasses. What percentage of all students are *girls who do NOT wear glasses*?], [$25%$], [$43%$], [$33%$], [$37%$])

// ============================================================================
// ANSWER KEY & FULL MULTI-STEP SOLUTIONS
// ============================================================================
== 9.7 Quick Answer Key & Complete Worked Solutions — Chapter 9

#answer-key-grid((
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
))

#sol-item(1, "A")[
  *Step 1:* Number of subsets $= 2^4 = 16$.
]

#sol-item(2, "B")[
  *Step 1:* Proper subsets $= 2^6 - 1 = 64 - 1 = 63$.
]

#sol-item(3, "C")[
  *Step 1:* $P inter Q = {3, 5, 7}$, so $n(P inter Q) = 3$.
]

#sol-item(4, "D")[
  *Step 1:* Remove elements of $B$ ($2, 4$) from $A$: $A without B = {1, 3, 5}$.
]

#sol-item(5, "A")[
  *Step 1:* Distinct letters $= {"M", "A", "T", "H", "E", "I", "C", "S"} arrow.r.double 8$ elements.
]

#sol-item(6, "B")[
  *Step 1:* Distinct letters $= {"M", "I", "S", "P"} arrow.r.double 4$ elements.
]

#sol-item(7, "C")[
  *Step 1:* By De Morgan's First Law, $(P union Q)' = P' inter Q'$.
]

#sol-item(8, "D")[
  *Step 1:* Since $A inter B subset.eq A$, their union is $A$ (Absorption Law).
]

#sol-item(9, "A")[
  *Step 1:* Distribute: $X inter (Y' union Y) = X inter cal(E) = X$.
]

#sol-item(10, "B")[
  *Step 1:* $n(F inter B) = 28 + 22 - 40 = 10$.
]

#sol-item(11, "C")[
  *Step 1:* $n(T union C) = 55 - 5 = 50$.
  *Step 2:* Both $= 35 + 27 - 50 = 12$.
]

#sol-item(12, "D")[
  *Step 1:* Tea only $= 35 - 12 = 23$.
]

#sol-item(13, "A")[
  *Step 1:* Tea only ($23$) $+$ Coffee only ($27 - 12 = 15$) $= 38$.
]

#sol-item(14, "B")[
  *Step 1:* Passed $>= 1$ is $100% - 10% = 90%$; Both $= 70% + 50% - 90% = 30%$.
]

#sol-item(15, "C")[
  *Step 1:* $0.30 N = 90 arrow.r.double N = 90 div 0.30 = 300$.
]

#sol-item(16, "D")[
  *Step 1:* $(2x + 5) + (x + 7) - x + 4 = 34 arrow.r.double 2x + 16 = 34 arrow.r.double x = 9$.
]

#sol-item(17, "A")[
  *Step 1:* $n("Bread" union "Butter") = 38 + 14 = 52$; Neither $= 60 - 52 = 8$.
]

#sol-item(18, "B")[
  *Step 1:* Minimum overlap $= 64 + 52 - 100 = 16$.
]

#sol-item(19, "C")[
  *Step 1:* Maximum overlap $= min(64, 52) = 52$.
]

#sol-item(20, "D")[
  *Step 1:* $n(A) = 25, n(B) = 22, n(A union B) = 40 - 6 = 34 arrow.r.double n(A inter B) = 25 + 22 - 34 = 13$.
]

#sol-item(21, "A")[
  *Step 1:* $n(A union B union C) = (30 + 25 + 20) - (10 + 8 + 7) + 4 = 75 - 25 + 4 = 54$.
]

#sol-item(22, "B")[
  *Step 1:* $60 - 54 = 6$.
]

#sol-item(23, "C")[
  *Step 1:* $A$ only $= 30 - [(10 - 4) + (8 - 4) + 4] = 30 - 14 = 16$.
]

#sol-item(24, "D")[
  *Step 1:* Exactly two $= (10 - 4) + (8 - 4) + (7 - 4) = 6 + 4 + 3 = 13$.
]

#sol-item(25, "A")[
  *Step 1:* Exactly one $= 54 - 13 - 4 = 37$.
]

#sol-item(26, "B")[
  *Step 1:* $80 = (42 + 38 + 34) - (15 + 14 + 12) + x = 114 - 41 + x = 73 + x arrow.r.double x = 7$.
]

#sol-item(27, "C")[
  *Step 1:* Let $x$ read all three. Regions sum to $(32 - 11 - x) + (30 - 10 - x) + (28 - 9 - x) + 15 + x = 75 - 2x = 65 arrow.r.double x = 5$.
]

#sol-item(28, "D")[
  *Step 1:* $E_1 + E_2 = 70 - 8 = 62$ and $E_1 + 2 E_2 = (38 + 34 + 30) - 3(8) = 78$. Subtracting gives $E_2 = 78 - 62 = 16$.
]

#sol-item(29, "A")[
  *Step 1:* $floor(100 / 3) + floor(100 / 5) - floor(100 / 15) = 33 + 20 - 6 = 47$.
]

#sol-item(30, "B")[
  *Step 1:* $K = {-4, -3, -2, -1, 0, 1, 2}$ has $7$ elements.
]

#sol-item(31, "C")[
  *Step 1:* Overlap of $[-1, 6)$ and $(2, 9]$ is $(2, 6)$, i.e. $2 < x < 6$.
]

#sol-item(32, "D")[
  *Step 1:* Combined span of $[-1, 4]$ and $(2, 7)$ is $[-1, 7)$, i.e. $-1 <= x < 7$.
]

#sol-item(33, "A")[
  *Step 1:* $M = {-3, 3}$ and $N = {2, 3}$, so $M inter N = {3}$.
]

#sol-item(34, "B")[
  *Step 1:* $A triangle.t B = {1, 2, 5, 6}$ has $4$ elements.
]

#sol-item(35, "C")[
  *Step 1:* $2^n - 1 = 127 arrow.r.double 2^n = 128 = 2^7 arrow.r.double n = 7$.
]

#sol-item(36, "D")[
  *Step 1:* Top-level elements are ${1, 2}$, ${3}$, and $4$ ($3$ elements).
]

#sol-item(37, "A")[
  *Step 1:* Disjoint means $n(A inter B) = 0$, so $n(A union B) = 14 + 19 = 33$.
]

#sol-item(38, "B")[
  *Step 1:* Since $A subset B$, $A union B = B$ and $A inter B = A$.
]

#sol-item(39, "C")[
  *Step 1:* $n(A times B) = 5 times 6 = 30$.
]

#sol-item(40, "D")[
  *Step 1:* Maximum lacking at least one $= (100 - 85) + (100 - 80) + (100 - 75) = 15 + 20 + 25 = 60$; minimum having all three $= 100 - 60 = 40$.
]

#sol-item(41, "A")[
  *Step 1:* $210 = 2 times 3 times 5 times 7 arrow.r.double {2, 3, 5, 7}$ has $4$ prime factors.
]

#sol-item(42, "B")[
  *Step 1:* Odd primes $<= 15$ are ${3, 5, 7, 11, 13}$ ($5$ elements).
]

#sol-item(43, "C")[
  *Step 1:* $5$ must belong to ${x + 2, 7}$, so $x + 2 = 5 arrow.r.double x = 3$; then $7$ must belong to ${5, y - 1}$, so $y - 1 = 7 arrow.r.double y = 8$, giving $x + y = 11$.
]

#sol-item(44, "D")[
  *Step 1:* $x^2 + 4 >= 4 > 0$ for every $x in RR$, so ${x in RR : x^2 + 4 = 0} = emptyset$.
]

#sol-item(45, "A")[
  *Step 1:* Partition identity: $(A inter B') union (A inter B) = A$.
]

#sol-item(46, "B")[
  *Step 1:* $n(X union Y) = 200 - 30 = 170$; Both $= 120 + 95 - 170 = 45$.
]

#sol-item(47, "C")[
  *Step 1:* $X$ only $= 120 - 45 = 75$.
]

#sol-item(48, "D")[
  *Step 1:* $n(P inter Q) = 40 - 18 - 13 = 9$.
]

#sol-item(49, "A")[
  *Step 1:* $n(P) = n(P without Q) + n(P inter Q) = 18 + 9 = 27$.
]

#sol-item(50, "B")[
  *Step 1:* Use $n(A triangle.t B) = n(A) + n(B) - 2 n(A inter B)$:
  $ 20 = 24 + 18 - 2 x quad arrow.r.double quad 2x = 22 quad arrow.r.double quad x = 11 $
]

#sol-item(51, "C")[
  *Step 1:* "In $A$ and $B$, and not in $C$" translates directly to $A inter B inter C'$.
]

#sol-item(52, "D")[
  *Step 1:* $(A union B union C)' = A' inter B' inter C'$.
]

#sol-item(53, "A")[
  *Step 1:* $2^5 - 2 = 32 - 2 = 30$.
]

#sol-item(54, "B")[
  *Step 1:* Common multiples of $4$ and $6$ are multiples of $"lcm"(4, 6) = 12$: ${12, 24}$ ($2$ elements).
]

#sol-item(55, "C")[
  *Step 1:* Pairwise disjoint sets have zero overlaps: $8 + 11 + 15 = 34$.
]

#sol-item(56, "D")[
  *Step 1:* $n(C union M) = 90 + 70 - 25 = 135$; Neither $= 150 - 135 = 15$.
]

#sol-item(57, "A")[
  *Step 1:* Common factors of $18$ and $24$ are the factors of $gcd(18, 24) = 6$, namely ${1, 2, 3, 6}$ ($4$ elements).
]

#sol-item(58, "B")[
  *Step 1:* $P' without Q' = P' inter (Q')' = P' inter Q = Q inter P' = Q without P$.
]

#sol-item(59, "C")[
  *Step 1:* Exactly two $= (14 - 5) + (11 - 5) + (9 - 5) = 19$; adding all three ($5$) gives $19 + 5 = 24$.
]

#sol-item(60, "D")[
  *Step 1:* Let $B =$ Boys ($45%$) and $G =$ Glasses ($30%$), with $B inter G = 12%$.
  *Step 2:* $n(B union G) = 45% + 30% - 12% = 63%$. Girls NOT wearing glasses $= n((B union G)') = 100% - 63% = 37%$.
]
