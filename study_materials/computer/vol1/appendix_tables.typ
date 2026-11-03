#import "template.typ": *
#current-chapter.update("Appendix I: Comparison Tables")
= Appendix I — Comparison Tables

== I.1 The Main Distinctions

#table(columns: (1.2fr, 2fr, 2fr), inset: 5pt, stroke: 0.5pt + jamb-border,
  table.header([*Question*], [*First idea*], [*Second idea*]),
  [Hardware or software?], [Hardware: physical components.], [Software: programs and instructions.],
  [Input or output?], [Input: data supplied to a system.], [Output: results presented by a system.],
  [RAM or SSD?], [RAM: volatile working memory.], [SSD: non-volatile secondary storage.],
  [Analog or digital?], [Analog: continuous representation.], [Digital: discrete representation.],
  [Copy or move?], [Copy: another item is created.], [Move: the item's location changes.],
  [LAN or WAN?], [LAN: generally a limited area.], [WAN: generally a wider area.],
)

== I.2 Devices and Their Roles

#table(columns: (1.1fr, 2fr, 2fr), inset: 5pt, stroke: 0.5pt + jamb-border,
  table.header([*Device*], [*Primary role*], [*Useful distinction*]),
  [Keyboard], [Enter characters and commands.], [Input, not hard-copy output.],
  [Monitor], [Present visual information.], [Soft copy; a touchscreen can also accept input.],
  [Printer], [Produce a paper copy.], [Hard copy; inkjet and laser are non-impact.],
  [Scanner], [Capture an image.], [OCR can recognise text from a suitable image.],
  [Switch], [Connect devices on a local network.], [Forwards local frames using address information.],
  [Router], [Forward traffic between networks.], [A home device may also contain a switch and access point.],
  [UPS], [Provide temporary power within its rating.], [It does not replace a separate backup.],
)

== I.3 Number Bases and Units

#table(columns: (1.2fr, 1.3fr, 2.6fr), inset: 5pt, stroke: 0.5pt + jamb-border,
  table.header([*Item*], [*Value*], [*Check*]),
  [Binary 10], [decimal 2], [One group of two and zero units.],
  [Binary 1010], [decimal 10], [Eight plus two.],
  [Hexadecimal F], [decimal 15], [A through F represent ten through fifteen.],
  [Hexadecimal 10], [decimal 16], [One group of sixteen and zero units.],
  [One byte], [8 bits], [Divide bits by eight for bytes.],
  [One KiB], [1,024 bytes], [Binary prefix; use the convention stated in a question.],
  [One kB], [1,000 bytes], [Decimal prefix; use the convention stated in a question.],
)

== I.4 File and Safety Actions

#table(columns: (1.2fr, 2fr, 2.5fr), inset: 5pt, stroke: 0.5pt + jamb-border,
  table.header([*Action*], [*What it does*], [*What it does not guarantee*]),
  [Save], [Writes changes to a destination.], [A separate recoverable backup.],
  [Copy], [Creates another item while retaining the original.], [That the new copy can be restored without checking.],
  [Rename], [Changes a name.], [A conversion to a different file format.],
  [Update], [Can fix defects or security vulnerabilities.], [That every threat is eliminated.],
  [HTTPS], [Protects the connection in transit.], [That the site operator is honest.],
)
