#import "template.typ": *

#pagebreak()

#chapter-opener(
  4,
  "Ratio, Proportion, Rates, Speed & Mixtures",
  subtitle: "Proportional Sharing, Chained Ratios, Men–Days–Work Problems, Pipes & Cisterns, Harmonic Average Speed & Alligation",
  syllabus-ref: "JAMB Syllabus Sec. I • Topic 2(g)",
  utme-weight: "1 – 2 Questions Every Year (85% Frequency)",
)

#focus-radar(
  objectives: (
    "Simplify ratios in harmonized physical units, bridge multi-variable chained ratios, and divide quantities proportionally.",
    "Solve direct, inverse, and compound (Men–Days–Hours–Work) proportion problems, including mid-way workforce changes.",
    "Calculate combined work rates for cooperating workers and inlet/outlet cistern pipes.",
    "Solve uniform speed, harmonic average speed, relative motion (meeting & overtaking), and train-crossing problems.",
    "Apply weighted-average alligation to mixtures, dilutions, currency cross-rates, and linear vs. area map scales.",
  ),
  hotspots: (
    "Harmonic Mean Average Speed 2v₁v₂/(v₁ + v₂) for equal-distance round trips (NEVER (v₁ + v₂)/2!).",
    "Boarding-school/garrison food provisions when new people join or leave after k days.",
    "Combined work & cistern problems where an outlet leak opposes inlet taps (1/T = 1/A + 1/B − 1/C).",
    "Map area scales: linear scale 1 : n becomes AREA scale 1 : n²!",
  ),
  trap-summary: "If a motorist travels from Abuja to Lokoja at 60 km/h and returns along the exact same road at 40 km/h, 70% of unprepared students average 60 and 40 to pick 50 km/h (Option A). Because he spends MORE time travelling at the slower speed, the true average speed is 2(60)(40)/(60 + 40) = 48 km/h!",
)

// ============================================================================
// SECTION 4.1
// ============================================================================
== 4.1 Ratios, Unit Harmonization, Chained Ratios & Proportional Division

A *ratio* $a : b$ (read _"$a$ to $b$"_, equivalent to the dimensionless quotient $a / b$ for $b != 0$) compares the relative magnitudes of two quantities of the *exact same kind*.

#concept-box("Three Non-Negotiable Laws of Ratios")[
  1. *Same-Unit Law:* Two physical quantities *cannot* be compared in a ratio until both are expressed in the *exact same unit*! For example:
     $ 350 "g" : 1.4 "kg" = 350 "g" : 1400 "g" = 1 : 4 quad ("never " 350 : 1.4!) $
  2. *Scaling Invariance:* Multiplying or dividing every term of a ratio by the same non-zero number $k$ leaves the ratio unchanged: $a : b = k a : k b = (a / k) : (b / k)$.
     - To clear *fractional ratios* like $frac(1, 2) : frac(1, 3) : frac(1, 4)$, multiply every term by $"LCM"(2, 3, 4) = 12$ to obtain *$6 : 4 : 3$*! *(Trap: $1/2 : 1/3 : 1/4$ is NEVER $2 : 3 : 4$!)*
  3. *Proportional Division:* To share a total quantity $Q$ in the ratio $r_1 : r_2 : r_3$, compute the *total ratio parts* $S = r_1 + r_2 + r_3$. Each single part is worth $Q / S$, so the $i$-th share is:
     $ "Share"_i = frac(r_i, r_1 + r_2 + r_3) times Q $
]

=== Bridging Chained Ratios ($A : B$ and $B : C arrow.r A : B : C$)
Suppose $A : B = 3 : 4$ and $B : C = 6 : 7$. Notice the *bridge variable* $B$ has value $4$ in the first ratio and $6$ in the second. Match $B$ to $"LCM"(4, 6) = 12$:
- Multiply $A : B = 3 : 4$ by $3 arrow.r 9 : bold(12)$.
- Multiply $B : C = 6 : 7$ by $2 arrow.r bold(12) : 14$.
Joining across the matched middle term gives *$A : B : C = 9 : 12 : 14$*!

#diagram-fig(
  "diagrams/ch04_ratio_alligation.svg",
  "Visualising Proportional Division of N120,000 in the ratio 2 : 3 : 5 via a 10-slice bar model (left) and the Cross-Subtraction Alligation Rule for blending two grades of rice (right).",
)

=== Ratio Shift & Algebraic Ratio Problems
- *Age / Quantity Shifts:* If two quantities are currently in the ratio $a : b$, introduce a positive scale multiplier $k$ and write them immediately as *$a k$ and $b k$*! After adding $c$ to each, the new ratio $(a k + c) / (b k + c) = p / q$ cross-multiplies into a simple linear equation for $k$.
- *Homogeneous Algebraic Ratios:* Given $x : y = m : n$, to evaluate any homogeneous fraction like $frac(3x + 2y, 5x - y)$ (where every term has the same degree), simply substitute $x = m$ and $y = n$ directly!

// ============================================================================
// SECTION 4.2
// ============================================================================
== 4.2 Direct, Inverse & Compound (Men–Days–Hours–Work) Proportion

#diagram-fig(
  "diagrams/ch04_proportions_and_rates.svg",
  "Direct Proportion (straight line y = kx through the origin, left), Inverse Proportion (rectangular hyperbola xy = k for workers vs. days, centre), and Distance–Time speed gradients (right).",
)

- *Direct Proportion ($y prop x$):* Doubling $x$ doubles $y$, so the *quotient* stays constant:
  $ frac(y_1, x_1) = frac(y_2, x_2) $
  Examples: distance vs. fuel consumed, number of identical bags vs. total cost, shadow length vs. pole height at the same moment.
- *Inverse (Indirect) Proportion ($y prop 1 / x$):* Doubling $x$ *halves* $y$, so the *product* stays constant:
  $ x_1 y_1 = x_2 y_2 $
  Examples: number of workers vs. days to complete a fixed job, speed vs. travel time over a fixed distance, number of teeth $N$ on meshing gears vs. rotational speed $$omega$$ ($N_1 omega_1 = N_2 omega_2$), number of students vs. days a fixed stock of food lasts.

#formula-box("The Universal Men–Days–Hours–Work Formula & Garrison Rule")[
  1. *Compound Work Equation:* If $M_1$ workers working $H_1$ hours per day complete $W_1$ units of work in $D_1$ days, and $M_2$ workers working $H_2$ hours per day complete $W_2$ units of work in $D_2$ days:
     $ frac(M_1 times D_1 times H_1, W_1) = frac(M_2 times D_2 times H_2, W_2) $
  2. *Mid-Way Workforce / Food-Provision Change:* Suppose food for $M_1$ people lasts $D_1$ days, and *after $k$ days* people join or leave so the new headcount becomes $M_2$. Measure what is *left* on Day $k$: the remaining food could feed the original $M_1$ people for $(D_1 - k)$ days! Therefore:
     $ M_1 (D_1 - k) = M_2 D_("remaining") quad arrow.r.double quad D_("remaining") = frac(M_1 (D_1 - k), M_2) $
]

