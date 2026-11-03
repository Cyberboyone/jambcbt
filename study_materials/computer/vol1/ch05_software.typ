#import "template.typ": *

#chapter-opener(5, "Software and Operating Systems",
  subtitle: "The instructions that make hardware useful",
  syllabus-ref: "COMPUTING FUNDAMENTALS", utme-weight: "Core concepts")
#focus-radar(
  objectives: (
    "Distinguish system software from application software.",
    "Describe the principal functions of an operating system.",
    "Identify utilities, drivers and language translators.",
    "Distinguish licensing terms from technical capability.",
  ),
  hotspots: (
    "An operating system manages resources; a word processor creates documents.",
    "A device driver helps an operating system communicate with hardware.",
    "A compiler and an interpreter are both language translators.",
    "Open source describes licence permissions, not necessarily a zero price.",
  ),
  trap-summary: "A program can be free of charge without granting the right to inspect or modify its source code.",
)

== 5.1 What Software Does

Software comprises programs and associated instructions that direct a computer. *System software* supports the running of the computer and its applications; *application software* helps a user perform particular tasks. An operating system and a device driver are examples of system software. A spreadsheet and a web browser are applications.

A program is a set of instructions. Source code is a human-readable representation written in a programming language. The processor ultimately executes machine-level instructions, directly or through an appropriate translation and execution system.

#figure(
  grid(columns: (1fr,), row-gutter: 4pt,
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*USER TASKS* — write, calculate, communicate],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*APPLICATIONS* — word processor, spreadsheet, browser],
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*SYSTEM SOFTWARE* — operating system, drivers, utilities],
    block(fill: jamb-light, inset: 8pt, radius: 5pt)[*HARDWARE* — processor, memory, storage, peripherals]),
  caption: [5.1 — A simplified view of the relationship between users, software and hardware.],
)

== 5.2 Operating System Functions

An *operating system* (OS) manages the resources of a computer and provides services used by applications. It schedules processes, manages memory, organises files, coordinates input and output devices, and provides ways for users and programs to interact with the system. Examples include Windows, Linux distributions, macOS, Android and iOS.

A *process* is a running instance of a program. A multitasking OS can manage multiple processes, sharing processor time according to its scheduling decisions. A graphical user interface (GUI) uses visual elements such as windows, icons and menus; a command-line interface (CLI) accepts typed commands. Many systems offer both, and a GUI is not itself the whole operating system.

*Booting* starts the computer and loads the operating system. Firmware initialises essential hardware and helps begin the boot process. The precise sequence differs by system. A normal shutdown allows applications and the OS to close operations and save necessary state; cutting power abruptly can lose unsaved work or damage files.

#rule-box("Know the job")[
  The OS manages resources and provides services. It does not replace the application: use a spreadsheet for a budget and the OS to run the spreadsheet and manage access to files and devices.
]

== 5.3 Drivers, Utilities and Translators

A *device driver* is software that helps the operating system use a specific device. A printer may need a suitable driver so that applications can send output through the OS. A *utility* performs a maintenance, management or protective task, such as backup, file compression or malware scanning. No utility guarantees perfect security or makes backups unnecessary.

A *compiler* translates source code into another form, commonly machine code or an intermediate representation, before execution. An *interpreter* executes instructions according to the source or another representation. Real language implementations can combine compilation and interpretation, so these descriptions are useful models rather than rigid classifications of every runtime. An *assembler* translates assembly-language instructions into machine code.

#concept-box("Translation is not the same as running")[
  A compiler translates a program; execution performs its operations. A compile-time error may prevent translation, while a logic error can allow a program to run and still produce the wrong answer.
]

== 5.4 Licences and Updates

A software licence states the permissions and conditions for using a program. Proprietary licences generally restrict modification or redistribution; open-source licences permit access to source code and defined rights to use, modify and redistribute, subject to their terms. *Freeware* is distributed without charge but can remain proprietary. Subscription terms, trial limits and updates depend on the actual licence.

Updates can fix defects and security vulnerabilities or add features. Obtain them from trustworthy sources, check compatibility and back up important data. A counterfeit or unauthorised copy may expose users to legal, security and reliability risks.

#trap-box("Three distinctions")[
  A driver is not the device itself. A GUI is not the entire operating system. Free of charge is not automatically open source: inspect the licence.
]

== 5.5 Four Worked Examples

#worked-example(1, "Choose the application", tier: "FOUNDATION",
  [Which program is most directly intended for preparing a letter? \ A. Device driver \ B. Word processor \ C. Firmware \ D. Assembler],
  [A word processor is designed for creating and editing text documents. The answer is *B*.])
#worked-example(2, "Identify the OS task", tier: "UTME STANDARD",
  [Managing memory used by several running programs is principally a function of the \ A. monitor \ B. printer \ C. operating system \ D. scanner],
  [The operating system manages memory and other resources for processes. The answer is *C*.])
#worked-example(3, "Connect a printer", tier: "UTME STANDARD",
  [Software that helps the OS communicate with a particular printer is a \ A. driver \ B. pixel \ C. cable \ D. worksheet],
  [A device driver provides the software interface needed to use the hardware. The answer is *A*.])
#worked-example(4, "Price versus permission", tier: "JAMB CHALLENGE",
  [A program costs nothing but its licence prohibits modification and redistribution. Which claim follows? \ A. It must be open source \ B. It must have no copyright \ C. It is a hardware device \ D. It may be freeware without being open source],
  [Zero price alone does not grant source-code permissions. The licence described is consistent with freeware that is not open source. The answer is *D*.])

== 5.6 Two-Minute Set
#mcq(1, [Which is system software?], [operating system], [presentation slide], [spreadsheet budget], [photograph])
#mcq(2, [An assembler translates], [printed marks], [assembly language], [a keyboard], [a hard disk])
#mcq(3, [A running instance of a program is a], [pixel], [port], [process], [folder])
#mcq(4, [A graphical user interface uses], [only machine code], [only electrical signals], [only punched cards], [windows and icons])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "An operating system is system software."), ("B", "An assembler translates assembly-language instructions."), ("C", "A process is a running program instance."), ("D", "A GUI uses visual controls including windows and icons.")))
#concept-box("Recap card")[
  System software manages and supports; application software helps perform user tasks. The OS coordinates processes, memory, files and devices. Drivers connect software to hardware; utilities support maintenance; translators process programming languages.
]
#chapter-checklist("Before moving on", (
  [I can classify system and application software.],
  [I can explain four operating-system functions.],
  [I can distinguish drivers, utilities and language translators.],
  [I can explain why freeware and open source are not synonyms.],
))
#shortcut-box("Carry forward")[
  Applications create and transform files. Chapter 6 looks at office packages and the file operations that keep work organised and recoverable.
]
