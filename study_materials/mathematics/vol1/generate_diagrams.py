#!/usr/bin/env python3
"""
Generates all publication-grade vector SVG diagrams and mathematical plots
for JAMB Mathematics — Volume 1: Number & Numeration.
"""

import math
from pathlib import Path
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import numpy as np

OUT = Path(__file__).resolve().parent / "diagrams"
OUT.mkdir(parents=True, exist_ok=True)

# Brand Palette
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
    "axes.linewidth": 1.1,
    "svg.fonttype": "none",  # keep crisp vector text in SVG
})


def write_svg(name: str, content: str) -> None:
    (OUT / name).write_text(content.strip() + "\n", encoding="utf-8")


def svg_wrap(w: int, h: int, body: str, bg: str = "#FFFFFF") -> str:
    return f'''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {w} {h}" width="{w}" height="{h}">
  <defs>
    <marker id="arrow-green" viewBox="0 0 10 10" refX="8" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="{GREEN}"/>
    </marker>
    <marker id="arrow-navy" viewBox="0 0 10 10" refX="8" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="{NAVY}"/>
    </marker>
    <marker id="arrow-amber" viewBox="0 0 10 10" refX="8" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="{AMBER}"/>
    </marker>
    <marker id="arrow-red" viewBox="0 0 10 10" refX="8" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="{RED}"/>
    </marker>
    <marker id="arrow-blue" viewBox="0 0 10 10" refX="8" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="{BLUE}"/>
    </marker>
  </defs>
  <rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="{bg}" stroke="{BORDER}" stroke-width="1.2"/>
  {body}
</svg>'''


# ---------------------------------------------------------------------------
# 1. Cover Geometric Backdrop Banner
# ---------------------------------------------------------------------------
def gen_cover_graphic():
    w, h = 760, 250
    lines = []
    # Subtle coordinate grid
    for gx in range(0, w + 1, 38):
        lines.append(f'<line x1="{gx}" y1="0" x2="{gx}" y2="{h}" stroke="#1E3A5F" stroke-width="0.6" opacity="0.35"/>')
    for gy in range(0, h + 1, 38):
        lines.append(f'<line x1="0" y1="{gy}" x2="{w}" y2="{gy}" stroke="#1E3A5F" stroke-width="0.6" opacity="0.35"/>')

    # Left: 3-set glowing Venn rings
    cx, cy, r = 165, 130, 56
    lines.append(f'<circle cx="{cx-28}" cy="{cy-18}" r="{r}" fill="{GREEN_BRIGHT}" fill-opacity="0.22" stroke="#34D399" stroke-width="2.2"/>')
    lines.append(f'<circle cx="{cx+28}" cy="{cy-18}" r="{r}" fill="#38BDF8" fill-opacity="0.20" stroke="#7DD3FC" stroke-width="2.2"/>')
    lines.append(f'<circle cx="{cx}" cy="{cy+28}" r="{r}" fill="#FBBF24" fill-opacity="0.18" stroke="#FCD34D" stroke-width="2.2"/>')
    lines.append(f'<text x="{cx}" y="{cy+4}" fill="#FFFFFF" font-family="DejaVu Sans" font-size="13" font-weight="bold" text-anchor="middle">A ∩ B ∩ C</text>')
    lines.append(f'<text x="{cx}" y="228" fill="#A7F3D0" font-family="DejaVu Sans" font-size="11" text-anchor="middle">Set Theory &amp; Venn Logic</text>')

    # Center: Spiral of Theodorus (Exact Surds)
    sx, sy, scale = 385, 132, 34
    px, py = sx + scale, sy
    for k in range(1, 9):
        ang = math.atan2(py - sy, px - sx)
        nx = px - scale * math.sin(ang)
        ny = py + scale * math.cos(ang) if False else py - scale * math.cos(ang)
        # proper counter-clockwise unit perpendicular: (-sin, cos) in math coords -> (-sin, -cos) in SVG y-down
        dx, dy = px - sx, py - sy
        length = math.hypot(dx, dy)
        ux, uy = dx / length, dy / length
        # rotate -90 deg in SVG (y down): (uy, -ux)
        nx, ny = px + uy * scale, py - ux * scale
        lines.append(f'<polygon points="{sx},{sy} {px},{py} {nx},{ny}" fill="#10B981" fill-opacity="{0.10 + 0.03*k:.2f}" stroke="#6EE7B7" stroke-width="1.6"/>')
        px, py = nx, ny
    lines.append(f'<text x="{sx}" y="228" fill="#A7F3D0" font-family="DejaVu Sans" font-size="11" text-anchor="middle">Surds, Indices &amp; Logarithms</text>')

    # Right: Modulo Clock & Base Conversion Matrix
    mx, my, mr = 610, 118, 66
    lines.append(f'<circle cx="{mx}" cy="{my}" r="{mr}" fill="#0F172A" fill-opacity="0.55" stroke="#34D399" stroke-width="2.2"/>')
    for m in range(8):
        ang = -math.pi / 2 + m * (2 * math.pi / 8)
        tx = mx + (mr - 18) * math.cos(ang)
        ty = my + (mr - 18) * math.sin(ang) + 4
        lines.append(f'<text x="{tx:.1f}" y="{ty:.1f}" fill="#E2E8F0" font-family="DejaVu Sans Mono" font-size="11" font-weight="bold" text-anchor="middle">{m:03b}</text>')
    lines.append(f'<text x="{mx}" y="{my+5}" fill="#FCD34D" font-family="DejaVu Sans" font-size="13" font-weight="bold" text-anchor="middle">mod n</text>')
    lines.append(f'<text x="{mx}" y="228" fill="#A7F3D0" font-family="DejaVu Sans" font-size="11" text-anchor="middle">Bases, Modulo &amp; Finance</text>')

    svg = f'''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {w} {h}" width="{w}" height="{h}">
      <defs>
        <linearGradient id="covgrad" x1="0%" y1="0%" x2="100%" y2="100%">
          <stop offset="0%" stop-color="#07192F"/>
          <stop offset="55%" stop-color="#0B2B40"/>
          <stop offset="100%" stop-color="#064E3B"/>
        </linearGradient>
      </defs>
      <rect x="0" y="0" width="{w}" height="{h}" rx="14" fill="url(#covgrad)" stroke="#10B981" stroke-width="1.8"/>
      {"".join(lines)}
    </svg>'''
    write_svg("cover_banner.svg", svg)


# ---------------------------------------------------------------------------
# 2. Frontmatter: UTME Mathematics Topic Weight Chart
# ---------------------------------------------------------------------------
def gen_utme_weight_chart():
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10.5, 4.0), gridspec_kw={"width_ratios": [1.15, 1.35]})
    fig.patch.set_facecolor("white")

    # Left: Overall 5 Sections out of 40 UTME questions
    sections = [
        "Sec I: Number &\nNumeration (Vol. 1)",
        "Sec II: Algebra\n(Vol. 2)",
        "Sec III: Geometry &\nTrigonometry (Vol. 3)",
        "Sec IV: Calculus\n(Vol. 4)",
        "Sec V: Statistics &\nProbability (Vol. 4)",
    ]
    counts = [11, 10, 9, 4, 6]
    colors = [GREEN_BRIGHT, BLUE, AMBER, PURPLE, "#0D9488"]
    y_pos = np.arange(len(sections))[::-1]
    bars = ax1.barh(y_pos, counts, color=colors, height=0.58, edgecolor=NAVY, linewidth=0.8)
    ax1.set_yticks(y_pos)
    ax1.set_yticklabels(sections, fontsize=8.8, fontweight="bold", color=NAVY)
    ax1.set_xlim(0, 14)
    ax1.set_xlabel("Typical Questions per 40-Question UTME Paper", fontsize=8.8, color=SLATE)
    ax1.set_title("UTME Mathematics Blueprint (40 Qs)", fontsize=10.5, fontweight="bold", color=NAVY, pad=10)
    ax1.grid(axis="x", linestyle="--", alpha=0.4)
    ax1.spines["top"].set_visible(False)
    ax1.spines["right"].set_visible(False)
    for bar, c in zip(bars, counts):
        pct = round(c * 100 / 40)
        ax1.text(bar.get_width() + 0.25, bar.get_y() + bar.get_height()/2, f"{c} Qs (~{pct}%)",
                 va="center", fontsize=8.5, fontweight="bold", color=NAVY)

    # Right: Breakdown within Volume 1 (Section I)
    subtopics = [
        "Ch 1: Number Bases",
        "Ch 2: Modular Arithmetic",
        "Ch 3: Fractions, s.f. & Errors",
        "Ch 4: Ratio, Rate & Proportion",
        "Ch 5: Interest, Shares & VAT",
        "Ch 6: Indices & Standard Form",
        "Ch 7: Logarithms & Base Change",
        "Ch 8: Surds & Rationalization",
        "Ch 9: Sets & Venn Diagrams",
    ]
    freq = [95, 65, 92, 85, 90, 96, 94, 93, 97]  # % of JAMB papers featuring >= 1 Q
    y2 = np.arange(len(subtopics))[::-1]
    c2 = [GREEN if f >= 90 else AMBER for f in freq]
    b2 = ax2.barh(y2, freq, color=c2, height=0.62, edgecolor=NAVY, linewidth=0.7)
    ax2.set_yticks(y2)
    ax2.set_yticklabels(subtopics, fontsize=8.5, color=NAVY, fontweight="bold")
    ax2.set_xlim(0, 115)
    ax2.set_xlabel("Appearance Rate Across Past UTME Papers (%)", fontsize=8.8, color=SLATE)
    ax2.set_title("Volume 1 High-Yield Frequency Radar", fontsize=10.5, fontweight="bold", color=GREEN, pad=10)
    ax2.grid(axis="x", linestyle="--", alpha=0.4)
    ax2.spines["top"].set_visible(False)
    ax2.spines["right"].set_visible(False)
    for bar, f in zip(b2, freq):
        ax2.text(bar.get_width() + 1.5, bar.get_y() + bar.get_height()/2, f"{f}%",
                 va="center", fontsize=8.2, fontweight="bold", color=NAVY)

    plt.tight_layout(pad=1.4)
    fig.savefig(OUT / "utme_weight_chart.svg", format="svg")
    plt.close(fig)