// ============================================================================
// SECTION 4.3
// ============================================================================
== 4.3 Combined Work Rates, Pipes & Cisterns

Never add the *times* taken by cooperating workers! If Worker A finishes a job in $10$ days and Worker B finishes it in $15$ days, working together they certainly do *not* take $10 + 15 = 25$ days — they finish *faster* than either worker alone! What adds linearly is the *rate of work per unit time* (fraction of the job completed per hour or per day).

#diagram-fig(
  "diagrams/ch04_cistern_rates.svg",
  "Cistern Rate Balance: Inlet Tap A (+1/4 tank/hr) and Inlet Tap B (+1/6 tank/hr) fill the cistern while Outlet Drain C (−1/12 tank/hr) opposes them, giving Net Rate = 1/4 + 1/6 − 1/12 = 1/3 tank/hr (3 hours to fill).",
)

#formula-box("Reciprocal Rate Laws for Workers & Cisterns")[
  - *Cooperating Workers ($A, B, C$):* If $A$ alone takes $T_A$, $B$ alone takes $T_B$, and $C$ alone takes $T_C$:
    $ frac(1, T_("together")) = frac(1, T_A) + frac(1, T_B) + frac(1, T_C) $
    *Two-Worker Product-Over-Sum Shortcut:*
    $ T_(A B) = frac(T_A T_B, T_A + T_B) $
  - *Inlet Taps vs. Outlet Leak/Drain:* Inlet rates are *positive* ($+$); outlet/leak rates are *negative* ($-$):
    $ frac(1, T_("net")) = frac(1, T_("inlet 1")) + frac(1, T_("inlet 2")) - frac(1, T_("drain")) $
    *(If the net rate is negative, an initially full cistern empties in $|T_("net")|$ hours!)*
  - *Partial Collaboration:* If $A$ and $B$ work together for $t$ days, the fraction of the job completed is $t (1/T_A + 1/T_B)$, leaving $1 - t(1/T_A + 1/T_B)$ for the remaining worker!
]

// ============================================================================
// SECTION 4.4
// ============================================================================
== 4.4 Speed, Harmonic Average Speed, Relative Motion & Trains

=== Instant Speed Unit Conversion ($"km/h" arrow.l.r "m/s"$)
Since $1" km" = 1000" m"$ and $1" hour" = 3600" s"$, we have $frac(1000, 3600) = frac(5, 18)$:
$ "km/h" arrow.r "m/s": " multiply by " frac(5, 18) " (or divide by " 3.6")" $
$ "m/s" arrow.r "km/h": " multiply by " frac(18, 5) " (or multiply by " 3.6")" $
 Memorize the four classic JAMB pairs: $36" km/h" = 10" m/s"$, $54" km/h" = 15" m/s"$, $72" km/h" = 20" m/s"$, $90" km/h" = 25" m/s"$, and $108" km/h" = 30" m/s"$.

#formula-box("Average Speed, Relative Speed & Train-Crossing Laws")[
  1. *Universal Definition of Average Speed:*
     $ "Average Speed" = frac("Total Distance Travelled", "Total Time Taken") = frac(d_1 + d_2 + dots, t_1 + t_2 + dots) $
  2. *Equal-Distance Round Trip (Harmonic Mean Law):* Travelling distance $d$ at speed $v_1$ and an *equal* distance $d$ at speed $v_2$:
     $ v_("avg") = frac(2 d, d / v_1 + d / v_2) = frac(2 v_1 v_2, v_1 + v_2) $
  3. *Relative Speed of Two Moving Bodies:*
     - Moving in *opposite directions* (towards or away from each other): $v_("rel") = v_1 + v_2$. Time to meet across gap $D$: $t = D / (v_1 + v_2)$.
     - Moving in the *same direction* (chasing / overtaking, $v_2 > v_1$): $v_("rel") = v_2 - v_1$. Time to close head-start gap $D$: $t = D / (v_2 - v_1)$.
  4. *Train of Length $L_t$ Crossing Stationary Objects:*
     - Passing a *point object* (pole, standing man, signal post): distance covered $= L_t$.
     - Crossing an *extended object* (bridge, platform, or tunnel of length $L_b$): the front of the train enters and the *rear* must clear the far end, so total distance covered $= L_t + L_b$!
]

// ============================================================================
// SECTION 4.5
// ============================================================================
== 4.5 Mixtures (Alligation), Dilutions & Map Scales

=== 1. Weighted Mixtures & The Cross-Alligation Shortcut
If mass $m_1$ at unit price $C_1$ is blended with mass $m_2$ at unit price $C_2$, the mean price of the mixture is $C_m = frac(m_1 C_1 + m_2 C_2, m_1 + m_2)$. Conversely, if you know the cheaper price $C_1$, the dearer price $C_2$, and the target mixture price $C_m$, cross-subtraction immediately gives the required mixing ratio:
$ frac("Quantity of Cheaper " (m_1), "Quantity of Dearer " (m_2)) = frac(C_2 - C_m, C_m - C_1) $

=== 2. Solute Conservation in Dilution / Concentration Problems
When pure water is added to (or evaporated from) an acid/salt/alcohol solution, the *actual mass/volume of pure solute stays 100% constant*:
$ C_1 V_1 = C_2 V_2 quad ("where " C = "concentration, " V = "total solution volume") $

=== 3. Map & Model Scales (Linear vs. Area vs. Volume!)
#trap-box("Forgetting to Square the Map Scale When Converting Area")[
  If a map has linear scale $1 : n$ (meaning $1" cm"$ on the map represents $n" cm"$ on the ground):
  - *Actual Length* $= n times ("Map Length")$.
  - *Actual Area* $= bold(n^2) times ("Map Area")$!
  *Fastest Safe Habit:* Convert the linear scale to convenient ground units *first* before squaring! For $1 : 50000$:
  $1" cm" = 50000" cm" = 500" m" = 0.5" km"$. Squaring both sides immediately gives *$1" cm"^2 = (0.5" km")^2 = 0.25" km"^2 = 25" hectares"$* ($1" hectare" = 10000" m"^2$)!
]

// ============================================================================
// GRADED WORKED EXAMPLES (4.1 – 4.22)
// ============================================================================
== 4.6 Graded Step-by-Step Worked Examples

#worked-example(
  "4.1",
  "Simplifying Ratios Across Mixed Units",
  tier: "FOUNDATION",
  [Express the ratio $45" minutes" : 2.5" hours"$ in its simplest form.],
  [
    *Step 1 — Convert both quantities to minutes ($1" hour" = 60" mins"$):*
    $2.5" hours" = 2.5 times 60 = 150" minutes"$.

    *Step 2 — Divide both terms by $gcd(45, 150) = 15$:*
    $ 45 : 150 = frac(45, 15) : frac(150, 15) = bold(3 : 10) $
    *Final Answer:* $bold(3 : 10)$.
  ],
)

