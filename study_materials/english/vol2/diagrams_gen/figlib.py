"""Figure helpers for the English volume.

Four reusable layouts cover every figure in the book: a ruled table, a row of
cards, a chain of steps and a two-level tree. All text is measured with the
same DejaVu metrics the book uses, so nothing is clipped and nothing overlaps.
"""

from __future__ import annotations

from common import (
    BORDER, GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, LIGHT_BG, MUTED, NAVY,
    RED, RED_LIGHT, SLATE, AMBER, AMBER_LIGHT, BLUE, BLUE_LIGHT, PURPLE,
    PURPLE_LIGHT,
    rect, svg, t, wrap_text, write_svg, text_width, arrow2, line,
)

W = 760
PAD = 12


def _cell_text(x, y, w, s, size, fill=SLATE, weight="normal", anchor="start"):
    """Wrapped text inside a cell; returns the number of lines drawn."""
    lines = wrap_text(s, size, w)
    for i, ln in enumerate(lines):
        if anchor == "middle":
            out = t(x + w / 2, y + i * (size * 1.34), ln, size=size, fill=fill,
                    anchor="middle", weight=weight)
        else:
            out = t(x, y + i * (size * 1.34), ln, size=size, fill=fill,
                    anchor="start", weight=weight)
        yield out
    yield len(lines)


def table_fig(name, title, headers, rows, weights, intro="", note="",
              head_fill=NAVY, accent=GREEN, row_size=9.2, head_size=9.0):
    """A ruled table with a title band. `weights` are relative column widths."""
    total = sum(weights)
    widths = [w / total * (W - 2 * PAD - 4) for w in weights]
    xs = []
    x = PAD + 2
    for w in widths:
        xs.append(x)
        x += w

    body = [t(W / 2, 26, title, size=12.6, weight="bold", fill=NAVY)]
    y = 38
    if intro:
        for i, ln in enumerate(wrap_text(intro, 9.4, W - 2 * PAD - 8)):
            body.append(t(W / 2, y + i * 13, ln, size=9.4, fill=MUTED))
        y += 13 * len(wrap_text(intro, 9.4, W - 2 * PAD - 8)) + 6

    head_h = 24
    body.append(rect(PAD, y, W - 2 * PAD, head_h, head_fill, head_fill, 5, 0))
    for i, h in enumerate(headers):
        body.append(_hdr(xs[i], y, widths[i], h, head_size))
    y += head_h

    for r, row in enumerate(rows):
        cells = []
        for i, cell in enumerate(row):
            cells.append(list(wrap_text(str(cell), row_size, widths[i] - 12)))
        lines = max(1, max(len(c) for c in cells))
        h = 12 + lines * (row_size * 1.34)
        if r % 2:
            body.append(rect(PAD, y, W - 2 * PAD, h, LIGHT_BG, "none", 0, 0))
        for i, cell in enumerate(row):
            for j, ln in enumerate(wrap_text(str(cell), row_size, widths[i] - 12)):
                col = NAVY if i == 0 else SLATE
                wt = "bold" if i == 0 else "normal"
                body.append(t(xs[i] + 6, y + 14 + j * (row_size * 1.34), ln,
                              size=row_size, fill=col, anchor="start", weight=wt))
        body.append(line(PAD, y + h, W - PAD, y + h, BORDER, 0.6))
        y += h

    y += 8
    y += 9
    if note:
        for i, ln in enumerate(wrap_text(note, 9.0, W - 2 * PAD - 8)):
            body.append(t(W / 2, y + i * 12.6, ln, size=9.0, fill=MUTED))
        y += 12.6 * len(wrap_text(note, 9.0, W - 2 * PAD - 8))

    body.append(rect(PAD, 10, W - 2 * PAD, y - 4, "none", accent, 9, 1.4))
    write_svg(name, svg(W, round(y + 10), "\n".join(body)))


