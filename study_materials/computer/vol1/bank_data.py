"""Independent master-bank items, grouped by chapter; first answer is correct."""
from random import Random


def parse(block):
    result = []
    for line in block.strip().splitlines():
        stem, answer, a, b, c, explanation = line.split('|')
        result.append((stem, (answer, a, b, c), explanation))
    return result


BANK = {}
BANK[1] = parse('''
A librarian enters the number of books borrowed each day; those unprocessed counts are|data|an operating system|a printer|a network protocol|The individual observations are data before analysis.
A report interprets a month's borrowing counts and states their average. The average is|information|a peripheral|a magnetic tape|a socket|A meaningful summary of the observations is information.
A person uses counters moved by hand to add numbers. Which device fits?|abacus|microprocessor|SSD|laser printer|The abacus is a manual counting aid.
A museum labels a mechanical calculator with the name Pascaline. The associated inventor is|Blaise Pascal|Ada Lovelace|Herman Hollerith|Charles Babbage|Pascal designed the Pascaline.
Which Babbage design aimed to calculate mathematical tables?|Difference Engine|Analytical Engine|Hollerith tabulator|abacus|The Difference Engine was designed for mathematical tables.
Which Babbage design proposed a more general programmable mechanical machine?|Analytical Engine|Difference Engine|Pascaline|keyboard|The Analytical Engine was the more general programmable design.
Whose notes described an algorithm for the Analytical Engine?|Ada Lovelace|Blaise Pascal|Herman Hollerith|a computer operator in 1890|Lovelace wrote notes including an algorithm for the Analytical Engine.
An early census machine processes cards with holes. Which inventor is associated with it?|Herman Hollerith|Charles Babbage|Blaise Pascal|Ada Lovelace|Hollerith's tabulators used punched cards.
Which electronic component would be a clue to a first-generation machine?|vacuum tube|microprocessor|laser diode|USB connector|Vacuum tubes are associated with the conventional first generation.
A machine built primarily with transistors belongs conventionally to which generation?|second|first|third|fourth|Transistors are the conventional second-generation marker.
Which component marks the conventional third generation?|integrated circuit|abacus|vacuum tube alone|magnetic tape alone|Integrated circuits are associated with the third generation.
A processor on a chip is called a|microprocessor|plotter|punched card|paper ledger|A microprocessor implements processor functions on an integrated circuit.
Which system is designed primarily for one restricted task?|special-purpose computer|general-purpose computer by definition|only a paper ledger|always a supercomputer|Special-purpose systems are designed for restricted tasks.
A scientist models a large weather system using very demanding numerical calculations. Which class is most appropriate?|supercomputer|manual abacus only|barcode reader|dot-matrix printer|Supercomputers are used for computationally demanding work.
Which observation explains why generation boundaries are approximate?|old and new technologies overlap|all machines changed on one day|all machines use identical components|generations describe only case colour|Technologies can coexist, so generations are simplified historical categories.
''')
BANK[2] = parse('''
A learner types a password into a computer. The keyboard action is|input|output|backup|a processor generation|Typing supplies data as input.
A receipt printed at a shop is|hard copy|soft copy only|a CPU register|a network protocol|A printed paper result is hard copy.
A presenter displays a map on a screen. The screen is providing|output|input only|a backup|firmware|Displaying the map presents visual output.
A person records an interview for digital storage. Which device captures the sound?|microphone|speaker|projector|printer|A microphone converts sound into input.
A camera attached to a computer primarily captures|images or video|printed hard copy|battery voltage surges|paper size|A camera captures visual input.
Which technology identifies darkened boxes on an examination sheet?|OMR|OCR|MICR|a projector|OMR detects marks in predefined positions.
A bank uses magnetic-ink characters on a cheque. The matching technology is|MICR|OMR|OCR|a speaker|MICR recognises special magnetic-ink characters.
A printed page is scanned and its characters are converted to editable text. The recognition step uses|OCR|OMR|MICR|a UPS|OCR recognises characters in an image.
A computer compares 7 with 9. Which processor component performs the logical comparison?|ALU|printer|microphone|USB cable|The arithmetic logic unit performs comparisons.
The part of the CPU that directs operations is the|control unit|plotter|printer tray|monitor casing|The control unit coordinates execution.
In the standard introductory model, which bus identifies a memory location?|address bus|data bus|speaker|paper feed|The address bus carries location information.
Which bus in the simplified model carries values between components?|data bus|address bus|printer roller|desktop case|The data bus carries data.
A computer's physical enclosure contains the motherboard and other parts. It is the|system unit|CPU alone|spreadsheet|application licence|The system unit contains several components, including the processor.
Which printer commonly strikes an inked ribbon?|dot-matrix|laser|inkjet|projector|Dot-matrix printers use an impact mechanism.
A drawing office needs large-format technical drawings. Which traditional output device is associated with this?|plotter|microphone|barcode reader|webcam|Plotters are associated with precise large-format drawings.
''')

