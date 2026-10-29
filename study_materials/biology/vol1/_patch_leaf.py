"""Rewrite the leaf section diagram with clear, non-overlapping labels."""

from pathlib import Path

P = Path(__file__).resolve().parent / "diagrams_gen" / "figs_bio_b.py"
s = P.read_text()

start = s.index("def ch04_leaf():")
end = s.index("def ch04_photosynthesis():")

new = '''def ch04_leaf():
    fig, ax = plt.subplots(figsize=(7.8, 4.2))
    ax.set_xlim(0, 12.4)
    ax.set_ylim(0, 5.4)
    ax.axis("off")

    L, R = 3.4, 8.9          # leaf body
    # upper epidermis
    ax.add_patch(Rectangle((L, 4.15), R - L, 0.30, facecolor="#FEF3C7", edgecolor=AMBER, lw=1.2, zorder=2))
    # palisade
    for k in range(7):
        ax.add_patch(FancyBboxPatch((L + 0.14 + k * 0.755, 3.24), 0.44, 0.78,
                                    boxstyle="round,pad=0.02,rounding_size=0.08",
                                    facecolor=GREEN_MID, edgecolor=GREEN, lw=1.1, zorder=3))
        ax.add_patch(Circle((L + 0.36 + k * 0.755, 3.80), 0.10, facecolor="#FFFFFF",
                            edgecolor=GREEN, lw=0.8, zorder=4))
    # spongy mesophyll
    rng = np.random.default_rng(3)
    for k in range(14):
        cx = L + 0.30 + (k % 7) * 0.755 + rng.uniform(-0.05, 0.05)
        cy = 2.62 - (k // 7) * 0.66 + rng.uniform(-0.04, 0.04)
        ax.add_patch(Circle((cx, cy), 0.24, facecolor="#DCFCE7", edgecolor=GREEN, lw=1.0, zorder=3))
    # lower epidermis
    ax.add_patch(Rectangle((L, 1.30), R - L, 0.26, facecolor="#FEF3C7", edgecolor=AMBER, lw=1.2, zorder=4))
    # stomata
    for sx in (L + 1.3, R - 1.4):
        ax.add_patch(Ellipse((sx, 1.43), 0.52, 0.28, facecolor="#FFFFFF", edgecolor=SLATE, lw=1.2, zorder=5))
        ax.add_patch(Ellipse((sx, 1.43), 0.28, 0.18, facecolor="#E2E8F0", edgecolor=SLATE, lw=0.8, zorder=6))
    # vein
    ax.add_patch(Ellipse((6.15, 1.95), 1.55, 0.60, facecolor=RED_LIGHT, edgecolor=RED, lw=1.3, zorder=3))
    ax.add_patch(Ellipse((6.15, 1.95), 1.05, 0.32, facecolor="#FFFFFF", edgecolor=RED, lw=0.9, zorder=4))
    # cuticle
    ax.plot([L, R], [4.49, 4.49], color=BLUE, lw=2.2, zorder=3)

    ax.text(6.15, 5.22, "Vertical section through a leaf", ha="center", fontsize=10.4,
            color=NAVY, fontweight="bold")

    # left-hand labels
    for (tx, ty, xy, txt) in [
        (1.60, 4.62, (3.6, 4.49), "Waxy cuticle —\\ntransparent and waterproof"),
        (1.60, 3.95, (3.55, 4.28), "Upper epidermis —\\ntransparent, lets light through"),
        (1.60, 2.35, (3.9, 1.92), "Vascular bundle (vein) —\\nxylem brings water,\\nphloem takes sugar away"),
    ]:
        ax.annotate(txt, xy=xy, xytext=(tx, ty), fontsize=7.2, color=SLATE, ha="center", va="center",
                    arrowprops=dict(arrowstyle="-", color=MUTED, lw=0.9, shrinkA=2, shrinkB=3))

    # right-hand labels
    for (tx, ty, xy, txt) in [
        (11.15, 3.75, (8.35, 3.60), "Palisade mesophyll —\\nmain photosynthetic layer"),
        (11.15, 2.55, (8.75, 2.55), "Spongy mesophyll —\\nair spaces for gas flow"),
        (11.15, 1.42, (8.75, 1.43), "Stoma — a guarded\\nopening for gas exchange"),
    ]:
        ax.annotate(txt, xy=xy, xytext=(tx, ty), fontsize=7.2, color=SLATE, ha="center", va="center",
                    arrowprops=dict(arrowstyle="-", color=MUTED, lw=0.9, shrinkA=2, shrinkB=3))

    ax.text(6.15, 0.55, "Palisade cells are packed with chloroplasts and sit nearest the light; the air spaces of the spongy layer let carbon dioxide reach them.",
            ha="center", fontsize=7.6, color=MUTED)
    save(fig, "ch04_leaf.svg")


'''

P.write_text(s[:start] + new + s[end:])
print("patched ch04_leaf")
