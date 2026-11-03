#!/usr/bin/env python3
"""Every SVG used by Agricultural Science Volume 1, drawn from one place.

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
    b = [t(380, 24, "AGRICULTURAL SCIENCE VOLUME 1 — THE SOIL AND THE CROP", size=12.6, weight="bold")]
    cols = [("SOIL", "rock · profile · fertility", GREEN),
            ("CULTIVATION", "clear · plough · plant", BLUE),
            ("THE CROP", "cereals · legumes · roots", PURPLE),
            ("THE HARVEST", "reap · process · store · sell", AMBER)]
    cw = 176
    for i, (head, body, col) in enumerate(cols):
        x = 12 + i * (cw + 8)
        b += [rect(x, 44, cw, 62, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="44" width="{cw}" height="5" rx="2.5" fill="{col}"/>',
              t(x + cw / 2, 72, head, size=10.5, weight="bold", fill=col),
              t(x + cw / 2, 90, body, size=9.2, fill=SLATE)]
    b += [t(380, 126, "eight chapters · thirty-two worked examples · 520 practice questions", size=9.2, fill=MUTED)]
    write_svg("agr1_cover_banner", _frame(150, "\n".join(b)))


# ── chapter 1: the scope of agriculture ─────────────────────────────────────
def ch01_scope() -> None:
    b = [t(380, 22, "The four branches, and the chain from seed to market", size=12.6, weight="bold")]
    b += [rect(12, 34, 380, 208, "#FFFFFF", GREEN, 8, 1.4),
          t(202, 54, "THE FOUR BRANCHES", size=9.6, weight="bold", fill=GREEN)]
    branches = [("Crop science", "what to plant, when, and how", GREEN_LIGHT, GREEN),
                ("Animal science", "breeding, feeding and health", BLUE_LIGHT, BLUE),
                ("Soil science", "the medium that feeds the plant", AMBER_LIGHT, AMBER),
                ("Economics & extension", "cost, market and advice", PURPLE_LIGHT, PURPLE)]
    for i, (name, eg, bg, col) in enumerate(branches):
        x = 28 + (i % 2) * 180
        y = 72 + (i // 2) * 78
        b += [rect(x, y, 168, 64, bg, col, 6, 1.2),
              t(x + 84, y + 24, name, size=9.6, weight="bold", fill=NAVY),
              t(x + 84, y + 42, eg, size=8.2, fill=SLATE)]

    b += [rect(404, 34, 344, 208, "#FFFFFF", BLUE, 8, 1.4),
          t(576, 54, "THE VALUE CHAIN", size=9.6, weight="bold", fill=BLUE)]
    stages = ["production", "processing", "storage", "marketing", "consumption"]
    for i, s in enumerate(stages):
        y = 76 + i * 32
        b += [rect(430, y, 290, 24, BLUE_LIGHT, BLUE, 4, 0.9),
              t(575, y + 16, s, size=8.8, weight="bold", fill=NAVY)]
        if i < len(stages) - 1:
            b += [arrow(575, y + 24, 575, y + 32, color=BLUE, sw=1.2, marker="an")]
    b += [t(576, 232, "value is added at every link", size=8, fill=MUTED)]
    write_svg("agr1_ch01_scope", _frame(254, "\n".join(b)))


# ── chapter 2: the soil ─────────────────────────────────────────────────────
def ch02_soil() -> None:
    b = [t(380, 22, "A soil profile, and what texture does to water and air", size=12.6, weight="bold")]
    b += [rect(12, 34, 330, 250, "#FFFFFF", GREEN, 8, 1.4),
          t(177, 54, "THE PROFILE", size=9.6, weight="bold", fill=GREEN)]
    layers = [("O", "litter", "#92400E", 36),
              ("A", "topsoil, humus, roots", "#78350F", 52),
              ("B", "subsoil, clay and iron", "#B45309", 52),
              ("C", "weathered rock", "#D6D3D1", 42),
              ("R", "bedrock", "#78716C", 32)]
    y = 70
    for letter, name, col, h in layers:
        b += [rect(40, y, 120, h, col, "#FFFFFF", 0, 0.8)]
        b += [t(100, y + h / 2 + 4, letter, size=11, weight="bold", fill="#FFFFFF")]
        b += [t(174, y + h / 2 + 4, name, size=8.4, fill=NAVY, anchor="start")]
        y += h
    b += [t(40, 66, "0 cm", size=7.4, fill=MUTED, anchor="start"),
          t(40, y + 12, "parent rock", size=7.4, fill=MUTED, anchor="start")]

    b += [rect(354, 34, 394, 250, "#FFFFFF", AMBER, 8, 1.4),
          t(551, 54, "TEXTURE: THREE SOILS", size=9.6, weight="bold", fill=AMBER)]
    soils = [("sand", 0.86, 0.10, 0.04, "drains fast"),
             ("loam", 0.42, 0.38, 0.20, "holds both"),
             ("clay", 0.18, 0.24, 0.58, "holds water")]
    x0, bw, bh = 386, 220, 26
    for i, (name, sand, silt, clay, note) in enumerate(soils):
        y = 206 - i * 54
        b += [t(378, y + 17, name, size=8.6, weight="bold", fill=NAVY, anchor="end")]
        cx = x0
        for frac, col in ((sand, AMBER_LIGHT), (silt, GREEN_MID), (clay, RED_LIGHT)):
            w = frac * bw
            b += [rect(cx, y, w, bh, col, BORDER, 0, 0.8)]
            cx += w
        b += [t(x0 + bw + 8, y + 17, note, size=7.4, fill=SLATE, anchor="start")]
    b += [t(496, 240, "sand  ·  silt  ·  clay", size=8, fill=MUTED)]
    b += [t(551, 266, "loam is the compromise the examiner calls fertile", size=7.6, fill=MUTED)]
    write_svg("agr1_ch02_soil", _frame(300, "\n".join(b)))


# ── chapter 3: fertility ────────────────────────────────────────────────────
def ch03_nutrients() -> None:
    b = [t(380, 22, "What each nutrient does, and how nitrogen goes round", size=12.6, weight="bold")]
    b += [rect(12, 34, 372, 214, "#FFFFFF", GREEN, 8, 1.4),
          t(198, 54, "THE THREE MACRONUTRIENTS", size=9.6, weight="bold", fill=GREEN)]
    cards = [("N — nitrogen", "leaves, stems and the green colour", GREEN_LIGHT, GREEN),
             ("P — phosphorus", "roots, flowering, seed formation", BLUE_LIGHT, BLUE),
             ("K — potassium", "strength, disease resistance, fruit", PURPLE_LIGHT, PURPLE)]
    for i, (name, role, bg, col) in enumerate(cards):
        y = 72 + i * 56
        b += [rect(28, y, 340, 46, bg, col, 6, 1.1),
              t(44, y + 20, name, size=9.4, weight="bold", fill=NAVY, anchor="start"),
              t(44, y + 36, role, size=8.4, fill=SLATE, anchor="start")]
    b += [t(198, 240, "deficiency shows first where the plant grows", size=8, fill=MUTED)]

    b += [rect(396, 34, 352, 240, "#FFFFFF", BLUE, 8, 1.4),
          t(572, 54, "THE NITROGEN CYCLE", size=9.6, weight="bold", fill=BLUE)]
    nodes = [("atmospheric N₂", 572, 78),
             ("fixation: legumes, lightning, factory", 572, 122),
             ("soil nitrate", 572, 166),
             ("plant protein", 572, 210)]
    for label, cx, cy in nodes:
        w = 250 if len(label) < 22 else 290
        b += [rect(cx - w / 2, cy - 15, w, 30, BLUE_LIGHT, BLUE, 5, 1.0),
              t(cx, cy + 4, label, size=8.2, fill=NAVY)]
    for cy in (93, 137, 181):
        b += [arrow(572, cy, 572, cy + 14, color=BLUE, sw=1.3, marker="an")]
    b += [arrow(510, 78, 430, 78, color=RED, sw=1.2, marker="ar"),
          t(470, 70, "loss", size=7.4, fill=RED)]
    b += [t(572, 250, "leaching, denitrification and crop removal all take N away", size=7.6, fill=MUTED)]
    write_svg("agr1_ch03_nutrients", _frame(286, "\n".join(b)))


# ── chapter 4: land preparation ─────────────────────────────────────────────
def ch04_tillage() -> None:
    b = [t(380, 22, "The sequence of land preparation, and what each pass does", size=12.6, weight="bold")]
    steps = [("1  CLEARING", "bush, stumps and trash removed", GREEN),
             ("2  PLOUGHING", "primary tillage, 15–25 cm deep", BLUE),
             ("3  HARROWING", "secondary tillage, breaks the clods", PURPLE),
             ("4  LEVELLING", "the surface dressed for water and seed", AMBER),
             ("5  PLANTING", "seed or seedling put at the right depth", GREEN)]
    for i, (head, body, col) in enumerate(steps):
        x = 12 + i * 150
        b += [rect(x, 44, 138, 76, "#FFFFFF", col, 7, 1.4),
              f'<rect x="{x}" y="44" width="138" height="5" rx="2.5" fill="{col}"/>',
              t(x + 69, 70, head, size=9.2, weight="bold", fill=col),
              t(x + 69, 90, body, size=7.6, fill=SLATE)]
        if i < 4:
            b += [arrow(x + 138, 82, x + 150, 82, color=MUTED, sw=1.4, marker="an")]
    b += [rect(12, 136, 736, 96, "#FFFFFF", GREEN, 8, 1.2)]
    b += [t(32, 158, "WHY IT MATTERS", size=9.0, weight="bold", fill=GREEN, anchor="start")]
    notes = [("a fine tilth", "lets the seed touch moist soil and the root push through"),
             ("no hard pan", "a plough pan at 20 cm stops roots and holds water"),
             ("level ground", "water spreads evenly; no ponding, no wash"),
             ("early timing", "plant with the first reliable rain, not after it")]
    for i, (head, body) in enumerate(notes):
        x = 32 + (i % 2) * 360
        y = 182 + (i // 2) * 26
        b += [t(x, y, head + " —", size=8.2, weight="bold", fill=NAVY, anchor="start"),
              t(x + 78, y, body, size=8.2, fill=SLATE, anchor="start")]
    write_svg("agr1_ch04_tillage", _frame(244, "\n".join(b)))


# ── chapter 5: propagation ──────────────────────────────────────────────────
def ch05_propagation() -> None:
    b = [t(380, 22, "Two ways to make a new plant, and what each one is for", size=12.6, weight="bold")]
    b += [rect(12, 34, 360, 226, "#FFFFFF", GREEN, 8, 1.4),
          t(192, 54, "SEXUAL — FROM SEED", size=9.6, weight="bold", fill=GREEN)]
    b += [rect(36, 74, 90, 40, GREEN_LIGHT, GREEN, 5, 1.0), t(81, 98, "seed", size=8.6, fill=NAVY),
          rect(150, 74, 90, 40, GREEN_LIGHT, GREEN, 5, 1.0), t(195, 98, "seedling", size=8.6, fill=NAVY),
          rect(264, 74, 90, 40, GREEN_LIGHT, GREEN, 5, 1.0), t(309, 98, "tree", size=8.6, fill=NAVY)]
    b += [arrow(126, 94, 150, 94, color=GREEN, sw=1.3), arrow(240, 94, 264, 94, color=GREEN, sw=1.3)]
    pros = ["+ cheap; seed travels and stores", "+ a tap root, so drought is survived", "+ new varieties come from seed",
            "− slow to bear; the fruit may differ", "− seed must be viable and clean"]
    for i, p in enumerate(pros):
        b += [t(36, 136 + i * 22, p, size=8.0, fill=SLATE if p[0] == "+" else RED, anchor="start")]

    b += [rect(388, 34, 360, 226, "#FFFFFF", PURPLE, 8, 1.4),
          t(568, 54, "ASEXUAL — FROM A PIECE", size=9.6, weight="bold", fill=PURPLE)]
    methods = [("cutting", "a stem or leaf root", "cassava, sugar cane"),
               ("layering", "a branch roots in place", "guava, citrus"),
               ("budding / grafting", "a scion on a rootstock", "citrus, mango, rubber"),
               ("suckers, tubers, rhizomes", "an underground part", "banana, yam, cocoyam")]
    for i, (name, how, eg) in enumerate(methods):
        y = 76 + i * 44
        b += [rect(404, y, 328, 36, PURPLE_LIGHT, PURPLE, 5, 1.0),
              t(418, y + 15, name, size=8.8, weight="bold", fill=NAVY, anchor="start"),
              t(418, y + 29, how + " — " + eg, size=7.8, fill=SLATE, anchor="start")]
    b += [t(568, 252, "true to type, early, and one plant becomes many", size=7.8, fill=MUTED)]
    write_svg("agr1_ch05_propagation", _frame(272, "\n".join(b)))


# ── chapter 6: pests, diseases and weeds ────────────────────────────────────
def ch06_protection() -> None:
    b = [t(380, 22, "The disease triangle, and the four ways to break it", size=12.6, weight="bold")]
    b += [rect(12, 34, 330, 218, "#FFFFFF", RED, 8, 1.4),
          t(177, 54, "THE TRIANGLE", size=9.6, weight="bold", fill=RED)]
    pts = [(177, 82, "HOST", "a susceptible crop"),
           (96, 196, "AGENT", "pest, fungus, weed"),
           (258, 196, "ENVIRONMENT", "moisture, heat, shade")]
    for cx, cy, head, body in pts:
        b += [rect(cx - 66, cy - 24, 132, 48, RED_LIGHT, RED, 6, 1.1),
              t(cx, cy - 4, head, size=8.8, weight="bold", fill=NAVY),
              t(cx, cy + 12, body, size=7.4, fill=SLATE)]
    b += [line(177, 108, 108, 172, color=RED, sw=1.2, dash="4 3"),
          line(177, 108, 246, 172, color=RED, sw=1.2, dash="4 3"),
          line(126, 196, 228, 196, color=RED, sw=1.2, dash="4 3")]
    b += [t(177, 240, "remove one side and the disease cannot spread", size=7.8, fill=MUTED)]

    b += [rect(354, 34, 394, 218, "#FFFFFF", GREEN, 8, 1.4),
          t(551, 54, "THE FOUR CONTROLS", size=9.6, weight="bold", fill=GREEN)]
    fams = [("Cultural", "rotation, clean seed, right spacing, destroy refuse"),
            ("Biological", "natural enemies, resistant varieties"),
            ("Chemical", "the right pesticide, dose and interval"),
            ("Physical / mechanical", "traps, hand-picking, heat treatment")]
    for i, (name, eg) in enumerate(fams):
        y = 74 + i * 40
        b += [rect(370, y, 362, 34, GREEN_LIGHT, GREEN, 5, 1.0),
              t(384, y + 14, name, size=8.8, weight="bold", fill=NAVY, anchor="start"),
              t(384, y + 27, eg, size=7.8, fill=SLATE, anchor="start")]
    b += [t(551, 240, "IPM: all four together, chemical last", size=8, fill=GREEN, weight="bold")]
    write_svg("agr1_ch06_protection", _frame(264, "\n".join(b)))


# ── chapter 7: crops by zone ────────────────────────────────────────────────
def ch07_crops() -> None:
    b = [t(380, 22, "Nigeria's belts, from the coast to the Sahel, and what each grows", size=12.6, weight="bold")]
    belts = [("MANGROVE & FRESH-WATER SWAMP", "over 3 000 mm", "rice, fish, mangrove timber, raffia", "#0F766E"),
             ("RAIN FOREST", "1 500–3 000 mm", "cocoa, oil palm, rubber, kola, plantain", "#15803D"),
             ("DERIVED SAVANNA", "1 200–1 500 mm", "yam, cassava, maize, cashew, citrus", "#65A30D"),
             ("GUINEA SAVANNA", "900–1 200 mm", "maize, sorghum, groundnut, cotton, yam", "#CA8A04"),
             ("SUDAN SAVANNA", "500–900 mm", "millet, sorghum, cowpea, groundnut, onion", "#D97706"),
             ("SAHEL", "under 500 mm", "millet, sorghum, gum arabic, livestock", "#B45309")]
    y = 42
    for i, (name, rain, crops, col) in enumerate(belts):
        h = 36
        b += [rect(12, y, 736, h, "#FFFFFF", col, 5, 1.1),
              f'<rect x="12" y="{y}" width="8" height="{h}" rx="3" fill="{col}"/>',
              t(32, y + 15, name, size=8.4, weight="bold", fill=col, anchor="start"),
              t(32, y + 28, crops, size=8.2, fill=SLATE, anchor="start"),
              t(730, y + 22, rain, size=7.8, fill=MUTED, anchor="end")]
        y += h + 4
    b += [t(380, y + 14, "the crop follows the rain, and the rain falls northwards in steps", size=8, fill=MUTED)]
    write_svg("agr1_ch07_crops", _frame(y + 28, "\n".join(b)))


# ── chapter 8: harvest and storage ──────────────────────────────────────────
def ch08_storage() -> None:
    b = [t(380, 22, "Where the harvest is lost, and what stops each loss", size=12.6, weight="bold")]
    stages = [("HARVEST", "5–10%", "at the right maturity; dry hands; clean bags", GREEN),
              ("THRESHING", "5–15%", "a clean floor; a tarpaulin, not the road", BLUE),
              ("DRYING", "10–20%", "to 12–13% moisture; sun or a dryer", AMBER),
              ("STORAGE", "15–30%", "a dry, cool, sealed store; fumigate", PURPLE),
              ("TRANSPORT", "5–10%", "dry loads, covered, not overloaded", RED)]
    for i, (name, loss, fix, col) in enumerate(stages):
        x = 12 + i * 150
        b += [rect(x, 44, 138, 92, "#FFFFFF", col, 7, 1.4),
              f'<rect x="{x}" y="44" width="138" height="5" rx="2.5" fill="{col}"/>',
              t(x + 69, 68, name, size=9.0, weight="bold", fill=col),
              t(x + 69, 88, loss, size=12.0, weight="bold", fill=NAVY),
              t(x + 69, 106, "lost", size=7.4, fill=MUTED)]
        b += [t(x + 69, 158, fix, size=7.2, fill=SLATE)]
        if i < 4:
            b += [arrow(x + 138, 90, x + 150, 90, color=MUTED, sw=1.4, marker="an")]
    b += [rect(12, 176, 736, 44, GREEN_LIGHT, GREEN, 7, 1.2)]
    b += [t(380, 196, "a third of a Nigerian harvest is lost between the field and the plate —", size=8.6, fill=NAVY),
          t(380, 210, "which is a harvest already grown, and simply thrown away", size=8.6, fill=GREEN, weight="bold")]
    write_svg("agr1_ch08_storage", _frame(232, "\n".join(b)))


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
    recap("recap_agr1_ch01", "Chapter 1 — the scope of agriculture", [
        ("Agriculture defined", "the science and art of cultivating crops and rearing animals for food, fibre, fuel and income"),
        ("The four branches", "crop science, animal science, soil science, economics and extension"),
        ("Why it matters", "food, employment, raw materials, foreign exchange and a market for other sectors"),
        ("Systems", "subsistence or commercial; intensive or extensive — every farm is one of the four")])


def recap_ch02() -> None:
    recap("recap_agr1_ch02", "Chapter 2 — rocks, soil and its properties", [
        ("Formation", "parent rock + climate + organisms + relief + time; weathering breaks the rock"),
        ("The profile", "O litter, A topsoil, B subsoil, C weathered rock, R bedrock"),
        ("Texture", "sand drains, clay holds, loam does both; texture sets water, air and roots"),
        ("Structure and pH", "crumbs, plates and blocks govern drainage; pH 5.5–7.0 suits most crops")])


def recap_ch03() -> None:
    recap("recap_agr1_ch03", "Chapter 3 — fertility, manure and fertiliser", [
        ("The sixteen", "N, P, K in quantity; Ca, Mg, S next; then Fe, Mn, Cu, Zn, B, Mo, Cl"),
        ("The three", "N for leaves, P for roots and seed, K for strength and fruit"),
        ("Manure", "farmyard, compost and green manure feed the soil as well as the plant"),
        ("Fertiliser", "straight or compound; band, side-dress or broadcast; never on wet leaves")])


def recap_ch04() -> None:
    recap("recap_agr1_ch04", "Chapter 4 — land preparation and cultural practice", [
        ("Tillage", "clearing, ploughing, harrowing, levelling; a pan at 20 cm stops roots"),
        ("Planting", "spacing, depth and date decide the stand; thin to one plant per stand"),
        ("Tending", "weeding early, mulching, pruning, staking, earthing up"),
        ("Water", "irrigation supplements rain; drainage removes the surplus")])


def recap_ch05() -> None:
    recap("recap_agr1_ch05", "Chapter 5 — propagation and nursery practice", [
        ("Sexual", "seed gives a tap root and new varieties, but is slow and variable"),
        ("Asexual", "cutting, layering, budding, grafting, suckers — true to type and early"),
        ("The nursery", "raised beds, shade, sterile soil, pricking out and hardening off"),
        ("Seed quality", "viability, purity and germination percentage are three different tests")])


def recap_ch06() -> None:
    recap("recap_agr1_ch06", "Chapter 6 — pests, diseases and weeds", [
        ("Pests", "insects, nematodes, rodents, birds; biting, sucking and boring damage"),
        ("Diseases", "fungal, bacterial and viral; the triangle needs host, agent and environment"),
        ("Weeds", "compete for water, light and nutrients; they also host pests"),
        ("Control", "cultural, biological, chemical and resistant varieties, with chemicals last")])


def recap_ch07() -> None:
    recap("recap_agr1_ch07", "Chapter 7 — the crops of Nigeria", [
        ("Cereals", "maize, rice, sorghum, millet — the grasses that carry the carbohydrate"),
        ("Legumes", "cowpea, groundnut, soya bean — the pods that fix their own nitrogen"),
        ("Roots and tubers", "cassava, yam, cocoyam, sweet potato — the swollen underground store"),
        ("Cash crops", "cocoa, oil palm, rubber, cotton, kola — the export earners")])


def recap_ch08() -> None:
    recap("recap_agr1_ch08", "Chapter 8 — harvest, storage and marketing", [
        ("Maturity", "by colour, size, moisture or days — harvesting early or late both cost"),
        ("Processing", "gari, palm oil, cocoa beans, rice milling: value added and shelf life"),
        ("Storage", "dry, cool, sealed and clean; the silo, the crib and the hermetic bag"),
        ("Marketing", "grading, cooperatives, standards and the price the farmer actually receives")])


def main() -> int:
    cover_banner()
    for fn in (ch01_scope, ch02_soil, ch03_nutrients, ch04_tillage,
               ch05_propagation, ch06_protection, ch07_crops, ch08_storage,
               recap_ch01, recap_ch02, recap_ch03, recap_ch04,
               recap_ch05, recap_ch06, recap_ch07, recap_ch08):
        fn()
    print("17 SVG written")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
