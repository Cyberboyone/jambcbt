"""Chapter 3 and Chapter 4 figures — character, theme and setting."""

from common import AMBER, BLUE, GREEN, MUTED, NAVY, PURPLE, RED, SLATE
from figlib import card_row, steps_fig, table_fig, tree_fig


def main() -> None:
    # ── Chapter 3 ──────────────────────────────────────────────────────────
    tree_fig(
        "ch03_map.svg",
        "Who stands where in The Lekki Headmaster",
        "Mr Adebepo Adewale — Bepo",
        [
            ("FAMILY", "Seri (wife, nurse in the UK); Nike and Kike (children, with her). The pressure at home."),
            ("STARDOM STAFF", "Gloss (MD), Apeh (VP), Audu (fine art), Ope Wande (physics, pastor), Fafore (English), Amos (accountant), Oyelana (CRS), Beke Egbin (counsellor), Titi (nurse)."),
            ("BOARD", "Chief Mrs Solape Bayo, chairman, the MD's mother. The money and the class anxiety."),
            ("PARENTS & STUDENTS", "Mrs Ignatius and Favour; Mr Guta; the Ladele family; Banky and Tosh; Chief Didi Ogba."),
            ("OUTSIDERS", "Egi Meko and Beesway; Mr Ogo and Fruitful Future; Sola, Jare and Hope abroad; Tai the agent."),
        ],
        intro="Five circles, and every named character in the book sits in one of them.",
        note="A character question is almost always a question about which circle a person belongs to, and what that circle is for in the story.",
    )

    card_row(
        "ch03_bepo.svg",
        "The five things that define Bepo",
        [
            ("The method", "He settles quarrels by finding the fact that decides them. The grammar row, the cooperative and the prefect election are all the same scene."),
            ("The record", "Twenty-four years at Stardom, from Stardom Kiddies to the secondary school. The length is the argument: this is not a job he drifted into."),
            ("The refusal", "He would not perform the rite at Fruitful Future and would not keep quiet at Beesway. His integrity has already cost him once."),
            ("The tell", "He speaks with one hand in his pocket and says *other things being equal*; his crucifix and his aphorisms mark a man who teaches even when he is not in class."),
            ("The wound", "He loves the school and cannot say so without weeping. The breakdown in Chapter 1 is not weakness; it is the price of the choice."),
        ],
        cols=2,
        note="Note what the novel does *not* give him: no scene of private indulgence, no bribe taken, no revenge. The character is drawn by refusals.",
    )

    table_fig(
        "ch03_functions.svg",
        "What each kind of character is doing in the book",
        ["Character", "Function", "The scene that proves it"],
        [
            ("Mrs Grace Apeh", "The steady second. She holds the school together when Bepo cannot.", "She takes over the assembly in Chapter 1 and addresses the students after he leaves."),
            ("Mr Audu", "Comic relief that tells the truth. His jokes name the thing everyone is pretending not to see.", "The grammar row in Chapter 6, where a joke ends a sacking."),
            ("Pastor Ope Wande", "The conscience with a collar. He is called when the problem is spiritual, and he fails, which is the point.", "Ten minutes beside Bepo in Chapter 1 with no answer."),
            ("Mrs Ibidun Gloss", "The employer. Firm, cost-conscious, occasionally wrong, never a villain.", "She orders Fafore's dismissal, then laughs when she is corrected."),
            ("Chief Mrs Solape Bayo", "The board's class fear in one voice.", "The snake-in-the-roof speech, and the cap on cooperative loans."),
            ("Egi Meko", "Bepo's negative image — the school owner who will do anything.", "The night at Beesway, and the cow buried alive."),
        ],
        weights=[1.2, 2.3, 2.5],
        intro="A character exists to do a job in the story. Name the job and the trait question answers itself.",
        note="Villains in this novel are not wicked people; they are people with a interest. That is why the book reads as realism rather than melodrama.",
    )

    table_fig(
        "ch03_pairings.svg",
        "The contrasts the novel is built on",
        ["Pair", "One side", "The other side"],
        [
            ("Bepo / Egi Meko", "Refuses the rite, loses the school, keeps his name", "Accepts the rite, keeps the school, loses his peace"),
            ("Bepo / Seri", "Stay and serve, on ₦400,000 a month", "Japa and earn, on £10,000 a month"),
            ("Stardom / Beesway", "Rules, complaints and a board that argues", "Secrecy, ritual and a director who cannot be corrected"),
            ("Bepo / Mr Ogo", "A school built on teaching", "A school built on a sacrifice"),
            ("Chapter 1 / Chapter 12", "Dusk: he cannot speak", "Dawn: he speaks, and stays"),
        ],
        weights=[1.2, 2.5, 2.5],
        note="Contrast questions are answered by naming both halves. An option that describes only one side of a pair is the commonest trap in the section.",
    )

    steps_fig(
        "ch03_method.svg",
        "A four-step method for any character question",
        [
            ("NAME THE ACT", "Find the one action the question points at. Not the person's job, the deed."),
            ("ADJECTIVE", "Choose the word the deed supports — patient, obstinate, generous, afraid."),
            ("TEST IT", "Ask what the opposite trait would have produced. If the scene would read the same, the trait is wrong."),
            ("FIND THE LINE", "Quote the clause in your head. If no clause supports the word, the option is a guess dressed as an answer."),
        ],
        intro="Trait questions are evidence questions wearing a different hat.",
        note="“Bepo is best described as …” is never answered by *a headmaster*. The job is the setting, not the character.",
    )

    # ── Chapter 4 ──────────────────────────────────────────────────────────
    table_fig(
        "ch04_themes.svg",
        "The six themes, and the evidence for each",
        ["Theme", "What the novel says", "Where to point"],
        [
            ("Japa and the new slavery", "Migration is not simply progress; it repeats an old departure, sometimes on worse terms.", "Chapter 9 at Badagry; the dream in Chapter 12"),
            ("Integrity in education", "A school can be run honestly, and honesty costs the person who keeps it.", "Chapter 7 at Beesway; Chapters 5 and 6 at Stardom"),
            ("Leadership and its price", "Authority is lonely, and the leader who refuses to compromise is the one who weeps at assembly.", "Chapter 1; the farewell in Chapter 11"),
            ("Family against duty", "Love at home and duty at work pull in opposite directions, and neither is a vice.", "Seri's calls in Chapter 2; the children already abroad"),
            ("Belief, ritual and superstition", "The desire for success without work is the corruption the novel fears most.", "Egi Meko's cow; Mr Ogo's offer"),
            ("Heritage and nation", "You cannot love a country you have never seen; the excursions are an education in belonging.", "Chapter 9 across Nigeria and at Badagry"),
        ],
        weights=[1.4, 2.8, 2.0],
        intro="A theme is a claim the whole book makes, not a subject it mentions.",
        note="When an option names a theme with no scene behind it — *the evils of colonialism*, say — it is usually the wrong one.",
    )

    tree_fig(
        "ch04_japa.svg",
        "The japa argument, both ways",
        "Should Bepo go?",
        [
            ("THE CASE FOR", "Seri earns £10,000 a month; his UK post pays £3,600; the family is already split; the marriage is on the brink; his own salary is ₦400,000."),
            ("THE CASE AGAINST", "Twenty-four years of work; a school that needs him; a mission unfinished; a country that trained him; a history at Badagry that makes departure feel like sale."),
            ("WHAT SETTLES IT", "Not the money. The dream on the plane, and the Monday morning he walks back through the gate."),
        ],
        intro="The novel gives the case for leaving every good line, and then decides against it.",
        note="This is why a question that asks “why does Bepo stay?” cannot be answered with *because he was poorly paid*. The pay is the pressure, not the reason.",
    )

    table_fig(
        "ch04_settings.svg",
        "The settings, and what each one is for",
        ["Setting", "What it is", "What it carries"],
        [
            ("Lekki, Lagos", "The affluent island suburb, and Stardom Schools inside it", "Money beside want, and a school that must look successful"),
            ("Stardom Schools", "The workplace: assembly ground, MD's office, staff room, classrooms", "The institution Bepo serves; the stage for every moral test"),
            ("Beesway Group of Schools", "His former school, recalled in Chapter 7", "What education becomes when the owner is unchecked"),
            ("Fruitful Future School", "The small school he co-founded, recalled in Chapter 7", "The honest attempt that failed on economics, not on principle"),
            ("Badagry", "Akran's palace, the First Storey Building, the Black Heritage Museum, the Point of No Return", "History, and the accusation it makes of the present"),
            ("Ibadan and the road", "The passport office, the NIN desk, the expressway", "The state as an obstacle course, and the patience it demands"),
        ],
        weights=[1.3, 2.5, 2.4],
        intro="Six settings, and only one of them is abroad — which is itself the novel's argument.",
        note="Setting questions often ask what a place *represents*. Lekki is not simply wealthy; it is a place where wealth and failure share a wall.",
    )

    card_row(
        "ch04_heritage.svg",
        "Badagry, and the three ideas it carries",
        [
            ("The fact", "The students visit the Akran's palace, the First Storey Building and the Black Heritage Museum, and stand at the Point of No Return."),
            ("The analogy", "Africans once left in chains; they now leave with visas. Bepo cannot stop hearing the rhyme."),
            ("The irony", "A man about to emigrate is condemning emigration, and knows it. The chapter is written from inside that contradiction."),
        ],
        cols=3,
        note="When a question asks for the significance of the Badagry visit, the answer is the analogy, not the itinerary.",
    )

    table_fig(
        "ch04_integrity.svg",
        "Beesway and Stardom, side by side",
        ["Test", "At Beesway", "At Stardom"],
        [
            ("Who decides", "One director, answerable to nobody", "An MD, a board and a chairman who disagree in front of you"),
            ("When a parent complains", "The teacher is removed, whatever the truth", "The complaint is heard, and the MD can be corrected"),
            ("When money is short", "A rite is performed", "Loans are capped and the accounts are read"),
            ("What Bepo does", "Argues, is struck, and leaves", "Argues, is heard, and stays — until he decides to"),
        ],
        weights=[1.4, 2.6, 2.6],
        note="Stardom is not perfect; it is *answerable*. That difference is the novel's modest, adult hope.",
    )
