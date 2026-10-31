#import "template.typ": *

#current-chapter.update("Chapter 1: The Economic Problem")

#pagebreak()

#chapter-opener(
  1,
  "The Economic Problem",
  subtitle: "Scarcity and the Three Questions, Opportunity Cost Done Properly, the Production Possibility Curve, the Four Factors of Production and Their Rewards, and the Three Economic Systems",
  syllabus-ref: "Sec. A • Basic Concepts",
  utme-weight: "4 Qs a year on basics",
  running: "The Economic Problem",
)

#focus-radar(
  objectives: (
    "Define scarcity, choice and opportunity cost, and show how the three are one chain.",
    "Compute opportunity cost from a table, and distinguish it from the money paid.",
    "Read a production possibility curve: on it, inside it, outside it, and what shifts it.",
    "Name the four factors of production, their rewards, and the difference between capital and money.",
    "Distinguish the market, command and mixed economies by the way each answers the three questions.",
  ),
  hotspots: (
    "“The basic economic problem arises because …” — wants are unlimited and resources are limited. The trap options name *poverty* or *bad government*, which are consequences, not the cause.",
    "“The opportunity cost of a choice is …” — the *next best alternative forgone*. An option that says *the money paid* is the commonest wrong answer in the whole paper.",
    "“A point inside the production possibility curve indicates …” — unemployment or inefficiency. An option that says *unattainable* describes a point outside.",
    "“The reward for capital is …” — *interest*. Rent belongs to land, wages to labour, profit to the entrepreneur.",
    "“In a free-market economy, the three questions are answered by …” — the price mechanism, not a planning committee.",
  ),
  trap-summary: "Three slips. (1) Reading opportunity cost as money spent, when it is the value of what was given up. (2) Confusing a movement of the PPC (growth) with a movement along it (reallocation). (3) Calling money capital: money buys capital, but capital is the machine, the tool, the building — a produced means of production.",
)

// ============================================================================
== 1.1 Scarcity, Choice and the Three Questions

Economics begins with a mismatch. Human wants are unlimited and the resources that
could satisfy them are limited. That gap is scarcity, and scarcity is not the same thing
as poverty: a country can be rich and still be a scarcity economy, because even the rich
country cannot build every road, pay every teacher and cut every tax at the same time.

#diagram-fig("diagrams/ch01_scarcity.svg",
  "The chain every definition question is built on. Scarcity is the gap; choice is what the gap forces; opportunity cost is what the choice costs.", width: 100%)

#rule-box("Scarcity, choice and opportunity cost are one sentence")[
  Because resources are scarce, every individual, firm and government must choose; because
  choosing one use means giving up another, every choice carries an opportunity cost.
]

The three questions follow immediately, and every society — capitalist, socialist or
mixed — has to answer all three:

+ *What to produce,* and how much of each good.
+ *How to produce it,* by which combination of land, labour, capital and enterprise.
+ *For whom to produce it,* which is a question about distribution.

#concept-box("Free goods and economic goods")[
  A *free good* is one so abundant that it commands no price and costs nothing to use —
  air, sunlight, in ordinary circumstances. An *economic good* is scarce relative to the
  demand for it, and therefore has a price and an opportunity cost.

  The same thing can change sides. Clean air in a village is a free good; clean air beside
  a cement factory is an economic good, and the factory pays for filters. The examiner
  likes that example because it shows that scarcity is a relationship, not a property of
  the thing itself.
]

#trap-box("“Scarcity means that goods are expensive”")[
  Scarcity explains why a price *can* exist; it does not fix how high the price is. A
  scarce good may be cheap if nobody wants it, and an abundant good may be dear if
  everyone wants it in one week. Price is set in a market — that is Chapters 2 and 3 — and
  scarcity is the reason there is a market at all.
]