#worked-example(
  "4.2",
  "Combining Chained Ratios (A : B and B : C)",
  tier: "FOUNDATION",
  source: "UTME Past Paper",
  [If $A : B = 3 : 4$ and $B : C = 6 : 7$, find the combined ratio $A : B : C$ and hence state $A : C$.],
  [
    *Step 1 — Match the common bridge term $B$ to $"LCM"(4, 6) = 12$:*
    - Scale $A : B = 3 : 4$ by $3 arrow.r 9 : 12$.
    - Scale $B : C = 6 : 7$ by $2 arrow.r 12 : 14$.

    *Step 2 — Link the ratios:*
    $A : B : C = bold(9 : 12 : 14)$, so $A : C = bold(9 : 14)$.
    *Final Answers:* $A : B : C = bold(9 : 12 : 14)$; $A : C = bold(9 : 14)$.
  ],
)

#worked-example(
  "4.3",
  "Proportional Sharing — Difference Between Largest and Smallest Shares",
  tier: "FOUNDATION",
  [Three sisters share ₦$180000$ in the ratio $2 : 3 : 7$. By how much does the largest share exceed the smallest share?],
  [
    *Step 1 — Compute total ratio parts:*
    $S = 2 + 3 + 7 = 12$ parts. Value of $1$ part $= 180000 div 12 = "₦"15000$.

    *Step 2 — Subtract ratio parts directly (faster than computing both shares separately!):*
    Difference in parts $= 7 - 2 = 5$ parts.
    $ "Difference" = 5 times "₦"15000 = bold("₦"75000) $
    *Final Answer:* *₦75,000*.
  ],
)

#worked-example(
  "4.4",
  "Sharing Money in a Reciprocal (Fractional) Ratio",
  tier: "UTME STANDARD",
  source: "JAMB Trap Classic",
  [Divide ₦$65000$ among Musa, Ngozi, and Tunde in the ratio $frac(1, 2) : frac(1, 3) : frac(1, 4)$. Find Musa's share.],
  [
    *Step 1 — Convert the fractional ratio into whole numbers using $"LCM"(2, 3, 4) = 12$:*
    $ frac(1, 2)(12) : frac(1, 3)(12) : frac(1, 4)(12) = 6 : 4 : 3 $

    *Step 2 — Sum the integer parts and compute Musa's share ($6$ parts):*
    Total parts $= 6 + 4 + 3 = 13$.
    $ "Musa's share" = frac(6, 13) times 65000 = 6 times 5000 = bold("₦"30000) $
    *Final Answer:* *₦30,000*.
  ],
)

#worked-example(
  "4.5",
  "Extracting x : y from a Linear Ratio Equation",
  tier: "UTME STANDARD",
  [If $(3x + 2y) : (2x - y) = 5 : 2$, find the ratio $x : y$.],
  [
    *Step 1 — Write as a fraction and cross-multiply:*
    $ frac(3x + 2y, 2x - y) = frac(5, 2) quad arrow.r.double quad 2(3x + 2y) = 5(2x - y) $

    *Step 2 — Expand and group $x$ on one side and $y$ on the other:*
    $ 6x + 4y = 10x - 5y quad arrow.r.double quad 9y = 4x quad arrow.r.double quad frac(x, y) = frac(9, 4) $
    *Final Answer:* $bold(x : y = 9 : 4)$.
  ],
)

#worked-example(
  "4.6",
  "Age Ratio Shift Word Problem",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [The present ages of a father and his son are in the ratio $7 : 2$. In $10$ years' time, their ages will be in the ratio $9 : 4$. Find their present ages.],
  [
    *Step 1 — Represent present ages using multiplier $k$:*
    Let father's present age $= 7k$ and son's present age $= 2k$.

    *Step 2 — Add $10$ years to BOTH ages and equate to $9 / 4$:*
    $ frac(7k + 10, 2k + 10) = frac(9, 4) $
    Cross-multiply:
    $ 4(7k + 10) = 9(2k + 10) quad arrow.r.double quad 28k + 40 = 18k + 90 quad arrow.r.double quad 10k = 50 quad arrow.r.double quad k = 5 $

    *Step 3 — Compute present ages:*
    Father $= 7(5) = 35$ years; Son $= 2(5) = 10$ years.
    *Final Answer:* *35 years* and *10 years*.
  ],
)

#worked-example(
  "4.7",
  "Direct Proportion — Fuel Consumption",
  tier: "FOUNDATION",
  [A saloon car consumes $15$ litres of petrol to travel $180" km"$. At the same rate, how many litres will it require for a journey of $420" km"$?],
  [
    *Step 1 — Set up the direct proportion $V_1 / d_1 = V_2 / d_2$:*
    $ frac(15, 180) = frac(V_2, 420) quad arrow.r.double quad V_2 = frac(15 times 420, 180) = frac(420, 12) = bold(35 "litres") $
    *Final Answer:* *35 litres*.
  ],
)

#worked-example(
  "4.8",
  "Inverse Proportion — Workforce vs. Completion Time",
  tier: "FOUNDATION",
  [$12$ labourers can dig a drainage trench in $15$ days. How many labourers working at the same rate are needed to dig the trench in $9$ days?],
  [
    *Step 1 — Apply constant man-days ($M_1 D_1 = M_2 D_2$):*
    $ 12 times 15 = M_2 times 9 quad arrow.r.double quad M_2 = frac(180, 9) = bold(20 "labourers") $
    *(Notice that if JAMB asked "how many MORE labourers must be hired?", the answer would be $20 - 12 = 8$ — always read the final phrase carefully!)*
    *Final Answer:* *20 labourers*.
  ],
)

#worked-example(
  "4.9",
  "Boarding-House Food Provisions with Mid-Way Reinforcements",
  tier: "JAMB CHALLENGE",
  source: "JAMB Classic",
  [A boarding school has enough food provisions to feed $60$ students for $25$ days. After $5$ days, $15$ new students are admitted into the hostel. For how many *more* days will the remaining food last?],
  [
    *Step 1 — Evaluate remaining student-days of food on Day 5:*
    After $5$ days, the remaining food would have fed the original $60$ students for $25 - 5 = 20$ days. Thus remaining food $= 60 times 20 = 1200$ student-days.

    *Step 2 — Divide by the new student population ($60 + 15 = 75$):*
    $ D_("remaining") = frac(60 times 20, 75) = frac(1200, 75) = bold(16 "days") $
    *Final Answer:* *16 days*.
  ],
)

#worked-example(
  "4.10",
  "Compound Proportion (Men–Days–Hours–Work)",
  tier: "JAMB CHALLENGE",
  [$8$ tailors working $6$ hours a day can sew $120$ school uniforms in $10$ days. How many days will it take $12$ tailors working $8$ hours a day to sew $240$ identical uniforms?],
  [
    *Step 1 — Apply $frac(M_1 D_1 H_1, W_1) = frac(M_2 D_2 H_2, W_2)$:*
    $ frac(8 times 10 times 6, 120) = frac(12 times D_2 times 8, 240) $

    *Step 2 — Simplify each side:*
    $ frac(480, 120) = frac(96 D_2, 240) quad arrow.r.double quad 4 = frac(2 D_2, 5) quad arrow.r.double quad D_2 = frac(20, 2) = bold(10 "days") $
    *Final Answer:* *10 days*.
  ],
)

