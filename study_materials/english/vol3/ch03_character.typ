#import "template.typ": *

#current-chapter.update("Chapter 3: Character and Characterisation")

#pagebreak()

#chapter-opener(
  3,
  "Character and Characterisation",
  subtitle: "Bepo by His Refusals, the Family at the Other End of the Line, the Staff and the Board, the People Outside the Gate, and the Four-Step Method for a Trait Question",
  syllabus-ref: "Sec. A • Reading Text",
  utme-weight: "6 Qs a year on character",
  running: "Character",
)

#focus-radar(
  objectives: (
    "Place every named character in one of the novel's five circles.",
    "Describe Bepo by what he does and refuses, not by his job title.",
    "Say what each member of staff does to the plot, in one line.",
    "Explain how the minor characters — parents, students, a security guard, an agent — carry a theme.",
    "Answer a trait question from an action, and reject an adjective the text does not support.",
  ),
  hotspots: (
    "“Mrs Grace Apeh is the school's …” — vice principal. She takes charge at the assembly and is the one who instructs another teacher to dismiss the students.",
    "“The chairman of the board of Stardom Schools is …” — Chief Mrs Solape Bayo, the MD's mother. The trap is Mrs Ibidun Gloss, who is the managing director, not the chairman.",
    "“Egi Meko is best described as …” — a school owner who will not be corrected. Every adjective in the option must be proved by an act.",
    "“The character who most nearly shows what Bepo might have become is …” — Egi Meko. The contrast is the point of Chapter 7.",
    "“Mr Audu's role in the novel is …” — comic relief that tells the truth. The paper likes the second half of that sentence.",
  ),
  trap-summary: "Three slips. (1) Confusing the MD with the chairman of the board: Mrs Gloss runs the school, her mother runs the board. (2) Answering a trait question with a job title — *he is a headmaster* is not a trait. (3) Assuming that a minor character is unimportant because the summary you read did not mention them: the paper sets questions on parents and pupils precisely because candidates skip them.",
)

// ============================================================================
== 3.1 Bepo: The Man the Book Is Built On

Mr Adebepo Adewale has been at Stardom Schools for twenty-four years. He came in as
headmaster of Stardom Kiddies, the nursery and primary arm, and rose to principal of the
secondary school. The nickname *The Lekki Headmaster* was earned over that time, and it
plays on the title of the old television drama *The Village Headmaster* — a joke that
became a title of respect.

#diagram-fig("diagrams/ch03_map.svg",
  "Five circles hold every named character in the novel. A character question is usually a question about which circle a person belongs to, and what that circle is for.", width: 100%)

#diagram-fig("diagrams/ch03_bepo.svg",
  "Bepo in five lines: the method, the record, the refusal, the tell and the wound.", width: 100%)

#concept-box("Character is drawn by refusal")[
  The novel never gives Bepo a scene of private indulgence. He takes no bribe, wins no argument by force, and takes no revenge on the MD who once ordered a teacher sacked.

  What it gives him instead is a series of refusals: the rite at Fruitful Future, silence at Beesway, the easy answer in the grammar row. A candidate who can name three refusals can answer almost any trait question about him.
]

#rule-box("The five things to know about Bepo")[
  + *He settles quarrels with a fact.* The grammar row, the cooperative, the prefect election — in each one he finds the single fact that decides the dispute.
  + *He has already paid for his integrity once.* He left Beesway rather than keep quiet, and lost Fruitful Future rather than perform a rite.
  + *He teaches by habit.* One hand in the pocket, *other things being equal*, a crucifix at the throat: the manner of a man who cannot stop explaining.
  + *He is not a saint.* He delays the passport for two years, hides the decision for five days, and admits that the money matters.
  + *He weeps, and the weeping is not weakness.* It is the cost of a choice he has already made.
]

// ============================================================================
== 3.2 The Family at the Other End of the Line

Seri, Bepo's wife, is a nurse in the United Kingdom, earning about £10,000 a month. Their
two children, Nike and Kike, are with her. She does not appear in a scene in Lagos; she is
a voice on an international line, and that is exactly what the novel needs her to be —
the pressure is a telephone, not a person.

