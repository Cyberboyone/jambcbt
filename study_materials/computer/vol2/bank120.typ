#import "template.typ": *

#pagebreak(weak: true)
#current-chapter.update("Appendix B: Master Bank")
= Appendix B — The 120-Question Master Bank

Fifteen original questions per chapter. Chapters 1–4 emphasise tracing, arithmetic, boundary tests and model accuracy; use the drills for broader practice. Attempt each set before checking the key and explanations.

== B.1 Algorithms and flowcharts

#mcq(1, [A running total starts at 11 and then adds 3. What is the final total?], [11], [14], [13], [15])

#mcq(2, [A running total starts at 12 and then adds 3. What is the final total?], [12], [16], [15], [14])

#mcq(3, [A running total starts at 13 and then adds 3. What is the final total?], [13], [15], [16], [17])

#mcq(4, [A running total starts at 14 and then adds 3. What is the final total?], [14], [17], [16], [18])

#mcq(5, [A running total starts at 15 and then adds 3. What is the final total?], [17], [19], [15], [18])

#mcq(6, [A loop prints integers from 1 through 5, inclusive. How many values does it print?], [6], [5], [7], [4])

#mcq(7, [A loop prints integers from 1 through 6, inclusive. How many values does it print?], [6], [8], [7], [5])

#mcq(8, [A loop prints integers from 1 through 7, inclusive. How many values does it print?], [9], [7], [6], [8])

#mcq(9, [A loop prints integers from 1 through 8, inclusive. How many values does it print?], [8], [9], [7], [10])

#mcq(10, [A loop prints integers from 1 through 9, inclusive. How many values does it print?], [10], [8], [11], [9])

#mcq(11, [The condition score > 20 is tested with score = 20. What is the result?], [always a runtime error], [a printed file], [true], [false])

#mcq(12, [The condition score > 30 is tested with score = 30. What is the result?], [true], [always a runtime error], [false], [a printed file])

#mcq(13, [The condition score > 40 is tested with score = 40. What is the result?], [a printed file], [false], [always a runtime error], [true])

#mcq(14, [The condition score > 60 is tested with score = 60. What is the result?], [always a runtime error], [false], [a printed file], [true])

#mcq(15, [The condition score > 70 is tested with score = 70. What is the result?], [always a runtime error], [true], [a printed file], [false])

== B.2 Programming

#mcq(16, [In the given pseudocode, x starts at 11 and is set to x + 4. What is x?], [14], [15], [16], [11])

#mcq(17, [In the given pseudocode, x starts at 12 and is set to x + 4. What is x?], [15], [12], [16], [17])

#mcq(18, [In the given pseudocode, x starts at 13 and is set to x + 4. What is x?], [18], [13], [16], [17])

#mcq(19, [In the given pseudocode, x starts at 14 and is set to x + 4. What is x?], [18], [14], [19], [17])

#mcq(20, [In the given pseudocode, x starts at 15 and is set to x + 4. What is x?], [19], [20], [15], [18])

#mcq(21, [In the given pseudocode, y starts at 21 and is set to y - 3. What is y?], [18], [21], [17], [19])

#mcq(22, [In the given pseudocode, y starts at 22 and is set to y - 3. What is y?], [19], [22], [18], [20])

#mcq(23, [In the given pseudocode, y starts at 23 and is set to y - 3. What is y?], [23], [20], [21], [19])

#mcq(24, [In the given pseudocode, y starts at 24 and is set to y - 3. What is y?], [20], [21], [24], [22])

#mcq(25, [In the given pseudocode, y starts at 25 and is set to y - 3. What is y?], [23], [21], [25], [22])

#mcq(26, [Using ordinary arithmetic precedence, what is 2 + 3 × 3?], [11], [15], [12], [10])

#mcq(27, [Using ordinary arithmetic precedence, what is 2 + 4 × 3?], [13], [15], [14], [18])

#mcq(28, [Using ordinary arithmetic precedence, what is 2 + 5 × 3?], [21], [18], [17], [16])

#mcq(29, [Using ordinary arithmetic precedence, what is 2 + 6 × 3?], [21], [24], [19], [20])

