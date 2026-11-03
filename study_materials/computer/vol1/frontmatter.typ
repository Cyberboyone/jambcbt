#import "template.typ": *
#import "_toc.typ": toc-rows

#page(header: none, footer: none, margin: 0pt, fill: jamb-navy)[
  #v(65pt)
  #align(center)[
    #text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER STUDY SERIES]
    #v(35pt)
    #text(font: "DejaVu Sans", size: 31pt, weight: "bold", fill: white)[COMPUTER STUDIES]
    #v(10pt)
    #text(font: "DejaVu Sans", size: 15pt, weight: "bold", fill: rgb("#6EE7B7"))[VOLUME 1]
    #v(18pt)
    #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: white)[Computing Fundamentals and Practical Skills]
    #v(35pt)
    #block(width: 76%, fill: rgb("#1E3A5F"), radius: 8pt, inset: 16pt)[
      #text(fill: white, size: 11pt)[From the history of computing to hardware, memory, data, software, files, maintenance and networks.]
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

Work through the chapter objectives and teaching sections before attempting the worked examples. For each chapter, answer the two-minute set and the 40-question drill without looking at the key. Mark every item, read the explanation and record why any error occurred.

The timed papers provide another opportunity to practise under a time limit. Use the rapid-fire section and glossary for retrieval, the model answers to strengthen explanations, and the comparison and trap tables to distinguish similar terms.

Computer Studies Volume 1 covers computing fundamentals and practical skills. Use the current official JAMB syllabus and the requirements of the institution and programme to confirm the material you need for your examination year; a subject choice is not automatically valid for every course.

== A practical study cycle

+ *Learn:* read a section, describe its figure in your own words and explain one contrast without looking.
+ *Apply:* work through the graded examples; write the reason for each choice rather than memorising a letter.
+ *Test:* complete the chapter drill before consulting its key. Record the question numbers you missed.
+ *Review:* identify whether an error came from knowledge, interpreting the prompt, or a calculation; return to the relevant section.
+ *Revisit:* after a gap, retry the idea with different values or in a different context.

#rule-box("Before taking a timed paper")[
  Use a clock and attempt the full set in one sitting. After marking, read the explanations for correct answers as well as mistakes; a correct guess is not evidence that the concept is secure. The questions in this book are original practice, not purported past JAMB questions.
]

The master bank contains fifteen questions for each chapter. Its memory and data-representation sections deliberately emphasise capacity and number-system calculations. Use the chapter drills and timed papers for broader conceptual practice as well.

#concept-box("A note on units and online information")[
  Write units at every step in a calculation, and use the convention stated in the question. Check official sources for current registration and programme requirements; do not share passwords or one-time codes when seeking information.
]
