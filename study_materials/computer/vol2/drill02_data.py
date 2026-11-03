"""Forty original programming questions; the first choice is correct."""
RAW = '''
Instructions in a form a processor architecture can execute are|machine code|a printed timetable|a licence notice|a network cable|Machine code consists of instructions for a processor architecture.
Assembly language commonly uses|symbolic instruction names|only diagrams|a physical printer|only natural-language essays|Assembly uses symbolic names closely related to machine instructions.
A translator for assembly language is an|assembler|actuator|access point|antivirus signature|An assembler translates assembly-language instructions.
A high-level language generally provides|abstractions closer to human problem descriptions|only physical switches|no way to express algorithms|a printer cartridge|High-level languages provide abstractions for expressing programs.
A compiler translates|source code into another representation|a keyboard into a monitor|a paper tray into a CPU|a battery into a password|A compiler translates source code into another form.
An interpreter is associated with|executing instructions according to a representation|printing all files automatically|physically building a CPU|measuring paper size|An interpreter executes instructions according to a representation.
A language implementation can|combine compilation and interpretation|never translate code|only run on paper|never use an intermediate representation|Real implementations can combine multiple techniques.
A variable is a name used for|a value that may be used and changed where permitted|only a physical cable|a printer stand|an unavoidable error|Variables name values a program can use and, where permitted, change.
A constant is a value intended|not to change in the relevant scope|to change at every instruction|to be a physical screen|to be a network plug|A constant is intended not to change within its relevant scope.
A whole-number value is commonly represented by an|integer|printer|folder|network switch|An integer type represents whole-number values.
A true-or-false value is commonly represented by a|Boolean|printer cable|folder|speaker|A Boolean value is true or false.
A sequence of text characters is commonly called a|string|motor|router|paper tray|A string represents text.
A real or floating-point type often represents|approximate numeric values|only filenames|physical electricity cables|a paper report|Floating-point types commonly represent numeric values approximately.
In the stated pseudocode, SET x = 4 assigns|the value 4 to x|the value x to every device|a printer to x|the page number to x|SET x = 4 stores the value 4 in x under the stated notation.
If x starts at 4 and SET x = x + 3 follows, x becomes|7|4|3|43|The old value 4 plus 3 is stored, giving 7.
If y starts at 9 and SET y = y - 2 follows, y becomes|7|9|11|92|Subtract 2 from the previous value 9 to obtain 7.
In assignment pseudocode, SET x = x + 1 means|replace x with its previous value plus one|claim x equals x plus one as an algebraic identity|print x without changing it|delete x|The old value is used on the right and the result assigned to x.
The relational operator < commonly means|less than|greater than or equal|assignment in every language|logical OR|The symbol < commonly tests whether the left value is less than the right.
The condition 8 >= 8 is|true|false|a printer|undefined in every language|Greater than or equal includes equality.
The condition 8 > 8 is|false|true|a string necessarily|an actuator|Eight is not strictly greater than itself.
If P is true and Q is false, P AND Q is|false|true|always an integer in every language|a network address|AND requires both operands to be true.
If P is true and Q is false, P OR Q is|true|false|a printer|an electrical signal only|OR is true when at least one condition is true.
NOT true is|false|true|a filename|a physical port|NOT reverses the Boolean value.
NOT false is|true|false|a printer|a hardware cable|NOT reverses false to true.
If both P and Q are true, P AND Q is|true|false|a screen|a file extension|AND is true when both conditions are true.
If both P and Q are false, P OR Q is|false|true|a motor|a paper file|OR is false when neither condition is true.
Under ordinary arithmetic precedence, 2 + 3 × 4 equals|14|20|24|11|Multiply 3 by 4 before adding 2, giving 14.
Under ordinary arithmetic precedence, (2 + 3) × 4 equals|20|14|24|11|The parentheses give 5, then 5 times 4 is 20.
A syntax error concerns|a violation of a language's grammar|only the monitor's colour|a physical printer jam only|a person's job title|Syntax errors violate language rules for valid program form.
A runtime error occurs|during program execution|only before a computer is built|only in printed prose|only when power is disconnected|Runtime errors occur while a program executes.
A program runs but uses addition instead of multiplication for area. The defect is a|logic error|printer cable|network router|paper size|The wrong calculation is a logic error even if execution succeeds.
Debugging is the process of|locating and correcting defects|guaranteeing that every future program is correct|printing every page|physically manufacturing memory|Debugging investigates and fixes defects.
A useful debugging step is to|compare expected and actual results|change random unrelated settings without recording them|share private credentials|ignore the observed result|Comparing expected and actual behaviour helps locate a defect.
What should be used when an exam states a language-specific operator rule?|the rule stated in the question|an unrelated language's rule automatically|only the shape of a keyboard|a guess based on the answer length|Programming symbols can vary across languages; use the stated rule.
In the given pseudocode, x = 6 followed by x = x + 2 gives|8|6|4|62|The previous value 6 plus 2 gives 8.
If score = 45, the condition score >= 50 is|false|true|a motor|a file|Forty-five is less than fifty, so the condition is false.
If score = 50, the condition score >= 50 is|true|false|a printer|a memory chip|Greater than or equal includes the boundary value.
If age = 18 and registered is false, age >= 18 AND registered is|false|true|always a legal conclusion|a paper document|The first part is true but the second is false, so AND is false.
A change to a program should be followed by|retesting relevant cases|assuming every defect is gone|deleting all test data without review|sharing passwords publicly|Retesting checks whether the change has the intended effect.
Which statement about data types is careful?|ranges and precision depend on the language and system|all integers have unlimited size in every system|every decimal is represented exactly by all floating-point types|a string is a physical cable|Type ranges and precision depend on the language and implementation.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
