#import "template.typ": *

#chapter-opener(1, "Evolution of Computing and Computer Systems",
  subtitle: "From counting devices to stored-program computers",
  syllabus-ref: "COMPUTING FUNDAMENTALS", utme-weight: "Foundations")

#focus-radar(
  objectives: (
    "Explain data, information and the input–process–output cycle.",
    "Identify important devices and people in the history of computing.",
    "Distinguish the five conventional generations by their main technologies.",
    "Classify computers by data handled, purpose and size or use.",
  ),
  hotspots: (
    "The abacus is a manual counting aid, not an electronic computer.",
    "The Difference Engine and the Analytical Engine were distinct designs.",
    "A transistor replaced bulky vacuum tubes in second-generation computers.",
    "A computer may be general-purpose and digital at the same time.",
  ),
  trap-summary: "A generation is a teaching category, not an exact switch on a single day; new technology and old machines overlap.",
)

== 1.1 Data, Information and a Computer

*Data* are raw facts or symbols, such as the marks 35, 48 and 57. *Information* is data interpreted in a useful context: the average of those three marks is about 46.7. The same number can be data in one task and information in another.

A computer is an electronic, programmable device that accepts data, processes it according to instructions, can store data and instructions, and produces output. Its speed and consistency are useful, but they do not guarantee that the input or the instructions are correct.

#rule-box("Garbage in, garbage out")[
  Incorrect input or an unsuitable program can produce an incorrect result even when the computer faithfully follows its instructions. Check the input, the procedure and the output.
]

#figure(
  grid(columns: (1fr, auto, 1fr, auto, 1fr), column-gutter: 4pt,
    align: center + horizon,
    block(fill: jamb-mint, radius: 5pt, inset: 9pt)[*INPUT* \ marks entered],
    [→],
    block(fill: info-bg, radius: 5pt, inset: 9pt)[*PROCESS* \ calculate mean],
    [→],
    block(fill: tip-bg, radius: 5pt, inset: 9pt)[*OUTPUT* \ display mean],
  ),
  caption: [1.1 — Input, processing and output. Storage can hold data and results for later use.],
)

== 1.2 A Short History of Computing

The *abacus* uses movable counters to assist arithmetic. It is not electronic. Blaise Pascal's mechanical calculator, the *Pascaline*, was designed for addition and subtraction; later mechanical machines extended arithmetic.

Charles Babbage designed the *Difference Engine* to calculate mathematical tables and the more ambitious *Analytical Engine* as a programmable mechanical design. Ada Lovelace wrote notes describing an algorithm for the Analytical Engine. Herman Hollerith's punched-card tabulating machines helped process the 1890 United States census. These devices should not be collapsed into one invention or one inventor.

Early electronic computing included ENIAC, a large vacuum-tube machine. Stored-program architecture places instructions as well as data in memory: the processor fetches instructions and executes them. The history is collaborative; the phrase “von Neumann architecture” names a commonly used design model, not a claim that one person invented every computer.

#concept-box("Distinguish the engines")[
  *Difference Engine:* intended for mathematical tables. *Analytical Engine:* a more general programmable mechanical design. Neither is the abacus, and neither is a transistor computer.
]

== 1.3 Generations and Their Technologies

The familiar five-generation scheme is a simplified teaching framework. Generations overlap, and classifications of the fifth generation vary by textbook.

#table(columns: (0.7fr, 1.25fr, 2.2fr), inset: 6pt, stroke: 0.5pt + jamb-border,
  table.header([*Generation*], [*Key technology*], [*Typical feature or example*]),
  [First], [Vacuum tubes], [Large machines with substantial heat and power demands; ENIAC is an early example.],
  [Second], [Transistors], [Smaller and generally more reliable than vacuum-tube machines.],
  [Third], [Integrated circuits], [Many electronic components combined on a chip.],
  [Fourth], [Microprocessors], [CPU functions placed on a microprocessor chip; personal computers expanded.],
  [Fifth], [AI-oriented approaches], [Often associated in textbooks with artificial intelligence and advanced parallel processing; not a single hardware component.],
)

A microprocessor is an integrated circuit, so fourth-generation technology builds on rather than replaces the idea of an integrated circuit. Do not infer the generation of every machine solely from its size.