# ---------------------------------------------------------------------------
# 3. Chapter 1 Diagrams: Number Bases
# ---------------------------------------------------------------------------
def gen_ch01_diagrams():
    # (A) Place-value architecture of 1101.101_2
    w, h = 740, 255
    digits = [("1", "2³", "8"), ("1", "2²", "4"), ("0", "2¹", "0"), ("1", "2⁰", "1"),
              (".", "point", "•"),
              ("1", "2⁻¹", "1/2 = 0.5"), ("0", "2⁻²", "0"), ("1", "2⁻³", "1/8 = 0.125")]
    body = [
        f'<text x="370" y="28" fill="{NAVY}" font-family="DejaVu Sans" font-size="14" font-weight="bold" text-anchor="middle">Positional Place-Value Anatomy of the Bicimal 1101.101₂</text>',
        f'<rect x="34" y="42" width="320" height="24" rx="5" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="1"/>',
        f'<text x="194" y="58" fill="{GREEN}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">INTEGER PART (Positive Powers of Base 2)</text>',
        f'<rect x="412" y="42" width="294" height="24" rx="5" fill="{AMBER_LIGHT}" stroke="{AMBER}" stroke-width="1"/>',
        f'<text x="559" y="58" fill="{AMBER}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">BICIMAL PART (Negative Powers of Base 2)</text>',
    ]
    xs = [60, 145, 230, 315, 378, 445, 550, 655]
    for (d, pw, val), x in zip(digits, xs):
        if d == ".":
            body.append(f'<circle cx="{x}" cy="112" r="7" fill="{RED}"/>')
            body.append(f'<text x="{x}" y="148" fill="{RED}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Radix</text>')
            body.append(f'<text x="{x}" y="162" fill="{RED}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Point</text>')
            continue
        is_int = x < 378
        fill = GREEN_LIGHT if is_int else AMBER_LIGHT
        stroke = GREEN if is_int else AMBER
        body.append(f'<rect x="{x-28}" y="78" width="56" height="48" rx="8" fill="{fill}" stroke="{stroke}" stroke-width="1.8"/>')
        body.append(f'<text x="{x}" y="110" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="22" font-weight="bold" text-anchor="middle">{d}</text>')
        body.append(f'<line x1="{x}" y1="126" x2="{x}" y2="156" stroke="{stroke}" stroke-width="1.5" marker-end="url(#{"arrow-green" if is_int else "arrow-amber"})"/>')
        body.append(f'<text x="{x}" y="175" fill="{NAVY}" font-family="DejaVu Sans" font-size="12" font-weight="bold" text-anchor="middle">{d} × {pw}</text>')
        body.append(f'<rect x="{x-42}" y="186" width="84" height="24" rx="4" fill="#F1F5F9" stroke="{BORDER}"/>')
        body.append(f'<text x="{x}" y="202" fill="{SLATE}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">= {val}</text>')
    body.append(f'<rect x="90" y="220" width="560" height="26" rx="6" fill="{NAVY}"/>')
    body.append(f'<text x="370" y="237" fill="#FFFFFF" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">Total in Base 10 = (8 + 4 + 0 + 1) + (0.5 + 0 + 0.125) = 13.625₁₀</text>')
    write_svg("ch01_place_value.svg", svg_wrap(w, h, "\n".join(body)))

    # (B) Successive Division (Bottom-Up) vs Successive Multiplication (Top-Down)
    w, h = 740, 275
    b = [
        f'<text x="370" y="26" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Converting 29.625₁₀ to Base 2: Integer vs. Fractional Algorithms</text>',
        # Left panel
        f'<rect x="22" y="40" width="335" height="220" rx="8" fill="{GREEN_LIGHT}" fill-opacity="0.45" stroke="{GREEN}" stroke-width="1.4"/>',
        f'<text x="190" y="60" fill="{GREEN}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">STEP 1: Integer Part (29₁₀) — Divide by 2</text>',
        # Division ladder
        f'<line x1="85" y1="74" x2="85" y2="210" stroke="{NAVY}" stroke-width="1.6"/>',
        f'<line x1="175" y1="74" x2="175" y2="210" stroke="{NAVY}" stroke-width="1.6"/>',
    ]
    rows_div = [
        ("2", "29", "Quotient →"),
        ("2", "14", "rem 1   (LSB)"),
        ("2", "7",  "rem 0"),
        ("2", "3",  "rem 1"),
        ("2", "1",  "rem 1"),
        ("",  "0",  "rem 1   (MSB)"),
    ]
    for idx, (dv, num, rem) in enumerate(rows_div):
        yy = 90 + idx * 23
        b.append(f'<line x1="55" y1="{yy+5}" x2="275" y2="{yy+5}" stroke="{BORDER}" stroke-width="0.9"/>')
        b.append(f'<text x="70" y="{yy}" fill="{GREEN}" font-family="DejaVu Sans Mono" font-size="11.5" font-weight="bold" text-anchor="middle">{dv}</text>')
        b.append(f'<text x="130" y="{yy}" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="11.5" font-weight="bold" text-anchor="middle">{num}</text>')
        b.append(f'<text x="232" y="{yy}" fill="{RED if "rem" in rem else SLATE}" font-family="DejaVu Sans Mono" font-size="11" font-weight="bold" text-anchor="middle">{rem}</text>')
    # Upward arrow
    b.append(f'<line x1="312" y1="206" x2="312" y2="104" stroke="{GREEN}" stroke-width="2.6" marker-end="url(#arrow-green)"/>')
    b.append(f'<text x="330" y="158" fill="{GREEN}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle" transform="rotate(-90 330 158)">READ UPWARD ↑</text>')
    b.append(f'<text x="190" y="246" fill="{NAVY}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">Result: 29₁₀ = 11101₂</text>')

    # Right panel
    b.extend([
        f'<rect x="383" y="40" width="335" height="220" rx="8" fill="{BLUE_LIGHT}" fill-opacity="0.40" stroke="{BLUE}" stroke-width="1.4"/>',
        f'<text x="550" y="60" fill="{BLUE}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">STEP 2: Fraction (0.625₁₀) — Multiply by 2</text>',
    ])
    rows_mul = [
        ("0.625 × 2 = 1.250", "Carry = 1"),
        ("0.250 × 2 = 0.500", "Carry = 0"),
        ("0.500 × 2 = 1.000", "Carry = 1"),
        ("Fractional part = .000 → STOP!", ""),
    ]
    for idx, (calc, carry) in enumerate(rows_mul):
        yy = 96 + idx * 32
        b.append(f'<text x="400" y="{yy}" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="11" font-weight="bold">{calc}</text>')
        if carry:
            b.append(f'<rect x="578" y="{yy-14}" width="84" height="20" rx="4" fill="#FFFFFF" stroke="{BLUE}"/>')
            b.append(f'<text x="620" y="{yy}" fill="{BLUE}" font-family="DejaVu Sans Mono" font-size="11" font-weight="bold" text-anchor="middle">{carry}</text>')
    b.append(f'<line x1="682" y1="86" x2="682" y2="170" stroke="{BLUE}" stroke-width="2.6" marker-end="url(#arrow-blue)"/>')
    b.append(f'<text x="700" y="130" fill="{BLUE}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle" transform="rotate(90 700 130)">READ DOWN ↓</text>')
    b.append(f'<text x="550" y="222" fill="{NAVY}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">Result: 0.625₁₀ = 0.101₂</text>')
    b.append(f'<text x="550" y="246" fill="{GREEN}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">Combined: 29.625₁₀ = 11101.101₂</text>')
    write_svg("ch01_division_vs_mult.svg", svg_wrap(w, h, "\n".join(b)))

    # (C) Base Bridge & Fast Binary Grouping
    w, h = 740, 200
    b = [
        f'<text x="370" y="26" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Universal Base-10 Bridge vs. Direct Power-of-2 Bit Grouping</text>',
        # Bridge
        f'<rect x="36" y="58" width="130" height="54" rx="8" fill="{AMBER_LIGHT}" stroke="{AMBER}" stroke-width="1.8"/>',
        f'<text x="101" y="82" fill="{NAVY}" font-family="DejaVu Sans" font-size="12" font-weight="bold" text-anchor="middle">Source Base p</text>',
        f'<text x="101" y="100" fill="{SLATE}" font-family="DejaVu Sans" font-size="10.5" text-anchor="middle">e.g. 234₅</text>',

        f'<line x1="166" y1="85" x2="278" y2="85" stroke="{GREEN}" stroke-width="2.2" marker-end="url(#arrow-green)"/>',
        f'<text x="222" y="76" fill="{GREEN}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Expand ∑ dᵢ pⁱ</text>',

        f'<rect x="282" y="52" width="176" height="66" rx="10" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="2.2"/>',
        f'<text x="370" y="78" fill="{GREEN}" font-family="DejaVu Sans" font-size="13" font-weight="bold" text-anchor="middle">BASE 10 HUB</text>',
        f'<text x="370" y="96" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">50 + 15 + 4 = 69₁₀</text>',
        f'<text x="370" y="111" fill="{MUTED}" font-family="DejaVu Sans" font-size="9.5" text-anchor="middle">(Universal Pivot)</text>',

        f'<line x1="458" y1="85" x2="570" y2="85" stroke="{BLUE}" stroke-width="2.2" marker-end="url(#arrow-blue)"/>',
        f'<text x="514" y="76" fill="{BLUE}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Divide by q</text>',

        f'<rect x="574" y="58" width="130" height="54" rx="8" fill="{BLUE_LIGHT}" stroke="{BLUE}" stroke-width="1.8"/>',
        f'<text x="639" y="82" fill="{NAVY}" font-family="DejaVu Sans" font-size="12" font-weight="bold" text-anchor="middle">Target Base q</text>',
        f'<text x="639" y="100" fill="{SLATE}" font-family="DejaVu Sans" font-size="10.5" text-anchor="middle">e.g. 105₈</text>',

        # Fast shortcut bar at bottom
        f'<rect x="36" y="134" width="668" height="48" rx="8" fill="#F1F5F9" stroke="{NAVY}" stroke-width="1.2"/>',
        f'<text x="370" y="153" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">FAST CBT SHORTCUT FOR BASES 2, 4, 8, 16 (No Base-10 Needed!):</text>',
        f'<text x="370" y="172" fill="{GREEN}" font-family="DejaVu Sans Mono" font-size="11" font-weight="bold" text-anchor="middle">Base 4 = 2-bit groups (2²)   |   Base 8 = 3-bit groups (2³): 105₈ = 001 000 101₂   |   Base 16 = 4-bit groups (2⁴)</text>',
    ]
    write_svg("ch01_base_bridge.svg", svg_wrap(w, h, "\n".join(b)))


# ---------------------------------------------------------------------------
# 4. Chapter 2 Diagrams: Modular Arithmetic
# ---------------------------------------------------------------------------
def gen_ch02_diagrams():
    # (A) Modulo 5 & Modulo 12 Clock Wheels
    w, h = 740, 260
    b = [
        f'<text x="370" y="26" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Cyclic Wrap-Around in Modular (Clock) Arithmetic</text>',
        # Left: Mod 5 wheel showing 3 (+) 4 = 2 (mod 5)
        f'<text x="195" y="50" fill="{GREEN}" font-family="DejaVu Sans" font-size="12" font-weight="bold" text-anchor="middle">Residue Wheel Modulo 5:  3 ⊕₅ 4 ≡ 2 (mod 5)</text>',
        f'<circle cx="195" cy="148" r="76" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="2.2"/>',
    ]
    cx, cy, r = 195, 148, 76
    for k in range(5):
        ang = -math.pi / 2 + k * (2 * math.pi / 5)
        nx = cx + r * math.cos(ang)
        ny = cy + r * math.sin(ang)
        highlight = GREEN if k == 2 else (AMBER if k == 3 else "#FFFFFF")
        txt_col = "#FFFFFF" if k in (2, 3) else NAVY
        b.append(f'<circle cx="{nx:.1f}" cy="{ny:.1f}" r="18" fill="{highlight}" stroke="{NAVY}" stroke-width="1.6"/>')
        b.append(f'<text x="{nx:.1f}" y="{ny+5:.1f}" fill="{txt_col}" font-family="DejaVu Sans" font-size="13" font-weight="bold" text-anchor="middle">{k}</text>')
    b.append(f'<text x="{cx}" y="{cy-4}" fill="{NAVY}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">Start at 3</text>')
    b.append(f'<text x="{cx}" y="{cy+13}" fill="{GREEN}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">+4 steps CW → 2</text>')

    # Right: Number-line equivalence classes mod 5
    b.append(f'<text x="540" y="50" fill="{BLUE}" font-family="DejaVu Sans" font-size="12" font-weight="bold" text-anchor="middle">Equivalence Class of 2 (mod 5): Jumps of +5 / −5</text>')
    b.append(f'<line x1="375" y1="150" x2="715" y2="150" stroke="{NAVY}" stroke-width="2" marker-end="url(#arrow-navy)" marker-start="url(#arrow-navy)"/>')
    vals = [-8, -5, -3, 0, 2, 5, 7, 10, 12]
    for v in vals:
        xx = 530 + v * 13.5
        is_cls = (v - 2) % 5 == 0
        col = RED if is_cls else MUTED
        b.append(f'<line x1="{xx:.1f}" y1="143" x2="{xx:.1f}" y2="157" stroke="{col}" stroke-width="{2.4 if is_cls else 1.2}"/>')
        if is_cls:
            b.append(f'<circle cx="{xx:.1f}" cy="150" r="5" fill="{RED}"/>')
        b.append(f'<text x="{xx:.1f}" y="{176 if is_cls else 172}" fill="{col}" font-family="DejaVu Sans Mono" font-size="{11.5 if is_cls else 9.5}" font-weight="{"bold" if is_cls else "normal"}" text-anchor="middle">{v}</text>')
    # Jump arcs between -8 -> -3 -> 2 -> 7 -> 12
    cls_vals = [-8, -3, 2, 7, 12]
    for a, c in zip(cls_vals[:-1], cls_vals[1:]):
        x1, x2 = 530 + a * 13.5, 530 + c * 13.5
        xm = (x1 + x2) / 2
        b.append(f'<path d="M {x1+3:.1f} 142 Q {xm:.1f} 102 {x2-3:.1f} 142" fill="none" stroke="{BLUE}" stroke-width="1.7" marker-end="url(#arrow-blue)"/>')
        b.append(f'<text x="{xm:.1f}" y="116" fill="{BLUE}" font-family="DejaVu Sans" font-size="9.5" font-weight="bold" text-anchor="middle">+5</text>')
    b.append(f'<rect x="382" y="198" width="322" height="44" rx="7" fill="{RED_LIGHT}" stroke="{RED}" stroke-width="1.2"/>')
    b.append(f'<text x="543" y="216" fill="{RED}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">JAMB NEGATIVE MODULO TRAP: −8 mod 5 ≠ −3!</text>')
    b.append(f'<text x="543" y="233" fill="{NAVY}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">Add multiples of 5 until 0 ≤ r &lt; 5:  −8 + 10 = +2 (mod 5)</text>')
    write_svg("ch02_modulo_wheels.svg", svg_wrap(w, h, "\n".join(b)))

    # (B) Cayley Multiplication Tables Z_5 (Prime) vs Z_6 (Composite with Zero Divisors)
    w, h = 740, 250
    b = [
        f'<text x="370" y="25" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Prime Modulus ℤ₅ (Every Non-Zero Has Inverse) vs. Composite Modulus ℤ₆ (Zero Divisors!)</text>',
    ]
    # Z_5 table at x=45
    b.append(f'<text x="180" y="48" fill="{GREEN}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">Multiplication ⊗ in Modulo 5 (Prime)</text>')
    cell = 30
    ox, oy = 75, 58
    for r_i in range(6):
        for c_i in range(6):
            x, y = ox + c_i * cell, oy + r_i * cell
            if r_i == 0 and c_i == 0:
                bg, txt, tc = NAVY, "⊗₅", "#FFFFFF"
            elif r_i == 0:
                bg, txt, tc = "#E2E8F0", str(c_i - 1), NAVY
            elif c_i == 0:
                bg, txt, tc = "#E2E8F0", str(r_i - 1), NAVY
            else:
                val = ((r_i - 1) * (c_i - 1)) % 5
                bg = GREEN_MID if val == 1 else "#FFFFFF"
                txt = str(val)
                tc = GREEN if val == 1 else SLATE
            b.append(f'<rect x="{x}" y="{y}" width="{cell}" height="{cell}" fill="{bg}" stroke="{BORDER}"/>')
            b.append(f'<text x="{x+15}" y="{y+20}" fill="{tc}" font-family="DejaVu Sans Mono" font-size="11.5" font-weight="bold" text-anchor="middle">{txt}</text>')
    b.append(f'<text x="165" y="244" fill="{GREEN}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Highlighted 1s show inverses: 2⁻¹≡3, 4⁻¹≡4</text>')

    # Z_6 table at x=420
    b.append(f'<text x="555" y="48" fill="{RED}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">Multiplication ⊗ in Modulo 6 (Composite)</text>')
    cell6 = 26
    ox6, oy6 = 445, 56
    for r_i in range(7):
        for c_i in range(7):
            x, y = ox6 + c_i * cell6, oy6 + r_i * cell6
            if r_i == 0 and c_i == 0:
                bg, txt, tc = NAVY, "⊗₆", "#FFFFFF"
            elif r_i == 0:
                bg, txt, tc = "#E2E8F0", str(c_i - 1), NAVY
            elif c_i == 0:
                bg, txt, tc = "#E2E8F0", str(r_i - 1), NAVY
            else:
                a_v, b_v = r_i - 1, c_i - 1
                val = (a_v * b_v) % 6
                is_zd = (a_v != 0 and b_v != 0 and val == 0)
                bg = RED_LIGHT if is_zd else (GREEN_MID if val == 1 else "#FFFFFF")
                txt = str(val)
                tc = RED if is_zd else (GREEN if val == 1 else SLATE)
            b.append(f'<rect x="{x}" y="{y}" width="{cell6}" height="{cell6}" fill="{bg}" stroke="{BORDER}"/>')
            b.append(f'<text x="{x+13}" y="{y+18}" fill="{tc}" font-family="DejaVu Sans Mono" font-size="11" font-weight="bold" text-anchor="middle">{txt}</text>')
    b.append(f'<text x="555" y="244" fill="{RED}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Red 0s = Zero Divisors (2⊗3≡0, 3⊗4≡0 → 2,3,4 have NO inverse!)</text>')
    write_svg("ch02_cayley_tables.svg", svg_wrap(w, h, "\n".join(b)))