Seri is not a villain, and a question that treats her as one is usually wrong. She has
made the move that the whole society is making, she is holding a family together across
two continents, and she has run out of patience with a husband who will not decide. The
novel gives her the strongest material case in the book: £10,000 a month against ₦400,000,
and a marriage that his foot-dragging has already pushed to the brink.

#trap-box("Seri is not the antagonist")[
  The novel has no villain with a name and a scheme. It has pressures with faces. An option that calls Seri *wicked*, *selfish* or *the cause of Bepo's suffering* is almost always the wrong one; an option that calls her *practical*, *impatient* or *determined* is usually right.
]

// ============================================================================
== 3.3 Stardom: The Staff and the Board

The school is a small society, and every member of staff is doing a job in the story as
well as in the school.

#diagram-fig("diagrams/ch03_functions.svg",
  "Six characters, the job each one does in the plot, and the scene that proves it.", width: 100%)

#table(
  columns: (1.55fr, 1.0fr, 2.55fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.1pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 8.1pt, weight: "bold", fill: white)[Post],
    text(font: "DejaVu Sans", size: 8.1pt, weight: "bold", fill: white)[What to remember],
  ),
  [Mrs Ibidun Gloss], [Managing director], [Runs the school, answers to the board, can be corrected and laughs when she is],
  [Mrs Grace Apeh], [Vice principal], [Takes charge in Chapter 1; addresses the students after he leaves; at the airport in Chapter 12],
  [Chief Mrs Solape Bayo], [Chairman, board], [The MD's mother; the snake in the roof; caps the cooperative's loans],
  [Mr Audu], [Fine art], [The wag of the staff room; his jokes carry the chapter's argument],
  [Mr Ope Wande], [Physics, and a pastor], [Called to counsel Bepo; ten minutes and no answer],
  [Mr Fafore], [English], [₦175,000 a month, lives in Ifo, twice the most punctual teacher, nearly sacked for being right],
  [Mr Jeremi Amos], [Accountant], [The school's money; at the airport in Chapter 12],
  [Mr Oyelana], [CRS], [One of the close colleagues; at the airport in Chapter 12],
  [Mrs Beke Egbin], [Guidance counsellor], [Stays with Bepo after the assembly],
  [Mrs Titi], [School nurse], [The handkerchief at the assembly],
  [Mr Justus Anabel], [Chemistry], [Dismisses the assembly on the vice principal's instruction],
)

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The posts matter because a question may ask for the *subject* a character teaches, or for the *office* a character holds. Learn the two columns together: Fafore and English, Oyelana and CRS, Amos and the accounts, Apeh and the vice principalship.]

#shortcut-box("The three staff-room lines that answer most questions")[
  + *Apeh steadies.* Anything that asks who holds the school together points at the vice principal.
  + *Audu defuses.* Anything that asks who relieves the tension points at the fine-art teacher.
  + *Gloss decides.* Anything that asks who has the power to hire and fire points at the managing director — and anything about the *board* points at her mother.
]

// ============================================================================
== 3.4 Outside the Gate: Parents, Pupils and Other Schools

The minor characters are not decoration. Each one carries a version of the novel's
argument, which is why the paper sets questions on them.

*The parents.* Mrs Ignatius is the family destroyed by a visa medical; her husband, a
manager in an oil firm, is the man who wanted his children to grow up where a foreign
degree would not make them junior to those who stayed. Mr Guta is the parent who is
certain a teacher is wrong and who nearly gets him sacked. The Ladele family is the
complaint that ends a teacher's career at Stardom. Between them they show what a school
is up against: love, money and certainty, all three of them misplaced.

*The pupils.* Favour is the daughter at the centre of the paternity result. Bibi is the
child whose nightmares end Mr Ayesoro's teaching career. Banky and Tosh are the feud that
Bepo cannot settle, and their fathers are the lawsuit. Each is a small demonstration of
the same point: a school is a place where adult failures arrive in children's uniforms.

