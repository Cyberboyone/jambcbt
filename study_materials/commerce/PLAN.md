# JAMB Commerce — Study Series Plan

Same house style as the Biology, Chemistry, Mathematics, Physics, English, Economics
and Government series: chapter opener → focus radar → numbered sections with labelled
figures and rule boxes → four worked examples (foundation, UTME standard, JAMB
challenge) → JAMB trap boxes → recap card → two-minute CBT set with a key and notes →
a 40-question drill with a key and a full solution for every question. Each volume ends
with two 40-question CBT mocks, appendices A–I, and a printed Contents page whose page
numbers are baked in at build time.

Commerce is the widest syllabus in the commercial group: it asks about every business
unit, every document and every institution in the chain from the farm to the shop
counter. The volume is therefore organised by the chain itself rather than by topic
list, so that a candidate can walk from production to consumption in order.

## The volumes

| Vol. | Title | Coverage | Status |
|---|---|---|---|
| 1 | The Business World — Trade, Units and the Aids to Trade | scope of commerce and the chain of distribution; the sole trader, partnership and cooperative; companies and public enterprise; home trade; foreign trade; the six aids to trade; business finance and the documents of trade; government, the consumer and ethics | **delivered — 180 pp** |
| 2 | Business Practice and the Mock Papers | intended companion: business calculations in depth, commercial arithmetic, office practice, the Nigerian business environment, and a bank of full-length timed papers | planned |

## Volume 1 — The Business World

| Ch | Title | Sections | Status |
|----|-------|----------|--------|
| 1 | The Scope of Commerce | what commerce is; production and its three levels; industrial and commercial occupations; trade and its divisions; the chain of distribution; four worked questions; two-minute set; drill | **done** |
| 2 | Sole Trader, Partnership and Cooperative | the sole proprietorship; the partnership and the deed; the cooperative society; comparing the three; four worked questions; two-minute set; drill | **done** |
| 3 | Companies and Public Enterprise | incorporation and what changes; private and public companies; share capital and loan capital; public corporations and public utilities; four worked questions; two-minute set; drill | **done** |
| 4 | Home Trade | home trade and its two halves; the retailer; large-scale retailing; discounts and mark-up; four worked questions; two-minute set; drill | **done** |
| 5 | Foreign Trade | the shape of foreign trade; the balance of trade and the balance of payments; restrictions on trade; the documents; four worked questions; two-minute set; drill | **done** |
| 6 | Aids to Trade | the six aids and the six obstacles; banking; insurance; transport, warehousing, advertising and communication; four worked questions; two-minute set; drill | **done** |
| 7 | Business Finance and Documents | fixed and working capital; shares, debentures and the stock exchange; the documents of one order; four worked questions; two-minute set; drill | **done** |
| 8 | Government, the Consumer and Ethics | the four instruments; taxation; public enterprise; the consumer; business ethics and social responsibility; four worked questions; two-minute set; drill | **done** |

Back matter: two 40-question CBT mocks (Paper 1 *The Market Under Pressure*, Paper 2
*Documents, Discounts and the Consumer*) with answer sheets, marking bands, section
diagnostics and score logs; Appendix A (60 rapid-fire pairs in three tables — the
definitions, the figures and formulas, and the facts about the organisation of trade);
Appendix B (the 120-question master bank, 15 per chapter); Appendix C (consolidated
keys, the letter-count audit and the marking-slip diagnosis); Appendix D (glossary of
about 120 terms plus twelve confusable pairs); Appendix E (six classification tables —
industry and commerce, the three units, the aids and their obstacles, the documents in
order, the taxes and agencies, the channels of distribution); Appendix F (eight model
answers beside the half-answer they replace); Appendix G (six-week plan, late-start
compression, progress tracker, ten-day countdown); Appendix H (twenty-five traps in the
paper's own words plus a ten-question trap self-test); Appendix I (the exam-day
playbook).

## Build chain

```
python3 diagrams_gen/generate_diagrams.py     # 17 SVGs into diagrams/
python3 tools/drills_com1.py                  # eight drills, 40 items each
python3 tools/papers_com1.py                  # two papers, the 120 bank, the keys
python3 build.py                              # PDF, TOC numbers baked in, 0 warnings
python3 tools/tune_fit.py --rounds 1          # pads the solution runs to the page foot
```

The Contents page and the "Where Everything Is" table are verified against the PDF
outline after the last build: every chapter, paper and appendix is checked against the
page on which it actually begins.

## Diagrams (17)

Cover banner; one concept figure each for the eight chapters (the scope tree, the three
units compared, the company family, the channels of distribution, the balance of
payments, the aids to trade wheel, the capital pyramid, the four instruments of
government); and eight recap cards, one per chapter.

## Question count

| Bank | Items |
|---|---|
| Eight chapter drills | 320 |
| Two full papers | 80 |
| Master bank, Appendix B | 120 |
| **Solved questions in the volume** | **520** |

Every item carries a key letter and a written solution; the keys are balanced by a
deterministic shuffle so that no letter runs away with a paper, and the consolidated
keys in Appendix C print the letter distribution of every bank in the volume.