# ---------------------------------------------------------------------------
# 5. Chapter 3 Diagrams: Real Numbers, Sig Figs & Measurement Bounds
# ---------------------------------------------------------------------------
def gen_ch03_diagrams():
    # (A) Sig Fig vs Decimal Places Anatomy of 0.0040850
    w, h = 740, 215
    b = [
        f'<text x="370" y="26" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Significant Figures vs. Decimal Places Anatomy: 0.0040850 (5 s.f., 7 d.p.)</text>',
    ]
    chars = ["0", ".", "0", "0", "4", "0", "8", "5", "0"]
    xs = [95, 148, 200, 260, 330, 395, 460, 525, 590]
    for ch, x in zip(chars, xs):
        if ch == ".":
            b.append(f'<circle cx="{x}" cy="92" r="6" fill="{NAVY}"/>')
            continue
        is_lead = x < 300
        is_captive = (x == 395)
        is_trail = (x == 590)
        fill = "#F1F5F9" if is_lead else (AMBER_LIGHT if (is_captive or is_trail) else GREEN_LIGHT)
        stroke = MUTED if is_lead else (AMBER if (is_captive or is_trail) else GREEN)
        b.append(f'<rect x="{x-24}" y="64" width="48" height="48" rx="7" fill="{fill}" stroke="{stroke}" stroke-width="1.8"/>')
        b.append(f'<text x="{x}" y="96" fill="{MUTED if is_lead else NAVY}" font-family="DejaVu Sans Mono" font-size="22" font-weight="bold" text-anchor="middle">{ch}</text>')

    # Braces / labels
    b.extend([
        f'<line x1="75" y1="125" x2="282" y2="125" stroke="{RED}" stroke-width="2"/>',
        f'<text x="178" y="143" fill="{RED}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">Leading Zeros: NOT Significant</text>',
        f'<text x="178" y="158" fill="{SLATE}" font-family="DejaVu Sans" font-size="9.5" text-anchor="middle">(Only place-holders for scale)</text>',

        f'<line x1="308" y1="125" x2="615" y2="125" stroke="{GREEN}" stroke-width="2.5"/>',
        f'<text x="462" y="143" fill="{GREEN}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">ALL 5 DIGITS ARE SIGNIFICANT (1st s.f. = 4, 2nd = 0, 3rd = 8, 4th = 5, 5th = 0)</text>',
        f'<text x="462" y="159" fill="{AMBER}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Captive zero (between 4 &amp; 8) AND trailing zero after decimal ARE significant!</text>',

        f'<rect x="65" y="172" width="610" height="30" rx="6" fill="{NAVY}"/>',
        f'<text x="370" y="191" fill="#FFFFFF" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Rounded to 2 s.f. → 0.0041     |     Rounded to 3 s.f. → 0.00409     |     Rounded to 3 d.p. → 0.004</text>',
    ])
    write_svg("ch03_sig_figs_anatomy.svg", svg_wrap(w, h, "\n".join(b)))

    # (B) Measurement Error Bounds Interval on Number Line
    w, h = 740, 210
    b = [
        f'<text x="370" y="26" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Error Interval for Length L = 25.4 cm (Measured to Nearest 0.1 cm)</text>',
        f'<text x="370" y="46" fill="{SLATE}" font-family="DejaVu Sans" font-size="10.5" text-anchor="middle">Unit of accuracy = 0.1 cm   ⇒   Maximum Absolute Error = ±½(0.1) = ±0.05 cm</text>',
        # Shaded acceptance region
        f'<rect x="210" y="76" width="320" height="44" fill="{GREEN_MID}" fill-opacity="0.65"/>',
        f'<line x1="70" y1="98" x2="670" y2="98" stroke="{NAVY}" stroke-width="2.2" marker-end="url(#arrow-navy)" marker-start="url(#arrow-navy)"/>',
        # Ticks: 25.30 (110), 25.35 (210), 25.40 (370), 25.45 (530), 25.50 (630)
        f'<line x1="110" y1="88" x2="110" y2="108" stroke="{MUTED}" stroke-width="1.5"/>',
        f'<text x="110" y="126" fill="{MUTED}" font-family="DejaVu Sans Mono" font-size="10.5" text-anchor="middle">25.30</text>',

        f'<line x1="210" y1="70" x2="210" y2="126" stroke="{GREEN}" stroke-width="2.2" stroke-dasharray="4,3"/>',
        f'<circle cx="210" cy="98" r="6.5" fill="{GREEN}" stroke="#FFFFFF" stroke-width="1.5"/>',
        f'<text x="210" y="144" fill="{GREEN}" font-family="DejaVu Sans Mono" font-size="11.5" font-weight="bold" text-anchor="middle">25.35 cm</text>',
        f'<text x="210" y="159" fill="{GREEN}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Lower Bound (Included ≤)</text>',

        f'<line x1="370" y1="76" x2="370" y2="120" stroke="{NAVY}" stroke-width="2.2"/>',
        f'<circle cx="370" cy="98" r="5.5" fill="{NAVY}"/>',
        f'<text x="370" y="68" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="12" font-weight="bold" text-anchor="middle">Recorded = 25.40 cm</text>',

        f'<line x1="530" y1="70" x2="530" y2="126" stroke="{RED}" stroke-width="2.2" stroke-dasharray="4,3"/>',
        f'<circle cx="530" cy="98" r="6.5" fill="#FFFFFF" stroke="{RED}" stroke-width="2.4"/>',
        f'<text x="530" y="144" fill="{RED}" font-family="DejaVu Sans Mono" font-size="11.5" font-weight="bold" text-anchor="middle">25.45 cm</text>',
        f'<text x="530" y="159" fill="{RED}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Upper Bound (Strict &lt;)</text>',

        f'<line x1="630" y1="88" x2="630" y2="108" stroke="{MUTED}" stroke-width="1.5"/>',
        f'<text x="630" y="126" fill="{MUTED}" font-family="DejaVu Sans Mono" font-size="10.5" text-anchor="middle">25.50</text>',

        f'<rect x="145" y="172" width="450" height="27" rx="6" fill="{LIGHT_BG}" stroke="{NAVY}"/>',
        f'<text x="370" y="190" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Exact True Value Inequality:   25.35 cm ≤ L_true &lt; 25.45 cm</text>',
    ]
    write_svg("ch03_error_bounds.svg", svg_wrap(w, h, "\n".join(b)))


# ---------------------------------------------------------------------------
# 6. Chapter 4 Diagrams: Proportion Curves & Distance-Time Graph
# ---------------------------------------------------------------------------
def gen_ch04_diagrams():
    fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(11.0, 3.4))
    fig.patch.set_facecolor("white")

    # Direct proportion
    x = np.linspace(0, 6, 100)
    ax1.plot(x, 2.5 * x, color=GREEN, linewidth=2.5, label="y = 2.5x")
    ax1.scatter([2, 4], [5, 10], color=NAVY, zorder=5, s=35)
    ax1.set_title("Direct Proportion (y = kx)", fontsize=10, fontweight="bold", color=NAVY)
    ax1.set_xlabel("Quantity x")
    ax1.set_ylabel("Quantity y")
    ax1.annotate("Passes through\norigin (0,0)", xy=(0, 0), xytext=(1.5, 11.5),
                 arrowprops=dict(arrowstyle="->", color=GREEN, lw=1.3), fontsize=8.5, fontweight="bold", color=GREEN)
    ax1.grid(True, linestyle="--", alpha=0.4)
    ax1.spines["top"].set_visible(False)
    ax1.spines["right"].set_visible(False)

    # Inverse proportion
    x2 = np.linspace(0.6, 6, 120)
    ax2.plot(x2, 12.0 / x2, color=RED, linewidth=2.5)
    ax2.scatter([2, 3, 4], [6, 4, 3], color=NAVY, zorder=5, s=35)
    ax2.set_title("Inverse Proportion (xy = k)", fontsize=10, fontweight="bold", color=NAVY)
    ax2.set_xlabel("Speed v (workers)")
    ax2.set_ylabel("Time t (days)")
    ax2.text(2.3, 14, "Product xy = 12\nis constant!", fontsize=8.8, fontweight="bold", color=RED,
             bbox=dict(boxstyle="round,pad=0.3", facecolor=RED_LIGHT, edgecolor=RED))
    ax2.grid(True, linestyle="--", alpha=0.4)
    ax2.spines["top"].set_visible(False)
    ax2.spines["right"].set_visible(False)

    # Distance-Time Multi-Stage Journey
    t_pts = [0, 2, 3, 5]
    d_pts = [0, 120, 120, 200]
    ax3.plot(t_pts, d_pts, color=BLUE, linewidth=2.6, marker="o", markersize=6, markerfacecolor=NAVY)
    ax3.fill_between([2, 3], [0, 0], [120, 120], color=AMBER_LIGHT, alpha=0.45)
    ax3.text(0.55, 72, "60 km/h", fontsize=8.5, fontweight="bold", color=BLUE, rotation=42)
    ax3.text(2.5, 95, "Rest\n(v=0)", fontsize=8.5, fontweight="bold", color=AMBER, ha="center")
    ax3.text(3.7, 170, "40 km/h", fontsize=8.5, fontweight="bold", color=BLUE, rotation=28)
    ax3.set_title("Multi-Stage Journey (Avg = 200/5 = 40)", fontsize=9.8, fontweight="bold", color=NAVY)
    ax3.set_xlabel("Time (hours)")
    ax3.set_ylabel("Distance (km)")
    ax3.set_ylim(0, 225)
    ax3.grid(True, linestyle="--", alpha=0.4)
    ax3.spines["top"].set_visible(False)
    ax3.spines["right"].set_visible(False)

    plt.tight_layout(pad=1.2)
    fig.savefig(OUT / "ch04_proportions_and_rates.svg", format="svg")
    plt.close(fig)

    # Ratio Linking & Cistern Schematic SVG
    w, h = 740, 205
    b = [
        f'<text x="370" y="25" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Combined Work &amp; Cistern Net-Rate Model:  1/T_net = 1/T_A + 1/T_B − 1/T_drain</text>',
        # Inlet A
        f'<rect x="55" y="58" width="145" height="36" rx="6" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="1.8"/>',
        f'<text x="127" y="80" fill="{GREEN}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Tap A: +1/a per hr</text>',
        f'<line x1="200" y1="76" x2="278" y2="96" stroke="{GREEN}" stroke-width="2.8" marker-end="url(#arrow-green)"/>',
        # Inlet B
        f'<rect x="55" y="114" width="145" height="36" rx="6" fill="{BLUE_LIGHT}" stroke="{BLUE}" stroke-width="1.8"/>',
        f'<text x="127" y="136" fill="{BLUE}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Tap B: +1/b per hr</text>',
        f'<line x1="200" y1="132" x2="278" y2="118" stroke="{BLUE}" stroke-width="2.8" marker-end="url(#arrow-blue)"/>',
        # Tank
        f'<rect x="285" y="55" width="170" height="125" rx="8" fill="#E0F2FE" stroke="{NAVY}" stroke-width="2.4"/>',
        f'<rect x="287" y="102" width="166" height="76" rx="5" fill="#38BDF8" fill-opacity="0.45"/>',
        f'<text x="370" y="90" fill="{NAVY}" font-family="DejaVu Sans" font-size="12" font-weight="bold" text-anchor="middle">TANK CAPACITY = 1</text>',
        f'<text x="370" y="138" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Net Fraction / hr:</text>',
        f'<text x="370" y="158" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="11.5" font-weight="bold" text-anchor="middle">R = 1/a + 1/b − 1/c</text>',
        # Drain C
        f'<line x1="455" y1="154" x2="532" y2="154" stroke="{RED}" stroke-width="2.8" marker-end="url(#arrow-red)"/>',
        f'<rect x="538" y="134" width="155" height="40" rx="6" fill="{RED_LIGHT}" stroke="{RED}" stroke-width="1.8"/>',
        f'<text x="615" y="158" fill="{RED}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Leak C: −1/c per hr</text>',
        # Summary box top right
        f'<rect x="490" y="55" width="215" height="60" rx="6" fill="{AMBER_LIGHT}" stroke="{AMBER}" stroke-width="1.4"/>',
        f'<text x="597" y="76" fill="{NAVY}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">2-Tap Shortcut (No Leak):</text>',
        f'<text x="597" y="98" fill="{AMBER}" font-family="DejaVu Sans Mono" font-size="12" font-weight="bold" text-anchor="middle">T = (a × b) / (a + b)</text>',
    ]
    write_svg("ch04_cistern_rates.svg", svg_wrap(w, h, "\n".join(b)))


