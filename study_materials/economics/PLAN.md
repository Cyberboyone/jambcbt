# JAMB Economics — Study Series Plan

Same house style as the Biology, Chemistry, Mathematics, Physics and English series:
chapter opener → focus radar → numbered sections with labelled figures and rule boxes
→ five worked examples (foundation, UTME standard, JAMB challenge) → JAMB trap boxes
→ recap card → two-minute CBT set → a 40-question drill with a key and a full solution
for every question. Each volume ends with two 40-question CBT mocks, appendices A–K,
and a printed Contents page whose page numbers are baked in at build time.

Economics is the commercial subject with the highest cut-off pressure, and it splits
where the syllabus splits: the market on one side, the national economy on the other.
Two volumes, one per half.

## The two volumes

| Vol. | Title | Coverage | Status |
|---|---|---|---|
| 1 | The Market — Scarcity, Demand and Price | scarcity and choice, opportunity cost and the PPC, the factors of production, demand and utility, supply and equilibrium, price controls, elasticity, production and cost, the four market structures | **delivered — 183 pp** |
| 2 | The National Economy — Output, Money, Trade and Development | national income, money and banking, inflation and deflation, public finance and taxation, international trade and the balance of payments, development, population and unemployment, and the Nigerian economy in figures | **delivered — 179 pp** |

## Volume 1 — The Market

| Ch | Title | Sections | Status |
|----|-------|----------|--------|
| 1 | The Economic Problem | scarcity, choice and the three questions; opportunity cost; the production possibility curve; the factors of production and their rewards; the three economic systems; two-minute set; drill | **done** |
| 2 | Demand and Utility | the law of demand and the demand schedule; movement along and shift of; the three exceptions (Giffen, Veblen, expectation); total, average and marginal utility; consumer equilibrium; two-minute set; drill | **done** |
| 3 | Supply and Equilibrium | the law of supply; determinants; equilibrium, surplus and shortage; the four cases every shift question uses; price controls, taxes and subsidies; two-minute set; drill | **done** |
| 4 | Elasticity | measuring PED; the revenue test; determinants; income and cross elasticity; price elasticity of supply; two-minute set; drill | **done** |
| 5 | Production and Cost | the short run, the long run and the production function; diminishing returns; the seven cost curves; revenue, break-even and maximum profit; the shut-down point and scale; two-minute set; drill | **done** |
| 6 | Market Structures | the four tests that name a market; perfect competition and the price taker; monopoly; oligopoly and the kinked demand curve; the comparison the examiner wants; two-minute set; drill | **done** |

Back matter: two 40-question CBT mocks with answer sheets, marking bands, block
diagnostics and score logs; Appendix A (60 rapid-fire pairs in three tables plus the
seven-day drill plan); Appendix B (the 120-question master bank, 20 per chapter);
Appendix C (consolidated keys plus the letter-count audit and the marking-slip
diagnosis); Appendix D (seven quick-revision tables — chapters, curves, the four
elasticities, the seven costs, the four structures, gainers and losers, numbers);
Appendix E (the graph file — every diagram with the axes, the curves and the sentence
to write); Appendix F (formula sheet, micro and macro, with a worked substitution
beside each); Appendix G (glossary of ~110 terms plus twelve confusable pairs);
Appendix H (six-week plan, late-start compression, progress tracker, ten-day countdown);
Appendix I (twelve model calculations with checks); Appendix J (33 traps plus a
ten-question trap self-test); Appendix K (the exam-day playbook).

## Volume 2 — The National Economy

| Ch | Title | Sections | Status |
|----|-------|----------|--------|
| 1 | National Income | what national income measures; the three methods of measurement; the circular flow; real, nominal and per capita; the multiplier; two-minute set; drill | **done** |
| 2 | Money and Banking | what money is and what it does; commercial banks and the creation of credit; the central bank; inflation and deflation; two-minute set; drill | **done** |
| 3 | Public Finance and Taxation | the budget and its three positions; fiscal policy; direct and indirect taxes; incidence and the Laffer curve; the public debt; two-minute set; drill | **done** |
| 4 | International Trade and the Balance of Payments | why countries trade; comparative advantage; protection — tariffs, quotas and the rest; devaluation and the J-curve; the balance of payments; two-minute set; drill | **done** |
| 5 | Development, Population and Unemployment | growth and development; population structure; employment and unemployment; two-minute set; drill | **done** |
| 6 | The Nigerian Economy in Figures | the institutions; the structure of the economy; the statistics and how to discuss them; two-minute set; drill | **done** |