#mcq(30, [Using ordinary arithmetic precedence, what is 2 + 7 × 3?], [23], [22], [27], [24])

== B.3 Program development

#mcq(31, [A valid integer input is from 2 to 12 inclusive. Which pair gives both valid boundaries?], [1 and 13], [2 and 12], [4 and 10], [3 and 11])

#mcq(32, [A valid integer input is from 4 to 14 inclusive. Which pair gives both valid boundaries?], [6 and 12], [5 and 13], [3 and 15], [4 and 14])

#mcq(33, [A valid integer input is from 6 to 16 inclusive. Which pair gives both valid boundaries?], [6 and 16], [8 and 14], [7 and 15], [5 and 17])

#mcq(34, [A valid integer input is from 8 to 18 inclusive. Which pair gives both valid boundaries?], [8 and 18], [9 and 17], [7 and 19], [10 and 16])

#mcq(35, [A valid integer input is from 10 to 20 inclusive. Which pair gives both valid boundaries?], [10 and 20], [12 and 18], [9 and 21], [11 and 19])

#mcq(36, [For the inclusive range 3 to 13, which pair lies immediately outside the range?], [3 and 13], [2 and 14], [4 and 12], [5 and 11])

#mcq(37, [For the inclusive range 5 to 15, which pair lies immediately outside the range?], [4 and 16], [7 and 13], [6 and 14], [5 and 15])

#mcq(38, [For the inclusive range 7 to 17, which pair lies immediately outside the range?], [9 and 15], [6 and 18], [8 and 16], [7 and 17])

#mcq(39, [For the inclusive range 9 to 19, which pair lies immediately outside the range?], [9 and 19], [10 and 18], [11 and 17], [8 and 20])

#mcq(40, [For the inclusive range 11 to 21, which pair lies immediately outside the range?], [10 and 22], [11 and 21], [12 and 20], [13 and 19])

#mcq(41, [A valid integer range is 4 through 20, inclusive. What is its upper boundary?], [4], [19], [21], [20])

#mcq(42, [A valid integer range is 5 through 25, inclusive. What is its upper boundary?], [5], [24], [26], [25])

#mcq(43, [A valid integer range is 6 through 30, inclusive. What is its upper boundary?], [6], [31], [29], [30])

#mcq(44, [A valid integer range is 7 through 35, inclusive. What is its upper boundary?], [35], [7], [36], [34])

#mcq(45, [A valid integer range is 8 through 40, inclusive. What is its upper boundary?], [8], [39], [41], [40])

== B.4 Artificial intelligence

#mcq(46, [A model correctly labels 9 of 20 test cases. What is its accuracy on that set?], [50%], [45%], [55%], [40%])

#mcq(47, [A model correctly labels 11 of 20 test cases. What is its accuracy on that set?], [45%], [60%], [50%], [55%])

#mcq(48, [A model correctly labels 13 of 20 test cases. What is its accuracy on that set?], [35%], [70%], [65%], [60%])

#mcq(49, [A model correctly labels 17 of 20 test cases. What is its accuracy on that set?], [90%], [15%], [85%], [80%])

#mcq(50, [A model correctly labels 19 of 20 test cases. What is its accuracy on that set?], [95%], [90%], [5%], [100%])

#mcq(51, [A model correctly labels 18 of 40 test cases. What is its accuracy on that set?], [50%], [40%], [45%], [55%])

#mcq(52, [A model correctly labels 22 of 40 test cases. What is its accuracy on that set?], [50%], [45%], [55%], [60%])

#mcq(53, [A model correctly labels 26 of 40 test cases. What is its accuracy on that set?], [65%], [35%], [60%], [70%])

#mcq(54, [A model correctly labels 34 of 40 test cases. What is its accuracy on that set?], [15%], [85%], [80%], [90%])

#mcq(55, [A model correctly labels 38 of 40 test cases. What is its accuracy on that set?], [90%], [5%], [95%], [100%])

#mcq(56, [A model correctly labels 27 of 60 test cases. What is its accuracy on that set?], [40%], [50%], [55%], [45%])

#mcq(57, [A model correctly labels 33 of 60 test cases. What is its accuracy on that set?], [45%], [50%], [55%], [60%])

