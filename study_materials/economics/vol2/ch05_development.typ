#import "template.typ": *

#current-chapter.update("Chapter 5: Development, Population and Unemployment")

#pagebreak()

#chapter-opener(
  5,
  "Development, Population and Unemployment",
  subtitle: "Growth against Development, the Human Development Index, Population Structure and the Dependency Ratio, the Labour Force, and the Four Kinds of Unemployment",
  syllabus-ref: "Sec. F • Development and the Labour Market",
  utme-weight: "2 Qs a year on development",
  running: "Development and Unemployment",
)

#focus-radar(
  objectives: (
    "Distinguish economic growth from economic development, and give examples of growth without development.",
    "Compute and interpret the human development index and per capita income.",
    "Read a population pyramid and compute the dependency ratio.",
    "Define the labour force and compute the labour-force participation rate.",
    "Name the four kinds of unemployment, and match each to its cure.",
  ),
  hotspots: (
    "“Economic development differs from economic growth because …” — development is a *wider* concept that includes health, education and distribution. The option that says development is *faster* growth is the trap.",
    "“The dependency ratio is …” — (under-15s + over-64s) ÷ the working-age population × 100. Putting the working-age population on top inverts the ratio.",
    "“A farmer who has no work between harvests is …” — seasonally unemployed. Frictional is between jobs, structural is a skill mismatch, and cyclical follows a fall in demand.",
    "“The labour force consists of …” — the employed plus those actively seeking work. It does not include full-time students, retirees or people who have given up looking.",
    "“The HDI is made up of …” — income, life expectancy and schooling. Adding a fourth component, or dropping schooling, is the standard distractor.",
  ),
  trap-summary: "Three slips. (1) Treating growth and development as synonyms, when the paper's whole topic exists to separate them. (2) Putting the working-age population on top of the dependency ratio. (3) Counting the whole population as the labour force, which inflates the unemployment rate in one direction and the participation rate in the other.",
)

// ============================================================================
== 5.1 Growth and Development

Economic growth is a rise in real national output. Economic development is an
improvement in the welfare of the people, of which growth is one ingredient among
several. The two are related, and they are not the same, and the difference is the point
of the topic.

#diagram-fig("diagrams/ch05_growth_development.svg",
  "Growth is one number; development is a condition. A country can have the first without the second, and for a time the second without the first.", width: 100%)

#rule-box("The distinction in one sentence each")[
  + *Growth* is measured: real GDP, or real GDP per head, over time.
  + *Development* is judged: income per head *plus* health, education, employment, inequality and freedom from poverty.
  + *Development implies some growth*, because health and schooling have to be paid for — but growth does not guarantee development, because the output may be concentrated, wasted or environmentally destructive.
]

#table(
  columns: (1.6fr, 1.75fr, 1.6fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Indicator],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it measures],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it misses],
  ),
  [Real GDP per capita], [output per person, at constant prices], [distribution, unpaid work, the informal sector],
  [Human Development Index], [income, life expectancy and schooling, averaged], [inequality, environmental quality, political freedom],
  [Gini coefficient], [inequality of income, from 0 to 1], [absolute poverty, and everything non-monetary],
  [Literacy and enrolment], [schooling reached], [the quality of what was taught],
  [Life expectancy], [health outcomes in one number], [morbidity, disability and the burden of care],
)

#concept-box("The HDI, computed")[
  Each component is scaled from 0 to 1 between a minimum and a maximum, and the index is
  the *geometric* mean of the three: HDI = (I_income × I_health × I_education)^(1/3). The
  geometric mean matters, because a country cannot buy a good HDI with income alone — a
  weak component drags the whole index down.

  For exam purposes the arithmetic is rarely required; what is required is that you can
  name the three components and explain why a country with a high income per head can sit
  low in the table.
]

== 5.2 Population Structure

Population is not simply a number. Its *structure* — how many children, how many workers,
how many dependants — determines what an economy must spend and what it can produce.

#diagram-fig("diagrams/ch05_population.svg",
  "A pyramid with a broad base: many children, few elderly. The dependency burden is high, and the labour force grows quickly as each cohort reaches working age.", width: 88%)

#rule-box("The two ratios the paper asks for")[
  + *Dependency ratio* = (population under 15 + population over 64) ÷ population aged 15–64 × 100.
  + *Labour-force participation rate* = labour force ÷ working-age population × 100.
  + *Labour force* = the employed + the unemployed who are actively seeking work. Students in full-time education, retirees and discouraged workers are outside it.
]

