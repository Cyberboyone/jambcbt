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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Fifty facts for the last night, four minutes of preparation before you start, and a plan for the last ten minutes. Nothing here is new — that is the point.]
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
    [1. Strong acid: ionises completely.], [26. Catalyst: lowers $E_a$, never $Delta H$.],
    [2. Weak acid: ionises slightly.], [27. Catalyst: never moves an equilibrium.],
    [3. Acid = proton donor; base = proton acceptor.], [28. Higher temperature: more collisions *and* more energetic ones.],
    [4. Alkali = soluble base giving OH⁻.], [29. Rate falls as reactants are used up.],
    [5. $"pH" = -log["H"^+]$; two decimal places read to one.], [30. Powder reacts faster than chips — surface area.],
    [6. $"pH" + "pOH" = 14$ at 25 °C.], [31. Rate ∝ 1 ÷ time for a fixed end point.],
    [7. Methyl orange: red to yellow, for strong acid–weak base.], [32. Dynamic equilibrium: equal rates, constant concentrations.],
    [8. Phenolphthalein: pink to colourless, for weak acid–strong base.], [33. Equilibrium never means the reaction has stopped.],
    [9. Litmus: not a titration indicator.], [34. $K_c$: products over reactants, powers from coefficients.],
    [10. Salt of strong acid + strong base: neutral.], [35. Pure solids are left out of $K_c$.],
    [11. Salt of weak acid + strong base: alkaline.], [36. Higher temperature moves $K_c$ in the endothermic direction.],
    [12. Salt of strong acid + weak base: acidic.], [37. Pressure matters only when the gas moles differ.],
    [13. Solubility: g per 100 g of *water*.], [38. Haber: 450 °C, 200 atm, iron; $Delta H = -92$.],
    [14. Saturated: holds the maximum at that temperature.], [39. Haber: four gas moles become two, so pressure helps.],
    [15. Gas solubility falls as temperature rises.], [40. Contact: 450 °C, 1–2 atm, V₂O₅.],
    [16. $c = n div V$; $V$ in dm³, always.], [41. Removing a product pulls an equilibrium right.],
    [17. $c_1 V_1 = c_2 V_2$ for dilution.], [42. Oxidation is loss of electrons; reduction is gain.],
    [18. $1$ dm³ $= 1000$ cm³.], [43. OIL RIG: oxidation is loss, reduction is gain.],
    [19. Water of crystallisation: divide by the moles of anhydrous salt.], [44. Oxidising agent is itself reduced.],
    [20. Exothermic: $Delta H$ negative, surroundings warm.], [45. Oxidation numbers: sum to the charge on the ion.],
    [21. $q = m c Delta T$, with $m$ in grams and $Delta T$ in K.], [46. Cr in dichromate is +6; Mn in permanganate is +7.],
    [22. $Delta H = -q div n$ per mole.], [47. Electrolysis anode: positive, oxidation.],
    [23. Bond breaking absorbs energy; forming releases it.], [48. Cell anode: negative, oxidation.],
    [24. $Delta H =$ broken $-$ formed.], [49. $E^degree_"cell" = E^degree_"cathode" - E^degree_"anode"$.],
    [25. Hess: reverse a step, reverse its sign.], [50. Rust needs both water and oxygen; zinc protects sacrificially.],
  )
]

== K.2 The Four Minutes Before You Start

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 12pt)[
  #set text(size: 9.4pt)
  *Minute 1.* Write the three conversions in the margin: cm³ → dm³ ($div 1000$), °C → K ($+273$), and g → mol ($div M_r$).
  #v(3pt)
  *Minute 2.* Write the four formulas you will use most: $c = n div V$, $q = m c Delta T$, $K_c =$ products $div$ reactants, $E^degree_"cell" = E^degree_"cathode" - E^degree_"anode"$.
  #v(3pt)
  *Minute 3.* Write the two indicator colours and the two electrode signs.
  #v(3pt)
  *Minute 4.* Breathe. Read question one twice, then begin. The margin notes are your safety net, not your answer sheet.
]

== K.3 The Last Ten Minutes

#table(
  columns: (0.55fr, 2.6fr),
  inset: 5pt,
  align: (center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Minute],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What to do],
  ),
  [10–8], [Check that every question has a shaded option. A blank is a certain zero; a guess is a one-in-four chance.],
  [8–6], [Re-read the stems of the questions you flagged. Most flags are misreadings, not gaps.],
  [6–4], [Check the calculation answers for units and signs only. Do not redo the arithmetic.],
  [4–2], [Check the equilibrium and electrochemistry answers: powers in $K_c$, powers of ten, the sign of the anode.],
  [2–0], [Shade anything still blank. Then stop — changing a considered answer in the last minute loses more marks than it gains.],
)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-border, radius: 8pt, inset: 12pt)[
  #set text(size: 9.4pt)
  *A final word.* The paper is not designed to be finished with time to spare; it is designed to be *managed*. Forty questions in forty minutes means one minute each, and the candidate who spends ninety seconds on question seven and then guesses the last three has traded three certain marks for one uncertain one. Flag, move on, and come back.
]

#shortcut-box("The three numbers to write on your wrist")[
  *1000* — cm³ to dm³. *57* — kJ mol⁻¹ for a strong acid–strong base neutralisation, your sanity check. *1.10* — the zinc–copper EMF, the value every textbook example uses. If an answer is wildly away from these, you have made a unit slip, not a chemistry mistake.
]
