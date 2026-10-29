"""Volume 2 diagrams — coordination and control.

Every figure is hand-written SVG on the same 760-unit canvas as Volume 1, so
the two books look like one series.
"""

from __future__ import annotations

import matplotlib.pyplot as plt
from matplotlib.patches import Circle, Ellipse, FancyBboxPatch, Polygon, Rectangle, Wedge

from common import (recap_card, OUT, GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE,
                    MUTED, BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE,
                    BLUE_LIGHT, PURPLE, PURPLE_LIGHT, write_svg, svg, t, lines,
                    rect, arrow, line, card, save)

plt.rcParams.update({"font.family": "DejaVu Sans"})


def dot(cx, cy, r, fill=GREEN, stroke="none", sw=1.0):
    """A plain SVG circle — matplotlib patches cannot be written as SVG text."""
    st = f' stroke="{stroke}" stroke-width="{sw}"' if stroke != "none" else ""
    return f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="{fill}"{st}/>'


def blob(points, fill, stroke, sw=2.0):
    pts = " ".join(f"{x},{y}" for x, y in points)
    return f'<polygon points="{pts}" fill="{fill}" stroke="{stroke}" stroke-width="{sw}"/>' 

WEIGHTS = [2, 2, 2, 3, 3, 1, 2, 1, 1, 2]
TITLES = ["Nervous\ncoordination", "Brain &\nsenses", "Hormones", "Plant\nreproduction",
          "Animal\nreproduction", "Growth &\ndevelopment", "Health &\ndisease",
          "Micro-\norganisms", "Drugs &\npublic health", "Practical\nskills"]


# ── front matter ───────────────────────────────────────────────────────────
def cover_banner():
    w, h = 760, 150
    b = [rect(0, 0, w, h, GREEN_LIGHT, GREEN, 10, 1.4),
         f'<rect x="0" y="0" width="{w}" height="6" rx="3" fill="{GREEN}"/>',
         t(380, 46, "COORDINATION  •  REPRODUCTION  •  GROWTH", size=15, weight="bold"),
         t(380, 72, "The Neurone and the Synapse, the Brain and the Sense Organs,", size=11, fill=SLATE),
         t(380, 90, "Hormones, the Flower and the Seed, Pregnancy, Disease and Immunity", size=11, fill=SLATE),
         t(380, 120, "Two full CBT mock papers · 300 drill questions · 120-question master bank",
           size=9.4, fill=MUTED)]
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg=GREEN_LIGHT))


def utme_weight_chart():
    fig, ax = plt.subplots(figsize=(7.6, 3.1))
    colors = [GREEN if v >= 3 else (BLUE if v == 2 else PURPLE) for v in WEIGHTS]
    bars = ax.bar(TITLES, WEIGHTS, color=colors, edgecolor="white", linewidth=1.1, width=0.66)
    for b, v in zip(bars, WEIGHTS):
        ax.text(b.get_x() + b.get_width() / 2, v + 0.07, str(v), ha="center",
                fontsize=10, color=NAVY, fontweight="bold")
    ax.set_ylim(0, 3.7)
    ax.set_ylabel("Typical questions")
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)
    ax.set_yticks([0, 1, 2, 3])
    ax.tick_params(axis="x", labelsize=7.4)
    ax.grid(axis="y", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "utme_weight.svg")


# ── chapter 1: the neurone ─────────────────────────────────────────────────
def ch01_neurone():
    w, h = 760, 300
    b = [t(380, 24, "A MOTOR NEURONE — STRUCTURE AND FUNCTION", size=13.2, weight="bold", fill=NAVY)]
    cy = 150
    # dendrites
    for dx, dy in ((-40, -26), (-46, 0), (-40, 26), (-24, -40), (-24, 40)):
        b.append(line(96, cy, 96 + dx, cy + dy, color=BLUE, sw=2.4))
        b.append(dot(96 + dx, cy + dy, 3.2, BLUE))
    # cell body
    b.append(dot(112, cy, 26, BLUE_LIGHT, BLUE, 2.0))
    b.append(dot(112, cy, 9, PURPLE))
    # axon
    b.append(line(138, cy, 560, cy, color=GREEN, sw=3.2))
    # myelin sheaths
    for x0 in (168, 268, 368, 468):
        b.append(rect(x0, cy - 15, 78, 30, "#FFFFFF", GREEN, 12, 1.8))
    # axon terminals
    for dx, dy in ((0, -22), (0, 0), (0, 22), (16, -12), (16, 12)):
        b.append(line(560, cy, 596 + dx * 0.2, cy + dy, color=GREEN, sw=2.2))
        b.append(dot(600 + dx * 0.2, cy + dy, 5.2, GREEN_MID, GREEN, 1.2))

    b += [
        t(70, 96, "Dendrites", size=10, fill=BLUE, weight="bold"),
        line(78, 100, 96, 124, color=BLUE, sw=1.0),
        t(112, 208, "Cell body", size=10, fill=NAVY, weight="bold"),
        line(112, 196, 112, 176, color=NAVY, sw=1.0),
        t(112, 226, "(nucleus inside)", size=8.6, fill=MUTED),
        t(230, 108, "Myelin sheath", size=10, fill=GREEN, weight="bold"),
        line(232, 112, 208, 134, color=GREEN, sw=1.0),
        t(340, 92, "Node of Ranvier", size=10, fill=AMBER, weight="bold"),
        line(340, 96, 350, 134, color=AMBER, sw=1.0),
        t(300, 208, "Axon", size=10, fill=GREEN, weight="bold"),
        line(300, 196, 320, 166, color=GREEN, sw=1.0),
        t(640, 96, "Axon terminals", size=10, fill=GREEN, weight="bold"),
        line(646, 100, 622, 122, color=GREEN, sw=1.0),
        t(660, 208, "(synapse with the next cell)", size=8.6, fill=MUTED),
    ]
    b.append(arrow(600, 208, 610, 178, color=MUTED, sw=1.1, marker="an"))
    b.append(t(380, 268, "Impulse direction: dendrites → cell body → axon → axon terminals (one way only).",
               size=9.4, fill=MUTED))
    write_svg("ch01_neurone.svg", svg(w, h, "\n".join(b)))


