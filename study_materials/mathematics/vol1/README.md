# JAMB Mathematics — Volume 1: Number & Numeration

A 301-page, print-ready A4 study manual covering the **entire JAMB UTME Mathematics Section I**
syllabus (Number and Numeration), built as the first volume of a four-volume Mathematics series.

## Build

```bash
pip install typst pymupdf matplotlib pillow
python generate_diagrams.py     # regenerates all SVG diagrams
python build.py                 # compiles the PDF
```

## Contents

| Part | File | What it holds |
|---|---|---|
| Front matter | `frontmatter.typ` | Cover, series map, CBT strategy, syllabus matrix, contents, diagnostic pre-test |
| Design system | `template.typ` | Page setup, callout boxes, worked-example cards, MCQ and answer-key components |
| Ch 1 | `ch01_number_bases.typ` | Number bases, bicimals, base arithmetic, unknown-base equations |
| Ch 2 | `ch02_modular_arithmetic.typ` | Congruences, negative residues, inverses, linear/quadratic congruences, calendar cycles |
| Ch 3 | `ch03_fractions_decimals_errors.typ` | HCF/LCM, BODMAS, recurring decimals, s.f./d.p., error bounds |
| Ch 4 | `ch04_ratio_proportion_rates.typ` | Ratio, proportion, compound work, cisterns, speed, mixtures, map scales |
| Ch 5 | `ch05_commercial_financial_math.typ` | SI/CI, depreciation, profit/loss, discounts, shares & dividends, VAT, tax |
| Ch 6 | `ch06_indices_standard_form.typ` | Index laws, indicial equations, disguised quadratics, standard form |
| Ch 7 | `ch07_logarithms.typ` | Log laws, change of base, table-free evaluation, log equations & inequalities |
| Ch 8 | `ch08_surds.typ` | Surd simplification, conjugates, roots of surds, radical equations |
| Ch 9 | `ch09_sets_venn_diagrams.typ` | Set algebra, De Morgan, two- and three-set Venn applications, bounds |
| Ch 10 | `ch10_mock_exam.typ` | 60-question cumulative mock with full solutions |
| Appendices | `zappendices.typ` | Formula compendium, 45-day plan, CBT protocol, 140-term glossary |
| Appendices | `zdrills.typ` | Chapter recaps, 250 flashcards, second 60-question mock, FAQ, study calendar |
| Appendices | `zchallenges.typ` | 30 extra worked examples, 20 advanced challenge problems, error-log templates |
| Appendices | `zfinal.typ` | 120 numeric speed drills, final qualifying test, 108 archetypes |

## Volume map (Mathematics)

1. **Number & Numeration** (this volume) — Section I, ~10–12 of 40 UTME questions
2. **Complete Algebra** — Section II
3. **Geometry, Mensuration & Trigonometry** — Section III
4. **Calculus, Statistics & Probability** — Sections IV–V
