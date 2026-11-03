#import "template.typ": *
#import "_toc.typ": toc-rows

#page(header: none, footer: none, margin: 0pt, fill: jamb-navy)[
  #v(65pt)
  #align(center)[
    #text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER STUDY SERIES]
    #v(35pt)
    #text(font: "DejaVu Sans", size: 31pt, weight: "bold", fill: white)[COMPUTER STUDIES]
    #v(10pt)
    #text(font: "DejaVu Sans", size: 15pt, weight: "bold", fill: rgb("#6EE7B7"))[VOLUME 2]
    #v(18pt)
    #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: white)[Problem Solving, Programming and Digital Society]
    #v(35pt)
    #block(width: 76%, fill: rgb("#1E3A5F"), radius: 8pt, inset: 16pt)[
      #text(fill: white, size: 11pt)[Algorithms, program development, AI, robotics, security, ethics and careers — explained through examples and practice.]
    ]
    #v(25pt)
    #text(font: "DejaVu Sans", size: 9pt, fill: rgb("#CBD5E1"))[EIGHT CHAPTERS • GRADED PRACTICE • TIMED PAPERS • REFERENCE APPENDICES]
  ]
]

#pagebreak()
#current-chapter.update("Contents")
= Table of Contents
#toc-two-column(toc-rows, compact: true)

#pagebreak(weak: true)
#current-chapter.update("How to use this book")
= How to use this book

Read the chapter objectives and sections before attempting the worked examples. Answer the two-minute set and the 40-question drill without looking at the key. Mark every item, read the explanation and record why any error occurred.

The timed papers provide mixed practice under a time limit. Use the rapid-fire section and glossary for retrieval, the model answers to strengthen explanations, and the comparison and trap tables to distinguish similar concepts.

This volume covers problem-solving, programming and human issues. Volume 1 covers computing fundamentals and practical skills. Consult the current official JAMB syllabus and the requirements of the institution and programme for your examination year; a subject choice is not automatically valid for every course.

== A practical study cycle

+ *Learn:* explain the chapter's diagram and a key contrast in your own words.
+ *Apply:* trace variables, conditions and loops on paper before looking at a solution.
+ *Test:* complete the chapter drill before consulting its key and record uncertain items.
+ *Review:* distinguish an error in knowledge, interpretation or arithmetic; revisit the relevant section.
+ *Revisit:* after a gap, try a different example and explain why the answer follows.

#rule-box("Before taking a timed paper")[
  Use a clock and attempt the full set in one sitting. After marking, read explanations for correct answers as well as mistakes; a correct guess does not establish understanding. The questions in this book are original practice, not purported past JAMB questions.
]

The master bank contains fifteen questions per chapter. Its first four sets deliberately emphasise tracing, arithmetic, boundary tests and model accuracy. Use the chapter drills and timed papers for broader conceptual practice as well.

#concept-box("Read the question's conventions")[
  Programming notation and system behaviour can differ by language. Use the rule stated in the question. Do not assume that a technical ability implies permission or that a confident AI output is correct.
]
