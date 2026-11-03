#import "template.typ": *

#chapter-opener(1, "Problem Solving, Algorithms and Flowcharts",
  subtitle: "Turn a problem into precise, testable steps",
  syllabus-ref: "PROBLEM-SOLVING SKILLS", utme-weight: "Core concepts")
#focus-radar(
  objectives: (
    "Distinguish a problem statement, algorithm, pseudocode and program.",
    "Recognise input, processing, output, selection and repetition.",
    "Interpret common flowchart symbols and follow a simple path.",
    "Trace an algorithm using sample data and boundary cases.",
  ),
  hotspots: (
    "A flowchart represents the steps graphically; pseudocode describes them in structured text.",
    "A decision symbol branches according to a condition.",
    "A loop needs a condition or other stopping rule.",
    "Check the boundary as well as an ordinary value when testing a comparison.",
  ),
  trap-summary: "A diagram is not automatically a correct algorithm: follow every branch and check that its output answers the question.",
)

== 1.1 From Problem to Solution

Start by understanding the problem: what data are supplied, what result is required, and what constraints apply? An *algorithm* is a finite, ordered set of unambiguous steps for solving a problem. A good algorithm should be clear enough to follow and should produce the intended result for valid inputs.

*Pseudocode* expresses an algorithm in structured, human-readable steps without requiring the exact syntax of a particular programming language. A *program* expresses instructions in a language that can be translated or executed by a suitable system. An algorithm can be written in pseudocode, represented as a flowchart, or implemented in more than one language.

#rule-box("Ask the three questions")[
  Identify the *input*, the *processing* and the *output*. For a mean of three marks, the inputs are three marks; the process adds them and divides by three; the output is the mean.
]

== 1.2 Sequence, Selection and Repetition

*Sequence* performs steps in order. *Selection* chooses between alternatives according to a condition. *Repetition*, or iteration, performs a step or group of steps repeatedly, subject to a suitable stopping rule. These structures can be combined: a loop can contain a decision, and a decision can select a sequence.

For example, read a mark, then test whether the mark is at least 50. If it is, display “Pass”; otherwise display “Below pass”. The phrase “at least” includes the boundary value 50. In pseudocode:

```text
INPUT mark
IF mark >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Below pass"
END IF
```

The pseudocode assumes the mark is valid. A complete real system may need to check that a numeric mark lies in an allowed range before interpreting it.

== 1.3 Reading a Flowchart

A conventional flowchart uses a *terminator* (often an oval or rounded shape) for start or end, a *process* rectangle for an operation, an *input/output* parallelogram for data entry or output, and a *decision* diamond for a condition. Arrows indicate the direction of control. Not every diagramming convention is identical, so use a supplied key when the question provides one.

#figure(
  grid(columns: (1fr, auto, 1fr, auto, 1fr), column-gutter: 4pt, align: center + horizon,
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*INPUT* \\ read mark], [→],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*DECIDE* \\ mark ≥ 50?], [→],
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*OUTPUT* \\ display result]),
  caption: [1.1 — A simplified decision path. The decision needs both a true and a false branch.],
)

A decision is incomplete if one possible outcome has no specified path. When tracing a chart, start at the terminator, follow arrow direction, evaluate each condition using the current values and record every change to a variable.

== 1.4 Tracing and Testing

A *trace table* records the changing values of variables as an algorithm runs. Consider `total = 0`, then add each of 3, 4 and 5 to `total`. The successive totals are 3, 7 and 12. The final result is 12, not the last input 5.

Use normal cases and boundary cases. For the condition `mark >= 50`, test 49, 50 and 51: they should take the false, true and true paths respectively. A test that uses only 75 cannot distinguish `>= 50` from `> 50`. Check invalid data separately according to the system's stated rules.

#concept-box("A stopping rule matters")[
  In `count = 1; WHILE count <= 3: OUTPUT count; count = count + 1`, the outputs are 1, 2 and 3. The increment changes the condition; without it the loop can continue indefinitely.
]

== 1.5 Four Worked Examples
#worked-example(1, "Identify the output", tier: "FOUNDATION",
  [An algorithm reads two numbers, adds them and displays the sum. The displayed sum is \
A. input \
B. output \
C. a condition \
D. a flowchart connector],
  [The sum is presented as the result after processing. The answer is *B*.])
#worked-example(2, "Test the boundary", tier: "UTME STANDARD",
  [A procedure prints “Pass” if `mark >= 50`. What does it print for 50? \
A. Below pass \
B. Nothing by definition \
C. Pass \
D. Error in every language],
  [The operator `>=` includes equality. Since 50 equals 50, the condition is true. The answer is *C*.])
#worked-example(3, "Trace a running total", tier: "UTME STANDARD",
  [A procedure starts with total 0 and adds 2, 6 and 3 in turn. Its final total is \
A. 11 \
B. 3 \
C. 6 \
D. 23],
  [The totals are 2, then 8, then 11. The answer is *A*.])
#worked-example(4, "Count the iterations", tier: "JAMB CHALLENGE",
  [A procedure sets `n = 1`, then repeatedly prints n and adds 1 while `n <= 4`. How many values does it print? \
A. 3 \
B. 5 \
C. 0 \
D. 4],
  [It prints 1, 2, 3 and 4. After the increment to 5, the condition is false. The answer is *D*.])

#trap-box("Three traps")[
  Do not confuse `>` with `>=`. Do not treat the last input as the running total. Do not assume a loop ends if its controlling value never changes.
]

== 1.6 Two-Minute Set
#mcq(1, [A decision in a conventional flowchart is commonly shown by a], [diamond], [rectangle], [straight line alone], [file extension])
#mcq(2, [Pseudocode is], [a physical processor], [structured description of steps], [a storage device], [always the exact syntax of one language])
#mcq(3, [The values 49, 50 and 51 are useful when testing `mark >= 50` because they], [are all invalid], [are all equal], [include the boundary and values on either side], [guarantee every possible input is correct])
#mcq(4, [Executing a group of steps repeatedly is], [output], [storage], [formatting], [iteration])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "A diamond conventionally represents a decision."), ("B", "Pseudocode gives structured steps without committing to one language's exact syntax."), ("C", "The three values test the boundary and its immediate neighbours."), ("D", "Iteration repeats steps according to a rule.")))
#concept-box("Recap card")[
  Identify input, process and output. Describe steps using pseudocode or a flowchart. Trace sequence, selection and repetition. Test normal cases, boundary cases and invalid input where relevant.
]
#chapter-checklist("Before moving on", (
  [I can state the input, process and output of a simple task.],
  [I can distinguish a process symbol from a decision symbol.],
  [I can trace changing variable values and a loop's stopping condition.],
  [I can select boundary tests for a comparison.],
))
#shortcut-box("Carry forward")[
  An algorithm describes the solution; a program implements it. The next chapter introduces variables, data types, operators and instructions in a programming language.
]
