# JAMB Use of English — Study Series Plan

Same house style as the Biology, Chemistry, Mathematics and Physics series: chapter
opener → focus radar → numbered sections with labelled figures and rule boxes →
five worked examples → JAMB trap boxes → recap card → two-minute CBT set → a
40-question drill with a key, a question map and a full solution for every option.
Each volume ends with two 40-question CBT mocks and appendices A–K, and every volume
closes with a printed Contents page whose page numbers are baked in at build time.

English is the only compulsory paper in the UTME, and the only one where the subject
splits cleanly into three teachable blocks: structure, the passage skills, and the
prescribed text. Three volumes, one per block.

## The three volumes

| Vol. | Title | Coverage | Status |
|---|---|---|---|
| 1 | Structure and Lexis | word classes, concord, tense and voice, clauses and punctuation, modifiers and connectives, lexis (synonyms, antonyms, confusables, idioms, register) | **delivered — 163 pp** |
| 2 | Comprehension, Summary and Oral English | passage technique, summary writing, the sound system (vowels, consonants, stress, intonation, rhyme) | **delivered — 170 pp** |
| 3 | The Novel and Full Papers | the prescribed text, character and theme questions, full-length CBT papers | planned |

## Volume 1 — Structure and Lexis

| Ch | Title | Sections | Status |
|----|-------|----------|--------|
| 1 | Word Classes: The Eight Jobs | nouns, verbs, adjectives and adverbs, pronouns, prepositions, conjunctions and interjections, the same word in two jobs | **done** |
| 2 | Concord: Making Subject and Verb Agree | the basic rule, the noun nearest the verb, quantifiers and number, collective and plural nouns, pronouns and agreement, concord under pressure | **done** |
| 3 | Tense, Aspect and Voice | the three times and the four aspects, the twelve forms, the perfect tenses, the passive, reported speech, tense in the exam hall | **done** |
| 4 | Clauses, Sentence Types and Punctuation | phrases and clauses, the four sentence types, relative clauses, noun and adverb clauses, the comma and the full stop, the semicolon and the colon | **done** |
| 5 | Modifiers, Prepositions and Connectives | adjectives and adverbs, misplaced and dangling modifiers, comparatives and superlatives, prepositions of time and place, prepositional verbs, connectors and their punctuation | **done** |
| 6 | Lexis: Synonyms, Antonyms and Word Substitution | synonyms, antonyms, words usually confused, idioms and fixed expressions, phrasal verbs and register, lexis in the exam hall | **done** |

Back matter: two 40-question CBT mocks, Appendix A (40 rapid-fire pairs), Appendix B
(the 120-question master bank), Appendix C (consolidated keys, question maps and
drill keys), Appendix D (the word bank — spelling rules, 60 misspelt words, 32
irregular-verb triples, 20 confusable pairs), Appendix E (the grammar map — fifty
one-line rules with the chapter that teaches each), Appendix F (glossary), Appendix G
(six-week planner, score log, last ten days, ten-day tick sheet), Appendix H (twenty
rules worth knowing, four checks, six repairs), Appendix I (guided writing — letter,
argument, summary, comprehension, speech, report, self-marking), Appendix J (the
twelve traps worked, four checks, six repairs), Appendix K (the exam-day playbook).

## Build notes

Volumes live in `study_materials/english/vol1/` and share `template.typ` with the rest
of the series. Every build runs the generators first — the diagrams, then the drills
and papers, then the PDF.

```bash
cd study_materials/english/vol1
/home/user/.venv/bin/python diagrams_gen/generate_diagrams.py   # regenerates all 34 SVGs
/home/user/.venv/bin/python tools/check_figs.py                 # canvas-bounds check
/home/user/.venv/bin/python tools/drills_eng1.py                # writes drill_ch01–06.typ
/home/user/.venv/bin/python tools/papers_eng1.py                # writes the mocks, rapid-fire, bank120 and answer_keys
/home/user/.venv/bin/python build.py                            # writes the PDF
/home/user/.venv/bin/python tools/make_toc.py <pdf>             # re-bakes the contents page numbers
/home/user/.venv/bin/python tools/tune_fit.py --rounds 1        # tunes _fit.json, then rebuilds
```

Two house-style points matter more in this volume than in the science ones.

