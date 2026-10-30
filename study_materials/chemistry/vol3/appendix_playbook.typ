#import "template.typ": *

#current-chapter.update("Appendix K: The Exam-Day Playbook")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix K: The Exam-Day Playbook]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Exam-Day Playbook]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Fifty facts to read the night before, four minutes of routine before the clock starts, and ten minutes of discipline at the end. Everything in this appendix is meant to be used on one day.]
]

#v(4pt)

== K.1 Fifty Facts for the Last Night

#[
  #set text(size: 9.0pt)
  #table(
    columns: (1fr, 1fr),
    inset: (x: 6pt, y: 2.6pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => (bottom: 0.3pt + jamb-border),
    fill: (x, y) => if calc.odd(y) { jamb-light } else { white },
    [1. Reactivity series: K Na Ca Mg Al Zn Fe Pb H Cu Ag Au.], [26. Group 1 reactivity rises downwards.],
    [2. Metals below hydrogen do not give hydrogen with dilute acid.], [27. Group 1 hydroxides are all soluble and all alkaline.],
    [3. Cold water: K, Na, Ca only. Steam: Mg down to Fe.], [28. Lithium, sodium, potassium: crimson, yellow, lilac.],
    [4. Steam plus iron gives Fe₃O₄ and hydrogen.], [29. Calcium brick red; barium apple green; copper blue-green.],
    [5. Aluminium oxide and zinc oxide are amphoteric.], [30. Bauxite is Al₂O₃·2H₂O, purified by the Bayer process.],
    [6. A metal above carbon is extracted by electrolysis.], [31. Cryolite dissolves alumina at about 950 °C.],
    [7. Thermite: 2Al + Fe₂O₃ → Al₂O₃ + 2Fe.], [32. Aluminium cell: carbon anode burns away in oxygen.],
    [8. Rusting needs both water and oxygen.], [33. Blast furnace: Fe₂O₃ + 3CO → 2Fe + 3CO₂.],
    [9. Zinc protects iron sacrificially.], [34. Limestone in the furnace removes silica as slag.],
    [10. Brass is copper and zinc; bronze is copper and tin.], [35. Steel is iron with under 2 % carbon.],
    [11. Air is 78 % nitrogen, 21 % oxygen, 1 % argon.], [36. Stainless steel contains chromium and nickel.],
    [12. Molar volume at s.t.p. is 22.4 dm³ mol⁻¹.], [37. Haber: 450 °C, 200 atm, iron catalyst.],
    [13. The molar mass of air is about 29.], [38. Haber: four gas moles become two, so pressure helps.],
    [14. Hydrogen gives a pop with a lighted splint.], [39. Contact: 450 °C, 2 atm, vanadium(V) oxide.],
    [15. Oxygen relights a glowing splint.], [40. Ostwald: ammonia over platinum–rhodium at 900 °C.],
    [16. Carbon dioxide turns limewater milky.], [41. Dilute nitric acid gives NO; concentrated gives NO₂.],
    [17. Ammonia turns damp red litmus blue.], [42. Nitric acid is an oxidising acid, so it gives no hydrogen with copper.],
    [18. Chlorine bleaches damp litmus paper.], [43. Ammonia is dried with calcium oxide, never with acid.],
    [19. Sulphur dioxide turns acidified dichromate green.], [44. Ammonia is collected by upward delivery: it is lighter than air.],
    [20. Chlorine with cold alkali: chloride plus chlorate(I).], [45. Brown ring test: nitrate; white smoke: ammonia.],
    [21. Halogen reactivity falls down the group.], [46. Sulphur burns with a pale blue flame to SO₂.],
    [22. A more reactive halogen displaces a less reactive one.], [47. 1.00 t of H₂SO₄ contains 0.327 t of sulphur.],
    [23. Silver chloride is white, bromide cream, iodide yellow.], [48. Temporary hardness is hydrogencarbonate; boil it off.],
    [24. Barium sulphate is white and insoluble in acid.], [49. Permanent hardness needs washing soda or ion exchange.],
    [25. Copper(II) hydroxide is pale blue; iron(III) is red-brown.], [50. Cement kiln: CaCO₃ → CaO + CO₂ at 1450 °C.],
  )
]

== K.2 The Four Minutes Before You Start

#block(breakable: false, width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 12pt)[
  #set text(size: 9.4pt)
  *Minute 1.* Read the instructions on the screen, not from memory. Confirm the number of questions and the time allowed.
  #v(3pt)
  *Minute 2.* Write on your rough sheet the reactivity series, the two industrial condition pairs — *450 and 200, iron*; *450 and 2, vanadium* — and the three flame colours you always confuse. Ten seconds each.
  #v(3pt)
  *Minute 3.* Breathe out slowly, four times. The first question is the one you are most likely to misread, and a settling minute pays for itself twice over.
  #v(3pt)
  *Minute 4.* Read question one completely, including the last word. Then answer it.
]

#trap-box("The three words that change a question")[
  *“Excess.”* A precipitate that dissolves in excess means aluminium or zinc. *“Concentrated.”* The acid is now an oxidising agent, and the gas is not hydrogen. *“Not.”* Half the errors in an inorganic paper are a candidate answering the question that was asked one word earlier. Underline the negative on the screen before you look at the options.
]

== K.3 The Last Ten Minutes

#table(
  columns: (1.05fr, 3.0fr),
  inset: 5pt,
  align: (center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Minute],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Do this],
  ),
  [10–8], [Count your unanswered questions on the palette. Answer every one of them, even by elimination — there is no negative marking.],
  [8–6], [Revisit only the questions you *flagged*, not the ones you merely found hard. A second look at a hard question usually changes nothing.],
  [6–4], [Check the two things that are checked least: the question number against your answer sheet, and any calculation done in your head.],
  [4–2], [Look for the trap words in the questions you answered quickly: *concentrated*, *excess*, *not*, *steam*.],
  [2–0], [Stop. Confirm submission. Do not change an answer in the last thirty seconds on a hunch — the evidence is against you.],
)

#concept-box("One page, one promise")[
  By the morning of the examination you will not be able to revise everything again, and you should not try. Take one sheet of paper. On it write the six things in this volume you personally get wrong — not the syllabus, *your* errors, the ones you have circled in the drills. Read that sheet in the queue. It is worth more than a chapter, because it is the only page written for you.
]
