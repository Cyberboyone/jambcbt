# JAMB Government — Study Series Plan

Same house style as the Biology, Chemistry, Mathematics, Physics, English,
Economics, Commerce and Accounting series: chapter opener → focus radar → numbered
sections with labelled figures and rule boxes → worked examples (foundation, UTME
standard, JAMB challenge) → JAMB trap boxes → recap card → two-minute CBT set → a
40-question drill with a key and a full solution for every question. Each volume
ends with two 40-question CBT mocks, appendices A–K, and a printed Contents page
whose page numbers are baked in at build time.

Government is the paper that rewards a candidate for knowing *which* organ does
*what*, and punishes the one who knows the words but not the division. The series
is built around the two questions the examiner keeps asking: **who has the power**,
and **where does the constitution say it stops**. Volume 1 answers them in general
terms; Volume 2 answers them with the Nigerian dates, regimes and institutions.

## The volumes

| Vol. | Title | Coverage | Status |
|---|---|---|---|
| 1 | The State, the Constitution and the Organs of Government | the study of government, types of government and ideologies, constitutions and the Nigerian constitutional chain, federalism, the three organs, parties, pressure groups and elections, citizenship and rights, public administration, and Nigeria in the world | **delivered — 183 pp** |
| 2 | The Nigerian Story — Emirs, Governors and Generals | pre-colonial administration, colonial rule and indirect rule, nationalism and independence, federalism in practice, the military in politics, public administration, foreign policy, and elections and electoral administration | **delivered — 191 pp** |

Volume 1 carries all four parts of the syllabus in outline. Volume 2 takes the
Nigerian half and slows it down: the dates, regimes, lists and institutions that a
candidate can recite badly and answer precisely. The two volumes are disjoint in
content and in question pool.

## Volume 1 — chapter table

| Ch | Title | Sections | Status |
|----|-------|----------|--------|
| 1 | The Study of Government | what government is; state, nation, society and government; the four elements of the state; why we study government; forms of government; political ideologies; constitution and constitutionalism; rule of law, separation of powers, checks and balances; sovereignty, legitimacy and mandate; two-minute set; drill | **done** |
| 2 | Constitutions and Constitutional Development in Nigeria | what a constitution is and does; written and unwritten, rigid and flexible; the Clifford, Richards, Macpherson and Lyttleton constitutions; independence 1960, republican 1963, 1979 presidential, 1999; features of the 1999 Constitution; federalism and the three legislative lists; revenue allocation and state creation; two-minute set; drill | **done** |
| 3 | The Organs of Government | separation of powers and checks and balances; the legislature — functions, unicameral and bicameral, the National Assembly; the executive — parliamentary and presidential, functions and control; the judiciary — functions, independence, judicial review, the hierarchy of courts; delegated legislation; two-minute set; drill | **done** |
| 4 | Political Parties, Pressure Groups and Elections | parties and their functions; cadre and mass parties; one-, two- and multi-party systems; pressure groups, types and methods; the difference the examiner wants; elections, franchise and electoral systems; INEC and the free-and-fair test; public opinion and the media; two-minute set; drill | **done** |
| 5 | Citizenship, Rights and Public Administration | citizenship by birth, registration and naturalisation; dual citizenship and duties; fundamental human rights and their limits; the civil service — features, structure and control; public corporations; local government, its functions and its finances; two-minute set; drill | **done** |
| 6 | Nigeria in the International Community | foreign policy and its determinants; Nigeria's objectives and the Africa centre-piece; the concentric circles; instruments of policy; the UN and its organs; the AU, ECOWAS, the Commonwealth and OPEC; two-minute set; drill | **done** |

## Volume 2 — chapter table