#diagram-fig("diagrams/ch05_transition.svg",
  "The demographic transition. Death rates fall first, so the gap between births and deaths widens and the population grows fastest in stage two.", width: 92%)

#trap-box("Three population traps")[
  + *Equating a large population with a large labour force.* A country where half the population is under 15 has a small labour force relative to its size, and a high dependency ratio.
  + *Reading population growth as economic growth.* A growing population raises total output and lowers output per head if it grows faster than the economy.
  + *Forgetting that a youthful pyramid is temporary.* Today's dependants are tomorrow's labour force: the question is whether the jobs and schools will be there when they arrive.
]

== 5.3 Employment and Unemployment

Unemployment is a situation in which people who are willing and able to work at the
going wage cannot find work. The definition has three parts — willing, able, and at the
going wage — and each part rules out a group that is sometimes wrongly counted.

#concept-box("The three parts of the definition, and who each one excludes")[
  + *Willing.* A person who has stopped looking is not unemployed in the official sense; they have left the labour force, which is why a falling participation rate can hide a rising problem.
  + *Able.* A student in full-time education or a person too ill to work is outside the count, however much they might wish to earn.
  + *At the going wage.* Someone who would work only at twice the market rate is not counted as unemployed, because the labour market has not failed them — they have priced themselves out of it.
]

#diagram-fig("diagrams/ch05_unemployment.svg",
  "The four kinds of unemployment. The name tells you the cure: retraining, reflation, planning, or nothing at all.", width: 100%)

#rule-box("The four types, each with its cause and its cure")[
  + *Frictional* — between jobs, or moving from school to work. Short, and unavoidable in any working labour market. The cure is better information and faster matching.
  + *Structural* — the skill or the industry no longer exists where it is needed: a textile worker in a country that now imports cloth. The cure is retraining and redeployment, and it is slow.
  + *Cyclical (demand-deficient)* — demand has fallen in a recession, so firms shed labour. The cure is reflation: fiscal or monetary expansion.
  + *Seasonal* — the work itself follows a calendar. The cure is planning and diversification, not stimulus.
]

#table(
  columns: (1.35fr, 1.75fr, 1.85fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Measure],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it hides],
  ),
  [Unemployment rate], [unemployed ÷ labour force × 100], [discouraged workers who have stopped looking are not counted],
  [Underemployment], [people working fewer hours or below their skill level than they want], [the part-time worker who wants full-time work counts as employed],
  [Participation rate], [labour force ÷ working-age population × 100], [a falling rate can mask a rising unemployment problem],
  [Employment rate], [employed ÷ working-age population × 100], [the same, from the other side],
)

#diagram-fig("diagrams/ch05_ppc_growth.svg",
  "Growth moves the production possibility curve outwards; development asks whether the economy is operating on it or inside it, and who receives what it produces.", width: 90%)

