# Study Materials — Build Notes

The series is written in Typst and built to A4 PDF with a single `build.py` per
volume. Every volume shares `template.typ` (house style: navy banners, mint
focus panels, DejaVu Sans headings, Libertinus body) so the books read as one
set.

## Chemistry (4 volumes planned)

| Volume | Title | Status |
|---|---|---|
| 1 | Matter, Atoms & Bonding | **complete — 143 pp** |
| 2 | Physical Chemistry | **complete — 165 pp** |
| 3 | Inorganic Chemistry | **complete — 175 pp** |
| 4 | Organic Chemistry & Practical | **complete — 177 pp** |

### Volume 4 — contents

Front matter (series map, three habits, twelve question types, syllabus
mapping, how to use, printed Contents page with baked page numbers,
12-question diagnostic), then six chapters:

1. Alkanes and Crude Oil
2. Alkenes and Alkynes
3. Alcohols and Carboxylic Acids
4. Esters, Soaps and Polymers
5. Carbohydrates, Proteins and Food
6. Practical Chemistry

Back matter: two 40-question CBT mocks, Appendix A (40 rapid-fire pairs),
Appendix B (120-question master bank), Appendix C (consolidated keys),
Appendix D (data, formulae and constants), Appendix E (the functional-group
map), Appendix F (glossary), Appendix G (revision planner and score tracker),
Appendix H (reagents, conditions and equations), Appendix I (structured
questions with model answers), Appendix J (the twelve traps, worked),
Appendix K (exam-day playbook). 40 diagrams, all drawn from script in
`diagrams_gen/`.

Item totals: **240 end-of-chapter drill questions** (40 per chapter), 80 mock
questions, 40 rapid-fire pairs and a 120-question bank — every option
explained in the solutions. The answer key of every drill and paper is spread
across A–D, with no run of four identical answers.

### Volume 4 — build

```bash
cd study_materials/chemistry/vol4
python generate_diagrams.py        # writes diagrams/*.svg
python tools/drills_chem4.py       # writes drill_ch01–06.typ
python tools/papers_chem4.py       # writes mock_ch11, mock2, rapid_fire, bank120, answer_keys
python tools/fit_solutions.py      # tunes _fit.json, then rebuilds until every tail page is full
python build.py                    # writes JAMB_Chemistry_Volume4_Organic_Chemistry_Practical.pdf
```

### Volume 3 — contents

Front matter (series map, three habits, twelve question types, syllabus
mapping, how to use, printed Contents page with baked page numbers,
12-question diagnostic), then six chapters:

1. Metals and the Reactivity Series
2. Groups 1 and 2
3. Aluminium, Iron and Steel
4. Hydrogen, Oxygen and Nitrogen
5. Sulphur and the Halogens
6. Chemical Industry and the Environment

Back matter: two 40-question CBT mocks, Appendix A (40 rapid-fire pairs),
Appendix B (120-question master bank), Appendix C (consolidated keys),
Appendix D (data, series and tests), Appendix E (the reaction map),
Appendix F (glossary), Appendix G (revision planner and score tracker),
Appendix H (equations and conditions), Appendix I (structured questions with
model answers), Appendix J (the twelve traps, worked), Appendix K (exam-day
playbook). 34 diagrams, all drawn from script in `diagrams_gen/`.

Item totals: **240 end-of-chapter drill questions** (40 per chapter), 80 mock
questions, 40 rapid-fire pairs and a 120-question bank — every option
explained in the solutions. The answer key of every drill and paper is spread
across A–D rather than clustered on one letter.

### Volume 3 — build

```bash
cd study_materials/chemistry/vol3
python generate_diagrams.py        # writes diagrams/*.svg
cd tools
python drills_chem3.py             # writes drill_ch01–06.typ
python papers_chem3.py             # writes mock_ch11, mock2, rapid_fire, bank120, answer_keys
python fit_solutions.py            # tunes _fit.json, then rebuilds until every tail page is full
cd ..
python build.py                    # writes JAMB_Chemistry_Volume3_Inorganic_Chemistry.pdf
```

### Volume 2 — contents

Front matter (series map, three habits, twelve question types, syllabus
mapping, how to use, printed Contents page with baked page numbers,
12-question diagnostic), then six chapters:

1. Acids, Bases and Salts
2. Solutions and Solubility
3. Chemical Energetics
4. Rates of Reaction
5. Chemical Equilibrium
6. Redox and Electrochemistry

Back matter: two 40-question CBT mocks, Appendix A (40 rapid-fire pairs),
Appendix B (120-question master bank), Appendix C (consolidated keys),
Appendix D (formula sheet and data), Appendix E (calculation toolkit),
Appendix F (glossary), Appendix G (revision planner and score tracker),
Appendix H (equations and half-equations), Appendix I (structured questions
with model answers), Appendix J (the twelve traps, worked), Appendix K
(exam-day playbook). 25 diagrams, all drawn from script in `diagrams_gen/`.

Item totals: **240 end-of-chapter drill questions** (40 per chapter), 80 mock
questions, 40 rapid-fire pairs and a 120-question bank — every option
explained in the solutions.

### Volume 1 — contents

Front matter (series map, three habits, twelve question types, syllabus
mapping, how to use, 12-question diagnostic), then six chapters:

1. Matter, Separation Techniques and Purity
2. Chemical Combination, the Mole and Formulae
3. Gases and Kinetic Theory
4. Atomic Structure and Isotopes
5. The Periodic Table and Periodicity
6. Chemical Bonding

Back matter: two 40-question CBT mocks, Appendix A (40 rapid-fire pairs),
Appendix B (120-question master bank), Appendix C (consolidated keys),
Appendix D (formula sheet and data), Appendix E (qualitative analysis and gas
tests), Appendix F (glossary), Appendix G (revision planner and score
tracker), Appendix H (formulae and equations), Appendix I (twelve structured
questions with model answers), Appendix J (the twelve traps, worked),
Appendix K (exam-day playbook).

Item totals: **240 end-of-chapter drill questions** (40 per chapter), 80 mock
questions, 40 rapid-fire pairs and a 120-question bank — every option
explained in the solutions.

### Volume 1 — build

```bash
cd study_materials/chemistry/vol1
python generate_diagrams.py        # writes diagrams/*.svg (20 figures)
cd tools
python drills_chem1.py             # writes drill_ch01–06.typ
python papers_chem1.py             # writes mock_ch11, mock2, rapid_fire, bank120, answer_keys
cd ..
python build.py                    # writes JAMB_Chemistry_Volume1_Matter_Atoms_Bonding.pdf
```

`build.py` compiles, reads the PDF outline, rewrites `_toc.typ` and recompiles
until the contents page is stable, so no heading is ever missing from the
contents.

## Biology (3 volumes, complete)

See the volumes in `biology/vol1`–`vol3`; `biology/PLAN.md` has the build
notes for that series.
