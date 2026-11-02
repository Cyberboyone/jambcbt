# JAMB Government — Study Series Plan

Same house style as the Biology, Chemistry, Mathematics, Physics, English and
Economics series: chapter opener → focus radar → numbered sections with labelled
figures and rule boxes → five worked examples (foundation, UTME standard, JAMB
challenge) → JAMB trap boxes → recap card → two-minute CBT set → a 40-question drill
with a key and a full solution for every question. Each volume ends with two
40-question CBT mocks, appendices A–K, and a printed Contents page whose page
numbers are baked in at build time.

Government is the paper that rewards a candidate for knowing *which* organ does
*what*, and punishes the one who knows the words but not the division. The volume
is therefore built around the two questions the examiner keeps asking: **who has
the power**, and **where does the constitution say it stops**.

## The volume

| Vol. | Title | Coverage | Status |
|---|---|---|---|
| 1 | The State, the Constitution and the Organs of Government | the study of government, types of government and ideologies, constitutions and the Nigerian constitutional chain, federalism, the three organs, parties, pressure groups and elections, citizenship and rights, public administration, and Nigeria in the world | **delivered — 183 pp** |

The six chapters follow the four parts of the JAMB syllabus in order: Part I
(elements of government) in Chapters 1 and 3–5, Part II (political development in
Nigeria) in Chapter 2 and throughout, Part III (foreign policy) and Part IV
(international organisations) in Chapter 6.

## Volume 1 — chapter table

| Ch | Title | Sections | Status |
|----|-------|----------|--------|
| 1 | The Study of Government | what government is; state, nation, society and government; the four elements of the state; why we study government; forms of government; political ideologies; constitution and constitutionalism; rule of law, separation of powers, checks and balances; sovereignty, legitimacy and mandate; two-minute set; drill | **done** |
| 2 | Constitutions and Constitutional Development in Nigeria | what a constitution is and does; written and unwritten, rigid and flexible; the Clifford, Richards, Macpherson and Lyttleton constitutions; independence 1960, republican 1963, 1979 presidential, 1999; features of the 1999 Constitution; federalism and the three legislative lists; revenue allocation and state creation; two-minute set; drill | **done** |
| 3 | The Organs of Government | separation of powers and checks and balances; the legislature — functions, unicameral and bicameral, the National Assembly; the executive — parliamentary and presidential, functions and control; the judiciary — functions, independence, judicial review, the hierarchy of courts; delegated legislation; two-minute set; drill | **done** |
| 4 | Political Parties, Pressure Groups and Elections | parties and their functions; cadre and mass parties; one-, two- and multi-party systems; pressure groups, types and methods; the difference the examiner wants; elections, franchise and electoral systems; INEC and the free-and-fair test; public opinion and the media; two-minute set; drill | **done** |
| 5 | Citizenship, Rights and Public Administration | citizenship by birth, registration and naturalisation; dual citizenship and duties; fundamental human rights and their limits; the civil service — features, structure and control; public corporations; local government, its functions and its finances; two-minute set; drill | **done** |
| 6 | Nigeria in the International Community | foreign policy and its determinants; Nigeria's objectives and the Africa centre-piece; the concentric circles; instruments of policy; the UN and its organs; the AU, ECOWAS, the Commonwealth and OPEC; two-minute set; drill | **done** |

Back matter: two 40-question CBT mocks with answer sheets, marking bands, block
diagnostics and score logs; Appendix A (60 rapid-fire pairs plus the seven-day
plan); Appendix B (the 120-question master bank, 20 per chapter); Appendix C
(consolidated keys); Appendix D (the dates file); Appendix E (the institutions
file); Appendix F (the definitions file); Appendix G (model answers to structured
questions); Appendix H (the six-week plan); Appendix I (the comparison tables);
Appendix J (the Nigeria file); Appendix K (the trap catalogue and the playbook).

## Build

From `study_materials/government/vol1/`:

```bash
/home/user/jambcbt/.venv/bin/python diagrams_gen/generate_diagrams.py   # regenerates the SVGs
/home/user/jambcbt/.venv/bin/python tools/check_figs.py                 # canvas-bounds check
/home/user/jambcbt/.venv/bin/python tools/drills_gov1.py                # writes drill_ch01–06.typ
/home/user/jambcbt/.venv/bin/python tools/papers_gov1.py                # writes paper1–2, bank120, answer_keys
/home/user/jambcbt/.venv/bin/python build.py                            # writes the PDF, baking the contents
/home/user/jambcbt/.venv/bin/python tools/tune_fit.py --rounds 1        # tunes _fit.json, then rebuilds
```

The question pool is 440 items, disjoint by construction: 240 drill items (40 per
chapter), 80 paper items (40 per paper) and 120 bank items (20 per chapter), each
with a note on every option.

Three house-style points matter more in this subject than in the science ones.

1. **Every option is explained.** The drill and paper solutions name the correct
   principle and then say which misconception each distractor carries, because the
   Government paper recycles the same four confusions every year: the organ that
   *makes* law confused with the one that *executes* it, a written constitution
   confused with a rigid one, a pressure group confused with a party, and
   naturalisation confused with registration.
2. **Every definition is followed by its test.** A candidate who can repeat
   "federalism is a system where powers are shared" but cannot say what is on each
   of the three legislative lists has learnt the words and not the subject.
3. **The Nigerian case is always attached.** Each chapter ends with the Nigerian
   application — the 1999 Constitution, the National Assembly's 109 and 360 seats,
   the 774 local government areas, the 36 states and the FCT — so that a question
   set in Nigeria can be answered from the same page as the general principle.

The PDF is gitignored, as with the other volumes; the sources, the generators and
the build script are committed so any volume can be rebuilt from scratch.

## Delivered

| Volume | Pages | Build | Contents |
|---|---|---|---|
| 1 — The State, the Constitution and the Organs of Government | 183 | 4.4 MB, 0 warnings | six chapters, 2 papers, appendices A–K, Contents baked on one page at p. 9 |

The volume was rebuilt until three things were true at once: **0 Typst warnings**,
**no skipped includes** (the build silently drops a missing file, so the skip list is
printed at the end of every run), and **no page more than a third empty**. The empty
space at the foot of a page is a layout fact, not a text one: Typst will not split an
unbreakable box, so a box that does not fit jumps to the next page and leaves the gap
behind. The fix is either to move the box or to fill the page, which is why the
appendix tails carry the last of their teaching — D.8–D.9, F.6, G.13, H.4, J.6, B.6 —
rather than a blank half-page. The Contents is a single page of 149 rows in two
hand-split columns: Typst fills a whole column before starting the next, so the list
is halved by hand to keep the two columns level.

The drill answer runs are tuned by `_fit.json` (read by `tools/drills_gov1.py`); the
pads there are per chapter because the six drills end at different depths.
