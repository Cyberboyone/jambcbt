"""Original master-bank questions; first choice is correct. Fifteen per chapter."""

def parse(text):
    rows = []
    for line in text.strip().splitlines():
        stem, answer, a, b, c, why = line.split('|')
        rows.append((stem, (answer, a, b, c), why))
    return rows


def numeric(stem, result, distractors, why):
    choices = tuple(str(x) for x in (result, *distractors))
    if len(set(choices)) != 4:
        raise ValueError(f'Non-distinct choices: {stem}')
    return (stem, choices, why)


BANK = {i: [] for i in range(1, 9)}
# Five tracing examples each for sums, inclusive counts and strict comparisons.
for n in (11, 12, 13, 14, 15):
    BANK[1].append(numeric(f'A running total starts at {n} and then adds 3. What is the final total?',
                           n+3, (n, n+2, n+4), f'{n} + 3 = {n+3}.'))
for n in (5, 6, 7, 8, 9):
    BANK[1].append(numeric(f'A loop prints integers from 1 through {n}, inclusive. How many values does it print?',
                           n, (n-1, n+1, n+2), f'The values 1 through {n} contain {n} integers.'))
for n in (20, 30, 40, 60, 70):
    BANK[1].append((f'The condition score > {n} is tested with score = {n}. What is the result?',
                    ('false', 'true', 'always a runtime error', 'a printed file'),
                    f'The value equals {n}; strict greater-than is therefore false.'))
for x in (11, 12, 13, 14, 15):
    BANK[2].append(numeric(f'In the given pseudocode, x starts at {x} and is set to x + 4. What is x?',
                           x+4, (x, x+3, x+5), f'The previous value {x} plus 4 gives {x+4}.'))
for x in (21, 22, 23, 24, 25):
    BANK[2].append(numeric(f'In the given pseudocode, y starts at {x} and is set to y - 3. What is y?',
                           x-3, (x, x-2, x-4), f'The previous value {x} minus 3 gives {x-3}.'))
for x in (3, 4, 5, 6, 7):
    BANK[2].append(numeric(f'Using ordinary arithmetic precedence, what is 2 + {x} × 3?',
                           2+x*3, ((2+x)*3, 2+x*3+1, 2+x*3-1),
                           f'Multiply {x} by 3 first, then add 2 to get {2+x*3}.'))
for a,b in ((2,12),(4,14),(6,16),(8,18),(10,20)):
    BANK[3].append((f'A valid integer input is from {a} to {b} inclusive. Which pair gives both valid boundaries?',
                    (f'{a} and {b}',f'{a-1} and {b+1}',f'{a+1} and {b-1}',f'{a+2} and {b-2}'),
                    f'The inclusive endpoints are {a} and {b}.'))
for a,b in ((3,13),(5,15),(7,17),(9,19),(11,21)):
    BANK[3].append((f'For the inclusive range {a} to {b}, which pair lies immediately outside the range?',
                    (f'{a-1} and {b+1}',f'{a} and {b}',f'{a+1} and {b-1}',f'{a+2} and {b-2}'),
                    f'One below {a} is {a-1}; one above {b} is {b+1}.'))
for a,b in ((4,20),(5,25),(6,30),(7,35),(8,40)):
    BANK[3].append(numeric(f'A valid integer range is {a} through {b}, inclusive. What is its upper boundary?',
                           b,(b-1,b+1,a),f'The upper inclusive endpoint is {b}.'))
for total in (20, 40, 60):
    for percent in (45, 55, 65, 85, 95):
        correct = total*percent//100
        BANK[4].append((f'A model correctly labels {correct} of {total} test cases. What is its accuracy on that set?',
                        (f'{percent}%', f'{percent-5}%', f'{percent+5}%', f'{100-percent}%'),
                        f'{correct} ÷ {total} × 100 = {percent}%.'))
