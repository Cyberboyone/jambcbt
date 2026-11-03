#import "template.typ": *

#chapter-opener(5, "Robotics and Control Systems",
  subtitle: "Sense, decide and act in the physical world",
  syllabus-ref: "ROBOTICS", utme-weight: "Core concepts")
#focus-radar(
  objectives: (
    "Describe a robot and identify sensors, controllers and actuators.",
    "Distinguish an input from a physical action in a control system.",
    "Explain feedback using a simple example.",
    "Identify practical uses, limits and safety considerations.",
  ),
  hotspots: (
    "A sensor measures a condition; an actuator produces physical action.",
    "A controller processes input and directs action according to its design.",
    "Feedback uses information about an outcome to guide subsequent control.",
    "A robot need not resemble a human or use machine learning.",
  ),
  trap-summary: "A robot can follow fixed programmed instructions without using AI; an AI program can exist without a physical robot.",
)

== 5.1 What Is a Robot?

A *robot* is a programmable machine that can sense or receive information and perform actions in the physical world. Definitions vary with context: a factory arm, a warehouse vehicle and a robotic vacuum cleaner have different forms and capabilities. A robot need not look like a person.

Robotics combines mechanical parts, electronics, control and software. Some robots use AI techniques for tasks such as recognising objects; others follow fixed instructions without machine learning. Conversely, AI software can process data without controlling a robot.

#rule-box("Robot and AI are not synonyms")[
  A programmable mechanical arm repeating a fixed motion is a robot even if it uses no machine learning. A text-classification program may use AI without being a physical robot.
]

== 5.2 Sensors, Controllers and Actuators

A *sensor* detects or measures a condition, such as distance, light, temperature or touch. The *controller* processes inputs according to its instructions and sends commands. An *actuator* turns a command into physical action, such as a motor rotating a wheel or a mechanism moving a gripper.

A power supply provides energy; a communication link may allow the robot to exchange data. A camera can supply images, but recognising objects from those images requires suitable processing. Component names describe roles, not guarantees that every robot has exactly the same design.

#figure(
  grid(columns: (1fr, auto, 1fr, auto, 1fr), column-gutter: 4pt, align: center + horizon,
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*SENSOR* \\ detects distance], [→],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*CONTROLLER* \\ applies a rule], [→],
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*ACTUATOR* \\ moves or stops]),
  caption: [5.1 — A simplified sense–control–act path. A real system may use several sensors and actuators.],
)

== 5.3 Feedback and Control

In a simple control system, *feedback* provides information about the result of an action. For example, a temperature sensor can report the room temperature to a controller. If the temperature falls below a set threshold, the controller may turn a heater on; it can turn the heater off when the specified condition is met. The exact thresholds and safety measures must be designed for the actual system.

An *open-loop* control action does not use feedback about the controlled outcome to adjust the action in that loop. A *closed-loop* system uses feedback about the outcome. Neither label alone tells us whether a particular design is safe or suitable.

#concept-box("A careful feedback example")[
  A timer that runs a motor for a fixed duration without measuring the result is an open-loop example. A controller that measures position and adjusts the motor based on that measurement is a closed-loop example.
]

== 5.4 Uses, Limits and Safety

Robots can assist with repetitive manufacturing, warehouse transport, inspection in hazardous environments and some medical procedures. Their suitability depends on their design, reliability, environment and human supervision. A robot can malfunction, misread a sensor or encounter an obstacle it was not designed to handle.

Safety measures can include guarding, emergency stops, restricted access, maintenance and testing, according to the particular system and applicable rules. A human operator should not enter a hazardous operating area merely because a machine is labelled autonomous. Before use, confirm the applicable safeguards and follow the site’s operating procedure.

== 5.5 Four Worked Examples
#worked-example(1, "Measure the distance", tier: "FOUNDATION",
  [Which component detects an approaching obstacle? \
A. Distance sensor \
B. Motor shaft only \
C. Printed report \
D. File extension],
  [A distance sensor supplies information about the obstacle. The answer is *A*.])
#worked-example(2, "Move the gripper", tier: "UTME STANDARD",
  [Which component converts a controller's command into movement of a gripper? \
A. A worksheet \
B. An actuator \
C. A filename \
D. A printed key],
  [An actuator produces physical action. The answer is *B*.])
#worked-example(3, "Use the outcome", tier: "UTME STANDARD",
  [A motor's position is measured and the controller adjusts movement using that measurement. This is an example of \
A. paper output \
B. an unrelated backup \
C. feedback control \
D. a file rename],
  [The measured outcome informs later control. The answer is *C*.])
#worked-example(4, "Robot without machine learning", tier: "JAMB CHALLENGE",
  [A factory arm repeatedly follows fixed programmed movements without machine learning. Which statement is best? \
A. It cannot be a robot \
B. It must be conscious \
C. It is necessarily a text file \
D. It can be a robot without using machine learning],
  [A robot can carry out programmed physical actions without machine learning. The answer is *D*.])

#trap-box("Roles, not appearances")[
  A sensor measures; an actuator acts. The controller uses its instructions and available inputs. Human-like appearance is not required for a machine to be a robot.
]

== 5.6 Two-Minute Set
#mcq(1, [A component that detects light is a], [sensor], [printer tray], [file extension], [spreadsheet formula])
#mcq(2, [A motor moving a wheel is acting as an], [email address], [actuator], [input document], [search result])
#mcq(3, [A controller that adjusts action using measured outcome uses], [only paper], [a filename], [feedback], [no information])
#mcq(4, [A robot], [must look human], [always uses machine learning], [cannot use sensors], [can follow fixed programmed instructions])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "A light sensor detects light."), ("B", "The motor produces physical action and serves as an actuator."), ("C", "Feedback provides information about the outcome for control."), ("D", "A robot can operate according to fixed programmed instructions.")))
#concept-box("Recap card")[
  A sensor detects, a controller processes and an actuator acts. Closed-loop control uses feedback; a robot need not be human-shaped or use machine learning. Safety depends on the particular system.
]
#chapter-checklist("Before moving on", (
  [I can identify a sensor, controller and actuator in an example.],
  [I can explain the role of feedback.],
  [I can distinguish a robot from an AI application.],
  [I can name a practical use and a safety consideration.],
))
#shortcut-box("Carry forward")[
  Connected devices and software also need protection from misuse. Chapter 6 examines threats, safeguards and the handling of personal data.
]
