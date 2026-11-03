"""Original software questions; the first choice is correct."""
RAW = '''
Programs and associated instructions are called|software|hardware|paper|electrical wiring|Software consists of programs and related instructions.
Physical computer equipment is|hardware|software|an algorithm only|an application licence|Hardware consists of physical components.
Which is system software?|operating system|letter in a document|budget in a worksheet|photograph|An operating system manages resources and supports applications.
Which is application software?|word processor|device driver|firmware|bootloader only|A word processor helps users create documents.
Which application is best suited to cell-based calculations?|spreadsheet|device driver|assembler|firmware|A spreadsheet organises values in cells and calculates using formulas.
Which software helps the OS use a printer?|device driver|spreadsheet cell|pixel|paper tray|A driver helps the operating system communicate with hardware.
A program designed for maintenance tasks is a|utility|peripheral|pixel|bus|Utilities support tasks such as backup and compression.
An operating system manages|computer resources|only ink colour|only a paper file|only a mouse pad|The OS coordinates resources including memory, processes and devices.
A running instance of a program is a|process|pixel|port|paper tray|A process is a running program instance.
An OS function involving allocation of working space is|memory management|paper folding|webpage painting|keyboard manufacture|Memory management allocates and tracks working memory.
An OS function involving running programs is|process scheduling|printing photographs only|scanning barcodes only|making plastic cases|Scheduling manages access to processor time among processes.
Software that stores and organises files is supported by the OS through|file management|sound recording only|screen cleaning|battery manufacture|The operating system manages files and access to them.
A graphical user interface commonly presents|windows and icons|only electrical wires|only punched cards|only paper forms|GUIs use visual elements including windows, icons and menus.
A command-line interface accepts|typed commands|only touch gestures|only printed letters|only audio output|A CLI accepts textual commands.
Which statement about user interfaces is correct?|one system can offer both GUI and CLI|a GUI is necessarily the entire OS|a CLI cannot accept text|a GUI is a hardware port|Many operating systems provide both graphical and command-line interfaces.
Booting is the process of|starting the computer and loading the OS|deleting all files|printing a page|disconnecting every device|Booting starts the system and loads an operating system.
Firmware at start-up helps|initialise hardware and begin booting|replace the user permanently|turn a keyboard into paper|guarantee every application works|Firmware performs early hardware initialisation and helps start the boot process.
An orderly shutdown is useful because it can|close operations and save necessary state|guarantee every unsaved document is preserved|physically increase RAM|eliminate all future faults|A normal shutdown allows software to close operations properly.
Abrupt power loss can|lose unsaved work|guarantee a backup|automatically fix all errors|increase storage capacity|Unsaved changes can be lost and files may be damaged.
A compiler primarily|translates source code into another form|prints every source file|manufactures a processor|scans fingerprints|A compiler translates source into machine code or another representation.
An assembler translates|assembly language|handwriting on a cheque|audio into paper|a physical cable|An assembler translates assembly-language instructions into machine code.
An interpreter is associated with|executing instructions according to a representation|only printing reports|manufacturing hardware|replacing network cables|An interpreter executes instructions according to source or another representation.
A compile-time error can|prevent successful translation|only alter printer ink|never be detected|always improve output|A compile-time error can stop translation.
A logic error can|allow a program to run but produce a wrong result|only occur in a disconnected cable|guarantee correct output|always stop translation|An incorrect algorithm can run successfully while producing an incorrect answer.
Human-readable instructions written in a programming language are|source code|a monitor stand|a printer ribbon|electrical wiring|Source code is a human-readable program representation.
Which mobile platform listed is an operating system?|Android|a spreadsheet formula|a keyboard cable|a printed letter|Android is an operating system.
Which desktop platform listed is an operating system?|Windows|a pixel|a printer cartridge|an answer sheet|Windows is an operating system.
Which listed distribution provides operating-system software?|a Linux distribution|a barcode|a keyboard button|a folder label|Linux distributions include operating-system software.
Which is an application?|web browser|device driver|processor register|power supply|A browser is an application for accessing web resources.
A backup utility supports|making recoverable copies|manufacturing monitor screens|increasing physical RAM automatically|replacing a network router|Backup software helps create recoverable copies.
A file compression utility is used to|reduce or repackage file data|print without paper|make a processor from silicon|detect finger movements only|Compression utilities encode data to reduce or manage file size.
A malware scanner is a|security utility|hardware port|spreadsheet cell|printing surface|A malware scanner is a utility intended to detect threats.
No security utility should be assumed to|detect every possible threat|help detect known threats|receive updates|be software|No single security tool detects every threat.
A software licence states|permissions and conditions of use|the temperature of the CPU|the size of the screen only|the user's age automatically|A licence sets conditions governing use and other permissions.
Freeware means software distributed|without charge|with unrestricted source modification always|without copyright always|only on paper|Freeware is distributed at no charge but may remain proprietary.
Open-source licences provide|defined rights involving source code|a guarantee of zero price|no conditions at all|only permission to print screenshots|Open-source licences grant specified rights concerning source and redistribution.
A program can be free of charge yet|remain proprietary|automatically be in the public domain|have no licence|be physical hardware|Price and licensing permissions are different.
A trustworthy update can|fix a known vulnerability|guarantee all threats disappear|replace every backup|make the hardware indestructible|Updates can fix vulnerabilities but do not eliminate every risk.
Before a significant update, a sound precaution is to|back up important data|delete every recovery copy|share passwords publicly|disconnect all safety devices|Backing up data helps recovery if an update causes problems.
The choice between a word processor and an operating system depends on whether the task is|document creation or resource management|input versus output only|magnetic versus optical storage only|power outage versus surge only|A word processor creates documents; an operating system manages resources.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
