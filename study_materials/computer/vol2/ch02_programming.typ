#import "template.typ": *

#chapter-opener(2, "Programming Languages and Program Structure",
  subtitle: "Variables, types, operators and control flow",
  syllabus-ref: "PROBLEM-SOLVING SKILLS", utme-weight: "Core concepts")
#focus-radar(
  objectives: (
    "Distinguish machine, assembly and high-level languages.",
    "Explain variables, constants and common data types.",
    "Evaluate simple arithmetic, relational and logical expressions.",
    "Distinguish syntax, runtime and logic errors.",
  ),
  hotspots: (
    "An assembler translates assembly language; a compiler translates source code.",
    "Assignment stores a value; a comparison tests a relationship.",
    "Integer division conventions differ across languages: use the rule stated in a question.",
    "A program may run without a syntax error and still contain a logic error.",
  ),
  trap-summary: "Symbols do not have identical meanings in every programming language; the question's stated notation takes precedence.",
)

== 2.1 Languages and Translators

*Machine code* consists of instructions in a form a processor architecture can execute. *Assembly language* uses symbolic instruction names closely related to machine instructions; an assembler translates it. A *high-level language* provides abstractions that are generally closer to human problem descriptions and less tied to a particular processor.

A *compiler* translates source code into another representation, often machine code or intermediate code. An *interpreter* executes instructions according to a representation. Real implementations can combine techniques, so these are introductory descriptions rather than absolute rules for every language.

#figure(
  grid(columns: (1fr, auto, 1fr, auto, 1fr), column-gutter: 4pt, align: center + horizon,
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*SOURCE* \\ written instructions], [→],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*TRANSLATE* \\ compiler or assembler], [→],
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*EXECUTE* \\ perform operations]),
  caption: [2.1 — A simplified translation path. Actual language implementations can combine compilation and interpretation.],
)

== 2.2 Variables, Constants and Types

A *variable* names a value that a program can use and, where permitted, change. A *constant* is a value intended not to change in the relevant scope. An *integer* represents a whole-number value, a *real* or floating-point type represents approximate numeric values in many systems, a *Boolean* represents true or false, and a *string* represents text. Exact ranges, precision and type rules depend on the language.

In the pseudocode used here, `SET score = 12` assigns 12 to `score`. If the next instruction is `SET score = score + 3`, evaluate the right-hand side using the old value, then store the result: `score` becomes 15. The equal sign in this pseudocode is an assignment marker, not a claim about every language's syntax.

#rule-box("Assignment is not a mathematical equation")[
  Read `SET x = x + 1` as “replace the stored value of x with its previous value plus one”. It is an instruction, not the algebraic claim that a number equals itself plus one.
]

== 2.3 Operators and Conditions

Arithmetic operators include addition, subtraction and multiplication. Relational operators compare values: `<` means less than, while `>=` means greater than or equal to. Logical operators combine or reverse conditions: *AND* is true when both conditions are true; *OR* is true when at least one is true; *NOT* reverses a Boolean value.

For example, if `age = 18` and `registered = true`, the condition `age >= 18 AND registered` is true. If registration is false, the combined condition is false. This is an illustrative programming condition, not a complete statement of legal voting requirements.

Parentheses make grouping explicit. In ordinary arithmetic, `2 + 3 × 4` gives 14, while `(2 + 3) × 4` gives 20. Programming-language precedence rules can differ in details; use the rule specified in an exam question.

== 2.4 Errors and Debugging

A *syntax error* violates the language's grammar. A *runtime error* occurs while a program executes, for example an invalid operation under the language's rules. A *logic error* causes an unintended result even though the program can run. The classification of a particular fault depends on the language and context; for example, division by zero does not behave identically in every environment.

*Debugging* is the process of locating and correcting defects. Reproduce the problem, compare expected and actual results, inspect the relevant steps, change one thing at a time when practical, and retest. Include boundary and invalid-input tests where the specification requires them.

#concept-box("Three different questions")[
  Can the program be read or translated as written? *Syntax.* Does a fault occur while it runs? *Runtime.* Does it run but compute the wrong result? *Logic.*
]

== 2.5 Four Worked Examples
#worked-example(1, "The type", tier: "FOUNDATION",
  [Which type most directly represents a true-or-false value? \
A. Boolean \
B. String only \
C. Printer \
D. Folder],
  [A Boolean value is true or false. The answer is *A*.])
#worked-example(2, "Trace an assignment", tier: "UTME STANDARD",
  [A procedure sets x to 7 and then sets x to x + 4. The final value of x is \
A. 3 \
B. 11 \
C. 7 \
D. 74],
  [Use the old value of x on the right: 7 + 4 = 11. Store 11 in x. The answer is *B*.])
#worked-example(3, "Logical AND", tier: "UTME STANDARD",
  [If P is true and Q is false, the value of P AND Q is \
A. true \
B. 1 in every language regardless of type \
C. false \
D. a filename],
  [AND requires both conditions to be true. Because Q is false, the result is false. The answer is *C*.])
#worked-example(4, "A program that runs incorrectly", tier: "JAMB CHALLENGE",
  [A program computes the area of a rectangle as length + width rather than length × width. It runs but gives the wrong result. The defect is principally a \
A. keyboard \
B. hardware port \
C. display pixel \
D. logic error],
  [The procedure implements the wrong calculation. The program can run, but the result is wrong: *D*, a logic error.])

#trap-box("Check the operator and the language")[
  Do not read an assignment as an equality test. Do not assume AND means “either”. Do not assume a single symbol has the same meaning in all languages.
]

== 2.6 Two-Minute Set
#mcq(1, [Assembly-language instructions are translated by an], [assembler], [input device], [access point], [backup])
#mcq(2, [A value intended not to change in its relevant scope is a], [printer], [constant], [router], [pixel])
#mcq(3, [The value of true OR false is], [false], [undefined in every language], [true], [a character string necessarily])
#mcq(4, [A program that runs but uses the wrong formula has a], [port], [hard copy], [flowchart symbol], [logic error])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "An assembler translates assembly-language instructions."), ("B", "A constant is intended not to change within its relevant scope."), ("C", "OR is true when at least one condition is true."), ("D", "An incorrect formula can be a logic error even if the program runs.")))
#concept-box("Recap card")[
  Assembly language is translated by an assembler. Variables hold values; types describe kinds of values. Assignment updates a value, comparisons test it, and logical operators combine conditions. Distinguish syntax, runtime and logic errors.
]
#chapter-checklist("Before moving on", (
  [I can distinguish machine, assembly and high-level languages.],
  [I can trace a variable through assignments.],
  [I can evaluate simple AND, OR and comparison conditions.],
  [I can distinguish syntax, runtime and logic errors with examples.],
))
#shortcut-box("Carry forward")[
  Programs grow beyond a few instructions. Chapter 3 considers program development, testing and the stages of a system's life cycle.
]
