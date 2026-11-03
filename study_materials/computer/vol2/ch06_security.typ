#import "template.typ": *

#chapter-opener(6, "Cybersecurity and Data Protection",
  subtitle: "Protect confidentiality, integrity and availability",
  syllabus-ref: "COMPUTER SECURITY", utme-weight: "Applied skills")
#focus-radar(
  objectives: (
    "Distinguish confidentiality, integrity and availability.",
    "Identify malware, phishing and unauthorised access as security risks.",
    "Explain passwords, multi-factor authentication, updates and backups.",
    "Apply careful handling and sharing of personal data.",
  ),
  hotspots: (
    "A backup supports recovery; it does not prevent every attack.",
    "Multi-factor authentication uses more than one authentication factor.",
    "A phishing message can impersonate a trusted person or organisation.",
    "Encryption protects data according to its implementation and key handling.",
  ),
  trap-summary: "No single safeguard guarantees complete security. Appropriate controls depend on the risk, the system and the people using it.",
)

== 6.1 Security Goals and Risks

*Confidentiality* concerns preventing unauthorised disclosure; *integrity* concerns protecting data from unauthorised or improper alteration; *availability* concerns making systems and data accessible to authorised users when needed. A security incident can affect more than one goal. For example, ransomware can make files unavailable and may also involve theft or alteration.

A *threat* is a potential cause of harm; a *vulnerability* is a weakness that can be exploited. Risk assessment considers a threat, the vulnerability or exposure, and possible consequences. Installing a patch may reduce a known vulnerability, but it cannot remove every risk.

#figure(
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 5pt, align: center + horizon,
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*CONFIDENTIALITY* \\ prevent disclosure],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*INTEGRITY* \\ prevent improper change],
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*AVAILABILITY* \\ access when needed]),
  caption: [6.1 — Three complementary security goals. A safeguard can support more than one.],
)

== 6.2 Malware and Deception

*Malware* is software designed for harmful or unauthorised purposes. A virus can attach to a host and spread when conditions permit; a worm can spread across systems without attaching to a host file in the same way; ransomware commonly denies access to data or systems and demands payment. Definitions and behaviour vary, and real incidents may combine techniques.

*Phishing* attempts to deceive a user into disclosing information or taking an unsafe action, often by impersonating a trusted party. Unexpected urgency, suspicious links or requests for passwords are warning signs, but a message can be fraudulent without obvious mistakes. Independently verify a request through a known official channel. Do not give passwords or one-time codes to an unexpected requester.

#rule-box("Verify independently")[
  Do not use contact details supplied only in a suspicious message. Use a previously verified address or official contact channel. A familiar logo or HTTPS connection alone does not establish that the sender or website is trustworthy.
]

== 6.3 Controls and Recovery

Use unique strong passwords and multi-factor authentication where available. Authentication factors can include something a user knows, has or is; two passwords are not automatically two different factors. Keep software updated from trustworthy sources, limit access to what users need, and maintain separate recoverable backups. Test restoration.

*Encryption* transforms data so that authorised parties with the appropriate key can recover it under the relevant scheme. Its effectiveness depends on the method and protection of keys. Encryption does not prevent an authorised user from deliberately sharing decrypted data, and it is not a substitute for access controls or backups.

If an incident occurs, follow the organisation's reporting and response procedures. Preserve relevant information where instructed, avoid spreading suspicious messages, and obtain authorised support. Do not investigate by attempting to access another person's account or system without permission.

== 6.4 Personal Data and Privacy

Personal data can identify or relate to an individual, depending on the context and applicable law. Collect and share only what is needed for a legitimate purpose, protect access, and follow relevant policies and legal requirements. A classroom exercise should use fictional or appropriately authorised data rather than exposing real student records.

A privacy notice and consent can be important in some contexts, but the legal basis and obligations depend on the applicable law and purpose. Do not assume that a person clicking “agree” makes every use of data lawful or safe.

== 6.5 Four Worked Examples
#worked-example(1, "Prevent disclosure", tier: "FOUNDATION",
  [Keeping a private student record from unauthorised readers primarily supports \
A. confidentiality \
B. printing speed \
C. screen colour \
D. file naming],
  [Confidentiality concerns preventing unauthorised disclosure. The answer is *A*.])
#worked-example(2, "Protect correctness", tier: "UTME STANDARD",
  [Detecting and preventing unauthorised changes to a record primarily supports \
A. display brightness \
B. integrity \
C. paper size \
D. battery charge],
  [Integrity concerns protection against improper alteration. The answer is *B*.])
#worked-example(3, "Recognise deception", tier: "UTME STANDARD",
  [A message impersonates a bank and asks for a one-time code. The safest response is to \
A. send the code immediately \
B. publish it in a group \
C. verify independently and keep the code private \
D. disable all authentication],
  [Do not share the code; verify using a known official channel. The answer is *C*.])
#worked-example(4, "Recover after loss", tier: "JAMB CHALLENGE",
  [Files on a device become unavailable. Which measure most directly supports recovery if the copy is unaffected? \
A. A longer screen cable \
B. A new desktop background \
C. A printer tray \
D. A separate tested backup],
  [A separate tested backup can restore the data if it is unaffected and recoverable. The answer is *D*.])

#trap-box("Security controls have different jobs")[
  Encryption, access control, authentication, updates and backups complement one another. A backup is not a promise that unauthorised disclosure cannot happen.
]

== 6.6 Two-Minute Set
#mcq(1, [Preventing unauthorised disclosure primarily supports], [confidentiality], [screen resolution], [paper handling], [colour depth])
#mcq(2, [A suspicious message requesting a password may be], [a physical printer], [phishing], [a spreadsheet row], [a monitor stand])
#mcq(3, [A separate recoverable copy of data is a], [CPU], [port], [backup], [pixel])
#mcq(4, [Using a password and a suitable separate possession factor is an example of], [file compression], [a paper copy], [output formatting], [multi-factor authentication])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "Confidentiality concerns unauthorised disclosure."), ("B", "Phishing attempts to deceive users into unsafe action or disclosure."), ("C", "A backup is a separate recoverable copy."), ("D", "Different factor types can provide multi-factor authentication.")))
#concept-box("Recap card")[
  Protect confidentiality, integrity and availability. Verify unexpected requests independently. Use appropriate authentication, updates, access control and tested backups. Handle personal data carefully and follow applicable rules.
]
#chapter-checklist("Before moving on", (
  [I can distinguish confidentiality, integrity and availability.],
  [I can recognise a suspicious request for a password or code.],
  [I can explain why a backup and encryption serve different purposes.],
  [I can describe cautious handling of personal data.],
))
#shortcut-box("Carry forward")[
  Security is part of responsible computing, but ethical questions also include consent, intellectual property, accessibility and the effects of technology on people.
]
