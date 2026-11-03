# Physical and Health Education — study series plan

## Volume 1 — The Body, Fitness and Sport: mechanically audited

| Chapter | Topic | Status |
| --- | --- | --- |
| 1 | Foundations of physical and health education | Drafted with 40-item drill; final review pending |
| 2 | The skeleton, joints and posture | Drafted with 40-item drill; final review pending |
| 3 | Muscles, movement and the nervous system | Drafted with 40-item drill; final review pending |
| 4 | Circulation, respiration and exercise | Drafted with 40-item drill; final review pending |
| 5 | Physical fitness and conditioning | Drafted with 40-item drill; final review pending |
| 6 | Athletics: track and field | Drafted with 40-item drill; final review pending |
| 7 | Games, skills and sports competitions | Drafted with 40-item drill; final review pending |
| 8 | Recreation, dance and adapted activity | Drafted with 40-item drill; final review pending |

Each completed chapter will contain an opener, focus radar, numbered sections with
a labelled figure and rule boxes, four graded worked examples, a trap box, a
short keyed set, recap, checklist and carry-forward, plus a 40-item drill with
explanations. The volume also requires two original 40-question timed papers, a
120-question master bank, consolidated keys and appendices A–J. Build and release
only after contents, question and page-layout audits; commit, push and upload the
finished PDF to Drive.

## Volume 2 — planned

Personal, community and environmental health; nutrition and drugs; safety and
first aid; communicable and non-communicable diseases; and family life and human
sexuality. This is an editorial division, not a claim that JAMB sets separate
examinations for the two halves.

JAMB announced Physical and Health Education as a UTME subject in its bulletin of
31 January 2022: https://www.jamb.gov.ng/Bulletin/JAMBulletin_31-01-2022.pdf.
Topic planning also consulted the secondary outline at
https://jamb2025.com/jamb-syllabus-for-physical-and-health-education/; its claims
have not been independently verified against the current official JAMB IBASS
syllabus. Candidates should check the current official syllabus and the specific
institution's subject requirements. Health and first-aid material must be accurate,
context-sensitive and not presented as a substitute for emergency services or
individual medical care.

Draft proof only: install `vol1/requirements.txt` and run `python vol1/build_draft.py`. The proof has eight chapters and drills but no papers, appendices or contents; it is not a deliverable.

Run `python vol1/render_drills.py` after changing the drill data. The eight original drills contain 320 stems with no exact duplicates; answer positions are balanced and every item has an explanation.

## Volume 1 build status

The source now includes both 40-question timed papers, the 120-item bank and appendices A–J. `python vol1/render_drills.py`, `python vol1/render_papers.py`, and `python vol1/render_bank.py` regenerate question sections; `python vol1/build.py` creates a multipass contents proof, and `python vol1/tools/audit.py` checks it. The current proof has 122 pages, 0 Typst warnings, 520 exactly distinct stems and 113 synchronized contents entries; it has no detected horizontal text overflow. It is **not ready for delivery**: the layout audit reports 14 short pages. The questions also require substantive editorial review: many distractors are too obvious for strong UTME preparation, and some questions across sets test the same facts in closely related forms. Review answer accuracy and meaningful item diversity, improve the distractors, expand shallow teaching sections where useful, correct pagination and rerun the full audit before releasing. The generated final-named PDF is a proof, not an approved deliverable.

### Further editorial pass

Drills 1–4 now have revised distractors that relate more closely to the subject rather than unrelated objects. Chapters 6 and 7 now add event-specific and game-specific rules, and figure line breaks in all chapter files were corrected. The latest proof has 124 pages, no Typst warnings or horizontal overflow, 115 synchronized contents entries and 520 exactly distinct stems. The automated audit still fails on 13 short pages. Drills 5–8, both papers and the master bank still require the same substantive distractor and answer review; exact stem uniqueness does not guarantee conceptual uniqueness. The new rules passages also need source verification against current governing rules before release.

### Current continuation

All eight chapter drills and both timed papers have had an initial distractor pass (400 items); master-bank sets 1–3 have also been revised (45 items). This is not a substitute for a full independent answer and difficulty review; master-bank sets 4–8 remain unreviewed. A source-check note is in `vol1/SOURCES.md`; the rules discussion now flags the reported 4 January 2027 badminton scoring change rather than treating the 2026 format as timeless. One isolated rapid-recall page was removed by reflow, but the latest build (before the latest stem-only edit) still reports 14 short pages, no margin overflow and no Typst warnings. Do not deliver until the final audit passes and the content review is complete.

### Latest build

All eight drills, both papers and all eight master-bank sets received an initial distractor pass. The current build regenerates the question files, converges the contents and runs the audit; it removes the output if that audit fails. Latest result: 121 pages, zero Typst warnings, 116 synchronized contents entries, 520 exactly distinct stems, answer keys checked against source with balanced positions, no short pages by the automated threshold, and no detected horizontal overflow. The chapter openers and focus radars are unbreakable and headings are kept with following content. Some concepts recur across sets despite distinct wording, and these automated checks cannot establish subject accuracy, exam-level difficulty or absence of every visual widow. This is an independent study resource, not an official syllabus or past-paper publication.
