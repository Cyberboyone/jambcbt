#import "template.typ": *

#chapter-opener(7, "Maintenance, Safety and Troubleshooting",
  subtitle: "Protect the person, the equipment and the data",
  syllabus-ref: "PRACTICAL COMPUTING", utme-weight: "Applied skills")
#focus-radar(
  objectives: (
    "Distinguish preventive maintenance from repair after a fault.",
    "Identify electrical, environmental and ergonomic risks.",
    "Apply a safe, ordered approach to basic troubleshooting.",
    "Explain updates, backups, malware protection and responsible disposal.",
  ),
  hotspots: (
    "Disconnect power before cleaning external equipment as directed by its maker.",
    "A surge protector and a UPS do different jobs.",
    "Backups help recovery; they do not prevent every hardware failure.",
    "Use authorised personnel for internal electrical repairs.",
  ),
  trap-summary: "A UPS provides temporary power within its rated capacity; it is not a substitute for saving work or making backups.",
)

== 7.1 Preventive Maintenance

*Preventive maintenance* reduces the chance or impact of problems before they occur. Examples include keeping ventilation openings clear, using suitable covers when equipment is not operating, installing trusted updates, checking backups and following the manufacturer's cleaning instructions. *Corrective maintenance* addresses an existing fault. Both are useful; prevention cannot guarantee that a device will never fail.

Keep liquids away from electrical equipment. Avoid blocking airflow or placing devices in excessive heat, dust or moisture. Shut down and disconnect equipment before external cleaning where the manufacturer's instructions require it; use appropriate materials and avoid spraying liquid directly into openings. Do not open a power supply or attempt internal electrical repairs without the required training and authorisation.

#figure(
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 5pt, align: center + horizon,
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*PREVENT* \ clean, ventilate, update],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*DETECT* \ observe, test, record],
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*RECOVER* \ repair, restore, verify]),
  caption: [7.1 — Maintenance combines prevention, diagnosis and safe recovery.],
)

== 7.2 Power and Physical Safety

A *surge protector* is designed to limit damaging voltage surges within its specifications. An *uninterruptible power supply* (UPS) can provide temporary battery power when the supply fails, allowing time to save work or shut down if the connected load and battery capacity permit. Some UPS units also provide surge protection; features vary. Neither device is a substitute for safe wiring or a backup.

Damaged cables, overloaded outlets and exposed conductors present hazards. Report them and use a qualified technician. If equipment smells of burning, sparks or produces smoke, do not continue using it: disconnect the supply only if safe to do so, keep people away and follow the site's emergency procedure. Do not use water on energised electrical equipment.

Ergonomics concerns fitting work to the person. Arrange the screen, keyboard and chair comfortably, reduce glare and take regular breaks from prolonged repetitive work. Avoid treating a single posture or fixed break interval as a medical prescription for everyone.

#rule-box("Safety first")[
  Do not troubleshoot by touching exposed live parts. If there is a risk of electric shock, smoke or fire, stop and get qualified help before thinking about a data file.
]

== 7.3 A Troubleshooting Sequence

First identify the symptom: what is not working, when did it start and what changed? Check simple, safe causes such as whether the device is switched on, a cable is properly connected and the correct printer is selected. Test one change at a time when practical, record the result and confirm that the original problem is resolved.

If a printer produces no page, check its status, paper, power and connection; consult the device's instructions and the operating system's print queue. A paper jam should be handled according to the manufacturer's guidance. A repeated fault, electrical hazard or uncertain internal repair should be escalated to an authorised technician. Restarting may resolve some temporary faults, but it is not proof that the underlying cause has been fixed.

== 7.4 Data Protection and Disposal

Updates from trusted sources can fix known defects. Use appropriate security software and access controls, but do not assume that any one tool detects every threat. Maintain separate backups and test restoration. Before disposal or transfer, follow an approved data-erasure process appropriate to the medium and organisational policy; deleting a visible file alone may not make its contents unrecoverable.

Electronic waste can contain materials that need careful handling. Use an authorised collection or recycling channel where available, rather than burning equipment or discarding batteries carelessly.

#trap-box("Repair, protection and backup are different")[
  A surge protector addresses surges, a UPS provides temporary power, and a backup supports data recovery. None alone performs all three roles.
]

== 7.5 Four Worked Examples
#worked-example(1, "Keep the airflow clear", tier: "FOUNDATION",
  [Which action is preventive maintenance? \ A. Covering ventilation openings while a computer runs \ B. Keeping ventilation openings clear \ C. Pouring water on a keyboard \ D. Ignoring a damaged cable],
  [Clear ventilation supports cooling and reduces overheating risk. The answer is *B*.])
#worked-example(2, "Temporary power", tier: "UTME STANDARD",
  [Which device can provide temporary battery power during an outage? \ A. Plotter \ B. Scanner \ C. UPS \ D. Mouse],
  [A UPS can supply temporary power within its capacity. The answer is *C*.])
#worked-example(3, "The first safe check", tier: "UTME STANDARD",
  [A printer does not print. Which is a reasonable first safe check? \ A. Check its power and connection \ B. Open its power supply \ C. Touch exposed wiring \ D. Pour liquid into the printer],
  [Simple external checks can identify common faults without an unsafe repair. The answer is *A*.])
#worked-example(4, "A copy that can be restored", tier: "JAMB CHALLENGE",
  [A laptop is lost. Which measure most directly helps recover its documents? \ A. Screen glare reduction \ B. A faster mouse \ C. An empty recycle bin \ D. A separate tested backup],
  [A separate recoverable backup can restore the files despite loss of the original. The answer is *D*.])

== 7.6 Two-Minute Set
#mcq(1, [Keeping a device's vents clear is an example of], [preventive maintenance], [printing], [file compression], [malware])
#mcq(2, [A UPS primarily provides], [a printed report], [temporary power], [a web address], [extra pixels])
#mcq(3, [A safe response to damaged electrical wiring is to], [touch the wire], [ignore it], [report it for qualified attention], [cover it with paper])
#mcq(4, [A backup is useful when], [it is the only copy], [it cannot be restored], [it replaces safe wiring], [data must be recovered])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "Clearing vents helps prevent overheating."), ("B", "A UPS supplies temporary power within its capacity."), ("C", "A qualified person should address electrical hazards."), ("D", "A recoverable backup supports restoration of data.")))
#concept-box("Recap card")[
  Prevent: clean appropriately, ventilate, update and back up. Diagnose safely: identify the symptom and check simple external causes. Escalate electrical hazards. A UPS, surge protector and backup each serve different purposes.
]
#chapter-checklist("Before moving on", (
  [I can distinguish preventive and corrective maintenance.],
  [I can explain a UPS and a surge protector.],
  [I can describe safe troubleshooting and escalation.],
  [I can explain why backups and safe disposal matter.],
))
#shortcut-box("Carry forward")[
  A healthy computer can communicate with others. Chapter 8 examines networks, the internet and safe online communication.
]
