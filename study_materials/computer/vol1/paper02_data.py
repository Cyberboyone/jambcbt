"""Original mixed practice paper 2; first choice is the correct answer."""
RAW = '''
A user enters 18, 20 and 22, then displays their mean. The displayed mean is|output|input only|a cable|a hardware fault|The displayed result is output.
What was the intended purpose of the Difference Engine?|calculating mathematical tables|wireless networking|audio playback|web browsing|Babbage's Difference Engine was intended to calculate tables.
Which person wrote notes including an algorithm for the Analytical Engine?|Ada Lovelace|Herman Hollerith|Blaise Pascal|a printer driver|Lovelace wrote notes describing an algorithm for Babbage's design.
Transistors are commonly associated with which conventional generation?|second|first|third|fourth|Transistors are the usual second-generation marker.
Which statement best describes a server?|a device or system providing services to other devices|a computer of one mandatory physical size|a printer only|a mechanical abacus|Server describes a service role, not a required physical form.
A mouse is normally used to|control a pointer and enter actions|print hard copy|project a slide|produce sound output|A mouse captures pointer movement and user actions.
A printed report is an example of|hard copy|soft copy only|a register|volatile memory|A printer produces hard copy on paper.
The CPU and other internal components are typically connected through the|motherboard|paper tray|speaker cone|mouse pad|The motherboard provides connections among internal components.
Which component holds immediately needed processor values?|register|external paper folder|projector|printer|Registers are small fast processor storage locations.
What is the correct simplified instruction sequence?|fetch, decode, execute|print, scan, disconnect|type, fold, post|store, print, erase only|The introductory instruction cycle is fetch, decode, execute.
A bank reads specially printed characters on a cheque using|MICR|OMR|a projector|a speaker|Magnetic ink character recognition reads special cheque characters.
Which statement about scanning is accurate?|a scan can be an image without editable text|every scan is automatically editable text|a scan is always hard copy|a scanner is always an output device|A scan captures an image; character recognition can extract text.
Which device is a non-impact printer?|laser printer|dot-matrix printer|manual striking typewriter|hammer printer|A laser printer is a non-impact device.
Which bus carries location information in the introductory model?|address bus|paper bus|audio speaker|folder|The address bus identifies locations for access.
A cache hit occurs when|the requested data are found in cache|a printer strikes the paper|the CPU loses power|the keyboard is disconnected|A cache hit means that the requested item is available in that cache.
Which storage medium commonly uses flash without moving mechanical parts?|SSD|HDD|magnetic tape reel|paper ledger|A typical solid-state drive uses flash memory and has no moving parts.
Which of the following is an optical medium?|DVD|RAM|processor register|magnetic tape|A DVD is an optical disc read using light.
A sequence contains 7 bytes. How many bits is this?|56|7|15|49|Seven times eight bits per byte equals 56 bits.
Using the decimal convention, 4 kB equals|4000 bytes|4096 bytes|400 bytes|32000 bytes|A decimal kilobyte contains 1,000 bytes.
Binary 1111 is decimal|15|7|14|16|The binary weights eight, four, two and one add to fifteen.
Decimal 17 written in binary is|10001|1001|1111|1010|Seventeen is sixteen plus one, written 10001 in binary.
What is binary 11 plus binary 1?|100|12|11|101|Binary 11 is three; adding one gives four, written 100.
A 10 by 10 pixel image with 24 bits per pixel has how many raw pixel bytes, excluding headers?|300|2400|100|240|There are 100 pixels at 24 bits each, giving 2,400 bits or 300 bytes.
Which is application rather than system software?|presentation software|operating system|device driver|firmware|Presentation software helps a user prepare slides.
A program is free of charge but prohibits redistribution. It|may be freeware without being open source|must be open source|has no owner by definition|is physical hardware|Price does not by itself determine source-code or redistribution permissions.
What is a running instance of a program called?|process|pixel|port|byte|A process is a running program instance.
Which utility supports restoration after data loss?|backup software|screen stand|paper tray|mouse cable|A backup utility helps create separate recoverable copies.
In a spreadsheet, the intersection of column D and row 5 is|D5|5D|D plus 5|a workbook|A cell address uses the column letter and row number.
Copying relative reference C2 one row down normally changes it to|C3|C2|D2|B2|The row increases by one while the column remains the same.
Which operation preserves an original file and creates another item?|copy|move|delete|rename|Copy creates another item while leaving the original.
Changing a file extension by renaming it|does not reliably convert the underlying format|always changes its contents to the new format|always makes it safe|increases storage capacity|A rename changes the name; proper conversion requires suitable software.
Which safety practice helps avoid overheating?|keeping ventilation openings clear|covering vents while the machine runs|placing the machine in excessive heat|pouring liquid into openings|Clear vents support airflow and cooling.
What should a learner do before an internal electrical repair?|obtain qualified authorised assistance|touch exposed live conductors|spray water into the power supply|ignore the maker's instructions|Internal electrical repairs require appropriate training and authorisation.
What is a useful test of a backup?|restore a copy and check it opens|delete the original immediately|assume its existence proves usability|rename the file extension|Restoration testing checks that a backup can be used.
A device forwards traffic among connections on a local network. It is commonly a|switch|speaker|plotter|scanner|A network switch connects devices and forwards local traffic.
A home Wi-Fi connection without internet access may still|allow communication between local devices|reach every external website|be identical to the web|replace all security controls|A local wireless network can operate without an internet connection.
What does a search engine primarily do?|help find indexed information|guarantee every result is true|manage physical memory directly|print paper documents|A search engine helps find indexed content; accuracy requires evaluation.
What is an email attachment?|a file sent with a message|the same thing as a router|a CPU register|a printer connection|An attachment is a file included with an email message.
A message asks for a one-time login code. The safest action is to|keep the code private and verify the request independently|send it to any person claiming to be support|publish it in a group|use it as a filename|One-time authentication codes should not be disclosed to unexpected requesters.
Which statement about HTTPS is correct?|it protects web data in transit but does not guarantee site honesty|it proves every site is honest|it makes passwords unnecessary|it prevents every form of fraud|HTTPS secures the connection but cannot guarantee the operator's honesty.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
