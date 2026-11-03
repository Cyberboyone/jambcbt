"""Forty original careers and integrated revision questions; first choice is correct."""
RAW = '''
A person who designs, writes and tests software is commonly a|software developer|printer cartridge|paper tray|network cable|A software developer builds and maintains software.
A person supporting network infrastructure is commonly a|network specialist|monitor stand|word-processing document|backup file|Network specialists work with network infrastructure.
A person helping manage data systems is commonly a|database professional|speaker cone|paper clip|printer ribbon|Database professionals help design and manage data systems.
A person assessing and managing security risks may be a|cybersecurity professional|desktop wallpaper|spreadsheet column|power socket|Cybersecurity professionals work to assess and manage security risks.
A person investigating user needs and defining requirements may be a|systems analyst|paper folder|screen cable|printer roller|A systems analyst helps investigate needs and requirements.
A person examining data to answer a question is commonly a|data analyst|monitor frame|power cable|keyboard stand|A data analyst examines data and communicates findings.
A person designing interactions around users' needs may be a|user-experience designer|hard-disk platter|printer ink|router cable|User-experience design focuses on users and their interactions.
A professional helping remove barriers to using a service may specialise in|accessibility|paper binding|battery colour|screen packaging|Accessibility work addresses barriers to use.
Computing job titles|can overlap in responsibilities|guarantee identical tasks in every organisation|always imply unlimited access|replace the need for communication|Actual responsibilities vary and can overlap between roles.
A security role does not automatically grant|unlimited authority to access any system|a need to communicate|a need to follow a policy|a responsibility to work within authorisation|Authority depends on the specific permission and applicable rules.
Why does a software developer need to listen to users?|to understand the problem and requirements|to eliminate all testing|to guarantee no changes are ever needed|to replace documentation|Listening helps ensure the solution addresses the actual need.
Clear documentation helps a team|communicate methods, limitations and maintenance information|guarantee every defect disappears|replace all user involvement|eliminate security requirements|Documentation supports communication and later work.
A small practice project should begin by|stating the problem and desired outcome|publishing real passwords|assuming every input is valid|deleting all test cases|A clear problem statement guides design and testing.
A project test should specify|the input and expected result|only the computer's colour|only the developer's name|no observable outcome|A test compares observed results with an expected result for an input.
A project using student records should consider|access control and applicable privacy requirements|only page colour|only monitor height|only font style|Personal records require appropriate authorisation and safeguards.
A suitable demonstration dataset is|fictional or appropriately authorised data|private passwords from real users|confidential records without permission|unknown leaked credentials|Fictional or authorised data avoids unnecessary privacy risks.
A team identifies who may view an attendance record during|requirements and security planning|only after publishing it publicly|printer maintenance alone|keyboard cleaning only|Access needs should be considered when defining and designing the system.
A test result differs from the expected result. The team should|investigate the mismatch|declare success without checking|delete all evidence|publish private data|A mismatch can indicate a defect or mistaken expectation.
For an inclusive valid range of 10 to 18, which value is the lower boundary?|10|9|11|18|Ten is the included lower endpoint.
For an inclusive valid range of 10 to 18, which value is the upper boundary?|18|19|17|10|Eighteen is the included upper endpoint.
For an inclusive valid range of 10 to 18, which value lies immediately below the range?|9|10|11|18|Nine is just below the lower endpoint.
For an inclusive valid range of 10 to 18, which value lies immediately above the range?|19|18|17|10|Nineteen is just above the upper endpoint.
A developer implements an algorithm after designing it. This is primarily|implementation|a physical printer|a user account password|a network cable|Implementation puts a design into practice.
A team fixes a defect in a deployed attendance system. This is|corrective maintenance|input only|an output device|a printer queue|Corrective maintenance fixes a defect in an existing system.
A team updates a system for a changed operating environment. This is commonly|adaptive maintenance|a flowchart terminator|a paper copy|a monitor stand|Adaptive maintenance responds to changes in the environment or requirements.
A model classifies 18 of 20 cases correctly. Accuracy on that set is|90%|18%|80%|100%|Eighteen divided by twenty is 0.9, or 90%.
A model classifies 8 of 10 cases correctly. Accuracy on that set is|80%|8%|10%|100%|Eight divided by ten is 0.8, or 80%.
A robot sensor reports distance to a controller. The measurement is|input|a physical action by the motor|a paper output necessarily|a software licence|A sensor reading supplies information to the controller.
A motor moves a robot's wheel. The motor serves as an|actuator|email address|file extension|user manual|A motor produces physical action as an actuator.
A private record is disclosed to an unauthorised person. The security goal affected is|confidentiality|screen brightness|printer speed|paper weight|Unauthorised disclosure affects confidentiality.
An unauthorised change to a stored mark affects|integrity|monitor height|keyboard colour|file icon shape|Improper alteration affects data integrity.
A system is unavailable to authorised users when needed. The goal affected is|availability|paper colour|font size|cable length alone|Availability concerns access for authorised users when needed.
A suspicious email requests a password. The recipient should|verify independently and keep the password private|send it immediately|post it to a class group|disable authentication|Unexpected password requests can be phishing and require independent verification.
Using another person's work as one's own without appropriate acknowledgement is|plagiarism|a backup|a network switch|an actuator|Plagiarism misrepresents another person's work or ideas as one's own.
Checking a licence before reuse helps determine|permitted uses and conditions|the CPU clock speed|the monitor's colour|the number of worksheets|A licence sets conditions for permitted use.
An accessible interface may include|keyboard navigation and meaningful alternative text|only a larger power supply|unlimited account access|publishing passwords|Keyboard navigation and alternative text can support accessibility.
Which action best supports continued learning?|practise, review feedback and check current requirements|assume technology never changes|avoid documenting mistakes|copy private data without permission|Practice and current information help develop and maintain skills.
When an exam question specifies a unit convention, a candidate should|apply the stated convention|always substitute an unrelated convention|ignore the units|choose the longest answer|Use the units and conventions supplied by the question.
When a program trace updates a variable, the student should|record its current value after each relevant step|use only the last input|ignore assignment order|assume every condition is true|Tracing changing values helps follow execution accurately.
A useful review of a multiple-choice answer explains|why the chosen option fits and why a strong distractor does not|only the letter without a reason|the colour of the page|the weight of the keyboard|Explaining the reasoning tests understanding beyond memorising a letter.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