# Each percent above gives an integer count for totals 20, 40 and 60.
BANK[5] = parse('''
A robot measures the distance to a wall. Which component provides that measurement?|distance sensor|motor only|file extension|licence|A distance sensor supplies a measurement of distance.
A robot receives a command to turn a wheel. Which component produces the motion?|motor acting as an actuator|the written user manual|a file title|a screen caption|The motor is an actuator that produces physical movement.
A robot interprets sensor inputs and decides whether to stop. Which component performs the control logic?|controller|paper tray|web address|printer cable|A controller processes inputs and directs actions.
A machine follows programmed physical movements without learning. Which statement is correct?|it can still be a robot|it must be a human|it cannot move|it necessarily uses machine learning|Robots may follow fixed instructions without machine learning.
A text classifier operates without moving a physical device. It can be|an AI application without being a physical robot|only a mechanical robot|necessarily a motor|a power socket|AI software need not control a robot.
A robot's camera supplies a photograph. What is needed to turn the photograph into an object label?|suitable image processing|only the camera's physical presence|a file rename alone|a larger paper tray|Capturing and interpreting an image are different operations.
A motor runs for ten seconds without measuring its effect. This is a simple example of|open-loop control|closed-loop position feedback|encryption|a flowchart symbol|The control action does not use measured outcome feedback.
A controller adjusts a motor after reading its actual position. This illustrates|closed-loop feedback control|a paper backup|a file extension|an unpowered desk|The controller uses measured outcome information to adjust action.
What is the primary role of a robot's power supply?|provide energy|establish legal authorisation|guarantee every sensor is accurate|make testing unnecessary|A power supply provides energy to components.
A controller turns a heater on when the measured value is below 22. At exactly 22 the condition is|false|true|a filename|a printer|Strictly below 22 excludes the boundary 22.
A controller turns a heater on when the measured value is at most 22. At exactly 22 the condition is|true|false|a file|a network address|At most includes the boundary value.
A robot operating near people may need|guards and an appropriate emergency stop|an assumption that it cannot fail|removal of all maintenance|unrestricted entry into hazards|Safety measures depend on the system and may include guards and emergency stops.
An inaccurate sensor reading may cause|an unsuitable response unless the design handles the fault|automatic proof of correctness|guaranteed prevention of accidents|the robot to become conscious|Faulty sensor data can lead to an incorrect response.
A warehouse vehicle designed to move stock demonstrates|a practical robotics application|a character encoding|a copyright licence|a document title|Robotic vehicles can transport items in warehouses.
Why is maintenance relevant to a robot?|its physical parts or software can develop faults|all robots are incapable of wear|sensors are guaranteed perfect|maintenance applies only to paper|Robots can experience physical and software faults.
''')
BANK[6] = parse('''
A student record is read by an unauthorised person. Which security goal is directly affected?|confidentiality|screen brightness|paper size|font colour|Unauthorised disclosure affects confidentiality.
A stored mark is altered without authorisation. Which goal is directly affected?|integrity|desk height|printer ink colour|screen resolution|Improper alteration affects integrity.
A service is inaccessible to authorised staff when needed. Which goal is directly affected?|availability|keyboard layout|paper weight|mouse colour|Availability concerns timely authorised access.
An exploitable weakness in a program is a|vulnerability|backup|printed report|privacy notice|A vulnerability is a weakness that could be exploited.
A potential cause of harm to an information system is a|threat|monitor size|page margin|document title|A threat is a potential cause of harm.
An email pretends to be a bank and asks for a password. This may be|phishing|a processor register|a flowchart symbol|a UPS|Phishing can use impersonation to obtain information or induce unsafe action.
A message asks for a one-time code. What is the safer response?|keep it private and verify via a known official channel|send it immediately|publish it in a group|disable authentication|Do not disclose one-time codes to unexpected requesters; verify independently.
A password and an appropriate separate possession factor can provide|multi-factor authentication|file compression|screen calibration|physical printing|Different factor types can form multi-factor authentication.
Why are two passwords not automatically two factors?|both can be knowledge factors|both are always biometric|both are backups|both are motors|Multiple passwords may belong to the same factor category.
A separate copy of important files can assist recovery after loss. It is a|backup|bus address|printer driver|display pixel|A backup is a separate recoverable copy.
What verifies that a backup can actually be used?|a restoration test|only changing its filename|assuming the copy is sound|deleting the original|Restoration testing checks that data can be recovered.
A security update obtained from a trusted source can|address a known vulnerability|guarantee that all risks disappear|replace every backup|make privacy irrelevant|A patch may fix known weaknesses but cannot eliminate every risk.
Encryption requires careful protection of|the relevant keys|only screen colour|only paper size|only a desk surface|Key protection is essential to effective encryption.
Which action is appropriate for a suspected incident?|follow the authorised reporting procedure|access another account without permission|share all passwords|ignore every warning|Follow organisational procedures and remain within authorisation.
Why use fictional data in a public classroom demonstration?|to avoid unnecessary exposure of real personal records|because all fictional data are legally official|to remove the need to test|to make passwords public|Fictional data can support practice without exposing real records.
''')
BANK[7] = parse('''
A web page can be viewed without a password. Does that alone permit all copying and redistribution?|no, permission and licence conditions must be checked|yes, technical access always grants every right|yes, all web pages are public domain|yes, attribution grants unlimited rights|Technical access does not automatically grant reuse rights.
Giving credit to an author is called|attribution|encryption|authentication|compilation|Attribution acknowledges a source.
Does attribution alone necessarily grant permission to reuse a protected work?|no, required permission may still be needed|yes, credit always waives every right|yes, all licences disappear|yes, a file becomes hardware|Acknowledgement and permission are separate considerations.
Presenting another person's work as one's own without appropriate acknowledgement is|plagiarism|a backup|an access point|a trace table|Plagiarism misrepresents another person's work or ideas.
A free software download may still be|subject to licence conditions|free of every restriction automatically|without an author by definition|a hardware component|Zero price does not eliminate licence conditions.
An image licence should be checked to learn|permitted uses and conditions|the processor's clock rate|the monitor's height|the number of keyboard keys|A licence states the conditions governing use.
What does keyboard navigation help support?|accessibility|power regulation|disk repair|magnetic storage|Keyboard access can support users who cannot use a mouse.
Meaningful alternative text can help communicate|information conveyed by an image|a battery's electrical charge|a CPU's physical size|a printer's paper count|Alternative text can convey image information to users who need it.
Why is one accessibility feature not a complete guarantee?|users have varied needs and services require appropriate evaluation|one feature always solves every barrier|testing is never useful|accessibility concerns only colour|Different users and tasks require different accessibility considerations.
Unequal access to connectivity, devices or skills is called|the digital divide|the instruction cycle|the print queue|the address bus|The digital divide concerns unequal access and ability to use technology.
Why might providing devices not eliminate the digital divide?|connectivity, power or skills barriers may remain|devices guarantee equal access in every setting|electricity is never needed|people never need support|Barriers can include cost, connectivity, electricity and skills.
Before publishing an identifiable photograph of a student, a person should consider|authorisation, context and possible harm|only the image's filename|only the monitor colour|only the number of pixels|Responsible sharing includes permission, context and possible harm.
Why can deleting a message from one account fail to remove it everywhere?|other recipients or systems may retain copies|deletion changes every device instantly|messages cannot be saved|a message is a motor|Copies may remain elsewhere after deletion from one account.
A user finds another person's account open. What is responsible?|avoid private content and report it appropriately|copy private messages|change the account password|publish the files|An unlocked account does not confer permission to inspect or change it.
A consequential automated decision benefits from|evaluation, meaningful oversight and a way to challenge errors|assuming every output is correct|ignoring affected people|publishing all personal data|Safeguards depend on context and can include oversight and review.
''')
BANK[8] = parse('''
A team needs a person to write and test application code. Which role is most directly relevant?|software developer|printer cartridge|monitor stand|paper clip|Software developers commonly design, write and test code.
A school needs help maintaining its network infrastructure. Which role is most relevant?|network specialist|document title|paper tray|screen pixel|Network specialists support network infrastructure.
A team needs someone to investigate user needs and document requirements. Which role fits?|systems analyst|printer roller|USB cable|desktop wallpaper|A systems analyst helps investigate needs and define requirements.
A person examining data and communicating a finding may work as a|data analyst|power cord|mouse mat|paper folder|Data analysts examine data and communicate results.
A person helping identify barriers to a digital service may work in|accessibility|printer manufacturing only|screen packaging|desk assembly|Accessibility work helps identify and address barriers to use.
Which statement about computing job titles is accurate?|responsibilities can vary and overlap|every title grants unlimited system access|all jobs have identical duties|a title replaces authorisation|Job titles describe typical work but responsibilities vary.
Why does a project team gather requirements?|to understand the behaviour and constraints users need|to guarantee no later change|to replace all testing|to avoid communication|Requirements describe the needed system and its constraints.
Why should a developer write an expected result before testing?|to compare observed behaviour with intended behaviour|to guarantee the observed result is correct|to hide errors|to avoid recording inputs|Testing compares actual results with an independently specified expectation.
A team tests the endpoint of an accepted input range. This is|boundary testing|unauthorised access|a physical actuator|a software licence|A boundary test checks the edge of a specified range.
A running program calculates an incorrect total because its formula is wrong. This is a|logic error|printer tray|power cable|data centre building|An incorrect formula can cause a logic error even when a program runs.
An attendance project handles personal records. Which consideration is appropriate?|limit access and follow applicable privacy rules|publish all passwords|assume all staff may view everything|ignore authorisation|Personal records require suitable access controls and handling.
Why is a tested backup useful to a project?|it supports recovery of data if the original is lost|it proves no disclosure can occur|it replaces all authentication|it makes testing unnecessary|A separate tested backup supports recovery.
What should a learner check for a specific study programme?|current official institution and examination requirements|an undated rumour only|the computer's case colour|a random filename|Requirements depend on the actual programme and can change.
A project demonstration should communicate|its method, tests and limitations|passwords and private records|only a title and no explanation|a guarantee that no error can occur|Clear documentation supports review of the method and its limitations.
Why should a practitioner keep learning?|tools, threats and requirements can change|all technology remains unchanged|documentation is unnecessary|a job title guarantees permanent knowledge|Continuing learning helps practitioners adapt to change.
''')
