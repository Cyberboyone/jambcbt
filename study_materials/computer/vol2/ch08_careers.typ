#import "template.typ": *

#chapter-opener(8, "Computing Careers and Practical Revision",
  subtitle: "Match a problem to a role, a skill and a responsible action",
  syllabus-ref: "CAREER PROSPECTS", utme-weight: "Applied concepts")
#focus-radar(
  objectives: (
    "Identify common computing roles and their typical responsibilities.",
    "Explain why communication, teamwork and continuing learning matter.",
    "Apply problem-solving, testing, security and ethics together.",
    "Select evidence and check current study or career requirements.",
  ),
  hotspots: (
    "A role title describes typical work, but responsibilities can overlap.",
    "A programmer writes and tests code; a network specialist supports networks.",
    "A security specialist helps identify and manage security risks.",
    "Every role benefits from documentation and responsible handling of data.",
  ),
  trap-summary: "No one job title guarantees a particular qualification, salary or legal authority; check current requirements for the actual role or programme.",
)

== 8.1 Computing Roles

A *software developer* designs, writes, tests and maintains software. A *network specialist* designs, operates or supports network infrastructure. A *database professional* helps design, manage or protect data systems. A *cybersecurity professional* helps assess and manage security risks. A *systems analyst* investigates needs and helps translate them into requirements and solutions.

A *data analyst* examines data to answer questions and communicate findings. A *user-experience designer* studies user needs and designs interactions; an *accessibility specialist* helps identify and remove barriers to use. Titles and responsibilities vary between organisations, and one person may perform several roles.

#figure(
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 5pt, align: center + horizon,
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*BUILD* \\ software and systems],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*OPERATE* \\ networks and data],
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*PROTECT* \\ security and users]),
  caption: [8.1 — Computing roles overlap; teams combine technical work with communication and care for users.],
)

== 8.2 Skills and Preparation

Technical knowledge is important, but so are listening, clear writing, teamwork and the ability to explain assumptions. A developer who misunderstands a requirement can build a functioning system that solves the wrong problem. A security professional must report risks clearly and work within authorisation.

Practice with small projects: state the problem, design a solution, test it using normal and boundary cases, document what was done and reflect on limitations. Use fictional or appropriately authorised data. Keep learning because tools and requirements change; check current official institution and employer information rather than assuming one route fits every career.

#rule-box("Build evidence of a skill")[
  A useful practice project includes a clear task, a method, test inputs and expected results, an explanation of outcomes, and acknowledgement of sources or permitted materials used.
]

== 8.3 An Integrated Example

A school wants a tool to record attendance. The team first gathers requirements, including who may view or change records. It designs input validation and a suitable storage method, implements the tool, and tests ordinary and boundary cases. It prepares user guidance and a way to report problems.

Because attendance can be personal information, the team limits access, follows the applicable policy, uses suitable safeguards and tests backups. After deployment, it monitors defects and makes authorised corrections. These steps connect the previous chapters: algorithm, software, testing, security and ethics all contribute.

== 8.4 Revision Under Time Pressure

Read the question carefully and identify the concept before scanning the options. In a trace, record current values rather than guessing from the last line. In a percentage question, write the numerator and denominator. In a security or ethics question, distinguish permission from technical access and avoid absolute claims such as “always safe” unless the conditions actually support them.

If a question specifies a programming language or unit convention, apply that specification. When reviewing an answer, explain why the chosen option fits and why the strongest distractor does not.

#concept-box("A four-step check")[
  *Identify* the requested concept; *apply* the stated rule; *check* the result or condition; *review* any assumption that the question did not provide.
]

== 8.5 Four Worked Examples
#worked-example(1, "The network fault", tier: "FOUNDATION",
  [A school needs help operating its local network. Which role is most directly relevant? \
A. Network specialist \
B. Printer paper supplier only \
C. Abacus bead maker \
D. Keyboard stand],
  [A network specialist supports network infrastructure. The answer is *A*.])
#worked-example(2, "Gathering needs", tier: "UTME STANDARD",
  [A team interviews users and records what an attendance system must do. This is primarily \
A. printing \
B. requirements work \
C. cable disposal \
D. a processor register],
  [The team is identifying required behaviour and constraints. The answer is *B*.])
#worked-example(3, "Test a boundary", tier: "UTME STANDARD",
  [A form accepts ages from 10 through 18 inclusive. Which pair is at the valid boundaries? \
A. 9 and 19 \
B. 11 and 17 \
C. 10 and 18 \
D. 12 and 16],
  [The inclusive endpoints are 10 and 18. The answer is *C*.])
#worked-example(4, "A responsible project", tier: "JAMB CHALLENGE",
  [A learner wants to demonstrate an attendance tool publicly. The safest general choice is to \
A. publish real student passwords \
B. ignore access permissions \
C. claim every output is guaranteed correct \
D. use fictional or appropriately authorised data and explain limitations],
  [Practice data should not unnecessarily expose real records, and a responsible demonstration explains its limits. The answer is *D*.])

#trap-box("A job title is not permission")[
  A security role does not give a person unlimited authority to access systems. Work within the specific authorisation, policy and applicable law.
]

== 8.6 Two-Minute Set
#mcq(1, [A person designing and maintaining software is commonly a], [software developer], [printer cartridge], [network cable], [paper tray])
#mcq(2, [A systems analyst commonly helps], [replace all electricity], [investigate needs and define requirements], [make paper], [eliminate the need for users])
#mcq(3, [Checking expected against actual results is part of], [screen manufacture], [typing only], [testing], [changing a desk colour])
#mcq(4, [A responsible practice project should], [publish passwords], [ignore permissions], [hide known limitations], [document its method and tests])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "Software developers design, write, test and maintain software."), ("B", "A systems analyst helps investigate needs and define requirements."), ("C", "Testing compares actual behaviour with expected results."), ("D", "Documenting methods and tests supports review and responsible practice.")))
#concept-box("Recap card")[
  Computing roles overlap across software, networks, data, security and user experience. Successful projects combine requirements, design, testing, communication and responsible handling of data.
]
#chapter-checklist("Before moving on", (
  [I can match common computing roles to typical responsibilities.],
  [I can explain the value of communication and documentation.],
  [I can connect requirements, testing, security and ethics in a project.],
  [I know to check current requirements for a course or role.],
))
#shortcut-box("Carry forward")[
  The next step is practice: attempt the chapter drills and timed papers, review explanations, and return to the concepts behind any uncertain answer.
]
