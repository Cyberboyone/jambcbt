# JAMB Physics — Study Series Plan

Same house style as the Chemistry and Biology series: chapter opener → exam radar →
concepts → labelled diagrams and worked examples → JAMB trap boxes → checklist →
recap card → two-minute CBT set → a 40-question drill with a key, a question map and
a full solution for every option. Each volume ends with two 40-question CBT mocks
and appendices A–K, and every volume closes with a printed Contents page whose page
numbers are baked in at build time.

## The four volumes

| Vol. | Title | Coverage | Status |
|---|---|---|---|
| 1 | Mechanics & Properties of Matter | measurement, vectors, kinematics, Newton's laws, momentum, work and energy, machines, circular motion, gravitation, SHM, elasticity, fluids | **delivered — 151 pp** |
| 2 | Waves, Sound and Light | waves and superposition, sound, reflection and refraction, mirrors and lenses, optical instruments, the eye, colour and photometry | **delivered — 154 pp** |
| 3 | Heat and Thermodynamics | temperature and thermometers, expansion, heat transfer, calorimetry, change of state, gas laws, thermodynamics, vapours and humidity | planned |
| 4 | Electricity, Magnetism and Modern Physics | electrostatics, capacitors, current electricity, magnetism, electromagnetic induction, AC, electronics, atomic and nuclear physics | planned |

## Volume 1 — Mechanics & Properties of Matter

| Ch | Title | Sections | Status |
|----|-------|----------|--------|
| 1 | Measurement, Units and Dimensions | physical quantities and SI units, dimensions and dimensional analysis, the measuring instruments, errors and uncertainties, scalars and vectors, resolution of vectors | **drafted** |
| 2 | Motion in a Straight Line | distance and displacement, speed and velocity, acceleration, the equations of motion, motion graphs, free fall and projectiles | **drafted** |
| 3 | Forces, Newton's Laws and Momentum | types of force, Newton's three laws, friction, equilibrium, moments and couples, centre of gravity, momentum and impulse, collisions | **drafted** |
| 4 | Work, Energy, Power and Machines | work and energy, kinetic and potential energy, conservation, power, efficiency, machines and mechanical advantage | **drafted** |
| 5 | Circular Motion, Gravitation and SHM | angular velocity, centripetal force, satellites, Newton's law of gravitation, variation of g, the pendulum and the loaded spring | **drafted** |
| 6 | Properties of Matter | Hooke's law and elasticity, pressure in fluids, Archimedes and floatation, surface tension and capillarity, viscosity, diffusion | **drafted** |

Back matter (planned): two 40-question CBT mocks, Appendix A (40 rapid-fire pairs),
Appendix B (120-question master bank), Appendix C (consolidated keys), Appendix D
(constants, units and data), Appendix E (formula map), Appendix F (glossary),
Appendix G (revision planner and score tracker), Appendix H (formulae and
derivations), Appendix I (structured questions with model answers), Appendix J (the
twelve traps, worked), Appendix K (exam-day playbook).

## Volume 1 — build

```bash
cd study_materials/physics/vol1
python generate_diagrams.py        # writes diagrams/*.svg
python tools/drills_phys1.py       # writes drill_ch01–06.typ
python tools/papers_phys1.py       # writes mock_ch11, mock2, rapid_fire, bank120, answer_keys
python tools/fit_solutions.py      # tunes _fit.json, then rebuilds until every tail page is full
python build.py                    # writes JAMB_Physics_Volume1_Mechanics_Properties_of_Matter.pdf
```

## Conventions

- Every numerical answer is quoted to the number of significant figures the data
  justify, and every worked example carries a *Check* line that tests the answer
  against the physics rather than against the arithmetic.
- Symbols: $g = 10$ m s⁻² unless a question states 9.8; π = 3.14 unless stated.
- A diagram is script-generated and visually reviewed before it is used; the figure
  file is never hand-edited.

## Volume 1 — progress

