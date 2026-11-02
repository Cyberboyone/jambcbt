# JAMB Literature in English — Study Series Plan

Same house style as the Physics, Chemistry, Mathematics, Biology, English, Economics
and Government series: chapter opener → focus radar → numbered sections with labelled
figures and rule boxes → four or five worked examples (foundation, UTME standard, JAMB
challenge) → trap boxes → recap card → two-minute CBT set → a 40-question drill with a
key and a solution for every question. Each volume ends with two 40-question CBT mocks,
appendices, and a printed Contents page whose page numbers are baked in at build time.

Literature is the paper that rewards a candidate for asking *how* before *what*. The
same six-line extract can be answered at the level of plot (no marks) or at the level of
form (two marks), and the difference is a method rather than a memory. The series is
therefore split by task, not by text: Volume 1 teaches the method on unseen material,
Volume 2 works the prescribed drama and prose, Volume 3 works the poems and drills the
full papers.

## The volumes

| Vol. | Title | Coverage | Status |
|---|---|---|---|
| 1 | The Principles | the three genres and the levels of reading; drama — types, plot, technique; prose — point of view, characterisation, setting, structure, types; poetry — the line, metre, rhyme and sound, image and symbol, types; devices; unseen appreciation; two mocks; four practice banks | **delivered — 179 pp** |
| 2 | The Drama and the Prose | *Harvest of Corruption* (Ogbeche) and *Othello* scene by scene; *Faceless* (Darko), *Lonely Days* (Adebowale) and *Native Son* (Wright) chapter by chapter; character, theme and quotation banks for each | planned |
| 3 | The Poems and the Mock Papers | the five prescribed poems line by line (*Vanity*, *Ambush*, *The Anvil and the Hammer*, *Crossing the Bar*, *The Proud King*), a quotation bank, and four full 60-question papers | planned |

The 2026 prescribed texts, as set by the syllabus: drama — *Harvest of Corruption*
(Frank Ogodo Ogbeche) and *Othello* (Shakespeare); prose — *Faceless* (Amma Darko),
*Lonely Days* (Bayo Adebowale) and *Native Son* (Richard Wright); poems — *Vanity*
(Birago Diop), *Ambush* (Gbemisola Adeoti), *The Anvil and the Hammer* (Kofi Awoonor),
*Crossing the Bar* (Tennyson) and *The Proud King* (William Morris). *The Lekki
Headmaster* belongs to Use of English and is not on this list.

## Volume 1 — chapter table

| Ch | Title | Sections | Weight | Status |
|----|-------|----------|--------|--------|
| 1 | What Literature Is, and How the Paper Tests It | literature and its definition; the three genres; the four levels of reading; how a literary answer is marked; the vocabulary of value (subject/theme, tone/mood, style/diction, speaker/poet, story/plot); the six question types; two-minute set; drill | 4 | **done** |
| 2 | The Types of Drama | drama as two texts; tragedy and its six terms; comedy and its four kinds; tragicomedy, farce, melodrama; the forms outside the four; African drama; plot and the unities; two-minute set; drill | 6 | **done** |
| 3 | Dramatic Technique | dialogue as action; monologue, soliloquy, aside; stage directions and silence; the three ironies; the visual apparatus; frame devices; contrast, pace and comic relief; two-minute set; drill | 6 | **done** |
| 4 | Prose: The Novel and the Story | the narrator as construction; the four points of view and free indirect style; characterisation on two axes; setting as pressure; plot and the six structures; the types of prose; style at sentence level; two-minute set; drill | 8 | **done** |
| 5 | Poetry: The Line and the Sound | the line and the line break; the six-step reading; the types of poem; metre and the five feet; rhyme and sound; image, symbol and conceit; stanza, volta and refrain; two-minute set; drill; the chapter in one table | 5 | **done** |
| 6 | Devices and the Unseen Passage | what a device is for; the comparison family; the statement family; the sound family; the structure family; the five-question unseen procedure; the device catalogue; two-minute set; drill | 11 | **done** |

Back matter: two 40-question CBT mocks (an unseen prose extract, an unseen drama
extract, an unseen poem, a block of terms, and a block on texts and contexts, each with
a key and a note on every question); Appendix A (60 rapid-fire pairs in four sections,
plus twelve half-lines worth recognising); Appendix B (the 120-question master bank in
twelve blocks of ten, with solutions); Appendix C (every key in the volume on four
pages); Appendix D (glossary, A–Z); Appendix E (a preparation worksheet for the five
prescribed poems); Appendix F (the syllabus mapped, and the term list with the chapter
that teaches each); Appendix G (eleven comparison tables); Appendix H (eight model
answers, each beside the half-answer it replaces); Appendix I (the ten-week plan, the
score log and the last fortnight); Appendix J (three unseen extracts, fifteen questions
and the reasoning); Appendix K (thirty-six traps in the paper's own words); Appendix L
(the exam-day playbook).

## Build notes

`python diagrams_gen/generate_diagrams.py` → `python tools/check_figs.py` →
`python tools/drills_lit1.py` → `python tools/papers_lit1.py` → `python build.py`.
The build compiles four times: it reads the PDF outline, rewrites `_toc.typ`, and
repeats until the page numbers stop moving. The skip list is printed at the end of every
run because a missing include is silently dropped.

The volume is built to the same acceptance tests as the rest of the series: **0 Typst
warnings**, **no include skipped**, **no block outside the margins**, **no figure label
outside its canvas** (`check_figs.py`), and **no page more than a third empty**. The last
test is the expensive one, because Typst will not split an unbreakable box: a box that
does not fit jumps to the next page and leaves the gap behind. The fix is either to move
the box or to fill the page, which is why the appendix tails carry their last teaching
(A.5, G.10–G.11, H.2, I.5–I.6, J.4–J.5, K.5) rather than a blank half-page. The worst
remaining gap is 398 pt on the last page of the book; every other page is under 400 pt,
and the great majority under 250.

The Contents is a single page of 161 rows in two hand-split columns: Typst fills a whole
column before starting the next, so the list is halved by hand to keep the columns level.

The drill answer runs are balanced by `tools/drills_lit1.py` (no letter appearing more
than a quarter of the run plus two, and no run of four identical keys), and the papers
and the bank are balanced the same way, so the key cannot be guessed from its shape.

## Where the next volume starts

Volume 2 opens with the two plays, because the drama questions are the most frequent and
the most mechanical: a scene-by-scene commentary, a character map, a theme ledger and a
quotation bank per play, each followed by a 40-question drill of the same shape used
here. The prose texts follow in the same pattern. Volume 3 then takes the poems and adds
four full papers at 60 questions, which is the length at which speed becomes a skill.