#mcq(58, [A model correctly labels 39 of 60 test cases. What is its accuracy on that set?], [65%], [70%], [35%], [60%])

#mcq(59, [A model correctly labels 51 of 60 test cases. What is its accuracy on that set?], [15%], [80%], [85%], [90%])

#mcq(60, [A model correctly labels 57 of 60 test cases. What is its accuracy on that set?], [95%], [90%], [5%], [100%])

== B.5 Robotics

#mcq(61, [A robot measures the distance to a wall. Which component provides that measurement?], [licence], [distance sensor], [motor only], [file extension])

#mcq(62, [A robot receives a command to turn a wheel. Which component produces the motion?], [a screen caption], [a file title], [the written user manual], [motor acting as an actuator])

#mcq(63, [A robot interprets sensor inputs and decides whether to stop. Which component performs the control logic?], [printer cable], [web address], [controller], [paper tray])

#mcq(64, [A machine follows programmed physical movements without learning. Which statement is correct?], [it cannot move], [it can still be a robot], [it must be a human], [it necessarily uses machine learning])

#mcq(65, [A text classifier operates without moving a physical device. It can be], [necessarily a motor], [an AI application without being a physical robot], [a power socket], [only a mechanical robot])

#mcq(66, [A robot's camera supplies a photograph. What is needed to turn the photograph into an object label?], [only the camera's physical presence], [a larger paper tray], [suitable image processing], [a file rename alone])

#mcq(67, [A motor runs for ten seconds without measuring its effect. This is a simple example of], [encryption], [open-loop control], [closed-loop position feedback], [a flowchart symbol])

#mcq(68, [A controller adjusts a motor after reading its actual position. This illustrates], [a file extension], [a paper backup], [closed-loop feedback control], [an unpowered desk])

#mcq(69, [What is the primary role of a robot's power supply?], [guarantee every sensor is accurate], [make testing unnecessary], [provide energy], [establish legal authorisation])

#mcq(70, [A controller turns a heater on when the measured value is below 22. At exactly 22 the condition is], [a printer], [a filename], [true], [false])

#mcq(71, [A controller turns a heater on when the measured value is at most 22. At exactly 22 the condition is], [a file], [a network address], [false], [true])

#mcq(72, [A robot operating near people may need], [removal of all maintenance], [an assumption that it cannot fail], [unrestricted entry into hazards], [guards and an appropriate emergency stop])

#mcq(73, [An inaccurate sensor reading may cause], [guaranteed prevention of accidents], [the robot to become conscious], [automatic proof of correctness], [an unsuitable response unless the design handles the fault])

#mcq(74, [A warehouse vehicle designed to move stock demonstrates], [a document title], [a copyright licence], [a character encoding], [a practical robotics application])

#mcq(75, [Why is maintenance relevant to a robot?], [all robots are incapable of wear], [maintenance applies only to paper], [its physical parts or software can develop faults], [sensors are guaranteed perfect])

== B.6 Cybersecurity

#mcq(76, [A student record is read by an unauthorised person. Which security goal is directly affected?], [screen brightness], [font colour], [confidentiality], [paper size])

#mcq(77, [A stored mark is altered without authorisation. Which goal is directly affected?], [screen resolution], [integrity], [desk height], [printer ink colour])

#mcq(78, [A service is inaccessible to authorised staff when needed. Which goal is directly affected?], [availability], [paper weight], [keyboard layout], [mouse colour])

#mcq(79, [An exploitable weakness in a program is a], [backup], [privacy notice], [printed report], [vulnerability])

#mcq(80, [A potential cause of harm to an information system is a], [threat], [page margin], [monitor size], [document title])

#mcq(81, [An email pretends to be a bank and asks for a password. This may be], [a processor register], [phishing], [a UPS], [a flowchart symbol])

#mcq(82, [A message asks for a one-time code. What is the safer response?], [publish it in a group], [send it immediately], [keep it private and verify via a known official channel], [disable authentication])

#mcq(83, [A password and an appropriate separate possession factor can provide], [multi-factor authentication], [screen calibration], [physical printing], [file compression])

#mcq(84, [Why are two passwords not automatically two factors?], [both are always biometric], [both are motors], [both can be knowledge factors], [both are backups])

