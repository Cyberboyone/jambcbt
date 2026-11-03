#import "template.typ": *

#chapter-opener(7, "Ethics and Human Issues in Computing",
  subtitle: "Use technology with care for rights, people and consequences",
  syllabus-ref: "ETHICS AND HUMAN ISSUES", utme-weight: "Applied concepts")
#focus-radar(
  objectives: (
    "Explain responsible use, intellectual property and attribution.",
    "Identify privacy, accessibility and digital divide concerns.",
    "Distinguish lawful permission from mere technical ability.",
    "Consider the effects of online behaviour on other people.",
  ),
  hotspots: (
    "A file being accessible online does not automatically permit copying or redistribution.",
    "A person's password or private data should not be shared without proper authorisation.",
    "Accessibility supports participation by people with differing abilities.",
    "Technology's benefits and harms depend on context and use.",
  ),
  trap-summary: "Being able to access a system is not the same as being authorised to use or alter it.",
)

== 7.1 Responsible Use

Computing ethics concerns choices about how technology is designed and used, including the effects on other people. Responsible conduct includes respecting permissions, protecting personal information, communicating honestly and considering foreseeable harm. A school, workplace or service may also have specific policies, and applicable laws depend on the jurisdiction and circumstances.

A person who finds an unlocked account is not thereby authorised to read, alter or publish its contents. Report the issue through an appropriate channel and follow the organisation's rules. Technical ability does not create permission.

#rule-box("Permission is a separate question")[
  Before accessing, copying, changing or sharing material, ask whether you are authorised and whether the intended use complies with the relevant licence, policy and law.
]

== 7.2 Intellectual Property and Attribution

Copyright and other intellectual-property rules can protect creative work, software and other material. The applicable rights, exceptions and duration depend on the law and the circumstances. A licence can permit specified uses on stated conditions. Read the licence rather than assuming that a file is unrestricted because it is available online or free of charge.

*Attribution* acknowledges a source. Proper attribution does not by itself grant permission to use material where permission is required. *Plagiarism* involves presenting another person's work or ideas as one's own without appropriate acknowledgement; institutional rules define the standards for a particular assignment.

#figure(
  grid(columns: (1fr, auto, 1fr, auto, 1fr), column-gutter: 4pt, align: center + horizon,
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*CHECK* \\ permission and licence], [→],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*USE* \\ within the terms], [→],
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*CREDIT* \\ acknowledge sources]),
  caption: [7.1 — Responsible use requires attention to permission, conditions and attribution.],
)

== 7.3 Privacy, Accessibility and the Digital Divide

*Privacy* concerns appropriate control and handling of personal information. Before publishing a photograph or student record, consider authorisation, context, possible harm and applicable requirements. A data set can expose individuals even when it does not obviously contain a name; the risk depends on what can be inferred or combined.

*Accessibility* means designing and providing services so that people with differing abilities can use them. Examples include alternative text for meaningful images, keyboard access and readable contrast where appropriate. Accessibility is not a single feature that guarantees usability for every person; testing with users and following relevant standards matter.

The *digital divide* describes unequal access to digital technology, connectivity or the skills and support needed to use it. Cost, electricity, disability, language and location can affect access. Providing devices alone may not remove all of these barriers.

== 7.4 Online Conduct and Consequences

Online harassment, impersonation and unauthorised sharing can harm individuals. Communicate respectfully, verify information before forwarding it, and use appropriate reporting channels. A message can spread quickly and remain accessible after deletion from one account; do not assume that a private or temporary setting prevents every copy.

Automation can improve efficiency but also change jobs, expose sensitive information or produce unfair outcomes. Assess benefits and risks in context. For AI-assisted decisions, relevant safeguards can include quality testing, human oversight and a route to challenge an error.

#concept-box("Four questions before sharing")[
  Is it accurate? Am I authorised to share it? Does it expose private information? Could it harm someone? If uncertain, stop and seek guidance.
]

== 7.5 Four Worked Examples
#worked-example(1, "An unlocked account", tier: "FOUNDATION",
  [A student finds another person's account open on a shared computer. The appropriate action is to \
A. avoid reading private content and report the issue \
B. publish all messages \
C. change the password \
D. copy private files for curiosity],
  [An unlocked session is not permission to inspect or alter private content. Report it appropriately. The answer is *A*.])
#worked-example(2, "Free is not unrestricted", tier: "UTME STANDARD",
  [An image is available online without charge. Before redistributing it, a user should \
A. assume all rights have been waived \
B. check permission and licence terms \
C. remove the creator's name \
D. assume that attribution alone always grants permission],
  [Free access does not automatically give redistribution rights. Check the terms. The answer is *B*.])
#worked-example(3, "Access for more users", tier: "UTME STANDARD",
  [Providing keyboard navigation and meaningful alternative text can support \
A. voltage regulation \
B. file deletion \
C. accessibility \
D. printer ink],
  [These features can help users with different access needs. The answer is *C*.])
#worked-example(4, "A data-sharing decision", tier: "JAMB CHALLENGE",
  [A class wants to publish a real student record for a practice exercise. A more responsible alternative is to \
A. publish it without checking \
B. include passwords \
C. assume that a familiar name makes sharing safe \
D. use fictional or appropriately authorised data],
  [Fictional or appropriately authorised data can support practice without unnecessarily exposing real records. The answer is *D*.])

#trap-box("Four separate ideas")[
  Access is not permission. Attribution is not always permission. Free of charge is not necessarily unrestricted. Removing a name does not automatically eliminate every privacy risk.
]

== 7.6 Two-Minute Set
#mcq(1, [Using another person's work while presenting it as one's own is], [plagiarism], [a backup], [a network switch], [a printer driver])
#mcq(2, [A licence should be checked to understand], [the colour of a cable], [permitted uses and conditions], [the number of processor registers], [the electricity supply])
#mcq(3, [Keyboard navigation and alternative text can support], [magnetic storage], [power regulation], [accessibility], [disk formatting])
#mcq(4, [Unequal access to devices, connectivity or skills is called the], [fetch cycle], [CPU cache], [printer queue], [digital divide])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "Plagiarism presents another person's work or ideas as one's own without appropriate acknowledgement."), ("B", "A licence states permitted uses and conditions."), ("C", "These features can support accessibility."), ("D", "The digital divide concerns unequal access and ability to use digital technology.")))
#concept-box("Recap card")[
  Check permission, licence conditions and attribution. Protect privacy, consider accessibility and unequal access, and communicate responsibly. Technical access does not itself confer authorisation.
]
#chapter-checklist("Before moving on", (
  [I can explain why access is different from permission.],
  [I can distinguish attribution from permission.],
  [I can give examples of accessibility and the digital divide.],
  [I can identify questions to ask before sharing information.],
))
#shortcut-box("Carry forward")[
  Responsible computing applies to every role in the field. Chapter 8 surveys computing careers and brings the volume's ideas together.
]
