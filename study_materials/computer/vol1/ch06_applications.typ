#import "template.typ": *

#chapter-opener(6, "Application Packages and File Management",
  subtitle: "Create, organise, calculate and recover",
  syllabus-ref: "PRACTICAL COMPUTING", utme-weight: "Applied skills")
#focus-radar(
  objectives: (
    "Select appropriate applications for documents, spreadsheets and presentations.",
    "Identify rows, columns, cells, formulas and references in a worksheet.",
    "Explain folders, paths, extensions and common file operations.",
    "Distinguish saving, copying, moving, deleting and backing up.",
  ),
  hotspots: (
    "A spreadsheet formula generally begins with an equals sign.",
    "A relative cell reference can change when a formula is copied.",
    "Copy creates another copy; moving changes the location.",
    "An extension is a useful clue, not proof that a file is safe.",
  ),
  trap-summary: "Renaming a file's extension does not reliably convert its contents into another format.",
)

== 6.1 Choosing an Application

A *word processor* creates and edits text documents and can format paragraphs, insert tables and perform spell-checking. A *spreadsheet* organises data in cells and performs calculations using formulas. Presentation software arranges content into slides. A database management system stores and retrieves structured records; a web browser accesses web resources.

A task can involve more than one package. For a class survey, a spreadsheet may calculate totals, a word processor may write the report and a presentation may communicate the findings. Choose the application by its main strength rather than by assuming that each file type can be opened by only one program.

#figure(
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 5pt, align: center + horizon,
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*DOCUMENT* \ compose and format],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*WORKSHEET* \ calculate and analyse],
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*PRESENTATION* \ organise visual slides]),
  caption: [6.1 — Match the application to the primary task.],
)

== 6.2 Spreadsheet Essentials

A worksheet consists of *rows* and *columns*. Their intersection is a *cell*. A cell reference such as B3 identifies column B and row 3. A *range* such as A1:A4 covers the cells from A1 through A4. A workbook can contain one or more worksheets.

A formula beginning with `=` calculates a result. If A1 contains 12 and A2 contains 8, `=A1+A2` gives 20. `=SUM(A1:A2)` also gives 20. Copying a formula can adjust *relative* references: copying `=A1+B1` one row down normally produces `=A2+B2`. In many spreadsheets, `$A$1` is an *absolute* reference whose row and column remain fixed when copied. Check a particular program's syntax and settings.

#rule-box("Relative and absolute")[
  Relative references move with the copied formula. An absolute reference such as `$A$1` fixes both the column and the row. Mixed references such as `$A1` fix only the part marked with a dollar sign.
]

== 6.3 Files, Folders and Paths

A *file* is a named collection of stored data. A *folder* groups files and other folders. A *path* identifies a location in a file system: for example, a folder named `Revision` might contain `notes.txt`. Path separators and exact syntax vary by operating system.

A file extension often suggests format: `.txt` commonly indicates plain text, `.pdf` a PDF document and `.csv` comma-separated values. An extension can be misleading or hidden; it does not prove that a file is harmless or that its contents match the name. Opening untrusted attachments can be dangerous, even when the name looks familiar.

*Save* writes changes to a chosen file. *Save As* ordinarily lets the user choose another name, location or supported format. *Copy* leaves the original and creates a second item; *move* places the item in another location. *Rename* changes its name, not necessarily its contents. *Delete* removes an item from its ordinary location, though recovery may be possible depending on the system and subsequent activity.

== 6.4 Safe Organisation

Use descriptive names, group related work, keep track of versions and save regularly. For example, `Biology-revision-2026-03-01` is more informative than `new-final-final`. Search can find a file by name or other indexed properties, but an organised folder structure reduces reliance on memory.

A backup is a separate recoverable copy. Synchronisation can be useful, but an unwanted change or deletion may also synchronise; keep independent backups or version history where practical. Confirm that you can restore important files. For sensitive data, use appropriate access controls and encryption, and avoid placing private records in a publicly shared folder.

#trap-box("Do not rely on the filename")[
  Changing `.txt` to `.pdf` does not turn plain text into a valid PDF. Use a program's export or conversion function. A familiar-looking extension also does not establish that a file is safe.
]

== 6.5 Four Worked Examples
#worked-example(1, "Choose a package", tier: "FOUNDATION",
  [Which application is most suitable for calculating a budget with formulas? \ A. Spreadsheet \ B. Media player \ C. Paint program \ D. Device driver],
  [A spreadsheet stores values in cells and calculates with formulas. The answer is *A*.])
#worked-example(2, "A cell address", tier: "UTME STANDARD",
  [The cell at column C and row 7 is \ A. 7C \ B. C7 \ C. C + 7 \ D. 7:C],
  [A standard cell address puts the column letter before the row number: *B*, C7.])
#worked-example(3, "Copying a formula", tier: "UTME STANDARD",
  [A formula `=A1+B1` is copied one row down using relative references. It normally becomes \ A. `=A1+B1` \ B. `=A1+B2` \ C. `=A2+B2` \ D. `=B1+C1`],
  [Both references shift down one row, giving `=A2+B2`. The answer is *C*.])
#worked-example(4, "The fixed rate", tier: "JAMB CHALLENGE",
  [A formula needs to refer to a tax rate in cell D1 even when copied down the sheet. Which reference fixes both its row and column? \ A. `D1` \ B. `D$1` \ C. `$D1` \ D. `$D$1`],
  [A dollar sign before each part fixes the column and row: `$D$1`. The answer is *D*.])

== 6.6 Two-Minute Set
#mcq(1, [The intersection of a worksheet row and column is a], [cell], [slide], [folder], [printer])
#mcq(2, [A standard spreadsheet formula begins with], [a comma], [an equals sign], [a question mark], [a file extension])
#mcq(3, [Which operation ordinarily creates another item while leaving the original?], [rename], [move], [copy], [delete])
#mcq(4, [A separate recoverable copy is called a], [row], [formula], [path], [backup])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "The row and column intersect at a cell."), ("B", "A formula normally begins with =."), ("C", "Copying creates another item without removing the original."), ("D", "A backup is a separate recoverable copy.")))
#concept-box("Recap card")[
  Word processor for documents; spreadsheet for cell-based calculations; presentation software for slides. A workbook contains worksheets. Relative references shift on copying; `$A$1` fixes both parts. Organise and back up files.
]
#chapter-checklist("Before moving on", (
  [I can match an application to a task.],
  [I can identify a cell, range, worksheet and workbook.],
  [I can explain relative and absolute references.],
  [I can distinguish copy, move, rename and backup.],
))
#shortcut-box("Carry forward")[
  Software and files depend on healthy equipment and good habits. Chapter 7 covers preventive maintenance, safe use and basic troubleshooting.
]
