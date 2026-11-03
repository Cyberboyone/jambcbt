"""Original networking and online safety questions; first answer is correct."""
RAW = '''
A computer network links devices to|exchange data and share resources|replace every application|eliminate all security risks|prevent all power cuts|A network enables communication and resource sharing among devices.
A network covering a school building is commonly a|LAN|CPU|pixel|worksheet|A local area network commonly covers a limited area such as a school.
A WAN generally covers|a wider geographical area than a LAN|only one processor register|only a paper document|one pixel|A wide area network connects devices or networks over a wider area.
The internet is|a worldwide network of interconnected networks|one single web page|a type of keyboard|a printer cartridge|The internet connects networks worldwide.
Wi-Fi is|a wireless networking technology|a guarantee of internet access|a paper storage medium|a processor register|Wi-Fi connects devices wirelessly to a network.
A local Wi-Fi network can|operate without internet access|exist only with a working web server abroad|replace all devices|never share local files|Wi-Fi can provide a local connection even without internet access.
Ethernet is commonly used for|wired network connections|printing on paper only|storing ink|recording sound directly|Ethernet commonly connects network devices by cable.
A switch commonly connects devices|within a local network|only across unrelated galaxies|only through paper|without any communication|A switch forwards traffic among connections on a local network.
A router primarily forwards traffic|between networks|between lines on one printed page|only inside a calculator screen|between sheets of paper|A router forwards packets between networks.
A wireless access point connects|wireless devices to a network|paper sheets to a printer|only RAM chips to a CPU|audio speakers to a desk|An access point provides wireless access to a network.
A home network box may combine|router, switch and access-point functions|only unrelated paper documents|a keyboard and printer ribbon|only a battery and mouse pad|A single home device can combine several networking functions.
An IP address is used to|identify a network interface for IP communication|identify the ink colour only|replace the user's password|denote the number of pages in a book|An IP address supports network communication using the Internet Protocol.
DNS helps resolve|domain names|speaker volume|paper size|chair height|DNS maps domain names to information including IP addresses.
A protocol is|a set of communication rules|a physical printer tray|a page margin|a desk lamp|Protocols define rules for communication.
HTTP is commonly used for|web communication|printing paper without software|replacing a CPU|reading magnetic-ink cheques|HTTP is a protocol commonly used for web resources.
HTTPS provides|protection for web data in transit|proof that every website is honest|a guarantee against phishing|unlimited internet speed|HTTPS protects communication in transit but does not guarantee a site's honesty.
SMTP is associated with|sending email between mail systems|printing documents|measuring pixels|cleaning a keyboard|SMTP is used for sending email between mail systems.
The World Wide Web is|a system of linked resources using the internet|identical to the whole internet|a physical cable only|a printer language only|The web is a system of linked resources accessed using internet services.
A browser is|software for accessing web resources|the entire internet|a network cable|a hard disk platter|A browser is an application for accessing and displaying web resources.
A search engine helps users|find indexed information|guarantee all search results are true|manufacture a router|replace every browser|Search engines help locate indexed content.
A URL identifies|a resource location|the entire computer hardware|a physical keyboard key|the user's identity with certainty|A URL identifies a resource such as a web page.
A website may contain|many web pages|only one physical cable|no resources by definition|only an email address|A website can contain multiple web pages and other resources.
A search result's high ranking|does not by itself prove accuracy|guarantees official endorsement|guarantees the latest date|guarantees the author's identity|Ranking alone does not establish truth or authority.
For examination requirements, a student should check|current official JAMB and institution sources|only an undated rumour|only a random message|the filename of a photo|Official current sources are the appropriate starting point for requirements.
An email address normally includes|a local part, @ and a domain|only a page number|a paper tray and cable|a CPU and monitor|An email address typically contains a local part, @ and a domain.
An email subject line should|summarise the message|contain the recipient's password|replace every attachment|be an IP router|The subject line helps recipients understand the message.
An email attachment is|a file included with a message|the entire internet|a printer cable|a network switch|An attachment is a file sent with a message.
The Bcc field can|hide a recipient's address from other recipients|guarantee privacy in all situations|replace authentication|encrypt every message automatically|Bcc can conceal recipient addresses, but it is not a complete privacy solution.
Phishing attempts to|deceive users into unsafe disclosure or action|improve physical ventilation|convert data to magnetic tape|print a hard copy|Phishing impersonates a trusted party or otherwise deceives users.
An unexpected request for a password should be|verified independently without sharing the password|answered immediately with the password|forwarded to everyone|trusted because it is urgent|Verify independently and never disclose passwords through unexpected requests.
Multi-factor authentication adds|another factor to the login process|a guarantee against every attack|an extra printer|more physical RAM|Multi-factor authentication requires more than one authentication factor.
A good password practice is to use|unique passwords for different accounts|one shared password for every account|a password posted publicly|only a username|Unique passwords reduce damage when one account is compromised.
A one-time code received for login should generally|remain private|be posted in a group chat|be sent to anyone claiming to be support|replace all other security|One-time authentication codes should not be shared with unexpected requesters.
A padlock symbol alone does not prove|that the site operator is honest|that a browser can display a page|that the user has a monitor|that a network exists|A fraudulent website can also use HTTPS.
A local network that lacks internet access can still|connect local devices|guarantee access to all websites|become a printer cartridge|replace the operating system|Local devices may communicate even if the network has no internet route.
A switch commonly uses which information to forward local frames?|MAC addresses|paper page numbers|printer ink levels|screen brightness|A switch commonly uses MAC addresses when forwarding local frames.
A router uses network-layer addressing to|forward packets between networks|bind paper pages|change screen colour|read an answer sheet|Routers forward packets according to network-layer information.
An independently verified web address is useful because|lookalike links can impersonate trusted sites|all links are official|a URL guarantees accuracy|a browser eliminates phishing|Checking a known official destination helps avoid deceptive links.
Comparing multiple independent sources helps|assess claims and evidence|guarantee every source is correct|replace checking dates|eliminate the need to identify authors|Comparing independent evidence can help assess reliability.
Which statement distinguishes internet and web?|the web is a service using the internet|the internet is a single web page|Wi-Fi and the internet are identical|a browser is the whole internet|The web uses internet connectivity but is not identical to the internet.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
