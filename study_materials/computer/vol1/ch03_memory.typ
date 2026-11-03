#import "template.typ": *

#chapter-opener(3, "Memory and Storage",
  subtitle: "What the processor uses now, and what must last",
  syllabus-ref: "COMPUTING FUNDAMENTALS", utme-weight: "Core concepts")
#focus-radar(
  objectives: (
    "Explain volatility and distinguish RAM from ROM.",
    "Compare registers, cache, main memory and secondary storage.",
    "Identify magnetic, optical and solid-state storage media.",
    "Calculate simple bit and byte capacities using stated conventions.",
  ),
  hotspots: (
    "RAM is volatile; ordinary ROM retains its contents without power.",
    "Cache is a small, fast memory that helps reduce average access time.",
    "An SSD has no moving mechanical parts; a hard disk drive uses spinning platters.",
    "A bit is one binary digit; a byte contains eight bits.",
  ),
  trap-summary: "A hard disk or SSD is storage, not RAM. Saving a file to storage is not the same as keeping it open in volatile working memory.",
)

== 3.1 Why a Computer Needs a Memory Hierarchy

The processor needs instructions and data quickly, but very fast memory is relatively costly per unit of capacity. A typical system therefore uses a hierarchy: small processor *registers*, fast *cache*, larger *main memory*, and persistent *secondary storage*. Exact speeds, sizes and placement vary between machines.

The CPU works with instructions and data held in memory. When an application opens a file, the system generally reads the relevant data from storage into memory. When the user saves, the program writes changes to a persistent destination. The details depend on the software and system configuration.

#figure(
  grid(columns: (1fr, 1fr, 1fr, 1fr), column-gutter: 5pt, align: center + horizon,
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*REGISTERS* \ inside processor],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*CACHE* \ fast copies],
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*RAM* \ working data],
    block(fill: jamb-light, inset: 8pt, radius: 5pt)[*STORAGE* \ persistent files]),
  caption: [3.1 — A simplified memory hierarchy, from immediate processor storage to persistent storage.],
)

#rule-box("Do not confuse the two questions")[
  *Volatile or non-volatile* asks whether contents persist without power. *Primary memory or secondary storage* asks about a component's role and relationship to processing. These are related distinctions, not identical definitions.
]

== 3.2 RAM, ROM, Cache and Registers

*Random access memory* (RAM) is working memory used by active programs and data. Conventional RAM is volatile: its contents are lost when power is removed. More RAM can allow a system to keep more active data in memory, but it does not automatically increase the clock rate of the CPU.

*Read-only memory* (ROM) is non-volatile and traditionally stores firmware such as start-up instructions. Modern firmware often uses rewritable non-volatile flash memory: “read-only” should not be interpreted as a promise that the contents can never be updated by any method.

Cache holds copies of frequently or recently used data and instructions closer to processing. A cache hit finds the requested item in cache; a miss requires another level. Processor registers hold the values, instructions or addresses needed immediately. Typical registers are smaller and faster than main memory, though exact comparisons depend on architecture.

Virtual memory lets a system use storage as part of a larger apparent address space. It is useful when physical RAM is constrained, but storage is generally much slower than RAM. Virtual memory is not extra physical RAM installed on the motherboard.

== 3.3 Secondary Storage and Backups

A *hard disk drive* (HDD) stores data magnetically on rotating platters. Magnetic tape is another magnetic medium, often used for sequential access and backup. A *solid-state drive* (SSD) normally uses non-volatile flash memory and has no moving mechanical parts. USB flash drives and memory cards also commonly use flash memory. CDs, DVDs and Blu-ray discs are *optical* media read using light.

*Capacity* is the amount of data a medium can hold. *Access time* concerns how long it takes to reach data; a sequential medium may require passing earlier data before reaching the desired position. *Portability* and *durability* also matter. A backup is a separate recoverable copy; keeping the only copy of a file on a portable drive is not a backup.