#worked-example(
  1,
  "The definition question, answered by its own wording",
  [The fundamental economic problem of scarcity arises because

    A. some people are poorer than others \
    B. resources are limited while wants are unlimited \
    C. governments do not plan the economy properly \
    D. prices of goods and services keep rising],
  [
    *Step 1 — read the word “fundamental”.* The stem is asking for the cause of the problem, not for one of its symptoms.

    *Step 2 — the definition.* Scarcity is the relationship between unlimited wants and limited resources. That is option B, word for word the sentence taught in 1.1.

    *Step 3 — kill the symptoms.* A is poverty, which scarcity can produce but does not mean; C is a failure of planning, which is one system's answer to scarcity; D is inflation, which is a consequence in the market. All three are results, and the question asks for the cause.

    *Check.* If the option could be removed by a policy (better planning, lower prices), it is not the fundamental problem. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 1.2 Opportunity Cost, Done Properly

Opportunity cost is the value of the *next best alternative forgone*. Three words carry
the marks: *next best*, because you give up only one alternative — the one you would
otherwise have chosen — and *forgone*, because the cost exists whether or not any money
changes hands.

#rule-box("The definition, and the two words that make it exact")[
  Opportunity cost = the value of the next best alternative forgone.

  *Next best,* not all alternatives: if you can spend ₦10,000 on a phone, a bicycle or a
  school bag, and you buy the phone, the cost is the bicycle *or* the bag, whichever you
  would have chosen next — not both.
]

#concept-box("The three faces of the same cost")[
  + *Money cost.* What you hand over. The exam uses this as the distractor.
  + *Opportunity cost.* The value of what the money would otherwise have bought, or of the time it took to earn it.
  + *Social cost.* The cost to society — private cost plus any external cost, such as the pollution from the factory that made the phone.
]

A student who leaves a ₦2,000-an-hour job to sit a three-hour examination pays ₦6,000 in
wages forgone, whether or not the examination itself costs anything. That is the shape of
every opportunity-cost question on the paper: a list of alternatives, one choice, and a
question about what was given up.

#worked-example(
  2,
  "The opportunity cost of a Saturday",
  [A trader can use her Saturday in one of three ways: selling at the market, which earns ₦18,000; teaching a lesson, which earns ₦12,000; or resting at home, which earns nothing. She chooses the market. Her opportunity cost is

    A. ₦18,000 \
    B. ₦12,000 \
    C. ₦30,000 \
    D. zero, because she earned money],
  [
    *Step 1 — the rule.* Opportunity cost is the value of the *next best* alternative, and the next best here is the lesson at ₦12,000.

    *Step 2 — not the total.* ₦30,000 is the sum of the two earning options, and adding them is the trap: she could not have done both, so she did not give up both.

    *Step 3 — not the earning.* A says ₦18,000, which is what she *did* earn, not what she gave up. D is the answer of a candidate who thinks cost means money out of the pocket.

    *Check.* The phrase *next best* excludes every alternative below the second. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#trap-box("The distractor the examiner loves")[
  *“The opportunity cost of building a hospital is the money spent on it.”* Wrong in the
  way the paper wants: the money is a *transfer*, it buys the hospital and then it is gone
  into the builder's pocket. The opportunity cost is the *school* that could have been
  built instead — the next best use of the same resources.
]

// ============================================================================
== 1.3 The Production Possibility Curve

The production possibility curve — PPC, sometimes called the production possibility
frontier — draws the limit of what an economy can produce with its given resources and
technology, assuming it makes only two goods.

#diagram-fig("diagrams/ch01_ppc.svg",
  "A on the curve is efficient; B inside it is unemployment or inefficiency; C outside it is unattainable until the curve itself moves. The dashed curve is growth.", width: 92%)

#rule-box("Reading any point on a PPC diagram")[
  + *On the curve:* all resources are fully and efficiently employed. To make more of one good you must make less of the other — the slope is the opportunity cost.
  + *Inside the curve:* resources are idle or badly used. The economy can increase both goods without giving anything up.
  + *Outside the curve:* unattainable with present resources and technology. It becomes attainable only if the curve shifts outward.
]

The curve is *bowed out* — concave to the origin — rather than a straight line, and the
reason is worth a mark on its own: resources are not equally suited to both goods. Land
that grows cocoa is poor for building factories, so moving resources from one use to the
other costs more and more of the good given up. A straight-line PPC would mean that every
resource was equally good at everything.

#concept-box("What shifts the curve, and what moves a point along it")[
  + *Shift outward (growth):* more resources, better technology, better education and training, more capital, discovery of new raw materials.
  + *Shift inward (decline):* war, drought, epidemic, destruction of capital, emigration of skilled labour.
  + *Move along the curve:* reallocating resources between the two goods, with no change in capacity.
  + *Move inside the curve:* unemployment appearing, or resources being used less efficiently.
]

