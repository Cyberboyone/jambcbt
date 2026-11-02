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
| 2 | People, Places and the Nigerian Space | population and migration; settlement; agriculture, mining and industry; transport, trade and tourism; Nigeria; West Africa and the world; environment and development | **delivered — 174 pp** |

## Volume 1 — chapter table

| Ch | Title | Sections |
|----|-------|----------|
| 1 | The Subject and its Tools | definition; the two families and the techniques; the four spheres; the instruments; why the subject matters; worked questions; two-minute set; drill |
| 2 | The Earth in Space | shape and size; rotation; revolution and the seasons; latitude and longitude; time and the date line; worked questions; two-minute set; drill |
| 3 | The Crust, Rocks and Plates | the interior; the three rock families and the cycle; drift and plate tectonics; volcanoes and earthquakes; worked questions; two-minute set; drill |
| 4 | Weather, Climate and the Atmosphere | composition and layers; insolation and temperature; pressure and winds; humidity and the three rains; climate types; worked questions; two-minute set; drill |
| 5 | Rivers and Drainage | the water cycle; the drainage basin; the work of a river; the three courses; patterns, lakes and groundwater; worked questions; two-minute set; drill |
| 6 | Landforms and Soils | weathering and mass movement; wind; ice; waves; soils and their profile; worked questions; two-minute set; drill |
| 7 | Map Work and Statistics | scale; distance and area; bearing; grid references; relief and cross-sections; statistics; worked questions; two-minute set; drill |

## Volume 2 — chapter table

| Ch | Title | Sections |
|----|-------|----------|
| 1 | Population | measuring a population; distribution; structure and the pyramid; the demographic transition; migration; population and resources; worked questions; two-minute set; drill |
| 2 | Settlement | rural site, pattern and form; urban function and situation; land use; hierarchy and services; urbanisation and its problems; settlement in change; worked questions; two-minute set; drill |
| 3 | Agriculture | classifying a farm; shifting cultivation and the fallow; plantation and cash crops; what a crop needs; livestock and fishing; problems and improvements; worked questions; two-minute set; drill |
| 4 | Mining, Power and Industry | minerals and where they lie; mining and its effects; power; industrial location; industry in Nigeria; problems and policy; worked questions; two-minute set; drill |
| 5 | Transport, Trade and Tourism | modes of transport; the Nigerian network; trade and its balance; trade policy and integration; tourism; transport and development; worked questions; two-minute set; drill |
| 6 | Nigeria | position, size and boundaries; relief and drainage; climate and vegetation; population and settlement; economic regions; development problems; worked questions; two-minute set; drill |
| 7 | West Africa and the Wider World | the West African region; ECOWAS; the wider world; Nigeria's foreign policy; the diaspora and migration; regional development; worked questions; two-minute set; drill |
| 8 | Environment and Development | hazards and disasters; land degradation; pollution and waste; conservation; sustainable development; development and the environment; worked questions; two-minute set; drill |

Volume 2 back matter: two 40-question CBT mocks with answer sheets, marking bands
and score logs; Appendix A (60 rapid-fire pairs), B (the 120-question master
bank), C (consolidated keys), D (the figures file), E (the world file), F (the
definitions file), G (model answers), H (the eight-week plan), I (the comparison
tables), J (the trap file).

## Question pools

| Volume | Drills | Papers | Bank | Total |
|---|---|---|---|---|
| 1 | 280 | 80 | 105 | **465** |
| 2 | 320 | 80 | 120 | **520** |

Every item is disjoint from every other item in its volume, and every item carries
a written solution that names the reason the distractors fail.

## Build

From `study_materials/geography/vol1/`:

```bash
/home/user/jambcbt/.venv/bin/python diagrams_gen/generate_diagrams.py   # 15 SVGs
/home/user/jambcbt/.venv/bin/python tools/check_figs.py
/home/user/jambcbt/.venv/bin/python tools/drills_geo1.py                # drill_ch01–07.typ
/home/user/jambcbt/.venv/bin/python tools/papers_geo1.py                # paper1–2, bank105, answer_keys
/home/user/jambcbt/.venv/bin/python build.py                            # PDF, contents baked
```

From `study_materials/geography/vol2/`:

```bash
/home/user/jambcbt/.venv/bin/python diagrams_gen/generate_diagrams.py   # 17 SVGs
/home/user/jambcbt/.venv/bin/python tools/check_figs.py
/home/user/jambcbt/.venv/bin/python tools/drills_geo2.py                # drill_ch01–08.typ
/home/user/jambcbt/.venv/bin/python tools/papers_geo2.py                # paper1–2, bank120, answer_keys
/home/user/jambcbt/.venv/bin/python build.py                            # PDF, contents baked
```

`_fit.json` carries the per-run padding that stretches each drill's solution run to
the foot of its last page; `tools/tune_drills.py` re-derives it after any change to
the drill text.

The PDF is gitignored, as with the other volumes; the sources, the generators and
the build script are committed so each volume can be rebuilt from scratch.
