#import "template.typ": *
#current-chapter.update("Appendix G: Model Answers")
= Appendix G — Model Answers and the Half-Answer

These original exercises model a clear answer and its reasoning; they are not represented as past examination questions.

== G.1 Algorithm and Trace
*Prompt:* An algorithm starts total at 0 and adds 3, 4 and 5. Find the final total.

*Half-answer:* “Five.”

*Model:* The running totals are 3, then 7, then 12. The final total is 12; the last input is not the same as the accumulated sum.

== G.2 Assignment
*Prompt:* A procedure sets x to 7, then sets x to x + 4. Find x.

*Half-answer:* “x plus four.”

*Model:* Evaluate the right side using the previous value: 7 + 4 = 11. Store 11 in x.

== G.3 Boundary Testing
*Prompt:* A form accepts integer marks from 0 to 100 inclusive. Give boundary and immediately outside cases.

*Half-answer:* “Try 50.”

*Model:* The valid boundary values are 0 and 100. The values immediately outside are −1 and 101; their expected rejection should be specified and checked.

== G.4 Model Accuracy
*Prompt:* A classifier correctly labels 18 of 20 test cases. Calculate its accuracy on that set.

*Half-answer:* “Eighteen per cent.”

*Model:* 18 ÷ 20 = 0.9, or 90%. This describes the stated test set; it does not guarantee 90% performance for every future group.

== G.5 Robotics
*Prompt:* Distinguish a sensor from an actuator using a robot vehicle.

*Half-answer:* “Both are robot parts.”

*Model:* A distance sensor supplies information about an obstacle. A motor acting as an actuator turns a wheel in response to a command. One measures; the other acts.

== G.6 Security
*Prompt:* Explain why a tested backup is not the same as confidentiality.

*Half-answer:* “Both protect data.”

*Model:* A tested backup supports recovery after loss or damage. Confidentiality concerns preventing unauthorised disclosure. A backup alone does not guarantee that nobody can read the original or the copy.

== G.7 Ethics
*Prompt:* A free online image has a licence. What should a student check before redistribution?

*Half-answer:* “It is free, so copy it.”

*Model:* Read the licence and any applicable conditions to determine whether redistribution is permitted, and provide attribution where required. Free access alone does not grant every right.

== G.8 Careers and Project Work
*Prompt:* Explain how a team can make a small attendance-system project more reliable.

*Half-answer:* “Write the program.”

*Model:* Identify user needs and access requirements, design and implement the solution, test normal and boundary cases against expected results, document it, and protect personal data with appropriate safeguards.
