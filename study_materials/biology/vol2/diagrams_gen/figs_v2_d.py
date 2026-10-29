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
