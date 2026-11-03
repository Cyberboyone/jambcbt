"""Original mixed timed practice paper; the first option is correct."""
RAW = '''
A procedure reads two values and displays their sum. The two values are|inputs|outputs only|actuators|licences|The values supplied to the procedure are inputs.
In that procedure, adding the two values is|processing|a physical sensor|a privacy notice|storage only|Addition transforms the input and is processing.
A flowchart diamond commonly denotes|a decision|a printer tray|a keyboard cable|a filename|A diamond conventionally represents a decision.
The condition x >= 10 is true when x is|10|9|8|0|Greater than or equal includes the boundary 10.
A total starts at zero and adds 4, 3 and 2. The final total is|9|2|7|432|The running total becomes 4, 7 and 9.
A loop prints n while n is at most 3, starting at 1 and increasing n by 1 after each print. Its outputs are|1, 2 and 3|1 and 2 only|0, 1 and 2|3 and 4|The loop prints 1, 2 and 3 before the condition becomes false.
A structured description of algorithm steps without the exact syntax of a specific language is|pseudocode|machine hardware|a power outlet|a data cable|Pseudocode describes logic in a human-readable form.
An assembler translates|assembly language|spoken language automatically in every system|a monitor|a paper folder|An assembler translates assembly-language instructions.
A Boolean value can represent|true or false|only a printer|a physical cable|a paper tray|A Boolean represents a truth value.
A program sets x to 5 and then sets x to x + 2. The final value is|7|5|3|52|The old value 5 plus 2 gives 7.
A condition combines P = true and Q = false with AND. Its value is|false|true|a file|a monitor|AND is true only when both operands are true.
If P is false and Q is true, P OR Q is|true|false|a cable|a printer|OR is true when at least one operand is true.
A running program uses addition instead of multiplication for an area. The defect is principally|a logic error|a paper jam|a file extension|a network cable|The formula is wrong even though the program can run.
An attendance tool must record the date for each entry. This is|a functional requirement|a power plug|a printer roller|a Boolean constant|Recording the date describes required system behaviour.
A system's specified maximum response time is commonly|a non-functional requirement|a physical actuator|an image label|a file extension|A response-time constraint describes a quality or performance requirement.
If valid values are 1 through 10 inclusive, which is a valid boundary?|1|0|11|12|One is the included lower endpoint.
If valid values are 1 through 10 inclusive, which value lies just above the range?|11|10|9|1|Eleven is just above the upper endpoint.
The expected result of a test is compared with|the actual result|a screen's colour|a user's shoe size|the printer's case|Testing compares observed behaviour with the specified expectation.
Fixing a defect in a deployed program is|corrective maintenance|a hardware sensor|data entry only|a paper copy|Corrective maintenance addresses an existing defect.
Which task can be performed using an AI application?|speech recognition|a desk lamp|a paper clip|a power cable|Speech recognition is an AI application.
Which relationship correctly places machine learning within computing?|one family of approaches within AI|identical to every AI method|a physical robot by definition|a printer port|Machine learning is one approach within the broad field of AI.
A model is fitted using|training examples|a monitor stand|only a printer tray|no information whatsoever|Training data are used to fit a model.
A classifier correctly labels 14 out of 20 examples. Its accuracy on that set is|70%|14%|20%|90%|Fourteen divided by twenty is 0.7, or 70%.
A model tested only on one group of users may|miss poor performance for other groups|prove equal performance for all groups|guarantee future accuracy|eliminate the need for oversight|An unrepresentative test set may not reveal performance across intended users.
A robot component that measures distance is a|sensor|actuator only|file extension|licence|A distance sensor supplies a measurement.
A motor moving a robot's wheel is an|actuator|email address|spreadsheet cell|privacy notice|A motor produces physical action and serves as an actuator.
A controller that adjusts movement using measured position uses|feedback|only paper storage|a filename|a printer cartridge|Measured position provides feedback to the controller.
A factory arm following fixed instructions without machine learning|can still be a robot|cannot perform physical actions|is necessarily conscious|must be an email|A robot can use fixed programmed instructions rather than machine learning.
Preventing unauthorised disclosure primarily protects|confidentiality|screen brightness|printer ink|desk colour|Confidentiality concerns unauthorised disclosure.
Preventing improper changes to records primarily protects|integrity|paper weight|monitor height|battery colour|Integrity concerns protection from improper alteration.
A message impersonating a bank to request a password may be|phishing|a backup|a physical sensor|a flowchart terminator|Phishing attempts to deceive users into unsafe disclosure or action.
A separate recoverable copy of data is a|backup|processor register|printer cable|screen pixel|A backup is a separate copy that can be restored.
A password and a suitable separate possession factor can provide|multi-factor authentication|paper output|an image label|file compression|Different factor types can provide multi-factor authentication.
A user finds an unlocked account belonging to someone else. The user should|avoid private content and report the issue appropriately|publish the messages|change the password|copy all records|Technical access does not establish authorisation.
Before redistributing a free online image, a user should|check its licence and permission|assume all rights are waived|remove the creator's name|assume attribution always grants permission|Free access alone does not grant every redistribution right.
Keyboard navigation and meaningful alternative text can support|accessibility|voltage regulation|processor cooling|magnetic storage|These features can support users with differing access needs.
Unequal access to connectivity, devices or skills is known as the|digital divide|fetch cycle|printer queue|address bus|The digital divide concerns unequal access to digital resources and skills.
A person helping support local network infrastructure is commonly a|network specialist|printer tray|paper clip|image file|A network specialist works with network infrastructure.
A team interviewing users about required system behaviour is doing|requirements work|paper shredding|disk formatting only|printer repair only|User needs and required behaviour are gathered during requirements work.
A public project demonstration should use|fictional or appropriately authorised data|real passwords|confidential records without permission|unverified leaked credentials|Practice should avoid unnecessarily exposing private data.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
