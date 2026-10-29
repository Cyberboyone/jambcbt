"""Rewrite the heart diagram with numbered callouts (one-off patch)."""

from pathlib import Path

P = Path(__file__).resolve().parent / "diagrams_gen" / "figs_bio_c.py"
s = P.read_text()

start = s.index("def ch07_heart():")
end = s.index("def ch07_circulation():")

new = '''def ch07_heart():
    fig, ax = plt.subplots(figsize=(7.6, 4.5))
    ax.set_xlim(0, 12)
    ax.set_ylim(-0.1, 6.2)
    ax.axis("off")

    def num(x, y, n, colour=GREEN):
        ax.add_patch(Circle((x, y), 0.17, facecolor=colour, edgecolor="white", lw=1.0, zorder=9))
        ax.text(x, y - 0.01, str(n), ha="center", va="center", fontsize=6.8, color="white",
                fontweight="bold", zorder=10)

    # heart outline
    pts = [[5.0, 5.55], [6.55, 5.45], [7.35, 4.75], [7.35, 3.35], [6.75, 1.95], [5.75, 1.05],
           [5.0, 0.80], [4.25, 1.05], [3.25, 1.95], [2.65, 3.35], [2.65, 4.75], [3.45, 5.45]]
    ax.add_patch(Polygon(pts, closed=True, facecolor="#FFF1F2", edgecolor=RED, lw=2.0, zorder=2))
    # chambers
    ax.add_patch(Ellipse((3.85, 4.55), 1.65, 1.30, facecolor=BLUE_LIGHT, edgecolor=BLUE, lw=1.2, zorder=3))
    ax.add_patch(Ellipse((6.15, 4.55), 1.65, 1.30, facecolor=RED_LIGHT, edgecolor=RED, lw=1.2, zorder=3))
    ax.add_patch(Ellipse((3.90, 2.65), 2.00, 2.55, facecolor="#DBEAFE", edgecolor=BLUE, lw=1.4, zorder=3))
    ax.add_patch(Ellipse((6.10, 2.55), 2.10, 2.85, facecolor="#FEE2E2", edgecolor=RED, lw=1.4, zorder=3))
    # septum
    ax.plot([5.0, 5.0], [5.45, 0.95], color=RED, lw=2.0, zorder=5)
    # valves
    for vx in (3.90, 6.10):
        ax.plot([vx - 0.30, vx, vx + 0.30], [3.90, 4.16, 3.90], color=SLATE, lw=1.5, zorder=6)

    # great vessels as coloured arrows
    ax.annotate("", xy=(1.35, 5.55), xytext=(3.35, 5.05),
                arrowprops=dict(arrowstyle="-|>", color=BLUE, lw=3.2, shrinkA=0, shrinkB=0))
    ax.annotate("", xy=(3.55, 6.02), xytext=(4.35, 5.30),
                arrowprops=dict(arrowstyle="-|>", color=BLUE, lw=2.8, shrinkA=0, shrinkB=0))
    ax.annotate("", xy=(7.10, 6.02), xytext=(6.35, 5.25),
                arrowprops=dict(arrowstyle="-|>", color=RED, lw=3.4, shrinkA=0, shrinkB=0))
    ax.annotate("", xy=(7.15, 4.62), xytext=(8.85, 4.95),
                arrowprops=dict(arrowstyle="-|>", color=RED, lw=3.0, shrinkA=0, shrinkB=0))
    ax.annotate("", xy=(8.65, 1.45), xytext=(6.70, 1.85),
                arrowprops=dict(arrowstyle="-|>", color=RED, lw=2.6, shrinkA=0, shrinkB=0))
    ax.text(9.35, 1.25, "aorta", fontsize=7.2, color=RED)

    ax.text(3.85, 4.55, "RIGHT\\nATRIUM", ha="center", va="center", fontsize=7.8, color=NAVY,
            fontweight="bold", zorder=7)
    ax.text(6.15, 4.55, "LEFT\\nATRIUM", ha="center", va="center", fontsize=7.8, color=NAVY,
            fontweight="bold", zorder=7)
    ax.text(3.85, 2.55, "RIGHT\\nVENTRICLE", ha="center", va="center", fontsize=7.8, color=NAVY,
            fontweight="bold", zorder=7)
    ax.text(6.20, 2.45, "LEFT\\nVENTRICLE", ha="center", va="center", fontsize=7.8, color=NAVY,
            fontweight="bold", zorder=7)

    num(1.55, 5.42, 1)
    num(3.62, 5.82, 2)
    num(6.95, 5.82, 3)
    num(8.55, 4.78, 4)
    num(8.45, 1.32, 5)
    num(3.90, 4.02, 6)
    num(6.10, 4.02, 7)
    num(5.00, 3.15, 8)

    ax.text(5.6, 6.15, "The mammalian heart", ha="center", fontsize=10.6, color=NAVY,
            fontweight="bold")

    ax.text(0.10, 0.75, "1  Vena cava — deoxygenated blood from the body", fontsize=7.4, color=SLATE)
    ax.text(0.10, 0.49, "2  Pulmonary artery — deoxygenated blood to the lungs", fontsize=7.4, color=SLATE)
    ax.text(0.10, 0.23, "3  Aorta — oxygenated blood to the whole body", fontsize=7.4, color=SLATE)
    ax.text(0.10, -0.03, "4  Pulmonary vein — oxygenated blood from the lungs", fontsize=7.4, color=SLATE)
    ax.text(6.10, 0.75, "5  Right ventricle — pumps to the lungs only", fontsize=7.4, color=SLATE)
    ax.text(6.10, 0.49, "6  Tricuspid valve     7  Bicuspid (mitral) valve", fontsize=7.4, color=SLATE)
    ax.text(6.10, 0.23, "8  Septum — keeps the two sides apart", fontsize=7.4, color=SLATE)
    ax.text(6.10, -0.03, "The left ventricle wall is thicker: it pumps to the whole body.", fontsize=7.4, color=MUTED)
    save(fig, "ch07_heart.svg")


'''

P.write_text(s[:start] + new + s[end:])
print("patched ch07_heart")
