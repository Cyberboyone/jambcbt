"""Commerce Volume 1 — figures, part A (chapters 1–4)."""

from __future__ import annotations

from common import (GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED,
                    BORDER, AMBER, BLUE, PURPLE, RED, t, lines, rect, arrow, line,
                    card, svg, write_svg, banner, recap_card)

W, H = 760, 300


def cover_banner() -> None:
    """Cover strip: the four parts of the commerce course, and what each one holds."""
    b = [t(380, 24, "COMMERCE — UNITS, TRADE, THE AIDS TO TRADE AND THE LAW", size=13, weight="bold")]
    cols = [("BUSINESS UNITS", "sole trader to public", GREEN),
            ("TRADE", "home and foreign", BLUE),
            ("THE AIDS", "bank, insurer, carrier", PURPLE),
            ("FINANCE & LAW", "shares, tax, the consumer", AMBER)]
    cw = 176
    for i, (head, body, col) in enumerate(cols):
        x = 12 + i * (cw + 8)
        b += [rect(x, 44, cw, 62, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="44" width="{cw}" height="5" rx="2.5" fill="{col}"/>',
              t(x + cw / 2, 72, head, size=10.5, weight="bold", fill=col),
              t(x + cw / 2, 90, body, size=9.2, fill=SLATE)]
    b += [t(380, 126, "seventeen diagrams · eight recaps · 520 solved questions", size=9.2, fill=MUTED)]
    write_svg("cover_banner", svg(W, 150, "\n".join(b), bg=GREEN_LIGHT))


def ch01_scope() -> None:
    """Wants → production → commerce, and the two branches of commerce."""
    b = [t(380, 24, "From wants to the shop counter", size=12.6, weight="bold")]
    stages = [("WANTS", "unlimited", GREEN), ("PRODUCTION", "primary · secondary", BLUE),
              ("TRADE", "buying and selling", PURPLE), ("AIDS TO TRADE", "banking · transport · insurance", AMBER)]
    bw = 168
    for i, (head, body, col) in enumerate(stages):
        x = 12 + i * (bw + 8)
        b += [rect(x, 44, bw, 60, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="44" width="{bw}" height="5" rx="2.5" fill="{col}"/>',
              t(x + bw / 2, 70, head, size=10.4, weight="bold", fill=col),
              t(x + bw / 2, 88, body, size=9.0)]
        if i < 3:
            b.append(arrow(x + bw + 1, 74, x + bw + 7, 74, color=MUTED, sw=1.4))
    # branches of commerce
    b += [rect(12, 124, 352, 96, "#FFFFFF", GREEN, 8, 1.4),
          f'<rect x="12" y="124" width="352" height="5" rx="2.5" fill="{GREEN}"/>',
          t(188, 148, "COMMERCE = TRADE + AIDS TO TRADE", size=10.2, weight="bold", fill=GREEN),
          t(188, 172, "TRADE: home trade (wholesale, retail)", size=9.4),
          t(188, 190, "and foreign trade (import, export, entrepot)", size=9.4),
          t(188, 208, "AIDS: banking, insurance, transport,", size=9.4),
          t(188, 224, "communication, advertising, warehousing", size=9.4)]
    b += [rect(380, 124, 368, 96, "#FFFFFF", BLUE, 8, 1.4),
          f'<rect x="380" y="124" width="368" height="5" rx="2.5" fill="{BLUE}"/>',
          t(564, 148, "THE CHAIN OF DISTRIBUTION", size=10.2, weight="bold", fill=BLUE),
          t(564, 172, "producer → wholesaler → retailer → consumer", size=9.4),
          t(564, 192, "each link removes a *discrepancy*:", size=9.4),
          t(564, 210, "place, time, quantity, assortment, ownership", size=9.4),
          t(564, 228, "and information", size=9.4)]
    b += [t(380, 246, "Commerce is the study of how goods move from the point of production to the point of consumption — and of everything that has to exist before they can.", size=9.0, fill=MUTED)]
    write_svg("ch01_scope", svg(W, 262, "\n".join(b)))


def ch02_units() -> None:
    """The three unincorporated forms, compared on the four examinable axes."""
    b = [t(380, 22, "Sole trader · partnership · cooperative", size=12.4, weight="bold")]
    hdr = ["", "SOLE TRADER", "PARTNERSHIP", "COOPERATIVE"]
    cols = [40, 220, 400, 580]
    for i, h in enumerate(hdr):
        if h:
            b.append(t(cols[i], 48, h, size=9.6, weight="bold", fill=NAVY, anchor="start"))
    rows = [
        ("Owners", "one person", "2–20 partners", "members (min. 10)"),
        ("Liability", "unlimited", "unlimited, joint and several", "limited to share capital"),
        ("Capital", "owner's savings and loans", "partners' contributions", "members' subscriptions"),
        ("Control", "the owner alone", "by agreement in the deed", "one member, one vote"),
        ("Profit", "all to the owner", "shared in the agreed ratio", "shared as dividend/patronage"),
        ("Motive", "profit", "profit", "service to members"),
    ]
    y = 66
    for j, (label, a, bb, c) in enumerate(rows):
        if j % 2 == 0:
            b.append(rect(12, y - 12, 736, 34, GREEN_LIGHT, "none", 4, 0))
        b.append(t(cols[0], y, label, size=9.2, weight="bold", fill=GREEN, anchor="start"))
        for i, val in enumerate((a, bb, c), start=1):
            b.append(t(cols[i], y, val, size=9.0, fill=SLATE, anchor="start"))
        y += 34
    b.append(t(380, y + 8, "The examiner's favourite line: a cooperative is owned by its members and run for their service, not for outside profit.", size=9.0, fill=MUTED))
    write_svg("ch02_units", svg(W, y + 22, "\n".join(b)))


def ch03_company() -> None:
    """Formation ladder for a limited liability company."""
    b = [t(380, 22, "From promoter to certificate", size=12.4, weight="bold")]
    steps = [("1  PROMOTION", "the promoter finds the idea,\nthe capital and the people", GREEN),
             ("2  INCORPORATION", "documents filed with the\nCorporate Affairs Commission", BLUE),
             ("3  MEMORANDUM", "the company's relationship\nwith the outside world", PURPLE),
             ("4  ARTICLES", "the rules by which the\ncompany is run inside", AMBER),
             ("5  CERTIFICATE", "the company becomes a\nlegal person", RED)]
    bw = 140
    for i, (head, body, col) in enumerate(steps):
        x = 10 + i * (bw + 8)
        b += [rect(x, 42, bw, 86, "#FFFFFF", col, 8, 1.5),
              f'<rect x="{x}" y="42" width="{bw}" height="5" rx="2.5" fill="{col}"/>',
              t(x + bw / 2, 66, head, size=9.2, weight="bold", fill=col)]
        for k, ln in enumerate(body.split("\n")):
            b.append(t(x + bw / 2, 86 + k * 13, ln, size=8.4, fill=SLATE))
        if i < 4:
            b.append(arrow(x + bw + 1, 85, x + bw + 7, 85, color=MUTED, sw=1.3))
    b += [rect(10, 146, 366, 92, "#FFFFFF", GREEN, 8, 1.4),
          f'<rect x="10" y="146" width="366" height="5" rx="2.5" fill="{GREEN}"/>',
          t(193, 170, "PRIVATE LIMITED (Ltd)", size=10.2, weight="bold", fill=GREEN),
          t(193, 192, "2–50 members · shares not offered to the public", size=9.0),
          t(193, 210, "transfer restricted · no prospectus", size=9.0),
          t(193, 228, "'Ltd' after the name", size=9.0)]
    b += [rect(384, 146, 366, 92, "#FFFFFF", BLUE, 8, 1.4),
          f'<rect x="384" y="146" width="366" height="5" rx="2.5" fill="{BLUE}"/>',
          t(567, 170, "PUBLIC LIMITED (Plc)", size=10.2, weight="bold", fill=BLUE),
          t(567, 192, "minimum 2, no maximum · shares sold to the public", size=9.0),
          t(567, 210, "prospectus required · shares freely transferable", size=9.0),
          t(567, 228, "'Plc' after the name · quoted on the exchange", size=9.0)]
    b.append(t(380, 254, "Both are separate legal persons: the company owns, owes and can be sued in its own name, and the members' liability stops at their shares.", size=9.0, fill=MUTED))
    write_svg("ch03_company", svg(W, 268, "\n".join(b)))


def ch04_channels() -> None:
    """The channels of distribution and what each middleman removes."""
    b = [t(380, 22, "Channels of distribution", size=12.4, weight="bold")]
    lanes = [("Producer → Consumer", "direct: no middleman, lowest price, widest producer risk", GREEN),
             ("Producer → Retailer → Consumer", "one link: large retailers buy direct", BLUE),
             ("Producer → Wholesaler → Retailer → Consumer", "the classic chain: small producers, small shops", PURPLE),
             ("Producer → Agent → Wholesaler → Retailer → Consumer", "agents for imports and agricultural produce", AMBER)]
    y = 40
    for head, note, col in lanes:
        b += [rect(10, y, 742, 52, "#FFFFFF", col, 7, 1.3),
              f'<rect x="10" y="{y}" width="5" height="52" rx="2.5" fill="{col}"/>',
              t(24, y + 22, head, size=10.0, weight="bold", fill=col, anchor="start"),
              t(24, y + 40, note, size=8.8, fill=SLATE, anchor="start")]
        y += 60
    b.append(t(380, y + 6, "Every link you remove saves a margin, and every link you remove also moves a function — storage, credit, breaking bulk — back onto someone else.", size=9.0, fill=MUTED))
    write_svg("ch04_channels", svg(W, y + 20, "\n".join(b)))


FIGURES = ["cover_banner", "ch01_scope", "ch02_units", "ch03_company", "ch04_channels"]
