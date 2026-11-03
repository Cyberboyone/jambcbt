#import "template.typ": *

== 3.7 Chapter 3 Practice Drill — 40 Questions

Allow 44 minutes. Answer all items before checking the key; read every explanation.

#mcq(1, [A statement describing what a system must do is a], [network cable], [printer cartridge], [CPU register], [functional requirement])

#mcq(2, [A requirement that attendance must be recorded describes], [a required function], [a battery capacity], [a screen's physical size only], [an output device alone])

#mcq(3, [A response-time target is typically a], [a physical key], [printer driver], [word-processing document], [non-functional requirement])

#mcq(4, [A requirement should be testable where practical so that], [the system needs no users], [it can never change], [its fulfilment can be checked], [it replaces every design decision])

#mcq(5, [A feasibility study considers], [whether a file has a name], [only a screen's colour], [only one printer brand], [whether a proposed solution is practical under relevant constraints])

#mcq(6, [Which is a design choice rather than a requirement?], [use a table with a date column], [record attendance for each day], [allow authorised staff to retrieve records], [reject invalid dates])

#mcq(7, [Design normally considers], [no data or interfaces], [only the programmer's handwriting], [inputs, outputs and how requirements will be met], [only the price of a desk])

#mcq(8, [Implementation includes], [only drawing a room plan], [writing or configuring the solution], [only disposing of hardware], [only interviewing users before any system exists])

#mcq(9, [Testing compares], [actual behaviour with expected behaviour], [a user's name with a monitor size], [the number of desks with the number of cables only], [a logo with its colour only])

#mcq(10, [Deployment makes a system], [impossible to change], [available in its intended environment], [automatically free of all defects], [a paper-only document])

#mcq(11, [Maintenance after deployment can include], [only drawing a flowchart], [eliminating the need for users], [only switching on a monitor], [fixing defects and adapting to changes])

#mcq(12, [Fixing a discovered software defect is], [only feasibility analysis], [corrective maintenance], [data entry], [physical printing])

#mcq(13, [Changing a system for a new operating environment is], [a flowchart terminator], [adaptive maintenance], [a paper backup], [a printer queue])

#mcq(14, [A guide explaining how to perform common tasks is], [processor cache], [a barcode], [a circuit board], [user documentation])

#mcq(15, [A description of design and interfaces for maintainers is], [a printer tray], [a mouse pad], [a screen brightness setting], [technical documentation])

#mcq(16, [A team returns to requirements after a failed test. This is], [a physical hardware port], [a legitimate feedback step], [proof that testing is useless], [impossible in every life cycle])

#mcq(17, [For valid integer marks from 0 to 100 inclusive, a normal valid test is], [a non-numeric word], [-1], [65], [101])

#mcq(18, [For valid integer marks from 0 to 100 inclusive, a valid lower-boundary test is], [0], [1], [101], [-1])

#mcq(19, [For valid integer marks from 0 to 100 inclusive, a valid upper-boundary test is], [99], [101], [-1], [100])

#mcq(20, [For valid integer marks from 0 to 100 inclusive, a value immediately below the range is], [100], [-1], [1], [0])

#mcq(21, [For valid integer marks from 0 to 100 inclusive, a value immediately above the range is], [0], [99], [101], [100])

#mcq(22, [When a mark must be an integer, a non-numeric input is], [a physical sensor], [always a valid mark], [an invalid test case], [automatically the upper boundary])

#mcq(23, [A test case should record the input and], [no outcome], [only a person's name], [the expected result], [only the screen's colour])

#mcq(24, [If input 101 must be rejected, the expected result is], [a guaranteed electrical fault], [automatic acceptance], [rejection according to the specification], [a mark of 100 in every possible system])

#mcq(25, [A discrepancy between expected and actual results may], [reveal a defect or an incorrect expectation], [eliminate the need to investigate], [always be caused by the monitor], [prove the program is defect-free])

#mcq(26, [Testing a complex system generally], [makes requirements unnecessary], [can reveal defects but does not prove absence of all defects], [eliminates all maintenance], [guarantees every future case is correct])

#mcq(27, [A test using a value exactly at an inclusive limit is a], [boundary test], [backup file], [device driver], [power outage])

#mcq(28, [Which pair tests both valid boundaries of 1 to 10 inclusive?], [2 and 9], [1 and 10], [0 and 11], [5 and 6])

#mcq(29, [Which pair lies immediately outside 1 to 10 inclusive?], [2 and 9], [5 and 6], [1 and 10], [0 and 11])

#mcq(30, [A change made after deployment to improve functionality is], [automatically a test case], [only an input device], [a form of maintenance], [a physical cable])

#mcq(31, [Preparing users to operate a new system is], [training], [a processor register], [a storage unit], [optical character recognition])

#mcq(32, [Moving existing records into a new system is commonly called], [screen cleaning], [physical printing], [voltage regulation], [data migration])

#mcq(33, [A team should determine who may view records during], [requirements and security planning], [screen assembly only], [only after public disclosure], [printer manufacture only])

#mcq(34, [Which describes a functional requirement?], [the program must use a stated amount of memory at most], [the system must respond within a specified time], [the system records attendance], [the casing has a specified dimension])

#mcq(35, [Which describes a non-functional requirement?], [the user can submit attendance], [the system records a mark], [the user can retrieve a report], [the system should respond within a stated time])

#mcq(36, [A test suite contains only normal examples. What may be missed?], [errors at the boundaries or for invalid input], [the existence of every computer], [all possible user names automatically], [the need for a screen])

