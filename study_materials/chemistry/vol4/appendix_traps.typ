#import "template.typ": *

#current-chapter.update("Appendix J: The Twelve Traps, Worked")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix J: The Twelve Traps, Worked]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Twelve Traps, Worked]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twelve mistakes that appear in almost every script. Each one is shown as a question, the answer that looks right, the answer that is right, and the single sentence that separates them.]
]

#v(4pt)

#let trap(num, title, question, wrong, right, fix) = {
  block(width: 100%, fill: trap-bg, stroke: (left: 3.5pt + trap-red, rest: 0.6pt + trap-border), radius: (right: 6pt), inset: 10pt)[
    #text(font: "DejaVu Sans", size: 9.0pt, weight: "bold", fill: trap-red)[Trap #num — #title]
    #v(3pt)
    #text(size: 9.7pt)[#question]
    #v(3pt)
    #text(size: 9.7pt)[*Wrong answer.* #wrong]
    #v(2pt)
    #text(size: 9.7pt)[*Right answer.* #right]
    #v(2pt)
    #text(size: 9.7pt)[*Fix.* #fix]
  ]
  v(7pt, weak: true)
}

#trap(1, "The alkane formula with an alkene's hydrogen count",
  [The general formula of the alkanes is], [CₙH₂ₙ, because that is the hydrocarbon formula in the data sheet.],
  [CₙH₂ₙ₊₂. The alkenes are CₙH₂ₙ and the alkynes CₙH₂ₙ₋₂.],
  [Count the hydrogens on ethane: C₂H₆, which is 2(2) + 2. The alkane carries two more than its alkene.])

#trap(2, "Calling every reaction of an alkane a substitution and every reaction of an alkene an addition",
  [Methane reacts with chlorine in sunlight. Name the type of reaction.], [Addition, because chlorine is added to the molecule.],
  [Substitution. One hydrogen is replaced by chlorine and HCl is released; no double bond exists to add across.],
  [An addition is possible only where a multiple bond can open. If the molecule has no double bond, the halogen must be swapping places with something.])

#trap(3, "Cracking confused with reforming",
  [A straight-chain alkane is converted into a branched isomer of the same molecular formula. Name the process.], [Cracking.],
  [Reforming (or isomerisation). Cracking makes the molecule smaller; reforming rearranges it without changing the number of carbons.],
  [Ask whether the number of carbon atoms changes. If it falls, it is cracking; if it stays the same, it is reforming.])

#trap(4, "Reading the fractionating column upside down",
  [Which fraction leaves the top of a fractionating column?], [Petrol, because it is the most useful fraction.],
  [Refinery gas, C₁–C₄. The top is the coolest part, so only the smallest molecules leave as vapour; petrol is the second fraction down.],
  [The column is a temperature gradient. Short chain, low boiling point, top; long chain, high boiling point, bottom.])

#trap(5, "One reagent, three different reactions",
  [Bromine is added to (a) hexane in sunlight, (b) hex-1-ene in the dark, (c) hexane in the dark. State the type of reaction in each.], [Substitution in all three, because bromine is a halogen.],
  [(a) Substitution, with fumes of HBr. (b) Addition, and the colour goes at once. (c) No reaction — an alkane needs light for substitution.],
  [The reagent alone does not fix the reaction. Read the condition: light means substitution of an alkane; darkness with an alkene means addition; darkness with an alkane means nothing happens.])

#trap(6, "Concentrated sulphuric acid has two jobs",
  [Ethanol is heated with concentrated sulphuric acid at 170 °C. Name the product.], [Ethanoic acid, because sulphuric acid is an oxidising agent.],
  [Ethene. At 170 °C the acid dehydrates the ethanol; the oxidation to ethanoic acid needs acidified dichromate, not sulphuric acid alone.],
  [Temperature decides. Hot concentrated acid at 170 °C removes water; a warm dilute oxidising mixture adds oxygen. Sulphuric acid is a dehydrating agent before it is an oxidising one.])

#trap(7, "Oxidising a tertiary alcohol",
  [2-Methylpropan-2-ol is warmed with acidified potassium dichromate(VI). State the product.], [A ketone, because the alcohol is not primary.],
  [No reaction. The carbinol carbon carries three alkyl groups and no hydrogen, so there is nothing for the oxidising agent to remove.],
  [Oxidation of an alcohol removes the hydrogen on the carbinol carbon. Count them first: two means aldehyde then acid, one means ketone, none means no reaction.])

