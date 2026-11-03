#import "template.typ": *
#current-chapter.update("Appendix I: Comparison Tables")
= Appendix I — Comparison Tables

== I.1 Problem Solving and Programming
#table(columns: (1.1fr, 2.1fr, 2.1fr), inset: 5pt, stroke: 0.5pt + jamb-border,
  table.header([*Contrast*], [*First idea*], [*Second idea*]),
  [Algorithm / program], [Algorithm: solution steps.], [Program: instructions implemented in a language.],
  [Pseudocode / flowchart], [Structured textual description.], [Graphical representation of steps and control.],
  [Selection / iteration], [Choose a path by a condition.], [Repeat steps according to a rule.],
  [Assignment / comparison], [Store a value under the stated notation.], [Test a relationship between values.],
  [Syntax / logic error], [Violation of language grammar.], [Wrong procedure can run but produce an unintended result.],
)

== I.2 Development and AI
#table(columns: (1.1fr, 2.1fr, 2.1fr), inset: 5pt, stroke: 0.5pt + jamb-border,
  table.header([*Contrast*], [*First idea*], [*Second idea*]),
  [Requirement / design], [What the system needs to do or a constraint.], [A proposed way of meeting the need.],
  [Expected / actual], [Specified outcome for a test.], [Observed outcome when the test runs.],
  [Corrective / adaptive], [Fixes an existing defect.], [Responds to a changed environment or requirement.],
  [Training / test data], [Examples used to fit a model.], [Cases used to evaluate its performance.],
  [Accuracy / fairness], [A proportion correct on a stated set.], [Requires attention to relevant groups, outcomes and context.],
)

== I.3 Robotics, Security and Ethics
#table(columns: (1.1fr, 2.1fr, 2.1fr), inset: 5pt, stroke: 0.5pt + jamb-border,
  table.header([*Contrast*], [*First idea*], [*Second idea*]),
  [Sensor / actuator], [Detects or measures a condition.], [Produces physical action.],
  [Open / closed loop], [Does not use outcome feedback in that control loop.], [Uses feedback about the outcome.],
  [Confidentiality / integrity], [Prevent unauthorised disclosure.], [Protect against improper alteration.],
  [Backup / encryption], [A separate recoverable copy.], [Transforms data under a scheme using keys.],
  [Access / permission], [Technical ability to reach a resource.], [Authorisation to use or change it.],
  [Attribution / permission], [Acknowledge the source.], [Authority for a use where required.],
)
