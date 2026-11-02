# JAMB Financial Accounting — Study Series Plan

Same house style as the Biology, Chemistry, Mathematics, Physics, English, Economics,
Government, Literature and Commerce series: chapter opener → focus radar → numbered
sections with labelled figures and rule boxes → four worked examples (foundation, UTME
standard, JAMB challenge) → JAMB trap boxes → recap card → two-minute CBT set with a key
and notes → a 40-question drill with a key and a full solution for every question. Each
volume ends with two 40-question CBT mocks, appendices A–I, and a printed Contents page
whose page numbers are baked in at build time.

Financial Accounting is the one commercial subject where the marks are won by *doing*:
a candidate who cannot balance an account on paper cannot recognise the balanced option
on a screen. Every chapter therefore carries its arithmetic into the worked examples,
and every drill carries a written solution rather than a bare key.

## The volumes

| Vol. | Title | Coverage | Status |
|---|---|---|---|
| 1 | The Books, the Balances and the Statements | nature and concepts of accounting; the equation and double entry; documents, journals, ledger and trial balance; control accounts and bank reconciliation; final accounts of a sole trader with adjustments; correction of errors and suspense; partnership accounts; company accounts and not-for-profit organisations | **in progress** |
| 2 | Costing, Control and the Timed Papers | manufacturing accounts, process and job costing, marginal costing and break-even, budgetary control, incomplete records, public-sector accounting, and a bank of full-length timed papers | planned |

## Volume 1 — The Books, the Balances and the Statements

| Ch | Title | Sections | Status |
|----|-------|----------|--------|
| 1 | The Nature and Scope of Accounting | what accounting is; the users and their questions; the concepts and conventions; the branches; the regulatory framework; worked questions; two-minute set; drill | **chapters next** |
| 2 | The Accounting Equation and Double Entry | the equation; the expanded equation; double entry and the rules; balancing off accounts; worked questions; two-minute set; drill | planned |
| 3 | Documents, Journals and the Trial Balance | source documents; the five books of original entry; the ledger; the trial balance; worked questions; two-minute set; drill | planned |
| 4 | Control Accounts and Bank Reconciliation | sales and purchases ledger control accounts; the cash book; the bank statement; the reconciliation and the adjusted cash book; worked questions; two-minute set; drill | planned |
| 5 | Final Accounts of a Sole Trader | the trading account; the profit and loss account; the balance sheet; the six adjustments; depreciation and provisions; worked questions; two-minute set; drill | planned |
| 6 | Correction of Errors and Suspense | the six errors; which ones disturb the trial balance; journal corrections; the suspense account; worked questions; two-minute set; drill | planned |
| 7 | Partnership Accounts | the deed; the appropriation account; capital and current accounts; admission and dissolution; worked questions; two-minute set; drill | planned |
| 8 | Company Accounts and Not-for-Profit Organisations | share capital and debentures; the appropriation account; the two statements; receipts and payments versus income and expenditure; worked questions; two-minute set; drill | planned |

Back matter: two 40-question CBT mocks; Appendix A (60 rapid-fire pairs — definitions,
double-entry rules, formulas); Appendix B (the 120-question master bank, 15 per chapter);
Appendix C (consolidated keys and the letter-count audit); Appendix D (glossary);
Appendix E (classification tables — accounts and their sides, the statements and their
sections, the adjustments, the errors, the ratios); Appendix F (eight model answers
beside the half-answer they replace); Appendix G (six-week plan); Appendix H (twenty-five
traps); Appendix I (the exam-day playbook).

## Build chain

```
python3 diagrams_gen/generate_diagrams.py     # 17 SVGs into diagrams/  ✅ done
python3 tools/drills_acc1.py                  # eight drills, 40 items each
python3 tools/papers_acc1.py                  # two papers, the 120 bank, the keys
python3 build.py                              # PDF, TOC numbers baked in, 0 warnings
python3 tools/tune_fit.py --rounds 1          # pads the solution runs to the page foot
```

## Diagrams — done (17)

Cover banner; one concept figure for each chapter (the users and branches; the equation
with the DEAD CLIC rules; the document-to-trial-balance flow; the two controls; the three
statements and the adjustments; the six errors and which are caught; the appropriation
account and the two partner accounts; share capital against debentures); and eight
recap cards.

## Open work

1. `frontmatter.typ` — cover, series map, how-to-use, "Where Everything Is", the paper
   in numbers, syllabus coverage, generated contents.
2. Chapters 1–8, at the length and depth of the Commerce volume (~230–280 lines each).
3. `tools/bank_acc1_c01…c08.py` (40 items each), `drills_acc1.py`, `mock1_data.py`,
   `mock2_data.py`, `bank_acc1_data.py` (120), `papers_acc1.py`.
4. `build.py`, `rapid_fire.typ`, appendices A–I, `_fit.json` tuning, page-number audit.
