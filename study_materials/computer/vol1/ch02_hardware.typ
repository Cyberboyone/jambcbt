#import "template.typ": *

#chapter-opener(2, "Hardware: Input, Processing and Output",
  subtitle: "Follow the data through the machine",
  syllabus-ref: "COMPUTING FUNDAMENTALS", utme-weight: "Core concepts")

#focus-radar(
  objectives: (
    "Distinguish hardware from software and identify system components.",
    "Classify common input and output devices by their functions.",
    "Explain the roles of the control unit, ALU, registers and buses.",
    "Distinguish a peripheral, a port and an interface.",
  ),
  hotspots: (
    "A scanner captures an image; OCR software can recognise characters in it.",
    "A touchscreen is both an input device and an output device.",
    "The control unit coordinates operations; the ALU performs arithmetic and logic.",
    "A printer produces hard copy, while a monitor displays soft copy.",
  ),
  trap-summary: "Do not equate the entire system unit with the CPU. The CPU is a processor, not the case holding every internal component.",
)

== 2.1 Hardware, Software and the System Unit

*Hardware* is the physical equipment: the monitor, keyboard, processor and storage drive. *Software* consists of programs and related instructions that tell hardware what to do. Neither definition depends on whether a component is inside or outside the case.

The *system unit* is the enclosure containing major internal components, typically including the motherboard, processor, memory and power supply. The motherboard provides connections among components. A desktop case is not itself the central processing unit: the CPU is a processor installed on or connected to the motherboard.

A *peripheral* is a device connected to the computer to provide a function such as input, output or additional storage. Keyboards, printers and external drives are common examples. A *port* is a connection point; an interface defines how components communicate. USB is a widely used interface, and different USB connectors are not physically interchangeable merely because they share the name.

#rule-box("A function, not a location")[
  Classify a device by what it does in the question. A touchscreen displays information and accepts touches, so it provides both output and input.
]

== 2.2 Input: Getting Data into the Computer

The keyboard enters characters and commands; a mouse or touchpad controls a pointer; a scanner captures an image of a document; a microphone captures sound; a camera captures images or video. A barcode reader scans a coded pattern to identify an item. A biometric reader captures a physical or behavioural characteristic such as a fingerprint for identification or authentication.

Three abbreviations are easily confused. *OCR* (optical character recognition) converts suitable images of printed or handwritten characters into machine-readable text; accuracy depends on the source and the software. *OMR* (optical mark recognition) detects marks in predetermined positions, as on a multiple-choice answer sheet. *MICR* (magnetic ink character recognition) reads specially printed characters, traditionally used on cheques. A scanned page is not automatically editable text until a recognition process has been applied.

#concept-box("The exam's recognition trio")[
  OCR recognises *characters*; OMR detects *marked positions*; MICR reads *magnetic-ink characters*. Match the technology to the document and the data to be captured.
]

== 2.3 Processing: The CPU

The central processing unit executes instructions. The *control unit* coordinates operations: it interprets instructions and sends control signals. The *arithmetic logic unit* (ALU) performs arithmetic and logical operations, including comparisons. *Registers* are small, very fast storage locations within the processor that hold values, addresses or instructions needed immediately.

In a simplified *fetch–decode–execute* cycle, the processor fetches an instruction from memory, decodes what it requires, executes it, and proceeds to the next instruction or to a new address. Actual processors may overlap operations and use additional stages; the simple sequence is a useful model, not a complete description of every implementation.

A *bus* is a communication pathway. In the standard introductory model, the data bus carries data, the address bus identifies locations, and the control bus carries control signals. A single bus label does not describe the full complexity of every modern computer.

#figure(
  grid(columns: (1fr, auto, 1fr, auto, 1fr), column-gutter: 4pt, align: center + horizon,
    block(fill: jamb-mint, radius: 5pt, inset: 9pt)[*INPUT* \ keyboard, scanner],
    [→],
    block(fill: info-bg, radius: 5pt, inset: 9pt)[*PROCESSOR* \ control unit + ALU],
    [→],
    block(fill: tip-bg, radius: 5pt, inset: 9pt)[*OUTPUT* \ monitor, printer]),
  caption: [2.1 — A simplified path through a computer; memory and storage support the process.],
)

== 2.4 Output: Presenting Results

A monitor presents visual *soft copy*. A printer produces *hard copy* on paper. A speaker outputs sound; a projector displays an enlarged image on a surface. A plotter is associated with precise large-format drawings, although modern wide-format printers can serve related purposes.

An impact printer strikes a ribbon or paper; a dot-matrix printer is an example. Inkjet and laser printers are non-impact devices. Print speed or quality depends on the device and settings; do not assume every laser printer is faster than every inkjet printer.

#trap-box("The three-part trap")[
  The CPU is not the entire desktop case. OCR is not a synonym for scanning. A touchscreen is not output-only. Underline the action the question asks about before choosing.
]

== 2.5 Four Worked Examples

#worked-example(1, "Input or output?", tier: "FOUNDATION",
  [A device that produces a printed report on paper is a \ A. microphone \ B. printer \ C. mouse \ D. scanner],
  [A printer puts the result on paper; the other options normally capture input. The answer is *B*.])

#worked-example(2, "Reading an answer sheet", tier: "UTME STANDARD",
  [A system detects shaded boxes in fixed positions on an examination sheet. It uses \ A. OCR \ B. MICR \ C. OMR \ D. a plotter],
  [The information is the position of a mark, not the identity of a printed character. Optical mark recognition is *C*.])

#worked-example(3, "Inside the CPU", tier: "UTME STANDARD",
  [Which component coordinates the execution of instructions? \ A. Control unit \ B. Speaker \ C. Printer \ D. Optical disc],
  [The control unit interprets instructions and coordinates operations. The others are output or storage devices. The answer is *A*.])

#worked-example(4, "One device, two directions", tier: "JAMB CHALLENGE",
  [A phone displays a menu and accepts a selection when the user touches the screen. The screen serves as \ A. input only \ B. output only \ C. storage only \ D. input and output],
  [Displaying the menu is output; capturing the touch is input. Both functions are present, so *D* is correct.])

== 2.6 Two-Minute Set

#mcq(1, [The part of the processor that performs arithmetic and logical comparisons is the], [ALU], [printer], [speaker], [scanner])
#mcq(2, [Which device produces hard copy?], [microphone], [printer], [webcam], [touchpad])
#mcq(3, [MICR is traditionally associated with reading], [shaded answer boxes], [a photograph], [magnetic-ink characters on cheques], [spoken instructions])
#mcq(4, [The first stage in the simplified instruction cycle is], [printing], [saving], [closing], [fetching])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "The arithmetic logic unit performs these operations."), ("B", "A printer produces output on paper."), ("C", "MICR reads special magnetic-ink characters."), ("D", "The processor fetches an instruction before decoding and executing it.")))

#concept-box("Recap card")[
  *Input* captures; the *CPU* controls and processes; *output* presents. CU coordinates, ALU calculates and compares, and registers hold immediate working values. OCR reads characters, OMR reads marks and MICR reads magnetic-ink characters.
]
#chapter-checklist("Before moving on", (
  [I can distinguish the CPU from the system unit.],
  [I can classify common input and output devices.],
  [I can explain the control unit, ALU and registers.],
  [I can distinguish OCR, OMR and MICR.],
))
#shortcut-box("Carry forward")[
  Data and instructions must be held somewhere while the CPU works, and results may need to survive a power cut. Chapter 3 separates memory from long-term storage.
]