#mcq(85, [A separate copy of important files can assist recovery after loss. It is a], [printer driver], [display pixel], [backup], [bus address])

#mcq(86, [What verifies that a backup can actually be used?], [assuming the copy is sound], [deleting the original], [only changing its filename], [a restoration test])

#mcq(87, [A security update obtained from a trusted source can], [guarantee that all risks disappear], [address a known vulnerability], [make privacy irrelevant], [replace every backup])

#mcq(88, [Encryption requires careful protection of], [the relevant keys], [only paper size], [only a desk surface], [only screen colour])

#mcq(89, [Which action is appropriate for a suspected incident?], [share all passwords], [ignore every warning], [access another account without permission], [follow the authorised reporting procedure])

#mcq(90, [Why use fictional data in a public classroom demonstration?], [to avoid unnecessary exposure of real personal records], [to make passwords public], [to remove the need to test], [because all fictional data are legally official])

== B.7 Ethics and human issues

#mcq(91, [A web page can be viewed without a password. Does that alone permit all copying and redistribution?], [yes, technical access always grants every right], [yes, attribution grants unlimited rights], [yes, all web pages are public domain], [no, permission and licence conditions must be checked])

#mcq(92, [Giving credit to an author is called], [compilation], [authentication], [attribution], [encryption])

#mcq(93, [Does attribution alone necessarily grant permission to reuse a protected work?], [yes, credit always waives every right], [yes, all licences disappear], [no, required permission may still be needed], [yes, a file becomes hardware])

#mcq(94, [Presenting another person's work as one's own without appropriate acknowledgement is], [an access point], [plagiarism], [a backup], [a trace table])

#mcq(95, [A free software download may still be], [without an author by definition], [free of every restriction automatically], [subject to licence conditions], [a hardware component])

#mcq(96, [An image licence should be checked to learn], [permitted uses and conditions], [the number of keyboard keys], [the monitor's height], [the processor's clock rate])

#mcq(97, [What does keyboard navigation help support?], [power regulation], [disk repair], [magnetic storage], [accessibility])

#mcq(98, [Meaningful alternative text can help communicate], [information conveyed by an image], [a printer's paper count], [a CPU's physical size], [a battery's electrical charge])

#mcq(99, [Why is one accessibility feature not a complete guarantee?], [testing is never useful], [users have varied needs and services require appropriate evaluation], [accessibility concerns only colour], [one feature always solves every barrier])

#mcq(100, [Unequal access to connectivity, devices or skills is called], [the instruction cycle], [the address bus], [the digital divide], [the print queue])

#mcq(101, [Why might providing devices not eliminate the digital divide?], [electricity is never needed], [devices guarantee equal access in every setting], [connectivity, power or skills barriers may remain], [people never need support])

#mcq(102, [Before publishing an identifiable photograph of a student, a person should consider], [authorisation, context and possible harm], [only the monitor colour], [only the image's filename], [only the number of pixels])

#mcq(103, [Why can deleting a message from one account fail to remove it everywhere?], [deletion changes every device instantly], [messages cannot be saved], [other recipients or systems may retain copies], [a message is a motor])

#mcq(104, [A user finds another person's account open. What is responsible?], [publish the files], [avoid private content and report it appropriately], [copy private messages], [change the account password])

#mcq(105, [A consequential automated decision benefits from], [assuming every output is correct], [ignoring affected people], [evaluation, meaningful oversight and a way to challenge errors], [publishing all personal data])

== B.8 Careers and integrated practice

#mcq(106, [A team needs a person to write and test application code. Which role is most directly relevant?], [printer cartridge], [software developer], [monitor stand], [paper clip])

#mcq(107, [A school needs help maintaining its network infrastructure. Which role is most relevant?], [document title], [network specialist], [screen pixel], [paper tray])

#mcq(108, [A team needs someone to investigate user needs and document requirements. Which role fits?], [desktop wallpaper], [systems analyst], [USB cable], [printer roller])

#mcq(109, [A person examining data and communicating a finding may work as a], [paper folder], [mouse mat], [power cord], [data analyst])

#mcq(110, [A person helping identify barriers to a digital service may work in], [accessibility], [screen packaging], [printer manufacturing only], [desk assembly])

