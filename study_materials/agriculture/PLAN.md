# JAMB Agricultural Science — Study Series Plan

Same house style as the Geography, Government, Economics, Commerce and Accounting
series: chapter opener → focus radar → numbered sections with labelled figures and
rule boxes → four worked examples (foundation, UTME standard, UTME standard, JAMB
challenge) → trap box → recap card → two-minute set with key → a 40-question drill
with a written solution for every item. Each volume ends with two 40-question CBT
papers, appendices A–J, and a generated Contents page whose page numbers are baked
in at build time.

Agricultural Science splits the way the syllabus splits: the crop and the soil on
one side, the animal and the business on the other. Volume 1 is the plant half.

## The volumes

| Vol. | Title | Coverage | Status |
|---|---|---|---|
| 1 | The Soil and the Crop | the scope of agriculture; rocks, soil formation and soil properties; fertility, manure and fertiliser; land preparation and cultural practice; propagation and nursery; pests, diseases and weeds; the crops of Nigeria; harvest, storage and marketing | **delivered — 190 pp** |
| 2 | The Animal and the Farm Business | livestock production; animal nutrition and health; fisheries and forestry; farm records and accounts; extension and cooperatives; agricultural policy and marketing institutions | **delivered — 178 pp** |

## Volume 1 — chapter table

| Ch | Title | Sections |
|----|-------|----------|
| 1 | The Scope of Agriculture | what agriculture is; the branches; why it matters to Nigeria; systems of farming; types of farming by enterprise; the problems of Nigerian agriculture; worked questions; two-minute set; drill |
| 2 | Rocks, Soil Formation and Soil Properties | the three rock types and the cycle; weathering; how soil forms; the profile; texture and structure; soil water, air and organic matter; soil pH; the soils of Nigeria; worked questions; two-minute set; drill |
| 3 | Soil Fertility, Manure and Fertiliser | the sixteen nutrients; feeding the soil; manure, compost and the organic route; the fertiliser bag and its arithmetic; soil survey and sampling; erosion and its control; worked questions; two-minute set; drill |
| 4 | Land Preparation and Cultural Practice | clearing the land; primary tillage; secondary tillage; planting, spacing and plant population; cultural practices after planting; water, irrigation and drainage; tools and machines; worked questions; two-minute set; drill |
| 5 | Crop Propagation and Nursery Practice | the seed and its germination; seed quality and the tests; vegetative propagation; the nursery; transplanting; worked questions; two-minute set; drill |
| 6 | Pests, Diseases and Weeds | classification of pests; insect pests and their damage; fungal, bacterial and viral diseases; weeds and their control; pesticides and integrated pest management; worked questions; two-minute set; drill |
| 7 | The Crops of Nigeria | classifying a crop; cereals; legumes; roots and tubers; the cash and industrial crops; fruits and vegetables; cropping patterns; worked questions; two-minute set; drill |
| 8 | Harvest, Storage and Marketing | knowing when to harvest; processing; drying, storage and shelf life; storage and its conditions; post-harvest losses; marketing; farm records; worked questions; two-minute set; drill |

Volume 1 back matter: two 40-question papers with answer sheets, marking bands and
score logs; Appendix A (60 rapid-fire pairs), B (the 120-question master bank),
C (consolidated keys), D (the figures file), E (the farm calendar), F (the
definitions file), G (model answers), H (the eight-week plan), I (the comparison
tables), J (the trap file).

## Volume 2 — chapter table

| Ch | Title | Sections |
|----|-------|----------|
| 1 | The Animal on the Farm | why the farm keeps animals; classification by stomach, use and name; the five systems; local and exotic breeds; the problems of the industry; the arithmetic of the herd; worked questions; two-minute set; drill |
| 2 | The Body of the Farm Animal | why the stomach comes first; the four compartments; the monogastric and the fowl; digestion and absorption; the reproductive system and the cycle; the other systems; worked questions; two-minute set; drill |
| 3 | Animal Nutrition and Feeding | the six nutrients; the four classes of feed; what decides the requirement; the Pearson square; feeding practice; the poisons in the feed; worked questions; two-minute set; drill |
| 4 | Animal Health and Disease Control | the healthy animal and the sick one; the triangle and how disease travels; viral diseases; bacterial diseases; protozoan and parasitic diseases; the control programme; worked questions; two-minute set; drill |
| 5 | Livestock Production and Management | poultry; cattle; sheep and goats; pigs, rabbits and micro-livestock; breeding and selection; worked questions; two-minute set; drill |
| 6 | Fisheries and Forestry | why fish and forest; fish and the systems that farm them; building and running a pond; harvesting and preservation; the forest and its products; agroforestry and conservation; worked questions; two-minute set; drill |
| 7 | Farm Records and Accounts | why a farm keeps records; the four families of record; depreciation and valuation; the three statements; the decision figures; worked questions; two-minute set; drill |
| 8 | Extension, Cooperatives and Policy | what extension is; the methods and the aids; the cooperative society; marketing institutions; policy and the agencies; credit and insurance; worked questions; two-minute set; drill |

Volume 2 back matter repeats the same ten appendices, retargeted: A (60 rapid-fire
pairs), B (the 120-question master bank), C (consolidated keys), D (the figures
file), E (the farm calendar), F (the definitions file), G (model answers), H (the
eight-week plan), I (the comparison tables), J (the trap file).

## Question pools

| Volume | Drills | Papers | Bank | Total |
|---|---|---|---|---|
| 1 | 320 | 80 | 120 | **520** |
| 2 | 320 | 80 | 120 | **520** |

Every item is disjoint from every other item in its volume, and every item carries
a written solution that names the reason the distractors fail. The duplicate-stem
audit is run over the whole compiled PDF, not over the sources.

## Build

From `study_materials/agriculture/vol1/` (and the same, with `agr2` in the
script names, from `vol2/`):

```bash
/home/user/jambcbt/.venv/bin/python diagrams_gen/generate_diagrams.py   # 17 SVGs
/home/user/jambcbt/.venv/bin/python tools/check_figs.py
/home/user/jambcbt/.venv/bin/python tools/drills_agr1.py                # drill_ch01–08.typ   (drills_agr2.py in vol2)
/home/user/jambcbt/.venv/bin/python tools/papers_agr1.py                # paper1–2, bank120, answer_keys  (papers_agr2.py in vol2)
/home/user/jambcbt/.venv/bin/python build.py                            # PDF, contents baked
/home/user/jambcbt/.venv/bin/python tools/audit.py <pdf>                # TOC, margins, stems, thin pages
```

`_fit.json` carries the per-run padding that stretches each drill's and paper's
solution run to the foot of its last page; `tools/tune_fit.py` re-derives it after
any change to the questions. `tools/set_pad.py` sets one uniform pad when the
automatic search is not wanted.

The PDF is gitignored, as with the other volumes; the sources, the generators and
the build script are committed so each volume can be rebuilt from scratch.

## Editing rules that the build enforces

- A chapter that ends with `#include "drill_ch0N.typ"` needs that file to exist
  before the first build: an empty file is a valid placeholder.
- `_toc.typ` must define `#let toc-rows = ( )`; an empty file breaks the build with
  an unresolved import, and the real rows are written by `tools/make_toc.py`.
- `build.py` skips a missing include silently, so a "successful" build can contain
  half the book: check the page count and the Contents before believing it.
- `#mcq` takes exactly five arguments (number plus four options); header cells must
  not begin with `#`; `rect()` in `diagrams_gen/common.py` has no `opacity` kwarg.