#worked-example(
  1,
  "The dependency ratio",
  [A country has 60 million people under 15, 110 million aged 15 to 64 and 5 million over 64. Its dependency ratio is approximately

    A. 59 per cent \\
    B. 41 per cent \\
    C. 55 per cent \\
    D. 170 per cent],
  [
    *Step 1 — the numerator.* Dependants are the young and the old: 60 + 5 = 65 million.

    *Step 2 — the denominator.* The working-age population is 110 million.

    *Step 3 — the division.* 65 ÷ 110 × 100 = 59.1 per cent.

    *Step 4 — kill the rest.* B is the reciprocal (110 ÷ 185), C is 60 ÷ 110 without the elderly, and D divides by the wrong base altogether.

    *Check.* Roughly 59 dependants for every 100 workers is a high ratio, which is what a young population produces. The answer is *A*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Growth without development",
  [A country's real GDP rises by 8 per cent in a year, but life expectancy falls and income becomes more concentrated. This is best described as

    A. economic development without growth \\
    B. economic growth without development \\
    C. both growth and development \\
    D. neither growth nor development],
  [
    *Step 1 — is there growth?* Yes: real GDP rose by 8 per cent, which is growth by definition.

    *Step 2 — is there development?* Development requires improving welfare, and here life expectancy fell and distribution worsened, so welfare did not improve on two of the standard measures.

    *Step 3 — the label.* Output rose and welfare did not, which is exactly growth without development.

    *Check.* Growth is the number; development is the condition of the people. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Naming the unemployment",
  [A construction worker is laid off because a recession has reduced building activity across the country. Her unemployment is

    A. frictional \\
    B. structural \\
    C. cyclical \\
    D. seasonal],
  [
    *Step 1 — what caused it?* A fall in aggregate demand during a recession, not a change in her skill and not the calendar.

    *Step 2 — match the cause to the type.* Unemployment caused by the business cycle is cyclical, also called demand-deficient.

    *Step 3 — kill the rest.* A is between jobs, which is not the case; B would be a skill the industry no longer needs; D would be work that stops at a fixed season, which construction in most climates does not.

    *Check.* Recession → demand falls → cyclical unemployment. The answer is *C*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  4,
  "The labour force and the rate",
  [An economy has 40 million employed people, 5 million unemployed people actively seeking work, and 15 million people outside the labour force. The unemployment rate is

    A. 5.0 per cent \\
    B. 11.1 per cent \\
    C. 12.5 per cent \\
    D. 33.3 per cent],
  [
    *Step 1 — define the labour force.* Employed plus unemployed: 40 + 5 = 45 million. The 15 million outside it are not counted.

    *Step 2 — divide.* 5 ÷ 45 × 100 = 11.1 per cent.

    *Step 3 — kill the rest.* A divides by the total population of 60 million, which understates the rate; C divides by the employed only; D divides the unemployed by the 15 million outside the labour force, which is meaningless.

    *Check.* The denominator is always the labour force, never the population. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "The HDI and its components",
  [The human development index combines

    A. income per capita, life expectancy and schooling \\
    B. income per capita, population growth and employment \\
    C. inflation, unemployment and growth \\
    D. literacy, fertility and urbanisation],
  [
    *Step 1 — recall the three.* The HDI is built from a standard of living, a long and healthy life, and knowledge.

    *Step 2 — match.* Income per capita measures the first, life expectancy the second, and schooling — mean years and expected years — the third.

    *Step 3 — kill the rest.* B adds population and employment, which are not in the index; C lists macroeconomic outcomes; D lists demographic and social indicators, none of which is the income component.

    *Check.* Income, health, schooling — three components, averaged. The answer is *A*.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: development, population and unemployment.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Growth is a rise in real output; development is an improvement in welfare, of which growth is one ingredient. The human development index combines income per head, life expectancy and schooling, and a country can be rich and still score badly on it. Population matters through its structure, not only its size: a broad-based pyramid means a high dependency ratio, a fast-growing labour force and heavy spending on schools before the workers arrive. The dependency ratio puts the young and the old over the working-age population; the labour force is the employed plus those actively seeking work, and everyone outside it is not unemployed but outside the labour force. Unemployment comes in four kinds — frictional, structural, cyclical and seasonal — and the name of the kind is the name of the cure: information, retraining, reflation, or planning.
  ]
]

== 5.4 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [Economic development is best measured by], [real gross domestic product], [the human development index], [the size of the labour force], [the balance of trade])

#mcq(2, [The dependency ratio is calculated as], [dependants divided by the working-age population, times 100], [the working-age population divided by dependants, times 100], [the labour force divided by the population, times 100], [unemployed people divided by the labour force, times 100])

#mcq(3, [A teacher who loses her job because her school closes during a nationwide recession is], [frictionally unemployed], [structurally unemployed], [cyclically unemployed], [seasonally unemployed])

#mcq(4, [The labour force consists of], [all persons of working age], [the employed plus those actively seeking work], [the employed only], [all persons above the age of 15])

#answer-key-grid(("B", "A", "C", "B"))

#answer-notes((
  ("B", [The HDI combines income, health and schooling, which is what development means. A measures growth only, C measures the size of the workforce, and D measures external trade.]),
  ("A", [Dependants over the working-age population, times 100. B inverts the ratio, C is the participation rate, and D is the unemployment rate.]),
  ("C", [The cause is a fall in national demand, which is cyclical unemployment. A is between jobs, B is a skill the economy no longer needs, and D is work that stops with the season.]),
  ("B", [The employed plus those actively seeking work. A and D include people who are not available for work, and C omits the unemployed who are looking.]),
))

#chapter-checklist("Before you leave Chapter 5", (
  [Define growth and development, and give one example of each without the other.],
  [Name the three components of the HDI and say what each one measures.],
  [Compute a dependency ratio and explain what a high one implies for public spending.],
  [Define the labour force, and list the groups outside it.],
  [Name the four kinds of unemployment and match each to its cure.],
  [Explain why a falling participation rate can hide a worsening labour market.],
))

#concept-box("Carry this into Chapter 6")[
  Chapters 1 to 5 have described the economy; Chapter 6 names the institutions that
  measure and manage it. It is the shortest chapter and the one that most often decides
  the difference between a good score and a very good one, because the data questions at
  the end of a paper are answered from exactly this material.
]

#include "drill_ch05.typ"
