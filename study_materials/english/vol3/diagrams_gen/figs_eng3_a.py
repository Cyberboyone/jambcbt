"""Chapter 1 and Chapter 2 figures — the reading text in the exam, and the plot."""

from common import AMBER, BLUE, GREEN, MUTED, NAVY, PURPLE, RED, SLATE
from figlib import card_row, steps_fig, table_fig, tree_fig


def main() -> None:
    # ── Chapter 1 ──────────────────────────────────────────────────────────
    table_fig(
        "ch01_four_shapes.svg",
        "The four question shapes the reading text uses",
        ["Shape", "How it is worded", "Where the answer lives"],
        [
            ("Fact", "“Who …?”, “What happened when …?”, “How much …?”",
             "One clause in one chapter. The other three options name people or events from elsewhere in the book."),
            ("Sequence", "“What happened immediately before …?”, “Arrange these in order”",
             "The scene itself, read forwards. The trap is a true event that belongs to another chapter."),
            ("Character", "“Bepo's reaction shows that he was …”, “Mrs Gloss is best described as …”",
             "An action plus the adjective it supports. Never the character's job title alone."),
            ("Theme / technique", "“The episode illustrates …”, “The title suggests …”, “The novel is narrated …”",
             "The pattern behind several chapters, not the scene in front of you."),
        ],
        weights=[0.9, 2.2, 2.6],
        intro="Ten questions are set from the text, and nine of them are one of these four shapes.",
        note="Learn to name the shape before you read the options. A fact question is decided by memory of a clause; a theme question never is.",
    )

    card_row(
        "ch01_fact_file.svg",
        "The four columns of a chapter card",
        [
            ("1 · What happens", "One line, in the order it happens, in your own words. If you cannot write the line, you have not read the chapter."),
            ("2 · Who is there", "Every named person who acts, speaks or is spoken about. JAMB sets questions on the third servant as readily as on the principal."),
            ("3 · What it shows", "The trait, theme or turning point the scene exists for. This is the column the interpretive questions come from."),
            ("4 · The line", "One short quotation — a proverb, an insult, a promise. The novel's style questions are almost always answered from a line you can find again."),
        ],
        cols=2,
        note="Twelve chapters, twelve cards, four columns. The file is the revision; the novel is the reading.",
    )

    steps_fig(
        "ch01_two_reads.svg",
        "Two reads, and what each one is for",
        [
            ("READ 1\nSTORY", "Read straight through with no pen. Get the shape of the story and the names into your head."),
            ("READ 2\nCARD", "Read again with the twelve cards open. Fill one card per chapter as you finish it."),
            ("READ 3\nLINES", "A week later, read only your cards and the twelve quotations. Twenty minutes."),
            ("READ 4\nTEST", "Answer forty questions from a bank. Every wrong answer goes back to a card."),
        ],
        intro="The novel is short; the mistake is reading it three times in the same way.",
        note="A candidate who has made the cards can revise the whole text in the last week. A candidate who has only read it has to read it again.",
    )

    table_fig(
        "ch01_lie_shapes.svg",
        "Five ways a wrong option is built",
        ["The lie", "What it looks like", "How to kill it"],
        [
            ("The wrong name", "A real character, but not the one who did it", "Match the actor to the action, not just to the chapter"),
            ("The wrong chapter", "A real event, placed one chapter early or late", "Put the event on the timeline before choosing"),
            ("The half-truth", "The first half is right and the second half is invented", "Read the whole option; the turn usually comes after the comma"),
            ("The true irrelevance", "True of the novel, but not what the question asked", "Re-read the question's last three words"),
            ("The overstatement", "Always, never, entirely, only", "A novel rarely supports an absolute; find the exception"),
        ],
        weights=[1.0, 2.1, 2.0],
        intro="The right answer is not the only sensible sentence — it is the only one the text supports.",
        note="Three of these five can be eliminated without knowing the answer, which is why elimination is worth teaching before memory.",
    )

    table_fig(
        "ch01_read_plan.svg",
        "A four-week reading plan that fits beside school",
        ["Week", "What you do", "Minutes a day", "What you should have at the end"],
        [
            ("1", "Read Chapters 1–6 once, straight through", "25", "the story in your head, nothing written"),
            ("2", "Read Chapters 7–12 once, then make cards for 1–6", "30", "six cards, six quotations"),
            ("3", "Make cards for 7–12; answer 40 questions", "30", "twelve cards, a first score"),
            ("4", "Read the cards and quotations only; sit a full paper", "20", "the text in twenty minutes, and a time"),
        ],
        weights=[0.5, 2.3, 0.8, 2.1],
        note="The plan assumes the novel is about sixty pages. If your copy is longer, add a week rather than a minute.",
    )

    # ── Chapter 2 ──────────────────────────────────────────────────────────
    tree_fig(
        "ch02_three_movements.svg",
        "The story in three movements",
        "Dusk to Dawn — one term, one decision",
        [
            ("PRESSURE\nCh 1–4", "The breakdown, the enticement, the migration tales, the visa that is denied. The decision is announced before we know why it costs so much."),
            ("THE SCHOOL\nCh 5–8", "Four episodes from Bepo's working life: the cooperative, the grammar row, the ritual, the unfinished missions. Each one shows what he would be leaving."),
            ("THE DECISION\nCh 9–12", "Heritage, passport, farewell, flight. The past is put in front of him at Badagry, and Dawn reverses Dusk."),
        ],
        intro="Twelve chapters, and the middle eight are the argument for staying.",
        note="A sequence question almost always asks you to place an event inside one of these three movements. Name the movement first and the order usually follows.",
    )

    table_fig(
        "ch02_twelve.svg",
        "The twelve chapters, in one line each",
        ["Ch.", "Title", "What happens"],
        [
            ("1", "Dusk", "Bepo breaks down at morning assembly and cannot say why."),
            ("2", "The Enticement", "Five days later he admits he is leaving for the UK; Seri and the children are already there."),
            ("3", "Migration Tales", "Colleagues and friends trade stories of those who japa — the successes and the humiliations."),
            ("4", "A Case of Visa Denied", "A parent's family collapses when a visa medical reveals a paternity secret."),
            ("5", "Snake in the Roof", "Cars on school land lead the board to the cooperative's ₦95 million and a cap on loans."),
            ("6", "Ade as Well as Jide COMES vs. COME", "A parent demands a teacher's sack over a sentence the teacher got right."),
            ("7", "Ritualists", "Bepo remembers Beesway, the cow buried alive, and the night he left."),
            ("8", "Missions Unaccomplished", "The Banky–Tosh feud, the prefect election and the Invention Club he will not finish."),
            ("9", "Laughing Waterfalls", "Excursions across Nigeria end at Badagry, where the past accuses the present."),
            ("10", "Passport Pains", "Bepo renews an expired passport and meets the state up close."),
            ("11", "Point of No Return", "The school's farewell: a match, a debate, a drama, and a shout he cannot explain."),
            ("12", "…Dawn", "At the airport he dreams of the slave ship, and on Monday he walks back in."),
        ],
        weights=[0.4, 2.4, 4.2],
        row_size=8.6,
        note="Learn the titles in order. A question that names a chapter is a free mark, and the titles themselves carry the structure: Dusk opens, Dawn closes.",
    )

    steps_fig(
        "ch02_timeline.svg",
        "The present-tense storyline, minute by minute",
        [
            ("ASSEMBLY", "Chapter 1. Bepo breaks down in front of the school; the MD sends for Pastor Ope Wande."),
            ("FIVE DAYS", "Chapter 2. He tells the staff he is leaving. The farewell machinery begins."),
            ("THE ROUND", "Chapters 3–10. The visits, the episodes and the errands that fill the wait."),
            ("FAREWELL", "Chapter 11. Three days of events, ending with the drama that makes him shout."),
            ("SATURDAY", "Chapter 12. 3 p.m. he leaves home; 5 p.m. boarding; the dream; the plane he does not take."),
            ("MONDAY", "Chapter 12. The MD addresses a school in mourning, and Bepo walks through the gate."),
        ],
        intro="Six beats hold the whole novel together.",
        note="Everything else in the book is either a flashback or an episode that fills the wait. When a question says “immediately before”, it is asking about these six.",
    )

    table_fig(
        "ch02_flashback.svg",
        "The flashbacks, and what each one is doing there",
        ["Chapter", "Goes back to", "Why the novel needs it"],
        [
            ("2", "Bepo's twenty-four years at Stardom, from Kiddies to the secondary school", "Establishes what leaving costs, before the reader has seen a single school day"),
            ("3", "Jare, Hope and Sola — three migrants, three outcomes", "Answers the question the reader is already asking: is abroad better?"),
            ("7", "Beesway Group of Schools; the night of the cow; Fruitful Future", "Shows the corruption he has already refused once"),
            ("8", "The prefect election and the feud behind it", "Shows the work left undone, and the school's own troubles"),
            ("9", "The excursion programme, ending at Badagry", "Puts slavery beside japa and makes the title of Chapter 11 inevitable"),
        ],
        weights=[0.6, 2.6, 2.6],
        intro="The novel moves between the term in front of Bepo and the twenty-four years behind him.",
        note="A flashback question usually asks what the memory explains, not what happened in it. Read the sentence after the flashback ends.",
    )

    card_row(
        "ch02_sequence.svg",
        "Four moves that settle any sequence question",
        [
            ("Anchor", "Find the one event you are certain about and put it first or last in the list. That usually removes two options."),
            ("Chapter, then scene", "Place each event in its chapter before you place it in its scene. Chapters are easier to order than moments."),
            ("Watch the flashbacks", "A memory of something earlier can be narrated later. Order the telling, not the remembered date."),
            ("Read the word", "“Before”, “after”, “immediately” and “first” all move the answer by one place. Underline it."),
        ],
        cols=2,
        note="If two events share a chapter, the sentence order in the text is the answer — which is why the quotation column of your card is worth keeping.",
    )
