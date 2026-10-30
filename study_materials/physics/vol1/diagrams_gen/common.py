"""Shared drawing helpers for the Volume 2 vector diagram set.

Two engines are used deliberately:

* hand-written SVG for schematics (flowcharts, anatomy, property maps), where
  exact control of boxes and arrows matters;
* matplotlib for anything with axes or curves, so that scales, ticks and
  intersections are mathematically true rather than sketched.

All output is SVG, so the printed book stays razor sharp at any size.
"""

from __future__ import annotations

from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

OUT = Path(__file__).resolve().parent.parent / "diagrams"
OUT.mkdir(parents=True, exist_ok=True)

# Brand palette
GREEN = "#008751"
GREEN_BRIGHT = "#00A859"
GREEN_LIGHT = "#ECFDF5"
GREEN_MID = "#A7F3D0"
NAVY = "#0E1F40"
SLATE = "#334155"
MUTED = "#64748B"
LIGHT_BG = "#F8FAFC"
BORDER = "#CBD5E1"
AMBER = "#D97706"
AMBER_LIGHT = "#FEF3C7"
RED = "#DC2626"
RED_LIGHT = "#FEE2E2"
BLUE = "#2563EB"
BLUE_LIGHT = "#DBEAFE"
PURPLE = "#7C3AED"
PURPLE_LIGHT = "#EDE9FE"

plt.rcParams.update({
    "font.family": "DejaVu Sans",
    "font.size": 10,
    "axes.edgecolor": SLATE,
    "axes.linewidth": 1.0,
    "axes.labelcolor": NAVY,
    "xtick.color": SLATE,
    "ytick.color": SLATE,
    "svg.fonttype": "none",
    "mathtext.fontset": "dejavusans",
})


def esc(s: str) -> str:
    return s.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;")


def write_svg(name: str, body: str) -> None:
    (OUT / name).write_text(body.strip() + "\n", encoding="utf-8")


DEFS = f"""
  <defs>
    <marker id="ag" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="{GREEN}"/>
    </marker>
    <marker id="an" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="{NAVY}"/>
    </marker>
    <marker id="aa" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="{AMBER}"/>
    </marker>
    <marker id="ar" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="{RED}"/>
    </marker>
  </defs>"""


def svg(w: int, h: int, body: str, bg: str = "#FFFFFF") -> str:
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {w} {h}" '
            f'width="{w}" height="{h}">{DEFS}\n'
            f'  <rect x="0" y="0" width="{w}" height="{h}" fill="{bg}"/>\n{body}\n</svg>')


def t(x, y, s, size=12, fill=NAVY, anchor="middle", weight="normal", italic=False):
    style = ' font-style="italic"' if italic else ""
    return (f'<text x="{x}" y="{y}" font-family="DejaVu Sans" font-size="{size}" '
            f'fill="{fill}" text-anchor="{anchor}" font-weight="{weight}"{style}>{esc(s)}</text>')


def lines(cx, y, items, size=11, fill=SLATE, gap=15, anchor="middle", weight="normal"):
    out = []
    for i, s in enumerate(items):
        out.append(t(cx, y + i * gap, s, size=size, fill=fill, anchor=anchor, weight=weight))
    return "\n".join(out)


def rect(x, y, w, h, fill="#FFFFFF", stroke=BORDER, rx=7, sw=1.3, dash=None):
    d = f' stroke-dasharray="{dash}"' if dash else ""
    return (f'<rect x="{x}" y="{y}" width="{w}" height="{h}" rx="{rx}" fill="{fill}" '
            f'stroke="{stroke}" stroke-width="{sw}"{d}/>')


def arrow(x1, y1, x2, y2, color=GREEN, sw=1.8, marker="ag", dash=None):
    d = f' stroke-dasharray="{dash}"' if dash else ""
    return (f'<line x1="{x1}" y1="{y1}" x2="{x2}" y2="{y2}" stroke="{color}" '
            f'stroke-width="{sw}" marker-end="url(#{marker})"{d}/>')


def line(x1, y1, x2, y2, color=BORDER, sw=1.2, dash=None):
    d = f' stroke-dasharray="{dash}"' if dash else ""
    return (f'<line x1="{x1}" y1="{y1}" x2="{x2}" y2="{y2}" stroke="{color}" '
            f'stroke-width="{sw}"{d}/>')


def card(x, y, w, h, title, body, accent=GREEN, title_size=11, body_size=9.6):
    """Titled card with a coloured top rule."""
    out = [rect(x, y, w, h, "#FFFFFF", accent, 7, 1.4),
           f'<rect x="{x}" y="{y}" width="{w}" height="5" rx="2.5" fill="{accent}"/>',
           t(x + w / 2, y + 24, title, size=title_size, fill=NAVY, weight="bold")]
    out.append(lines(x + w / 2, y + 42, body, size=body_size, fill=SLATE, gap=13))
    return "\n".join(out)