# Computational exercises use explicit unit conventions and genuinely different values.
def numeric(stem, answer, distractors, explanation):
    options = [str(answer)]
    for value in distractors:
        if str(value) not in options:
            options.append(str(value))
        if len(options) == 4:
            break
    if len(options) != 4:
        raise ValueError('numeric distractors must be distinct')
    return stem, tuple(options), explanation

BANK[3] = []
for n in (6, 9, 13, 17, 19):
    BANK[3].append(numeric(f'A data field contains {n} bytes. How many bits does it contain?', n*8,
                           [n, n*8+8, n*8-8], f'{n} bytes × 8 bits per byte = {n*8} bits.'))
for n in (32, 56, 72, 104, 120):
    BANK[3].append(numeric(f'A message has {n} bits. How many bytes does it contain?', n//8,
                           [n, n//8+1, n//8-1], f'{n} bits ÷ 8 bits per byte = {n//8} bytes.'))
for n in (6, 7, 8, 9, 10):
    BANK[3].append(numeric(f'Using 1 KiB = 1,024 bytes, what is the size of {n} KiB in bytes?', n*1024,
                           [n*1000, (n+1)*1024, (n-1)*1024], f'{n} × 1,024 = {n*1024} bytes.'))
BANK[4] = []
for n in (18, 19, 20, 21, 22):
    binary = format(n, 'b')
    BANK[4].append(numeric(f'Convert binary {binary} to decimal.', n, [n+1, n-1, n+2],
                           f'Expanding the binary place values in {binary} gives decimal {n}.'))
for n in (18, 19, 20, 21, 22):
    answer = format(n, 'b')
    BANK[4].append((f'Convert decimal {n} to binary.', (answer, format(n-1,'b'), format(n+1,'b'), format(n+2,'b')),
                    f'The binary expansion of decimal {n} is {answer}.'))
for left, right in ((6,2),(6,3),(7,3),(8,3),(9,3)):
    correct = format(left+right,'b')
    BANK[4].append((f'Add binary {left:b} and binary {right:b}.',
                    (correct, format(left+right-1,'b'), format(left+right+1,'b'), format(left+right+2,'b')),
                    f'The operands are {left} and {right} in decimal; their sum {left+right} is binary {correct}.'))
BANK[5] = parse('''
A document editor is opened for writing a report. It is|application software|a device driver|firmware|a physical cable|A document editor is an application for a user task.
A program controls access to memory and files. It is most likely part of|an operating system|a paper report|a speaker|a mouse pad|Operating systems manage memory and files.
A printer needs software support so the OS can use it. The software is a|device driver|spreadsheet cell|paper tray|network cable|A driver supports communication with a particular device.
A program used to compress files is normally a|utility|processor register|display panel|hardware port|Compression is a utility function.
Which component translates assembly language into machine code?|assembler|scanner|projector|touchpad|An assembler translates assembly-language instructions.
A compiler primarily changes|source code into another representation|a screen into a keyboard|electrical power into paper|a mouse into a monitor|A compiler translates source into another representation.
A program executes but produces the wrong total because its formula is wrong. This is a|logic error|necessarily a power failure|paper jam|display resolution|A logic error can let a program run while producing an incorrect result.
When a program is running, the operating system manages it as a|process|pixel|physical port|paper tray|A process is a running program instance.
A user types commands into a text prompt. This is a|command-line interface|printer interface only|paper form|touchscreen only|A command-line interface accepts typed commands.
Windows, icons and menus are characteristic of a|graphical user interface|magnetic tape|paper backup|processor bus|A graphical interface presents visual controls.
At system start, firmware commonly helps initialise|hardware|a printed essay|a paper folder|the user's handwriting|Firmware helps initialise hardware and start the boot process.
Why use an orderly shutdown when possible?|it allows operations to close and state to be saved|it guarantees all unsaved work is saved|it installs physical RAM|it repairs damaged electrical wiring|A normal shutdown allows applications and the OS to close operations properly.
A program costs nothing but restricts modification. Which description can apply?|freeware that is not open source|necessarily public-domain software|hardware with no licence|automatically open source|Price does not determine the source-code permissions in the licence.
A security patch is most appropriately obtained from|a trusted software source|an unexpected anonymous attachment|a printer tray|a monitor stand|Use trusted sources for updates to reduce risk.
An open-source licence grants permissions concerning|source code and redistribution under its terms|ownership of all hardware|free electricity|perfect security|Open-source licences grant defined rights subject to their terms.
''')
BANK[6] = parse('''
A user must compose and format an application letter. Which package fits the main task?|word processor|device driver|firmware|assembler|A word processor creates and formats text documents.
A table of scores must automatically calculate totals. Which package is most suitable?|spreadsheet|media player|firmware updater|driver installer|Spreadsheets calculate values using formulas in cells.
A speaker prepares a sequence of visual slides. Which software should they choose?|presentation software|printer driver|CPU firmware|file compression utility|Presentation software organises content into slides.
A school must query structured student records. Which type of software is designed for this?|database management system|speaker driver|screen stand|power supply|A database management system stores and retrieves structured records.
In a worksheet, the location in column E and row 6 is|E6|6E|E plus 6|E:6 only|The column letter and row number form the cell reference.
A workbook is a spreadsheet file that can contain|one or more worksheets|only a printer cable|only a power supply|no cells|A workbook can contain one or more worksheets.
A worksheet cell contains =2+3. What result should ordinary spreadsheet evaluation show?|5|23|6|1|The formula adds two and three to give five.
A reference D4 is copied one row down and remains relative. What is the new reference?|D5|D4|E4|C4|Copying one row down shifts the relative row by one.
Which common reference fixes both column B and row 2?|`$B$2`|B2|`$B2`|`B$2`|Dollar signs before both parts fix the column and the row.
A learner creates a duplicate file while keeping the original. Which operation was used?|copy|move|delete|rename|Copying creates another item without removing the original.
A file is relocated to another folder. Which action describes this?|move|copy only|print|scan|Moving changes the file's location.
A user changes a document name but not its contents. The operation is|rename|convert to PDF|erase permanently|install RAM|Renaming changes the name rather than necessarily converting the contents.
A file has the extension .pdf. What does that extension establish?|it is a clue to format, not a safety guarantee|the file is definitely safe|the sender is definitely honest|the file contains no data|Extensions are clues, not proof of safety or content.
What is the strongest reason to test a backup?|to confirm it can be restored|to increase processor speed|to remove the need for originals|to change its filename|Testing restoration checks whether the backup is usable.
Which is a safe way to change an existing document to PDF?|use a suitable export or conversion function|only change .txt to .pdf in its name|assume every file is already PDF|delete the original first|A supported export or conversion changes the underlying format.
''')
BANK[7] = parse('''
A computer runs in a dusty room. Which preventive action is appropriate?|follow the maker's cleaning and ventilation guidance|block all vents|spray liquid into its openings|ignore overheating|Cleaning and ventilation according to instructions help prevent faults.
Before cleaning external equipment, a user should|follow the maker's instructions and disconnect power when required|touch exposed live wiring|immerse the device in water|ignore safety guidance|Follow the manufacturer's cleaning and power-disconnection instructions.
A cable has exposed wires. What is the appropriate action?|stop using it and report it for qualified attention|hold the exposed conductors|cover the wire with a sheet of paper|continue using it indefinitely|Damaged electrical wiring presents a hazard.
A computer emits smoke. What is the first priority?|personal safety and the local emergency procedure|finishing a spreadsheet formula|changing the desktop background|printing a copy|Stop use and follow the emergency procedure, disconnecting only if safe.
A UPS and a backup differ because|the UPS supplies temporary power while the backup stores a recoverable copy|both guarantee permanent power|a backup is a battery|a UPS is always a file copy|A UPS provides temporary power; a backup supports recovery of data.
A surge protector is designed primarily to|limit damaging voltage surges within its specifications|store a document copy|detect every phishing message|cool a processor directly|A surge protector addresses voltage surges within its rating.
An existing broken cooling fan is replaced. This is|corrective maintenance|preventive maintenance only|an output operation|a spreadsheet function|Replacing an already failed part corrects an existing fault.
A technician records a symptom before changing settings. This helps|organise troubleshooting|guarantee every repair succeeds|add storage automatically|convert software to hardware|Documenting the symptom helps diagnose and track a fault.
Why change one troubleshooting variable at a time where practical?|to identify which change affects the symptom|to guarantee no future failures|to eliminate the need for testing|to increase voltage|Isolated changes make their effects easier to observe.
A printer is not working. Which check is safe and sensible first?|check power and external connection|open its power supply|touch exposed wiring|pour water into the printer|Simple external checks can identify common causes safely.
After applying a troubleshooting fix, the user should|verify the original problem is resolved|assume every related fault is solved|delete all backups|ignore the result|Verification checks whether the symptom has been resolved.
Why test a backup's restoration?|a copy may exist but still be unusable|a backup always needs no testing|it increases screen brightness|it fixes exposed wires|A restoration test checks that data can actually be recovered.
An organisation is disposing of a drive containing private data. It should|follow an approved erasure and disposal policy|publish all its contents|rely only on changing the filename|burn the drive openly|Use an appropriate erasure and responsible disposal process.
A chair, screen and keyboard should be arranged with attention to|ergonomics and user comfort|only processor speed|only network topology|binary place values|Ergonomics considers fit between work and the person.
An uncertain electrical repair should be|escalated to a qualified person|attempted on exposed live parts|treated as a font problem|ignored indefinitely|Electrical hazards and uncertain repairs require qualified help.
''')
BANK[8] = parse('''
Several devices share files within a school building. Their limited-area network is commonly a|LAN|CPU|pixel|printer driver|A LAN commonly covers a limited area such as a school.
A network linking sites in distant cities is commonly described as a|WAN|register|cell|word processor|A wide area network connects sites over a wider area.
A wireless device connects to a local network through an|access point|optical disc|paper tray|ALU|A wireless access point connects wireless devices to a network.
A local network has Wi-Fi but no internet service. Can two local devices still communicate if configured appropriately?|yes, local networking can work without internet access|no, Wi-Fi requires the web to exist|no, all LAN traffic must cross the internet|only if they are printers|A local wireless network can operate without internet connectivity.
Which device ordinarily forwards packets from a local network to another network?|router|microphone|plotter|scanner|A router forwards packets between networks.
Which device ordinarily forwards frames among local network connections?|switch|speaker|printer|power supply|A switch connects and forwards traffic among local devices.
What helps map a domain name to information such as an IP address?|DNS|OMR|UPS|ALU|DNS resolves names to information including IP addresses.
The internet is best described as|interconnected networks worldwide|one web page|one desktop computer|a paper filing cabinet|The internet is a worldwide network of networks.
The web is best described as|linked resources accessed using the internet|the entire internet and every network service|a single printer cable|a type of RAM|The web is a system of linked resources using internet connectivity.
A program displaying a web page is a|browser|printer tray|monitor cable|UPS|A browser accesses and displays web resources.
A service that helps locate indexed web information is a|search engine|processor register|paper folder|power cable|Search engines help find indexed information.
A web address identifies which kind of item?|a resource such as a web page|a person's identity with certainty|a physical power supply|a printer's ink colour|A URL identifies a resource location.
A message asks for a password urgently through an unfamiliar link. What should the recipient do?|verify independently and keep the password private|send the password immediately|share the password with friends|disable account protection|Unexpected password requests may be phishing; verify through a known channel.
What can HTTPS help protect?|data exchanged in transit between browser and site|the honesty of every site operator|the accuracy of every claim on a page|all users from every kind of fraud|HTTPS protects the connection but does not establish trustworthiness.
A search result appears first. Which conclusion is justified?|its ranking alone does not prove it is accurate|it must be official|it must be the newest available information|it cannot contain an error|Ranking alone does not establish accuracy or official status.
''')
