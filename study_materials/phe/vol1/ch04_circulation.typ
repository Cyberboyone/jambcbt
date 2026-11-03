#import "template.typ": *

#chapter-opener(4, "Circulation, Respiration and Exercise",
  subtitle: "Transport, gas exchange and the body's response to activity",
  syllabus-ref: "HUMAN ANATOMY AND PHYSIOLOGY", utme-weight: "Core concepts")
#focus-radar(
  objectives: (
    "Identify the heart, blood vessels and lungs in transport and gas exchange.",
    "Distinguish arteries, veins and capillaries by their roles.",
    "Explain inhalation, exhalation and gas exchange at the alveoli.",
    "Describe general exercise responses without treating them as universal prescriptions.",
  ),
  hotspots: (
    "Arteries carry blood away from the heart; veins carry blood towards it.",
    "Capillaries are small vessels where exchange occurs with tissues.",
    "The alveoli are tiny air sacs where oxygen and carbon dioxide are exchanged.",
    "Breathing rate and heart rate generally rise with increased exercise demand.",
  ),
  trap-summary: "Artery and vein are defined by direction relative to the heart, not simply by whether their blood contains more or less oxygen.",
)

== 4.1 The Heart and Blood Vessels

The heart pumps blood through the circulatory system. In the *pulmonary circulation*, blood travels between the heart and lungs; in the *systemic circulation*, it travels between the heart and the rest of the body. Blood carries oxygen, nutrients and other substances and helps transport carbon dioxide for removal.

An *artery* carries blood away from the heart, while a *vein* carries blood towards it. *Capillaries* are very small vessels where substances can be exchanged between blood and tissues. The pulmonary artery carries blood from the heart to the lungs, illustrating why direction is a better introductory definition than “arteries always carry oxygen-rich blood”.

#rule-box("Direction is the definition")[
  Artery: away from the heart. Vein: towards the heart. Capillaries: exchange with tissues. The pulmonary vessels are important counterexamples to an oversimplified oxygen-content rule.
]

== 4.2 Breathing and Gas Exchange

During *inhalation*, the diaphragm contracts and generally moves downward, helping expand the chest cavity so air enters the lungs. During ordinary quiet *exhalation*, the diaphragm relaxes and the chest cavity decreases in volume as air leaves. Breathing during intense exercise can involve additional muscles and different levels of effort.

The *alveoli* are tiny air sacs in the lungs. Oxygen moves from alveolar air into the blood, while carbon dioxide moves from the blood into the alveolar air for exhalation. Gas exchange depends on differences in partial pressure and adequate ventilation and blood flow; the simple direction is the key introductory idea.

#figure(
  grid(columns: (1fr, auto, 1fr, auto, 1fr), column-gutter: 4pt, align: center + horizon,
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*LUNGS* \ alveolar gas exchange], [→],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*HEART* \ pumps blood], [→],
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*TISSUES* \ exchange at capillaries]),
  caption: [4.1 — A simplified transport path. Blood returns to the heart and lungs to continue the cycle.],
)

== 4.3 Responses to Physical Activity

As exercise intensity rises, working muscles generally require more oxygen and energy. Heart rate and breathing rate typically increase, although individual responses depend on fitness, environment, medication, health and other factors. A pulse is a pressure wave associated with heartbeats; counting it over a measured interval can give an estimate of heart rate.

If 18 pulse beats are counted over 15 seconds, multiplying by four gives an estimate of 72 beats per minute, assuming the rate is reasonably steady during the measurement. This is arithmetic, not a diagnosis or a recommended target. Measurements and exercise plans should be interpreted in context.

#concept-box("Count and label the units")[
  Estimated beats per minute = beats counted ÷ seconds counted × 60. For 18 beats in 15 seconds: 18 ÷ 15 × 60 = 72 beats per minute.
]

== 4.4 Safety and Recovery

Appropriate preparation, hydration, rest and gradual progression can support activity, but needs vary with the person, environment and session. Chest pain, fainting, severe breathlessness or other concerning symptoms during activity should not be ignored: stop and seek urgent professional help when appropriate. This educational text is not an individual exercise prescription.

== 4.5 Four Worked Examples
#worked-example(1, "The exchange vessel", tier: "FOUNDATION",
  [The smallest vessels where exchange with tissues occurs are \
A. capillaries \
B. tendons \
C. ligaments \
D. alveoli],
  [Capillaries are small blood vessels where substances can be exchanged with tissues. The answer is *A*.])
#worked-example(2, "Direction of flow", tier: "UTME STANDARD",
  [A vessel carrying blood away from the heart is an \
A. alveolus \
B. artery \
C. tendon \
D. joint],
  [An artery carries blood away from the heart. The answer is *B*.])
#worked-example(3, "Estimate a pulse", tier: "UTME STANDARD",
  [A student counts 20 pulse beats in 15 seconds. Assuming a steady rate, the estimated rate is \
A. 20 beats per minute \
B. 60 beats per minute \
C. 80 beats per minute \
D. 120 beats per minute],
  [There are four 15-second intervals in a minute: 20 × 4 = 80 beats per minute. The answer is *C*.])
#worked-example(4, "The pulmonary exception", tier: "JAMB CHALLENGE",
  [The pulmonary artery is called an artery because it carries blood \
A. from tissues towards the heart \
B. only when the person exercises \
C. always rich in oxygen \
D. away from the heart towards the lungs],
  [The classification is based on direction relative to the heart. The pulmonary artery carries blood away from the heart to the lungs. The answer is *D*.])

#trap-box("Two exchange sites")[
  *Alveoli* are lung air sacs for gas exchange with blood; *capillaries* are small blood vessels involved in exchange. An artery is defined by direction away from the heart, not by oxygen content alone.
]

== 4.6 Two-Minute Set
#mcq(1, [A vessel carrying blood towards the heart is a], [vein], [tendon], [bone], [joint])
#mcq(2, [Tiny air sacs in the lungs are called], [ligaments], [alveoli], [femurs], [girdles])
#mcq(3, [If 15 beats are counted in 15 seconds, the estimated rate is], [15 beats per minute], [30 beats per minute], [60 beats per minute], [90 beats per minute])
#mcq(4, [During ordinary inhalation the diaphragm generally], [relaxes and moves upward], [becomes a tendon], [stops all air movement], [contracts and moves downward])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "A vein carries blood towards the heart."), ("B", "Alveoli are tiny air sacs involved in gas exchange."), ("C", "15 beats in 15 seconds gives 15 × 4 = 60 beats per minute."), ("D", "During ordinary inhalation the diaphragm contracts and generally moves downward.")))
#concept-box("Recap card")[
  The heart pumps blood; arteries carry it away and veins return it. Capillaries support exchange with tissues. Alveoli exchange gases with blood. Exercise responses vary; pulse arithmetic is not a diagnosis.
]
#chapter-checklist("Before moving on", (
  [I can distinguish arteries, veins, capillaries and alveoli.],
  [I can describe ordinary inhalation and gas exchange.],
  [I can estimate beats per minute from a timed pulse count.],
  [I know not to ignore concerning symptoms during activity.],
))
#shortcut-box("Carry forward")[
  The next chapter uses this body knowledge to distinguish fitness components and plan activity with appropriate progression and recovery.
]