# ---------------------------------------------------------------------------
# 7. Chapter 5 Diagrams: Commercial & Financial Arithmetic
# ---------------------------------------------------------------------------
def gen_ch05_diagrams():
    # (A) Price Markup -> Discount -> Selling Price -> VAT Waterfall
    w, h = 740, 215
    b = [
        f'<text x="370" y="26" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Commercial Pricing Chain: Cost Price → Marked Price → Selling Price → VAT Invoice</text>',
        # Boxes
        f'<rect x="26" y="72" width="138" height="68" rx="8" fill="#F1F5F9" stroke="{NAVY}" stroke-width="1.8"/>',
        f'<text x="95" y="98" fill="{NAVY}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">Cost Price (CP)</text>',
        f'<text x="95" y="116" fill="{SLATE}" font-family="DejaVu Sans" font-size="10" text-anchor="middle">Base for Profit %</text>',
        f'<text x="95" y="131" fill="{GREEN}" font-family="DejaVu Sans Mono" font-size="10.5" font-weight="bold" text-anchor="middle">e.g. ₦40,000</text>',

        f'<line x1="164" y1="106" x2="210" y2="106" stroke="{GREEN}" stroke-width="2.2" marker-end="url(#arrow-green)"/>',
        f'<text x="187" y="96" fill="{GREEN}" font-family="DejaVu Sans" font-size="9.5" font-weight="bold" text-anchor="middle">+50%</text>',

        f'<rect x="214" y="72" width="144" height="68" rx="8" fill="{AMBER_LIGHT}" stroke="{AMBER}" stroke-width="1.8"/>',
        f'<text x="286" y="98" fill="{NAVY}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">Marked Price (MP)</text>',
        f'<text x="286" y="116" fill="{SLATE}" font-family="DejaVu Sans" font-size="10" text-anchor="middle">Base for Discount %</text>',
        f'<text x="286" y="131" fill="{AMBER}" font-family="DejaVu Sans Mono" font-size="10.5" font-weight="bold" text-anchor="middle">₦60,000</text>',

        f'<line x1="358" y1="106" x2="404" y2="106" stroke="{RED}" stroke-width="2.2" marker-end="url(#arrow-red)"/>',
        f'<text x="381" y="96" fill="{RED}" font-family="DejaVu Sans" font-size="9.5" font-weight="bold" text-anchor="middle">−10% disc</text>',

        f'<rect x="408" y="72" width="144" height="68" rx="8" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="1.8"/>',
        f'<text x="480" y="98" fill="{NAVY}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">Selling Price (SP)</text>',
        f'<text x="480" y="116" fill="{SLATE}" font-family="DejaVu Sans" font-size="10" text-anchor="middle">Net Revenue to Seller</text>',
        f'<text x="480" y="131" fill="{GREEN}" font-family="DejaVu Sans Mono" font-size="10.5" font-weight="bold" text-anchor="middle">₦54,000 (+35% gain)</text>',

        f'<line x1="552" y1="106" x2="594" y2="106" stroke="{BLUE}" stroke-width="2.2" marker-end="url(#arrow-blue)"/>',
        f'<text x="573" y="96" fill="{BLUE}" font-family="DejaVu Sans" font-size="9.5" font-weight="bold" text-anchor="middle">+7.5% VAT</text>',

        f'<rect x="598" y="72" width="120" height="68" rx="8" fill="{BLUE_LIGHT}" stroke="{BLUE}" stroke-width="1.8"/>',
        f'<text x="658" y="98" fill="{NAVY}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">Buyer Pays</text>',
        f'<text x="658" y="116" fill="{SLATE}" font-family="DejaVu Sans" font-size="10" text-anchor="middle">SP × 1.075</text>',
        f'<text x="658" y="131" fill="{BLUE}" font-family="DejaVu Sans Mono" font-size="10.5" font-weight="bold" text-anchor="middle">₦58,050</text>',

        # Bottom Golden Rule
        f'<rect x="40" y="158" width="660" height="40" rx="7" fill="{NAVY}"/>',
        f'<text x="370" y="176" fill="#FCD34D" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">TWO GOLDEN RULES JAMB TESTS EVERY YEAR:</text>',
        f'<text x="370" y="192" fill="#FFFFFF" font-family="DejaVu Sans" font-size="10.2" text-anchor="middle">1) Profit/Loss % is ALWAYS on Cost Price (CP).   2) Share Dividend % is ALWAYS on Nominal (Par) Value, NEVER Market Price!</text>',
    ]
    write_svg("ch05_pricing_chain.svg", svg_wrap(w, h, "\n".join(b)))

    # (B) Simple vs Compound Interest Plot
    fig, ax = plt.subplots(figsize=(8.6, 3.3))
    fig.patch.set_facecolor("white")
    yrs = np.arange(0, 9)
    P, r = 100, 0.20
    si = P * (1 + r * yrs)
    ci = P * ((1 + r) ** yrs)
    ax.plot(yrs, si, marker="s", linewidth=2.4, color=BLUE, label="Simple Interest: A = P(1 + rt/100) — Linear Growth")
    ax.plot(yrs, ci, marker="o", linewidth=2.6, color=GREEN, label="Compound Interest: A = P(1 + r/100)ⁿ — Exponential Growth")
    ax.fill_between(yrs, si, ci, color=GREEN_MID, alpha=0.35, label="Compounding Bonus (Interest-on-Interest)")
    ax.set_title("₦100,000 Invested at 20% per Annum: Simple vs. Compound Amount", fontsize=10.5, fontweight="bold", color=NAVY)
    ax.set_xlabel("Time n (Years)")
    ax.set_ylabel("Total Amount (₦ Thousands)")
    ax.legend(loc="upper left", fontsize=8.8)
    ax.grid(True, linestyle="--", alpha=0.45)
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)
    plt.tight_layout()
    fig.savefig(OUT / "ch05_interest_growth.svg", format="svg")
    plt.close(fig)


# ---------------------------------------------------------------------------
# 8. Chapter 6 & Chapter 7 Diagrams: Indices & Logarithms
# ---------------------------------------------------------------------------
def gen_ch06_ch07_diagrams():
    # Ch 6: Exponential Growth vs Decay & Standard Form
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10.2, 3.5))
    fig.patch.set_facecolor("white")
    x = np.linspace(-2.6, 2.6, 200)
    ax1.plot(x, 2**x, color=GREEN, linewidth=2.5, label="y = 2ˣ (a > 1: Growth)")
    ax1.plot(x, (0.5)**x, color=RED, linewidth=2.5, linestyle="--", label="y = (½)ˣ = 2⁻ˣ (0 < a < 1: Decay)")
    ax1.scatter([0], [1], color=NAVY, s=55, zorder=5)
    ax1.annotate("Universal Anchor (0, 1)\nbecause a⁰ = 1", xy=(0, 1), xytext=(0.45, 2.6),
                 arrowprops=dict(arrowstyle="->", color=NAVY, lw=1.3), fontsize=8.5, fontweight="bold", color=NAVY)
    ax1.axhline(0, color=NAVY, linewidth=1.0)
    ax1.axvline(0, color=NAVY, linewidth=1.0)
    ax1.set_ylim(-0.4, 6.5)
    ax1.set_title("Exponential Curves (Note: aˣ > 0 Always!)", fontsize=10, fontweight="bold", color=NAVY)
    ax1.legend(fontsize=8.3, loc="upper center")
    ax1.grid(True, linestyle="--", alpha=0.4)
    ax1.spines["top"].set_visible(False)
    ax1.spines["right"].set_visible(False)

    # Ch 7: Mirror Symmetry of y = 2^x and y = log_2(x)
    x_exp = np.linspace(-2.2, 2.6, 200)
    x_log = np.linspace(0.18, 6.2, 200)
    diag = np.linspace(-2.2, 6.2, 100)
    ax2.plot(x_exp, 2**x_exp, color=GREEN, linewidth=2.4, label="y = 2ˣ")
    ax2.plot(x_log, np.log2(x_log), color=BLUE, linewidth=2.4, label="y = log₂ x")
    ax2.plot(diag, diag, color=MUTED, linestyle=":", linewidth=1.5, label="Mirror Line y = x")
    ax2.scatter([0, 1], [1, 0], color=NAVY, s=45, zorder=5)
    ax2.text(1.25, -0.55, "(1, 0): log_b 1 = 0", fontsize=8.5, fontweight="bold", color=BLUE)
    ax2.axhline(0, color=NAVY, linewidth=0.9)
    ax2.axvline(0, color=RED, linewidth=1.3, linestyle="--")
    ax2.text(0.15, -2.1, "Domain x > 0\n(log of ≤0 undefined!)", fontsize=8.2, fontweight="bold", color=RED)
    ax2.set_xlim(-2.4, 6.2)
    ax2.set_ylim(-2.5, 6.2)
    ax2.set_title("Inverse Duality: Exponential vs. Logarithm", fontsize=10, fontweight="bold", color=NAVY)
    ax2.legend(fontsize=8.2, loc="upper left")
    ax2.grid(True, linestyle="--", alpha=0.4)
    ax2.spines["top"].set_visible(False)
    ax2.spines["right"].set_visible(False)

    plt.tight_layout(pad=1.2)
    fig.savefig(OUT / "ch06_ch07_exp_log_curves.svg", format="svg")
    plt.close(fig)

    # Ch 7 Dedicated: Index-Log Bridge & Change-of-Base Master Diagram
    w, h = 740, 210
    b = [
        f'<text x="370" y="26" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Index–Logarithm Duality &amp; Change-of-Base Master Identities</text>',
        # Left card
        f'<rect x="28" y="46" width="330" height="146" rx="9" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="1.8"/>',
        f'<text x="193" y="68" fill="{GREEN}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">THE FUNDAMENTAL EQUIVALENCE</text>',
        f'<text x="193" y="104" fill="{NAVY}" font-family="DejaVu Sans" font-size="19" font-weight="bold" text-anchor="middle">bˣ = N   ⟺   log_b(N) = x</text>',
        f'<text x="193" y="132" fill="{SLATE}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">Restrictions:  b &gt; 0,  b ≠ 1,  and  N &gt; 0</text>',
        f'<rect x="48" y="146" width="290" height="32" rx="5" fill="#FFFFFF" stroke="{GREEN}"/>',
        f'<text x="193" y="166" fill="{NAVY}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">"Base stays Base; the Logarithm IS the Power!"</text>',

        # Right card: 4 Change-of-base weapons
        f'<rect x="382" y="46" width="330" height="146" rx="9" fill="{BLUE_LIGHT}" fill-opacity="0.5" stroke="{BLUE}" stroke-width="1.8"/>',
        f'<text x="547" y="68" fill="{BLUE}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">4 HIGH-SPEED CHANGE-OF-BASE WEAPONS</text>',
        f'<text x="402" y="95" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold">1. New Base c:    log_a(b) = log_c(b) / log_c(a)</text>',
        f'<text x="402" y="119" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold">2. Reciprocal:    log_a(b) = 1 / log_b(a)</text>',
        f'<text x="402" y="143" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold">3. Chain Rule:    log_a(b) × log_b(c) = log_a(c)</text>',
        f'<text x="402" y="169" fill="{RED}" font-family="DejaVu Sans" font-size="11" font-weight="bold">4. Power Base:   log_(aᵏ)(bᵐ) = (m / k) log_a(b)</text>',
    ]
    write_svg("ch07_log_bridge.svg", svg_wrap(w, h, "\n".join(b)))


