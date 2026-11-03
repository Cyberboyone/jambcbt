"""Forty original cybersecurity questions; the first choice is correct."""
RAW = '''
Preventing unauthorised disclosure primarily supports|confidentiality|screen brightness|paper size|battery colour|Confidentiality concerns preventing unauthorised disclosure.
Protecting data against improper alteration primarily supports|integrity|printer speed|desk height|font colour|Integrity concerns preventing unauthorised or improper changes.
Making data accessible to authorised users when needed primarily supports|availability|paper thickness|camera position|font size|Availability concerns access for authorised users when needed.
A potential cause of harm to a system is a|threat|keyboard layout|page number|diagram caption|A threat is a potential cause of harm.
A weakness that can be exploited is a|vulnerability|guaranteed protection|printed report|physical desk|A vulnerability is a weakness that can be exploited.
Risk assessment considers|threats, exposure or weaknesses and possible consequences|only a computer's colour|only a document title|only a user's handwriting|Risk assessment considers potential harm and the circumstances that enable it.
Software designed for harmful or unauthorised purposes is|malware|a backup by definition|a power cable|a privacy notice|Malware is software intended for harmful or unauthorised activity.
A virus commonly|attaches to a host and spreads under suitable conditions|is a type of chair|guarantees system safety|is always a physical electrical fault|A virus can attach to a host and spread when conditions permit.
A worm can commonly|spread across systems without attaching to a host file in the same way as a virus|only be a printer cartridge|guarantee confidentiality|be an operating-system licence|A worm can spread across systems without host-file attachment in the same way as a virus.
Ransomware commonly|denies access and demands payment|provides a guaranteed backup|replaces a monitor stand|improves every password|Ransomware commonly disrupts access and demands payment.
Phishing attempts to|deceive users into unsafe disclosure or action|improve cooling airflow|produce a paper copy|calculate a mean|Phishing deceives users, often through impersonation.
An unexpected message requests a password. The recipient should|keep it private and verify through a known channel|send it immediately|publish it publicly|disable account protection|Use an independently known channel and do not disclose passwords to unexpected requesters.
An unexpected caller asks for a one-time code. A safe response is to|keep the code private and verify independently|give the code to anyone claiming to be support|post the code in a group|use it as a public username|One-time codes should not be disclosed to unexpected requesters.
A familiar logo in a message|does not by itself prove the sender is genuine|guarantees authenticity|guarantees a link is safe|replaces independent verification|A fraudulent message can copy a familiar logo.
HTTPS primarily protects|web data in transit under the relevant connection|the honesty of every site operator|every user's device from malware|every statement on a page from error|HTTPS protects a connection but does not guarantee a site's honesty.
A strong password practice is to|use unique passwords for different accounts|reuse one password everywhere|post passwords publicly|share passwords with unexpected callers|Unique passwords can limit damage if one account is compromised.
Multi-factor authentication uses|more than one authentication factor|two different usernames necessarily|only a printer|a longer filename|Multi-factor authentication combines more than one factor type.
Something a user knows can be|a password|a physical token held by the user|a fingerprint as a physical characteristic|a printed report|A password is an example of a knowledge factor.
Something a user has can be|a suitable authentication token|a memorised password|a person's fingerprint|a job title|A token possessed by a user can be a possession factor.
Something a user is can be represented by|a biometric characteristic|a memorised password|a paper folder name|a network cable|A biometric characteristic can be an inherence factor.
Two passwords alone are not automatically multi-factor because|both can be knowledge factors|passwords are physical actuators|they are always biometrics|they are both backups|Two passwords may both belong to the same knowledge-factor category.
A software patch can|reduce a known vulnerability|guarantee removal of every risk|replace all backups|provide unlimited electricity|A patch can fix a known weakness without eliminating every risk.
Software updates should normally be obtained from|trustworthy sources|unexpected anonymous attachments|any message claiming urgency|a paper tray|Trusted update sources reduce the risk of installing harmful software.
Limiting user access to what is needed supports|appropriate access control|unlimited disclosure|guaranteed error-free software|increased screen size|Access should be limited according to authorised needs and policy.
A backup is|a separate recoverable copy of data|the only copy of a document|an encryption key by definition|a power supply|A backup is another copy that can be restored.
Testing backup restoration helps|check that data can be recovered|guarantee no future attack|increase password length|repair exposed wiring|Restoration testing checks whether the backup is usable.
Encryption transforms data so that|authorised parties with the appropriate key can recover it under the scheme|everyone can read it without any key|it can never be lost|all users automatically have permission|Encryption protects data according to the scheme and key handling.
Encryption is not a substitute for|appropriate access control and backups|the existence of data|a transformation method|key handling|Controls complement one another and address different risks.
If an authorised user decrypts data and deliberately shares it, encryption alone|does not prevent that subsequent disclosure|guarantees the user cannot share it|turns the data into hardware|automatically revokes every permission|Encryption cannot by itself prevent every action by an authorised recipient.
Personal data can include information that|identifies or relates to an individual depending on context and law|only names printed on paper|never has privacy implications|must always be public|Whether information is personal depends on context and applicable law.
For a classroom exercise, a safer general choice is|fictional or appropriately authorised data|publishing real passwords|sharing private records without checking|assuming all student data are public|Fictional or authorised data can avoid unnecessary exposure.
Before sharing personal information, a user should|consider authorisation, purpose, policy and applicable law|assume technical access is permission|publish the information everywhere|ignore the context|Appropriate handling depends on authorisation, purpose and relevant rules.
A response to a suspected security incident should follow|the organisation's reporting and response procedures|a random stranger's instructions|only the computer's colour|a rule to share all passwords|Follow the relevant reporting and incident-response process.
A suspected fraudulent message should not be|forwarded widely without warning or verification|reported through an appropriate channel|checked using a known official contact|treated cautiously|Sharing suspicious messages can spread the risk.
A ransomware incident that blocks access to records directly affects|availability|only screen colour|only printer ink|only a filename's length|Preventing authorised access affects availability.
An attacker secretly changes a stored mark. This directly affects|integrity|only display brightness|only physical desk position|only battery colour|Unauthorised alteration affects data integrity.
An unauthorised person reads private records. This directly affects|confidentiality|only paper size|only keyboard shape|only screen resolution|Unauthorised disclosure affects confidentiality.
A suspicious request is best verified using|a previously verified official contact channel|only contact details in the suspicious message|a link chosen by an unknown sender|an unrelated social-media rumour|Independent verification avoids relying on the potentially fraudulent message.
No single safeguard guarantees complete security because|different risks require complementary controls|a backup is a printer|security never involves people|every system is identical|Authentication, updates, access control and backups address different risks.
A person should access another account to investigate an incident only|when appropriately authorised under the relevant procedures|whenever curious|whenever an account appears unlocked|without regard to policy|Incident response must remain within authorised procedures and applicable rules.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