#concept-box("A sound backup habit")[
  Keep separate copies, including one protected from the same local incident as the original. Test restoration periodically: a copy that cannot be restored may not protect the work when it is needed.
]

== 3.4 Bits, Bytes and Capacity

A *bit* is a binary digit, 0 or 1. A *byte* is eight bits. Thus 24 bits contain 3 bytes and 12 bytes contain 96 bits. Larger units require care: in decimal notation, 1 kB = 1,000 bytes and 1 MB = 1,000,000 bytes; in binary notation, 1 KiB = 1,024 bytes and 1 MiB = 1,024 KiB. Some examination materials use KB or MB for binary quantities; follow the convention explicitly stated in the question.

#formula-box("Capacity conversions")[
  bytes = bits ÷ 8; bits = bytes × 8. For binary units, KiB × 1,024 = bytes and MiB × 1,024 = KiB. Write the unit at every step.
]

== 3.5 Four Worked Examples

#worked-example(1, "Bits to bytes", tier: "FOUNDATION",
  [A record contains 40 bits. How many bytes is this? \ A. 5 \ B. 8 \ C. 32 \ D. 320],
  [One byte has eight bits. Divide 40 by 8 to obtain 5 bytes. The answer is *A*.])

#worked-example(2, "What survives power loss?", tier: "UTME STANDARD",
  [Which medium normally retains a saved file without power? \ A. processor register \ B. RAM \ C. SSD \ D. CPU cache],
  [An SSD uses non-volatile storage. Registers, ordinary RAM and cache are working storage that generally lose contents without power. The answer is *C*.])

#worked-example(3, "Converting binary units", tier: "UTME STANDARD",
  [Using 1 KiB = 1,024 bytes, how many bytes are in 3 KiB? \ A. 3,000 \ B. 3,072 \ C. 3,200 \ D. 24,576],
  [Multiply 3 by 1,024 to get 3,072 bytes. Do not multiply by eight unless converting the answer to bits. The answer is *B*.])

#worked-example(4, "Two ways to increase capacity", tier: "JAMB CHALLENGE",
  [A computer is slow when many large applications are open. Which change most directly increases physical working memory? \ A. Replace the monitor \ B. Add a printer \ C. Change the mouse \ D. Install compatible RAM],
  [Compatible RAM increases physical working memory. A larger SSD can increase persistent storage, but is not the same as adding physical RAM. The best answer is *D*; actual performance depends on the cause of the slowdown.])

#trap-box("Three storage traps")[
  An SSD is non-volatile storage, not RAM. A copy on the same device may not survive device failure. KB and KiB may be used differently: use the convention given in the question.
]

== 3.6 Two-Minute Set

#mcq(1, [Which storage medium uses rotating magnetic platters?], [HDD], [SSD], [CD-ROM], [RAM])
#mcq(2, [Eight bits make one], [kilobyte], [byte], [word in every computer], [megabyte])
#mcq(3, [Memory that ordinarily loses its contents when power is removed is], [optical disc], [flash storage], [RAM], [magnetic tape])
#mcq(4, [A separate recoverable copy of a file is a], [cache miss], [register], [bus], [backup])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "A hard disk drive uses magnetic platters."), ("B", "A byte contains eight bits."), ("C", "Ordinary RAM is volatile."), ("D", "A backup is an additional copy that can be restored.")))

#concept-box("Recap card")[
  Registers and cache support the processor; RAM holds active working data; non-volatile storage retains files. HDD and tape are magnetic, CD and DVD are optical, and SSDs commonly use flash. One byte is eight bits.
]
#chapter-checklist("Before moving on", (
  [I can explain volatility and identify RAM and persistent storage.],
  [I can distinguish registers, cache, main memory and storage.],
  [I can identify examples of magnetic, optical and solid-state media.],
  [I can convert bits and bytes and apply the stated larger-unit convention.],
))
#shortcut-box("Carry forward")[
  Bits are not only a measure of capacity. In Chapter 4 they become the digits used to represent numbers, characters, sound and pictures.
]