Back matter: two 40-question CBT mocks (Paper 1 *Output, Money and the Budget*, Paper 2
*Trade, Development and the Data*) with answer sheets, marking bands, section
diagnostics and score logs; Appendix A (60 rapid-fire pairs in three tables plus the
seven-day plan); Appendix B (the 120-question master bank, 20 per chapter); Appendix C
(consolidated keys, the letter-count audit, the marking-slip diagnosis and the key
index); Appendix D (the data file — seven tables, the four national-account
adjustments, the instruments, the taxes, the two accounts, the development indicators
and the five question shapes); Appendix E (the graph file — every figure with the trap
it exposes); Appendix F (the formula sheet, six families with a worked substitution
beside each); Appendix G (glossary of ~150 terms); Appendix H (six-week plan,
late-start compression, progress tracker, ten-day countdown); Appendix I (the
institutions file — who publishes what, and the pairings the examiner offers as traps);
Appendix J (twelve model calculations plus how the paper combines two formulas);
Appendix K (30 traps and the exam-day playbook).

Volume 2 reuses the same template, the same drill generator and the same back-matter
machinery as Volume 1, with its own 35-figure diagram set (circular flow, three
methods, GDP against GNP, real against nominal, the multiplier, the functions of
money, credit creation, the credit multiplier, the central bank, demand-pull and
cost-push, the Phillips curve, the budget, direct and indirect taxes, the Laffer
curve, tax incidence, comparative advantage, a tariff, devaluation, the balance of
payments, growth against development, the population pyramid, the demographic
transition, the four kinds of unemployment, the PPC shifting, the Nigerian
institutions, the weights of the paper and the data table, plus six recap cards).

## Build notes

Volumes live in `study_materials/economics/vol1/` and share `template.typ` with the
rest of the series. Every build runs the generators first — the diagrams, then the
drills and papers, then the PDF.

```bash
cd study_materials/economics/vol1
/home/user/.venv/bin/python diagrams_gen/generate_diagrams.py   # regenerates all 31 SVGs
/home/user/.venv/bin/python tools/check_figs.py                 # canvas-bounds check
/home/user/.venv/bin/python tools/drills_eco1.py                # writes drill_ch01–06.typ
/home/user/.venv/bin/python tools/papers_eco1.py                # writes paper1–2, bank120, answer_keys
/home/user/.venv/bin/python build.py                            # writes the PDF, baking the contents
/home/user/.venv/bin/python tools/tune_fit.py --rounds 1        # tunes _fit.json, then rebuilds
```

Volume 2 is built by the same six commands in `study_materials/economics/vol2/`, with
`drills_eco2.py` and `papers_eco2.py` in place of the Volume 1 pair. Its question pool
is 440 items, disjoint by construction: 240 drill items (40 per chapter), 80 paper
items (40 per paper) and 120 bank items (20 per chapter), each with a note on every
option.

Three house-style points matter more in this volume than in the science ones.

1. **Every option is explained.** The drill and paper solutions name why the right
   answer is right and why each distractor is wrong, because the paper reuses the same
   four distractors year after year.
2. **Every calculation is shown twice.** A worked example ends in a *Check* line that
   reaches the same answer by a second route — substitution, a shortcut, or the
   direction of the change.
3. **The curves are drawn, not described.** Thirty-one SVG diagrams in Volume 1 and
   thirty-five in Volume 2 are generated from script, checked for canvas bounds, and
   each carries a caption that says what the examiner asks about it.

The PDF is gitignored, as with the other volumes; the sources, the generators and the
build script are committed so any volume can be rebuilt from scratch.
