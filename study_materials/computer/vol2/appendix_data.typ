#import "template.typ": *
#current-chapter.update("Appendix D: Rules and Calculations")
= Appendix D — Rules and Calculations

#table(columns: (1.25fr, 2.1fr, 2fr), inset: 6pt, stroke: 0.5pt + jamb-border,
  table.header([*Topic*], [*Rule*], [*Example*]),
  [Assignment], [Use the previous value on the right, then store the result.], [`x = 5; x = x + 2` gives 7 in the stated pseudocode.],
  [Boundary], [`>=` includes equality; `>` excludes it.], [At 50, `mark >= 50` is true.],
  [AND], [True only if both conditions are true.], [True AND false is false.],
  [OR], [True if at least one condition is true.], [True OR false is true.],
  [NOT], [Reverses a Boolean value.], [NOT true is false.],
  [Accuracy], [correct predictions ÷ test cases × 100%.], [18 correct of 20 = 90% on that set.],
)

== D.1 Logic Table

#table(columns: (1fr, 1fr, 1fr, 1fr), inset: 6pt, stroke: 0.5pt + jamb-border,
  table.header([*P*], [*Q*], [*P AND Q*], [*P OR Q*]),
  [False], [False], [False], [False],
  [False], [True], [False], [True],
  [True], [False], [False], [True],
  [True], [True], [True], [True],
)

#rule-box("Use the stated conventions")[
  Programming languages can differ in syntax, precedence and error behaviour. Follow the question's stated language or pseudocode rules. A test-set accuracy is evidence about that evaluation, not a guarantee for every future case.
]