#worked-example(
  "4.11",
  "Three Workers Collaborating Together",
  tier: "UTME STANDARD",
  [Ada can type a manuscript alone in $12$ days, Bola in $15$ days, and Chidi in $20$ days. How long will it take all three working together to type the manuscript?],
  [
    *Step 1 — Sum daily work rates over $"LCM"(12, 15, 20) = 60$:*
    $ frac(1, T) = frac(1, 12) + frac(1, 15) + frac(1, 20) = frac(5 + 4 + 3, 60) = frac(12, 60) = frac(1, 5) $

    *Step 2 — Invert to obtain total days $T$:*
    $T = bold(5" days")$.
    *Final Answer:* *5 days*.
  ],
)

#worked-example(
  "4.12",
  "Partial Collaboration — One Worker Leaves Mid-Job",
  tier: "JAMB CHALLENGE",
  [Painter A can paint a house in $18$ days while Painter B can paint it in $12$ days. They work together for $4$ days, after which B leaves. How many additional days will A take to finish the remaining work alone?],
  [
    *Step 1 — Compute the fraction completed in the first $4$ days together:*
    Combined daily rate $= frac(1, 18) + frac(1, 12) = frac(2 + 3, 36) = frac(5, 36)$ of the house per day.
    Work done in $4$ days $= 4 times frac(5, 36) = frac(20, 36) = frac(5, 9)$.

    *Step 2 — Compute remaining work and divide by A's solo rate ($1 / 18$ per day):*
    Remaining fraction $= 1 - frac(5, 9) = frac(4, 9)$.
    $ "Additional days for A" = frac(4, 9) div frac(1, 18) = frac(4, 9) times 18 = bold(8 "days") $
    *Final Answer:* *8 days*.
  ],
)

#worked-example(
  "4.13",
  "Cistern Filled by Two Inlet Taps Against an Open Drain",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Tap P fills an empty tank in $6$ hours, Tap Q fills it in $8$ hours, while a bottom outlet pipe R can empty the full tank in $12$ hours. If all three pipes are opened simultaneously when the tank is empty, how long will it take to fill the tank?],
  [
    *Step 1 — Combine positive inlet rates and negative outlet rate over $"LCM"(6, 8, 12) = 24$:*
    $ frac(1, T_("net")) = frac(1, 6) + frac(1, 8) - frac(1, 12) = frac(4 + 3 - 2, 24) = frac(5, 24) "tank/hour" $

    *Step 2 — Invert to find time:*
    $ T_("net") = frac(24, 5) = 4 frac(4, 5) "hours" = 4.8 "hours" = bold("4 hours 48 minutes") $
    *Final Answer:* *4.8 hours* (*4 hours 48 minutes*).
  ],
)

#worked-example(
  "4.14",
  "The Harmonic Average Speed Round-Trip Trap",
  tier: "UTME STANDARD",
  source: "JAMB Top Trap",
  [A motorist drives from Ibadan to Lagos at an average speed of $60" km/h"$ and immediately returns along the same route at an average speed of $40" km/h"$. Calculate his average speed for the entire round trip.],
  [
    *Step 1 — Apply the Harmonic Mean formula (or let one-way distance $= 120" km"$):*
    Suppose the one-way distance is $d = 120" km"$ (chosen as $"LCM"(60, 40)$):
    - Outward time $t_1 = 120 div 60 = 2$ hours.
    - Return time $t_2 = 120 div 40 = 3$ hours.
    - Total distance $= 120 + 120 = 240" km"$; Total time $= 2 + 3 = 5$ hours.

    *Step 2 — Divide total distance by total time:*
    $ v_("avg") = frac(240, 5) = bold(48 "km/h") quad ("Check: " frac(2(60)(40), 60 + 40) = frac(4800, 100) = 48 "km/h") $
    *Final Answer:* *48 km/h* (never 50 km/h!).
  ],
)

#worked-example(
  "4.15",
  "Multi-Stage Journey Average Speed",
  tier: "FOUNDATION",
  [A bus travels $120" km"$ at $60" km/h"$ and then travels the next $180" km"$ at $90" km/h"$. Find its average speed for the whole $300" km"$ journey.],
  [
    *Step 1 — Compute time taken on each leg:*
    $t_1 = 120 div 60 = 2$ hours; #h(8pt) $t_2 = 180 div 90 = 2$ hours.

    *Step 2 — Divide total distance by total time:*
    $ v_("avg") = frac(120 + 180, 2 + 2) = frac(300, 4) = bold(75 "km/h") $
    *Final Answer:* *75 km/h*.
  ],
)

#worked-example(
  "4.16",
  "Relative Motion — Two Vehicles Approaching from Opposite Ends",
  tier: "UTME STANDARD",
  [Two cities $P$ and $Q$ are $330" km"$ apart. At $8:00" a.m."$, Bus X leaves $P$ for $Q$ at $65" km/h"$, while simultaneously Bus Y leaves $Q$ for $P$ at $45" km/h"$. At what time do they pass each other, and how far from $P$?],
  [
    *Step 1 — Sum speeds for opposite-direction approach:*
    Relative closing speed $v_("rel") = 65 + 45 = 110" km/h"$.

    *Step 2 — Compute time to close $330" km"$:*
    $ t = frac(330, 110) = 3 "hours" quad arrow.r.double quad "Meeting time" = 8:00 "a.m." + 3 "hrs" = bold("11:00 a.m.") $

    *Step 3 — Distance from $P$:*
    $"Distance" = 65 times 3 = bold(195" km")$.
    *Final Answers:* *11:00 a.m.*, at *195 km* from $P$.
  ],
)

#worked-example(
  "4.17",
  "Pursuit / Overtaking Problem (Same Direction)",
  tier: "UTME STANDARD",
  [A cargo van leaves a depot travelling at $60" km/h"$. Thirty minutes later, a patrol car sets out from the same depot along the same highway at $80" km/h"$ to overtake the van. How long does the patrol car take to catch the van?],
  [
    *Step 1 — Calculate the head-start distance $D$ gained by the van in $30" mins"$ ($0.5" hr"$):*
    $ D = 60 times 0.5 = 30 "km" $

    *Step 2 — Divide the head-start gap by the relative overtaking speed ($80 - 60 = 20" km/h"$):*
    $ t = frac(30, 80 - 60) = frac(30, 20) = 1.5 "hours" = bold("1 hour 30 minutes") $
    *Final Answer:* *1.5 hours* (*1 hour 30 minutes*).
  ],
)

