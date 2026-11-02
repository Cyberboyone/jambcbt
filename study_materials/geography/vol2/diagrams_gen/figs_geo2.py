#!/usr/bin/env python3
"""Every SVG used by Geography Volume 2, drawn from one place.

Nine teaching figures, eight recap cards and a cover strip. The hand-drawn
schematics use the shared helpers; nothing here needs a plotted axis.
"""

from __future__ import annotations

from common import (AMBER, BLUE, BLUE_LIGHT, BORDER, GREEN, GREEN_LIGHT,
                    GREEN_MID, MUTED, NAVY, PURPLE, PURPLE_LIGHT, RED,
                    SLATE, arrow, card, line, rect, svg, t, write_svg)

W = 760


def _frame(h, body, bg=GREEN_LIGHT):
    return svg(W, h, body, bg=bg)


# ── cover ───────────────────────────────────────────────────────────────────
def cover_banner() -> None:
    b = [t(380, 24, "GEOGRAPHY VOLUME 2 — PEOPLE, PLACES AND THE NIGERIAN SPACE", size=13, weight="bold")]
    cols = [("POPULATION", "growth · structure · movement", GREEN),
            ("SETTLEMENT", "village · town · city", BLUE),
            ("THE ECONOMY", "farm · mine · factory", PURPLE),
            ("REGIONS", "Nigeria · West Africa · world", AMBER)]
    cw = 176
    for i, (head, body, col) in enumerate(cols):
        x = 12 + i * (cw + 8)
        b += [rect(x, 44, cw, 62, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="44" width="{cw}" height="5" rx="2.5" fill="{col}"/>',
              t(x + cw / 2, 72, head, size=10.5, weight="bold", fill=col),
              t(x + cw / 2, 90, body, size=9.2, fill=SLATE)]
    b += [t(380, 126, "eight chapters · thirty-two worked examples · 520 practice questions", size=9.2, fill=MUTED)]
    write_svg("geo2_cover_banner", _frame(150, "\n".join(b)))


# ── chapter 1: population ───────────────────────────────────────────────────
def ch01_population() -> None:
    b = [t(380, 22, "The demographic transition, and the two pyramid shapes", size=12.6, weight="bold")]
    # DTM panel
    b += [rect(12, 34, 430, 210, "#FFFFFF", GREEN, 8, 1.4)]
    b += [t(227, 54, "THE FOUR STAGES", size=9.6, weight="bold", fill=GREEN)]
    x0, y0, w, h = 40, 180, 380, 110
    b += [line(x0, y0, x0 + w, y0), line(x0, y0, x0, y0 - h)]
    b += [t(x0 - 4, y0 - h, "rate", size=8, fill=MUTED, anchor="end"),
          t(x0 + w, y0 + 16, "time →", size=8, fill=MUTED, anchor="end")]
    # birth rate: high then falls late
    b += [f'<polyline points="{x0},{y0 - h} {x0 + 0.55 * w},{y0 - h} {x0 + w},{y0 - 20}" fill="none" stroke="{GREEN}" stroke-width="2.2"/>']
    # death rate: falls early
    b += [f'<polyline points="{x0},{y0 - h + 8} {x0 + 0.3 * w},{y0 - 0.45 * h} {x0 + w},{y0 - 14}" fill="none" stroke="{RED}" stroke-width="2.2"/>']
    for i, lab in enumerate(["1", "2", "3", "4"]):
        cx = x0 + (i + 0.5) * w / 4
        b += [line(cx - w / 8, y0, cx - w / 8, y0 - h, color=BORDER, sw=0.8, dash="3 3"),
              t(cx, y0 + 16, lab, size=9, weight="bold", fill=NAVY)]
    b += [t(60, 74, "birth rate", size=8.4, fill=GREEN, anchor="start"),
          t(60, 88, "death rate", size=8.4, fill=RED, anchor="start"),
          t(56, 74, "", size=8)]
    # gaps: stage labels
    b += [t(120, 208, "high growth", size=8.4, fill=SLATE),
          t(227, 208, "fastest growth", size=8.4, fill=SLATE),
          t(330, 208, "slowing", size=8.4, fill=SLATE),
          t(412, 208, "stable", size=8.4, fill=SLATE)]
    # pyramids
    b += [rect(452, 34, 296, 210, "#FFFFFF", BLUE, 8, 1.4)]
    b += [t(600, 54, "PYRAMID SHAPES", size=9.6, weight="bold", fill=BLUE)]
    for k, (label, widths) in enumerate([("expansive", [26, 34, 42, 50, 56]),
                                        ("stationary", [40, 42, 40, 34, 26])]):
        base_x = 480 + k * 140
        for i, wd in enumerate(widths):
            y = 170 - i * 20
            b += [rect(base_x + 30 - wd, y, wd, 14, GREEN_MID if k == 0 else BLUE_LIGHT, BORDER, 2, 0.8),
                  rect(base_x + 30, y, wd, 14, GREEN_MID if k == 0 else BLUE_LIGHT, BORDER, 2, 0.8)]
        b += [t(base_x + 30, 196, label, size=8.6, weight="bold", fill=NAVY),
              t(base_x + 30, 210, "wide base" if k == 0 else "straight sides", size=8, fill=MUTED)]
    write_svg("geo2_ch01_population", _frame(254, "\n".join(b)))


# ── chapter 2: settlement ───────────────────────────────────────────────────
def ch02_settlement() -> None:
    b = [t(380, 22, "Why a site is chosen, how a town grows, and how towns rank", size=12.6, weight="bold")]
    b += [rect(12, 34, 236, 214, "#FFFFFF", GREEN, 8, 1.4),
          t(130, 54, "SITE FACTORS", size=9.6, weight="bold", fill=GREEN)]
    items = ["water — a spring, a bend, a confluence",
             "defence — a hill top, an island, a marsh",
             "building land — dry, flat, above flood",
             "routes — a bridge, a pass, a crossroad",
             "resources — a mine, a market, a port"]
    for i, s in enumerate(items):
        y = 78 + i * 32
        b += [rect(26, y - 14, 208, 26, GREEN_LIGHT, BORDER, 5, 0.9),
              t(34, y + 3, s, size=8.2, anchor="start", fill=SLATE)]
    # rings
    b += [rect(254, 34, 250, 214, "#FFFFFF", BLUE, 8, 1.4),
          t(379, 54, "THE RINGS OF A CITY", size=9.6, weight="bold", fill=BLUE)]
    cx, cy = 379, 150
    for r, col, lab in [(74, "#EFF6FF", "commuter"), (56, "#DBEAFE", "residential"), (38, "#BFDBFE", "old housing"), (20, "#93C5FD", "CBD")]:
        b += [f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="{col}" stroke="{BLUE}" stroke-width="1.1" opacity="0.9"/>']
    b += [t(cx, cy + 3, "CBD", size=8, weight="bold", fill=NAVY),
          t(cx, cy - 28, "inner city", size=7.6, fill=SLATE),
          t(cx, cy - 46, "suburbs", size=7.6, fill=SLATE),
          t(cx, cy - 64, "commuter belt", size=7.6, fill=SLATE)]
    # hierarchy
    b += [rect(510, 34, 238, 214, "#FFFFFF", PURPLE, 8, 1.4),
          t(629, 54, "THE HIERARCHY", size=9.6, weight="bold", fill=PURPLE)]
    levels = [("conurbation", 210, 30), ("city", 160, 30), ("town", 116, 30), ("village", 76, 30), ("hamlet", 40, 30)]
    y = 76
    for name, wd, ht in levels:
        b += [rect(629 - wd / 2, y, wd, ht - 4, PURPLE_LIGHT, PURPLE, 4, 1.0),
              t(629, y + 17, name, size=8.4, weight="bold", fill=NAVY)]
        y += ht
    b += [t(629, 232, "fewer, larger, more services", size=7.8, fill=MUTED)]
    write_svg("geo2_ch02_settlement", _frame(258, "\n".join(b)))


# ── chapter 3: agriculture ──────────────────────────────────────────────────
def ch03_agriculture() -> None:
    b = [t(380, 22, "Four farming systems, and the belts they occupy", size=12.6, weight="bold")]
    quads = [("SUBSISTENCE · INTENSIVE", "small plot, hand tools, food for the family", GREEN, 12),
             ("SUBSISTENCE · EXTENSIVE", "shifting cultivation, land rested, low yield", BLUE, 372),
             ("COMMERCIAL · INTENSIVE", "plantation, capital, one cash crop", PURPLE, 12),
             ("COMMERCIAL · EXTENSIVE", "ranching and grain, machines, large area", AMBER, 372)]
    for head, body, col, x in quads:
        y = 34 if x == 12 else 34
        yy = 34 if head.startswith("SUBSISTENCE") else 112
        b += [rect(x, yy, 348, 70, "#FFFFFF", col, 7, 1.3),
              f'<rect x="{x}" y="{yy}" width="5" height="70" rx="2.5" fill="{col}"/>',
              t(x + 16, yy + 22, head, size=9.2, weight="bold", fill=col, anchor="start"),
              t(x + 16, yy + 40, body, size=8.4, fill=SLATE, anchor="start"),
              t(x + 16, yy + 56, "intensive = more labour per hectare" if "INTENSIVE" in head and "SUB" in head else "", size=0.1, fill=SLATE)]
    # belts strip
    b += [rect(12, 190, 736, 58, "#FFFFFF", GREEN, 7, 1.2),
          t(380, 208, "THE BELTS OF NIGERIA, SOUTH TO NORTH", size=8.8, weight="bold", fill=GREEN)]
    belts = ["mangrove", "rain forest", "derived savanna", "Guinea savanna", "Sudan savanna", "Sahel"]
    for i, s in enumerate(belts):
        x = 24 + i * 120
        b += [rect(x, 216, 112, 22, ["#DCFCE7", "#BBF7D0", "#FEF3C7", "#FDE68A", "#FCD34D", "#F59E0B"][i], BORDER, 3, 0.8),
              t(x + 56, 231, s, size=7.4, fill=NAVY)]
    write_svg("geo2_ch03_agriculture", _frame(256, "\n".join(b)))


# ── chapter 4: industry ─────────────────────────────────────────────────────
def ch04_industry() -> None:
    b = [t(380, 22, "What pulls a factory to a place, and the four sectors of work", size=12.6, weight="bold")]
    b += [rect(12, 34, 380, 224, "#FFFFFF", GREEN, 8, 1.4),
          t(202, 54, "LOCATION FACTORS", size=9.6, weight="bold", fill=GREEN)]
    cx, cy = 202, 150
    b += [rect(cx - 52, cy - 18, 104, 36, GREEN, GREEN, 5, 1.2),
          t(cx, cy + 4, "the factory", size=9.4, weight="bold", fill="#FFFFFF")]
    factors = [("raw material", 202, 78), ("power", 342, 120), ("market", 330, 196),
               ("labour", 74, 196), ("transport", 62, 120)]
    for name, fx, fy in factors:
        b += [arrow(cx, cy, fx, fy, color=MUTED, sw=1.1, marker="an"),
              rect(fx - 44, fy - 12, 88, 24, GREEN_LIGHT, GREEN, 4, 0.9),
              t(fx, fy + 3, name, size=7.8, fill=NAVY)]
    b += [t(202, 246, "the heaviest factor decides the site", size=8, fill=MUTED)]
    b += [rect(404, 34, 344, 224, "#FFFFFF", BLUE, 8, 1.4),
          t(576, 54, "FOUR SECTORS", size=9.6, weight="bold", fill=BLUE)]
    rows = [("primary", "farm, mine, forest", "#DBEAFE"),
            ("secondary", "factory, refinery, craft", "#BFDBFE"),
            ("tertiary", "shop, bank, school, bus", "#93C5FD"),
            ("quaternary", "research, design, software", "#60A5FA")]
    for i, (name, eg, col) in enumerate(rows):
        y = 74 + i * 44
        b += [rect(420, y, 312, 36, col, BORDER, 5, 1.0),
              t(432, y + 15, name, size=9, weight="bold", fill=NAVY, anchor="start"),
              t(432, y + 29, eg, size=8, fill=SLATE, anchor="start")]
    write_svg("geo2_ch04_industry", _frame(268, "\n".join(b)))


# ── chapter 5: transport and trade ──────────────────────────────────────────
def ch05_transport() -> None:
    b = [t(380, 22, "The five modes weighed, and the two sides of a trade account", size=12.6, weight="bold")]
    b += [rect(12, 34, 430, 214, "#FFFFFF", GREEN, 8, 1.4),
          t(227, 54, "CHOOSING A MODE", size=9.6, weight="bold", fill=GREEN)]
    modes = [("road", 92, "door to door, flexible, costly per tonne"),
             ("rail", 74, "bulk, long haul, fixed route"),
             ("water", 60, "cheapest per tonne, slowest"),
             ("air", 40, "fastest, dearest, light goods"),
             ("pipeline", 24, "liquids and gas, continuous")]
    for i, (name, wd, note) in enumerate(modes):
        y = 72 + i * 34
        b += [t(34, y + 10, name, size=8.6, weight="bold", fill=NAVY, anchor="start"),
              rect(96, y, wd * 2.2, 14, GREEN_MID, GREEN, 3, 0.8),
              t(96 + wd * 2.2 + 8, y + 10, note, size=7.6, fill=SLATE, anchor="start")]
    b += [t(227, 240, "bar length = relative share of Nigeria's freight", size=7.8, fill=MUTED)]
    b += [rect(454, 34, 294, 214, "#FFFFFF", BLUE, 8, 1.4),
          t(601, 54, "TRADE BALANCE", size=9.6, weight="bold", fill=BLUE)]
    b += [t(601, 84, "visible trade", size=8.6, weight="bold", fill=NAVY),
          t(601, 100, "goods in and out", size=8, fill=SLATE),
          t(601, 126, "invisible trade", size=8.6, weight="bold", fill=NAVY),
          t(601, 142, "services, freight, tourism", size=8, fill=SLATE),
          rect(480, 160, 240, 34, GREEN_LIGHT, GREEN, 5, 1.0),
          t(600, 174, "exports − imports", size=9, weight="bold", fill=NAVY),
          t(600, 188, "= balance of trade", size=8, fill=SLATE),
          t(601, 216, "surplus: +     deficit: −", size=8, fill=MUTED),
          t(601, 232, "add invisibles → balance of payments", size=7.8, fill=MUTED)]
    write_svg("geo2_ch05_transport", _frame(258, "\n".join(b)))


# ── chapter 6: Nigeria ──────────────────────────────────────────────────────
def ch06_nigeria() -> None:
    b = [t(380, 22, "The six zones, their capitals and what each one is known for", size=12.6, weight="bold")]
    zones = [("NORTH-WEST", "Sokoto · Kano · Kaduna", "groundnut, cotton, hides", 12, 36, GREEN),
             ("NORTH-EAST", "Maiduguri · Yola", "cattle, gum arabic, fish", 390, 36, BLUE),
             ("NORTH-CENTRAL", "Jos · Abuja · Lokoja", "tin, yam, the confluence", 201, 108, PURPLE),
             ("SOUTH-WEST", "Ibadan · Lagos · Akure", "cocoa, oil palm, ports", 12, 180, AMBER),
             ("SOUTH-EAST", "Enugu · Onitsha · Aba", "coal, palm produce, trade", 390, 180, RED),
             ("SOUTH-SOUTH", "Port Harcourt · Benin", "oil, gas, timber, fish", 201, 252, GREEN)]
    for name, caps, res, x, y, col in zones:
        b += [rect(x, y, 358 if name != "NORTH-CENTRAL" else 358, 64, "#FFFFFF", col, 7, 1.3),
              f'<rect x="{x}" y="{y}" width="5" height="64" rx="2.5" fill="{col}"/>',
              t(x + 16, y + 20, name, size=9, weight="bold", fill=col, anchor="start"),
              t(x + 16, y + 36, caps, size=7.8, fill=SLATE, anchor="start"),
              t(x + 16, y + 52, res, size=7.8, fill=MUTED, anchor="start")]
    write_svg("geo2_ch06_nigeria", _frame(326, "\n".join(b)))


# ── chapter 7: the world ────────────────────────────────────────────────────
def ch07_world() -> None:
    b = [t(380, 22, "The groupings a question can name, and what each one does", size=12.6, weight="bold")]
    rows = [("ECOWAS", "15 West African states, 1975", "free movement, a common tariff", GREEN),
            ("AU", "55 African states, 2002", "peace, integration, the continent's voice", BLUE),
            ("OPEC", "oil exporters, 1960", "quotas that steady the price", AMBER),
            ("WTO", "164 members, 1995", "rules for world trade, dispute panels", PURPLE),
            ("AfCFTA", "African free trade, 2021", "one market for 1.3 billion people", RED)]
    for i, (name, members, job, col) in enumerate(rows):
        y = 36 + i * 44
        b += [rect(12, y, 168, 38, "#FFFFFF", col, 6, 1.2),
              f'<rect x="12" y="{y}" width="5" height="38" rx="2.5" fill="{col}"/>',
              t(26, y + 17, name, size=9, weight="bold", fill=col, anchor="start"),
              t(26, y + 31, members, size=7.6, fill=SLATE, anchor="start"),
              rect(196, y, 552, 38, GREEN_LIGHT if i % 2 == 0 else "#FFFFFF", BORDER, 6, 0.9),
              t(210, y + 23, job, size=8.6, fill=SLATE, anchor="start")]
    b += [rect(12, 264, 736, 34, NAVY, NAVY, 6, 1.0),
          t(380, 286, "Nigeria belongs to all five, and to the UN, the Commonwealth and the OIC as well",
            size=8.6, fill="#A7F3D0", weight="bold")]
    write_svg("geo2_ch07_world", _frame(310, "\n".join(b)))


# ── chapter 8: environment ──────────────────────────────────────────────────
def ch08_environment() -> None:
    b = [t(380, 22, "How a hazard becomes a disaster, and the four ways to break the chain", size=12.6, weight="bold")]
    chain = [("CAUSE", "drought,\novergrazing,\nfelling"), ("PROCESS", "soil dries,\ncover is lost,\nwind lifts it"),
             ("EFFECT", "desert spreads,\nyields fall,\npeople move"), ("RESPONSE", "plant trees,\nterrace, rotate,\ninsure the crop")]
    for i, (head, body) in enumerate(chain):
        x = 12 + i * 186
        b += [rect(x, 36, 170, 92, "#FFFFFF", [GREEN, BLUE, AMBER, PURPLE][i], 7, 1.3),
              t(x + 85, 56, head, size=9, weight="bold", fill=[GREEN, BLUE, AMBER, PURPLE][i]),
              t(x + 85, 74, body.split("\n")[0], size=8, fill=SLATE),
              t(x + 85, 88, body.split("\n")[1], size=8, fill=SLATE),
              t(x + 85, 102, body.split("\n")[2], size=8, fill=SLATE)]
        if i < 3:
            b += [arrow(x + 170, 82, x + 184, 82, color=MUTED, sw=1.4)]
    b += [rect(12, 142, 736, 104, "#FFFFFF", GREEN, 8, 1.3),
          t(380, 162, "SUSTAINABLE DEVELOPMENT: THREE CIRCLES THAT MUST OVERLAP", size=9, weight="bold", fill=GREEN)]
    cx = [150, 380, 610]
    for x, name, col, sub in [(150, "environment", GREEN, "carrying capacity"), (380, "economy", BLUE, "needs met now"),
                              (610, "society", AMBER, "fairness")]:
        b += [f'<circle cx="{x}" cy="204" r="34" fill="none" stroke="{col}" stroke-width="2"/>',
              t(x, 200, name, size=8.4, weight="bold", fill=col),
              t(x, 214, sub, size=7.4, fill=MUTED)]
    b += [t(380, 262, "run any one circle alone and the other two pay for it", size=8.4, fill=MUTED)]
    write_svg("geo2_ch08_environment", _frame(290, "\n".join(b)))


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
    recap("recap_geo2_ch01", "Chapter 1 — population", [
        ("The measures", "density = people ÷ area; growth = births − deaths ± migration; dependency = <15 and >64 ÷ 15–64"),
        ("The structure", "an expansive pyramid means high birth and death rates; a stationary one means low, steady rates"),
        ("The transition", "four stages: high–high, high–falling, falling–low, low–low; Nigeria sits in stage two"),
        ("The movement", "rural–urban is the big one; push factors drive, pull factors draw, and the city gains either way")])


def recap_ch02() -> None:
    recap("recap_geo2_ch02", "Chapter 2 — settlement", [
        ("Site vs situation", "site is the ground it stands on; situation is where that ground sits in the region"),
        ("Patterns", "dispersed, nucleated, linear and planned — the pattern follows water, defence and the farm"),
        ("Land use", "CBD at the centre, then old housing, then suburbs, then the commuter belt"),
        ("Hierarchy", "hamlet → village → town → city → conurbation; services increase as you climb")])


def recap_ch03() -> None:
    recap("recap_geo2_ch03", "Chapter 3 — agriculture", [
        ("The pair of axes", "subsistence or commercial; intensive or extensive — every system is one of the four"),
        ("Shifting cultivation", "land is farmed then rested; the fallow restores fertility; long fallow is the extensive form"),
        ("Plantation", "one cash crop, capital, hired labour, processing nearby — commercial and intensive"),
        ("Nigeria's belts", "mangrove, rainforest, derived and Guinea savanna, Sudan savanna, Sahel — south to north")])


def recap_ch04() -> None:
    recap("recap_geo2_ch04", "Chapter 4 — mining, power and industry", [
        ("The four sectors", "primary, secondary, tertiary, quaternary — the share shifts as a country develops"),
        ("Location factors", "raw material, power, market, labour, transport; the heaviest factor decides the site"),
        ("Heavy vs light", "heavy uses bulk raw material near the source; light serves the market and can be footloose"),
        ("Power", "hydro, thermal, solar and wind; Nigeria's grid is mostly gas-fired with hydro backing")])


def recap_ch05() -> None:
    recap("recap_geo2_ch05", "Chapter 5 — transport, trade and tourism", [
        ("Choosing a mode", "cost, speed, distance, bulk and route decide — water is cheapest, air fastest, road most flexible"),
        ("Trade balance", "exports − imports = visible balance; add invisibles for the balance of payments"),
        ("Terms of trade", "export price index ÷ import price index × 100; below 100 means the country is losing"),
        ("Tourism", "earns foreign exchange and jobs, but leaks and pressures the site that attracts it")])


def recap_ch06() -> None:
    recap("recap_geo2_ch06", "Chapter 6 — Nigeria", [
        ("Position", "4°–14°N and 3°–15°E; 923 768 km²; WAT = GMT + 1; neighbours Benin, Niger, Chad, Cameroon"),
        ("Relief and drainage", "low coastal plain, the Niger–Benue trough, the western highlands, the eastern highlands, the northern plateaus"),
        ("The six zones", "north-west, north-east, north-central, south-west, south-east, south-south"),
        ("Resources", "oil and gas in the south-south, tin on the Jos plateau, coal at Enugu, cocoa in the south-west")])


def recap_ch07() -> None:
    recap("recap_geo2_ch07", "Chapter 7 — West Africa and the world", [
        ("West Africa", "the bulge from Senegal to Nigeria; a shared colonial history and a shared climate sequence"),
        ("ECOWAS", "fifteen states, founded 1975, free movement and a common external tariff"),
        ("Continental and world", "AU, AfCFTA, OPEC, WTO, IMF and the World Bank each do one job; learn the job, not the acronym"),
        ("Regions", "the world is examined as developed and developing, and by climate and vegetation belts")])


def recap_ch08() -> None:
    recap("recap_geo2_ch08", "Chapter 8 — environment and development", [
        ("Hazards", "a natural hazard becomes a disaster when people are exposed and vulnerable to it"),
        ("Land degradation", "desertification, deforestation, erosion and salinisation each have a cause, a process and a fix"),
        ("Conservation", "afforestation, terracing, contour ploughing, crop rotation, protected areas and recycling"),
        ("Sustainability", "environment, economy and society must overlap; the SDGs are the syllabus's own checklist")])


def main() -> int:
    cover_banner()
    for fn in (ch01_population, ch02_settlement, ch03_agriculture, ch04_industry,
               ch05_transport, ch06_nigeria, ch07_world, ch08_environment,
               recap_ch01, recap_ch02, recap_ch03, recap_ch04,
               recap_ch05, recap_ch06, recap_ch07, recap_ch08):
        fn()
    print("17 SVG written")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
