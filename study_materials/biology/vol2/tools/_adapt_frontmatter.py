#!/usr/bin/env python3
"""Adapt the Volume 1 front matter to Biology Volume 2.

Every replacement is anchored on an exact string, so the script fails loudly
if the source file has drifted rather than silently producing a half-edited
cover.
"""

from pathlib import Path

P = Path(__file__).resolve().parent.parent / "frontmatter.typ"
s = P.read_text()


def sub(old: str, new: str) -> None:
    global s
    assert old in s, old[:80]
    s = s.replace(old, new)


# ── cover ──────────────────────────────────────────────────────────────────
sub("VOLUME 1 OF 3", "VOLUME 2 OF 3")
sub("""    #text(font: "DejaVu Sans", size: 16pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 1: Cells, Nutrition & Transport
    ]""",
    """    #text(font: "DejaVu Sans", size: 16pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 2: Coordination, Reproduction & Growth
    ]""")
sub("""      Complete, In-Depth Mastery of the Living Thing and How It Works — Classification, Cell Structure and Cell Division, Photosynthesis, Animal Nutrition, Transport in Plants and Animals, Respiration, Excretion and Homeostasis, Support and Movement.""",
    """      Complete, In-Depth Mastery of How the Body Controls and Reproduces Itself — Nervous Coordination and the Neurone, the Brain and Sense Organs, Hormones, Reproduction in Plants and Animals, Growth and Development, Health and Disease, Micro-organisms, Drugs and Public Health, Practical Skills.""")

sub("""          Every subtopic ranked by UTME frequency — the organelle table, the photosynthesis equation, the digestive enzyme chain and the double circulation route that appear every single year.""",
    """          Every subtopic ranked by UTME frequency — the reflex arc, the eye, the menstrual cycle, the flower and the seed that appear every single year.""")

sub("""          Cells, viruses, the leaf in section, the alimentary canal, the heart, the nephron and the skeleton — drawn to be copied exactly as the examiner expects.""",
    """          The neurone, the synapse, the eye, the brain in section, the endocrine map, the flower, the seed and the growth curves — drawn to be copied exactly as the examiner expects.""")

sub("""          Every chapter opens with the definitions the examiner marks, then shows how the process works — never a list of facts without the reason behind it.""",
    """          Every chapter opens with the definitions the examiner marks, then shows how the process works — stimulus and response, hormone and target, gamete and zygote.""")

sub("""          UTME-style drill questions per chapter, two full CBT mocks, timed drills and a master bank — every option explained, not merely keyed.""",
    """          Thirty questions per chapter, two full CBT mocks, a rapid-fire recall appendix and a 120-question master bank — every option explained, not merely keyed.""")

# ── series map page ────────────────────────────────────────────────────────
sub("""    Volume 1 takes you from “what is a living thing” to “how a mammal moves”: the cell and its organelles, how cells divide, how plants make food and animals digest it, how substances are moved, how energy is released, how waste is removed, and how the body is held up and moved.""",
    """    Volume 2 takes you from “how a nerve carries a message” to “how a population stays healthy”: the neurone and the synapse, the brain, the eye and the ear, hormones and the menstrual cycle, the flower and the seed, fertilisation and pregnancy, growth curves, disease and immunity, and the practical skills the examiner tests in the hall.""")

sub("""#diagram-fig("diagrams/utme_weight.svg", "Typical number of UTME Biology questions per topic in this volume. Transport in animals (circulation) and the two nutrition chapters carry the most marks; no chapter is safe to skip.")""",
    """#diagram-fig("diagrams/utme_weight.svg", "Typical number of UTME Biology questions per topic in this volume. Reproduction in plants and animals, and coordination, carry the most marks; no chapter is safe to skip.")""")