# ---------------------------------------------------------------------------
# 9. Chapter 8 Diagrams: Surds & Special Right Triangles
# ---------------------------------------------------------------------------
def gen_ch08_diagrams():
    w, h = 740, 245
    b = [
        f'<text x="370" y="26" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Geometric Construction of Exact Surds &amp; Special UTME Triangles</text>',
    ]
    # Panel 1: Spiral of Theodorus (sqrt 2, sqrt 3, sqrt 4, sqrt 5)
    b.append(f'<rect x="24" y="42" width="250" height="186" rx="8" fill="{LIGHT_BG}" stroke="{BORDER}"/>')
    b.append(f'<text x="149" y="61" fill="{GREEN}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Spiral of Theodorus (Unit Legs)</text>')
    ox, oy, sc = 135, 165, 44
    px, py = ox + sc, oy
    labels = ["√2", "√3", "√4=2", "√5", "√6"]
    for idx, lbl in enumerate(labels):
        dx, dy = px - ox, py - oy
        L = math.hypot(dx, dy)
        ux, uy = dx / L, dy / L
        nx, ny = px + uy * sc, py - ux * sc
        b.append(f'<polygon points="{ox},{oy} {px:.1f},{py:.1f} {nx:.1f},{ny:.1f}" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="1.6"/>')
        mx, my = (ox + nx) / 2, (oy + ny) / 2
        b.append(f'<text x="{nx + (nx-ox)*0.16:.1f}" y="{ny + (ny-oy)*0.16:.1f}" fill="{NAVY}" font-family="DejaVu Sans" font-size="9.5" font-weight="bold" text-anchor="middle">{lbl}</text>')
        px, py = nx, ny
    b.append(f'<text x="149" y="216" fill="{SLATE}" font-family="DejaVu Sans" font-size="9.5" text-anchor="middle">(√n)² + 1² = (√(n+1))²</text>')

    # Panel 2: Isosceles 45-45-90 Triangle
    b.append(f'<rect x="290" y="42" width="205" height="186" rx="8" fill="{AMBER_LIGHT}" fill-opacity="0.35" stroke="{AMBER}"/>')
    b.append(f'<text x="392" y="61" fill="{AMBER}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">45°–45°–90° Triangle</text>')
    b.append(f'<polygon points="330,185 450,185 330,75" fill="#FFFFFF" stroke="{NAVY}" stroke-width="2.2"/>')
    b.append(f'<rect x="330" y="171" width="14" height="14" fill="none" stroke="{NAVY}" stroke-width="1.4"/>')
    b.append(f'<text x="390" y="203" fill="{NAVY}" font-family="DejaVu Sans" font-size="12" font-weight="bold" text-anchor="middle">1</text>')
    b.append(f'<text x="315" y="135" fill="{NAVY}" font-family="DejaVu Sans" font-size="12" font-weight="bold" text-anchor="middle">1</text>')
    b.append(f'<text x="405" y="122" fill="{RED}" font-family="DejaVu Sans" font-size="13" font-weight="bold" text-anchor="middle">√2</text>')
    b.append(f'<text x="424" y="180" fill="{AMBER}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold">45°</text>')
    b.append(f'<text x="336" y="102" fill="{AMBER}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold">45°</text>')
    b.append(f'<text x="392" y="220" fill="{NAVY}" font-family="DejaVu Sans" font-size="9.8" font-weight="bold" text-anchor="middle">sin 45° = cos 45° = √2 / 2</text>')

    # Panel 3: 30-60-90 Triangle
    b.append(f'<rect x="511" y="42" width="205" height="186" rx="8" fill="{BLUE_LIGHT}" fill-opacity="0.35" stroke="{BLUE}"/>')
    b.append(f'<text x="613" y="61" fill="{BLUE}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">30°–60°–90° Triangle</text>')
    b.append(f'<polygon points="555,185 645,185 555,72" fill="#FFFFFF" stroke="{NAVY}" stroke-width="2.2"/>')
    b.append(f'<rect x="555" y="171" width="14" height="14" fill="none" stroke="{NAVY}" stroke-width="1.4"/>')
    b.append(f'<text x="600" y="203" fill="{NAVY}" font-family="DejaVu Sans" font-size="12" font-weight="bold" text-anchor="middle">1</text>')
    b.append(f'<text x="537" y="135" fill="{GREEN}" font-family="DejaVu Sans" font-size="12.5" font-weight="bold" text-anchor="middle">√3</text>')
    b.append(f'<text x="615" y="122" fill="{NAVY}" font-family="DejaVu Sans" font-size="12.5" font-weight="bold" text-anchor="middle">2</text>')
    b.append(f'<text x="616" y="180" fill="{BLUE}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold">60°</text>')
    b.append(f'<text x="560" y="102" fill="{BLUE}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold">30°</text>')
    b.append(f'<text x="613" y="220" fill="{NAVY}" font-family="DejaVu Sans" font-size="9.8" font-weight="bold" text-anchor="middle">sin 60° = √3/2, tan 30° = √3/3</text>')

    write_svg("ch08_surd_triangles.svg", svg_wrap(w, h, "\n".join(b)))


# ---------------------------------------------------------------------------
# 10. Chapter 9 Diagrams: Rich 2-Set & 3-Set Shaded Venn Galleries!
# ---------------------------------------------------------------------------
def gen_ch09_venn_diagrams():
    # (A) 6-Panel 2-Set Shaded Venn Gallery (using crisp pixel-exact masks via matplotlib or SVG clipPaths!)
    # SVG clipPaths & masks give razor-sharp infinite-resolution Venn shadings!
    w, h = 740, 340
    panels_2 = [
        ("1. Union: A ∪ B", "union"),
        ("2. Intersection: A ∩ B", "inter"),
        ("3. Only A: A ∩ B' (A \\ B)", "onlyA"),
        ("4. Only B: A' ∩ B (B \\ A)", "onlyB"),
        ("5. Neither: (A ∪ B)' = A' ∩ B'", "neither"),
        ("6. Symmetric Diff: A △ B", "symdiff"),
    ]
    defs = []
    body = [f'<text x="370" y="25" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Two-Set Venn Diagram Shading Atlas (High-Frequency JAMB Operations)</text>']
    pw, ph = 224, 134
    for idx, (title, mode) in enumerate(panels_2):
        col_i, row_i = idx % 3, idx // 3
        ox = 20 + col_i * 238
        oy = 40 + row_i * 146
        cAx, cAy, r = ox + 86, oy + 76, 38
        cBx, cBy = ox + 138, oy + 76
        defs.append(f'<clipPath id="clipA{idx}"><circle cx="{cAx}" cy="{cAy}" r="{r}"/></clipPath>')
        defs.append(f'<clipPath id="clipB{idx}"><circle cx="{cBx}" cy="{cBy}" r="{r}"/></clipPath>')
        defs.append(f'<mask id="notB{idx}"><rect x="{ox}" y="{oy}" width="{pw}" height="{ph}" fill="white"/><circle cx="{cBx}" cy="{cBy}" r="{r}" fill="black"/></mask>')
        defs.append(f'<mask id="notA{idx}"><rect x="{ox}" y="{oy}" width="{pw}" height="{ph}" fill="white"/><circle cx="{cAx}" cy="{cAy}" r="{r}" fill="black"/></mask>')
        defs.append(f'<mask id="notAB{idx}"><rect x="{ox}" y="{oy}" width="{pw}" height="{ph}" fill="white"/><circle cx="{cAx}" cy="{cAy}" r="{r}" fill="black"/><circle cx="{cBx}" cy="{cBy}" r="{r}" fill="black"/></mask>')

        # Universal box
        body.append(f'<rect x="{ox}" y="{oy+22}" width="{pw}" height="{ph-24}" rx="6" fill="#FFFFFF" stroke="{NAVY}" stroke-width="1.5"/>')
        body.append(f'<text x="{ox+pw/2}" y="{oy+15}" fill="{NAVY}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">{title}</text>')

        shade = "#34D399"
        if mode == "union":
            body.append(f'<circle cx="{cAx}" cy="{cAy}" r="{r}" fill="{shade}" fill-opacity="0.65"/>')
            body.append(f'<circle cx="{cBx}" cy="{cBy}" r="{r}" fill="{shade}" fill-opacity="0.65"/>')
        elif mode == "inter":
            body.append(f'<circle cx="{cBx}" cy="{cBy}" r="{r}" fill="{shade}" fill-opacity="0.75" clip-path="url(#clipA{idx})"/>')
        elif mode == "onlyA":
            body.append(f'<circle cx="{cAx}" cy="{cAy}" r="{r}" fill="{shade}" fill-opacity="0.75" mask="url(#notB{idx})"/>')
        elif mode == "onlyB":
            body.append(f'<circle cx="{cBx}" cy="{cBy}" r="{r}" fill="{shade}" fill-opacity="0.75" mask="url(#notA{idx})"/>')
        elif mode == "neither":
            body.append(f'<rect x="{ox+1}" y="{oy+23}" width="{pw-2}" height="{ph-26}" rx="5" fill="{shade}" fill-opacity="0.55" mask="url(#notAB{idx})"/>')
        elif mode == "symdiff":
            body.append(f'<circle cx="{cAx}" cy="{cAy}" r="{r}" fill="{shade}" fill-opacity="0.75" mask="url(#notB{idx})"/>')
            body.append(f'<circle cx="{cBx}" cy="{cBy}" r="{r}" fill="{shade}" fill-opacity="0.75" mask="url(#notA{idx})"/>')

        # Outlines & labels
        body.append(f'<circle cx="{cAx}" cy="{cAy}" r="{r}" fill="none" stroke="{NAVY}" stroke-width="1.7"/>')
        body.append(f'<circle cx="{cBx}" cy="{cBy}" r="{r}" fill="none" stroke="{NAVY}" stroke-width="1.7"/>')
        body.append(f'<text x="{ox+12}" y="{oy+38}" fill="{SLATE}" font-family="DejaVu Sans" font-size="10" font-weight="bold">ℰ</text>')
        body.append(f'<text x="{cAx-22}" y="{cAy-28}" fill="{NAVY}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold">A</text>')
        body.append(f'<text x="{cBx+14}" y="{cBy-28}" fill="{NAVY}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold">B</text>')

    svg2 = f'''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {w} {h}" width="{w}" height="{h}">
      <defs>{"".join(defs)}</defs>
      <rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="#FFFFFF" stroke="{BORDER}" stroke-width="1.2"/>
      {"".join(body)}
    </svg>'''
    write_svg("ch09_two_set_atlas.svg", svg2)

    # (B) Master 3-Set 8-Region Anatomy + Populated Survey Side-by-Side
    w, h = 740, 290
    b = [
        f'<text x="370" y="25" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Three-Set Venn Diagram: The 8 Disjoint Regions &amp; Inside-Out Filling Method</text>',
        # Left box: 8 algebraic regions
        f'<rect x="20" y="42" width="342" height="232" rx="8" fill="{LIGHT_BG}" stroke="{NAVY}" stroke-width="1.5"/>',
        f'<text x="191" y="61" fill="{GREEN}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Algebraic Disjoint Region Map</text>',
        f'<text x="34" y="62" fill="{NAVY}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold">ℰ</text>',
    ]
    # Left circles
    Ax, Ay, Bx, By, Cx, Cy, R = 152, 134, 230, 134, 191, 198, 62
    b.extend([
        f'<circle cx="{Ax}" cy="{Ay}" r="{R}" fill="{GREEN_LIGHT}" fill-opacity="0.55" stroke="{GREEN}" stroke-width="2"/>',
        f'<circle cx="{Bx}" cy="{By}" r="{R}" fill="{BLUE_LIGHT}" fill-opacity="0.50" stroke="{BLUE}" stroke-width="2"/>',
        f'<circle cx="{Cx}" cy="{Cy}" r="{R}" fill="{AMBER_LIGHT}" fill-opacity="0.50" stroke="{AMBER}" stroke-width="2"/>',
        f'<text x="{Ax-45}" y="{Ay-44}" fill="{GREEN}" font-family="DejaVu Sans" font-size="12" font-weight="bold">A</text>',
        f'<text x="{Bx+36}" y="{By-44}" fill="{BLUE}" font-family="DejaVu Sans" font-size="12" font-weight="bold">B</text>',
        f'<text x="{Cx+56}" y="{Cy+46}" fill="{AMBER}" font-family="DejaVu Sans" font-size="12" font-weight="bold">C</text>',
        # 8 region labels
        f'<text x="{Ax-26}" y="{Ay-6}" fill="{NAVY}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Only A</text>',
        f'<text x="{Bx+26}" y="{By-6}" fill="{NAVY}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Only B</text>',
        f'<text x="{Cx}" y="{Cy+34}" fill="{NAVY}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Only C</text>',
        f'<text x="191" y="114" fill="{NAVY}" font-family="DejaVu Sans" font-size="9.2" font-weight="bold" text-anchor="middle">A∩B∩C\'</text>',
        f'<text x="150" y="176" fill="{NAVY}" font-family="DejaVu Sans" font-size="9.2" font-weight="bold" text-anchor="middle">A∩C∩B\'</text>',
        f'<text x="232" y="176" fill="{NAVY}" font-family="DejaVu Sans" font-size="9.2" font-weight="bold" text-anchor="middle">B∩C∩A\'</text>',
        f'<circle cx="191" cy="153" r="19" fill="{RED_LIGHT}" stroke="{RED}" stroke-width="1.4"/>',
        f'<text x="191" y="157" fill="{RED}" font-family="DejaVu Sans" font-size="9.5" font-weight="bold" text-anchor="middle">A∩B∩C</text>',
        f'<text x="64" y="258" fill="{SLATE}" font-family="DejaVu Sans" font-size="10" font-weight="bold">Neither: (A∪B∪C)\'</text>',
    ])

    # Right box: Inside-out numerical example (100 UTME students: M=52, P=48, C=44, M∩P=20, M∩C=18, P∩C=16, All 3 = 10)
    # Regions: center=10; M&P only=10, M&C only=8, P&C only=6; Only M = 52-(10+10+8)=24; Only P = 48-(10+10+6)=22; Only C = 44-(10+8+6)=20; Union = 24+22+20+10+8+6+10 = 100? Wait: let's make Neither = 5 so Total = 105 or let's pick M=50, P=45, C=40, MP=18, MC=15, PC=14, All=10 -> Only M=50-33=17, Only P=45-32=13, Only C=40-29=11, pairs=8,5,4, center=10 -> Union = 17+13+11+8+5+4+10 = 68, Total=80 -> Neither=12!
    b.extend([
        f'<rect x="378" y="42" width="342" height="232" rx="8" fill="#FFFFFF" stroke="{NAVY}" stroke-width="1.5"/>',
        f'<text x="549" y="61" fill="{BLUE}" font-family="DejaVu Sans" font-size="10.8" font-weight="bold" text-anchor="middle">Inside-Out Worked Survey (ℰ = 80 Students)</text>',
        f'<text x="390" y="62" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold">n(ℰ)=80</text>',
    ])
    Ax2, Bx2, Cx2 = 510, 588, 549
    b.extend([
        f'<circle cx="{Ax2}" cy="{Ay}" r="{R}" fill="{GREEN_LIGHT}" fill-opacity="0.45" stroke="{GREEN}" stroke-width="2"/>',
        f'<circle cx="{Bx2}" cy="{By}" r="{R}" fill="{BLUE_LIGHT}" fill-opacity="0.45" stroke="{BLUE}" stroke-width="2"/>',
        f'<circle cx="{Cx2}" cy="{Cy}" r="{R}" fill="{AMBER_LIGHT}" fill-opacity="0.45" stroke="{AMBER}" stroke-width="2"/>',
        f'<text x="{Ax2-46}" y="{Ay-46}" fill="{GREEN}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold">M (50)</text>',
        f'<text x="{Bx2+24}" y="{By-46}" fill="{BLUE}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold">P (45)</text>',
        f'<text x="{Cx2+48}" y="{Cy+48}" fill="{AMBER}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold">C (40)</text>',
        # Center = 10 (Step 1)
        f'<circle cx="549" cy="153" r="16" fill="{RED}" />',
        f'<text x="549" y="158" fill="#FFFFFF" font-family="DejaVu Sans" font-size="12" font-weight="bold" text-anchor="middle">10</text>',
        # Pairs (Step 2)
        f'<text x="549" y="114" fill="{NAVY}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">8</text>',
        f'<text x="510" y="176" fill="{NAVY}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">5</text>',
        f'<text x="588" y="176" fill="{NAVY}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">4</text>',
        # Singles (Step 3)
        f'<text x="{Ax2-26}" y="{Ay-4}" fill="{GREEN}" font-family="DejaVu Sans" font-size="12.5" font-weight="bold" text-anchor="middle">17</text>',
        f'<text x="{Bx2+26}" y="{By-4}" fill="{BLUE}" font-family="DejaVu Sans" font-size="12.5" font-weight="bold" text-anchor="middle">13</text>',
        f'<text x="{Cx2}" y="{Cy+34}" fill="{AMBER}" font-family="DejaVu Sans" font-size="12.5" font-weight="bold" text-anchor="middle">11</text>',
        # Neither (Step 4)
        f'<rect x="388" y="238" width="118" height="26" rx="5" fill="#F1F5F9" stroke="{SLATE}"/>',
        f'<text x="447" y="255" fill="{NAVY}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">Neither = 12</text>',
    ])
    write_svg("ch09_three_set_anatomy.svg", svg_wrap(w, h, "\n".join(b)))

    # (C) 6-Panel 3-Set Classic JAMB Shading Recognition Atlas!
    fig, axes = plt.subplots(2, 3, figsize=(10.6, 5.8))
    fig.patch.set_facecolor("white")
    yy, xx = np.mgrid[-1.7:1.85:350j, -2.1:2.1:420j]
    inP = (xx + 0.52)**2 + (yy - 0.32)**2 <= 0.92**2
    inQ = (xx - 0.52)**2 + (yy - 0.32)**2 <= 0.92**2
    inR = (xx)**2 + (yy + 0.50)**2 <= 0.92**2

    cases = [
        ("1. P ∩ (Q ∪ R) = (P∩Q) ∪ (P∩R)\n[JAMB 2014 Q43 Classic!]", inP & (inQ | inR)),
        ("2. (P ∪ Q) ∩ R'\n[In P or Q, but NOT in R]", (inP | inQ) & (~inR)),
        ("3. P ∩ Q' ∩ R'\n[Strictly Only P]", inP & (~inQ) & (~inR)),
        ("4. Exactly Two Sets\n[(P∩Q∩R') ∪ (P∩R∩Q') ∪ (Q∩R∩P')]",
         (inP & inQ & ~inR) | (inP & inR & ~inQ) | (inQ & inR & ~inP)),
        ("5. At Least Two Sets\n[(P∩Q) ∪ (P∩R) ∪ (Q∩R)]", (inP & inQ) | (inP & inR) | (inQ & inR)),
        ("6. (P ∩ Q) ∩ R\n[All Three: P ∩ Q ∩ R]", inP & inQ & inR),
    ]
    for ax, (title, mask) in zip(axes.flat, cases):
        img = np.ones((*mask.shape, 3))
        # Shade green
        img[mask] = [0.20, 0.82, 0.58]
        ax.imshow(img, extent=[-2.1, 2.1, -1.85, 1.7], origin="lower", aspect="equal")
        for cx_c, cy_c, lbl, lx, ly in [
            (-0.52, 0.32, "P", -1.48, 1.12),
            (0.52, 0.32, "Q", 1.35, 1.12),
            (0.0, -0.50, "R", 0.95, -1.35),
        ]:
            circ = mpatches.Circle((cx_c, cy_c), 0.92, fill=False, edgecolor=NAVY, linewidth=1.7)
            ax.add_patch(circ)
            ax.text(lx, ly, lbl, fontsize=10.5, fontweight="bold", color=NAVY)
        ax.text(-1.95, 1.38, "ℰ", fontsize=10, fontweight="bold", color=SLATE)
        ax.set_title(title, fontsize=9.0, fontweight="bold", color=NAVY, pad=5)
        ax.set_xticks([])
        ax.set_yticks([])
        for sp in ax.spines.values():
            sp.set_edgecolor(NAVY)
            sp.set_linewidth(1.3)

    plt.suptitle("Three-Set JAMB Shading Recognition Gallery (Memorize These Patterns!)",
                 fontsize=12, fontweight="bold", color=GREEN, y=0.99)
    plt.tight_layout(rect=[0, 0, 1, 0.95])
    fig.savefig(OUT / "ch09_three_set_shadings.svg", format="svg")
    plt.close(fig)