#mcq(111, [Which statement about computing job titles is accurate?], [responsibilities can vary and overlap], [all jobs have identical duties], [every title grants unlimited system access], [a title replaces authorisation])

#mcq(112, [Why does a project team gather requirements?], [to understand the behaviour and constraints users need], [to avoid communication], [to replace all testing], [to guarantee no later change])

#mcq(113, [Why should a developer write an expected result before testing?], [to guarantee the observed result is correct], [to hide errors], [to avoid recording inputs], [to compare observed behaviour with intended behaviour])

#mcq(114, [A team tests the endpoint of an accepted input range. This is], [unauthorised access], [boundary testing], [a physical actuator], [a software licence])

#mcq(115, [A running program calculates an incorrect total because its formula is wrong. This is a], [data centre building], [power cable], [printer tray], [logic error])

#mcq(116, [An attendance project handles personal records. Which consideration is appropriate?], [assume all staff may view everything], [limit access and follow applicable privacy rules], [publish all passwords], [ignore authorisation])

#mcq(117, [Why is a tested backup useful to a project?], [it supports recovery of data if the original is lost], [it makes testing unnecessary], [it proves no disclosure can occur], [it replaces all authentication])

#mcq(118, [What should a learner check for a specific study programme?], [an undated rumour only], [a random filename], [the computer's case colour], [current official institution and examination requirements])

#mcq(119, [A project demonstration should communicate], [a guarantee that no error can occur], [its method, tests and limitations], [passwords and private records], [only a title and no explanation])

#mcq(120, [Why should a practitioner keep learning?], [all technology remains unchanged], [a job title guarantees permanent knowledge], [tools, threats and requirements can change], [documentation is unnecessary])

#shortcut-box("Before checking your answers")[
  + Record the question numbers you were uncertain about, not only the questions you left unanswered.
  + Mark each chapter block separately; fifteen questions form one chapter block.
  + Read the explanations for correct answers too, then revisit the teaching section for any weak idea.
  + For calculations, write the units and check the conversion convention before comparing answers.
  + Return to the glossary if a term is unfamiliar; use the comparison tables when two options seem similar.
  + For AI questions distinguish evidence from a guarantee, and consider the evaluation data.
  + Repeat the set later without consulting the key and compare the reasons for your choices.
  + Do not rely on a familiar keyword alone; identify exactly what the question is asking.
  + Separate a calculation error from a misunderstanding of the concept when recording mistakes.
]

== B.9 Master Bank Answer Key

#answer-key-grid(("B", "C", "C", "B", "D", "B", "A", "B", "A", "D", "D", "C", "B", "B", "D", "B", "C", "D", "A", "A", "A", "A", "B", "B", "D", "A", "C", "C", "D", "A", "B", "D", "A", "A", "A", "B", "A", "B", "D", "A", "D", "D", "D", "A", "D", "B", "D", "C", "C", "A", "C", "C", "A", "B", "C", "D", "C", "A", "C", "A", "B", "D", "C", "B", "B", "C", "B", "C", "C", "D", "D", "D", "D", "D", "C", "C", "B", "A", "D", "A", "B", "C", "A", "C", "C", "D", "B", "A", "D", "A", "D", "C", "C", "B", "C", "A", "D", "A", "B", "C", "C", "A", "C", "B", "C", "B", "B", "B", "D", "A", "A", "A", "D", "B", "D", "B", "A", "D", "B", "C",))

== B.10 Master Bank Explanations

#sol-item(1, "B", dense: true, pad: 7pt)[11 + 3 = 14.]

#sol-item(2, "C", dense: true, pad: 7pt)[12 + 3 = 15.]

#sol-item(3, "C", dense: true, pad: 7pt)[13 + 3 = 16.]

#sol-item(4, "B", dense: true, pad: 7pt)[14 + 3 = 17.]

#sol-item(5, "D", dense: true, pad: 7pt)[15 + 3 = 18.]

#sol-item(6, "B", dense: true, pad: 7pt)[The values 1 through 5 contain 5 integers.]

#sol-item(7, "A", dense: true, pad: 7pt)[The values 1 through 6 contain 6 integers.]

