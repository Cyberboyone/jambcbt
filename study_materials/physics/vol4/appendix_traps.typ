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
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Twelve Traps, Worked]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The twelve mistakes that account for most of the marks lost in this volume, each one shown with the wrong answer it produces. Every trap here appears at least once in the drills — the point of the page is that you meet it here first, where it costs nothing.]
]

#v(4pt)

== J.1 Microcoulombs Are Not Coulombs

*The trap:* substituting 4 and 6 into Coulomb's law when the charges are 4 µC and 6 µC.

*What it does:* $F = 9 times 10^9 times 4 times 6 \/ 0.09 = 2.4 times 10^(12)$ N — a force that would flatten a building. The right answer is $2.4$ N, and the entire difference is the factor $10^(-12)$ from squaring $10^(-6)$.

*The cure:* convert every micro- and milli- quantity on the same line as you read it, before writing the formula.

== J.2 Forgetting to Square the Distance

*The trap:* $F = k q_1 q_2 \/ r$ instead of $r^2$.

*What it does:* between two 2 µC charges 0.30 m apart it gives 0.12 N instead of 0.40 N. Both answers look plausible, which is why the option is always there.

*The cure:* write $r^2$ and substitute $0.30$ in brackets, so the squaring cannot be skipped.

== J.3 Series and Parallel Swapped

*The trap:* adding capacitors in series, or using reciprocal addition for resistors in parallel.

*What it does:* two 6 µF capacitors in series are 3 µF, not 12 µF; two 6 $Omega$ resistors in parallel are 3 $Omega$, not 12 $Omega$. The give-away is that a series combination of capacitors is *smaller* than each, and a parallel combination of resistors is *smaller* than each.

*The cure:* ask which quantity is shared — charge in series, p.d. in parallel — and the rule follows.

== J.4 Dropping the Internal Resistance

*The trap:* using $I = E\/R$ for a real cell.

*What it does:* a 12 V cell with $r = 0.50$ $Omega$ driving 5.5 $Omega$ gives 2.18 A instead of 2.0 A, and the terminal p.d. then works out as 12 V instead of 11 V.

*The cure:* write $E = V + I r$ first, every time, even when the question does not mention $r$.

== J.5 The Lost Factor of a Half

*The trap:* using $W = C V^2$ for the energy in a capacitor.

*What it does:* doubles every energy answer. A 470 µF capacitor at 12 V stores 0.034 J, not 0.068 J.

*The cure:* remember that the charge is built up gradually, so the average p.d. is $V\/2$ — and the half comes from that average.

== J.6 The Diode's 0.7 V

*The trap:* $I = V\/R$ in a circuit that contains a forward-biased diode.

*What it does:* a 6 V supply and a 100 $Omega$ resistor give 60 mA instead of 53 mA.

*The cure:* subtract the barrier p.d. first, then divide. If the answer is offered as an option, it is there to catch you.

== J.7 Intensity Against Frequency

*The trap:* explaining the kinetic energy of photoelectrons with the brightness of the light.

*What it does:* produces the wrong option in every photoelectric question of the paper — and the wrong reason in a written answer.

*The cure:* intensity sets *how many* electrons; frequency sets *how fast*. Write the sentence before answering.

== J.8 Joules Against Electron-Volts

*The trap:* subtracting a work function in eV from a photon energy in joules.

*What it does:* gives an answer wrong by a factor of $10^(19)$, usually so absurd that a candidate assumes the method is wrong rather than the units.

*The cure:* convert both to the same unit before subtracting. $h f$ in joules is divided by $1.6 times 10^(-19)$ to give eV.

== J.9 The Isotope That Is Not Balanced

*The trap:* balancing the mass numbers of a decay equation and forgetting the atomic numbers.

*What it does:* turns thorium into radium and looks entirely reasonable, because the top line balances.

*The cure:* write the two lines as columns and add each one separately.

== J.10 Half-Lives Counted Wrong

*The trap:* dividing the time by the half-life and stopping there, or multiplying by $1\/2$ once when several half-lives have passed.

*What it does:* a sample with a 5-day half-life after 20 days is said to retain a quarter rather than a sixteenth.

*The cure:* find $n$ first, then use $(1\/2)^n$. If the numbers are awkward, count the halvings by hand: $800, 400, 200, 100$.

== J.11 Transformer Currents the Wrong Way Round

*The trap:* using $V_p I_p = V_s I_s$ with the subscripts in the wrong places.

*What it does:* gives a primary current larger than the secondary in a step-down transformer — which would mean the transformer is creating energy.

*The cure:* check the direction. If the voltage goes down, the current must go up, and vice versa.

== J.12 The Radiation That Is "Most Dangerous"

*The trap:* choosing gamma as the most dangerous radiation because it penetrates furthest.

*What it does:* loses the mark in every question that specifies *inside the body* or *inhaled*.

*The cure:* alpha is the most ionising and therefore the most damaging once inside the body, because all its energy is deposited in a few cells. Gamma is the most penetrating and therefore the most dangerous from outside. Read which one the question means.

#v(4pt)

#shortcut-box("The thirty-second audit")[
  Before you shade an answer, run four checks: (1) are all quantities in SI units, (2) has the squared distance been squared, (3) does the answer's *unit* match what was asked for, and (4) is it in the right direction — bigger or smaller — for the change described? Those four questions catch nine of the twelve traps on this page, and they take less time than reading the question twice.
]

#v(4pt)

== J.13 The Four Checks as a Table

#table(
  columns: (1.35fr, 1.85fr, 1.5fr),
  inset: 4pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Check],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The traps it catches],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What a failure looks like],
  ),
  [Are the units SI?], [J.1, J.6 and half of J.8], [an answer a thousand times too large, or an energy in the wrong power of ten],
  [Has the square been taken?], [J.2 and J.9], [a force that is plausible but not matching any option, or a nucleus that is the wrong element],
  [Does the unit of the answer match the question?], [J.5, J.7 and J.11], [a current larger on the primary than the secondary, or an energy double the right value],
  [Is the direction of the change right?], [J.3, J.10 and J.12], [a series combination bigger than its parts, or a fraction that falls too slowly],
)

#v(2pt)

#text(size: 9.7pt)[None of the four checks takes more than five seconds, and together they catch more marks than a fifth reading of the chapter. The habit to build is not "be more careful" — that is a hope, not a method — but four questions asked in the same order every time, until they are asked without thinking.]