# ── the twelve question types ──────────────────────────────────────────────
old_rows = """  [1], [“Which of the following is a characteristic of living things?”], [The seven characteristics, exactly named], [1],
  [2], [“Organisms in the kingdom Monera are distinguished by …”], [No true nucleus; prokaryotic], [1],
  [3], [“The organelle responsible for … is the …”], [Organelle + its one-line function], [2],
  [4], [“Which of these is present in a plant cell but not an animal cell?”], [Wall, chloroplast, large vacuole], [2],
  [5], [“The number of chromosomes in the daughter cells after mitosis is …”], [Same as the parent cell ($2n$)], [3],
  [6], [“The products of photosynthesis are …”], [Glucose and oxygen], [4],
  [7], [“The enzyme that digests … is …”], [Enzyme, substrate, product, site], [5],
  [8], [“Water is transported in the plant by the …”], [Xylem (upwards, dead cells)], [6],
  [9], [“Blood flows from the left ventricle to the …”], [The route, in order], [7],
  [10], [“Anaerobic respiration in muscle tissue produces …”], [Lactic acid (not alcohol)], [8],
  [11], [“The functional unit of the kidney is the …”], [Nephron, and what it does], [9],
  [12], [“Which of these is a hinge joint?”], [Elbow, knee — one plane only], [10],"""
new_rows = """  [1], [“The part of the neurone that conducts impulses away from the cell body is the …”], [Axon; dendrites carry impulses towards it], [1],
  [2], [“A synapse transmits an impulse by means of …”], [A chemical transmitter across the gap], [1],
  [3], [“The part of the brain that controls balance and muscular coordination is the …”], [Cerebellum; medulla controls breathing], [2],
  [4], [“The structure that focuses light on the retina is the …”], [Lens; the cornea does most of the bending], [2],
  [5], [“A reflex action is one that is …”], [Automatic and protective; the spinal cord can do it alone], [2],
  [6], [“The hormone that lowers blood glucose is …”], [Insulin, from the islets of Langerhans], [3],
  [7], [“The transfer of pollen from anther to stigma is …”], [Pollination; fertilisation is later], [4],
  [8], [“The part of the flower that becomes the fruit is the …”], [Ovary; the ovule becomes the seed], [4],
  [9], [“Fertilisation in a mammal normally occurs in the …”], [Oviduct (fallopian tube)], [5],
  [10], [“The hormone that maintains the uterine lining in pregnancy is …”], [Progesterone], [5],
  [11], [“Which cells produce antibodies?”], [Lymphocytes (B cells)], [7],
  [12], [“The magnification of a drawing 20 mm long of a 0.5 mm specimen is …”], [×40 — image ÷ actual], [10],"""
sub(old_rows, new_rows)

# ── syllabus mapping ───────────────────────────────────────────────────────
old_map_start = s.index("  [*Characteristics of living things*]")
old_map_end = s.index(")\n\n#v(6pt)\n\n#block(width: 100%, fill: jamb-light", old_map_start)
new_map = """  [*Nervous coordination*], [The neurone, impulse transmission, the synapse, reflex actions.], [(i) Label a neurone; (ii) explain transmission across a synapse; (iii) describe a reflex arc.], [*1*],
  [*The central nervous system*], [Brain and spinal cord; the autonomic system.], [(i) State the function of each part of the brain; (ii) explain what a reflex arc does.], [*2*],
  [*The sense organs*], [The eye, the ear and the skin.], [(i) Label the eye and explain accommodation; (ii) correct the common defects.], [*2*],
  [*Hormonal control*], [Endocrine glands, hormones and their effects; plant hormones.], [(i) Match hormone to gland to effect; (ii) explain negative feedback.], [*3*],
  [*Reproduction in plants*], [Flower structure, pollination, fertilisation, seeds, fruits and dispersal.], [(i) Label the flower; (ii) trace the pollen tube to the embryo sac.], [*4*],
  [*Reproduction in animals*], [Reproductive systems, gametogenesis, the menstrual cycle, fertilisation, pregnancy, birth control.], [(i) Label both systems; (ii) explain the hormonal control of the cycle.], [*5*],
  [*Growth and development*], [Growth curves, metamorphosis, measurement of growth.], [(i) Interpret a growth curve; (ii) compare complete and incomplete metamorphosis.], [*6*],
  [*Health and disease*], [Pathogens, transmission, the body's defences, immunity, vaccination.], [(i) Classify a disease by its cause and its method of spread; (ii) explain how a vaccine works.], [*7*],
  [*Micro-organisms and decay*], [Useful and harmful micro-organisms; decay; food preservation; industry.], [(i) State the conditions for decay; (ii) give one industrial use of a named micro-organism.], [*8*],
  [*Drugs, first aid and public health*], [Drug abuse, first aid, sanitation, immunisation programmes.], [(i) Describe the effects of a named drug; (ii) state the first-aid steps for a named emergency.], [*9*],
  [*Practical skills*], [Microscopy, magnification, biological drawings, food tests, experiments and controls.], [(i) Calculate magnification; (ii) design a controlled experiment and identify its variables.], [*10*],"""
