#import "template.typ": *

#current-chapter.update("Appendix A: 60 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 60 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[60 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Sixty one-line questions with the answer beside each. Cover the right-hand column with a sheet of paper and work down the list — twenty seconds a line. Anything you cannot answer in twenty seconds is a chapter to reread tonight.]
]

#v(5pt)

== A.1 Questions and Answers

#[
  #set text(size: 8.9pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 3.2pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [The medulla oblongata controls], [heart rate, breathing and blood pressure],
    [The receptors for taste are called], [taste buds],
    [A gland that pours its secretion down a duct onto a surface is described as], [exocrine],
    [Pollen grains are produced in the], [anther],
    [If fertilisation does not occur, the corpus luteum], [degenerates and progesterone falls],
    [The voice of a boy deepens at puberty because], [the larynx enlarges and the vocal cords lengthen],
    [Sickle-cell anaemia is an example of a disease that is], [hereditary],
    [Which of these food products depends on the action of micro-organisms?], [Cheese],
    [The recovery position is used for a casualty who is], [unconscious but breathing],
    [The magnification of a drawing is], [the image size divided by the actual size],
    [A reflex action is one that is], [automatic and protective],
    [The white outer layer of the eye is the], [sclera],
    [The shoot of a plant grows towards light because of], [positive phototropism],
    [After pollination, the pollen grain germinates to form], [a pollen tube],
    [Which method of birth control is a barrier method?], [The condom],
    [A 'growth spurt' is best seen on a graph as], [a steep rise],
    [Which of these is not a mode of transmission of tuberculosis?], [Drinking contaminated water],
    [Humus is best described as], [the dark organic material formed by decay in the soil],
    [Heroin is classed as a depressant because it], [slows the brain and depresses breathing],
    [The total magnification of a microscope whose eyepiece is ×10 and objective is ×4 is], [×40],
    [Which sequence describes a simple reflex such as blinking?], [Receptor → sensory neurone → CNS → motor neurone → effector],
    [The auditory canal of the ear], [carries sound waves from the pinna to the eardrum],
    [A deficiency of iodine in the diet causes], [goitre],
    [The stigma of a flower is the part that], [receives the pollen grains],
    [Ova are produced in the], [ovaries],
    [Growth in a human being is fastest during], [infancy],
    [The most important reason for a complete course of vaccination is that], [several doses are needed to build a high enough antibody level],
    [A virus consists of], [nucleic acid inside a protein coat],
    [Emphysema in a smoker is a condition in which], [the alveoli are destroyed, reducing the surface area for gas exchange],
    [A positive Biuret test shows that the food contains], [protein],
    [An effector may be], [a muscle or a gland],
    [The organ of hearing in the inner ear is the], [cochlea],
    [Auxin in a root], [inhibits elongation],
    [The plumule of the embryo develops into the], [shoot],
    [The blood of the mother and the blood of the foetus], [never mix; substances diffuse across a membrane],
    [Growth by cell division alone, without cell enlargement, would], [produce more cells but not necessarily a larger body],
    [Which of these is a viral disease?], [Measles],
    [The same osmotic principle explains the preservative effect of], [salting],
    [The recommended first-aid treatment for a nosebleed is to], [sit up, lean forward and pinch the soft part of the nose],
    [Iodine solution turns], [blue-black with starch],
    [Reflex actions are useful because they], [give a rapid protective response],
    [The three layers of the eye are the], [sclera, choroid and retina],
    [Which of these is a nastic response rather than a tropism?], [The closing of a mimosa leaf when touched],
    [Asexual reproduction in plants produces offspring that are], [genetically identical to the parent],
    [The hormone that stimulates the uterus to contract during childbirth is], [oxytocin],
    [A larva differs from an adult insect mainly in], [its body form and its food],
    [Quarantine is used in public health to], [prevent a person who may be infected from passing the disease on],
    [Decay returns to the soil], [mineral salts such as nitrates and phosphates],
    [The first aid for a casualty in shock is to], [keep the casualty warm and lying down, and get help],
    [A pH meter is used in practical work to measure], [acidity or alkalinity],
    [A drug that mimics a neurotransmitter at a synapse would], [excite the next neurone],
    [The optic nerve carries impulses from], [the retina to the brain],
    [Gigantism is caused by], [too much growth hormone in childhood],
    [The ovules of a flower are found in the], [ovary],
    [The main function of the placenta is], [to allow exchange of materials between mother and foetus],
    [Which insect shows incomplete metamorphosis?], [Locust],
    [Health is said to include social well-being because], [a person who is socially isolated may still be ill in other ways],
    [Which method of preservation kills micro-organisms rather than merely stopping their growth?], [Canning],
    [Oral rehydration salts contain], [sugar and salt in water],
    [A pitfall trap works because the animals], [fall into the cup and cannot climb out],
  )
]