def gen_extra_chapter_diagrams():
    # Ch 1: Binary & Base-5 Carry / Borrow Mechanics
    w, h = 740, 210
    b = [
        f'<text x="370" y="25" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Column Carry &amp; Borrow Mechanics in Non-Decimal Bases</text>',
        # Left: Addition in Base 5 (342_5 + 234_5 = 1131_5)
        f'<rect x="24" y="42" width="335" height="152" rx="8" fill="{GREEN_LIGHT}" fill-opacity="0.45" stroke="{GREEN}" stroke-width="1.5"/>',
        f'<text x="191" y="62" fill="{GREEN}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">Addition in Base 5:  342₅ + 234₅</text>',
        f'<text x="165" y="84" fill="{RED}" font-family="DejaVu Sans Mono" font-size="11" font-weight="bold">Carry:  1   1   1</text>',
        f'<text x="195" y="106" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="15" font-weight="bold">    3   4   2₅</text>',
        f'<text x="195" y="128" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="15" font-weight="bold">+   2   3   4₅</text>',
        f'<line x1="150" y1="136" x2="315" y2="136" stroke="{NAVY}" stroke-width="2"/>',
        f'<text x="195" y="158" fill="{GREEN}" font-family="DejaVu Sans Mono" font-size="16" font-weight="bold">  1   1   3   1₅</text>',
        f'<text x="191" y="182" fill="{SLATE}" font-family="DejaVu Sans" font-size="9.5" text-anchor="middle">2+4=6 = 1×5 + 1 | 4+3+1=8 = 1×5 + 3 | 3+2+1=6 = 1×5 + 1</text>',

        # Right: Subtraction in Base 2 (1010_2 - 0111_2 = 0011_2) and Base 5 (412_5 - 134_5 = 223_5)
        f'<rect x="381" y="42" width="335" height="152" rx="8" fill="{AMBER_LIGHT}" fill-opacity="0.45" stroke="{AMBER}" stroke-width="1.5"/>',
        f'<text x="548" y="62" fill="{AMBER}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">Subtraction in Base 5:  412₅ − 134₅</text>',
        f'<text x="455" y="84" fill="{RED}" font-family="DejaVu Sans Mono" font-size="10.5" font-weight="bold">Borrow 1 group of 5 → (+5 to next col!)</text>',
        f'<text x="530" y="106" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="15" font-weight="bold">  4   1   2₅</text>',
        f'<text x="530" y="128" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="15" font-weight="bold">− 1   3   4₅</text>',
        f'<line x1="505" y1="136" x2="660" y2="136" stroke="{NAVY}" stroke-width="2"/>',
        f'<text x="530" y="158" fill="{AMBER}" font-family="DejaVu Sans Mono" font-size="16" font-weight="bold">  2   2   3₅</text>',
        f'<text x="548" y="182" fill="{SLATE}" font-family="DejaVu Sans" font-size="9.5" text-anchor="middle">Units: (2+5)−4 = 3 | Fives: (0+5)−3 = 2 | 25s: 3−1 = 2</text>',
    ]
    write_svg("ch01_carry_borrow.svg", svg_wrap(w, h, "\n".join(b)))

    # Ch 2: 7-Day Calendar & 12-Hour Clock Modulo Application
    w, h = 740, 195
    days = ["Sun (0)", "Mon (1)", "Tue (2)", "Wed (3)", "Thu (4)", "Fri (5)", "Sat (6)"]
    b = [
        f'<text x="370" y="25" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Calendar Day-of-Week Cycle (Modulo 7) — High-Yield UTME Word Problem Pattern</text>',
    ]
    for i, d in enumerate(days):
        x = 32 + i * 98
        fill = GREEN_LIGHT if i in (2, 6) else "#F8FAFC"
        stroke = GREEN if i in (2, 6) else BORDER
        b.append(f'<rect x="{x}" y="48" width="88" height="44" rx="7" fill="{fill}" stroke="{stroke}" stroke-width="1.7"/>')
        b.append(f'<text x="{x+44}" y="75" fill="{NAVY}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">{d}</text>')
    b.extend([
        f'<rect x="32" y="108" width="674" height="70" rx="8" fill="{BLUE_LIGHT}" fill-opacity="0.4" stroke="{BLUE}" stroke-width="1.4"/>',
        f'<text x="370" y="130" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Example: If today is Tuesday (Code 2), what day of the week will it be in 100 days?</text>',
        f'<text x="370" y="150" fill="{BLUE}" font-family="DejaVu Sans Mono" font-size="11.5" font-weight="bold" text-anchor="middle">Step 1: 100 ÷ 7 = 14 weeks remainder 2   ⇒   100 ≡ 2 (mod 7)</text>',
        f'<text x="370" y="168" fill="{GREEN}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Step 2: Advance 2 days from Tuesday (2 ⊕₇ 2 = 4)  ⇒  Thursday!  (In 365 days: 365 ≡ 1 mod 7 → +1 day)</text>',
    ])
    write_svg("ch02_calendar_mod7.svg", svg_wrap(w, h, "\n".join(b)))

    # Ch 3: Real Number Hierarchy Tree
    w, h = 740, 225
    b = [
        f'<text x="370" y="24" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">The Real Number System (ℝ) &amp; Decimal Classification</text>',
        # Root R
        f'<rect x="275" y="38" width="190" height="34" rx="7" fill="{NAVY}"/>',
        f'<text x="370" y="59" fill="#FFFFFF" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">Real Numbers (ℝ)</text>',
        f'<line x1="320" y1="72" x2="195" y2="96" stroke="{NAVY}" stroke-width="1.8" marker-end="url(#arrow-navy)"/>',
        f'<line x1="420" y1="72" x2="555" y2="96" stroke="{NAVY}" stroke-width="1.8" marker-end="url(#arrow-navy)"/>',
        # Q and Q'
        f'<rect x="65" y="98" width="260" height="42" rx="7" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="1.8"/>',
        f'<text x="195" y="116" fill="{GREEN}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Rational Numbers (ℚ = p/q, q ≠ 0)</text>',
        f'<text x="195" y="132" fill="{SLATE}" font-family="DejaVu Sans" font-size="9.5" text-anchor="middle">Terminating OR Recurring Decimals</text>',

        f'<rect x="425" y="98" width="265" height="42" rx="7" fill="{RED_LIGHT}" stroke="{RED}" stroke-width="1.8"/>',
        f'<text x="557" y="116" fill="{RED}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Irrational Numbers (ℚ\')</text>',
        f'<text x="557" y="132" fill="{SLATE}" font-family="DejaVu Sans" font-size="9.5" text-anchor="middle">Non-terminating, Non-recurring: √2, √3, π</text>',

        # Children of Q
        f'<line x1="130" y1="140" x2="105" y2="164" stroke="{GREEN}" stroke-width="1.6" marker-end="url(#arrow-green)"/>',
        f'<line x1="255" y1="140" x2="295" y2="164" stroke="{GREEN}" stroke-width="1.6" marker-end="url(#arrow-green)"/>',

        f'<rect x="24" y="166" width="175" height="44" rx="6" fill="#FFFFFF" stroke="{GREEN}" stroke-width="1.4"/>',
        f'<text x="111" y="184" fill="{NAVY}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">Integers ℤ ⊃ 𝕎 ⊃ ℕ</text>',
        f'<text x="111" y="200" fill="{SLATE}" font-family="DejaVu Sans" font-size="9.2" text-anchor="middle">..., −2, −1, 0, 1, 2, 3, ...</text>',

        f'<rect x="212" y="166" width="215" height="44" rx="6" fill="#FFFFFF" stroke="{GREEN}" stroke-width="1.4"/>',
        f'<text x="319" y="184" fill="{NAVY}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">Non-Integer Fractions</text>',
        f'<text x="319" y="200" fill="{SLATE}" font-family="DejaVu Sans" font-size="9.2" text-anchor="middle">3/8 = 0.375  |  4/11 = 0.3636...</text>',

        f'<rect x="442" y="166" width="274" height="44" rx="6" fill="{AMBER_LIGHT}" stroke="{AMBER}" stroke-width="1.4"/>',
        f'<text x="579" y="184" fill="{NAVY}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Terminating Decimal Test (Lowest Terms p/q):</text>',
        f'<text x="579" y="200" fill="{AMBER}" font-family="DejaVu Sans" font-size="9.5" font-weight="bold" text-anchor="middle">Terminates iff prime factors of q are ONLY 2 and/or 5!</text>',
    ]
    write_svg("ch03_real_number_tree.svg", svg_wrap(w, h, "\n".join(b)))

    # Ch 4: Ratio Linking & Mixture Alligation Cross
    w, h = 740, 205
    b = [
        f'<text x="370" y="25" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Linking Compound Ratios &amp; The Mixture Alligation Cross Shortcut</text>',
        # Left: Linking A:B and B:C
        f'<rect x="22" y="42" width="335" height="146" rx="8" fill="{GREEN_LIGHT}" fill-opacity="0.4" stroke="{GREEN}" stroke-width="1.5"/>',
        f'<text x="189" y="61" fill="{GREEN}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Compound Ratio Bridge (A:B = 2:3, B:C = 4:5)</text>',
        f'<text x="189" y="88" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="12" font-weight="bold" text-anchor="middle">A  :  B  :  C</text>',
        f'<text x="189" y="110" fill="{SLATE}" font-family="DejaVu Sans Mono" font-size="11.5" font-weight="bold" text-anchor="middle">2  :  3        (×4)</text>',
        f'<text x="189" y="130" fill="{SLATE}" font-family="DejaVu Sans Mono" font-size="11.5" font-weight="bold" text-anchor="middle">      4  :  5  (×3)</text>',
        f'<line x1="70" y1="140" x2="310" y2="140" stroke="{GREEN}" stroke-width="1.8"/>',
        f'<text x="189" y="160" fill="{GREEN}" font-family="DejaVu Sans Mono" font-size="13" font-weight="bold" text-anchor="middle">8  : 12  : 15  (Total = 35 parts)</text>',
        f'<text x="189" y="178" fill="{MUTED}" font-family="DejaVu Sans" font-size="9.5" text-anchor="middle">Match common term B to LCM(3, 4) = 12</text>',

        # Right: Alligation Cross
        f'<rect x="381" y="42" width="335" height="146" rx="8" fill="{BLUE_LIGHT}" fill-opacity="0.35" stroke="{BLUE}" stroke-width="1.5"/>',
        f'<text x="548" y="61" fill="{BLUE}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Mixture Alligation Cross (Cheaper C₁ vs Dearer C₂)</text>',
        f'<text x="435" y="92" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Cheaper C₁</text>',
        f'<text x="660" y="92" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Dearer C₂</text>',
        f'<rect x="508" y="108" width="80" height="28" rx="6" fill="#FFFFFF" stroke="{BLUE}" stroke-width="1.8"/>',
        f'<text x="548" y="126" fill="{BLUE}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Mean M</text>',
        f'<line x1="455" y1="98" x2="625" y2="152" stroke="{NAVY}" stroke-width="1.5" marker-end="url(#arrow-navy)"/>',
        f'<line x1="640" y1="98" x2="470" y2="152" stroke="{NAVY}" stroke-width="1.5" marker-end="url(#arrow-navy)"/>',
        f'<text x="438" y="168" fill="{GREEN}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">Qty₁ = C₂ − M</text>',
        f'<text x="658" y="168" fill="{GREEN}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">Qty₂ = M − C₁</text>',
        f'<text x="548" y="180" fill="{RED}" font-family="DejaVu Sans" font-size="10" font-weight="bold" text-anchor="middle">Ratio Qty₁ : Qty₂ = (C₂ − M) : (M − C₁)</text>',
    ]
    write_svg("ch04_ratio_alligation.svg", svg_wrap(w, h, "\n".join(b)))

    # Ch 5: Shares & Dividend Anatomy
    w, h = 740, 200
    b = [
        f'<text x="370" y="25" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Shares, Nominal (Par) Value, Market Price &amp; Dividend Flow</text>',
        f'<rect x="28" y="48" width="205" height="90" rx="8" fill="{AMBER_LIGHT}" stroke="{AMBER}" stroke-width="1.8"/>',
        f'<text x="130" y="70" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">1. Nominal (Face) Value</text>',
        f'<text x="130" y="90" fill="{SLATE}" font-family="DejaVu Sans" font-size="10" text-anchor="middle">Printed face value per share</text>',
        f'<text x="130" y="108" fill="{AMBER}" font-family="DejaVu Sans Mono" font-size="11" font-weight="bold" text-anchor="middle">e.g. ₦0.50 (50k) share</text>',
        f'<text x="130" y="126" fill="{GREEN}" font-family="DejaVu Sans" font-size="9.5" font-weight="bold" text-anchor="middle">Determines DIVIDEND!</text>',

        f'<rect x="268" y="48" width="205" height="90" rx="8" fill="{BLUE_LIGHT}" stroke="{BLUE}" stroke-width="1.8"/>',
        f'<text x="370" y="70" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">2. Market Value (Price)</text>',
        f'<text x="370" y="90" fill="{SLATE}" font-family="DejaVu Sans" font-size="10" text-anchor="middle">Stock-exchange trading price</text>',
        f'<text x="370" y="108" fill="{BLUE}" font-family="DejaVu Sans Mono" font-size="11" font-weight="bold" text-anchor="middle">e.g. Quoted at ₦1.20</text>',
        f'<text x="370" y="126" fill="{BLUE}" font-family="DejaVu Sans" font-size="9.5" font-weight="bold" text-anchor="middle">Determines COST OF BUYING!</text>',

        f'<rect x="508" y="48" width="205" height="90" rx="8" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="1.8"/>',
        f'<text x="610" y="70" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">3. Key UTME Formulas</text>',
        f'<text x="610" y="92" fill="{NAVY}" font-family="DejaVu Sans" font-size="9.8" font-weight="bold" text-anchor="middle">Shares N = Cash / Market Price</text>',
        f'<text x="610" y="110" fill="{GREEN}" font-family="DejaVu Sans" font-size="9.8" font-weight="bold" text-anchor="middle">Div = N × Par × (d% / 100)</text>',
        f'<text x="610" y="128" fill="{RED}" font-family="DejaVu Sans" font-size="9.8" font-weight="bold" text-anchor="middle">Yield % = (Div / Cash) × 100%</text>',

        f'<rect x="28" y="150" width="685" height="34" rx="6" fill="#F1F5F9" stroke="{NAVY}"/>',
        f'<text x="370" y="171" fill="{NAVY}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">Status: Market = Par → At Par   |   Market &gt; Par → At a Premium   |   Market &lt; Par → At a Discount</text>',
    ]
    write_svg("ch05_shares_map.svg", svg_wrap(w, h, "\n".join(b)))

    # Ch 6: Standard Form Decimal Slider
    w, h = 740, 195
    b = [
        f'<text x="370" y="25" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Standard Form A × 10ⁿ (1 ≤ A &lt; 10): Decimal Shift Direction Rule</text>',
        f'<rect x="26" y="44" width="332" height="132" rx="8" fill="{GREEN_LIGHT}" fill-opacity="0.45" stroke="{GREEN}" stroke-width="1.6"/>',
        f'<text x="192" y="65" fill="{GREEN}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">LARGE NUMBERS (&gt; 10): Move Point LEFT</text>',
        f'<text x="192" y="96" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="16" font-weight="bold" text-anchor="middle">4 5 8 0 0 0 . 0</text>',
        f'<line x1="252" y1="106" x2="145" y2="106" stroke="{GREEN}" stroke-width="2.4" marker-end="url(#arrow-green)"/>',
        f'<text x="192" y="124" fill="{GREEN}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">5 places LEFT  ⇒  n = +5 (Positive)</text>',
        f'<text x="192" y="152" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="14" font-weight="bold" text-anchor="middle">= 4.58 × 10⁵</text>',

        f'<rect x="382" y="44" width="332" height="132" rx="8" fill="{RED_LIGHT}" fill-opacity="0.40" stroke="{RED}" stroke-width="1.6"/>',
        f'<text x="548" y="65" fill="{RED}" font-family="DejaVu Sans" font-size="11.5" font-weight="bold" text-anchor="middle">SMALL DECIMALS (&lt; 1): Move Point RIGHT</text>',
        f'<text x="548" y="96" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="16" font-weight="bold" text-anchor="middle">0 . 0 0 0 4 3</text>',
        f'<line x1="504" y1="106" x2="585" y2="106" stroke="{RED}" stroke-width="2.4" marker-end="url(#arrow-red)"/>',
        f'<text x="548" y="124" fill="{RED}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">4 places RIGHT  ⇒  n = −4 (Negative)</text>',
        f'<text x="548" y="152" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="14" font-weight="bold" text-anchor="middle">= 4.3 × 10⁻⁴</text>',
    ]
    write_svg("ch06_standard_form_slider.svg", svg_wrap(w, h, "\n".join(b)))

    # Ch 7: Prime-Power Decomposition Strategy for Given Log Constants
    w, h = 740, 200
    b = [
        f'<text x="370" y="25" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Non-Calculator Logarithm Evaluation Blueprint (Using log₁₀ 2, log₁₀ 3, and log₁₀ 10 = 1)</text>',
        f'<rect x="28" y="46" width="210" height="132" rx="8" fill="{AMBER_LIGHT}" stroke="{AMBER}" stroke-width="1.6"/>',
        f'<text x="133" y="68" fill="{NAVY}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">THE HIDDEN log₁₀ 5 TRICK!</text>',
        f'<text x="133" y="92" fill="{RED}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">JAMB rarely gives log₁₀ 5!</text>',
        f'<text x="133" y="114" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="11" font-weight="bold" text-anchor="middle">log₁₀ 5 = log₁₀(10 / 2)</text>',
        f'<text x="133" y="136" fill="{GREEN}" font-family="DejaVu Sans Mono" font-size="11.5" font-weight="bold" text-anchor="middle">= 1 − log₁₀ 2</text>',
        f'<text x="133" y="158" fill="{SLATE}" font-family="DejaVu Sans Mono" font-size="10.5" text-anchor="middle">1 − 0.3010 = 0.6990</text>',

        f'<rect x="262" y="46" width="450" height="132" rx="8" fill="{GREEN_LIGHT}" fill-opacity="0.45" stroke="{GREEN}" stroke-width="1.6"/>',
        f'<text x="487" y="68" fill="{GREEN}" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">Worked Decomposition: Evaluate log₁₀(0.075) given log 2 &amp; log 3</text>',
        f'<text x="282" y="94" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="11" font-weight="bold">Step 1 (Fraction):  0.075 = 75 / 1000 = 3 / 40 = 3 / (2³ × 5)</text>',
        f'<text x="282" y="118" fill="{NAVY}" font-family="DejaVu Sans Mono" font-size="11" font-weight="bold">Step 2 (Or keep 10s!): 75 / 1000 = (3 × 100) / (4 × 1000) = 3 / (4 × 10)</text>',
        f'<text x="282" y="142" fill="{BLUE}" font-family="DejaVu Sans Mono" font-size="11" font-weight="bold">Step 3 (Expand):   log 3 − 2 log 2 − log 10 = 0.4771 − 0.6020 − 1</text>',
        f'<text x="282" y="164" fill="{GREEN}" font-family="DejaVu Sans Mono" font-size="11.5" font-weight="bold">Step 4 (Result):   = −1.1249  (or in bar notation: 2̄.8751)</text>',
    ]
    write_svg("ch07_log_decomposition.svg", svg_wrap(w, h, "\n".join(b)))

    # Ch 8: Conjugate Surd Rationalization Flowchart
    w, h = 740, 195
    b = [
        f'<text x="370" y="25" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Rationalizing Binomial Surd Denominators via Difference of Two Squares</text>',
        f'<rect x="30" y="52" width="185" height="72" rx="8" fill="{RED_LIGHT}" stroke="{RED}" stroke-width="1.6"/>',
        f'<text x="122" y="76" fill="{RED}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">Irrational Denominator</text>',
        f'<text x="122" y="104" fill="{NAVY}" font-family="DejaVu Sans" font-size="14" font-weight="bold" text-anchor="middle">N / (p + q√m)</text>',

        f'<line x1="215" y1="88" x2="268" y2="88" stroke="{NAVY}" stroke-width="2" marker-end="url(#arrow-navy)"/>',

        f'<rect x="272" y="52" width="205" height="72" rx="8" fill="{AMBER_LIGHT}" stroke="{AMBER}" stroke-width="1.6"/>',
        f'<text x="374" y="76" fill="{AMBER}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">Multiply Top &amp; Bottom by</text>',
        f'<text x="374" y="104" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Conjugate: (p − q√m)</text>',

        f'<line x1="477" y1="88" x2="528" y2="88" stroke="{GREEN}" stroke-width="2" marker-end="url(#arrow-green)"/>',

        f'<rect x="532" y="52" width="180" height="72" rx="8" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="1.8"/>',
        f'<text x="622" y="76" fill="{GREEN}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold" text-anchor="middle">Rational Denominator!</text>',
        f'<text x="622" y="104" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">p² − q²m  ∈  ℚ</text>',

        f'<rect x="30" y="140" width="682" height="38" rx="6" fill="{NAVY}"/>',
        f'<text x="371" y="164" fill="#FFFFFF" font-family="DejaVu Sans" font-size="11" font-weight="bold" text-anchor="middle">CRITICAL SIGN WARNING: Conjugate of (2√3 − √7) is (2√3 + √7) — Flip ONLY the middle sign; check p² − q²m sign!</text>',
    ]
    write_svg("ch08_conjugate_flow.svg", svg_wrap(w, h, "\n".join(b)))

    # Ch 9: Subset, Disjoint & De Morgan Visual
    w, h = 740, 200
    b = [
        f'<text x="370" y="25" fill="{NAVY}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">Special Set Configurations: Proper Subset (A ⊂ B) vs. Disjoint Sets (A ∩ B = ∅)</text>',
        # Left: A subset B
        f'<rect x="30" y="45" width="325" height="138" rx="8" fill="#FFFFFF" stroke="{NAVY}" stroke-width="1.6"/>',
        f'<text x="44" y="63" fill="{SLATE}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold">ℰ</text>',
        f'<ellipse cx="150" cy="112" rx="78" ry="52" fill="{BLUE_LIGHT}" stroke="{BLUE}" stroke-width="2"/>',
        f'<circle cx="136" cy="116" r="30" fill="{GREEN_MID}" stroke="{GREEN}" stroke-width="2"/>',
        f'<text x="136" y="120" fill="{NAVY}" font-family="DejaVu Sans" font-size="12" font-weight="bold" text-anchor="middle">A</text>',
        f'<text x="200" y="96" fill="{BLUE}" font-family="DejaVu Sans" font-size="12" font-weight="bold" text-anchor="middle">B</text>',
        f'<text x="242" y="80" fill="{NAVY}" font-family="DejaVu Sans" font-size="10" font-weight="bold">If A ⊂ B, then:</text>',
        f'<text x="242" y="100" fill="{GREEN}" font-family="DejaVu Sans" font-size="10" font-weight="bold">• A ∩ B = A</text>',
        f'<text x="242" y="118" fill="{BLUE}" font-family="DejaVu Sans" font-size="10" font-weight="bold">• A ∪ B = B</text>',
        f'<text x="242" y="136" fill="{RED}" font-family="DejaVu Sans" font-size="10" font-weight="bold">• A ∩ B\' = ∅</text>',
        f'<text x="242" y="154" fill="{SLATE}" font-family="DejaVu Sans" font-size="10" font-weight="bold">• B\' ⊂ A\'</text>',

        # Right: Disjoint Sets
        f'<rect x="385" y="45" width="325" height="138" rx="8" fill="#FFFFFF" stroke="{NAVY}" stroke-width="1.6"/>',
        f'<text x="399" y="63" fill="{SLATE}" font-family="DejaVu Sans" font-size="10.5" font-weight="bold">ℰ</text>',
        f'<circle cx="458" cy="115" r="42" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="2"/>',
        f'<circle cx="562" cy="115" r="42" fill="{AMBER_LIGHT}" stroke="{AMBER}" stroke-width="2"/>',
        f'<text x="458" y="120" fill="{GREEN}" font-family="DejaVu Sans" font-size="12.5" font-weight="bold" text-anchor="middle">A</text>',
        f'<text x="562" y="120" fill="{AMBER}" font-family="DejaVu Sans" font-size="12.5" font-weight="bold" text-anchor="middle">B</text>',
        f'<text x="615" y="82" fill="{NAVY}" font-family="DejaVu Sans" font-size="10" font-weight="bold">Disjoint Sets:</text>',
        f'<text x="615" y="102" fill="{RED}" font-family="DejaVu Sans" font-size="10" font-weight="bold">• A ∩ B = ∅</text>',
        f'<text x="615" y="122" fill="{GREEN}" font-family="DejaVu Sans" font-size="10" font-weight="bold">• n(A∩B) = 0</text>',
        f'<text x="615" y="142" fill="{NAVY}" font-family="DejaVu Sans" font-size="9.5" font-weight="bold">• n(A∪B) =</text>',
        f'<text x="622" y="157" fill="{NAVY}" font-family="DejaVu Sans" font-size="9.5" font-weight="bold">n(A) + n(B)</text>',
    ]
    write_svg("ch09_subset_disjoint.svg", svg_wrap(w, h, "\n".join(b)))


