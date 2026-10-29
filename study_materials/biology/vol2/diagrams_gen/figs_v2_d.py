"""Chapter 7-10 figures for Biology Volume 2."""

from common import *  # noqa: F401,F403


# ── chapter 7 ──────────────────────────────────────────────────────────────
def ch07_infection_chain():
    w, h = 720, 372
    b = [t(360, 26, "THE CHAIN OF INFECTION — BREAK ANY LINK AND THE DISEASE STOPS", size=12.8, weight="bold", fill=NAVY)]

    cards = [
        (14, "SOURCE", GREEN, "the person, animal\nor soil where\nthe pathogen lives"),
        (186, "EXIT", BLUE, "faeces, urine,\nsputum, blood,\nsaliva"),
        (358, "TRANSMISSION", AMBER, "water, food, air,\na vector, direct\ncontact"),
        (530, "ENTRY + HOST", RED, "mouth, nose, a cut\nor a bite — the host\nmust be susceptible"),
    ]
    for x, title, col, body in cards:
        b.append(rect(x, 50, 176, 116, "#FFFFFF", col, 8, 1.7))
        b.append(rect(x, 50, 176, 26, col, col, 8, 1.7))
        b.append(rect(x, 64, 176, 12, col, col, 0, 0))
        b.append(t(x + 88, 68, title, size=10.6, weight="bold", fill="#FFFFFF"))
        for i, ln in enumerate(body.split("\n")):
            b.append(t(x + 88, 104 + i * 17, ln, size=10.0, fill=SLATE))

    for x in (186, 358, 530):
        b.append(arrow2(x - 20, 108, x - 2, 108, color=MUTED, sw=2.2))

    b.append(rect(14, 182, 692, 28, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(360, 200, "Break the chain: bury or treat waste · boil or chlorinate water · cover food · kill vectors · vaccinate",
               size=9.6, fill=SLATE))

    ex = [
        ("CHOLERA", "water and food contaminated by faeces", "boil water, build latrines, wash hands"),
        ("MALARIA", "bitten by an infected female Anopheles", "nets, drain pools, kill the mosquito"),
        ("TUBERCULOSIS", "droplets coughed into the air", "cover the mouth, ventilate, vaccinate"),
    ]
    for i, (name, route, action) in enumerate(ex):
        y = 228 + i * 46
        b.append(rect(14, y, 692, 40, "#FFFFFF", BORDER, 6, 1.0))
        b.append(t(28, y + 25, name, size=10.0, weight="bold", fill=GREEN, anchor="start"))
        b.append(t(140, y + 25, route, size=9.6, fill=SLATE, anchor="start"))
        b.append(t(430, y + 25, "→  " + action, size=9.6, weight="bold", fill=RED, anchor="start"))
    write_svg("ch07_chain.svg", svg(w, h, "\n".join(b)))


def ch07_immunity():
    """Primary and secondary antibody responses, drawn on true axes."""
    import numpy as np

    days = np.linspace(0, 60, 900)

    def sig(t, start, width):
        return np.where(t > start, 1 - np.exp(-(((t - start) / width) ** 2)), 0.0)

    primary = 0.30 * sig(days, 8, 3.2) * np.exp(-np.clip(days - 16, 0, None) / 55)

    base = float(np.interp(30.0, days, primary))
    secondary = base + 0.78 * sig(days, 30, 2.3) * np.exp(-np.clip(days - 37, 0, None) / 70)
    secondary = np.where(days >= 30, secondary, np.nan)

    fig, ax = plt.subplots(figsize=(7.6, 3.5))
    ax.plot(days, primary, color=BLUE, lw=2.6)
    ax.plot(days, secondary, color=GREEN, lw=2.9)

    ax.axvline(8, color=MUTED, lw=1.0, ls=(0, (4, 4)))
    ax.axvline(30, color=MUTED, lw=1.0, ls=(0, (4, 4)))
    ax.text(9.2, 1.09, "first exposure", fontsize=9, color=SLATE, ha="left", va="center")
    ax.text(31.4, 1.09, "second exposure", fontsize=9, color=SLATE, ha="left", va="center")

    ax.annotate("PRIMARY — slow and small;\nIgM first, symptoms may appear",
                (18.5, 0.29), xytext=(15.0, 0.60), fontsize=9, color=BLUE,
                arrowprops=dict(arrowstyle="-", color=BLUE, lw=1.0, shrinkA=2, shrinkB=4))
    ax.annotate("SECONDARY — fast and large;\nmostly IgG, often no symptoms",
                (41.0, 0.90), xytext=(39.0, 0.50), fontsize=9, color=GREEN,
                arrowprops=dict(arrowstyle="-", color=GREEN, lw=1.0, shrinkA=2, shrinkB=4))

    ax.set_xlim(0, 60)
    ax.set_ylim(0, 1.16)
    ax.set_xticks([0, 10, 20, 30, 40, 50, 60])
    ax.set_yticks([])
    axes_style(ax, xlabel="time (days)", ylabel="antibody concentration (arbitrary units)")
    ax.set_ylabel("antibody concentration", fontsize=9)
    ax.tick_params(labelsize=8.6)
    ax.set_title("THE IMMUNE RESPONSE — FIRST MEETING AND SECOND MEETING",
                 fontsize=11.4, weight="bold", color=NAVY, pad=12)
    save(fig, "ch07_immunity.svg")


def recap_cards_g():
    recap_card("recap_ch07.svg", "Chapter 7 recap card — health and disease", [
        ("Pathogen", "A disease-causing organism: virus, bacterium, protozoan, fungus or worm. A vector carries it but does not cause it."),
        ("Transmission", "Water, food, air droplets, direct contact, blood, or a vector such as the Anopheles mosquito or the tsetse fly."),
        ("Immunity", "Active = the body makes antibodies (infection or vaccine). Passive = antibodies given ready-made (colostrum, antiserum)."),
        ("Control", "Break the chain: clean water, sanitation, vector control, vaccination and health education."),
    ])


def ch08_microbes():
    """Three kinds of micro-organism, drawn to their relative complexity."""
    import math

    w, h = 720, 352
    b = [t(360, 26, "THREE KINDS OF MICRO-ORGANISM", size=12.8, weight="bold", fill=NAVY)]

    # ---------- bacterium ----------
    b.append(rect(14, 44, 224, 252, "#FFFFFF", BORDER, 8, 1.2))
    b.append(t(126, 66, "BACTERIUM", size=10.8, weight="bold", fill=GREEN))
    b.append(t(126, 82, "capsule outside, cell wall inside", size=8.4, fill=MUTED))
    b.append(rect(42, 96, 168, 68, GREEN_LIGHT, GREEN, 34, 2.2))
    b.append(rect(52, 101, 148, 58, "#FFFFFF", GREEN, 29, 1.4))
    b.append(path("M 74 130 q 13 -13 26 0 q 13 13 26 0 q 13 -13 26 0", stroke=NAVY, sw=2.4))
    b.append(dot(178, 118, 6, AMBER, AMBER, 0.8))
    b.append(path("M 208 130 q 16 8 6 22 q -10 14 6 22", stroke=GREEN, sw=1.8))
    # leaders
    b.append(line(96, 174, 108, 148, color=BORDER, sw=0.9))
    b.append(t(26, 192, "DNA — one loop, no nucleus", size=8.6, fill=SLATE, anchor="start"))
    b.append(line(150, 210, 210, 178, color=BORDER, sw=0.9))
    b.append(t(148, 222, "flagellum — for movement", size=8.6, fill=SLATE, anchor="start"))
    b.append(t(126, 250, "one cell, about 1–5 µm,", size=8.4, fill=MUTED))
    b.append(t(126, 264, "divides by binary fission", size=8.4, fill=MUTED))

    # ---------- virus ----------
    b.append(rect(248, 44, 224, 252, "#FFFFFF", BORDER, 8, 1.2))
    b.append(t(360, 66, "VIRUS", size=10.8, weight="bold", fill=RED))
    b.append(t(360, 82, "protein coat, no cytoplasm", size=8.4, fill=MUTED))
    b.append(poly([(360, 96), (404, 120), (404, 168), (360, 192), (316, 168), (316, 120)],
                  RED_LIGHT, RED, 2.0))
    for i in range(6):
        a = math.radians(60 * i - 30)
        x1, y1 = 360 + 44 * math.cos(a), 144 + 48 * math.sin(a)
        b.append(line(x1, y1, x1 + 11 * math.cos(a), y1 + 11 * math.sin(a), color=RED, sw=2.2))
    b.append(path("M 340 132 q 10 -10 20 0 q 10 10 20 0 q 10 -10 20 0", stroke=NAVY, sw=2.2))
    b.append(t(360, 226, "nucleic acid inside", size=8.6, fill=SLATE))
    b.append(t(360, 242, "about 20–300 nm —", size=8.4, fill=MUTED))
    b.append(t(360, 256, "smaller than any cell", size=8.4, fill=MUTED))
    b.append(t(360, 274, "must enter a host cell to multiply", size=8.6, fill=RED))

    # ---------- fungus ----------
    b.append(rect(482, 44, 224, 252, "#FFFFFF", BORDER, 8, 1.2))
    b.append(t(594, 66, "FUNGUS", size=10.8, weight="bold", fill=PURPLE))
    b.append(t(594, 82, "hyphae make a mycelium", size=8.4, fill=MUTED))
    # branching filaments
    b.append(path("M 594 198 q -16 -22 -34 -38 q -14 -12 -22 -26", stroke=PURPLE, sw=2.4))
    b.append(path("M 594 198 q 16 -22 34 -38 q 14 -12 22 -26", stroke=PURPLE, sw=2.4))
    b.append(path("M 594 198 q 4 -34 0 -62", stroke=PURPLE, sw=2.4))
    for cx, cy in ((536, 130), (652, 130), (594, 134)):
        b.append(dot(cx, cy, 9, PURPLE_LIGHT, PURPLE, 1.8))
    for cx, cy in ((518, 118), (670, 118), (594, 112), (566, 112), (622, 112)):
        b.append(dot(cx, cy, 3.2, PURPLE, PURPLE, 0.6))
    b.append(t(594, 216, "spores are released from the tips", size=8.6, fill=SLATE))
    b.append(t(594, 238, "yeast is the single-celled exception —", size=8.4, fill=MUTED))
    b.append(t(594, 252, "it buds instead of making hyphae", size=8.4, fill=MUTED))
    b.append(t(594, 274, "ringworm, athlete's foot, moulds", size=8.6, fill=PURPLE))

    b.append(rect(14, 308, 692, 32, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(360, 322, "Bacteria and fungi are cells and can be killed by antibiotics;", size=9.2, fill=SLATE))
    b.append(t(360, 335, "a virus is not a cell, so antibiotics do not touch it.", size=9.2, fill=SLATE))
    write_svg("ch08_microbes.svg", svg(w, h, "\n".join(b)))


def ch08_decay():
    w, h = 760, 372
    b = [t(380, 26, "THE CARBON CYCLE — HOW DECAY FITS IN", size=12.6, weight="bold", fill=NAVY)]

    def box(x, y, bw, bh, label, col, fill="#FFFFFF", size=9.6):
        b.append(rect(x, y, bw, bh, fill, col, 7, 1.7))
        lines_ = label.split("\n")
        for j, ln in enumerate(lines_):
            b.append(t(x + bw / 2, y + bh / 2 + 4 + (j - (len(lines_) - 1) / 2) * 13, ln,
                       size=size, weight="bold", fill=col))

    box(48, 44, 176, 56, "PRODUCERS\n(green plants)", GREEN, GREEN_LIGHT)
    box(456, 44, 176, 56, "CONSUMERS\n(animals)", BLUE, BLUE_LIGHT)
    box(268, 150, 176, 56, "ATMOSPHERIC CO₂", NAVY, "#F8FAFC")
    box(48, 256, 176, 56, "DEAD BODIES\nAND WASTE", AMBER, AMBER_LIGHT)
    box(456, 256, 176, 56, "DECOMPOSERS\n(bacteria, fungi)", PURPLE, PURPLE_LIGHT)

    # feeding: producers -> consumers
    b.append(arrow2(232, 72, 448, 72, color=BLUE, sw=1.9))
    b.append(t(340, 62, "feeding (food chain)", size=8.6, fill=BLUE))

    # respiration: producers -> CO2 ; photosynthesis: CO2 -> producers
    b.append(arrow2(222, 92, 292, 146, color=GREEN, sw=1.9))
    b.append(t(268, 108, "respiration", size=8.6, fill=GREEN, anchor="start"))
    b.append(arrow2(288, 166, 214, 104, color=GREEN, sw=1.9, size=7.4))
    b.append(t(212, 196, "photosynthesis", size=8.6, fill=GREEN))

    # consumers -> decomposers
    b.append(arrow2(544, 104, 544, 250, color=PURPLE, sw=1.9))
    b.append(t(556, 178, "death and", size=8.6, fill=PURPLE, anchor="start"))
    b.append(t(556, 190, "excretion", size=8.6, fill=PURPLE, anchor="start"))

    # producers -> dead bodies
    b.append(arrow2(136, 104, 136, 250, color=AMBER, sw=1.9))
    b.append(t(126, 166, "death, leaf", size=8.6, fill=AMBER, anchor="end"))
    b.append(t(126, 178, "fall and waste", size=8.6, fill=AMBER, anchor="end"))

    # dead bodies -> decomposers
    b.append(arrow2(232, 284, 448, 284, color=PURPLE, sw=1.9))
    b.append(t(340, 274, "broken down by", size=8.6, fill=PURPLE))

    # decomposers -> CO2
    b.append(arrow2(496, 250, 416, 200, color=PURPLE, sw=1.9))
    b.append(t(490, 214, "respiration", size=8.6, fill=PURPLE))

    b.append(rect(48, 330, 664, 26, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(380, 347, "Decay returns carbon to the air as CO₂ and minerals to the soil — nothing is wasted.",
               size=9.0, fill=SLATE))
    write_svg("ch08_carbon.svg", svg(w, h, "\n".join(b)))


def ch08_conditions():
    w, h = 760, 300
    b = [t(380, 26, "WHAT DECOMPOSERS NEED — AND HOW FOOD PRESERVATION SWITCHES IT OFF", size=12.2, weight="bold", fill=NAVY)]
    needs = [
        ("MOISTURE", "no water, no growth", "drying, salting, smoking"),
        ("WARMTH", "fastest near 37 °C", "refrigeration, freezing"),
        ("FOOD", "sugar and protein", "adding sugar to jam, or salt to meat"),
        ("OXYGEN", "aerobic species need air", "vacuum packing, canning"),
    ]
    for i, (need, why, stop) in enumerate(needs):
        y = 52 + i * 54
        b.append(rect(24, y, 712, 46, "#FFFFFF", BORDER, 6, 1.0))
        b.append(rect(24, y, 6, 46, GREEN, GREEN, 0, 0))
        b.append(t(46, y + 20, need, size=10.0, weight="bold", fill=GREEN, anchor="start"))
        b.append(t(46, y + 36, why, size=8.6, fill=MUTED, anchor="start"))
        b.append(t(300, y + 29, "→", size=15, fill=MUTED))
        b.append(t(330, y + 22, "switch it off by", size=8.4, fill=MUTED, anchor="start"))
        b.append(t(330, y + 36, stop, size=9.0, weight="bold", fill=NAVY, anchor="start"))
    b.append(rect(24, 272, 712, 20, GREEN_LIGHT, GREEN, 6, 1.0))
    b.append(t(380, 286, "High salt or sugar draws water out of the cells by osmosis, so the micro-organisms cannot grow.", size=8.8, fill=SLATE))
    write_svg("ch08_conditions.svg", svg(w, h, "\n".join(b)))


def recap_cards_h():
    recap_card("recap_ch08.svg", "Chapter 8 recap card — micro-organisms and decay", [
        ("Decay", "The breakdown of dead organic matter by bacteria and fungi — a form of respiration that returns CO2 and minerals."),
        ("Conditions", "Micro-organisms need moisture, warmth, food and (mostly) oxygen. Remove any one and decay slows or stops."),
        ("Usefulness", "Decay recycles nutrients, and people use it deliberately in biogas, compost, silage and bread, beer and cheese."),
        ("Harm", "The same organisms cause food spoilage and disease — which is why food is dried, salted, smoked, canned or frozen."),
    ])