#trap(8, "Weak acid confused with dilute acid",
  [Why does 0.10 mol dm⁻³ ethanoic acid have a higher pH than 0.10 mol dm⁻³ hydrochloric acid?], [Because it is more dilute.], [Because it is a weak acid: only about 1 % of its molecules ionise, so it supplies far fewer hydrogen ions at the same concentration.],
  [Dilute is a statement about how much water is present; weak is a statement about how far the acid ionises. Two solutions of the same concentration can have very different pH values.])

#trap(9, "Scum formed by soap but not by detergent",
  [Soap does not lather well in hard water. Explain.], [Soap is insoluble in water.],
  [Soap is soluble, but the calcium and magnesium ions of hard water precipitate it as an insoluble calcium or magnesium salt — the scum — so the soap is used up before it can lather. A detergent's calcium salt is soluble, which is why it lathers.],
  [Hardness is about the ions in the water, not about the soap. The test is whether the calcium salt of the surfactant is soluble.])

#trap(10, "Addition and condensation polymerisation swapped",
  [Nylon is made from two monomers with the loss of water. Name the type of polymerisation.], [Addition, because two monomers are added together.],
  [Condensation. A small molecule — water — is eliminated at every link, which is what distinguishes it from addition.],
  [Ask what happens to the atoms. If every atom of every monomer ends up in the polymer, it is addition. If a small molecule leaves, it is condensation.])

#trap(11, "Testing sucrose straight away",
  [Sucrose solution is tested with Benedict's reagent and the result is negative. What does this show?], [The sample contains no sugar.],
  [The sample contains no *reducing* sugar. Sucrose is non-reducing, because both of its anomeric carbons are locked in the glycosidic bond. Boiling with dilute acid first, then testing, gives the brick-red precipitate.],
  [A negative Benedict's test rules out a reducing sugar, not sugar altogether. The follow-up is hydrolysis and a second test.])

#trap(12, "Denaturation described as destruction",
  [An egg is boiled. Explain what has happened to the protein.], [The protein has been hydrolysed into amino acids.],
  [The protein has been denatured: the hydrogen bonds and hydrophobic interactions holding the fold have broken, so the chain uncoils and becomes insoluble. The peptide bonds are intact, which is why a boiled egg is still digestible.],
  [Denaturation destroys the shape; hydrolysis destroys the chain. If the question says the protein has lost its function but is still a protein, the answer is denaturation.])

#pagebreak()

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[THE CHECKLIST THESE TWELVE MAKE]
  #v(4pt)
  #set text(size: 9.5pt)
  + Have I counted the hydrogens before naming the series?
  + Is there a double bond for the reagent to add across?
  + Has the condition been read as carefully as the reagent?
  + Does the number of carbon atoms change, or only their arrangement?
  + Which end of the fractionating column is hot?
  + Which class of alcohol is it, and how many hydrogens on the carbinol carbon?
  + Is the acid weak, or is it merely dilute?
  + Is the salt of this surfactant soluble in hard water?
  + Does the polymerisation lose a small molecule?
  + Has the sugar been hydrolysed before the test?
  + Is the protein denatured or hydrolysed?
  + Have I written the unit, and quoted the answer to the right number of figures?
]

== J.2 Six Questions, One Per Trap

Six items, one for each of the traps above that the examiner asks most often. Twelve minutes, no notes.

#mcq(1, [The general formula of the alkynes is], [CₙH₂ₙ], [CₙH₂ₙ₋₂], [CₙH₂ₙ₊₂], [CₙHₙ])
#mcq(2, [Methane is heated with excess chlorine in sunlight. The final organic product is], [CH₃Cl], [CH₂Cl₂], [CHCl₃], [CCl₄])
#mcq(3, [Which of the following decolourises bromine water in the dark?], [hexane], [hex-1-ene], [ethanol], [ethanoic acid])
#mcq(4, [Ethanol is warmed with acidified potassium dichromate(VI) and the product is distilled off as it forms. The product is], [ethanoic acid], [ethanal], [ethene], [ethyl ethanoate])
#mcq(5, [Which pair of monomers gives a polyamide?], [ethene and propene], [a diamine and a dicarboxylic acid], [a diol and a dicarboxylic acid], [glucose and fructose])
#mcq(6, [A solution gives no precipitate with Benedict's reagent until it is boiled with dilute acid and neutralised. The sugar was], [glucose], [maltose], [sucrose], [starch])

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 6pt, inset: (x: 10pt, y: 7pt))[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: jamb-green)[KEY]
  #h(8pt)
  #text(size: 9.4pt)[1 B · 2 D · 3 B · 4 B · 5 B · 6 C — and the trap each one is testing is named above it.]
]