| Stage | Status |
| --- | --- |
| Front matter (cover, series map, contents, how to use) | done — 5 pp |
| Chapters 1–6, five worked examples and four MCQs each | done — pp 6–99 |
| Diagrams (34 reviewed SVGs, all script-generated) | done |
| Drill banks, 40 per chapter, six chapters (240 questions) | done |
| Paper banks, 40 per chapter (240 items feeding the mocks, bank and rapid-fire) | done |
| Two 40-question CBT mocks | done — pp 100–114 |
| Rapid-fire pairs, 120-question bank, consolidated keys | done — Appendices A–C |
| Appendices A–K | done — pp 115–151 |

Build at this checkpoint: **151 pp, 3.99 MB, 0 Typst warnings**. 240 drill questions, 240 paper items (two 40-question mocks, 40 rapid-fire pairs, 120-question bank), 34 diagrams, appendices A–K. No page ends on a sliver: `tools/fit_solutions.py` tunes `_fit.json` until every solution run's tail page is at least half full.

## Volume 2 — Waves, Sound and Light

| Ch | Title | Sections | Status |
|----|-------|----------|--------|
| 1 | Wave Motion | what a wave is, transverse and longitudinal waves, the wave equation, superposition and stationary waves, wave behaviour, the two-minute set | **shipped** |
| 2 | Sound | production and transmission, speed in the three media, reflection and echo, resonance tubes, beats, the Doppler effect | **shipped** |
| 3 | Reflection at Plane and Curved Mirrors | the law of reflection, the plane mirror, curved mirrors and their terms, ray diagrams, the mirror formulae | **shipped** |
| 4 | Refraction and Total Internal Reflection | refraction and Snell's law, real and apparent depth, the critical angle, total internal reflection, the prism | **shipped** |
| 5 | Lenses and Optical Instruments | lens terms and power, ray diagrams, the lens formula and magnification, the eye and its defects, the camera, microscope and telescope | **shipped** |
| 6 | Colour and the Electromagnetic Spectrum | dispersion, colour and filters, the electromagnetic spectrum, photometry, interference, diffraction and polarisation | **shipped** |

Back matter (delivered): two 40-question CBT mocks, Appendix A (40 rapid-fire pairs),
Appendix B (120-question master bank), Appendix C (consolidated keys, plus C.6 score
log), Appendix D (data, formulae and constants), Appendix E (formula map), Appendix F
(glossary), Appendix G (revision planner and score tracker), Appendix H (derivations,
with H.7 results table), Appendix I (structured questions with model answers, I.7 mark
scheme), Appendix J (the twelve traps, worked, plus J.2 pocket list and J.3 morning of
the paper), Appendix K (exam-day playbook).

## Volume 2 — build

```bash
cd study_materials/physics/vol2
python diagrams_gen/generate_diagrams.py   # writes diagrams/*.svg (28 figures)
python tools/drills_phys2.py               # writes drill_ch01–06.typ
python tools/bank120_phys2.py              # writes bank120.typ
python tools/make_keys.py                  # writes answer_keys.typ
python build.py                            # writes JAMB_Physics_Volume2_Waves_Sound_Light.pdf
python tools/tune_fit.py --rounds 4        # tunes _fit.json, then rebuilds until the tails are full
```

## Volume 2 — progress

| Stage | Status |
| --- | --- |
| Front matter (cover, series map, equation sheet, contents, how to use) | done — 5 pp |
| Chapters 1–6, five worked examples and four MCQs each | done — pp 6–98 |
| Diagrams (28 reviewed SVGs, all script-generated) | done |
| Drill banks, 40 per chapter, six chapters (240 questions) | done |
| Paper banks, 40 per chapter (240 items feeding the mocks, bank and rapid-fire) | done |
| Two 40-question CBT mocks | done — pp 99–112 |
| Rapid-fire pairs, 120-question bank, consolidated keys | done — Appendices A–C, pp 113–136 |
| Appendices D–K | done — pp 137–154 |

Build at this checkpoint: **154 pp, 3.97 MB, 0 Typst warnings**. 240 drill questions, 240 paper items (two 40-question mocks, 40 rapid-fire pairs, 120-question bank), 28 diagrams, appendices A–K. Every chapter ends on a compact checklist and a carry-forward box; no page is left half blank, and `tools/tune_fit.py` keeps every solution run's tail page full.
