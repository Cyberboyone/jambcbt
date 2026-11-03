"""Second original mixed timed practice paper; the first option is correct."""
RAW = '''
A finite sequence of clear steps for solving a problem is an|algorithm|actuator|printer cable|copyright notice|An algorithm describes ordered steps for solving a problem.
Which flowchart symbol commonly represents a processing operation?|rectangle|diamond|speaker|paper tray|A rectangle conventionally represents a process.
A flowchart arrow indicates|control-flow direction|the computer's colour|the user's salary|the number of keys|Arrows indicate the direction of control flow.
The condition mark > 50 is false when mark is|50|51|60|75|Strictly greater than 50 excludes the value 50.
A loop starts at 2, prints n while n is less than 4, and increments n by 1. It prints|2 and 3|2, 3 and 4|1 and 2|4 only|The condition is true at 2 and 3 and false at 4.
A sum begins at 0 and receives 6 and then 5. The result is|11|5|1|65|Six plus five equals eleven.
An algorithm should handle invalid input|when the specification requires it|only when it uses a printer|never in a real system|by assuming every input is valid|Invalid-input handling follows the task's specification.
Machine code is|instructions in a form a processor architecture can execute|an output device|an employee's name|a file cabinet|Machine code consists of processor instructions.
An integer type commonly represents|a whole-number value|a physical cable|a human fingerprint only|a printed page|An integer is used for whole-number values.
A variable is set to 9, then decreased by 4. Its new value is|5|9|13|94|Nine minus four is five.
If P is false and Q is false, P OR Q is|false|true|a router|a printer|OR is false when neither condition is true.
NOT true evaluates to|false|true|a string automatically|a power supply|NOT reverses the Boolean value.
A syntax error is associated with|a violation of language grammar|only a wrong result from a valid formula|an access point|a sensor reading|Syntax errors violate language rules for program form.
A tester compares expected and actual results. This activity is|testing|printer manufacture|file renaming|power distribution|Testing compares observed behaviour against the expected result.
A system is changed to operate in a new environment. This is commonly|adaptive maintenance|a flowchart terminator|a paper copy|an output port|Adaptive maintenance responds to changed conditions.
User documentation primarily helps people|perform tasks using the system|manufacture processors|replace every security control|avoid all training|User documentation describes how to use the system.
For valid integer input from 0 through 100, the pair of included endpoints is|0 and 100|-1 and 101|1 and 99|50 and 75|Zero and one hundred are the inclusive endpoints.
A separate evaluation set helps assess a model's|performance on suitable cases not used to fit it|guaranteed universal fairness|physical weight only|printer compatibility only|Separate evaluation provides evidence about performance on new cases.
A model correctly classifies 9 of 10 examples. Accuracy on that test set is|90%|9%|10%|100%|Nine divided by ten is 0.9, or 90%.
An AI-generated answer sounds plausible. For an important decision, it should be|checked against reliable sources|assumed correct solely because it is fluent|treated as official by default|shared with passwords|Plausible output can still be incorrect.
A model tested on an unrepresentative group may|perform differently for intended users not represented|be proved perfect for all users|eliminate all privacy risks|automatically fix its training data|A narrow evaluation can miss differences in performance.
A robot's temperature sensor supplies|input about temperature|wheel motion directly|a software licence|a printed report|The sensor measures a condition for the controller.
A robot gripper is moved by an|actuator|email subject|data label|filename|An actuator produces physical action.
A motor runs for a fixed interval without measuring the outcome. This is an example of|open-loop control|closed-loop position feedback|a character encoding|a backup|The action is not adjusted using measured outcome feedback.
A robot's measured position is used to adjust motor movement. This is|feedback control|paper filing|a compiler error|copyright attribution|The measured outcome informs later control.
Access by authorised users when needed is the security goal of|availability|paper thickness|screen colour|desk height|Availability concerns timely access for authorised users.
A weakness that an attacker could exploit is a|vulnerability|monitor stand|guaranteed defence|file title|A vulnerability is a weakness that can be exploited.
A patch may reduce|a known software vulnerability|every possible risk permanently|the need for all backups|the number of screen pixels|A patch can address a known weakness without eliminating all risk.
A message asks for a one-time code and supplies its own phone number. A safer response is to|keep the code private and verify using an independently known channel|send the code immediately|post the code publicly|disable account security|Independent verification avoids relying on a potentially fraudulent message.
Encryption protects data according to|the scheme and protection of its keys|only the colour of the device|only the length of a filename|whether a printer has paper|Encryption effectiveness depends on the method and key handling.
A tested backup primarily helps|recover data after loss or damage|prove that disclosure is impossible|replace all passwords|guarantee no malicious software|A separate recoverable backup supports restoration.
Technical ability to access a database|does not establish authorisation|automatically grants permission to alter it|makes all records public|waives all privacy duties|Access and authorisation are distinct.
Attribution acknowledges a source but|does not always replace required permission|always grants unlimited redistribution rights|eliminates all licence conditions|makes the work hardware|Credit alone does not grant permission where it is required.
Which practice helps users who cannot use a mouse?|keyboard navigation|removing all text labels|publishing passwords|blocking access to instructions|Keyboard access can support users with different needs.
The digital divide can be affected by|connectivity cost and digital skills|only the colour of a device|only one file extension|only an output font|Cost and skills are among barriers to digital access.
A professional who investigates needs and helps define system requirements is commonly a|systems analyst|paper tray|speaker|monitor cable|A systems analyst helps translate needs into requirements.
A person who examines data and communicates findings may be a|data analyst|printer roller|desk lamp|USB connector|A data analyst examines data and explains findings.
A programme that runs but calculates a rectangle's area as length plus width contains principally|a logic error|a physical cable|a display pixel|a paper jam|The formula is wrong although the program may execute.
A learner wants to demonstrate an attendance tool publicly. The responsible data choice is|fictional or appropriately authorised records|real passwords|private records without permission|leaked credentials|Use data that do not unnecessarily expose real people.
A test case should specify both an input and|an expected result|only the developer's name|only a desk colour|no observable outcome|The expected result allows comparison with actual behaviour.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