*The other schools.* Egi Meko, director of Beesway, is Bepo's negative image — the owner
who cannot be corrected, who buries a cow in the night, and who keeps his school. Mr Ogo,
the parent at Fruitful Future who offered Bepo a rite for ₦35,000 and withdrew his child
when it was refused, is the same temptation in a smaller frame; years later he is arrested
for killing a client who asked for her money back.

#diagram-fig("diagrams/ch03_pairings.svg",
  "The contrasts the novel is built on. A contrast question needs both halves, and an option that describes only one is the commonest trap in the section.", width: 100%)

#concept-box("The character who shows what Bepo might have become")[
  Egi Meko is not in the room for most of the novel — he belongs to a flashback in Chapter 7 — and he is still the most important minor character in the book. He is what a school owner becomes when nobody can correct him: the name of the school is wrong and stays wrong, the parents' superstition is served, the cow goes into the ground, and the school survives.

  The question *“Which character most nearly represents what Bepo might have become?”* is answered by him, not by Seri and not by Mrs Gloss.
]

// ============================================================================
== 3.5 Answering a Trait Question

#diagram-fig("diagrams/ch03_method.svg",
  "Four steps for any character question: name the act, choose the adjective, test the opposite, find the line.", width: 100%)

#rule-box("The trait equation")[
  *Act + adjective + evidence.* Find the deed the question points at, choose the word the deed supports, and be able to quote the clause.

  *The opposite test.* Ask what the opposite trait would have produced in that scene. If the scene would read the same, the trait is not doing any work and the option is wrong.

  *The job-title trap.* *A headmaster*, *a nurse*, *a teacher* are facts about employment, not character. The paper rarely asks for a post and calls it a trait — but it offers posts as options every year.
]