#mcq(37, [An expected result should come from], [the specification or intended behaviour], [the filename alone], [guessing after seeing the output only], [the monitor's colour])

#mcq(38, [What is the purpose of technical documentation?], [to guarantee no defect], [to help maintainers understand design and interfaces], [to provide electrical power], [to replace every user guide])

#mcq(39, [A development process can be iterative because], [requirements can never change], [every activity occurs exactly once in all projects], [feedback may lead to revising earlier work], [testing is forbidden after design])

#mcq(40, [Which sequence is a useful simplified development model?], [output, no input, no checking, no maintenance], [requirements, design, implementation, testing], [printing, deletion, guessing, recycling], [monitor, cable, desk, chair])

=== Answer Key

#answer-key-grid(("D", "A", "D", "C", "D", "A", "C", "B", "A", "B", "D", "B", "B", "D", "D", "B", "C", "A", "D", "B", "C", "C", "C", "C", "A", "B", "A", "B", "D", "C", "A", "D", "A", "C", "D", "A", "A", "B", "C", "B",))

=== Complete Solutions

#sol-item(1, "D", dense: true, pad: 6pt)[A functional requirement describes required system behaviour.]

#sol-item(2, "A", dense: true, pad: 6pt)[Recording attendance is a function the system must provide.]

#sol-item(3, "D", dense: true, pad: 6pt)[A response-time target constrains system quality or performance.]

#sol-item(4, "C", dense: true, pad: 6pt)[A testable requirement allows the team to assess whether it is met.]

#sol-item(5, "D", dense: true, pad: 6pt)[Feasibility considers resources, technical capability, time and other constraints.]

#sol-item(6, "A", dense: true, pad: 6pt)[The database-table structure is one possible design for meeting requirements.]

#sol-item(7, "C", dense: true, pad: 6pt)[Design plans the structure and behaviour of a proposed solution.]

#sol-item(8, "B", dense: true, pad: 6pt)[Implementation puts the design into practice.]

#sol-item(9, "A", dense: true, pad: 6pt)[Testing compares observed results against specified expectations.]

#sol-item(10, "B", dense: true, pad: 6pt)[Deployment makes a system available for use in its intended setting.]

#sol-item(11, "D", dense: true, pad: 6pt)[Maintenance includes correction, adaptation and improvement.]

#sol-item(12, "B", dense: true, pad: 6pt)[Corrective maintenance addresses an existing defect.]

#sol-item(13, "B", dense: true, pad: 6pt)[Adaptive maintenance responds to a changed environment or requirement.]

#sol-item(14, "D", dense: true, pad: 6pt)[User documentation helps people operate the system.]

#sol-item(15, "D", dense: true, pad: 6pt)[Technical documentation supports development and maintenance.]

#sol-item(16, "B", dense: true, pad: 6pt)[Real projects can revisit earlier activities when they discover problems.]

#sol-item(17, "C", dense: true, pad: 6pt)[Sixty-five is inside the valid range.]

#sol-item(18, "A", dense: true, pad: 6pt)[Zero is the included lower endpoint.]

#sol-item(19, "D", dense: true, pad: 6pt)[One hundred is the included upper endpoint.]

#sol-item(20, "B", dense: true, pad: 6pt)[Negative one lies just below the lower boundary.]

#sol-item(21, "C", dense: true, pad: 6pt)[One hundred and one lies just above the upper boundary.]

#sol-item(22, "C", dense: true, pad: 6pt)[A non-numeric value violates an integer input requirement.]

#sol-item(23, "C", dense: true, pad: 6pt)[An expected outcome is needed to judge observed behaviour.]

#sol-item(24, "C", dense: true, pad: 6pt)[The test should check the specified rejection of out-of-range input.]

#sol-item(25, "A", dense: true, pad: 6pt)[A mismatch requires investigation of the implementation and expectation.]

#sol-item(26, "B", dense: true, pad: 6pt)[Testing provides evidence but cannot by itself establish that every defect is absent.]

#sol-item(27, "A", dense: true, pad: 6pt)[A boundary test checks behaviour at or near an allowed limit.]

#sol-item(28, "B", dense: true, pad: 6pt)[The included endpoints are 1 and 10.]

#sol-item(29, "D", dense: true, pad: 6pt)[Zero and eleven are just outside the valid endpoints.]

#sol-item(30, "C", dense: true, pad: 6pt)[Maintenance can improve or extend functionality after deployment.]

#sol-item(31, "A", dense: true, pad: 6pt)[Training helps users perform tasks in the deployed system.]

#sol-item(32, "D", dense: true, pad: 6pt)[Data migration transfers existing data into the new environment.]

#sol-item(33, "A", dense: true, pad: 6pt)[Access needs and safeguards should be considered when defining and designing the system.]

#sol-item(34, "C", dense: true, pad: 6pt)[Recording attendance states a function; the others are constraints.]

#sol-item(35, "D", dense: true, pad: 6pt)[A response-time target is a performance constraint.]

#sol-item(36, "A", dense: true, pad: 6pt)[Boundary and invalid tests can expose faults normal examples do not.]

#sol-item(37, "A", dense: true, pad: 6pt)[Expected behaviour should be defined from the requirements.]

#sol-item(38, "B", dense: true, pad: 6pt)[Technical documentation assists those developing and maintaining the system.]

#sol-item(39, "C", dense: true, pad: 6pt)[Iteration uses feedback to revisit and refine earlier work.]

#sol-item(40, "B", dense: true, pad: 6pt)[The simplified model progresses from needs to a solution and tests, with possible feedback.]
