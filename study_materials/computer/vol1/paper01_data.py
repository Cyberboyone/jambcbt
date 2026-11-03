"""Original mixed practice paper 1; first choice is the correct answer."""
RAW = '''
A school enters attendance figures and computes the percentage present. Which stage is the calculation?|processing|input|printing|storage only|Calculating a percentage transforms data and is processing.
Which historic device used movable counters rather than electronic components?|abacus|microprocessor|transistor|integrated circuit|The abacus is a manual counting aid.
Which inventor's punched-card equipment assisted the 1890 US census?|Herman Hollerith|Blaise Pascal|Ada Lovelace|Charles Babbage|Hollerith's tabulating machines used punched cards for census processing.
Which technology is commonly linked with first-generation electronic computers?|vacuum tubes|microprocessors|integrated circuits|wireless access points|Vacuum tubes are the conventional first-generation technology.
A device handles continuously varying measurements and digital calculations together. It is|hybrid|only mechanical|only an output device|a paper file|A hybrid system combines analog and digital features.
A general-purpose digital laptop can|run different applications on discrete data|perform only one dedicated task by definition|handle only continuously varying values|operate without instructions|General-purpose refers to varied tasks and digital to discrete data representation.
The physical part of a computer that executes instructions is the|CPU|word processor|licence|spreadsheet formula|The central processing unit executes instructions.
Which CPU unit performs numeric comparisons?|ALU|printer tray|microphone|scanner|The arithmetic logic unit performs arithmetic and logical operations.
Which part coordinates instruction execution?|control unit|speaker cone|screen stand|network cable|The control unit interprets and coordinates operations.
Which device would capture a spoken answer?|microphone|projector|plotter|printer|A microphone receives sound as input.
Which operation turns an image of letters into machine-readable text?|OCR|OMR|MICR|a monitor refresh|Optical character recognition recognises characters in images.
Which technology detects shaded positions on a multiple-choice sheet?|OMR|OCR|MICR|a plotter|Optical mark recognition detects marks in predefined positions.
Which device presents a presentation visually to an audience on a wall?|projector|microphone|barcode reader|touchpad|A projector displays an enlarged image on a surface.
A touch-sensitive screen that displays a map and receives taps acts as|input and output|input only|output only|storage only|The display is output while detected touches are input.
A processor needs a small value immediately. Which location is closest in the simplified hierarchy?|register|magnetic tape|optical backup disc|paper record|Registers hold immediately needed processor values or addresses.
Which memory typically loses active data after power is removed?|RAM|SSD|DVD|magnetic tape|Ordinary RAM is volatile.
A storage medium contains spinning magnetic platters. It is a|hard disk drive|solid-state drive|DVD|register|An HDD uses rotating magnetic platters.
How many bytes are represented by 64 bits?|8|4|16|64|Divide 64 bits by eight to obtain eight bytes.
Using 1 KiB = 1,024 bytes, how many bytes are in 5 KiB?|5120|5000|4096|512|Five times 1,024 is 5,120 bytes.
Binary 10010 equals which decimal number?|18|10|16|20|The set binary places are sixteen and two, giving eighteen.
What is decimal 6 written in binary?|110|101|111|1000|Decimal six is four plus two, or binary 110.
What is hexadecimal B in decimal?|11|10|12|16|Hexadecimal B represents decimal eleven.
An image has 20 by 10 pixels at 8 bits per pixel. Ignoring headers, how many bytes are the raw pixels?|200|1600|25|2000|There are 200 pixels at one byte each, giving 200 bytes.
Which software manages processes and working memory?|operating system|word-processing document|image file|printer paper|The operating system manages resources and provides services.
Which software helps an OS use a particular printer?|device driver|spreadsheet cell|presentation slide|scanner glass|A printer driver provides software support for that device.
Which translator processes assembly language?|assembler|barcode reader|speaker|paper tray|An assembler translates assembly-language instructions.
Which application is most suitable for a spreadsheet of expenses?|spreadsheet software|firmware updater|device driver|media player|A spreadsheet is designed for organised cell calculations.
A formula containing a relative reference B2 is copied one row down. It normally becomes|B3|B2|C2|A2|The relative row reference shifts down by one.
Which reference fixes column C and row 4 in common spreadsheet notation?|`$C$4`|C4|`$C4`|`C$4`|The dollar signs fix both the column and row.
A user moves a document to another folder. The operation primarily changes its|location|file format automatically|processor clock speed|screen resolution|Moving changes where an item is located.
Which action creates another copy without removing the original?|copy|move|rename|delete|Copy ordinarily leaves the original and creates a second item.
A student has the original report on a laptop and a separately tested copy elsewhere. The second copy is|a backup|a processor register|a monitor setting|a filename extension|A separate recoverable copy of an original is a backup.
Which action is preventive maintenance?|keeping ventilation openings clear|touching a live wire|ignoring overheating|repairing a broken fan after failure|Clear ventilation helps reduce the likelihood of overheating.
A UPS can help during an outage by|supplying temporary battery power|guaranteeing unlimited power|replacing a separate backup|preventing all file errors|A UPS supplies temporary power within its capacity.
What is the safest response to an exposed live conductor?|stop and obtain qualified help|touch it to identify the fault|pour water on it|cover it with a sheet of paper|Electrical hazards should be addressed by qualified personnel.
Which device commonly forwards packets between networks?|router|printer|microphone|plotter|A router forwards traffic between networks.
Which service helps resolve a domain name?|DNS|OMR|ALU|UPS|DNS helps resolve domain names to information such as IP addresses.
Which statement describes the World Wide Web?|a system of linked resources using the internet|the same thing as every local network|a physical processor|a paper storage medium|The web is a service that uses the internet.
An unexpected message requests a password through a link. A safe response is to|verify independently without sharing the password|send the password immediately|forward the message to all contacts|disable all account protection|Verify through an independently known channel and do not disclose the password.
What does HTTPS establish by itself?|protection for the connection in transit|that the site operator is honest|that the information is always correct|that phishing is impossible|HTTPS protects communication, not the honesty of the site operator.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