def banner(name: str, title: str, nodes, subtitle: str = "") -> None:
    w, h = 760, 220
    b = [t(380, 28, title, size=13.5, weight="bold")]
    if subtitle:
        b.append(t(380, 46, subtitle, size=9.6, fill=MUTED))
    cols = min(4, len(nodes))
    rows = (len(nodes) + cols - 1) // cols
    cw = 720 / cols
    for i, (label, col) in enumerate(nodes):
        r, c = i // cols, i % cols
        x = 20 + c * cw
        y = 62 + r * (140 / rows)
        bh = (140 / rows) - 12
        b.append(rect(x, y, cw - 10, bh, "#FFFFFF", col, 7, 1.6))
        b.append(f'<rect x="{x}" y="{y}" width="{cw - 10}" height="5" rx="2.5" fill="{col}"/>')
        words = label.split("\n")
        for j, wd in enumerate(words[:5]):
            b.append(t(x + (cw - 10) / 2, y + 24 + j * 13, wd, size=9, weight="bold"))
    body = (f'<rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="{GREEN_LIGHT}" '
            f'stroke="{GREEN}" stroke-width="1.2"/>\n' + "\n".join(b))
    write_svg(name, svg(w, h, body, bg=GREEN_LIGHT))


# ── matplotlib helpers ─────────────────────────────────────────────────────
def axes_style(ax, xlabel="x", ylabel="y", grid=True, zero=True):
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    if zero:
        ax.axhline(0, color=SLATE, lw=1.0, zorder=1)
        ax.axvline(0, color=SLATE, lw=1.0, zorder=1)
    if grid:
        ax.grid(True, color="#E2E8F0", lw=0.8, zorder=0)
    ax.set_xlabel(xlabel)
    ax.set_ylabel(ylabel)


def save(fig, name: str) -> None:
    # Fixed hash salt and no date stamp, so that re-running the generator
    # produces byte-identical SVGs and the repository diff stays honest.
    plt.rcParams["svg.hashsalt"] = "jamb-physics-1"
    fig.savefig(OUT / name, format="svg", bbox_inches="tight", transparent=False,
                facecolor="white", metadata={"Date": None, "Creator": None})
    plt.close(fig)


# ── recap cards ────────────────────────────────────────────────────────────
# The card is drawn on a narrow canvas (470 units) and placed in the book at
# 100% of the text width, so the type inside it prints at roughly 9.5 pt —
# anything wider would shrink to an unreadable size on the page.
from PIL import ImageFont as _ImageFont
from matplotlib import font_manager as _font_manager

_MEASURE = _ImageFont.truetype(_font_manager.findfont("DejaVu Sans"), 200)


def text_width(s: str, size: float) -> float:
    return _MEASURE.getlength(s) * size / 200.0


def wrap_text(s: str, size: float, max_w: float) -> list[str]:
    out, cur = [], ""
    for word in s.split():
        trial = f"{cur} {word}".strip()
        if not cur or text_width(trial, size) <= max_w:
            cur = trial
        else:
            out.append(cur)
            cur = word
    if cur:
        out.append(cur)
    return out


def dot(cx, cy, r, fill=GREEN, stroke="none", sw=1.0):
    st = f' stroke="{stroke}" stroke-width="{sw}"' if stroke != "none" else ""
    return f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="{fill}"{st}/>'


def poly(points, fill, stroke, sw=1.8):
    pts = " ".join(f"{x},{y}" for x, y in points)
    return f'<polygon points="{pts}" fill="{fill}" stroke="{stroke}" stroke-width="{sw}"/>'


def path(d, fill="none", stroke=SLATE, sw=1.8, dash=None):
    ds = f' stroke-dasharray="{dash}"' if dash else ""
    return f'<path d="{d}" fill="{fill}" stroke="{stroke}" stroke-width="{sw}" stroke-linecap="round"{ds}/>'


def arrow2(x1, y1, x2, y2, color=GREEN, sw=1.9, size=8.0):
    """Straight arrow with a filled triangular head drawn as a polygon.

    SVG markers do not survive the SVG -> PDF -> Typst pipeline in this
    toolchain, so the head is a real polygon.
    """
    import math
    ang = math.atan2(y2 - y1, x2 - x1)
    ca, sa = math.cos(ang), math.sin(ang)
    bx, by = x2 - size * 1.55 * ca, y2 - size * 1.55 * sa
    px, py = -sa, ca
    half = size * 0.58
    tri = [(x2, y2), (bx + half * px, by + half * py), (bx - half * px, by - half * py)]
    body = [line(x1, y1, bx, by, color=color, sw=sw),
            f'<polygon points="{" ".join(f"{x:.1f},{y:.1f}" for x, y in tri)}" fill="{color}"/>']
    return "".join(body)


def recap_card(name: str, title: str, rows, w: int = 470) -> None:
    """Four-line memory card: wrapped body text, no clipping, no overlap."""
    pad = 12
    box_w = w - 2 * pad
    text_x = pad + 12
    inner_w = box_w - 26
    head_size, body_size, body_gap = 10.6, 9.6, 12.6

    blocks = [(head, wrap_text(body, body_size, inner_w)) for head, body in rows]

    b = [t(w / 2, 21, title, size=11.8, weight="bold", fill=NAVY)]
    y = 33
    for head, body_lines in blocks:
        box_h = 17 + body_gap * len(body_lines) + 6
        b.append(rect(pad, y, box_w, box_h, "#FFFFFF", GREEN, 6, 1.1))
        b.append(t(text_x, y + 15, head, size=head_size, weight="bold",
                   fill=GREEN, anchor="start"))
        for i, ln in enumerate(body_lines):
            b.append(t(text_x, y + 15 + body_gap * (i + 1), ln, size=body_size,
                       fill=SLATE, anchor="start"))
        y += box_h + 5
    h = round(y + 4)
    write_svg(name, svg(w, h, "\n".join(b)))