#sol-item(8, "B", dense: true, pad: 7pt)[The values 1 through 7 contain 7 integers.]

#sol-item(9, "A", dense: true, pad: 7pt)[The values 1 through 8 contain 8 integers.]

#sol-item(10, "D", dense: true, pad: 7pt)[The values 1 through 9 contain 9 integers.]

#sol-item(11, "D", dense: true, pad: 7pt)[The value equals 20; strict greater-than is therefore false.]

#sol-item(12, "C", dense: true, pad: 7pt)[The value equals 30; strict greater-than is therefore false.]

#sol-item(13, "B", dense: true, pad: 7pt)[The value equals 40; strict greater-than is therefore false.]

#sol-item(14, "B", dense: true, pad: 7pt)[The value equals 60; strict greater-than is therefore false.]

#sol-item(15, "D", dense: true, pad: 7pt)[The value equals 70; strict greater-than is therefore false.]

#sol-item(16, "B", dense: true, pad: 7pt)[The previous value 11 plus 4 gives 15.]

#sol-item(17, "C", dense: true, pad: 7pt)[The previous value 12 plus 4 gives 16.]

#sol-item(18, "D", dense: true, pad: 7pt)[The previous value 13 plus 4 gives 17.]

#sol-item(19, "A", dense: true, pad: 7pt)[The previous value 14 plus 4 gives 18.]

#sol-item(20, "A", dense: true, pad: 7pt)[The previous value 15 plus 4 gives 19.]

#sol-item(21, "A", dense: true, pad: 7pt)[The previous value 21 minus 3 gives 18.]

#sol-item(22, "A", dense: true, pad: 7pt)[The previous value 22 minus 3 gives 19.]

#sol-item(23, "B", dense: true, pad: 7pt)[The previous value 23 minus 3 gives 20.]

#sol-item(24, "B", dense: true, pad: 7pt)[The previous value 24 minus 3 gives 21.]

#sol-item(25, "D", dense: true, pad: 7pt)[The previous value 25 minus 3 gives 22.]

#sol-item(26, "A", dense: true, pad: 7pt)[Multiply 3 by 3 first, then add 2 to get 11.]

#sol-item(27, "C", dense: true, pad: 7pt)[Multiply 4 by 3 first, then add 2 to get 14.]

#sol-item(28, "C", dense: true, pad: 7pt)[Multiply 5 by 3 first, then add 2 to get 17.]

#sol-item(29, "D", dense: true, pad: 7pt)[Multiply 6 by 3 first, then add 2 to get 20.]

#sol-item(30, "A", dense: true, pad: 7pt)[Multiply 7 by 3 first, then add 2 to get 23.]

#sol-item(31, "B", dense: true, pad: 7pt)[The inclusive endpoints are 2 and 12.]

#sol-item(32, "D", dense: true, pad: 7pt)[The inclusive endpoints are 4 and 14.]

#sol-item(33, "A", dense: true, pad: 7pt)[The inclusive endpoints are 6 and 16.]

#sol-item(34, "A", dense: true, pad: 7pt)[The inclusive endpoints are 8 and 18.]

#sol-item(35, "A", dense: true, pad: 7pt)[The inclusive endpoints are 10 and 20.]

#sol-item(36, "B", dense: true, pad: 7pt)[One below 3 is 2; one above 13 is 14.]

#sol-item(37, "A", dense: true, pad: 7pt)[One below 5 is 4; one above 15 is 16.]

#sol-item(38, "B", dense: true, pad: 7pt)[One below 7 is 6; one above 17 is 18.]

#sol-item(39, "D", dense: true, pad: 7pt)[One below 9 is 8; one above 19 is 20.]

#sol-item(40, "A", dense: true, pad: 7pt)[One below 11 is 10; one above 21 is 22.]

#sol-item(41, "D", dense: true, pad: 7pt)[The upper inclusive endpoint is 20.]

#sol-item(42, "D", dense: true, pad: 7pt)[The upper inclusive endpoint is 25.]

#sol-item(43, "D", dense: true, pad: 7pt)[The upper inclusive endpoint is 30.]

#sol-item(44, "A", dense: true, pad: 7pt)[The upper inclusive endpoint is 35.]