**Underscores are markup.** In English, a gap in a sentence is written with
underscores (`___`), and in Typst `_` starts emphasis, so a run of three throws
`unclosed delimiter` and a run of two produces a warning. Both generators escape every
underscore of a 2+ run individually (`chr(92) + "_"` per character), and any `.typ`
file written by hand does the same.

**Option text carries commas.** `#mcq(num, stem, a, b, c, d)` takes the four options
as positional arguments, and Typst will silently read a bare `] . [` as the start of a
new argument list. Content blocks that end in a full stop are written `] [` on one
line, never split across a line break.

### Volume 1 — progress

| Stage | Status |
| --- | --- |
| Front matter (cover, series map, chapters at a glance, contents, how to use, where everything is, the paper in numbers) | done — 7 pp |
| Chapters 1–6, five worked examples and four MCQs each | done — pp 7–96 |
| Diagrams (34 reviewed SVGs, all script-generated) | done |
| Drill banks, 40 per chapter, six chapters (240 questions) | done — pp 18, 33, 48, 63, 79, 93 |
| Paper banks, 40 per chapter (240 items feeding the mocks, bank and rapid-fire) | done |
| Two 40-question CBT mocks | done — pp 97–114 |
| Rapid-fire pairs, 120-question bank, consolidated keys | done — Appendices A–C, pp 115–140 |
| Appendices D–K | done — pp 141–163 |

Build at this checkpoint: **163 pp, 3.90 MB, 0 Typst warnings**. 240 drill questions,
240 paper items (two 40-question mocks, 40 rapid-fire pairs, 120-question bank),
34 diagrams, 30 worked examples, appendices A–K. No page uses less than two thirds of
its type area except the closing page of Appendix K; the drills and the solution runs
are padded from `_fit.json` so their last pages fill.

## Volume 2 — Comprehension, Summary and Oral English

| Ch | Title | Sections | Status |
|----|-------|----------|--------|
| 1 | Reading for the Main Idea | the order of the method, the four passes, the paragraph, main idea v detail | **done** |
| 2 | The Question Types | the eight types, detail/vocabulary/reference, negation, the four wrong-option shapes | **done** |
| 3 | Inference, Tone and Attitude | stated/implied/assumed, tone, irony, figures | **done** |
| 4 | Summary | the four rules, finding points, writing to a limit, marking | **done** |
| 5 | The Sounds of English | letters and sounds, 12 vowels and 8 glides, 24 consonants, syllables, silent letters | **done** |
| 6 | Stress, Intonation and Rhyme | five stress rules, stress shift, sentence stress, three tunes, rhyme and homophones | **done** |

Back matter: two 40-question CBT mocks, Appendix A (40 rapid-fire pairs), Appendix B
(the 120-question master bank), Appendix C (consolidated keys), Appendix D (spelling and
sounds), Appendix E (the oral forms map — 44 sounds, 12 stress rules, 5 question
shapes), Appendix F (glossary, 40 terms, plus nine confusable pairs), Appendix G
(planner and score log), Appendix H (twenty moves worth knowing, four checks, a
move-a-day table), Appendix I (six summary models with points, deletions and word
counts, plus a self-marking rubric), Appendix J (twelve traps worked, four checks,
six repairs), Appendix K (the exam-day playbook).

### Volume 2 — progress

| Stage | Status |
| --- | --- |
| Front matter (cover, series map, chapters at a glance, contents, how to use, the paper in numbers) | done — 7 pp |
| Chapters 1–6, five worked examples and four MCQs each | done — pp 7–106 |
| Diagrams (30 reviewed SVGs, script-generated) | done |
| Drill banks, 40 per chapter (240 questions) | done — pp 19, 34, 50, 68, 82, 99 |
| Paper banks, 40 per chapter (240 items feeding the mocks, bank and rapid-fire) | done |
| Two 40-question CBT mocks | done — pp 107–124 |
| Rapid-fire pairs, 120-question bank, consolidated keys | done — Appendices A–C, pp 125–150 |
| Appendices D–K | done — pp 151–170 |

Build at this checkpoint: **170 pp, 3.84 MB, 0 Typst warnings**. 240 drill questions,
240 paper items, 30 diagrams, 30 worked examples, appendices A–K. Two house-style
notes for this volume: every worked example's passage sits in its own shaded block
inside the problem argument, and a bullet that begins with a phoneme must not start
`*/` — Typst reads it as the end of a block comment — so such bullets begin with the
words *The pair* and then the symbols.
