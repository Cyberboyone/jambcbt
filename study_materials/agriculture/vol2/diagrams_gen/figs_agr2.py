#!/usr/bin/env python3
"""Every SVG used by Agricultural Science Volume 2, drawn from one place.

Eight teaching figures, eight recap cards and a cover strip. The schematics use
the shared helpers so that every box, arrow and colour matches the rest of the
series.
"""

from __future__ import annotations

from common import (AMBER, AMBER_LIGHT, BLUE, BLUE_LIGHT, BORDER, GREEN,
                    GREEN_LIGHT, GREEN_MID, LIGHT_BG, MUTED, NAVY, PURPLE,
                    PURPLE_LIGHT, RED, RED_LIGHT, SLATE, arrow, card, line,
                    rect, svg, t, write_svg)

W = 760


def _frame(h, body, bg=GREEN_LIGHT):
    return svg(W, h, body, bg=bg)


# ── cover ───────────────────────────────────────────────────────────────────
def cover_banner() -> None:
    b = [t(380, 24, "AGRICULTURAL SCIENCE VOLUME 2 — THE ANIMAL AND THE FARM BUSINESS", size=12.0, weight="bold")]
    cols = [("THE ANIMAL", "cattle · goat · pig · fowl", GREEN),
            ("FEED & HEALTH", "nutrients · disease · parasites", BLUE),
            ("FISH & FOREST", "ponds · trees · conservation", PURPLE),
            ("THE BUSINESS", "records · credit · extension", AMBER)]
    cw = 176
    for i, (head, body, col) in enumerate(cols):
        x = 12 + i * (cw + 8)
        b += [rect(x, 44, cw, 62, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="44" width="{cw}" height="5" rx="2.5" fill="{col}"/>',
              t(x + cw / 2, 72, head, size=10.5, weight="bold", fill=col),
              t(x + cw / 2, 90, body, size=9.0, fill=SLATE)]
    b += [t(380, 126, "eight chapters · thirty-two worked examples · 520 practice questions", size=9.2, fill=MUTED)]
    write_svg("agr2_cover_banner", _frame(150, "\n".join(b)))


# ── chapter 1: the animal on the farm ───────────────────────────────────────
def ch01_animal() -> None:
    b = [t(380, 22, "How the farm animal is classified, and how it is kept", size=12.6, weight="bold")]
    b += [rect(12, 34, 360, 226, "#FFFFFF", GREEN, 8, 1.4),
          t(192, 54, "CLASSIFYING THE FARM ANIMAL", size=9.6, weight="bold", fill=GREEN)]
    groups = [("Ruminant", "cattle, sheep, goat — four stomachs", GREEN_LIGHT, GREEN),
              ("Monogastric", "pig, rabbit, fowl — one stomach", BLUE_LIGHT, BLUE),
              ("Poultry", "fowl, turkey, duck — beak and gizzard", AMBER_LIGHT, AMBER),
              ("Aquatic", "catfish, tilapia — gills and fins", PURPLE_LIGHT, PURPLE)]
    for i, (name, eg, bg, col) in enumerate(groups):
        x = 26 + (i % 2) * 176
        y = 70 + (i // 2) * 86
        b += [rect(x, y, 164, 72, bg, col, 6, 1.2),
              t(x + 82, y + 26, name, size=9.4, weight="bold", fill=NAVY),
              t(x + 82, y + 46, eg, size=7.8, fill=SLATE)]
    b += [rect(384, 34, 364, 226, "#FFFFFF", BLUE, 8, 1.4),
          t(566, 54, "THE FIVE SYSTEMS OF PRODUCTION", size=9.6, weight="bold", fill=BLUE)]
    systems = [("Intensive", "housed, fed, controlled", "poultry battery, piggery"),
               ("Semi-intensive", "housed and grazed", "village poultry, goat"),
               ("Extensive", "free range, natural pasture", "nomadic cattle"),
               ("Mixed", "animals plus crops", "most Nigerian smallholdings"),
               ("Ranching", "fenced range, managed herd", "the modern cattle ranch")]
    y = 74
    for i, (name, desc, eg) in enumerate(systems):
        b += [rect(396, y, 340, 32, "#FFFFFF" if i % 2 else LIGHT_BG, BORDER, 5, 1.0),
              t(410, y + 14, name, size=8.6, weight="bold", fill=NAVY, anchor="start"),
              t(410, y + 26, desc + " — " + eg, size=7.4, fill=SLATE, anchor="start")]
        y += 36
    b += [rect(12, 272, 736, 40, GREEN_LIGHT, GREEN, 7, 1.2),
          t(380, 290, "the animal converts what the farm cannot sell — grass, crop residue, household waste —", size=8.4, fill=NAVY),
          t(380, 303, "into protein, manure and draught power", size=8.4, fill=GREEN, weight="bold")]
    write_svg("agr2_ch01_animal", _frame(324, "\n".join(b)))


# ── chapter 2: the body of the farm animal ─────────────────────────────────
def ch02_body() -> None:
    b = [t(380, 22, "Two digestive plans, and what each one can eat", size=12.6, weight="bold")]
    b += [rect(12, 34, 360, 250, "#FFFFFF", GREEN, 8, 1.4),
          t(192, 54, "THE RUMINANT — FOUR COMPARTMENTS", size=9.4, weight="bold", fill=GREEN)]
    parts = [("Rumen", "fermentation vat; bacteria digest fibre"),
             ("Reticulum", "sorts the feed; the hardware stomach"),
             ("Omasum", "absorbs water; grinds the cud"),
             ("Abomasum", "the true stomach; acid digestion"),
             ("Small intestine", "absorbs the nutrients"),
             ("Caecum and colon", "water recovery")]
    y = 70
    for i, (name, desc) in enumerate(parts):
        col = GREEN if i < 4 else BLUE
        b += [rect(26, y, 332, 32, GREEN_LIGHT if i < 4 else BLUE_LIGHT, col, 5, 1.0),
              t(40, y + 14, name, size=8.6, weight="bold", fill=NAVY, anchor="start"),
              t(40, y + 26, desc, size=7.4, fill=SLATE, anchor="start")]
        y += 36
    b += [rect(384, 34, 364, 250, "#FFFFFF", BLUE, 8, 1.4),
          t(566, 54, "THE MONOGASTRIC AND THE FOWL", size=9.4, weight="bold", fill=BLUE)]
    mono = [("Oesophagus", "carries feed to the stomach"),
            ("Stomach", "acid and enzymes digest protein"),
            ("Small intestine", "the main site of absorption"),
            ("Caecum", "ferments only a little fibre"),
            ("Colon", "water is recovered; droppings form")]
    y = 70
    for name, desc in mono:
        b += [rect(398, y, 336, 32, LIGHT_BG, BLUE, 5, 1.0),
              t(412, y + 14, name, size=8.6, weight="bold", fill=NAVY, anchor="start"),
              t(412, y + 26, desc, size=7.4, fill=SLATE, anchor="start")]
        y += 36
    b += [rect(398, y + 6, 336, 44, AMBER_LIGHT, AMBER, 6, 1.1),
          t(566, y + 24, "THE FOWL ADDS TWO ORGANS", size=8.4, weight="bold", fill=AMBER),
          t(566, y + 40, "crop stores feed; gizzard grinds it with grit", size=7.6, fill=SLATE)]
    b += [rect(12, 296, 736, 40, GREEN_LIGHT, GREEN, 7, 1.2),
          t(380, 314, "the ruminant eats grass the monogastric cannot, because its bacteria do the digesting for it;", size=8.4, fill=NAVY),
          t(380, 327, "the pig and the fowl need concentrated feed, and compete with man for grain", size=8.4, fill=GREEN, weight="bold")]
    write_svg("agr2_ch02_body", _frame(348, "\n".join(b)))


# ── chapter 3: nutrition ────────────────────────────────────────────────────
def ch03_nutrition() -> None:
    b = [t(380, 22, "The six nutrients, the feeds that carry them, and the ration", size=12.6, weight="bold")]
    b += [rect(12, 34, 340, 196, "#FFFFFF", GREEN, 8, 1.4),
          t(182, 54, "THE SIX CLASSES OF NUTRIENT", size=9.4, weight="bold", fill=GREEN)]
    nuts = [("Water", "the largest need of all", BLUE),
            ("Carbohydrate", "energy — maize, sorghum", AMBER),
            ("Protein", "growth — cake, fish meal", RED),
            ("Fat", "concentrated energy", PURPLE),
            ("Minerals", "bone, shell, milk", GREEN),
            ("Vitamins", "the small regulators", BLUE)]
    for i, (name, use, col) in enumerate(nuts):
        x = 26 + (i % 2) * 166
        y = 70 + (i // 2) * 50
        b += [rect(x, y, 154, 42, "#FFFFFF", col, 5, 1.1),
              t(x + 77, y + 17, name, size=8.4, weight="bold", fill=col),
              t(x + 77, y + 32, use, size=7.4, fill=SLATE)]
    b += [rect(364, 34, 384, 196, "#FFFFFF", BLUE, 8, 1.4),
          t(556, 54, "THE PEARSON SQUARE — MIXING TWO FEEDS", size=9.4, weight="bold", fill=BLUE)]
    # square
    b += [rect(392, 72, 150, 52, GREEN_LIGHT, GREEN, 5, 1.1),
          t(467, 94, "maize", size=9.0, weight="bold", fill=GREEN),
          t(467, 110, "9 % protein", size=7.8, fill=SLATE),
          rect(560, 72, 150, 52, RED_LIGHT, RED, 5, 1.1),
          t(635, 94, "groundnut cake", size=9.0, weight="bold", fill=RED),
          t(635, 110, "40 % protein", size=7.8, fill=SLATE),
          rect(392, 140, 150, 52, "#FFFFFF", BORDER, 5, 1.1),
          t(467, 162, "target", size=9.0, weight="bold", fill=NAVY),
          t(467, 178, "18 % protein", size=7.8, fill=SLATE),
          rect(560, 140, 150, 52, "#FFFFFF", BORDER, 5, 1.1),
          t(635, 162, "the answer", size=9.0, weight="bold", fill=NAVY),
          t(635, 178, "22 : 9", size=7.8, fill=SLATE),
          arrow(542, 98, 558, 98, color=MUTED, sw=1.2, marker="an"),
          arrow(635, 126, 635, 138, color=MUTED, sw=1.2, marker="an"),
          arrow(542, 166, 558, 166, color=MUTED, sw=1.2, marker="an")]
    b += [rect(12, 240, 736, 58, GREEN_LIGHT, GREEN, 7, 1.2),
          t(380, 260, "subtract on the diagonals: 40 − 18 = 22 parts maize, 18 − 9 = 9 parts cake", size=8.6, fill=NAVY),
          t(380, 276, "22 : 9 means 22 kg maize to 9 kg cake in every 31 kg of the mixture", size=8.6, fill=GREEN, weight="bold"),
          t(380, 290, "check: (22 × 9 + 9 × 40) ÷ 31 = 18 per cent — the square is self-checking", size=8.0, fill=MUTED)]
    write_svg("agr2_ch03_nutrition", _frame(310, "\n".join(b)))


# ── chapter 4: health ───────────────────────────────────────────────────────
def ch04_health() -> None:
    b = [t(380, 22, "The disease triangle, and the programme that keeps it closed", size=12.6, weight="bold")]
    # triangle
    b += [rect(12, 34, 360, 226, "#FFFFFF", RED, 8, 1.4),
          t(192, 54, "THE DISEASE TRIANGLE", size=9.6, weight="bold", fill=RED)]
    b += [f'<polygon points="192,78 96,196 288,196" fill="{RED_LIGHT}" stroke="{RED}" stroke-width="1.6"/>',
          t(192, 118, "HOST", size=10.0, weight="bold", fill=NAVY),
          t(192, 132, "a susceptible animal", size=7.6, fill=SLATE),
          t(130, 172, "AGENT", size=10.0, weight="bold", fill=NAVY),
          t(130, 186, "virus, bacterium,", size=7.4, fill=SLATE),
          t(130, 196, "parasite", size=7.4, fill=SLATE),
          t(254, 172, "ENVIRONMENT", size=9.2, weight="bold", fill=NAVY),
          t(254, 186, "damp, dirty,", size=7.4, fill=SLATE),
          t(254, 196, "crowded, cold", size=7.4, fill=SLATE)]
    b += [t(192, 224, "remove any one side and the disease cannot spread", size=8.4, fill=RED, weight="bold"),
          t(192, 244, "hygiene removes the agent; vaccination hardens the host;", size=7.6, fill=MUTED),
          t(192, 254, "ventilation and stocking density change the environment", size=7.6, fill=MUTED)]
    # programme
    b += [rect(384, 34, 364, 226, "#FFFFFF", GREEN, 8, 1.4),
          t(566, 54, "THE HERD HEALTH YEAR", size=9.6, weight="bold", fill=GREEN)]
    steps = [("Quarantine", "every new animal, 21 days"),
             ("Vaccinate", "the schedule, never late"),
             ("Dose and dip", "internal and external parasites"),
             ("Observe", "feed, water, dung, gait, coat"),
             ("Isolate", "the sick animal at once"),
             ("Record", "what was given, when and why")]
    y = 74
    for i, (name, desc) in enumerate(steps):
        b += [rect(398, y, 336, 32, GREEN_LIGHT if i % 2 == 0 else "#FFFFFF", GREEN, 5, 1.0),
              t(412, y + 14, name, size=8.6, weight="bold", fill=NAVY, anchor="start"),
              t(412, y + 26, desc, size=7.4, fill=SLATE, anchor="start")]
        y += 33
    b += [rect(12, 272, 736, 40, GREEN_LIGHT, GREEN, 7, 1.2),
          t(380, 290, "the cost of a vaccination is a few naira; the cost of the outbreak it prevents is the herd", size=8.4, fill=NAVY),
          t(380, 303, "and a farmer who waits for the symptom has already lost the animal", size=8.4, fill=GREEN, weight="bold")]
    write_svg("agr2_ch04_health", _frame(324, "\n".join(b)))


# ── chapter 5: livestock management ────────────────────────────────────────
def ch05_management() -> None:
    b = [t(380, 22, "The poultry year, and the four management systems", size=12.6, weight="bold")]
    b += [rect(12, 34, 736, 118, "#FFFFFF", GREEN, 8, 1.4),
          t(380, 54, "THE BROILER CYCLE — EIGHT WEEKS FROM CHICK TO TABLE", size=9.6, weight="bold", fill=GREEN)]
    weeks = [("Day 1", ["brooder 32 °C", "glucose water", "vaccine day 1"]),
             ("Week 2", ["Gumboro vaccine", "expand brooder", "24 °C"]),
             ("Week 4", ["finisher feed", "2 000 cm² per bird", "turn the litter"]),
             ("Week 6", ["withdraw drugs", "1.8–2.2 kg", "live weight"]),
             ("Week 8", ["to market", "clean the house", "rest it a week"])]
    for i, (when, rows) in enumerate(weeks):
        x = 24 + i * 144
        b += [rect(x, 68, 136, 74, "#FFFFFF", BLUE, 5, 1.1),
              t(x + 68, 86, when, size=8.4, weight="bold", fill=BLUE)]
        for j, ln in enumerate(rows):
            b += [t(x + 68, 102 + j * 12, ln, size=6.9, fill=SLATE)]
    b += [rect(12, 162, 360, 152, "#FFFFFF", AMBER, 8, 1.4),
          t(192, 182, "BREEDING SYSTEMS", size=9.4, weight="bold", fill=AMBER)]
    breeds = [("Inbreeding", "closely related; fixes type, lowers vigour"),
              ("Line breeding", "one ancestor repeated; keeps a family"),
              ("Out-crossing", "unrelated within a breed; restores vigour"),
              ("Cross-breeding", "two breeds; hybrid vigour in the offspring"),
              ("Up-grading", "sire of a better breed onto local dams")]
    y = 196
    for name, desc in breeds:
        b += [t(28, y, name, size=8.2, weight="bold", fill=NAVY, anchor="start"),
              t(150, y, desc, size=7.4, fill=SLATE, anchor="start")]
        y += 22
    b += [rect(384, 162, 364, 152, "#FFFFFF", PURPLE, 8, 1.4),
          t(566, 182, "THE FOUR MANAGEMENT TASKS", size=9.4, weight="bold", fill=PURPLE)]
    tasks = [("Debeaking", "fowl — stops cannibalism at day 7–10"),
             ("Dehorning", "cattle — safety in the crush"),
             ("Castration", "males not kept for breeding; fatter, quieter"),
             ("Identification", "ear notch, tag or brand — for the record")]
    y = 200
    for name, desc in tasks:
        b += [t(398, y, name, size=8.2, weight="bold", fill=NAVY, anchor="start"),
              t(490, y, desc, size=7.4, fill=SLATE, anchor="start")]
        y += 26
    b += [rect(12, 322, 736, 36, GREEN_LIGHT, GREEN, 7, 1.2),
          t(380, 344, "housing is not a shed — it is the control of temperature, air, space and hygiene", size=8.6, fill=GREEN, weight="bold")]
    write_svg("agr2_ch05_management", _frame(370, "\n".join(b)))


# ── chapter 6: fisheries and forestry ──────────────────────────────────────
def ch06_fish_forest() -> None:
    b = [t(380, 22, "A pond in section, and a farm that keeps its trees", size=12.6, weight="bold")]
    # pond cross-section
    b += [rect(12, 34, 360, 240, "#FFFFFF", BLUE, 8, 1.4),
          t(192, 54, "THE FISH POND IN SECTION", size=9.4, weight="bold", fill=BLUE)]
    b += [rect(26, 96, 332, 96, "#DBEAFE", BLUE, 4, 1.2),
          f'<path d="M 26 192 L 26 150 Q 192 108 358 150 L 358 192 Z" fill="#93C5FD" stroke="{BLUE}" stroke-width="1.2"/>',
          t(192, 176, "water 1.0–1.5 m deep", size=8.2, fill=NAVY, weight="bold"),
          line(26, 96, 358, 96, BLUE, 1.4),
          t(192, 90, "water surface — the inlet and the outlet at opposite ends", size=7.2, fill=MUTED),
          t(70, 120, "inlet", size=7.4, fill=GREEN, weight="bold"),
          t(316, 120, "outlet", size=7.4, fill=RED, weight="bold"),
          rect(26, 192, 332, 18, "#D6D3D1", BORDER, 3, 1.0),
          t(192, 205, "clay or concrete bottom, drained to one corner", size=7.2, fill=SLATE)]
    b += [t(192, 230, "stock 5–10 fingerlings per m²; feed 3 % of body weight daily", size=7.8, fill=GREEN, weight="bold"),
          t(192, 244, "test the water: green is good, muddy is not, scum means too much feed", size=7.4, fill=SLATE),
          t(192, 258, "harvest by draining, or by seining with a net at 6–8 months", size=7.4, fill=SLATE)]
    # forestry
    b += [rect(384, 34, 364, 240, "#FFFFFF", GREEN, 8, 1.4),
          t(566, 54, "THE FARM WITH TREES — AGROFORESTRY", size=9.2, weight="bold", fill=GREEN)]
    b += [rect(396, 70, 340, 40, GREEN_LIGHT, GREEN, 5, 1.0),
          t(566, 88, "trees on the boundary — windbreak, fodder, poles", size=7.6, fill=NAVY),
          t(566, 102, "e.g. neem, cashew, Leucaena, Gmelina", size=7.0, fill=SLATE),
          rect(396, 116, 340, 40, AMBER_LIGHT, AMBER, 5, 1.0),
          t(566, 134, "alley cropping — maize between rows of trees", size=7.6, fill=NAVY),
          t(566, 148, "prunings mulch the crop and return nitrogen", size=7.0, fill=SLATE),
          rect(396, 162, 340, 40, BLUE_LIGHT, BLUE, 5, 1.0),
          t(566, 180, "woodlot — fuel, poles and charcoal", size=7.6, fill=NAVY),
          t(566, 194, "a crop the farmer plants for ten years, not ten weeks", size=7.0, fill=SLATE),
          rect(396, 208, 340, 56, PURPLE_LIGHT, PURPLE, 5, 1.0),
          t(566, 226, "THE FOREST ESTATE", size=8.0, weight="bold", fill=PURPLE),
          t(566, 240, "reserve · plantation · community forest —", size=7.2, fill=SLATE),
          t(566, 252, "protected for timber, water, wildlife and carbon", size=7.2, fill=SLATE)]
    b += [rect(12, 286, 736, 40, GREEN_LIGHT, GREEN, 7, 1.2),
          t(380, 304, "a fish pond and a woodlot are both a store of capital: the first pays in months, the second in years,", size=8.4, fill=NAVY),
          t(380, 317, "and both need the same thing the crop needs — water, care and a market", size=8.4, fill=GREEN, weight="bold")]
    write_svg("agr2_ch06_fish_forest", _frame(338, "\n".join(b)))


# ── chapter 7: records and accounts ────────────────────────────────────────
def ch07_records() -> None:
    b = [t(380, 22, "From the farm gate to the balance sheet", size=12.6, weight="bold")]
    flow = [("Source\ndocuments", "receipt, invoice,\nwaybill, wage sheet", GREEN),
            ("Books of\naccount", "cash book, ledger,\ninventory, labour", BLUE),
            ("Trial\nbalance", "the two columns\nthat must agree", AMBER),
            ("Statements", "profit and loss,\nbalance sheet", PURPLE),
            ("Decision", "plant more, borrow,\nbuy or sell", RED)]
    for i, (head, body, col) in enumerate(flow):
        x = 14 + i * 148
        b += [rect(x, 40, 136, 96, "#FFFFFF", col, 7, 1.4),
              f'<rect x="{x}" y="40" width="136" height="5" rx="2.5" fill="{col}"/>']
        for j, ln in enumerate(head.split("\n")):
            b += [t(x + 68, 66 + j * 14, ln, size=8.8, weight="bold", fill=col)]
        for j, ln in enumerate(body.split("\n")):
            b += [t(x + 68, 100 + j * 12, ln, size=7.2, fill=SLATE)]
        if i < 4:
            b += [arrow(x + 136, 88, x + 148, 88, color=MUTED, sw=1.4, marker="an")]
    b += [rect(12, 150, 360, 146, "#FFFFFF", GREEN, 8, 1.4),
          t(192, 170, "THE THREE STATEMENTS", size=9.4, weight="bold", fill=GREEN)]
    rows = [("Profit and loss", "revenue − cost = profit or loss"),
            ("Balance sheet", "assets = liabilities + capital"),
            ("Cash flow", "money in − money out, month by month")]
    y = 190
    for name, desc in rows:
        b += [t(28, y, name, size=8.2, weight="bold", fill=NAVY, anchor="start"),
              t(150, y, desc, size=7.4, fill=SLATE, anchor="start")]
        y += 30
    b += [rect(384, 150, 364, 146, "#FFFFFF", AMBER, 8, 1.4),
          t(566, 170, "THE FOUR FIGURES THE PAPER ASKS FOR", size=9.0, weight="bold", fill=AMBER)]
    figs = [("Gross margin", "output − variable cost"),
            ("Depreciation", "(cost − salvage) ÷ useful years"),
            ("Return on capital", "profit ÷ capital × 100"),
            ("Break-even", "fixed cost ÷ gross margin per unit")]
    y = 190
    for name, desc in figs:
        b += [t(398, y, name, size=8.2, weight="bold", fill=NAVY, anchor="start"),
              t(506, y, desc, size=7.4, fill=SLATE, anchor="start")]
        y += 26
    b += [rect(12, 306, 736, 40, GREEN_LIGHT, GREEN, 7, 1.2),
          t(380, 324, "records are not kept for the taxman; they are kept so the farmer can tell a good season from a lucky one", size=8.4, fill=NAVY),
          t(380, 337, "and a profitable enterprise from one that only looks busy", size=8.4, fill=GREEN, weight="bold")]
    write_svg("agr2_ch07_records", _frame(356, "\n".join(b)))


# ── chapter 8: extension and policy ────────────────────────────────────────
def ch08_extension() -> None:
    b = [t(380, 22, "How advice reaches the farm, and how policy reaches the farmer", size=12.6, weight="bold")]
    b += [rect(12, 34, 360, 210, "#FFFFFF", GREEN, 8, 1.4),
          t(192, 54, "THE EXTENSION CHAIN", size=9.6, weight="bold", fill=GREEN)]
    chain = [("Research", "the improved variety or practice"),
             ("Extension agent", "trial, demonstration, advice"),
             ("Contact farmer", "the early adopter the village trusts"),
             ("Farmer groups", "the method spreads by example"),
             ("Feedback", "the farmer's problem returns to research")]
    y = 74
    for i, (name, desc) in enumerate(chain):
        b += [rect(26, y, 332, 30, GREEN_LIGHT if i % 2 == 0 else "#FFFFFF", GREEN, 5, 1.0),
              t(40, y + 13, name, size=8.4, weight="bold", fill=NAVY, anchor="start"),
              t(150, y + 13, desc, size=7.2, fill=SLATE, anchor="start"),
              t(40, y + 25, "", size=7.0, fill=SLATE)]
        y += 32
    b += [rect(384, 34, 364, 210, "#FFFFFF", BLUE, 8, 1.4),
          t(566, 54, "THE METHODS OF EXTENSION", size=9.6, weight="bold", fill=BLUE)]
    methods = [("Individual", "farm visit, office call, phone"),
               ("Group", "meeting, demonstration, field day"),
               ("Mass", "radio, television, poster, leaflet"),
               ("Result demonstration", "the plot the farmer can see"),
               ("Method demonstration", "the skill the farmer can copy")]
    y = 74
    for name, desc in methods:
        b += [rect(398, y, 336, 32, "#FFFFFF" if y % 64 else LIGHT_BG, BLUE, 5, 1.0),
              t(412, y + 14, name, size=8.4, weight="bold", fill=NAVY, anchor="start"),
              t(412, y + 26, desc, size=7.2, fill=SLATE, anchor="start")]
        y += 34
    b += [rect(12, 254, 736, 76, GREEN_LIGHT, GREEN, 7, 1.2),
          t(380, 274, "THE POLICY LADDER — FROM THE FARM TO THE MINISTRY", size=8.6, weight="bold", fill=GREEN),
          t(380, 292, "credit · subsidy · guaranteed price · extension · research · storage · insurance · market", size=8.2, fill=NAVY),
          t(380, 310, "every policy in the syllabus is one rung of this ladder, and every one is judged by whether the farmer climbs", size=7.8, fill=MUTED)]
    write_svg("agr2_ch08_extension", _frame(344, "\n".join(b)))


# ── recap cards ─────────────────────────────────────────────────────────────
def recap(name: str, title: str, rows) -> None:
    b = [t(380, 20, title, size=11.6, weight="bold")]
    y = 34
    for head, body in rows:
        b += [rect(12, y, 736, 34, "#FFFFFF", GREEN, 6, 1.1),
              t(28, y + 15, head, size=8.8, weight="bold", fill=GREEN, anchor="start"),
              t(28, y + 28, body, size=8.0, fill=SLATE, anchor="start")]
        y += 40
    write_svg(name, _frame(y + 8, "\n".join(b)))


def recap_ch01() -> None:
    recap("recap_agr2_ch01", "Chapter 1 — the animal on the farm", [
        ("Why keep animals", "they turn grass, crop residue and waste into protein, manure and power"),
        ("Classification", "ruminant, monogastric, poultry, aquatic — the stomach decides the feed"),
        ("Systems", "intensive, semi-intensive, extensive, mixed and ranching"),
        ("Problems", "feed, disease, capital, markets and the low genetic quality of local stock")])


def recap_ch02() -> None:
    recap("recap_agr2_ch02", "Chapter 2 — the body of the farm animal", [
        ("The ruminant", "rumen, reticulum, omasum, abomasum; bacteria digest the fibre"),
        ("The monogastric", "one stomach and a short gut; concentrates, not grass"),
        ("The fowl", "crop and gizzard replace teeth; grit does the grinding"),
        ("Reproduction", "oestrus, service, gestation, parturition — each species on its own clock")])


def recap_ch03() -> None:
    recap("recap_agr2_ch03", "Chapter 3 — animal nutrition and feeding", [
        ("Six nutrients", "water, carbohydrate, protein, fat, minerals and vitamins"),
        ("Feeds", "roughage, concentrate, supplement and additive — each has a job"),
        ("The ration", "balanced for energy, protein, minerals and fibre, at the cheapest cost"),
        ("The square", "the Pearson square mixes two feeds to a target protein percentage")])


def recap_ch04() -> None:
    recap("recap_agr2_ch04", "Chapter 4 — animal health and disease control", [
        ("Health", "bright eye, good feed intake, firm dung, smooth coat, steady gait"),
        ("The triangle", "host, agent and environment — close one side and the disease stops"),
        ("Diseases", "viral, bacterial, protozoan and parasitic, each with its own control"),
        ("The programme", "quarantine, vaccinate, dose, dip, isolate and record")])


def recap_ch05() -> None:
    recap("recap_agr2_ch05", "Chapter 5 — livestock production and management", [
        ("Poultry", "brooder, grower and layer or broiler; the eight-week cycle"),
        ("Ruminants", "grazing, supplementary feed, water, salt lick and a crush"),
        ("Pigs and rabbits", "housed, concentrate-fed, quick to multiply"),
        ("Breeding", "inbreeding fixes type; cross-breeding gives hybrid vigour")])


def recap_ch06() -> None:
    recap("recap_agr2_ch06", "Chapter 6 — fisheries and forestry", [
        ("Fish", "catfish and tilapia; a pond that holds water, drains and is limed"),
        ("Stocking", "5–10 fingerlings per m²; feed 3 per cent of body weight a day"),
        ("Forest", "reserve, plantation and community forest; timber, fuel, water and carbon"),
        ("Agroforestry", "windbreak, alley cropping and woodlot on the same farm")])


def recap_ch07() -> None:
    recap("recap_agr2_ch07", "Chapter 7 — farm records and accounts", [
        ("Records", "production, financial, inventory and labour — the four families"),
        ("Books", "cash book, ledger, trial balance; every entry from a source document"),
        ("Statements", "profit and loss, balance sheet and cash flow"),
        ("Decisions", "gross margin, depreciation, break-even and return on capital")])


def recap_ch08() -> None:
    recap("recap_agr2_ch08", "Chapter 8 — extension, cooperatives and policy", [
        ("Extension", "a two-way bridge: research to the farmer, the problem back to research"),
        ("Methods", "individual, group and mass; demonstration is the strongest"),
        ("Cooperatives", "one member one vote; patronage dividend; the society the farmer owns"),
        ("Policy", "credit, subsidy, price support, insurance and the marketing board")])


def main() -> int:
    cover_banner()
    for fn in (ch01_animal, ch02_body, ch03_nutrition, ch04_health,
               ch05_management, ch06_fish_forest, ch07_records, ch08_extension,
               recap_ch01, recap_ch02, recap_ch03, recap_ch04,
               recap_ch05, recap_ch06, recap_ch07, recap_ch08):
        fn()
    print("17 SVG written")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