def _hdr(x, y, w, text, size):
    return t(x + 6, y + 16, text, size=size, fill="#FFFFFF", anchor="start",
             weight="bold")


def card_row(name, title, items, intro="", note="", cols=None, accent=GREEN,
             card_h=None, body_size=9.2, auto_h=True):
    """A row (or grid) of titled cards; each item is (heading, body)."""
    n = len(items)
    cols = cols or n
    rows = (n + cols - 1) // cols
    gap = 8
    cw = (W - 2 * PAD - gap * (cols - 1)) / cols

    body = [t(W / 2, 26, title, size=12.6, weight="bold", fill=NAVY)]
    y = 38
    if intro:
        n_lines = len(wrap_text(intro, 9.4, W - 2 * PAD - 8))
        for i, ln in enumerate(wrap_text(intro, 9.4, W - 2 * PAD - 8)):
            body.append(t(W / 2, y + i * 13, ln, size=9.4, fill=MUTED))
        y += 13 * n_lines + 8

    # one height for every card in the grid, so the frame looks drawn
    if card_h is None:
        tallest = 0
        for _head, b in items:
            tallest = max(tallest, len(wrap_text(b, body_size, cw - 22)))
        card_h = 34 + tallest * (body_size * 1.36) + 12

    for i, (head, b) in enumerate(items):
        r, c = i // cols, i % cols
        x = PAD + c * (cw + gap)
        cy = y + r * (card_h + gap)
        body.append(rect(x, cy, cw, card_h, "#FFFFFF", accent, 7, 1.3))
        body.append(rect(x, cy, cw, 4.5, accent, accent, 2, 0))
        for j, ln in enumerate(wrap_text(head, 9.8, cw - 20)):
            body.append(t(x + 10, cy + 21 + j * 12.4, ln, size=9.8, fill=NAVY,
                          anchor="start", weight="bold"))
        hh = len(wrap_text(head, 9.8, cw - 20))
        for j, ln in enumerate(wrap_text(b, body_size, cw - 20)):
            body.append(t(x + 10, cy + 21 + hh * 12.4 + 4 + j * (body_size * 1.36),
                          ln, size=body_size, fill=SLATE, anchor="start"))
    y += rows * card_h + (rows - 1) * gap

    y += 8
    y += 9
    if note:
        for i, ln in enumerate(wrap_text(note, 9.0, W - 2 * PAD - 8)):
            body.append(t(W / 2, y + i * 12.6, ln, size=9.0, fill=MUTED))
        y += 12.6 * len(wrap_text(note, 9.0, W - 2 * PAD - 8))

    body.append(rect(PAD, 10, W - 2 * PAD, y - 4, "none", accent, 9, 1.4))
    write_svg(name, svg(W, round(y + 10), "\n".join(body)))


def steps_fig(name, title, steps, intro="", note="", accent=GREEN, size=9.2):
    """A horizontal chain: each step is (label, body). Arrows between them."""
    n = len(steps)
    gap = 26
    bw = (W - 2 * PAD - gap * (n - 1)) / n

    body = [t(W / 2, 26, title, size=12.6, weight="bold", fill=NAVY)]
    y = 40
    if intro:
        nl = len(wrap_text(intro, 9.4, W - 2 * PAD - 8))
        for i, ln in enumerate(wrap_text(intro, 9.4, W - 2 * PAD - 8)):
            body.append(t(W / 2, y + i * 13, ln, size=9.4, fill=MUTED))
        y += 13 * nl + 10

    tallest = max(len(wrap_text(b, size, bw - 18)) for _l, b in steps)
    bh = 30 + tallest * (size * 1.36) + 10

    for i, (label, btxt) in enumerate(steps):
        x = PAD + i * (bw + gap)
        body.append(rect(x, y, bw, bh, "#FFFFFF", accent, 7, 1.3))
        body.append(rect(x, y, bw, 4.5, accent, accent, 2, 0))
        body.append(t(x + bw / 2, y + 22, label, size=10.0, fill=NAVY,
                      anchor="middle", weight="bold"))
        for j, ln in enumerate(wrap_text(btxt, size, bw - 18)):
            body.append(t(x + bw / 2, y + 38 + j * (size * 1.36), ln, size=size,
                          fill=SLATE, anchor="middle"))
        if i < n - 1:
            body.append(arrow2(x + bw + 4, y + bh / 2, x + bw + gap - 4, y + bh / 2,
                               color=accent, sw=1.6, size=6.5))
    y += bh + 8

    y += 9
    if note:
        for i, ln in enumerate(wrap_text(note, 9.0, W - 2 * PAD - 8)):
            body.append(t(W / 2, y + i * 12.6, ln, size=9.0, fill=MUTED))
        y += 12.6 * len(wrap_text(note, 9.0, W - 2 * PAD - 8))

    body.append(rect(PAD, 10, W - 2 * PAD, y - 2, "none", accent, 9, 1.4))
    write_svg(name, svg(W, round(y + 10), "\n".join(body)))