#worked-example(
  "4.18",
  "Train Crossing a Bridge (Unit Conversion + Combined Length)",
  tier: "JAMB CHALLENGE",
  [A train $140" m"$ long travels at a steady speed of $72" km/h"$. How many seconds does it take to pass completely over a railway bridge $260" m"$ long?],
  [
    *Step 1 — Convert speed from $"km/h"$ to $"m/s"$:*
    $ v = 72 times frac(5, 18) = 4 times 5 = 20 "m/s" $

    *Step 2 — Add train length AND bridge length for total clearance distance:*
    $ D_("total") = 140 + 260 = 400 "m" $

    *Step 3 — Compute crossing time:*
    $ t = frac(400, 20) = bold(20 "seconds") $
    *Final Answer:* *20 seconds*.
  ],
)

#worked-example(
  "4.19",
  "Blending Two Grades of Rice via Alligation",
  tier: "UTME STANDARD",
  [In what ratio must a merchant mix local rice costing ₦$900$ per kg with imported rice costing ₦$1200$ per kg so that the blended mixture costs ₦$1020$ per kg?],
  [
    *Step 1 — Apply the Alligation Cross-Difference Formula ($C_1 = 900, C_2 = 1200, C_m = 1020$):*
    $ frac("Mass of N900 rice", "Mass of N1200 rice") = frac(1200 - 1020, 1020 - 900) = frac(180, 120) = frac(3, 2) $
    *Check:* $(3 times 900 + 2 times 1200) div (3 + 2) = (2700 + 2400) div 5 = 5100 div 5 = "₦"1020$ ✓.
    *Final Answer:* $bold(3 : 2)$.
  ],
)

#worked-example(
  "4.20",
  "Diluting an Acid Solution by Adding Pure Water",
  tier: "JAMB CHALLENGE",
  [How many litres of pure water must be added to $20$ litres of a $30%$ acid solution to reduce its concentration to $12%$ acid?],
  [
    *Step 1 — Equate pure acid volume before and after adding $w$ litres of water:*
    Pure acid initially $= 30% "of" 20" L" = 0.30 times 20 = 6$ litres.
    After adding $w$ litres of pure water ($0%$ acid), total volume is $(20 + w)$ litres at $12%$ concentration:
    $ 0.12 (20 + w) = 6 $

    *Step 2 — Solve for $w$:*
    $ 20 + w = frac(6, 0.12) = frac(600, 12) = 50 quad arrow.r.double quad w = 50 - 20 = bold(30 "litres") $
    *Final Answer:* *30 litres*.
  ],
)

#worked-example(
  "4.21",
  "Map Scale — Converting Both Length and Area",
  tier: "JAMB CHALLENGE",
  source: "JAMB Classic Trap",
  [A topographical map is drawn to a scale of $1 : 50000$. Calculate: (a) the actual length (in km) of a road measuring $6" cm"$ on the map; and (b) the actual area (in hectares) of an estate occupying $8" cm"^2$ on the map ($1" hectare" = 10000" m"^2$).],
  [
    *Part (a) — Linear Scale:*
    $1" cm"$ on map $= 50000" cm" = 500" m" = 0.5" km"$ on the ground.
    Therefore $6" cm"$ represents $6 times 0.5" km" = bold(3" km")$.

    *Part (b) — Area Scale (Square the Linear Conversion!):*
    Since $1" cm" = 500" m"$, squaring both sides gives:
    $ 1 "cm"^2 = (500 "m")^2 = 250000 "m"^2 = frac(250000, 10000) "hectares" = 25 "hectares" $
    Therefore $8" cm"^2$ represents $8 times 25 = bold(200" hectares")$.
    *Final Answers:* (a) *3 km*; (b) *200 hectares*.
  ],
)

#worked-example(
  "4.22",
  "Chained Currency Exchange Cross-Rate",
  tier: "UTME STANDARD",
  [Given the exchange rates $\$1 = "₦"1500$ and $£1 = \$1.25$, how many British pounds ($£$) can be exchanged for ₦$900000$?],
  [
    *Step 1 — Find the Naira value of $£1$:*
    $ £1 = 1.25 times "₦"1500 = frac(5, 4) times 1500 = "₦"1875 $

    *Step 2 — Convert ₦$900000$ to pounds:*
    $ "Amount in £" = frac(900000, 1875) = frac(36000, 75) = bold(£480) $
    *Final Answer:* *£480*.
  ],
)

// ============================================================================
// SECTION 4.7 RAPID-REVISION SUMMARY TABLE
// ============================================================================
== 4.7 Chapter 4 Rapid-Revision Checklist

#table(
  columns: (1.3fr, 2.1fr, 1.6fr),
  inset: 7.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Topic],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Master Formula],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[JAMB Exam Trap],

  [*Reciprocal Ratio*],
  [$frac(1, a) : frac(1, b) : frac(1, c) arrow.r$ multiply by $"LCM"(a, b, c)$.],
  [$1/2 : 1/3 : 1/4 = 6 : 4 : 3$, *never* $2 : 3 : 4$!],

  [*Compound Work*],
  [$frac(M_1 D_1 H_1, W_1) = frac(M_2 D_2 H_2, W_2)$; Garrison: $M_1(D_1 - k) = M_2 D_2$.],
  [Check if question asks *total* men $M_2$ or *extra* men $M_2 - M_1$!],

  [*Combined Rates*],
  [$frac(1, T) = frac(1, T_A) + frac(1, T_B) - frac(1, T_("leak"))$. Two taps: $frac(A B, A + B)$.],
  [Add *reciprocal rates*, never raw hours/days!],

  [*Average Speed*],
  [Always $frac("Total Distance", "Total Time")$. Round trip: $frac(2 v_1 v_2, v_1 + v_2)$.],
  [Never take $(v_1 + v_2)/2$ when distances are equal!],

  [*Map Area Scale*],
  [Linear $1 : n arrow.r.double$ Area $1 : n^2$.],
  [Convert $1" cm"$ to $"m"$ or $"km"$ *before* squaring!],
)

// ============================================================================
// END-OF-CHAPTER JAMB UTME PRACTICE DRILL (40 QUESTIONS)
// ============================================================================
== 4.8 JAMB UTME Practice Drill — Chapter 4 (40 Questions)

Attempt all 40 questions without a calculator (target time: *35 minutes*).

#mcq(1, [Express the ratio $350" g" : 1.4" kg"$ in its simplest form.], [$1 : 4$], [$5 : 2$], [$1 : 40$], [$7 : 2$])

#mcq(2, [If $P : Q = 2 : 3$ and $Q : R = 4 : 5$, find the ratio $P : R$.], [$2 : 5$], [$8 : 15$], [$6 : 15$], [$8 : 12$])

#mcq(3, [₦$96000$ is shared among three brothers in the ratio $3 : 4 : 5$. What is the middle brother's share?], [₦$24000$], [₦$40000$], [₦$32000$], [₦$36000$])

#mcq(4, [Find the smallest share when ₦$45000$ is divided in the ratio $frac(1, 2) : frac(1, 3) : frac(1, 6)$.], [₦$15000$], [₦$5000$], [₦$22500$], [₦$7500$])

