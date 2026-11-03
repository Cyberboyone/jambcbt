"""Forty original development and testing questions; the first choice is correct."""
RAW = '''
A statement describing what a system must do is a|functional requirement|printer cartridge|network cable|CPU register|A functional requirement describes required system behaviour.
A requirement that attendance must be recorded describes|a required function|a screen's physical size only|a battery capacity|an output device alone|Recording attendance is a function the system must provide.
A response-time target is typically a|non-functional requirement|printer driver|word-processing document|a physical key|A response-time target constrains system quality or performance.
A requirement should be testable where practical so that|its fulfilment can be checked|it can never change|it replaces every design decision|the system needs no users|A testable requirement allows the team to assess whether it is met.
A feasibility study considers|whether a proposed solution is practical under relevant constraints|only a screen's colour|only one printer brand|whether a file has a name|Feasibility considers resources, technical capability, time and other constraints.
Which is a design choice rather than a requirement?|use a table with a date column|record attendance for each day|allow authorised staff to retrieve records|reject invalid dates|The database-table structure is one possible design for meeting requirements.
Design normally considers|inputs, outputs and how requirements will be met|only the price of a desk|only the programmer's handwriting|no data or interfaces|Design plans the structure and behaviour of a proposed solution.
Implementation includes|writing or configuring the solution|only interviewing users before any system exists|only drawing a room plan|only disposing of hardware|Implementation puts the design into practice.
Testing compares|actual behaviour with expected behaviour|the number of desks with the number of cables only|a logo with its colour only|a user's name with a monitor size|Testing compares observed results against specified expectations.
Deployment makes a system|available in its intended environment|automatically free of all defects|a paper-only document|impossible to change|Deployment makes a system available for use in its intended setting.
Maintenance after deployment can include|fixing defects and adapting to changes|only switching on a monitor|only drawing a flowchart|eliminating the need for users|Maintenance includes correction, adaptation and improvement.
Fixing a discovered software defect is|corrective maintenance|only feasibility analysis|data entry|physical printing|Corrective maintenance addresses an existing defect.
Changing a system for a new operating environment is|adaptive maintenance|a printer queue|a flowchart terminator|a paper backup|Adaptive maintenance responds to a changed environment or requirement.
A guide explaining how to perform common tasks is|user documentation|processor cache|a circuit board|a barcode|User documentation helps people operate the system.
A description of design and interfaces for maintainers is|technical documentation|a mouse pad|a screen brightness setting|a printer tray|Technical documentation supports development and maintenance.
A team returns to requirements after a failed test. This is|a legitimate feedback step|impossible in every life cycle|a physical hardware port|proof that testing is useless|Real projects can revisit earlier activities when they discover problems.
For valid integer marks from 0 to 100 inclusive, a normal valid test is|65|101|-1|a non-numeric word|Sixty-five is inside the valid range.
For valid integer marks from 0 to 100 inclusive, a valid lower-boundary test is|0|-1|1|101|Zero is the included lower endpoint.
For valid integer marks from 0 to 100 inclusive, a valid upper-boundary test is|100|99|101|-1|One hundred is the included upper endpoint.
For valid integer marks from 0 to 100 inclusive, a value immediately below the range is|-1|0|1|100|Negative one lies just below the lower boundary.
For valid integer marks from 0 to 100 inclusive, a value immediately above the range is|101|100|99|0|One hundred and one lies just above the upper boundary.
When a mark must be an integer, a non-numeric input is|an invalid test case|automatically the upper boundary|always a valid mark|a physical sensor|A non-numeric value violates an integer input requirement.
A test case should record the input and|the expected result|only the screen's colour|only a person's name|no outcome|An expected outcome is needed to judge observed behaviour.
If input 101 must be rejected, the expected result is|rejection according to the specification|automatic acceptance|a guaranteed electrical fault|a mark of 100 in every possible system|The test should check the specified rejection of out-of-range input.
A discrepancy between expected and actual results may|reveal a defect or an incorrect expectation|prove the program is defect-free|eliminate the need to investigate|always be caused by the monitor|A mismatch requires investigation of the implementation and expectation.
Testing a complex system generally|can reveal defects but does not prove absence of all defects|guarantees every future case is correct|makes requirements unnecessary|eliminates all maintenance|Testing provides evidence but cannot by itself establish that every defect is absent.
A test using a value exactly at an inclusive limit is a|boundary test|backup file|device driver|power outage|A boundary test checks behaviour at or near an allowed limit.
Which pair tests both valid boundaries of 1 to 10 inclusive?|1 and 10|0 and 11|2 and 9|5 and 6|The included endpoints are 1 and 10.
Which pair lies immediately outside 1 to 10 inclusive?|0 and 11|1 and 10|2 and 9|5 and 6|Zero and eleven are just outside the valid endpoints.
A change made after deployment to improve functionality is|a form of maintenance|only an input device|a physical cable|automatically a test case|Maintenance can improve or extend functionality after deployment.
Preparing users to operate a new system is|training|a processor register|optical character recognition|a storage unit|Training helps users perform tasks in the deployed system.
Moving existing records into a new system is commonly called|data migration|screen cleaning|voltage regulation|physical printing|Data migration transfers existing data into the new environment.
A team should determine who may view records during|requirements and security planning|only after public disclosure|printer manufacture only|screen assembly only|Access needs and safeguards should be considered when defining and designing the system.
Which describes a functional requirement?|the system records attendance|the system must respond within a specified time|the casing has a specified dimension|the program must use a stated amount of memory at most|Recording attendance states a function; the others are constraints.
Which describes a non-functional requirement?|the system should respond within a stated time|the system records a mark|the user can submit attendance|the user can retrieve a report|A response-time target is a performance constraint.
A test suite contains only normal examples. What may be missed?|errors at the boundaries or for invalid input|the existence of every computer|all possible user names automatically|the need for a screen|Boundary and invalid tests can expose faults normal examples do not.
An expected result should come from|the specification or intended behaviour|guessing after seeing the output only|the monitor's colour|the filename alone|Expected behaviour should be defined from the requirements.
What is the purpose of technical documentation?|to help maintainers understand design and interfaces|to replace every user guide|to guarantee no defect|to provide electrical power|Technical documentation assists those developing and maintaining the system.
A development process can be iterative because|feedback may lead to revising earlier work|every activity occurs exactly once in all projects|testing is forbidden after design|requirements can never change|Iteration uses feedback to revisit and refine earlier work.
Which sequence is a useful simplified development model?|requirements, design, implementation, testing|printing, deletion, guessing, recycling|monitor, cable, desk, chair|output, no input, no checking, no maintenance|The simplified model progresses from needs to a solution and tests, with possible feedback.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
