"""Rewrite the alimentary canal diagram in figs_bio_b.py (one-off patch)."""

from pathlib import Path

P = Path(__file__).resolve().parent / "diagrams_gen" / "figs_bio_b.py"
s = P.read_text()

start = s.index("def ch05_alimentary():")
end = s.index("def ch05_villus():")

new = '''def ch05_alimentary():
    fig, ax = plt.subplots(figsize=(7.8, 4.6))
    ax.set_xlim(0, 12)
    ax.set_ylim(-0.2, 6.1)
    ax.axis("off")

    def seg(p0, p1, colour, lw=16):
        ax.plot([p0[0], p1[0]], [p0[1], p1[1]], color=SLATE, lw=lw, solid_capstyle="round", zorder=2)
        ax.plot([p0[0], p1[0]], [p0[1], p1[1]], color=colour, lw=lw - 2.4, solid_capstyle="round", zorder=3)

    def num(x, y, n, colour=GREEN):
        ax.add_patch(Circle((x, y), 0.17, facecolor=colour, edgecolor="white", lw=1.0, zorder=9))
        ax.text(x, y - 0.01, str(n), ha="center", va="center", fontsize=6.8, color="white",
                fontweight="bold", zorder=10)

    # 1 mouth, 2 oesophagus
    ax.add_patch(Ellipse((2.15, 5.75), 0.90, 0.38, facecolor="#FFFFFF", edgecolor=SLATE, lw=1.6, zorder=4))
    seg((2.15, 5.55), (2.15, 4.80), "#E0F2FE", 12)
    # 3 stomach
    ax.add_patch(FancyBboxPatch((1.55, 3.55), 1.20, 1.30, boxstyle="round,pad=0.02,rounding_size=0.52",
                                facecolor="#FFF7ED", edgecolor=AMBER, lw=1.8, zorder=4))
    # 4 duodenum
    seg((2.75, 3.85), (4.55, 3.72), "#FECDD3", 14)

    # small intestine inside the colonic frame
    runs = [
        [(4.40, 3.78), (5.60, 4.10), (6.80, 3.86), (8.10, 4.12), (8.55, 3.86)],
        [(8.55, 3.86), (8.30, 3.28), (7.05, 3.52), (5.80, 3.26), (4.55, 3.50), (4.32, 3.24)],
        [(4.32, 3.24), (4.62, 2.62), (5.90, 2.86), (7.15, 2.58), (8.30, 2.82), (8.55, 2.55)],
    ]
    for run in runs:
        for a, b in zip(run[:-1], run[1:]):
            seg(a, b, "#FECDD3", 15)

    # colon frame
    seg((8.95, 2.30), (8.95, 4.85), RED, 16)
    seg((8.95, 4.85), (4.00, 4.85), RED, 16)
    seg((4.00, 4.85), (4.00, 2.30), RED, 16)
    seg((4.00, 2.30), (4.00, 1.55), RED, 18)
    ax.add_patch(Circle((4.00, 1.32), 0.17, facecolor=RED_LIGHT, edgecolor=RED, lw=1.2, zorder=5))
    ax.add_patch(Circle((8.95, 2.15), 0.28, facecolor=RED_LIGHT, edgecolor=RED, lw=1.4, zorder=5))
    ax.plot([9.05, 9.30, 9.40], [1.95, 1.68, 1.80], color=RED, lw=3.0, zorder=4, solid_capstyle="round")

    # 9 liver, 10 gall bladder, 11 pancreas
    ax.add_patch(Polygon([[2.85, 5.05], [4.75, 5.30], [5.15, 4.75], [3.85, 4.42], [2.78, 4.62]],
                         closed=True, facecolor="#FCA5A5", edgecolor=RED, lw=1.3, alpha=0.8, zorder=3))
    ax.add_patch(Ellipse((4.72, 4.52), 0.34, 0.19, facecolor=GREEN_MID, edgecolor=GREEN, lw=1.1, zorder=6))
    ax.add_patch(Ellipse((5.55, 3.05), 0.80, 0.32, angle=-14, facecolor=AMBER_LIGHT, edgecolor=AMBER,
                         lw=1.3, zorder=6))

    num(2.15, 5.75, 1)
    num(2.15, 5.15, 2)
    num(1.90, 3.85, 3)
    num(3.40, 3.80, 4)
    num(6.55, 2.72, 5)
    num(8.95, 2.15, 6)
    num(8.95, 3.85, 7)
    num(4.00, 1.62, 8)
    num(3.72, 4.92, 9, RED)
    num(4.72, 4.30, 10, GREEN)
    num(5.55, 3.30, 11, AMBER)

    ax.text(6.0, 6.0, "The human alimentary canal", ha="center", fontsize=10.6,
            color=NAVY, fontweight="bold")

    ax.text(0.10, 0.72, "1  Mouth — teeth cut and grind; saliva contains amylase", fontsize=7.4, color=SLATE)
    ax.text(0.10, 0.46, "2  Oesophagus — peristalsis pushes food to the stomach", fontsize=7.4, color=SLATE)
    ax.text(0.10, 0.20, "3  Stomach — hydrochloric acid and pepsin digest protein", fontsize=7.4, color=SLATE)
    ax.text(0.10, -0.06, "4  Duodenum — bile (from the liver) and pancreatic juice", fontsize=7.4, color=SLATE)
    ax.text(6.10, 0.72, "5  Ileum — villi absorb the digested food", fontsize=7.4, color=SLATE)
    ax.text(6.10, 0.46, "6  Caecum and appendix — little function in humans", fontsize=7.4, color=SLATE)
    ax.text(6.10, 0.20, "7  Colon — absorbs water and mineral salts   8  Rectum — stores faeces", fontsize=7.4, color=SLATE)
    ax.text(6.10, -0.06, "9  Liver (makes bile)   10 Gall bladder (stores bile)   11 Pancreas", fontsize=7.4, color=SLATE)
    save(fig, "ch05_alimentary.svg")


'''

P.write_text(s[:start] + new + s[end:])
print("patched ch05_alimentary")