#sol-item(45, "D", dense: true, pad: 7pt)[The upper inclusive endpoint is 40.]

#sol-item(46, "B", dense: true, pad: 7pt)[9 ÷ 20 × 100 = 45%.]

#sol-item(47, "D", dense: true, pad: 7pt)[11 ÷ 20 × 100 = 55%.]

#sol-item(48, "C", dense: true, pad: 7pt)[13 ÷ 20 × 100 = 65%.]

#sol-item(49, "C", dense: true, pad: 7pt)[17 ÷ 20 × 100 = 85%.]

#sol-item(50, "A", dense: true, pad: 7pt)[19 ÷ 20 × 100 = 95%.]

#sol-item(51, "C", dense: true, pad: 7pt)[18 ÷ 40 × 100 = 45%.]

#sol-item(52, "C", dense: true, pad: 7pt)[22 ÷ 40 × 100 = 55%.]

#sol-item(53, "A", dense: true, pad: 7pt)[26 ÷ 40 × 100 = 65%.]

#sol-item(54, "B", dense: true, pad: 7pt)[34 ÷ 40 × 100 = 85%.]

#sol-item(55, "C", dense: true, pad: 7pt)[38 ÷ 40 × 100 = 95%.]

#sol-item(56, "D", dense: true, pad: 7pt)[27 ÷ 60 × 100 = 45%.]

#sol-item(57, "C", dense: true, pad: 7pt)[33 ÷ 60 × 100 = 55%.]

#sol-item(58, "A", dense: true, pad: 7pt)[39 ÷ 60 × 100 = 65%.]

#sol-item(59, "C", dense: true, pad: 7pt)[51 ÷ 60 × 100 = 85%.]

#sol-item(60, "A", dense: true, pad: 7pt)[57 ÷ 60 × 100 = 95%.]

#sol-item(61, "B", dense: true, pad: 7pt)[A distance sensor supplies a measurement of distance.]

#sol-item(62, "D", dense: true, pad: 7pt)[The motor is an actuator that produces physical movement.]

#sol-item(63, "C", dense: true, pad: 7pt)[A controller processes inputs and directs actions.]

#sol-item(64, "B", dense: true, pad: 7pt)[Robots may follow fixed instructions without machine learning.]

#sol-item(65, "B", dense: true, pad: 7pt)[AI software need not control a robot.]

#sol-item(66, "C", dense: true, pad: 7pt)[Capturing and interpreting an image are different operations.]

#sol-item(67, "B", dense: true, pad: 7pt)[The control action does not use measured outcome feedback.]

#sol-item(68, "C", dense: true, pad: 7pt)[The controller uses measured outcome information to adjust action.]

#sol-item(69, "C", dense: true, pad: 7pt)[A power supply provides energy to components.]

#sol-item(70, "D", dense: true, pad: 7pt)[Strictly below 22 excludes the boundary 22.]

#sol-item(71, "D", dense: true, pad: 7pt)[At most includes the boundary value.]

#sol-item(72, "D", dense: true, pad: 7pt)[Safety measures depend on the system and may include guards and emergency stops.]

#sol-item(73, "D", dense: true, pad: 7pt)[Faulty sensor data can lead to an incorrect response.]

#sol-item(74, "D", dense: true, pad: 7pt)[Robotic vehicles can transport items in warehouses.]

#sol-item(75, "C", dense: true, pad: 7pt)[Robots can experience physical and software faults.]

#sol-item(76, "C", dense: true, pad: 7pt)[Unauthorised disclosure affects confidentiality.]

#sol-item(77, "B", dense: true, pad: 7pt)[Improper alteration affects integrity.]

#sol-item(78, "A", dense: true, pad: 7pt)[Availability concerns timely authorised access.]

#sol-item(79, "D", dense: true, pad: 7pt)[A vulnerability is a weakness that could be exploited.]

#sol-item(80, "A", dense: true, pad: 7pt)[A threat is a potential cause of harm.]

#sol-item(81, "B", dense: true, pad: 7pt)[Phishing can use impersonation to obtain information or induce unsafe action.]

#sol-item(82, "C", dense: true, pad: 7pt)[Do not disclose one-time codes to unexpected requesters; verify independently.]