s = s[:old_map_start] + new_map + s[old_map_end:]

sub("""== Official JAMB UTME Syllabus Mapping (Volume 1 Chapters)""",
    """== Official JAMB UTME Syllabus Mapping (Volume 2 Chapters)""")

sub("""    Coordination and control (nervous and hormonal), reproduction in plants and animals, growth and development, and health and disease are Volume 2. Genetics and variation, evolution, ecology, conservation, applied biology and practical skills are Volume 3. Examination technique, consolidated answer keys and the mastery tracker sit in the appendices of Volume 3.""",
    """    Classification, cells, cell division, nutrition, transport, respiration, excretion and support are Volume 1. Genetics and variation, evolution, ecology, conservation and applied biology are Volume 3. Examination technique, consolidated answer keys and the mastery tracker sit in the appendices of Volume 3.""")

# ── diagnostic pre-test ────────────────────────────────────────────────────
old_start = s.index("#mcq(1, [Which of the following is *not* a characteristic of living things?]")
old_end = s.index('#answer-key-grid(("B", "C", "B", "B", "B", "C", "B", "C", "A", "A", "B", "C"))')
new_diag = """#mcq(1, [The part of a neurone that carries impulses away from the cell body is the], [dendron], [axon], [myelin sheath], [nucleus])
#mcq(2, [Impulses cross a synapse by means of], [electrical contact], [a chemical transmitter], [the myelin sheath], [the cell body])
#mcq(3, [The part of the brain that controls balance and coordination is the], [cerebrum], [medulla oblongata], [cerebellum], [hypothalamus])
#mcq(4, [The structure of the eye that controls the amount of light entering is the], [lens], [iris], [retina], [cornea])
#mcq(5, [The hormone that lowers blood glucose concentration is], [adrenaline], [insulin], [glucagon], [thyroxine])
#mcq(6, [The transfer of pollen from the anther to the stigma of the same flower is called], [self-pollination], [cross-pollination], [fertilisation], [germination])
#mcq(7, [The part of a flower that develops into the fruit is the], [ovule], [ovary], [stigma], [anther])
#mcq(8, [Fertilisation in a human normally takes place in the], [uterus], [ovary], [oviduct], [vagina])
#mcq(9, [The hormone that maintains the lining of the uterus during pregnancy is], [oestrogen], [progesterone], [FSH], [LH])
#mcq(10, [Which of these is a complete metamorphosis?], [Egg → nymph → adult], [Egg → larva → pupa → adult], [Egg → adult], [Larva → egg → adult])
#mcq(11, [Antibodies are produced by], [red blood cells], [lymphocytes], [platelets], [phagocytes])
#mcq(12, [A drawing of a specimen measures 20 mm and the specimen is 0.5 mm long. The magnification is], [×4], [×10], [×40], [×400])
"""
s = s[:old_start] + new_diag + s[old_end:]
sub('#answer-key-grid(("B", "C", "B", "B", "B", "C", "B", "C", "A", "A", "B", "C"))',
    '#answer-key-grid(("B", "B", "C", "B", "B", "A", "B", "C", "B", "B", "B", "C"))')

# ── diagnostic intro line mentions chapter spread ─────────────────────────
sub("""  Twelve questions, one from each chapter's core idea. Answer without the book, in twelve minutes, then mark yourself with the key below. Do not read the solutions yet — this test is a map, not a lesson.""",
    """  Twelve questions, one from each chapter's core idea. Answer without the book, in twelve minutes, then mark yourself with the key below. Do not read anything else first — this test is a map, not a lesson.""")

P.write_text(s)
print("frontmatter adapted:", len(s.splitlines()), "lines")