#mcq(5, [If $2x : 3y = 4 : 9$, evaluate the ratio $(3x - y) : (x + y)$.], [$3 : 5$], [$1 : 5$], [$5 : 3$], [$2 : 3$])

#mcq(6, [The ratio of boys to girls in a college is $5 : 7$. If there are $140$ girls, what is the *total* number of students in the college?], [$100$], [$240$], [$196$], [$220$])

#mcq(7, [Two positive numbers are in the ratio $4 : 7$. When $8$ is added to each number, the new ratio becomes $3 : 5$. Find the smaller original number.], [$48$], [$56$], [$64$], [$32$])

#mcq(8, [The interior angles of a triangle are in the ratio $2 : 3 : 4$. Calculate the size of the largest angle.], [$60^degree$], [$90^degree$], [$100^degree$], [$80^degree$])

#mcq(9, [If $8$ bags of cement cost ₦$68000$, how much will $13$ identical bags cost at the same rate?], [₦$110500$], [₦$104000$], [₦$112500$], [₦$108500$])

#mcq(10, [Fifteen bricklayers can build a perimeter wall in $12$ days. How many days will it take $9$ bricklayers working at the same rate?], [$16$ days], [$20$ days], [$18$ days], [$24$ days])

#mcq(11, [A driving gear wheel with $36$ teeth meshes with a driven gear wheel having $24$ teeth. If the driving wheel rotates at $100$ revolutions per minute, find the speed of the driven wheel.], [$66.7$ rpm], [$120$ rpm], [$150$ rpm], [$144$ rpm])

#mcq(12, [A scout camp has food sufficient for $40$ scouts for $18$ days. If $8$ scouts fail to show up at the start of camp, how long will the food last the remaining scouts?], [$20$ days], [$21.6$ days], [$24$ days], [$22.5$ days])

#mcq(13, [A garrison of $120$ soldiers has rations for $30$ days. After $6$ days, $24$ soldiers are transferred away. How many *more* days will the remaining rations last?], [$30$ days], [$24$ days], [$36$ days], [$37.5$ days])

#mcq(14, [Six identical water pumps running $8$ hours a day empty a reservoir in $5$ days. How many hours a day must $4$ such pumps run to empty the reservoir in $6$ days?], [$9$ hrs/day], [$10$ hrs/day], [$12$ hrs/day], [$8$ hrs/day])

#mcq(15, [Tap X can fill a drum in $10$ minutes while Tap Y can fill it in $15$ minutes. How long will it take to fill the drum if both taps are turned on together?], [$12.5$ mins], [$5$ mins], [$6$ mins], [$8$ mins])

#mcq(16, [Kemi and Lekan working together can weed a farm in $6$ days. If Kemi alone can weed the farm in $10$ days, how many days would Lekan take working alone?], [$4$ days], [$12$ days], [$16$ days], [$15$ days])

#mcq(17, [An overhead tank can be filled by an inlet pipe in $4$ hours and emptied by a bottom leak in $12$ hours. If the tank is initially empty and the inlet is opened with the leak present, how long will it take to fill?], [$6$ hours], [$8$ hours], [$3$ hours], [$4.5$ hours])

#mcq(18, [A can complete a task in $12$ days and B in $18$ days. They work together for $4$ days, and then A leaves. How many more days will B take alone to finish the task?], [$6$ days], [$8$ days], [$10$ days], [$9$ days])

#mcq(19, [Convert a highway speed of $90" km/h"$ into metres per second ($"m/s"$).], [$20" m/s"$], [$30" m/s"$], [$25" m/s"$], [$15" m/s"$])

#mcq(20, [Express a sprint speed of $15" m/s"$ in kilometres per hour ($"km/h"$).], [$45" km/h"$], [$50" km/h"$], [$60" km/h"$], [$54" km/h"$])

#mcq(21, [A cyclist rides to a neighbouring town at $12" km/h"$ and returns immediately over the exact same road at $18" km/h"$. What is his average speed for the round trip?], [$14.4" km/h"$], [$15.0" km/h"$], [$14.8" km/h"$], [$16.0" km/h"$])

#mcq(22, [A coach covers the first $90" km"$ of a trip in $1.5$ hours and the remaining $110" km"$ in $2.5$ hours. Find its average speed for the entire journey.], [$52" km/h"$], [$50" km/h"$], [$55" km/h"$], [$48" km/h"$])

#mcq(23, [Two cars start simultaneously from towns $270" km"$ apart and travel towards each other at $50" km/h"$ and $40" km/h"$ respectively. After how many hours do they meet?], [$2.5$ hrs], [$3.5$ hrs], [$3$ hrs], [$4$ hrs])

#mcq(24, [A truck leaves Kano at $60" km/h"$. One hour later, a saloon car leaves Kano along the same road at $80" km/h"$. How long after the saloon car departs will it overtake the truck?], [$2$ hrs], [$4$ hrs], [$2.5$ hrs], [$3$ hrs])

#mcq(25, [How many seconds does a train $120" m"$ long travelling at $54" km/h"$ take to pass a stationary roadside pole?], [$8" s"$], [$6" s"$], [$10" s"$], [$12" s"$])

#mcq(26, [A train $150" m"$ long moving at $72" km/h"$ crosses a $250" m"$ viaduct. Find the time taken to clear the viaduct completely.], [$12.5" s"$], [$20" s"$], [$7.5" s"$], [$15" s"$])

#mcq(27, [Coffee costing ₦$3000$ per kg is blended with coffee costing ₦$4500$ per kg in the mass ratio $2 : 1$. Find the cost per kg of the mixture.], [₦$3750$], [₦$3600$], [₦$3500$], [₦$4000$])

#mcq(28, [In what ratio must tea at ₦$1600$ per kg be mixed with tea at ₦$2200$ per kg to produce a blend worth ₦$1800$ per kg?], [$1 : 2$], [$3 : 2$], [$3 : 1$], [$2 : 1$])

#mcq(29, [$15$ litres of a $20%$ brine solution are mixed with $10$ litres of a $45%$ brine solution. What is the percentage concentration of the resulting mixture?], [$30%$], [$32.5%$], [$28%$], [$35%$])

#mcq(30, [How many litres of pure water must be added to $12$ litres of a $50%$ alcohol solution to dilute it to a $30%$ alcohol solution?], [$6$ L], [$8$ L], [$10$ L], [$4$ L])

#mcq(31, [On a map drawn to a scale of $1 : 25000$, two villages are $8" cm"$ apart. What is the actual ground distance between them in kilometres?], [$0.2" km"$], [$20" km"$], [$2" km"$], [$2.5" km"$])

#mcq(32, [A reserve covers an area of $5" cm"^2$ on a map whose linear scale is $1 : 20000$. Calculate the actual ground area of the reserve in $"km"^2$.], [$1.00" km"^2$], [$0.10" km"^2$], [$2.00" km"^2$], [$0.20" km"^2$])

