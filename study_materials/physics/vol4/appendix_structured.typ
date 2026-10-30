#import "template.typ": *

#current-chapter.update("Appendix I: Structured Questions")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: Structured Questions]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Structured Questions]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Eight written-answer questions, in the style of the theory paper and of the post-UTME screening tests that still ask for working. Each carries a mark scheme, because a structured question is marked on the steps and not on the final number.]
]

#v(4pt)

== I.1 Electrostatics

*1.* Two point charges of $+3.0$ µC and $-5.0$ µC are placed $0.20$ m apart in air.

+(a) Calculate the magnitude of the force between them. [3]
+(b) State the direction of the force on the positive charge. [1]
+(c) The charges are now immersed in a liquid of relative permittivity 2.5. State and explain what happens to the force. [2]

#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[MARK SCHEME]
  #v(3pt)
  #text(size: 9.5pt)[
    (a) $F = k q_1 q_2 \/ r^2 = (9.0 times 10^9 times 3.0 times 10^(-6) times 5.0 times 10^(-6)) \/ (0.20)^2$ *[1]*
    $= 3.4$ N *[1]* with the substitution shown *[1]*.
    (b) Towards the negative charge — the two attract. *[1]*
    (c) The force falls to $3.4 \/ 2.5 = 1.4$ N *[1]*, because the medium is polarised and partly cancels the field of each charge *[1]*.
  ]
]

#v(4pt)

== I.2 Current Electricity

*2.* A cell of e.m.f. $6.0$ V and internal resistance $0.50$ $Omega$ is connected to a $2.5$ $Omega$ resistor.

+(a) Calculate the current in the circuit. [2]
+(b) Calculate the terminal p.d. of the cell. [2]
+(c) Calculate the power delivered to the external resistor and the power wasted inside the cell. [3]

#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[MARK SCHEME]
  #v(3pt)
  #text(size: 9.5pt)[
    (a) $I = E\/(R + r) = 6.0\/3.0$ *[1]* $= 2.0$ A *[1]*.
    (b) $V = E - I r = 6.0 - 1.0$ *[1]* $= 5.0$ V *[1]*, or $V = I R = 2.0 times 2.5$.
    (c) External: $P = I^2 R = 4.0 times 2.5 = 10$ W *[1]*. Internal: $P = I^2 r = 4.0 times 0.50 = 2.0$ W *[1]*. The two add to $I E = 12$ W, the total power of the cell *[1]*.
  ]
]

#v(4pt)

== I.3 Magnetism and Induction

*3.* A coil of $200$ turns and area $0.015$ m² lies with its plane perpendicular to a magnetic field that falls steadily from $0.40$ T to zero in $0.20$ s.

+(a) Calculate the average e.m.f. induced in the coil. [3]
+(b) State Lenz's law and explain how it applies here. [2]
+(c) State one way to increase the induced e.m.f. without changing the field. [1]

#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[MARK SCHEME]
  #v(3pt)
  #text(size: 9.5pt)[
    (a) $Delta Phi = B A = 0.40 times 0.015 = 6.0 times 10^(-3)$ Wb *[1]*; $E = N Delta Phi \/ Delta t = 200 times 6.0 times 10^(-3) \/ 0.20$ *[1]* $= 6.0$ V *[1]*.
    (b) The induced current opposes the change producing it *[1]*: it flows so as to maintain the flux that is being lost, i.e. in the direction that would produce a field in the original direction *[1]*.
    (c) Wind more turns, or turn the coil faster — either raises $N$ or the rate of change. *[1]*
  ]
]

#v(4pt)

== I.4 Electronics

*4.* A silicon diode is connected in series with a $220$ $Omega$ resistor and a $6.0$ V supply, forward biased.

+(a) State the p.d. across the diode when it conducts. [1]
+(b) Calculate the current in the circuit. [2]
+(c) The diode is now reversed. State and explain what happens to the current. [2]

#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[MARK SCHEME]
  #v(3pt)
  #text(size: 9.5pt)[
    (a) About $0.7$ V for silicon *[1]*.
    (b) $I = (6.0 - 0.7)\/220$ *[1]* $= 24$ mA *[1]*.
    (c) Almost no current flows — only a leakage of microamps *[1]* — because the junction is reverse biased and the barrier is raised rather than lowered *[1]*.
  ]
]

#v(4pt)

== I.5 Atomic Physics

*5.* Light of wavelength $400$ nm falls on a metal of work function $2.0$ eV. Take $h = 6.6 times 10^(-34)$ J s, $c = 3.0 times 10^8$ m s⁻¹ and $e = 1.6 times 10^(-19)$ C.

