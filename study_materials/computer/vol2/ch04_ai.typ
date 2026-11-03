#import "template.typ": *

#chapter-opener(4, "Artificial Intelligence and Its Applications",
  subtitle: "Patterns, predictions, decisions and their limits",
  syllabus-ref: "ARTIFICIAL INTELLIGENCE", utme-weight: "Core concepts")
#focus-radar(
  objectives: (
    "Describe artificial intelligence and machine learning in general terms.",
    "Identify examples of AI applications and distinguish data from a model.",
    "Explain training, testing and the risk of biased data.",
    "Recognise why human oversight and evaluation matter.",
  ),
  hotspots: (
    "Machine learning is one approach within the wider field of AI.",
    "A model learns patterns from training data; performance must be evaluated on suitable test data.",
    "An apparently confident output can still be wrong.",
    "Data quality, privacy and fairness matter throughout a system's use.",
  ),
  trap-summary: "An AI system is not automatically accurate, fair, conscious or suitable for every decision merely because it is called intelligent.",
)

== 4.1 What AI Means

*Artificial intelligence* (AI) is a broad field concerned with systems that perform tasks associated with abilities such as recognising patterns, reasoning, language processing or decision-making. Different definitions and approaches exist. An AI application need not work in the same way as the human brain, and the label alone does not establish that a system understands or is conscious.

*Machine learning* is a set of approaches in which a model is fitted using data to perform a task, such as classifying messages or estimating a value. Not every AI technique is machine learning. A rule-based system can use explicitly written rules; a machine-learning model derives parameters or patterns from examples under a training procedure.

#rule-box("Field, approach, application")[
  AI is the broad field. Machine learning is one family of approaches. A spam filter or image classifier is an application; its actual method depends on how it was built.
]

== 4.2 Data, Training and Evaluation

*Training data* are used to fit a model. In a supervised-learning example, training examples include inputs and desired labels, such as images labelled by category. A separate *test set* can help estimate how the trained model performs on examples not used to fit it. The split and evaluation procedure must be suitable for the problem; simply reporting a score without describing the data can be misleading.

A model can perform well on familiar training examples but poorly on new cases. This is one reason to evaluate on data that represent the intended use. Data that omit important groups or contain systematic errors can contribute to biased or unreliable results. A test score is evidence about a particular evaluation, not a promise of perfection in every situation.

#figure(
  grid(columns: (1fr, auto, 1fr, auto, 1fr), column-gutter: 4pt, align: center + horizon,
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*DATA* \\ examples and labels], [→],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*TRAIN* \\ fit a model], [→],
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*EVALUATE* \\ test new cases]),
  caption: [4.1 — A simplified supervised-learning workflow; deployment also requires monitoring and appropriate safeguards.],
)

== 4.3 Applications and Limits

Examples include speech recognition, recommendations, image classification, language tools and decision support. A recommendation system may suggest items based on patterns, but a recommendation is not proof that an item is suitable. An image classifier can misclassify an unfamiliar image. A language tool can produce plausible but incorrect statements.

For consequential uses, examine the source and quality of data, evaluate errors and possible unequal effects, protect personal information, and specify when a human should review or override an output. The appropriate safeguards depend on the task and context. Human review is useful but is not automatically effective if the reviewer blindly accepts every result.

#concept-box("A prediction is not a guarantee")[
  A system can return an answer with confidence and still be wrong. Check important claims against reliable sources and evaluate whether the system is appropriate for the decision.
]

== 4.4 Simple Evaluation

Suppose a classifier is tested on 20 examples and correctly labels 16. Its accuracy on that set is 16 ÷ 20 = 0.8, or 80%. This figure alone does not show which kinds of errors occurred or whether all relevant groups were represented. In some tasks, a false negative or false positive has a different consequence; an evaluation should consider the types of errors as well as the overall percentage. A useful report also describes the tested population and the conditions in which the evaluation was carried out.

== 4.5 Four Worked Examples
#worked-example(1, "Identify an application", tier: "FOUNDATION",
  [Which task is commonly associated with an AI application? \
A. Recognising spoken words \
B. Keeping a paper desk level \
C. Supplying wall electricity \
D. Holding a cable physically],
  [Speech recognition is an AI application. The answer is *A*.])
#worked-example(2, "Train and test", tier: "UTME STANDARD",
  [Why evaluate a model on suitable examples not used for fitting it? \
A. To guarantee it will never make an error \
B. To assess performance on new cases \
C. To remove the need for a task definition \
D. To prove every group is represented automatically],
  [Separate evaluation can indicate performance on cases not used to fit the model. It is not a guarantee of perfect future performance. The answer is *B*.])
#worked-example(3, "Calculate accuracy", tier: "UTME STANDARD",
  [A classifier correctly labels 18 of 20 test examples. Its accuracy on that set is \
A. 18% \
B. 80% \
C. 90% \
D. 98%],
  [18 ÷ 20 = 0.9. Multiply by 100 to obtain 90%. The answer is *C*.])
#worked-example(4, "The missing group", tier: "JAMB CHALLENGE",
  [A model is evaluated only on one type of user but will be used by several different groups. The main concern is that \
A. every result is automatically correct \
B. testing is unnecessary \
C. the data become hardware \
D. the evaluation may not represent the intended users],
  [A narrow test set may fail to reveal poor performance for other groups. The answer is *D*.])

#trap-box("Do not overclaim")[
  A high score on one test set does not prove accuracy for every person or context. Machine learning is an approach within AI, not a synonym for every possible AI method.
]

== 4.6 Two-Minute Set
#mcq(1, [Examples used to fit a machine-learning model are], [training data], [a printer tray], [a network cable], [a hard-copy result])
#mcq(2, [A classifier correctly labels 8 of 10 examples. Its accuracy on that set is], [8%], [80%], [90%], [100%])
#mcq(3, [A model output should be checked because], [it is necessarily conscious], [confidence guarantees accuracy], [it can be plausible but wrong], [human review is always unnecessary])
#mcq(4, [Data excluding relevant groups can contribute to], [guaranteed fairness], [unlimited accuracy], [physical cooling], [biased or unreliable results])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "Training data are used to fit a model."), ("B", "8 divided by 10 is 0.8, or 80%."), ("C", "A plausible or confident output can still be incorrect."), ("D", "Unrepresentative data can contribute to biased or unreliable results.")))
#concept-box("Recap card")[
  AI is a broad field; machine learning is one approach. Fit models with data, evaluate on suitable cases and consider error types, privacy, fairness and human oversight. A prediction is not a guarantee.
]
#chapter-checklist("Before moving on", (
  [I can distinguish AI as a field from machine learning as an approach.],
  [I can describe training data and a separate evaluation set.],
  [I can calculate simple accuracy on a stated test set.],
  [I can explain why biased data and unverified outputs matter.],
))
#shortcut-box("Carry forward")[
  A robot can use sensors, a controller and actuators to act in the physical world. Chapter 5 explores that control loop and the relationship between robotics and AI.
]