#mcq(33, [Bronze is alloyed from copper, zinc, and tin in the mass ratio $13 : 5 : 2$. Find the mass of zinc in a $40" kg"$ bronze casting.], [$10" kg"$], [$8" kg"$], [$26" kg"$], [$4" kg"$])

#mcq(34, [A patient's pulse beats steadily at $72$ times per minute. How many times does it beat in $2.5$ hours?], [$1800$], [$10800$], [$7200$], [$9600$])

#mcq(35, [A secretary types $1350$ words in $30$ minutes. At the same typing speed, how long will she take to type a $3600$-word report?], [$1$ hr $10$ mins], [$1$ hr $30$ mins], [$1$ hr $20$ mins], [$1$ hr $15$ mins])

#mcq(36, [Three partners invest ₦$200000$, ₦$300000$, and ₦$500000$ in a venture and share an annual profit of ₦$240000$ in proportion to their capital. Find the largest investor's share.], [₦$96000$], [₦$72000$], [₦$150000$], [₦$120000$])

#mcq(37, [Walking at $frac(3, 4)$ of her usual speed, a student arrives at school $10$ minutes late. What is her usual walking time to school?], [$30$ mins], [$40$ mins], [$25$ mins], [$35$ mins])

#mcq(38, [A metal alloy has a density of $8.5" g/cm"^3$. Find the mass, in *kilograms*, of a solid block of volume $400" cm"^3$.], [$34" kg"$], [$3.4" kg"$], [$0.34" kg"$], [$4.7" kg"$])

#mcq(39, [Given that $x : y = 3 : 2$ and $y : z = 5 : 4$, find the ratio $(x + z) : y$.], [$7 : 2$], [$19 : 10$], [$23 : 10$], [$23 : 8$])

#mcq(40, [Pipe A fills a tank in $8$ hours, Pipe B fills it in $12$ hours, while Drain C empties it in $6$ hours. Starting empty with all three open, how long does the tank take to fill?], [$12$ hours], [$16$ hours], [$18$ hours], [$24$ hours])

// ============================================================================
// ANSWER KEY & FULL STEP-BY-STEP SOLUTIONS
// ============================================================================
== 4.9 Quick Answer Key & Complete Worked Solutions — Chapter 4

#answer-key-grid((
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
))

#sol-item(1, "A")[
  *Step 1:* Convert both masses to grams ($1.4" kg" = 1400" g"$).
  *Step 2:* Simplify by dividing by $gcd(350, 1400) = 350$:
  $ 350 : 1400 = frac(350, 350) : frac(1400, 350) = 1 : 4 $
]

#sol-item(2, "B")[
  *Step 1:* Bridge $Q$ using $"LCM"(3, 4) = 12$: $P : Q = 8 : 12$ and $Q : R = 12 : 15$ (or multiply $frac(P, Q) times frac(Q, R)$ directly!).
  $ frac(P, R) = frac(P, Q) times frac(Q, R) = frac(2, 3) times frac(4, 5) = frac(8, 15) quad arrow.r.double quad P : R = 8 : 15 $
]

#sol-item(3, "C")[
  *Step 1:* Total ratio parts $= 3 + 4 + 5 = 12$.
  *Step 2:* Middle brother receives $4$ parts out of $12$:
  $ "Middle Share" = frac(4, 12) times 96000 = frac(1, 3) times 96000 = "₦"32000 $
]

#sol-item(4, "D")[
  *Step 1:* Multiply each fraction by $"LCM"(2, 3, 6) = 6$:
  $ frac(1, 2)(6) : frac(1, 3)(6) : frac(1, 6)(6) = 3 : 2 : 1 quad ("Total" = 6 "parts") $
  *Step 2:* Smallest share corresponds to $1$ part: $frac(1, 6) times 45000 = "₦"7500$.
]

#sol-item(5, "A")[
  *Step 1:* Find $x : y$ first:
  $ frac(2x, 3y) = frac(4, 9) quad arrow.r.double quad frac(x, y) = frac(4, 9) times frac(3, 2) = frac(2, 3) $
  *Step 2:* Substitute $x = 2, y = 3$ into $(3x - y) : (x + y)$:
  $ (3(2) - 3) : (2 + 3) = (6 - 3) : 5 = 3 : 5 $
]

#sol-item(6, "B")[
  *Step 1:* Girls represent $7$ parts out of $5 + 7 = 12$ total parts.
  *Step 2:* Since $7" parts" = 140$, $1" part" = 20$ students. Total students $= 12 times 20 = 240$.
]

#sol-item(7, "C")[
  *Step 1:* Let the original numbers be $4k$ and $7k$.
  *Step 2:* Form the shifted ratio equation and cross-multiply:
  $ frac(4k + 8, 7k + 8) = frac(3, 5) quad arrow.r.double quad 20k + 40 = 21k + 24 quad arrow.r.double quad k = 16 $
  Smaller original number $= 4k = 4(16) = 64$.
]

#sol-item(8, "D")[
  *Step 1:* Angles of a triangle sum to $180^degree$, split into $2 + 3 + 4 = 9$ parts.
  *Step 2:* Largest angle $= frac(4, 9) times 180^degree = 4 times 20^degree = 80^degree$.
]

#sol-item(9, "A")[
  *Step 1:* Cost of $1$ bag $= 68000 div 8 = "₦"8500$.
  *Step 2:* Cost of $13$ bags $= 13 times 8500 = "₦"110500$.
]

#sol-item(10, "B")[
  *Step 1:* Inverse proportion ($M_1 D_1 = M_2 D_2$): total work $= 15 times 12 = 180$ bricklayer-days.
  *Step 2:* Days for $9$ bricklayers $= 180 div 9 = 20$ days.
]

#sol-item(11, "C")[
  *Step 1:* Meshing gears obey $N_1 omega_1 = N_2 omega_2$ (fewer teeth $arrow.r$ faster rotation):
  $ 36 times 100 = 24 times omega_2 quad arrow.r.double quad omega_2 = frac(3600, 24) = 150 "rpm" $
]

#sol-item(12, "D")[
  *Step 1:* Remaining scouts at the start $= 40 - 8 = 32$.
  *Step 2:* $40 times 18 = 32 times D_2 arrow.r.double D_2 = frac(720, 32) = frac(45, 2) = 22.5$ days.
]

#sol-item(13, "A")[
  *Step 1:* After $6$ days, remaining rations would feed $120$ soldiers for $30 - 6 = 24$ days.
  *Step 2:* Remaining soldiers $= 120 - 24 = 96$.
  $ D_("rem") = frac(120 times 24, 96) = frac(120, 4) = 30 "days" $
]

#sol-item(14, "B")[
  *Step 1:* Equal pump-hours: $M_1 D_1 H_1 = M_2 D_2 H_2$:
  $ 6 times 5 times 8 = 4 times 6 times H_2 quad arrow.r.double quad 240 = 24 H_2 quad arrow.r.double quad H_2 = 10 "hours/day" $
]

#sol-item(15, "C")[
  *Step 1:* Apply the two-tap product-over-sum shortcut:
  $ T = frac(10 times 15, 10 + 15) = frac(150, 25) = 6 "minutes" $
]

