# JAMB Geography — Study Series Plan

Same house style as the Government, Economics, Commerce and Accounting series:
chapter opener → focus radar → numbered sections with labelled figures and rule
boxes → worked examples (foundation, UTME standard, JAMB challenge) → trap boxes →
recap card → two-minute set with key → a 40-question drill with a written solution
for every item. Each volume ends with two 40-question CBT mocks, appendices, and a
generated Contents page whose page numbers are baked in at build time.

Geography splits where the syllabus splits: the physical environment on one side,
people and places on the other, with map work as the instrument that measures both.

## The volumes

| Vol. | Title | Coverage | Status |
|---|---|---|---|
| 1 | The Physical Environment and Map Work | the subject and its tools; the earth in space; the crust, rocks and plates; weather and climate; rivers and drainage; landforms and soils; map work and statistics | **delivered — 118 pp** |
| 2 | People, Places and the Nigerian Space | population and migration; settlement; agriculture, mining and industry; transport and trade; the geography of Nigeria, West Africa and the world | planned |

## Volume 1 — chapter table

| Ch | Title | Sections | Status |
|----|-------|----------|--------|
| 1 | The Subject and its Tools | definition; the two families and the techniques; the four spheres; the instruments; why the subject matters; worked questions; two-minute set; drill | **done** |
| 2 | The Earth in Space | shape and size; rotation; revolution and the seasons; latitude and longitude; time and the date line; worked questions; two-minute set; drill | **done** |
| 3 | The Crust, Rocks and Plates | the interior; the three rock families and the cycle; drift and plate tectonics; volcanoes and earthquakes; worked questions; two-minute set; drill | **done** |
| 4 | Weather, Climate and the Atmosphere | composition and layers; insolation and temperature; pressure and winds; humidity and the three rains; climate types; worked questions; two-minute set; drill | **done** |
| 5 | Rivers and Drainage | the water cycle; the drainage basin; the work of a river; the three courses; patterns, lakes and groundwater; worked questions; two-minute set; drill | **done** |
| 6 | Landforms and Soils | weathering and mass movement; wind; ice; waves; soils and their profile; worked questions; two-minute set; drill | **done** |
| 7 | Map Work and Statistics | scale; distance and area; bearing; grid references; relief and cross-sections; statistics; worked questions; two-minute set; drill | **done** |

Back matter: two 40-question CBT mocks with answer sheets, marking bands and score
logs; Appendix A (60 rapid-fire pairs), B (the 105-question master bank), C
(consolidated keys), D (the figures file), E (the map-work file), F (59
definitions), G (model answers), H (the eight-week plan), I (six comparison
tables), J (the Nigeria file), K (the traps and the playbook).

The question pool is 465 items, disjoint by construction: 280 drill items (40 per
chapter), 80 paper items (40 per paper) and 105 bank items (15 per chapter). Every
item carries a note on every option.

## Build

From `study_materials/geography/vol1/`:

```bash
/home/user/jambcbt/.venv/bin/python diagrams_gen/generate_diagrams.py   # 15 SVGs
/home/user/jambcbt/.venv/bin/python tools/check_figs.py
/home/user/jambcbt/.venv/bin/python tools/drills_geo1.py                # drill_ch01–07.typ
/home/user/jambcbt/.venv/bin/python tools/papers_geo1.py                # paper1–2, bank105, answer_keys
/home/user/jambcbt/.venv/bin/python build.py                            # PDF, contents baked
```

The PDF is gitignored, as with the other volumes; the sources, the generators and
the build script are committed so the volume can be rebuilt from scratch.
