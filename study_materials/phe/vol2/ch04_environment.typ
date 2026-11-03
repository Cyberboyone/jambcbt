#import "template.typ": *

#chapter-opener(4, "Environmental and Community Health",
  subtitle: "Water, sanitation, waste and shared responsibility",
  syllabus-ref: "COMMUNITY HEALTH", utme-weight: "Core concepts")
#focus-radar(
  objectives: (
    "Describe links between the environment and health.",
    "Explain safe water, sanitation and waste-management principles.",
    "Identify environmental hazards and routes of exposure.",
    "Distinguish individual action from wider community responsibility.",
  ),
  hotspots: (
    "Unsafe water and inadequate sanitation can spread disease.",
    "Waste needs safe separation, collection, treatment and disposal.",
    "Air pollution and smoke can affect respiratory and cardiovascular health.",
    "Education works best alongside accessible, maintained facilities.",
  ),
  trap-summary: "A clean-looking environment or clear-looking water is not proof of safety. Effective community health requires both personal and collective action.",
)

== 4.1 Environment and Health

The environment includes the physical, biological and social conditions in which people live, learn and work. Housing, water, sanitation, air quality, waste collection, workplaces and access to services can all influence health. A hazard is something with potential to cause harm; *exposure* is contact with it. The degree and duration of exposure, the substance involved and individual circumstances can affect risk.

For example, smoke in a poorly ventilated cooking space can expose people to harmful air pollution. Improving ventilation and adopting cleaner energy where feasible can reduce exposure, but availability, cost and infrastructure matter. Do not assume that advice is practical without considering a community's resources.

#rule-box("Hazard, exposure, risk")[
  A hazard has the potential to cause harm; exposure describes contact with it. Risk concerns the likelihood of harm in a particular context. The terms are related but not interchangeable.
]

== 4.2 Water, Sanitation and Hygiene

Safe water is important for drinking, food preparation and hygiene. Water may contain disease-causing organisms or harmful chemicals even when it appears clear. Protection of water sources, suitable treatment and safe storage help reduce contamination. Boiling can kill many disease-causing organisms when done correctly, but does not remove all chemical pollutants; use guidance suited to the source and local hazard.

*Sanitation* includes safe management of human excreta from containment through treatment or disposal. A toilet is one component, but a safe system also considers where waste goes and how facilities are maintained. Handwashing with soap after toilet use and before food preparation helps interrupt transmission. Access to affordable, safe and inclusive facilities is essential for these practices.

#figure(
  grid(columns: (1fr, auto, 1fr, auto, 1fr), column-gutter: 4pt, align: center + horizon,
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*SOURCE* \ protect water], [→],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*TREAT* \ use suitable method], [→],
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*STORE* \ prevent recontamination]),
  caption: [4.1 — Safe water management is a chain; treatment must suit the contaminant and local guidance.],
)

== 4.3 Waste, Vectors and Air

Waste management includes reducing unnecessary waste where possible, separating it appropriately, collection, treatment and safe disposal. Sharps and healthcare waste need special handling by trained services; do not handle discarded needles with bare hands. Open dumping can contaminate the environment and create injury risks. Burning waste can expose people to harmful smoke.

A *vector* is a living organism that can transmit a disease-causing agent between hosts. Mosquitoes can transmit malaria parasites; not every mosquito carries malaria. Protecting people from bites, including appropriate use of insecticide-treated nets, and following local vector-control advice can reduce risk. Eliminating standing water can help reduce some mosquito breeding sites, but it is not a substitute for the full locally recommended prevention package.

#concept-box("A shared system")[
  A household can separate waste and avoid unsafe dumping. Local authorities and service providers also need reliable collection, safe treatment and disposal. Responsibility does not rest on individuals alone.
]

== 4.4 Community Action and Evaluation

A community health programme can identify a problem, listen to affected people, plan feasible action, implement it and review results. For example, a school may assess whether toilets are usable, install handwashing facilities, arrange maintenance and check whether water and soap remain available. Accessibility, privacy and safe disposal should be considered.

A count of new facilities alone does not prove that a programme works: examine whether facilities are functional, accessible and maintained, and use appropriate evidence to assess outcomes. Health information should be clear, respectful and available in forms people can use.

== 4.5 Four Worked Examples
#worked-example(1, "A hazard", tier: "FOUNDATION",
  [Which is an environmental health hazard? \
A. Smoke accumulating in a poorly ventilated room \
B. A maintained handwashing station \
C. Safe storage of treated water \
D. Appropriate waste collection],
  [Accumulated smoke can expose occupants to harmful air pollution. The answer is *A*.])
#worked-example(2, "Water appearance", tier: "UTME STANDARD",
  [A water sample looks clear. Which statement is most appropriate? \
A. It is guaranteed free of microorganisms and chemicals \
B. Appearance alone does not establish that it is safe \
C. It never needs protection during storage \
D. It is automatically suitable for every purpose],
  [Some contaminants are not visible. Use appropriate testing, treatment and local guidance rather than appearance alone. The answer is *B*.])
#worked-example(3, "The treatment method", tier: "UTME STANDARD",
  [Why is it incorrect to claim that boiling removes every water contaminant? \
A. Boiling never affects microorganisms \
B. Water cannot be contaminated \
C. Boiling can kill many organisms but does not remove all chemical pollutants \
D. Chemicals are always visible],
  [Boiling addresses many microbial hazards but is not a universal solution for chemical contamination. The answer is *C*.])
#worked-example(4, "Evaluate a programme", tier: "JAMB CHALLENGE",
  [A school builds ten toilets. Which follow-up provides the best evidence about access? \
A. Count the paint colours only \
B. Assume all units remain usable forever \
C. Ask only whether a plan was written \
D. Check whether the toilets are functional, accessible and maintained],
  [The number built does not show whether facilities can actually be used. Function, access and maintenance are relevant. The answer is *D*.])

#trap-box("Clear is not necessarily safe")[
  Water can look clear and still contain harmful organisms or chemicals. Select treatment according to the hazard and follow current local advice.
]

== 4.6 Two-Minute Set
#mcq(1, [A hazard is], [something with potential to cause harm], [the certainty of harm in every case], [the same as a diagnosis], [always visible])
#mcq(2, [A safe sanitation system includes], [only constructing a toilet without maintenance], [safe management of excreta and maintained facilities], [only an educational slogan], [ignoring where waste goes])
#mcq(3, [A disease vector can], [only treat disease], [always be detected by appearance], [transmit a disease-causing agent between hosts], [replace safe water])
#mcq(4, [A useful programme review checks], [only the number of posters printed], [only the colour of a facility], [only whether a meeting occurred], [access, function, maintenance and relevant outcomes])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "A hazard has potential to cause harm."), ("B", "Sanitation requires safe management and maintained facilities."), ("C", "Vectors can transmit disease-causing agents."), ("D", "Implementation and outcomes should be reviewed, not assumed.")))
#concept-box("Recap card")[
  Environmental health involves water, sanitation, waste, air and living conditions. Match controls to hazards and combine individual practices with reliable community systems.
]
#chapter-checklist("Before moving on", (
  [I can distinguish hazard, exposure and risk.],
  [I can explain why clear water is not automatically safe.],
  [I can describe basic waste management and vector prevention.],
  [I can give a practical way to evaluate a community intervention.],
))
#shortcut-box("Carry forward")[
  Environmental controls can interrupt infection pathways. The next chapter examines infectious agents, transmission, prevention and the importance of appropriate diagnosis.
]