#trap-box("Growth is not a movement along the curve")[
  An option that says *the economy moves from A to B on the same curve, so the country has grown* is
  half right and wholly wrong: production of one good rose and the other fell, and total
  capacity did not change. Growth is the *whole curve moving*, and the tell is the phrase
  *more of both goods*.
]

#worked-example(
  3,
  "The point inside the curve",
  [A country produces at a point inside its production possibility curve. This indicates that

    A. the country has achieved economic growth \
    B. some resources are unemployed or inefficiently used \
    C. the combination of goods is unattainable \
    D. the country should produce only one of the two goods],
  [
    *Step 1 — locate the point.* Inside the curve, not on it and not outside it. The diagram in 1.3 labels that region *unemployment*.

    *Step 2 — the meaning.* Inside the curve the economy could produce more of one good without giving up any of the other, so capacity is idle or badly used.

    *Step 3 — the traps.* A describes the curve moving outward; C describes a point outside; D is advice, not a reading of the diagram, and the paper does not ask for advice.

    *Check.* Inside means *waste*, on means *efficiency*, outside means *impossible*. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 1.4 The Factors of Production and Their Rewards

Everything produced is produced by combining four factors. The exam asks two things
about them: what each one *is*, and what each one is *paid*.

#diagram-fig("diagrams/ch01_factors.svg",
  "The four factors and their rewards. The pairing is fixed, and a question that swaps two rewards is a mark given away in the first five seconds.", width: 100%)

#rule-box("The four factors, in one line each")[
  + *Land* — all natural resources, including the sea, the forest and the minerals. Reward: *rent*.
  + *Labour* — human effort, mental and physical. Reward: *wages* or *salary*.
  + *Capital* — goods made in order to make other goods: machines, tools, factories, vehicles, roads. Reward: *interest*.
  + *Entrepreneur* — the person who organises the other three, takes the decisions and bears the risk. Reward: *profit*.
]

#trap-box("Money is not capital")[
  A question that offers *money* as an example of capital is testing the commonest confusion
  in the syllabus. Money is a *medium of exchange*; it becomes capital only when it is used
  to buy a machine, a tool or a building. The test is simple: can it *produce* something?
  A naira note in a drawer cannot.
]

#concept-box("The entrepreneur, and why the reward is different")[
  The first three factors are paid whether or not the business succeeds: rent is due, wages
  are due, interest is due. The entrepreneur is paid *last* and only if anything is left,
  which is why profit is called a *residual* reward and why it can be negative — a loss.

  That asymmetry is the whole justification for profit: it is the return for bearing
  uncertainty. An economy without profit has no one whose job is to take the risk.
]

#worked-example(
  4,
  "The reward that does not belong",
  [The reward for the factor of production that organises the other factors and bears the risk of the business is

    A. rent \
    B. interest \
    C. profit \
    D. wages],
  [
    *Step 1 — identify the factor.* Organising the other factors and bearing the risk is the definition of the entrepreneur, given word for word in 1.4.

    *Step 2 — match the reward.* The entrepreneur's reward is profit, and profit is what is left after the other three have been paid.

    *Step 3 — the alternatives.* Rent is land's, interest is capital's, wages are labour's. Each is correct for a different factor, which is why they are offered: the question is a matching exercise, not a judgement.

    *Check.* Say the four pairs aloud — land rent, labour wages, capital interest, entrepreneur profit. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 1.5 The Three Economic Systems

Every system answers the same three questions; the difference is *who answers them*.

#diagram-fig("diagrams/ch01_systems.svg",
  "The three systems, side by side on the three questions, with one strength and one weakness each. The exam asks for the strength of one and the weakness of another.", width: 100%)

#rule-box("The three systems, defined by the question they answer with")[
  + *Market (capitalist) economy:* resources are owned privately and allocated by the price mechanism. What, how and for whom are decided by prices and profits.
  + *Command (socialist) economy:* resources are owned by the state and allocated by a plan. What, how and for whom are decided by planners.
  + *Mixed economy:* private ownership and price signals operate inside a framework of state ownership, taxation and regulation. Nigeria is a mixed economy.
]

