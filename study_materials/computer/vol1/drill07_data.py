"""Original safety and maintenance questions; first answer is correct."""
RAW = '''
Maintenance carried out before faults arise is|preventive maintenance|corrective maintenance only|printing|word processing|Preventive maintenance reduces the likelihood or impact of problems.
Repairing an existing fault is|corrective maintenance|preventive maintenance only|a backup|a spreadsheet formula|Corrective maintenance addresses an existing problem.
Keeping vents clear helps|maintain airflow|increase monitor resolution|replace backup copies|remove the need for electricity|Clear vents support ventilation and cooling.
Liquids near electrical equipment should be|kept away|poured into ventilation openings|used to clean live wiring|stored on the keyboard|Liquids can damage equipment and create electrical hazards.
Before external cleaning, a user should|follow manufacturer instructions and disconnect power when required|spray liquid into openings|touch exposed live conductors|ignore device guidance|Follow the maker's instructions and disconnect power as directed.
Internal electrical repairs should be performed by|qualified authorised personnel|any user touching live parts|a word processor|a search engine|Internal electrical work requires suitable training and authorisation.
A damaged power cable should be|reported for qualified attention|ignored indefinitely|handled while exposed conductors are live|covered with paper only|Damaged wiring can be hazardous and should be addressed safely.
If equipment produces smoke, the first priority is|personal safety and the emergency procedure|saving a font style|printing a report|checking a spreadsheet total|Stop using the equipment and follow safe emergency procedures.
Water should not be used on|energised electrical equipment|a dry cloth|a handwritten list|an empty paper tray|Water on energised electrical equipment can create a shock hazard.
A UPS can provide|temporary battery power|permanent unlimited electricity|an independent file backup by definition|a printed report|A UPS can supply temporary power within its rating and battery capacity.
A surge protector is designed to limit|damaging voltage surges within its specifications|all outages forever|every malware infection|all file deletion|A surge protector addresses voltage surges within its rated limits.
Which measure directly supports recovery of lost documents?|a separate tested backup|a monitor stand|a larger mouse pad|a paper clip|A tested backup provides a recoverable copy.
A UPS is not a substitute for|saving work and making backups|temporary battery power|an electrical connection|a battery|UPS power is temporary and does not replace saving or backup.
A surge protector is not a substitute for|safe wiring and backups|a power outlet|the equipment being protected|electricity|Safe wiring and backups remain necessary even with surge protection.
Ergonomics concerns|fitting work to the person|turning every file into a PDF|manufacturing transistors|formatting disks only|Ergonomics considers the fit between people and their work environment.
Reducing screen glare can help|make screen work more comfortable|increase storage capacity|convert RAM into ROM|replace a printer driver|Managing glare is one ergonomic measure.
Regular breaks from prolonged repetitive work can|support comfortable working habits|guarantee all injury is impossible|replace equipment maintenance|increase CPU clock speed|Breaks can support comfort, but no single measure guarantees safety.
A sensible first troubleshooting step is to|identify the symptom|open live electrical equipment|delete every file|replace all hardware immediately|Record what is wrong, when it started and what changed.
Checking one change at a time helps|identify which change affected the problem|guarantee every fault is repaired|eliminate the need to record results|increase the screen's pixel count|Testing changes separately makes their effects easier to identify.
A printer that will not print should first be checked for|power and connection|the colour of the desk|the user's shoe size|the wall paint brand|Power, connections and printer status are simple safe checks.
If a printer reports a paper jam, a user should|follow the manufacturer's instructions|force exposed live parts|pour water into the printer|ignore electrical hazards|Use the maker's guidance to clear a jam safely.
An unresolved electrical hazard should be|escalated to qualified personnel|handled by touching exposed wiring|ignored while continuing work|treated as a font problem|Escalate hazardous or uncertain repairs to authorised personnel.
After a troubleshooting change, the next step is to|verify whether the original problem is resolved|assume success without testing|delete every backup|disconnect the screen permanently|Testing confirms whether the original symptom has been resolved.
A restart can|resolve some temporary faults|prove the underlying cause is always fixed|guarantee no future outage|replace every repair|Restarting may help temporarily but does not prove the cause is fixed.
Security updates should be obtained from|trustworthy sources|any unknown attachment|a random stranger's message|an unplugged monitor|Use trusted update sources and check compatibility.
A sound precaution before a major update is|backing up important data|deleting all recovery copies|sharing passwords|disabling all safety controls|Backups support recovery if an update causes problems.
Malware protection software|can help detect threats but is not perfect|guarantees detection of every threat|replaces all backups|physically cools the processor|No security tool detects every possible threat.
A backup should be|a separate recoverable copy|the only copy on one drive|only a filename|a printer cable|A backup is another copy that can be restored.
Testing restoration checks|whether the backup is usable|whether the keyboard has enough keys|the monitor's colour|the printer's paper size only|Restoration testing verifies that backup data can be recovered.
File deletion alone may not|make contents unrecoverable|remove an item from its usual location|change a folder listing|require software|Some deleted data can remain recoverable; use an approved erasure process when needed.
Before transferring a storage device, an organisation should|follow its approved data-erasure policy|assume renaming removes the data|publish all confidential files|ignore privacy requirements|An appropriate erasure procedure helps protect sensitive data.
Electronic waste should be handled through|an appropriate collection or recycling channel|open burning|careless battery disposal|water poured on electronics|Authorised collection or recycling supports safer handling.
A hot, dusty environment can|increase equipment risk|guarantee perfect cooling|replace ventilation|turn RAM into ROM|Heat and dust can impair cooling and damage equipment.
Blocking ventilation openings can|increase overheating risk|improve airflow automatically|create a backup|upgrade software|Blocked vents restrict airflow and may cause overheating.
A maintenance record can help a technician|track symptoms, changes and outcomes|physically replace a processor|guarantee no future fault|convert a mouse into a speaker|Records help identify patterns and document what has been tried.
A qualified technician should address|exposed live conductors|a simple document title|a typo in a paragraph|a spreadsheet column label|Exposed live electrical parts present a hazard requiring qualified attention.
Which is preventive rather than corrective?|clearing dust according to the maker's guidance before failure|replacing a failed component|repairing a broken power supply|replacing a damaged cable after failure|Preventive action is taken before a fault occurs.
Which is corrective rather than preventive?|replacing a failed cooling fan|keeping vents clear|testing a backup|following a cleaning schedule|Replacing a fan after failure addresses an existing fault.
A UPS's useful runtime depends partly on|battery capacity and connected load|file extension alone|the monitor's colour|the number of folders only|Runtime depends on battery capacity, load and the device's condition.
A safe approach to an unexpected burning smell is to|stop use, disconnect only if safe, and seek help|continue working until smoke increases|open the power supply|pour water onto live equipment|Stop work and follow emergency procedures without exposing yourself to danger.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
