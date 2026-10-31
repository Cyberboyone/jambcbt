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
| 2 | The National Economy | national income, money and banking, inflation and deflation, public finance and taxation, international trade and the balance of payments, development, population and unemployment | planned |

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

## Volume 2 — The National Economy (planned)

| Ch | Title | Sketch |
|----|-------|--------|
| 1 | National Income | GDP and GNP, the three approaches, the circular flow, real versus nominal, per capita income, the multiplier |
| 2 | Money and Banking | the functions of money, commercial banks and credit creation, the central bank, monetary policy instruments, inflation and deflation |
| 3 | Public Finance and Taxation | the budget, fiscal policy, direct and indirect taxes, incidence, public debt and debt service |
| 4 | International Trade and the Balance of Payments | comparative advantage, tariffs and quotas, devaluation, the current and capital accounts, ECOWAS and AfCFTA |
| 5 | Development, Population and Unemployment | growth versus development, the HDI, population structure, the labour market, the types of unemployment |
| 6 | The Nigerian Economy in Figures | the institutions (CBN, NBS, FIRS, SEC), the data the paper quotes, and the two full papers |

Volume 2 reuses the same template, the same drill generator and the same appendices,
with its own diagram set (circular flow, money multiplier, Phillips curve, Laffer
curve, tariff diagram, BOP accounts, population pyramid, HDI scatter).

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

Three house-style points matter more in this volume than in the science ones.

1. **Every option is explained.** The drill and paper solutions name why the right
   answer is right and why each distractor is wrong, because the paper reuses the same
   four distractors year after year.
2. **Every calculation is shown twice.** A worked example ends in a *Check* line that
   reaches the same answer by a second route — substitution, a shortcut, or the
   direction of the change.
3. **The curves are drawn, not described.** Thirty-one SVG diagrams are generated from
   script, checked for canvas bounds, and each carries a caption that says what the
   examiner asks about it.

The PDF is gitignored, as with the other volumes; the sources, the generators and the
build script are committed so any volume can be rebuilt from scratch.
