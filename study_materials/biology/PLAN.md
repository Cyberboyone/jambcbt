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

## Volume 2 — Coordination, Reproduction & Growth

1. Nervous coordination and the neurone
2. The brain, spinal cord, reflexes and the sense organs
3. Hormones and chemical control (endocrine glands, plant hormones)
4. Reproduction in plants (flowers, pollination, fertilisation, seeds, dispersal)
5. Reproduction in animals (gametogenesis, the menstrual cycle, fertilisation, pregnancy)
6. Growth and development (growth curves, metamorphosis, measurement)
7. Health, disease and immunity (pathogens, body defences, vaccination)
8. Micro-organisms in industry and decay
9. Drug use, first aid and public health
10. Practical biology skills (microscopy, drawings, food tests, magnification)

## Volume 3 — Heredity, Evolution, Ecology & Applied Biology

1. Genetics: chromosomes, genes and inheritance
2. Inheritance patterns, probability and sex linkage
3. Variation, mutation and adaptation
4. Evolution and the evidence for it
5. Ecology: ecosystems, populations and habitats
6. Ecological interactions, food webs and energy flow
7. Nutrient cycles, succession and the Nigerian biomes
8. Human influence, pollution and conservation
9. Applied biology: crops, pests, diseases and livestock
10. Practical skills and the examination in the hall

## Build

```bash
cd study_materials/biology/vol1
python generate_diagrams.py      # writes diagrams/*.svg
python build.py                  # writes JAMB_Biology_Volume1_*.pdf
```

`build.py` skips any chapter file that does not exist yet, so the volume compiles at
every stage of writing.
