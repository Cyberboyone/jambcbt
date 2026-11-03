"""Forty original algorithm and flowchart items; the first choice is correct."""
RAW = '''
A finite, ordered set of unambiguous steps for solving a problem is an|algorithm|actuator|printer|network cable|An algorithm specifies ordered steps for solving a problem.
A structured, human-readable description of algorithm steps is|pseudocode|an SSD|a power cable|a monitor|Pseudocode expresses steps without requiring one language's exact syntax.
A graphical representation of steps and control paths is a|flowchart|spreadsheet cell|password|audio file|A flowchart uses symbols and arrows to show steps and control paths.
In a task that reads two numbers and computes their sum, the numbers are|inputs|outputs only|printers|flowchart terminators|The numbers are data supplied to the procedure as input.
In the same task, adding the two numbers is|processing|input only|a storage device|an actuator|Addition transforms the inputs and is processing.
In the same task, displaying the sum is|output|input only|a variable declaration necessarily|a power supply|Displaying the computed result presents output.
A sequence of steps is executed|in the stated order|only when a printer is present|without any instructions|always in reverse order|Sequence means steps are carried out in order.
Choosing between paths based on a condition is|selection|storage|printing|file compression|Selection uses a condition to choose an alternative path.
Repeating steps according to a rule is|iteration|deletion|attribution|encryption|Iteration repeats a group of steps.
A conventional flowchart decision is commonly shown by a|diamond|rectangle|speaker|file extension|A decision is commonly represented by a diamond.
A conventional flowchart processing step is commonly shown by a|rectangle|diamond|speaker|disk platter|A rectangle commonly represents a process.
A conventional flowchart input or output symbol is commonly a|parallelogram|diamond|keyboard cable|magnetic tape|A parallelogram commonly represents input or output.
A conventional start or end symbol is commonly a|terminator|decision diamond|arithmetic operator|worksheet column|An oval or rounded terminator commonly denotes start or end.
An arrow in a flowchart normally indicates|direction of control flow|a computer's weight|the colour of the case|a licence price|Arrows indicate the direction in which control proceeds.
A decision with only its true path shown may be incomplete because|the false outcome also needs a specified path|every condition is always true|arrows can never branch|a decision is an output device|A complete procedure must specify what happens for possible outcomes.
The condition mark >= 50 is true for|50|49|48|0|The greater-than-or-equal operator includes 50 itself.
The condition mark > 50 is false for|50|51|52|75|Strictly greater than 50 excludes the boundary value 50.
Which set best tests the immediate boundary of mark >= 50?|49, 50 and 51|70, 75 and 80 only|100, 100 and 100|three copies of 60|The set includes the boundary and values immediately on both sides.
A trace table records|changing variable values as steps execute|only the colour of hardware|only a program's title|a person's password automatically|A trace table follows values through the algorithm.
A total starts at 0 and adds 3, 4 and 5. Its final value is|12|5|9|345|The running totals are 3, 7 and 12.
A total starts at 0 and adds 2 and then 7. Its final value is|9|7|5|27|Two plus seven gives nine.
A count starts at 1 and is printed while it is at most 3, increasing by 1 after each print. The outputs are|1, 2, 3|1, 2, 3, 4|0, 1, 2|3 only|The condition remains true for 1, 2 and 3, then becomes false at 4.
A count starts at 1 and is printed while it is less than 3, increasing by 1 after each print. The outputs are|1, 2|1, 2, 3|0, 1, 2|3 only|The strict condition is true for 1 and 2 but false at 3.
Why must a loop have an effective stopping rule?|to avoid unintended indefinite repetition|to guarantee no program can contain an error|to turn input into hardware|to remove all conditions|A stopping rule helps ensure the loop terminates when intended.
A loop condition remains true and its controlling value never changes. The loop may|continue indefinitely|necessarily print only once|automatically repair itself|become a physical sensor|Without a change that ends the condition, an indefinite loop can result.
An algorithm for a mean needs the sum and|the number of values|the colour of the screen|a physical printer only|a filename extension|A mean is calculated as the sum divided by the number of values.
The mean of 4, 5 and 6 is|5|4|6|15|The sum is 15 and 15 divided by three is 5.
For a valid range 1 through 10 inclusive, which value is below the range?|0|1|5|10|Zero is less than the inclusive lower boundary of 1.
For a valid range 1 through 10 inclusive, which value is above the range?|11|1|9|10|Eleven exceeds the inclusive upper boundary of 10.
When testing a program, an expected result is|the behaviour specified for the test input|always identical to the actual result|a physical device|an unrelated filename|The expected result states what the specification says should happen.
If expected and actual outputs differ, the mismatch|may indicate a defect or a mistaken expectation|proves the program is correct|always identifies the exact cause|means testing is unnecessary|A mismatch requires investigation of the program and the expectation.
A flowchart should be traced by following|arrows and evaluated conditions|only the order of colours|random symbols|the page number alone|Control flow follows arrows and branches chosen by conditions.
Which property makes algorithm steps easier to follow reliably?|clarity and lack of ambiguity|contradictory instructions|missing stopping rules|undefined inputs|Unambiguous steps make an algorithm reproducible and understandable.
Which statement about pseudocode is correct?|its notation can vary between descriptions|it is always identical to machine code|it is hardware|it needs no logical order|Pseudocode notation varies but should describe the logic clearly.
A selection statement can be placed inside a loop because|control structures can be combined|loops cannot contain conditions|a decision is a storage device|all algorithms are one step long|A program or algorithm can nest decisions within repetition.
A loop prints the current count before adding one. Starting at 2, what is its first output?|2|3|1|0|The print happens before the increment, so the first output is 2.
An algorithm displays the last value entered instead of the required sum. The problem is a|logic error in the solution|necessarily a damaged cable|printer-only failure|valid solution for every task|The procedure does not compute the required output.
A student tests only 75 for mark >= 50. What important test is missing?|the boundary value 50|another value much greater than 50 only|the computer's colour|the page number|The boundary distinguishes greater-than-or-equal from strictly greater-than.
When a diagram provides a symbol key, a reader should|use the supplied key|ignore it in all cases|assume every symbol is a printer|read arrows backwards|A supplied key states the conventions for that diagram.
An algorithm should address invalid input when|the specification requires it|invalid input is impossible in every real system|the monitor is turned off|the document is printed|The required handling of invalid input follows the specification.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