def tree_fig(name, title, root, branches, intro="", note="", accent=GREEN,
             branch_colors=None):
    """Root box at the top, branches hanging from it on a connector rule."""
    n = len(branches)
    gap = 10
    IN = PAD + 9
    bw = (W - 2 * IN - gap * (n - 1)) / n
    body = [t(W / 2, 26, title, size=12.6, weight="bold", fill=NAVY)]
    y = 40
    if intro:
        nl = len(wrap_text(intro, 9.4, W - 2 * PAD - 8))
        for i, ln in enumerate(wrap_text(intro, 9.4, W - 2 * PAD - 8)):
            body.append(t(W / 2, y + i * 13, ln, size=9.4, fill=MUTED))
        y += 13 * nl + 8

    rw = min(W - 2 * IN - 40, 320)
    rh = 34
    rx = (W - rw) / 2
    body.append(rect(rx, y, rw, rh, GREEN_LIGHT, accent, 7, 1.5))
    body.append(t(W / 2, y + 22, root, size=11.0, fill=NAVY, weight="bold"))
    y += rh

    # connector
    body.append(line(W / 2, y, W / 2, y + 14, accent, 1.6))
    y += 14
    body.append(line(IN + bw / 2, y, IN + (n - 1) * (bw + gap) + bw / 2, y, accent, 1.6))
    y += 10

    colors = branch_colors or [accent] * n
    tallest = max(len(wrap_text(b, 9.2, bw - 18)) for _l, b in branches)
    bh = 28 + tallest * (9.2 * 1.36) + 10
    for i, (label, btxt) in enumerate(branches):
        x = IN + i * (bw + gap)
        body.append(line(x + bw / 2, y - 10, x + bw / 2, y, colors[i], 1.6))
        body.append(rect(x, y, bw, bh, "#FFFFFF", colors[i], 7, 1.3))
        body.append(t(x + bw / 2, y + 20, label, size=9.8, fill=NAVY,
                      anchor="middle", weight="bold"))
        for j, ln in enumerate(wrap_text(btxt, 9.2, bw - 18)):
            body.append(t(x + bw / 2, y + 36 + j * (9.2 * 1.36), ln, size=9.2,
                          fill=SLATE, anchor="middle"))
    y += bh + 8

    y += 9
    if note:
        for i, ln in enumerate(wrap_text(note, 9.0, W - 2 * PAD - 8)):
            body.append(t(W / 2, y + i * 12.6, ln, size=9.0, fill=MUTED))
        y += 12.6 * len(wrap_text(note, 9.0, W - 2 * PAD - 8))

    body.append(rect(PAD, 10, W - 2 * PAD, y - 2, "none", accent, 9, 1.4))
    write_svg(name, svg(W, round(y + 10), "\n".join(body)))
