# Study Materials — Build Notes

The series is written in Typst and built to A4 PDF with a single `build.py` per
volume. Every volume shares `template.typ` (house style: navy banners, mint
focus panels, DejaVu Sans headings, Libertinus body) so the books read as one
set.

## Chemistry (4 volumes planned)

| Volume | Title | Status |
|---|---|---|
| 1 | Matter, Atoms & Bonding | **complete — 142 pp** |
| 2 | Physical Chemistry | not started |
| 3 | Inorganic Chemistry | not started |
| 4 | Organic Chemistry & Practical | not started |

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