#sol-item(16, "D")[
  *Step 1:* Subtract Kemi's daily rate from the combined daily rate:
  $ frac(1, T_("Lekan")) = frac(1, 6) - frac(1, 10) = frac(5 - 3, 30) = frac(2, 30) = frac(1, 15) quad arrow.r.double quad T_("Lekan") = 15 "days" $
]

#sol-item(17, "A")[
  *Step 1:* Net hourly filling rate $= frac(1, 4) - frac(1, 12) = frac(3 - 1, 12) = frac(2, 12) = frac(1, 6)$ tank/hour.
  *Step 2:* Inverting gives $T = 6$ hours.
]

#sol-item(18, "B")[
  *Step 1:* Combined rate $= frac(1, 12) + frac(1, 18) = frac(3 + 2, 36) = frac(5, 36)$ per day. In $4$ days they finish $4 times frac(5, 36) = frac(5, 9)$.
  *Step 2:* Remaining work $= 1 - frac(5, 9) = frac(4, 9)$. At B's solo rate of $1/18$ per day:
  $ "Days for B" = frac(4, 9) div frac(1, 18) = frac(4, 9) times 18 = 8 "days" $
]

#sol-item(19, "C")[
  Multiply by $frac(5, 18)$:
  $ 90 times frac(5, 18) = 5 times 5 = 25 "m/s" $
]

#sol-item(20, "D")[
  Multiply by $frac(18, 5)$:
  $ 15 times frac(18, 5) = 3 times 18 = 54 "km/h" $
]

#sol-item(21, "A")[
  *Step 1:* Equal-distance round trip $arrow.r$ Harmonic Mean:
  $ v_("avg") = frac(2(12)(18), 12 + 18) = frac(432, 30) = 14.4 "km/h" $
]

#sol-item(22, "B")[
  *Step 1:* Total distance $= 90 + 110 = 200" km"$; Total time $= 1.5 + 2.5 = 4.0$ hours.
  $ v_("avg") = frac(200, 4) = 50 "km/h" $
]

#sol-item(23, "C")[
  *Step 1:* Opposite directions $arrow.r$ relative speed $= 50 + 40 = 90" km/h"$.
  *Step 2:* Time to meet $= 270 div 90 = 3$ hours.
]

#sol-item(24, "D")[
  *Step 1:* Head-start gained by truck in $1$ hour $= 60" km"$.
  *Step 2:* Overtaking speed $= 80 - 60 = 20" km/h"$, so catch-up time $= 60 div 20 = 3$ hours.
]

#sol-item(25, "A")[
  *Step 1:* Convert speed: $54" km/h" = 54 times frac(5, 18) = 15" m/s"$.
  *Step 2:* Passing a point pole requires covering the train's own length: $t = 120 div 15 = 8" s"$.
]

#sol-item(26, "B")[
  *Step 1:* Speed $= 72 times frac(5, 18) = 20" m/s"$.
  *Step 2:* Total clearance distance $= 150 + 250 = 400" m"$, giving $t = 400 div 20 = 20" s"$.
]

#sol-item(27, "C")[
  *Step 1:* Weighted mean price:
  $ C_m = frac(2(3000) + 1(4500), 2 + 1) = frac(10500, 3) = "₦"3500 "/kg" $
]

#sol-item(28, "D")[
  *Step 1:* Alligation cross-difference:
  $ frac("Cheaper (1600)", "Dearer (2200)") = frac(2200 - 1800, 1800 - 1600) = frac(400, 200) = 2 : 1 $
]

#sol-item(29, "A")[
  *Step 1:* Total pure salt $= 15(0.20) + 10(0.45) = 3.0 + 4.5 = 7.5$ units in $15 + 10 = 25$ litres total:
  $ "Concentration" = frac(7.5, 25) times 100% = 7.5 times 4% = 30% $
]

#sol-item(30, "B")[
  *Step 1:* Conserve pure alcohol ($12 times 0.50 = 6$ litres):
  $ 0.30 (12 + w) = 6 quad arrow.r.double quad 12 + w = 20 quad arrow.r.double quad w = 8 "litres" $
]

#sol-item(31, "C")[
  *Step 1:* $1" cm" = 25000" cm" = 250" m" = 0.25" km"$.
  *Step 2:* $8" cm" = 8 times 0.25" km" = 2" km"$.
]

#sol-item(32, "D")[
  *Step 1:* Convert linear scale first: $1" cm" = 20000" cm" = 200" m" = 0.2" km"$.
  *Step 2:* Square both sides for area: $1" cm"^2 = (0.2" km")^2 = 0.04" km"^2$.
  *Step 3:* Multiply by $5" cm"^2$: $5 times 0.04 = 0.20" km"^2$.
]

#sol-item(33, "A")[
  *Step 1:* Total parts $= 13 + 5 + 2 = 20$.
  *Step 2:* Mass of zinc $= frac(5, 20) times 40" kg" = 10" kg"$.
]

#sol-item(34, "B")[
  *Step 1:* $2.5" hours" = 2.5 times 60 = 150$ minutes.
  *Step 2:* Total beats $= 72 times 150 = 10800$.
]

#sol-item(35, "C")[
  *Step 1:* Typing speed $= 1350 div 30 = 45$ words per minute.
  *Step 2:* Time for $3600$ words $= 3600 div 45 = 80" minutes" = 1" hr " 20" mins"$.
]

#sol-item(36, "D")[
  *Step 1:* Capital ratio $= 200 : 300 : 500 = 2 : 3 : 5$ ($10$ parts total).
  *Step 2:* Largest share $= frac(5, 10) times 240000 = "₦"120000$.
]

#sol-item(37, "A")[
  *Step 1:* Speed and time are inversely proportional! At $frac(3, 4)$ of usual speed, new time is $frac(4, 3) T$, where $T$ is usual time.
  *Step 2:* Equate the extra time to $10$ minutes:
  $ frac(4, 3) T - T = 10 quad arrow.r.double quad frac(1, 3) T = 10 quad arrow.r.double quad T = 30 "minutes" $
]

#sol-item(38, "B")[
  *Step 1:* $"Mass" = "Density" times "Volume" = 8.5 times 400 = 3400" g"$.
  *Step 2:* Convert to kilograms: $3400 div 1000 = 3.4" kg"$.
]

#sol-item(39, "C")[
  *Step 1:* Match $y$ to $"LCM"(2, 5) = 10$: $x : y = 15 : 10$ and $y : z = 10 : 8$, so $x : y : z = 15 : 10 : 8$.
  *Step 2:* $(x + z) : y = (15 + 8) : 10 = 23 : 10$.
]

#sol-item(40, "D")[
  *Step 1:* Net filling rate $= frac(1, 8) + frac(1, 12) - frac(1, 6) = frac(3 + 2 - 4, 24) = frac(1, 24)$ tank/hour.
  *Step 2:* Inverting gives $T = 24$ hours.
]
