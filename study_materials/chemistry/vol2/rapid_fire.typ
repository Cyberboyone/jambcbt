#import "template.typ": *

#current-chapter.update("Appendix A: 40 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 40 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[40 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty one-line questions with the answer beside each. Cover the right-hand column with a sheet of paper and work down the list — twenty seconds a line. Anything you cannot answer in twenty seconds is a chapter to reread tonight.]
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
    [The enthalpy change of a reaction is negative when], [the products are more stable than the reactants],
    [Which of these changes would lower the activation energy?], [adding a suitable catalyst],
    [The equilibrium constant for the reverse of a reaction is], [the reciprocal of the forward value],
    [The element that is oxidised in the reaction Cu + 2AgNO₃ → Cu(NO₃)₂ + 2Ag is], [Cu],
    [The reaction CaCO₃ + 2HCl → CaCl₂ + H₂O + CO₂ is an example of], [acid + carbonate],
    [The mass of KMnO₄ (M_r = 158) needed to make 500 cm³ of 0.0200 M solution is], [1.58 g],
    [Which statement explains why the measured ΔH for Mg + O₂ is unreliable in an open crucible?], [some magnesium nitride and magnesium oxide dust are lost as smoke],
    [For the reaction 2NO + O₂ → 2NO₂, the rate of formation of NO₂ is 0.40 mol dm⁻³ s⁻¹. The rate of disappearance of NO is], [0.40 mol dm⁻³ s⁻¹],
    [Which is the correct expression for K_c of the reaction 2SO₂(g) + O₂(g) ⇌ 2SO₃(g)?], [[SO₃]² ÷ ([SO₂]²[O₂])],
    [Which statement about a standard hydrogen electrode is correct?], [it consists of hydrogen gas at 1 atm bubbling over platinum],
    [Which reaction produces a salt and hydrogen only?], [zinc + dilute sulphuric acid],
    [0.100 mol of a solute is dissolved in 250 cm³ of solution. Its concentration is], [0.400 M],
    [Which pair are both exothermic?], [freezing and condensing],
    [Which factor explains why a fine powder reacts faster than a lump?], [greater total surface area exposed],
    [The equilibrium H₂(g) + Br₂(g) ⇌ 2HBr(g) at 730 K has K_c = 2.2 × 10⁶. The mixture is mainly], [hydrogen bromide],
    [Two moles of electrons will deposit how many moles of copper from Cu²⁺ solution?], [1 mol],
    [Hydrolysis of the carbonate ion is represented by], [CO₃²⁻ + H₂O ⇌ HCO₃⁻ + OH⁻],
    [20.0 cm³ of 0.500 M sodium hydroxide is diluted to 100 cm³. Its new concentration is], [0.100 M],
    [The main reason the enthalpy of combustion of a fuel measured in a school burner is less negative than the true value is], [incomplete combustion and heat loss],
    [Which of these is an example of homogeneous catalysis?], [H⁺ ions in the hydrolysis of an ester],
    [For the reaction A ⇌ B, K_c is 64. A mixture is found in which the concentration of B is eight times that of A. The mixture], [must shift to the right],
    [The EMF of a cell made from silver (E° = +0.80 V) and zinc (E° = −0.76 V) is], [1.56 V],
    [Salt A dissolves in water to give a solution of pH 5. Salt A could be], [ammonium nitrate],
    [Vacuum filtration is used in crystallisation because it], [draws the liquid through quickly and dries the crystals partly],
    [The energy diagram of an endothermic reaction shows products at], [a higher level than the reactants],
    [The rate of a reaction between zinc and sulphuric acid is measured by collecting gas. Which set of conditions gives the fastest rate?], [zinc powder, 2 M acid, 40 °C],
    [Which of these changes shifts the equilibrium of an exothermic gaseous reaction to the right?], [lowering the temperature],
    [The oxidation number of nitrogen in ammonia, NH₃, is], [−3],
    [A solution has [H⁺] = 2 × 10⁻⁵ mol dm⁻³. Its pH is], [4.7],
    [When a saturated solution is filtered, the filtrate is], [saturated],
    [Enthalpy change for dissolving is the sum of lattice energy and], [hydration energy],
    [A solid catalyst in a reaction between gases works because the gases], [are adsorbed onto the surface where bonds are weakened],
    [An equilibrium mixture of N₂O₄ and NO₂ is brown. Cooling it makes the colour paler, so the formation of N₂O₄ is], [exothermic],
    [Which ion would be discharged first at the cathode from a mixture containing Cu²⁺, H⁺ and Na⁺?], [Cu²⁺],
    [Which apparatus is rinsed with the solution it is to contain before use?], [the burette],
    [Sodium chloride's solubility curve is almost flat because], [its dissolving is close to thermoneutral],
    [If 25 cm³ of 2.0 M HCl and 25 cm³ of 2.0 M NaOH are mixed and the temperature rises by 13.5 K, ΔH_neutralisation is about], [−57 kJ mol⁻¹],
    [In a rate experiment, the gradient of a concentration–time curve at any instant gives], [the instantaneous rate at that time],
    [For the equilibrium N₂(g) + O₂(g) ⇌ 2NO(g), K_c has], [no units],
    [Which statement is true for a cell that has run down?], [its potential difference has fallen to zero],
  )
]