#worked-example(
  1,
  "The office, not the adjective",
  [Mrs Grace Apeh is the school's

    A. managing director \
    B. vice principal \
    C. guidance counsellor \
    D. accountant],
  [
    *Step 1 — the shape.* A fact question about a post, not a trait question, despite the name in the stem.

    *Step 2 — the text.* Mrs Apeh is the vice principal: she is the first to speak at the assembly and the one who instructs the chemistry teacher to dismiss the students.

    *Step 3 — the near misses.* A is Mrs Ibidun Gloss, C is Mrs Beke Egbin, and D is Mr Jeremi Amos — three real posts held by three real people, which is what makes the question a memory test rather than a reading test.

    *Check.* Match the person to the post on your card, not to the first name that sounds official. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The wife abroad",
  [Bepo's wife, Seri, works in the United Kingdom as

    A. a teacher \
    B. a nurse \
    C. an accountant \
    D. a doctor],
  [
    *Step 1 — the fact.* Seri is a nurse, and the salary the novel gives her — about £10,000 a month — is the number that makes Bepo's ₦400,000 look small.

    *Step 2 — the trap.* A is the answer a candidate reaches by symmetry: if he teaches, she must teach. The novel is deliberately not symmetrical.

    *Step 3 — why it matters.* Her job is the material case for leaving. A question about her work is really a question about the pressure on Bepo.

    *Check.* Distinguish the two jobs in the family: he is the teacher, she is the nurse. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  3,
  "The MD who can be corrected",
  [Mrs Ibidun Gloss's handling of the grammar complaint shows that she is

    A. indifferent to the teachers \
    B. willing to act on a complaint and to admit a mistake \
    C. unable to understand English grammar \
    D. hostile to Bepo's authority],
  [
    *Step 1 — the act.* She reads the note, believes the parent, orders the teacher's dismissal — and then, when Bepo explains the rule, laughs it off.

    *Step 2 — the adjectives.* *Willing to act* covers the dismissal; *willing to admit a mistake* covers the laugh. Both halves must be in the option, which is why B is long.

    *Step 3 — the near misses.* A is contradicted by the fact that she acts at all; C overstates — she is wrong about one rule, not incapable; D is not supported, since she accepts his explanation.

    *Check.* An option with two clauses is right only if both are proved. Here both are. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The director who cannot be corrected",
  [Egi Meko, the director of Beesway Group of Schools, is best described as

    A. generous but misunderstood \
    B. strict but fair \
    C. powerful and unwilling to be corrected \
    D. weak and easily led],
  [
    *Step 1 — the acts.* He refuses to change the name of the school when the error is pointed out; he is among the men in the night with the cow; he keeps the school.

    *Step 2 — the adjectives.* Power without correction is the pattern. Nothing in the chapter shows him giving anything away, and nothing shows him being led.

    *Step 3 — the opposites.* *Generous* would need a gift; *fair* would need a hearing; *weak* would need someone else deciding. The text gives none of the three.

    *Check.* Choose the pair of adjectives that both halves of the record support. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "What Bepo might have become",
  [Which character most nearly represents what Bepo might have become if he had stayed and compromised?

    A. Mr Ogo \
    B. Egi Meko \
    C. Chief Didi Ogba \
    D. Mr Fafore],
  [
    *Step 1 — the question behind the question.* This is a contrast question dressed as a character question. It asks you to find the character whose position mirrors Bepo's.

    *Step 2 — the candidates.* Ogo is a parent and a murderer, not a school owner. Ogba is a parent in a lawsuit. Fafore is a teacher with no power. Egi Meko is a school owner who chose survival over integrity — the same job as Bepo, the opposite choice.

    *Step 3 — the evidence.* Chapter 7 exists to put the two men side by side: the director who keeps his school and loses his name, and the principal who leaves and keeps his.

    *Check.* The right answer occupies Bepo's role, not merely his story. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: character and characterisation.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Every named character sits in one of five circles: family, staff, board, parents and pupils, or the world outside the gate. Bepo is drawn by his refusals — no rite, no silence, no easy answer — and by a manner that teaches even when he is not in class. Seri is a voice on a telephone and a case made of sterling; she is practical, not wicked. Apeh steadies, Audu defuses, Gloss decides, and her mother runs the board and fears the staff. Outside the gate, parents and pupils carry versions of the same failure, and Egi Meko stands where Bepo might have stood if he had compromised. A trait question is an evidence question: name the act, choose the adjective, test the opposite, and find the clause.
  ]
]

== 3.6 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [Bepo's wife is called], [Nike], [Kike], [Seri], [Apeh])

#mcq(2, [The vice principal of Stardom Schools is], [Mrs Ibidun Gloss], [Mrs Grace Apeh], [Mrs Beke Egbin], [Mrs Titi])

#mcq(3, [The character who provides most of the novel's comic relief is], [Mr Audu], [Mr Fafore], [Pastor Ope Wande], [Mr Jeremi Amos])

#mcq(4, [The chairman of the board of Stardom Schools is], [Mrs Ibidun Gloss], [Chief Mrs Solape Bayo], [Chief Didi Ogba], [Mr Egi Meko])

#answer-key-grid(("C", "B", "A", "B"))

#answer-notes((
  ("C", [Seri. A and B are the children, and D is the vice principal's surname — the paper plants it because it looks familiar.]),
  ("B", [Mrs Grace Apeh. A is the managing director, C is the guidance counsellor, and D is the school nurse.]),
  ("A", [Mr Audu, the fine-art teacher. B is the English teacher at the centre of the grammar row, C is the pastor who is asked to counsel Bepo, and D is the accountant.]),
  ("B", [Chief Mrs Solape Bayo, the MD's mother. A is the managing director and runs the school, not the board — the single most useful distinction in the chapter.]),
))

#chapter-checklist("Before you leave Chapter 3", (
  [Name the five circles and put three characters in each.],
  [Give three refusals that define Bepo, with the chapter of each.],
  [Say what Apeh, Audu, Gloss and Ope Wande each do to the plot, in one line.],
  [Distinguish the managing director from the chairman of the board, and say what each one decides.],
  [Name the character who represents what Bepo might have become, and say why.],
  [State the four steps of the trait method, including the opposite test.],
))

#concept-box("Carry this into Chapter 4")[
  Chapter 3 has given you people and what they want. Chapter 4 asks what the whole book is saying through them: six themes, each with a scene behind it, and six settings, each with a meaning. A character question asks what a person is like; a theme question asks what the book believes.
]

#include "drill_ch03.typ"