#sol-item(83, "A", dense: true, pad: 7pt)[Different factor types can form multi-factor authentication.]

#sol-item(84, "C", dense: true, pad: 7pt)[Multiple passwords may belong to the same factor category.]

#sol-item(85, "C", dense: true, pad: 7pt)[A backup is a separate recoverable copy.]

#sol-item(86, "D", dense: true, pad: 7pt)[Restoration testing checks that data can be recovered.]

#sol-item(87, "B", dense: true, pad: 7pt)[A patch may fix known weaknesses but cannot eliminate every risk.]

#sol-item(88, "A", dense: true, pad: 7pt)[Key protection is essential to effective encryption.]

#sol-item(89, "D", dense: true, pad: 7pt)[Follow organisational procedures and remain within authorisation.]

#sol-item(90, "A", dense: true, pad: 7pt)[Fictional data can support practice without exposing real records.]

#sol-item(91, "D", dense: true, pad: 7pt)[Technical access does not automatically grant reuse rights.]

#sol-item(92, "C", dense: true, pad: 7pt)[Attribution acknowledges a source.]

#sol-item(93, "C", dense: true, pad: 7pt)[Acknowledgement and permission are separate considerations.]

#sol-item(94, "B", dense: true, pad: 7pt)[Plagiarism misrepresents another person's work or ideas.]

#sol-item(95, "C", dense: true, pad: 7pt)[Zero price does not eliminate licence conditions.]

#sol-item(96, "A", dense: true, pad: 7pt)[A licence states the conditions governing use.]

#sol-item(97, "D", dense: true, pad: 7pt)[Keyboard access can support users who cannot use a mouse.]

#sol-item(98, "A", dense: true, pad: 7pt)[Alternative text can convey image information to users who need it.]

#sol-item(99, "B", dense: true, pad: 7pt)[Different users and tasks require different accessibility considerations.]

#sol-item(100, "C", dense: true, pad: 7pt)[The digital divide concerns unequal access and ability to use technology.]

#sol-item(101, "C", dense: true, pad: 7pt)[Barriers can include cost, connectivity, electricity and skills.]

#sol-item(102, "A", dense: true, pad: 7pt)[Responsible sharing includes permission, context and possible harm.]

#sol-item(103, "C", dense: true, pad: 7pt)[Copies may remain elsewhere after deletion from one account.]

#sol-item(104, "B", dense: true, pad: 7pt)[An unlocked account does not confer permission to inspect or change it.]

#sol-item(105, "C", dense: true, pad: 7pt)[Safeguards depend on context and can include oversight and review.]

#sol-item(106, "B", dense: true, pad: 7pt)[Software developers commonly design, write and test code.]

#sol-item(107, "B", dense: true, pad: 7pt)[Network specialists support network infrastructure.]

#sol-item(108, "B", dense: true, pad: 7pt)[A systems analyst helps investigate needs and define requirements.]

#sol-item(109, "D", dense: true, pad: 7pt)[Data analysts examine data and communicate results.]

#sol-item(110, "A", dense: true, pad: 7pt)[Accessibility work helps identify and address barriers to use.]

#sol-item(111, "A", dense: true, pad: 7pt)[Job titles describe typical work but responsibilities vary.]

#sol-item(112, "A", dense: true, pad: 7pt)[Requirements describe the needed system and its constraints.]

#sol-item(113, "D", dense: true, pad: 7pt)[Testing compares actual results with an independently specified expectation.]

#sol-item(114, "B", dense: true, pad: 7pt)[A boundary test checks the edge of a specified range.]

#sol-item(115, "D", dense: true, pad: 7pt)[An incorrect formula can cause a logic error even when a program runs.]

#sol-item(116, "B", dense: true, pad: 7pt)[Personal records require suitable access controls and handling.]

#sol-item(117, "A", dense: true, pad: 7pt)[A separate tested backup supports recovery.]

#sol-item(118, "D", dense: true, pad: 7pt)[Requirements depend on the actual programme and can change.]

#sol-item(119, "B", dense: true, pad: 7pt)[Clear documentation supports review of the method and its limitations.]

#sol-item(120, "C", dense: true, pad: 7pt)[Continuing learning helps practitioners adapt to change.]
