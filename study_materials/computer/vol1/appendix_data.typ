#import "template.typ": *
#current-chapter.update("Appendix D: Formula and Data Sheet")
= Appendix D — Formula and Data Sheet

Always use the convention stated in the question. The formulas below assume the conditions written beside them; actual file sizes can include headers or compression.

#table(columns: (1.35fr, 2.1fr, 2.1fr), inset: 6pt, stroke: 0.5pt + jamb-border,
  table.header([*Task*], [*Formula*], [*Example or condition*]),
  [Bits to bytes], [bytes = bits ÷ 8], [40 bits = 5 bytes.],
  [Bytes to bits], [bits = bytes × 8], [12 bytes = 96 bits.],
  [Binary units], [1 KiB = 1,024 bytes], [3 KiB = 3,072 bytes.],
  [Decimal units], [1 kB = 1,000 bytes], [3 kB = 3,000 bytes.],
  [Binary to decimal], [sum each digit × its place value], [1011 = 8 + 2 + 1 = 11.],
  [Uncompressed image], [width × height × bits per pixel], [Result in bits, excluding headers and metadata.],
  [Uncompressed audio], [sample rate × seconds × bits per sample × channels], [Result in bits, excluding headers and metadata.],
)

== D.1 Binary Place Values

#table(columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr), inset: 5pt,
  stroke: 0.5pt + jamb-border,
  [128], [64], [32], [16], [8], [4], [2], [1],
)

Read from right to left: each weight is twice the previous one. To convert a binary integer, add only the weights under digits equal to one.

== D.2 Hexadecimal Digits

#table(columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr), inset: 5pt, stroke: 0.5pt + jamb-border,
  [A], [B], [C], [D], [E], [F],
  [10], [11], [12], [13], [14], [15],
)

Each hexadecimal digit represents four binary digits. Leading zeroes can be used to complete a group without changing its value.
