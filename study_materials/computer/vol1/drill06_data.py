"""Original applications and file management questions; first answer is correct."""
RAW = '''
Which application is designed primarily for preparing text documents?|word processor|device driver|firmware|power supply|A word processor creates and formats text documents.
Which application is most suitable for a budget calculated in cells?|spreadsheet|media player|scanner driver|bootloader|A spreadsheet performs calculations using values and formulas in cells.
Which application organises material into slides?|presentation software|device driver|firmware|file system hardware|Presentation software arranges material into slides.
Which system stores and retrieves structured records?|database management system|printer cartridge|power cable|screen stand|A database management system manages structured data.
A spreadsheet consists of rows and|columns|speakers|microphones|cables|Rows and columns define the grid of a worksheet.
The intersection of a row and a column is a|cell|slide|printer|router|A cell lies at the intersection of a row and column.
The address B3 indicates|column B and row 3|row B and column 3|page B and file 3|three workbooks|The column letter comes before the row number.
The address C7 indicates|column C and row 7|column 7 and row C|seven folders named C|a printer port|C7 identifies column C and row 7.
A1 through A4 can be expressed as|A1:A4|A1+A4 only|A4:A1 is the only notation|A14|A colon denotes a range such as A1 through A4.
A workbook can contain|one or more worksheets|only paper files|only speakers|no data|A workbook is a spreadsheet file that can contain multiple worksheets.
A spreadsheet formula ordinarily starts with|an equals sign|a question mark|a comma|a file extension|An equals sign commonly marks a formula.
If A1 is 12 and A2 is 8, the formula =A1+A2 gives|20|4|96|128|Twelve plus eight equals twenty.
If B1 is 4 and B2 is 5, =SUM(B1:B2) gives|9|20|1|45|The SUM function adds the values in the range.
A relative reference copied down one row normally|adjusts its row reference|always remains completely fixed|deletes the original worksheet|changes the computer's hardware|Relative references shift according to the copy operation.
Copying =A1+B1 one row down normally produces|=A2+B2|=A1+B1|=B1+C1|=A1+B2|Both relative references shift down one row.
Which reference fixes both row and column in common spreadsheet notation?|`$A$1`|A1|`$A1`|`A$1`|Dollar signs before both the column and row fix both parts.
Which reference fixes the column but leaves the row relative?|`$A1`|A1|`$A$1`|`A$1`|The dollar sign before A fixes the column, while the row remains relative.
Which reference fixes the row but leaves the column relative?|`A$1`|A1|`$A1`|`$A$1`|The dollar sign before 1 fixes the row, while the column remains relative.
A file is|a named collection of stored data|always an entire computer|a hardware bus only|a printed page only|A file is a named collection of data.
A folder is used to|organise files and other folders|perform arithmetic without software|replace the CPU|convert electricity to sound|Folders group files and subfolders.
A path identifies|a location in a file system|only a printer model|the CPU's clock speed|the colour of a monitor|A path identifies where an item is located.
A filename extension often provides|a clue to file format|proof that a file is safe|a guarantee of the author's identity|additional RAM|An extension can suggest format but is not proof of safety or content.
The extension .txt commonly indicates|plain text|only an audio recording|a physical drive|a processor register|The .txt extension commonly denotes plain text.
The extension .pdf commonly indicates|a PDF document|a keyboard|a network cable|a CPU|The .pdf extension commonly denotes PDF format.
The extension .csv commonly indicates|comma-separated values|a video monitor|a power supply|a computer virus by definition|CSV commonly refers to comma-separated values.
Changing .txt to .pdf by renaming|does not reliably convert the file|always creates a valid PDF|guarantees encryption|increases physical memory|Renaming an extension does not convert the underlying content.
The Save command ordinarily|writes changes to a file|prints the screen automatically|copies the motherboard|adds a new processor|Saving writes the current changes to a storage destination.
Save As ordinarily lets a user choose|another name, location or supported format|a new CPU architecture|the computer's electrical wiring|a different keyboard manufacturer|Save As usually permits a different name, location or supported format.
Copying a file ordinarily|leaves the original and creates another copy|removes the original from its location|destroys every backup|changes the CPU|Copy creates another item while leaving the original.
Moving a file ordinarily|changes its location|always creates a separate backup|changes its data format automatically|prints it|Moving places the item at a different location.
Renaming a file ordinarily changes|its name|its content format automatically|the operating system|the physical processor|Renaming changes a name, not necessarily the file's contents or format.
Deleting an item ordinarily|removes it from its usual location|guarantees irreversible erasure in every system|creates a separate backup|repairs a disk physically|Deletion removes an item, though recovery may be possible.
A backup is|a separate recoverable copy|the sole copy of a document|the file extension only|a keyboard shortcut|A backup is an additional copy that can be restored.
A useful backup practice is to|test restoration|keep only one copy|expose private records publicly|assume every backup is readable|Testing restoration helps verify that a backup is usable.
A file with an unfamiliar attachment should be|treated cautiously and verified|opened automatically without checking|assumed safe because of its extension|shared with everyone|Extensions alone do not guarantee safety; verify unexpected attachments.
A descriptive filename helps a user|recognise and organise work|increase processor speed|eliminate all security risks|replace backups|Descriptive names help identify and organise files.
Synchronisation differs from an independent backup because|unwanted changes may also synchronise|it always prevents deletion|it makes storage unnecessary|it physically expands RAM|Synchronisation can propagate deletion or unwanted changes.
Which feature controls access to sensitive files?|permissions and access controls|page colour alone|a larger mouse pad|a printer tray|Access controls help limit who can view or change files.
A worksheet is best described as|a spreadsheet grid in a workbook|the entire physical computer|a network cable|a speaker|A worksheet is a grid within a spreadsheet workbook.
A presentation program is commonly used to|show a sequence of visual slides|install a power supply|read magnetic ink directly|replace memory chips|Presentation software organises content into slides.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