== 1.4 Classifying Computers

A *digital* computer represents data using discrete values; an *analog* computer works with continuously varying quantities. A *hybrid* system combines features of both. A general-purpose computer can run many different programs, while a special-purpose system is designed for a restricted task. These classifications answer different questions: the same computer may be digital and general-purpose.

A desktop or laptop is commonly called a personal computer. A server supplies services to other devices over a network; this describes a *role*, not necessarily a unique physical size. Mainframes are designed for very large volumes of concurrent transactions, while supercomputers are used for extremely demanding numerical calculations. These categories can overlap in capability and are not an absolute ranking of every device.

#rule-box("Choose the right classification")[
  Ask what the question is classifying: *data form* (analog, digital, hybrid), *purpose* (general or special), or *role and scale* (personal computer, server, mainframe, supercomputer).
]

== 1.5 Four Worked Examples

#worked-example(1, "Raw marks and their mean", tier: "FOUNDATION",
  [A class records marks of 35, 48 and 57, then calculates their mean. Which is information in this task? \ A. The three unprocessed marks \ B. The calculated mean \ C. The keyboard \ D. The instruction to switch off],
  [Add the marks: 35 + 48 + 57 = 140. Divide by three to get about 46.7. The mean summarises the marks in context, so *B* is the best answer.])

#worked-example(2, "The generation clue", tier: "UTME STANDARD",
  [The principal electronic component associated with second-generation computers is the \ A. vacuum tube \ B. transistor \ C. microprocessor \ D. punched card],
  [In the conventional sequence, vacuum tubes are first generation and transistors are second. Punched cards are an input or storage medium, not the generation's principal electronic switching component. *Answer: B.*])

#worked-example(3, "Two independent labels", tier: "UTME STANDARD",
  [A programmable laptop performs word processing, calculations and browsing using discrete binary data. It is best described as \ A. analog and special-purpose \ B. digital and general-purpose \ C. analog and general-purpose \ D. hybrid and special-purpose],
  [Binary data point to a digital computer. Its ability to run several kinds of program makes it general-purpose. The labels describe different dimensions, so *B* is correct.])

#worked-example(4, "Technology versus device", tier: "JAMB CHALLENGE",
  [A question asks which development most directly made a CPU available on a single chip. Choose \ A. an abacus \ B. a punched card \ C. a microprocessor \ D. a magnetic tape],
  [A microprocessor implements processor functions on an integrated-circuit chip. The abacus is a manual aid; punched cards and tape are media for data or instructions. The best answer is *C*, not the storage medium.])

#trap-box("Four traps to avoid")[
  Do not call the abacus electronic. Do not confuse Babbage's two engines. Do not identify a generation by size alone. Do not mistake a server's role for a compulsory physical form.
]

== 1.6 Two-Minute Set

#mcq(1, [Which is a manual counting aid?], [Abacus], [Microprocessor], [Transistor], [Vacuum tube])
#mcq(2, [The Difference Engine was designed principally for], [network routing], [mathematical tables], [word processing], [wireless communication])
#mcq(3, [An analog computer handles quantities that vary], [only as text], [only in binary digits], [continuously], [only as whole numbers])
#mcq(4, [An integrated circuit is most closely associated with which conventional generation?], [First], [Second], [None], [Third])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "The abacus uses movable counters."), ("B", "Babbage designed it to calculate tables."), ("C", "Analog systems work with continuously varying quantities."), ("D", "The third generation is commonly associated with integrated circuits.")))

#concept-box("Recap card")[
  *Data → processing → information.* Abacus → mechanical calculators → electronic computers. Vacuum tubes → transistors → integrated circuits → microprocessors. Classify separately by data form, purpose and role.
]

#chapter-checklist("Before moving on", (
  [I can distinguish data from information with an example.],
  [I can name the Difference and Analytical Engines without confusing them.],
  [I can match the first four conventional generations to their main technologies.],
  [I can classify a computer by data form and by purpose.],
))

#shortcut-box("Carry forward")[
  The input–process–output model becomes more useful when you can identify the actual components. Chapter 2 examines input devices, the CPU, output devices and their roles.
]
