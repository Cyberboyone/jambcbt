#import "template.typ": *

#chapter-opener(8, "Networks, the Internet and Online Communication",
  subtitle: "How computers connect, exchange data and share resources",
  syllabus-ref: "INFORMATION AND COMMUNICATION TECHNOLOGY", utme-weight: "Applied skills")
#focus-radar(
  objectives: (
    "Distinguish a local network from a wide-area network and the internet.",
    "Explain the roles of a router, switch and wireless access point.",
    "Distinguish a browser, website, URL and search engine.",
    "Apply basic email and online safety practices.",
  ),
  hotspots: (
    "The web is a service using the internet; the two terms are not synonyms.",
    "A router forwards traffic between networks; a switch connects devices on a local network.",
    "An email address is not the same kind of address as a URL.",
    "HTTPS protects data in transit but does not prove that a website is honest.",
  ),
  trap-summary: "A padlock or HTTPS connection does not guarantee that the organisation behind a website is trustworthy.",
)

== 8.1 Networks and Their Scope

A *computer network* links devices so they can exchange data or share resources. A *local area network* (LAN) covers a limited area such as a home, school or office; a *wide area network* (WAN) connects devices or networks over a wider area. Exact geographical boundaries are not fixed. The *internet* is a worldwide network of interconnected networks.

A network can use wired or wireless links. Ethernet commonly connects devices by cable; Wi-Fi is a family of wireless networking technologies. Wi-Fi connects a device to a local network, but that local network need not have internet access. The speed experienced by a user depends on many factors, including equipment, signal conditions and the internet connection.

#figure(
  grid(columns: (1fr, auto, 1fr, auto, 1fr), column-gutter: 4pt, align: center + horizon,
    block(fill: jamb-mint, inset: 8pt, radius: 5pt)[*DEVICES* \ computer and phone], [→],
    block(fill: info-bg, inset: 8pt, radius: 5pt)[*LOCAL NETWORK* \ switch or Wi-Fi], [→],
    block(fill: tip-bg, inset: 8pt, radius: 5pt)[*ROUTER* \ other networks]),
  caption: [8.1 — A simplified connection from devices through a local network to other networks.],
)

== 8.2 Devices, Addresses and Protocols

A *switch* connects devices on a local network and forwards frames to the appropriate connection using information such as MAC addresses. A *router* forwards packets between networks using network-layer addressing. A wireless *access point* connects wireless devices to a network. Home equipment often combines router, switch and access-point functions in one box.

An *IP address* identifies a network interface for communication using the Internet Protocol. The Domain Name System (DNS) helps translate domain names into information such as IP addresses. A *protocol* is a set of communication rules: HTTP and HTTPS are used for web communication, while SMTP is used for sending email between mail systems. The details of mail retrieval and delivery depend on the system.

#rule-box("Name the role")[
  The switch connects within a local network; the router forwards between networks; DNS helps resolve names. One physical device may perform several of these roles.
]

== 8.3 The Web and Search

The *World Wide Web* is a system of linked resources accessed over the internet, commonly through HTTP or HTTPS. A *browser* is software for accessing and displaying web resources. A *search engine* helps find indexed information. A *URL* identifies a resource, for example a web page. A website may contain many web pages; a browser is not a search engine merely because it can display one.

Search terms matter. Use distinctive words, compare independent sources and check the author, date and evidence. A high search ranking does not by itself establish accuracy. For admission requirements and examination details, consult current official JAMB and institution sources.

== 8.4 Email and Online Safety

An email address typically has a local part, an `@` symbol and a domain. The *subject* summarises the message; an *attachment* is a file included with it. The To and Cc fields identify recipients; Bcc can hide a recipient's address from other recipients, but it is not a substitute for checking an organisation's privacy rules.

*Phishing* attempts to trick a person into disclosing information or taking an unsafe action, often by impersonating a trusted organisation. Check the sender and destination independently, be cautious with unexpected links and attachments, and avoid sharing passwords or one-time codes. Use unique passwords and multi-factor authentication where available. HTTPS protects the connection against certain forms of interception; a fraudulent site can still use HTTPS.

#trap-box("Internet, web and Wi-Fi")[
  The internet connects networks; the web is one service that uses it; Wi-Fi is a wireless connection technology. A local Wi-Fi connection can exist without internet access.
]

== 8.5 Four Worked Examples
#worked-example(1, "Find a page", tier: "FOUNDATION",
  [Which program is designed to display web pages? \ A. Browser \ B. Printer \ C. Power supply \ D. Scanner],
  [A browser retrieves and displays web resources. The answer is *A*.])
#worked-example(2, "Between networks", tier: "UTME STANDARD",
  [Which device primarily forwards packets between networks? \ A. Keyboard \ B. Router \ C. Monitor \ D. Projector],
  [A router forwards traffic between networks. The answer is *B*.])
#worked-example(3, "The suspicious message", tier: "UTME STANDARD",
  [An unexpected message demands a password through a link. What is the safer response? \ A. Send the password immediately \ B. Forward it to everyone \ C. Verify through an independently known official channel \ D. Disable all security settings],
  [Verify the request independently and do not disclose the password through an unexpected link. The answer is *C*.])
#worked-example(4, "A local connection", tier: "JAMB CHALLENGE",
  [Two laptops connect through Wi-Fi and share a local file, but the router has no internet connection. Which is true? \ A. Wi-Fi cannot operate without the internet \ B. Both laptops must be on the web \ C. Every network is a WAN \ D. A local wireless network can work without internet access],
  [Wi-Fi can connect devices locally without access to the internet. The answer is *D*.])

== 8.6 Two-Minute Set
#mcq(1, [A network covering a school building is commonly a], [LAN], [processor], [pixel], [worksheet])
#mcq(2, [DNS helps resolve], [printer ink], [domain names], [battery charge], [page margins])
#mcq(3, [An attempt to obtain a password by impersonation is], [formatting], [booting], [phishing], [printing])
#mcq(4, [The World Wide Web is], [identical to every local network], [a type of keyboard], [a storage drive], [a service using the internet])
#answer-key-grid(("A", "B", "C", "D"))
#answer-notes((("A", "A school network is a typical LAN."), ("B", "DNS helps resolve domain names."), ("C", "Phishing impersonates a trusted party to deceive users."), ("D", "The web uses the internet; it is not the whole internet.")))
#concept-box("Recap card")[
  LANs and WANs describe network scope; the internet connects networks. A switch, router and access point have different roles. The web uses the internet; a browser displays resources and a search engine helps find them. Verify suspicious requests independently.
]
#chapter-checklist("Before moving on", (
  [I can distinguish LAN, WAN, internet, web and Wi-Fi.],
  [I can describe the roles of a switch, router and access point.],
  [I can distinguish a browser, search engine and URL.],
  [I can identify phishing and explain an independent verification step.],
))
#shortcut-box("Carry forward")[
  You have followed data through a computer and across a network. The next stage is to practise the concepts, identify weak areas and apply them under timed conditions.
]
