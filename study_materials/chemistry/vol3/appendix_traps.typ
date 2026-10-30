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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twelve mistakes account for most of the lost marks in Inorganic Chemistry. Each one below is shown with the wrong answer a real candidate gives, the reason it is wrong, and the one-line fix.]
]

#v(4pt)

#concept-box("Read the wrong answers, not the right ones")[
  There is no value in being told the right answer — you already know it on a good day. The value is in recognising the *shape* of the wrong one, because that is the shape your own script takes under pressure at 10.40 in the morning. Each trap below is written as a candidate would write it.
]


=== Trap 1 — The equation without the condition

*Question.* Magnesium is heated in steam. Write the equation. \
*Wrong answer.* $2"Mg" + "O"_2 -> "2MgO"$ — the candidate has written the combustion equation from memory instead of reading the reagent. \
*Right answer.* $"Mg" + "H"_2 "O" -> "MgO" + "H"_2$, with the condition *steam, strong heat*. \
*Fix.* Underline the reagent in the question before you write anything. Inorganic equations are chosen by the reagent, not by the metal.

=== Trap 2 — Dilute acid where concentrated acid is needed

*Question.* Copper is warmed with sulphuric acid. Name the gas evolved. \
*Wrong answer.* Hydrogen, because “acid plus metal gives hydrogen”. \
*Right answer.* Sulphur(VI) oxide — sulphur dioxide, from the *hot concentrated* acid, which is acting as an oxidising agent. Copper is below hydrogen, so with the dilute acid there is no reaction at all. \
*Fix.* Two questions, in this order: is the metal above hydrogen? and is the acid dilute or concentrated? A metal below hydrogen reacts only with the concentrated, oxidising acid, and then never gives hydrogen.

=== Trap 3 — The wrong iron oxide in the blast furnace

*Question.* Write the equation for the reduction of the ore in a blast furnace. \
*Wrong answer.* $2"Fe" + "3CO" -> "Fe"_2 "O"_3 + "3C"$ — reversed, and balanced as if carbon were the product. \
*Right answer.* $"Fe"_2 "O"_3 + "3CO" -> "2Fe" + "3CO"_2$. \
*Fix.* Write the ore on the left, always. The reducing agent is carbon monoxide, and it becomes carbon dioxide — not carbon.

=== Trap 4 — Steam against cold water

*Question.* State what is observed when zinc is added to cold water. \
*Wrong answer.* “Effervescence; zinc reacts to give zinc oxide and hydrogen.” \
*Right answer.* Nothing is observed: zinc does not react with cold water. It reacts only with steam, at high temperature, and even then the product is zinc oxide, not the hydroxide. \
*Fix.* Only potassium, sodium and calcium react with *cold* water. Everything from magnesium down to iron needs steam.

=== Trap 5 — Naming the wrong ion in a test

*Question.* A solution gives a white precipitate with barium chloride that does not dissolve in dilute acid. Name the ion. \
*Wrong answer.* Carbonate, or sulphate, or chloride — “a white precipitate” is not enough. \
*Right answer.* Sulphate. The acid-insolubility is the whole point: barium carbonate dissolves in acid, barium sulphate does not. \
*Fix.* Every precipitate test has *two* observations — a colour and a solubility. A script that gives only the colour has given half the answer.

=== Trap 6 — “Ammonia is dried with concentrated sulphuric acid”

*Question.* Name a drying agent for ammonia. \
*Wrong answer.* Concentrated sulphuric acid, because it dries every gas. \
*Right answer.* Calcium oxide. Ammonia is a base and would be neutralised by the acid, and calcium chloride would form a complex with it. \
*Fix.* Ask whether the gas is acidic or basic before choosing a desiccant. Acidic gas, basic drier — and the other way round.

=== Trap 7 — The Haber conditions swapped

*Question.* State the conditions used in the Haber process. \
*Wrong answer.* “450 atm and 200 °C.” \
*Right answer.* About 450 °C and 200 atm, over an iron catalyst. \
*Fix.* The temperature is the smaller number and the pressure the larger, in every industrial process in this book. Say them as a pair: *450 and 200, iron*.

=== Trap 8 — Le Chatelier applied to the wrong side

*Question.* The reaction $2"SO"_2 + "O"_2 <=> 2"SO"_3$ is exothermic. What happens to the yield of sulphur trioxide if the temperature is raised? \
*Wrong answer.* “It rises, because the reaction speeds up.” \
*Right answer.* It falls. Raising the temperature drives an exothermic reaction back towards the reactants; the reaction is faster, but the equilibrium yield is lower. \
*Fix.* Rate and yield are different questions. A catalyst or a higher temperature changes the *rate*; only temperature and pressure change the *position* of the equilibrium.

=== Trap 9 — The amphoteric precipitate described as insoluble

*Question.* Sodium hydroxide solution is added drop by drop to aluminium sulphate solution, then in excess. Describe what is seen. \
*Wrong answer.* “A white precipitate forms and does not dissolve.” \
*Right answer.* A white precipitate forms and then *dissolves in excess* to give a colourless solution, because aluminium hydroxide is amphoteric. \
*Fix.* If the question says “then in excess”, the examiner is testing amphoterism. Only aluminium and zinc hydroxides dissolve; the rest stay.

=== Trap 10 — Percentage by mass of the wrong element

*Question.* Calculate the percentage by mass of nitrogen in ammonium sulphate, $("NH"_4)_2 "SO"_4$. \
*Wrong answer.* $14 div 132 times 100 = 10.6$ % — the candidate used one nitrogen atom instead of two. \
*Right answer.* $M = 132$; the two nitrogen atoms contribute 28, so the percentage is $28 div 132 times 100 = 21.2$ %. \
*Fix.* Write the formula out and count the atoms before you touch the calculator. Half of all formula-mass slips are a miscounted subscript.

=== Trap 11 — Hardness removed by the wrong reagent

*Question.* Name a substance that removes permanent hardness from water. \
*Wrong answer.* “Boiling, or calcium hydroxide.” \
*Right answer.* Washing soda, sodium carbonate — or an ion-exchange resin. Boiling removes only temporary hardness, and calcium hydroxide is used to remove temporary hardness, not permanent. \
*Fix.* Temporary hardness is hydrogencarbonate, and hydrogencarbonate is broken by heat. Permanent hardness is sulphate, and sulphate is broken only by precipitation or exchange.

=== Trap 12 — The displacement that cannot happen

*Question.* A piece of copper is left in silver nitrate solution. State what is observed. \
*Wrong answer.* “No reaction, because copper is unreactive.” \
*Right answer.* Copper *does* react: silvery crystals of silver appear and the solution turns blue, because copper is above silver in the reactivity series. What copper cannot do is displace zinc, iron or magnesium. \
*Fix.* “Unreactive” only ever means *relative to what you are comparing it with*. Copper is below hydrogen but well above silver.

#block(breakable: false, width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 12pt)[
  #text(font: "DejaVu Sans", size: 9.0pt, weight: "bold", fill: jamb-green)[THE CHECKLIST THESE TWELVE MAKE]
  #v(4pt)
  #set par(leading: 0.74em)
  + Have I read the reagent, including *dilute* or *concentrated*, *cold* or *steam*?
  + Have I written the ore on the left and the products on the right?
  + Does my precipitate test give both a colour and a solubility?
  + Is a gas acidic or basic before I choose a drying agent?
  + Have I counted the atoms in the formula before dividing?
  + For an equilibrium question, am I being asked about *rate* or about *yield*?
]