+(a) Calculate the energy of one photon in eV. [3]
+(b) Calculate the maximum kinetic energy of the emitted electrons. [1]
+(c) State what happens if the intensity of the light is doubled. [1]
+(d) State what happens if light of $600$ nm is used instead. [2]

#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[MARK SCHEME]
  #v(3pt)
  #text(size: 9.5pt)[
    (a) $E = h c \/ lambda = (6.6 times 10^(-34) times 3.0 times 10^8)\/(4.0 times 10^(-7))$ *[1]* $= 4.95 times 10^(-19)$ J *[1]* $= 3.1$ eV *[1]*.
    (b) $3.1 - 2.0 = 1.1$ eV, or $1.8 times 10^(-19)$ J *[1]*.
    (c) The number of electrons per second doubles; their maximum energy is unchanged *[1]*.
    (d) 600 nm photons carry $2.1$ eV, which is above $2.0$ eV but only just, so emission continues but the electrons are much slower; were the wavelength longer than the threshold (about 620 nm) there would be no emission at all *[2]*.
  ]
]

#v(4pt)

== I.6 Radioactivity

*6.* A radioactive source has a half-life of $12$ hours. Its activity at 10:00 is $3200$ counts per minute.

+(a) Calculate the activity at 22:00 the same day. [2]
+(b) Calculate the activity at 10:00 the following day. [2]
+(c) Explain why the activity never quite reaches zero. [2]

#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[MARK SCHEME]
  #v(3pt)
  #text(size: 9.5pt)[
    (a) Twelve hours is one half-life, so $3200\/2 = 1600$ counts min⁻¹ *[2]*.
    (b) Twenty-four hours is two half-lives, so $3200\/4 = 800$ counts min⁻¹ *[2]*.
    (c) The law removes half of what *remains* at each half-life, so the number falls geometrically and never reaches zero; in practice the source becomes undetectable once its count rate is comparable with the background *[2]*.
  ]
]

#v(4pt)

== I.7 Nuclear Energy

*7.* In one fission of a uranium-235 nucleus the mass of the products is $0.20$ u less than the mass of the reactants. Take $1$ u $= 1.66 times 10^(-27)$ kg and $c = 3.0 times 10^8$ m s⁻¹.

+(a) Calculate the energy released per fission, in joules. [3]
+(b) Express the answer in MeV. [1]
+(c) State one difference between fission and fusion, and one example of each. [2]

#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[MARK SCHEME]
  #v(3pt)
  #text(size: 9.5pt)[
    (a) $Delta m = 0.20 times 1.66 times 10^(-27)$ *[1]* $= 3.3 times 10^(-28)$ kg; $E = Delta m c^2$ *[1]* $= 3.0 times 10^(-11)$ J *[1]*.
    (b) $3.0 times 10^(-11) \/ 1.6 times 10^(-13) = 190$ MeV *[1]*.
    (c) Fission splits a heavy nucleus (uranium-235 in a reactor); fusion joins light ones (hydrogen to helium in the Sun). Either direction releases energy because the products are more tightly bound *[2]*.
  ]
]

#v(4pt)

== I.8 A Mixed Question

*8.* A transformer steps $240$ V down to $12$ V and delivers $48$ W to a load.

+(a) Calculate the turns ratio. [1]
+(b) Calculate the secondary current. [1]
+(c) The primary current is $0.22$ A. Calculate the efficiency. [2]
+(d) State two causes of the loss. [2]
+(e) Explain why the transformer would not work on a d.c. supply. [2]

#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[MARK SCHEME]
  #v(3pt)
  #text(size: 9.5pt)[
    (a) $N_p : N_s = 20 : 1$ *[1]*.
    (b) $I_s = 48\/12 = 4.0$ A *[1]*.
    (c) $P_p = 240 times 0.22 = 52.8$ W *[1]*; $eta = 48\/52.8 = 91$ % *[1]*.
    (d) Any two: resistance heating in the coils (copper loss), eddy currents in the core, repeated magnetisation of the core (hysteresis), flux leakage *[2]*.
    (e) A steady d.c. gives a steady flux, and a steady flux induces no e.m.f. in the secondary *[2]* — the transformer simply heats up through the resistance of its primary.
  ]
]

#v(4pt)

#concept-box("How a structured answer earns its marks")[
  + Write the formula first, then substitute, then give the answer with its unit. The three steps are usually separate marks.
  + Answer *every* part, even the ones you cannot finish: a stated law or a named cause is worth more than a blank line.
  + When a part says "state and explain", the explanation is the mark. "It decreases" earns half; "it decreases because the medium is polarised" earns both.
  + Keep the powers of ten visible. A structured question is marked on the working, so a slipping exponent costs one mark rather than the whole question — but only if the working is there to be seen.
]