if __name__ == "__main__":
    gen_cover_graphic()
    gen_utme_weight_chart()
    gen_ch01_diagrams()
    gen_ch02_diagrams()
    gen_ch03_diagrams()
    gen_ch04_diagrams()
    gen_ch05_diagrams()
    gen_ch06_ch07_diagrams()
    gen_ch08_diagrams()
    gen_ch09_venn_diagrams()
    gen_extra_chapter_diagrams()
    print("Generated SVGs:", len(list(OUT.glob("*.svg"))), sorted(p.name for p in OUT.glob("*.svg")))


# ---------------------------------------------------------------------------
# RECAP MIND-MAP BANNERS (Appendices)
# ---------------------------------------------------------------------------
def gen_recap_banners():
    GREEN_, NAVY_, AMB_, RED_, BLU_ = GREEN, NAVY, AMBER, RED, BLUE

    def banner(fname, title, nodes, subtitle=""):
        w, h = 740, 210
        b = [
            f'<text x="370" y="26" fill="{NAVY_}" font-family="DejaVu Sans" font-size="13.5" font-weight="bold" text-anchor="middle">{title}</text>'
        ]
        if subtitle:
            b.append(f'<text x="370" y="44" fill="{MUTED}" font-family="DejaVu Sans" font-size="9.6" text-anchor="middle">{subtitle}</text>')
        cols = min(4, len(nodes))
        rows = (len(nodes) + cols - 1) // cols
        cw = 700 / cols
        for i, (label, col) in enumerate(nodes):
            r, c = i // cols, i % cols
            x = 20 + c * cw
            y = 58 + r * (140 / rows)
            bh = (140 / rows) - 10
            b.append(f'<rect x="{x}" y="{y}" width="{cw-10}" height="{bh}" rx="7" fill="#FFFFFF" stroke="{col}" stroke-width="1.6"/>')
            b.append(f'<rect x="{x}" y="{y}" width="{cw-10}" height="5" rx="2.5" fill="{col}"/>')
            words = label.split("\n")
            for j, wd in enumerate(words[:5]):
                b.append(f'<text x="{x+(cw-10)/2}" y="{y+22+j*13}" fill="{NAVY_}" font-family="DejaVu Sans" font-size="9" font-weight="bold" text-anchor="middle">{wd}</text>')
        svg = f'''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {w} {h}" width="{w}" height="{h}">
          <rect x="0" y="0" width="{w}" height="{h}" rx="10" fill="{GREEN_LIGHT}" stroke="{GREEN}" stroke-width="1.2"/>
          {"".join(b)}
        </svg>'''
        write_svg(fname, svg)

    banner("recap_ch01.svg", "CHAPTER 1 RECAP — Number Bases & Positional Numeration",
           [("Radix point /\nplace value", GREEN), ("Base b → 10:\npower expansion", BLU_),
            ("10 → base q:\ndivide / multiply", AMB_), ("Arithmetic in base b:\ncarry/borrow b", RED_)],
           "Rule of thumb: count positions outward from the radix point; base^0 = 1 always.")
    banner("recap_ch02.svg", "CHAPTER 2 RECAP — Modular Arithmetic & Cycles",
           [("Least residue\n0 ≤ r < n", GREEN), ("Negative residue:\nn − r₊", AMB_),
            ("Inverse iff\ngcd(a,n) = 1", BLU_), ("a x ≡ b:\nd = gcd → d roots", RED_)],
           "Clock, calendar and market cycles are all just repeated addition modulo n.")
    banner("recap_ch03.svg", "CHAPTER 3 RECAP — Fractions, Decimals & Errors",
           [("HCF: low powers\nLCM: high powers", GREEN), ("BODMAS:\n'of' before ÷", AMB_),
            ("s.f. from first\nnon-zero digit", BLU_), ("% error over\nACTUAL value", RED_)],
           "Reduce fractions before testing whether the decimal terminates.")
    banner("recap_ch04.svg", "CHAPTER 4 RECAP — Ratio, Proportion & Rates",
           [("Percentage error over\nACTUAL value", GREEN), ("Chained ratios:\nmatch middle via LCM", AMB_),
            ("Combined rates:\nadd reciprocals", BLU_), ("Equal distances:\n2v₁v₂/(v₁+v₂)", RED_)],
           "Direct proportion: quotient constant. Inverse proportion: product constant.")
    banner("recap_ch05.svg", "CHAPTER 5 RECAP — Commercial & Financial Mathematics",
           [("SI: PRT/100\nCI: P(1+r)ⁿ", GREEN), ("Profit % and loss %\nalways on CP", AMB_),
            ("Shares: dividend on\nNOMINAL value", BLU_), ("VAT inclusive:\n÷ (1 + v/100)", RED_)],
           "Two items at the same SP with +p% and −p% always produce a p²/100 % net loss.")
    banner("recap_ch06.svg", "CHAPTER 6 RECAP — Indices & Standard Form",
           [("aᵖᐟq = (ᵍ√a)ᵖ\nroot first", GREEN), ("Sums: factor out\nthe smallest power", AMB_),
            ("u = aˣ > 0:\nreject negative roots", BLU_), ("Standard form:\n1 ≤ A < 10", RED_)],
           "Convert decimals to reduced fractions before applying negative exponents.")
    banner("recap_ch07.svg", "CHAPTER 7 RECAP — Logarithms",
           [("log_a N = x\n⇔ aˣ = N", GREEN), ("Product = sum,\nquotient = difference", AMB_),
            ("Change of base:\nlog b / log a", BLU_), ("No tables:\nlog 5 = 1 − log 2", RED_)],
           "Always state the domain N > 0, a > 0, a ≠ 1 before solving.")
    banner("recap_ch08.svg", "CHAPTER 8 RECAP — Surds & Radical Equations",
           [("√(k²m) = k√m:\ncanonical form", GREEN), ("Conjugate clears\nbinomial surds", AMB_),
            ("√(a ± 2√b) =\n√x ± √y", BLU_), ("Square roots are\nnever negative", RED_)],
           "Rationalise before substituting any decimal approximation.")
    banner("recap_ch09.svg", "CHAPTER 9 RECAP — Sets & Venn Diagrams",
           [("2ⁿ subsets;\n2ⁿ − 1 proper", GREEN), ("De Morgan flips\n∪ ↔ ∩", AMB_),
            ("3-set: fill the\ntriple centre first", BLU_), ("'A and B' ≠\n'A and B only'", RED_)],
           "Always subtract the 'neither/none' group from n(ℰ) before using inclusion–exclusion.")


if __name__ == "__main__":
    gen_recap_banners()
    print("Recap banners generated:", len([p for p in OUT.glob("recap_*.svg")]))
