# JAMB Biology — Study Series Plan

Same house style as the Mathematics series (`../../mathematics/`): chapter opener →
exam radar → concepts → labelled diagrams → graded worked examples → JAMB trap boxes →
checklist → recap card → two-minute CBT set → drill with key, question map and full
solutions. Each volume ends with two full CBT mocks and a set of appendices.

## Volume 1 — Cells, Nutrition & Transport — **COMPLETE** (190 pp)

| Ch | Title | File | Status |
|----|-------|------|--------|
| 1 | The Variety of Living Things | `ch01_variety.typ` | done |
| 2 | Cell Structure and Organisation | `ch02_cell.typ` | done |
| 3 | Cell Division | `ch03_division.typ` | done |
| 4 | Plant Nutrition: Photosynthesis | `ch04_photosynthesis.typ` | done |
| 5 | Animal Nutrition and Digestion | `ch05_digestion.typ` | done |
| 6 | Transport in Plants | `ch06_transport_plants.typ` | done |
| 7 | Transport in Animals | `ch07_transport_animals.typ` | done |
| 8 | Respiration and Gas Exchange | `ch08_respiration.typ` | done |
| 9 | Excretion and Homeostasis | `ch09_excretion.typ` | done |
| 10 | Support and Movement | `ch10_support.typ` | done |

Back matter: end-of-chapter drills for all ten chapters (300 questions), Mock Examination 1,
Mock Examination 2 (40 questions each), Appendix A — 60 rapid-fire recall pairs,
Appendix B — The Final Forty, Appendix C — the 120-question master bank,
Appendix D — consolidated answer keys. Total 600 unique questions.

## Volume 2 — Coordination, Reproduction & Growth — **COMPLETE** (193 pp)

| Ch | Title | File | Status |
|----|-------|------|--------|
| 1 | Nervous Coordination and the Neurone | `ch01_nervous.typ` | done |
| 2 | The Brain, the Spinal Cord and the Sense Organs | `ch02_senses.typ` | done |
| 3 | Hormones and Chemical Control | `ch03_hormones.typ` | done |
| 4 | Reproduction in Plants | `ch04_plant_repro.typ` | done |
| 5 | Reproduction in Animals | `ch05_animal_repro.typ` | done |
| 6 | Growth and Development | `ch06_growth.typ` | done |
| 7 | Health, Disease and Immunity | `ch07_health.typ` | done |
| 8 | Micro-organisms, Decay and Industry | `ch08_microbes.typ` | done |
| 9 | Drugs, First Aid and Public Health | `ch09_drugs.typ` | done |
| 10 | Practical Biology Skills | `ch10_practical.typ` | done |

Diagrams so far: cover banner, UTME weight chart, neurone, synapse, impulse pathway,
brain, eye, ear, reflex arc, and recap cards for chapters 1–2.

Build: `cd vol2 && python generate_diagrams.py && python build.py`.

## Volume 3 — Heredity, Evolution, Ecology & Applied Biology — COMPLETE

189 pp, 4.07 MB, 0 warnings, 147 TOC entries, 39 diagrams, 600 distinct items
(300 drill + 300 mock/bank, no question used twice).

| Ch | Title | File | Status |
|----|-------|------|--------|
| 1 | Genetics: Chromosomes, Genes and Inheritance | `ch01_genetics.typ` | done |
| 2 | Inheritance Patterns, Probability and Sex Linkage | `ch02_inheritance.typ` | done |
| 3 | Variation, Mutation and Adaptation | `ch03_variation.typ` | done |
| 4 | Evolution and the Evidence for It | `ch04_evolution.typ` | done |
| 5 | Ecology, Populations and Sampling | `ch05_ecology.typ` | done |
| 6 | Interactions, Food Webs and Energy Flow | `ch06_interactions.typ` | done |
| 7 | Nutrient Cycles, Succession and Biomes | `ch07_cycles.typ` | done |
| 8 | Human Influence, Pollution and Conservation | `ch08_conservation.typ` | done |
| 9 | Applied Biology: Crops, Pests and Livestock | `ch09_applied.typ` | done |
| 10 | Practical Skills and the Practical Paper | `ch10_practical.typ` | done |

Back matter: Mock Examination 1 (40), Mock Examination 2 (40), Appendix A rapid-fire
pairs (60), Appendix B The Final Forty (40), Appendix C the 120-question master bank,
Appendix D consolidated keys.

Item banks: `tools/bank_bio3_c01.py` … `c10.py`, each holding `DRILL_n` (30) and
`PAPER_n` (30). `tools/drills_bio3.py` renders the ten drills; `tools/papers_bio3.py`
deals the 300 paper items round-robin into the mocks and appendices.
`tools/fit_solutions.py` tunes `_fit.json` so no solution run ends in an orphan page.

Diagrams (`diagrams_gen/figs_v3_a…d.py`): cover banner, UTME weight chart, chromosome,
meiosis, monohybrid, test cross, pedigree, ABO groups, variation, mutation, homologous
structures, natural selection, fossil record, ecosystem, sampling methods, food web,
three pyramids, symbiosis, carbon cycle, nitrogen cycle, succession, pollution table,
conservation, crop rotation, pest control, ruminant stomach, microscope, food tests,
graph choice — plus a recap card for every chapter.

## Build

```bash
cd study_materials/biology/vol1
python generate_diagrams.py      # writes diagrams/*.svg
python build.py                  # writes JAMB_Biology_Volume1_*.pdf

cd study_materials/biology/vol2
python generate_diagrams.py
python build.py                  # writes JAMB_Biology_Volume2_*.pdf

cd study_materials/biology/vol3
python generate_diagrams.py
python tools/drills_bio3.py
python tools/papers_bio3.py
python build.py                  # writes JAMB_Biology_Volume3_*.pdf
```

`build.py` skips any chapter file that does not exist yet, so the volume compiles at
every stage of writing.