| Ch | Title | Sections | Status |
|----|-------|----------|--------|
| 1 | Pre-Colonial Administration | why the systems are examinable; the Hausa–Fulani emirate; the Yoruba chieftaincy; the Igbo village republic; what the three systems share and what limited the ruler; two-minute set; drill | **done** |
| 2 | Colonial Rule | three phases, one direction; the instruments of colonial control; indirect rule, what it was and what it rested on; direct rule, assimilation and the alternative; the legacy; two-minute set; drill | **done** |
| 3 | Nationalism and Independence | the forces that produced nationalism; the parties and the leaders; the constitutional road, 1922 to 1960; the 1959 election and the coalition; the First Republic and its collapse; two-minute set; drill | **done** |
| 4 | Federalism in Practice | why Nigeria is federal; the three lists; the federation changes shape; revenue allocation; federal character and local government; worked questions; two-minute set; drill | **done** |
| 5 | The Military in Politics | what a coup is; why soldiers intervene; the regimes in order; how military government ruled; what military rule did to the federation; worked questions; two-minute set; drill | **done** |
| 6 | Public Administration | what public administration is; the civil service; reform and control; public corporations; local government; accountability institutions; worked questions and two-minute set; drill | **done** |
| 7 | Foreign Policy | what foreign policy is and what shapes it; the concentric circles; the instruments; the record and the limits; foreign policy and the citizen; worked questions and two-minute set; drill | **done** |
| 8 | Elections and Administration | why elections matter; the electoral systems; INEC; the electoral cycle; free and fair; the law and the petition; worked questions and two-minute set; drill | **done** |

Back matter, both volumes: two 40-question CBT mocks with answer sheets, marking
bands, block diagnostics and score logs; Appendix A (rapid-fire pairs plus the plan);
Appendix B (the master bank); Appendix C (consolidated keys); Appendix D (the dates
file); Appendix E (the institutions file); Appendix F (the definitions file);
Appendix G (model answers to structured questions); Appendix H (the study plan);
Appendix I (the comparison tables); Appendix J (the Nigeria file); Appendix K (the
trap catalogue and the playbook).

## Question pools

| Pool | Volume 1 | Volume 2 |
|---|---|---|
| Chapter drills | 240 (40 × 6) | 320 (40 × 8) |
| Full papers | 80 (40 × 2) | 80 (40 × 2) |
| Master bank | 120 (20 × 6) | 120 (15 × 8) |
| **Total** | **440** | **520** |

Every item is answered with a note on every option, and the pools are disjoint by
construction: no stem in a paper or the bank appears in a chapter drill, and no stem
in Volume 2 appears in Volume 1. Both claims are checked by `tools/audit.py`.

## Build

From `study_materials/government/vol2/`:

```bash
/home/user/jambcbt/.venv/bin/python diagrams_gen/generate_diagrams.py   # regenerates the 17 SVGs
/home/user/jambcbt/.venv/bin/python tools/check_figs.py                 # canvas-bounds check
/home/user/jambcbt/.venv/bin/python tools/drills_gov2.py                # writes drill_ch01–08.typ
/home/user/jambcbt/.venv/bin/python tools/papers_gov2.py                # writes paper1–2, bank120, answer_keys
/home/user/jambcbt/.venv/bin/python build.py                            # writes the PDF, baking the contents
/home/user/jambcbt/.venv/bin/python tools/audit.py                      # TOC sync, margins, stems, page fill
```

Volume 1 uses the same scripts with `gov1`/`_gov` module names.

## Delivered

| Volume | Pages | Build | Contents |
|---|---|---|---|
| 1 — The State, the Constitution and the Organs of Government | 183 | 4.4 MB, 0 warnings | six chapters, 2 papers, appendices A–K, Contents baked on one page at p. 9 |
| 2 — The Nigerian Story — Emirs, Governors and Generals | 191 | 4.2 MB, 0 warnings | eight chapters, 2 papers, appendices A–K, Contents baked on one page at p. 9 |

Both volumes were rebuilt until three things were true at once: **0 Typst
warnings**, **no skipped includes** (the build silently drops a missing file, so
the skip list is printed at the end of every run), and **no page that is an
accident of layout** — the short pages that remain are section ends, not stranded
headings or orphaned lines. The Contents is a single page in two hand-split
columns, with long titles truncated at a word boundary so that every row is one
line; Typst would otherwise wrap a title into the row beneath it.

The drill answer spacing is tuned by `_fit.json` (read by `tools/drills_gov2.py`);
the pads are per chapter because the eight drills end at different depths.

The PDFs are gitignored, as with the other volumes; the sources, the generators and
the build scripts are committed so any volume can be rebuilt from scratch.