#concept-box("The price mechanism, in four sentences")[
  A rise in demand raises price; a higher price raises the profit available; profit attracts
  resources into the industry; the extra supply brings the price back down. That loop is the
  mechanism by which a market answers the three questions without anyone deciding.

  The loop is also the reason the state intervenes: it distributes by ability to pay, and
  ability to pay is not the same as need.
]

#trap-box("“A mixed economy has no price mechanism”")[
  A mixed economy is not halfway between a market and a command system in every respect; it
  is a market system with a public sector and a rulebook. Prices still allocate most goods,
  and the state owns or regulates the rest — power, water, roads, and the taxes that pay for
  them. An option that says prices play no part in a mixed economy is false.
]

#worked-example(
  5,
  "The system that answers with a plan",
  [An economy in which the state owns the means of production and a central authority decides what shall be produced, in what quantity and for whom, is best described as

    A. a free-market economy \
    B. a mixed economy \
    C. a command economy \
    D. a subsistence economy],
  [
    *Step 1 — find the decision-maker.* The stem says a *central authority decides*. That phrase alone identifies the system: whoever decides is the system.

    *Step 2 — name it.* State ownership plus central decisions is a command — planned — economy.

    *Step 3 — the near misses.* A is decided by prices, B is decided by prices *and* the state, and D describes a household economy that produces for itself, which the stem does not mention.

    *Check.* Ask *who answers the three questions?* Prices → market; plan → command; both → mixed. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: the economic problem.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Wants are unlimited and resources are limited, and the gap between them is scarcity. Scarcity forces choice, and choice carries an opportunity cost: the value of the next best alternative forgone, not the money paid. Every society must answer three questions — what, how and for whom — and the way it answers them names its system: prices in a market economy, a plan in a command economy, and a mixture of both in a mixed economy like Nigeria's. The production possibility curve draws the limit of what can be produced with given resources and technology. On the curve is efficient, inside it is unemployment, outside it is unattainable, and only growth — more resources, better technology — moves the whole curve outward. The four factors of production are land, labour, capital and enterprise, rewarded with rent, wages, interest and profit, and the pairing is fixed.
  ]
]

== 1.6 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [The basic economic problem is that], [resources are unlimited and wants are limited], [wants are unlimited and resources are limited], [some countries are poorer than others], [governments cannot collect enough tax])

#mcq(2, [The opportunity cost of a decision is], [the money paid for the good chosen], [the total value of all the alternatives], [the value of the next best alternative forgone], [the price of the good in the market])

#mcq(3, [A point outside a country's production possibility curve represents], [full employment of resources], [unemployment of resources], [an unattainable combination of goods], [economic growth])

#mcq(4, [The reward for the factor of production called capital is], [rent], [interest], [wages], [profit])

#answer-key-grid(("B", "C", "C", "B"))

#answer-notes((
  ("B", [Wants unlimited, resources limited. A reverses the two clauses — the commonest reading slip in the paper. C is poverty and D is a fiscal problem; neither is the fundamental problem.]),
  ("C", [The next best alternative forgone. A is the money cost, which is the distractor the whole of 1.2 is written against, and B is the sum of every alternative, which could never be given up.]),
  ("C", [Outside the curve is unattainable with present resources and technology. B describes a point inside the curve, and D is what moves the curve rather than a point on it.]),
  ("B", [Interest. A is land's reward, C is labour's and D is the entrepreneur's — the four rewards are a fixed pairing, so the question is a matching exercise.]),
))

#chapter-checklist("Before you leave Chapter 1", (
  [Define scarcity, choice and opportunity cost in one sentence that joins all three.],
  [Compute an opportunity cost from a list of three alternatives, and say why the answer is not the sum.],
  [Mark on a PPC a point that is efficient, one that is unemployed and one that is unattainable.],
  [Say what shifts a PPC outward, and give three examples.],
  [Name the four factors of production and their rewards, and explain why money is not capital.],
  [Name the three economic systems by the way each answers the three questions.],
))

#concept-box("Carry this into Chapter 2")[
  Chapter 1 explains why a price exists at all: scarcity. Chapter 2 asks the next question — what determines the price — and answers it from the buyer's side, with the law of demand, the difference between a movement and a shift, and the idea of utility that sits underneath both.
]

#include "drill_ch01.typ"
