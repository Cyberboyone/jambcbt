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
    fig.savefig(OUT / name, format="svg", bbox_inches="tight", transparent=False,
                facecolor="white")
    plt.close(fig)
