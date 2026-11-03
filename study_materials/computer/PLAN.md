# Computer Studies — study series plan

## Volume 1 — Computing Fundamentals and Practical Skills: complete

128 pages. Eight chapters, 32 worked examples, eight 40-question drills with
explanations, two 40-question mixed timed practice papers, a 120-question master
bank with explanations, and appendices A–J. The question pools have 520 distinct
stems. The master bank has 15 per chapter; its Chapter 3 and 4 sets deliberately
emphasise capacity calculations and number-system conversions rather than offering
a broad conceptual survey. The chapter drills and papers provide broader practice.
The questions are original practice, not represented as past JAMB questions.

| Chapter | Topic |
| --- | --- |
| 1 | Evolution of computing and computer systems |
| 2 | Hardware, input, output and processing |
| 3 | Memory and storage |
| 4 | Data representation and number systems |
| 5 | Software and operating systems |
| 6 | Application packages and file management |
| 7 | Maintenance, safety and troubleshooting |
| 8 | Networks, internet and online communication |

Appendices: A rapid-fire recall; B master bank and explanations; C consolidated
keys; D formulas and data; E practical skills; F glossary; G model answers; H
study plan; I comparison tables; J trap file.

## Volume 2 — planned

Problem solving, programming, artificial intelligence, robotics, computing security,
ethics and career prospects. The division is an editorial plan, not a claim that
JAMB assigns those topics to two examinations. Volume 1 is not a complete guide to
the entire Computer Studies syllabus by itself.

JAMB announced Computer Studies as a UTME subject in its 31 January 2022 bulletin:
https://www.jamb.gov.ng/Bulletin/JAMBulletin_31-01-2022.pdf. Topic planning also draws
on https://myschoolgist.com/news/jamb-syllabus/. Candidates should consult the
current official JAMB IBASS syllabus and institution-specific subject requirements.

## Rebuild and audit

From `vol1/`, install `requirements.txt`, then run:

```
python render_drills.py
python render_papers.py
python render_bank.py
python build.py
python tools/audit.py
```

`_fit.json` controls solution spacing; `_toc.typ` is baked from the PDF outline by
`build.py` until stable. The release build fails on missing includes, warnings or
non-converging contents. The audit checks question-pool counts, exact duplicate
stems, answer data, contents synchronisation and text-frame/short-page geometry.
It does not replace subject-matter review. Generated PDFs are ignored by Git.