def ch01_synapse():
    w, h = 760, 300
    b = [t(380, 24, "THE SYNAPSE — HOW AN IMPULSE CROSSES THE GAP", size=13.2, weight="bold", fill=NAVY)]
    # presynaptic knob
    b.append(blob([(70, 70), (250, 90), (250, 210), (70, 230)], BLUE_LIGHT, BLUE, 2.0))
    # vesicles
    for cx, cy in ((110, 110), (110, 160), (110, 200), (160, 120), (160, 175), (205, 140), (205, 190)):
        b.append(dot(cx, cy, 11, "#FFFFFF", BLUE, 1.3))
        b.append(dot(cx, cy, 3.4, BLUE))
    # cleft
    b.append(rect(252, 60, 46, 180, "#F8FAFC", BORDER, 0, 1.0, dash="4 3"))
    # postsynaptic membrane
    b.append(blob([(300, 60), (700, 60), (700, 240), (300, 240)], GREEN_LIGHT, GREEN, 2.0))
    # receptors
    for y in (100, 148, 196):
        b.append(rect(292, y - 13, 26, 26, "#FFFFFF", GREEN, 4, 1.4))
    # transmitter
    for cx, cy in ((265, 128), (280, 150), (270, 178)):
        b.append(dot(cx, cy, 5.4, AMBER))
    b.append(arrow(232, 150, 262, 150, color=AMBER, sw=2.0, marker="aa"))
    b.append(arrow(330, 148, 452, 148, color=GREEN, sw=2.0, marker="ag"))

    b += [
        t(150, 258, "Presynaptic knob", size=10.2, weight="bold", fill=BLUE),
        t(150, 274, "vesicles of transmitter", size=8.8, fill=MUTED),
        t(275, 46, "Synaptic cleft", size=10.2, weight="bold", fill=NAVY),
        t(500, 40, "Postsynaptic membrane (next neurone)", size=10.2, weight="bold", fill=GREEN),
        t(400, 272, "Receptor proteins pick up the transmitter and start a new impulse.", size=9.2, fill=MUTED),
        t(392, 108, "Transmitter released by exocytosis", size=9.4, fill=AMBER),
        t(392, 136, "New impulse in the next neurone", size=9.4, fill=GREEN),
        t(560, 232, "Transmitter is destroyed by an enzyme, so the signal stops", size=9.2, fill=SLATE),
    ]
    write_svg("ch01_synapse.svg", svg(w, h, "\n".join(b)))


def ch01_impulse_path():
    w, h = 760, 250
    b = [t(380, 24, "FROM STIMULUS TO RESPONSE — THE PATHWAY OF AN IMPULSE", size=13.0, weight="bold", fill=NAVY)]
    nodes = [("STIMULUS", "heat, light,\npressure", AMBER),
             ("RECEPTOR", "skin, retina,\near", AMBER),
             ("SENSORY\nNEURONE", "to the CNS", BLUE),
             ("CNS", "spinal cord\nor brain", NAVY),
             ("MOTOR\nNEURONE", "away from CNS", GREEN),
             ("EFFECTOR", "muscle or\ngland", RED),
             ("RESPONSE", "movement or\nsecretion", PURPLE)]
    x = 14
    for i, (name, sub, col) in enumerate(nodes):
        b.append(rect(x, 62, 88, 96, "#FFFFFF", col, 8, 1.6))
        b.append(f'<rect x="{x}" y="62" width="88" height="5" rx="2.5" fill="{col}"/>')
        for j, ln in enumerate(name.split("\n")):
            b.append(t(x + 44, 92 + j * 13, ln, size=10.0, weight="bold", fill=col))
        for j, ln in enumerate(sub.split("\n")):
            b.append(t(x + 44, 128 + j * 11, ln, size=7.8, fill=MUTED))
        if i < len(nodes) - 1:
            b.append(arrow(x + 90, 110, x + 106, 110, color=MUTED, sw=1.6, marker="an"))
        x += 106
    b.append(rect(18, 176, 724, 46, GREEN_LIGHT, GREEN, 8, 1.2))
    b.append(t(380, 196, "A reflex action is the whole pathway without waiting for the brain: the spinal cord does the linking.",
               size=9.6, fill=SLATE))
    b.append(t(380, 212, "Three neurones, one gap each — sensory → relay → motor.", size=9.6, fill=SLATE))
    write_svg("ch01_pathway.svg", svg(w, h, "\n".join(b)))


def recap_cards_a():
    recap_card("recap_ch01.svg", "Chapter 1 recap card — nervous coordination", [
        ("Neurone parts", "Dendrites carry impulses in; the axon carries them out; myelin insulates and speeds them up."),
        ("Impulse", "A wave of depolarisation, always one way: dendrite → cell body → axon → terminal."),
        ("Synapse", "A gap; the impulse crosses as a chemical transmitter, which is then destroyed."),
        ("Reflex arc", "Stimulus → receptor → sensory neurone → CNS → motor neurone → effector → response."),
    ])
