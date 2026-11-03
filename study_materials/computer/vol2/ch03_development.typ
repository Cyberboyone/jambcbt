#import "template.typ": *

#chapter-opener(3, "Program Development and the System Life Cycle",
  subtitle: "From requirements to maintenance",
  syllabus-ref: "PROGRAM DEVELOPMENT", utme-weight: "Core concepts")
#focus-radar(
  objectives: (
    "Describe common activities in developing a program or system.",
    "Distinguish requirements, design, implementation, testing and maintenance.",
    "Explain normal, boundary and invalid test cases.",
    "Compare documentation for users and technical maintainers.",
  ),
  hotspots: (
    "Requirements state what a system needs to do; design describes a proposed solution.",
    "Testing compares actual behaviour with expected behaviour.",
    "A boundary test targets the edge of an allowed range.",
    "Maintenance can include correction, adaptation and improvement after deployment.",
  ),
  trap-summary: "Life-cycle diagrams are models: real projects can revisit earlier activities instead of proceeding in one irreversible straight line.",
)

== 3.1 Define the Problem and Requirements

Development starts by understanding the problem and the people who will use the solution. *Requirements* describe needed behaviour and constraints. A functional requirement might say that a school system records attendance; a non-functional requirement might specify a response-time target or an access-control requirement. A clear requirement should be testable where practical.

A *feasibility study* considers whether a proposed solution is practical under relevant constraints, such as resources, technical capability, time and legal obligations. A feasible idea is not necessarily the only or best solution.

#rule-box("Requirement or design?")[
  “The system must record attendance” is a requirement. “Use a database table with a date column” is a possible design choice. The distinction helps a team evaluate alternative designs.
]

== 3.2 Design, Implementation and Testing

*Design* plans how the requirements will be met: inputs, outputs, data structures, algorithms and interfaces. *Implementation* puts the design into practice, including writing or configuring software. *Testing* supplies cases, observes actual results and compares them with expected results.

Development can be iterative: a test may reveal a misunderstanding that leads back to requirements or design. The simplified diagram below shows activities in a useful order, not a rule that every project follows them only once.

#figure(
  grid(columns: (1fr, auto, 1fr, auto, 1fr, auto, 1fr), column-gutter: 3pt, align: center + horizon,
    block(fill: jamb-mint, inset: 6pt, radius: 5pt)[*REQUIRE*], [→],
    block(fill: info-bg, inset: 6pt, radius: 5pt)[*DESIGN*], [→],
    block(fill: tip-bg, inset: 6pt, radius: 5pt)[*BUILD*], [→],
    block(fill: jamb-light, inset: 6pt, radius: 5pt)[*TEST*]),
  caption: [3.1 — A simplified development sequence; feedback can send the team back to an earlier activity.],
)

== 3.3 Choosing Test Data

Suppose valid marks are integers from 0 through 100, inclusive. A *normal* valid test might be 65. *Boundary* tests include 0 and 100, with neighbouring values such as −1 and 101 to check how the system treats input just outside the range. An *invalid* case might be a non-numeric value, if the input specification requires an integer.

Each test needs an expected result. For example, if 101 must be rejected, “enter 101” alone is an incomplete test description: the expected result is rejection with the specified response. Testing can reveal defects but cannot by itself prove that a complex system has no defects.

#concept-box("Expected versus actual")[
  Record the input, the expected result, the actual result and whether they agree. A test is useful because the comparison can reveal a mismatch, not merely because a program was run.
]

== 3.4 Deployment, Documentation and Maintenance

*Deployment* makes a system available in its intended environment. User training and migration of existing data may be needed. Documentation for users explains tasks and common problems; technical documentation supports developers or maintainers by describing design, interfaces and relevant operating details.

*Maintenance* continues after deployment. Corrective maintenance fixes defects; adaptive maintenance responds to changes in the environment or requirements; improvements can add or refine functionality. A project may use different labels and processes, but the underlying distinction is the purpose of the change.

== 3.5 Four Worked Examples
#worked-example(1, "Identify a requirement", tier: "FOUNDATION",
  [Which is a functional requirement? \
A. The system records each pupil's attendance. \
B. The casing is a particular colour. \
C. A developer owns a keyboard. \
D. The room has a window.],
  [Recording attendance describes a function the system must perform. The answer is *A*.])
#worked-example(2, "Choose a boundary", tier: "UTME STANDARD",
  [A valid integer score is from 0 to 100 inclusive. Which pair contains both valid boundaries? \
A. 1 and 99 \
B. 0 and 100 \
C. −1 and 101 \
D. 50 and 75],
  [The inclusive endpoints are 0 and 100. The answer is *B*.])
#worked-example(3, "Purpose of testing", tier: "UTME STANDARD",
  [A tester enters 101 when the maximum valid score is 100. The expected result is \
A. acceptance as valid \
B. a guaranteed hardware failure \
C. rejection according to the specification \
D. an automatic mark of 100 in every system],
  [The test checks that out-of-range input is handled according to the stated rules. The answer is *C*.])
#worked-example(4, "Respond to a change", tier: "JAMB CHALLENGE",
  [A deployed system must be changed to work with a new operating-system environment. This is most directly \
A. a flowchart symbol \
B. input validation \
C. printing \
D. adaptive maintenance],
  [The change responds to a changed operating environment. The answer is *D*.])

#trap-box("A test needs an expected outcome")[
  A list of inputs alone does not establish whether the program behaved correctly. State what should happen, observe what did happen and compare the two.
]

== 3.6 Two-Minute Set
#mcq(1, [Requirements describe], [needed behaviour and constraints], [only the final machine's colour], [a printer cable only], [a guarantee of zero defects])
#mcq(2, [The inclusive boundaries of 1 to 10 are], [0 and 11], [1 and 10], [2 and 9], [5 and 6])
#mcq(3, [Documentation explaining how to perform user tasks is], [processor memory], [a power supply], [user documentation], [a magnetic platter])
#mcq(4, [Fixing an identified defect after deployment is], [input], [output], [a network address], [corrective maintenance])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "Requirements state what is needed and any constraints."), ("B", "The endpoints 1 and 10 are included."), ("C", "User documentation explains how to operate the system."), ("D", "Corrective maintenance fixes an existing defect.")))
#concept-box("Recap card")[
  Understand requirements, design a solution, implement it, test expected against actual results, deploy it and maintain it. Feedback can require revisiting earlier activities.
]
#chapter-checklist("Before moving on", (
  [I can distinguish a requirement from a design choice.],
  [I can select normal, boundary and invalid test data.],
  [I can state an expected result for a test.],
  [I can explain deployment, documentation and maintenance.],
))
#shortcut-box("Carry forward")[
  Algorithms are also used in artificial intelligence. The next chapter introduces AI and the difference between a useful prediction and a guaranteed correct answer.
]
