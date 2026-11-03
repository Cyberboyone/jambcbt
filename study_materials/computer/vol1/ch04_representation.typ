#import "template.typ": *

#chapter-opener(4, "Data Representation and Number Systems",
  subtitle: "How bits stand for numbers, text, images and sound",
  syllabus-ref: "COMPUTING FUNDAMENTALS", utme-weight: "Core calculations")
#focus-radar(
  objectives: (
    "Explain positional notation in bases two, ten and sixteen.",
    "Convert simple whole numbers between binary and decimal.",
    "Add non-negative binary integers and check the result.",
    "Explain character codes, pixels and sound sampling.",
  ),
  hotspots: (
    "Each place in binary is a power of two, not a power of ten.",
    "Hexadecimal digits A to F represent ten to fifteen.",
    "The binary sum 1 + 1 is 10: zero in the column, carry one.",
    "Higher resolution or bit depth can increase uncompressed data size.",
  ),
  trap-summary: "Subscripts tell you the base: 10 in binary equals 2 in decimal, not ten.",
)

== 4.1 Positional Notation

In a positional number system, a digit's value depends on its position and the base. Decimal uses base 10, with digits 0–9. Binary uses base 2, with digits 0 and 1. Hexadecimal uses base 16, with digits 0–9 and A–F; A represents ten and F represents fifteen.

For a whole number, the rightmost position has weight 1. Moving left multiplies the weight by the base. The binary weights are 1, 2, 4, 8, 16 and so on. Therefore 1011 in base two equals 1 × 8 + 0 × 4 + 1 × 2 + 1 × 1 = 11 in base ten.

#figure(
  table(columns: (1fr, 1fr, 1fr, 1fr, 1fr), inset: 7pt,
    stroke: 0.5pt + jamb-border,
    [*Place*], [8], [4], [2], [1],
    [*Digit*], [1], [0], [1], [1],
    [*Value*], [8], [0], [2], [1]),
  caption: [4.1 — Binary 1011 represents eight plus two plus one, or eleven in decimal.],
)

#rule-box("A digit must fit its base")[
  In base two, 2 is not a valid digit. In base sixteen, F is a valid digit worth fifteen. The written symbol 10 means one group of the base and zero units.
]

== 4.2 Decimal to Binary and Back

To convert a positive decimal integer to binary, repeatedly divide by two and record each remainder. Read the remainders from the last division back to the first. For 13: 13 ÷ 2 = 6 remainder 1; 6 ÷ 2 = 3 remainder 0; 3 ÷ 2 = 1 remainder 1; 1 ÷ 2 = 0 remainder 1. Reading upward gives binary 1101.

To check, expand the result using place values: 1 × 8 + 1 × 4 + 0 × 2 + 1 × 1 = 13. Zero is written as 0 in either base. The method here handles non-negative integers; fractions and signed binary representations need additional rules.

== 4.3 Hexadecimal and Binary Addition

One hexadecimal digit corresponds to four binary digits because 16 = 2 × 2 × 2 × 2. For example, hexadecimal A is binary 1010, and hexadecimal 2F is binary 0010 1111. The leading zeroes preserve the four-bit groups; they do not change the value.

Binary addition uses 0 + 0 = 0, 0 + 1 = 1, and 1 + 1 = 10. In the last case write 0 and carry 1 into the next column. With an incoming carry, 1 + 1 + 1 = 11: write 1 and carry 1. For example, binary 101 + 11 = 1000. Check in decimal: 5 + 3 = 8.

#concept-box("A fast check")[
  Convert each small operand and the result to decimal. A correct binary sum must agree with ordinary arithmetic; the check helps catch a lost carry.
]

== 4.4 Representing Text, Images and Sound

A *character encoding* maps characters to numeric codes. ASCII is a character encoding covering a limited set of characters; Unicode provides a much larger repertoire, and encodings such as UTF-8 represent Unicode text in bytes. A character does not always occupy one byte in UTF-8.

A digital image can be represented as a grid of *pixels*. Resolution describes dimensions, such as 800 × 600 pixels. *Bit depth* describes the number of bits used to represent a pixel in a particular model. For an uncompressed image using a fixed number of bits per pixel, pixel count × bits per pixel gives the raw pixel data size in bits, before any file headers or other metadata.

Digital audio represents a signal using samples taken over time. *Sampling rate* counts samples per second; *bit depth* describes bits used per sample in a fixed-depth representation. For uncompressed audio, sample rate × seconds × bits per sample × number of channels gives the raw data size in bits, before headers. Compression and encoding can change the actual file size.

#trap-box("Three representation traps")[
  Binary 10 is decimal two. Hexadecimal 10 is decimal sixteen. A file's actual size may include headers or compression, so a raw-data formula is an estimate only when its assumptions are stated.
]

== 4.5 Four Worked Examples

#worked-example(1, "Read a binary number", tier: "FOUNDATION",
  [Binary 110 equals which decimal number? \ A. 5 \ B. 6 \ C. 8 \ D. 110],
  [The set bits have weights four and two. Their sum is 6, so *B* is correct.])

#worked-example(2, "Write decimal in binary", tier: "UTME STANDARD",
  [What is decimal 10 in binary? \ A. 1000 \ B. 1001 \ C. 1010 \ D. 1100],
  [Ten is eight plus two. Set the eight and two positions: 1010. The answer is *C*.])

#worked-example(3, "Carry in base two", tier: "UTME STANDARD",
  [What is binary 101 + 11? \ A. 1000 \ B. 110 \ C. 111 \ D. 1010],
  [Binary 101 is five and 11 is three. The sum is eight, written 1000 in binary. The answer is *A*.])

#worked-example(4, "Raw image data", tier: "JAMB CHALLENGE",
  [An uncompressed image has 100 × 50 pixels and uses 8 bits per pixel. Ignoring headers, its raw pixel data occupy \ A. 625 bytes \ B. 4,000 bytes \ C. 40,000 bytes \ D. 5,000 bytes],
  [There are 100 × 50 = 5,000 pixels. At 8 bits each, that is 40,000 bits. Divide by eight to obtain 5,000 bytes. The answer is *D*.])

== 4.6 Two-Minute Set

#mcq(1, [In base two, the digit 2 is], [invalid], [equal to 10], [the largest digit], [equal to zero])
#mcq(2, [The hexadecimal digit F represents decimal], [10], [15], [16], [25])
#mcq(3, [A picture element in a raster image is a], [byte], [sample], [pixel], [register])
#mcq(4, [Binary 1000 is decimal], [2], [4], [6], [8])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "Binary digits are only 0 and 1."), ("B", "A through F represent ten through fifteen."), ("C", "A raster image is represented as a grid of pixels."), ("D", "The leftmost set bit has weight eight.")))

#concept-box("Recap card")[
  Binary place values double from right to left. Convert decimal integers by repeated division by two. Hexadecimal groups four bits per digit. Text uses character encodings; images use pixels; digital audio uses samples.
]
#chapter-checklist("Before moving on", (
  [I can expand a binary integer into decimal place values.],
  [I can convert a small decimal integer into binary and check it.],
  [I can add binary integers with a carry.],
  [I can distinguish characters, pixels and audio samples.],
))
#shortcut-box("Carry forward")[
  Bits represent both instructions and data. The next chapter examines the software that directs the hardware and manages those representations.
]
