"""Volume 4 diagrams — calculus (chapters 1–5)."""

from __future__ import annotations

import numpy as np
import matplotlib.pyplot as plt

from common import (OUT, GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE,
                    MUTED, BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE,
                    BLUE_LIGHT, PURPLE, PURPLE_LIGHT, write_svg, svg, t, lines,
                    rect, arrow, line, card, banner, axes_style, save, esc)


# ── cover / front matter ────────────────────────────────────────────────────
def cover_banner():
    w, h = 760, 150
    b = [rect(0, 0, w, h, GREEN_LIGHT, GREEN, 10, 1.4),
         f'<rect x="0" y="0" width="{w}" height="6" rx="3" fill="{GREEN}"/>',
         t(380, 46, "CALCULUS  •  STATISTICS  •  PROBABILITY", size=15, weight="bold"),
         t(380, 72, "Limits, Differentiation, Integration, Data, Averages, Spread,", size=11, fill=SLATE),
         t(380, 90, "Permutations, Combinations and Probability", size=11, fill=SLATE)]
    write_svg("cover_banner.svg", svg(w, h, "\n".join(b), bg=GREEN_LIGHT))


def utme_weight_chart():
    labels = ["Limits &\nDiff.", "Integration\n& Area", "Data\nRepresentation", "Averages &\nSpread",
              "Perms &\nCombs", "Probability"]
    vals = [3, 2, 1, 2, 1, 2]
    fig, ax = plt.subplots(figsize=(7.4, 3.0))
    bars = ax.bar(labels, vals, color=[GREEN, GREEN, BLUE, BLUE, PURPLE, PURPLE],
                  edgecolor="white", linewidth=1.2, width=0.62)
    for b, v in zip(bars, vals):
        ax.text(b.get_x() + b.get_width() / 2, v + 0.08, str(v), ha="center",
                fontsize=11, color=NAVY, fontweight="bold")
    ax.set_ylim(0, 3.8)
    ax.set_ylabel("Typical questions")
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)
    ax.set_yticks([0, 1, 2, 3])
    ax.grid(axis="y", color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "utme_section_weight.svg")


# ── chapter 1: limits ───────────────────────────────────────────────────────
def ch01_limit_idea():
    fig, ax = plt.subplots(figsize=(6.6, 3.4))
    x = np.linspace(0.2, 3.6, 400)
    y = (x ** 2 - 4) / (x - 2)
    ax.plot(x, y, color=GREEN, lw=2.2, zorder=3)
    ax.plot([2], [4], "o", ms=8, mfc="white", mec=GREEN, mew=2.0, zorder=5)
    ax.axvline(2, color=RED, ls=(0, (4, 3)), lw=1.2)
    ax.axhline(4, color=BLUE, ls=(0, (4, 3)), lw=1.2)
    ax.annotate("hole at $x = 2$\nthe function is undefined", xy=(2, 4), xytext=(2.55, 5.6),
                fontsize=9.5, color=RED,
                arrowprops=dict(arrowstyle="->", color=RED, lw=1.2))
    ax.annotate("the limit is 4", xy=(3.3, 5.3), xytext=(1.05, 6.4), fontsize=9.5, color=BLUE,
                arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.2))
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    ax.set_xlim(0, 3.8)
    ax.set_ylim(1.2, 7.2)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch01_limit_idea.svg")


def ch01_approach_flow():
    w, h = 760, 230
    b = [rect(0, 0, w, h, "#FFFFFF", GREEN, 10, 1.3)]
    stages = [("1. SUBSTITUTE", "Put x = a\ninto the expression"),
              ("2. IF YOU GET A NUMBER", "That is the limit\n(direct substitution)"),
              ("3. IF YOU GET 0/0", "Factorise, cancel\nthe common factor"),
              ("4. SUBSTITUTE AGAIN", "The cancelled form\ngives the limit")]
    cols = [RED, AMBER, BLUE, GREEN]
    for i, ((title, body), col) in enumerate(zip(stages, cols)):
        x = 18 + i * 186
        b.append(rect(x, 40, 168, 150, "#FFFFFF", col, 8, 1.5))
        b.append(f'<rect x="{x}" y="40" width="168" height="5" rx="2.5" fill="{col}"/>')
        b.append(t(x + 84, 68, title, size=9.6, weight="bold"))
        b.append(lines(x + 84, 94, body.split("\n"), size=9.2, fill=SLATE, gap=15))
        if i < 3:
            b.append(arrow(x + 170, 115, x + 186, 115, color=MUTED, sw=1.4, marker="an"))
    write_svg("ch01_approach_flow.svg", svg(w, h, "\n".join(b)))


def ch01_one_sided():
    fig, ax = plt.subplots(figsize=(6.2, 3.2))
    xl = np.linspace(0.3, 2.0, 200)
    xr = np.linspace(2.0, 3.7, 200)
    ax.plot(xl, 0.6 * xl + 0.8, color=BLUE, lw=2.2, label="left branch")
    ax.plot(xr, 3.2 - 0.35 * (xr - 2), color=GREEN, lw=2.2, label="right branch")
    ax.plot([2], [2.0], "o", ms=7, mfc="white", mec=BLUE, mew=2)
    ax.plot([2], [3.2], "o", ms=7, color=GREEN)
    ax.axvline(2, color=MUTED, ls=(0, (3, 3)), lw=1.0)
    ax.annotate("left limit = 2", xy=(1.97, 1.98), xytext=(0.55, 3.6), fontsize=9, color=BLUE,
                arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.1))
    ax.annotate("right limit = 3.2", xy=(2.05, 3.18), xytext=(2.35, 3.9), fontsize=9, color=GREEN,
                arrowprops=dict(arrowstyle="->", color=GREEN, lw=1.1))
    ax.text(2.06, 2.35, "the two sides disagree,\nso no limit exists", fontsize=8.6, color=RED)
    ax.set_xlabel("x")
    ax.set_ylabel("f(x)")
    ax.set_xlim(0, 3.9)
    ax.set_ylim(1.2, 4.5)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch01_one_sided.svg")


def ch01_continuity():
    fig, axes = plt.subplots(1, 3, figsize=(7.6, 2.5))
    x = np.linspace(0, 3, 200)
    axes[0].plot(x, 0.9 * x, color=GREEN, lw=2.2)
    axes[0].set_title("continuous", fontsize=10, color=NAVY)
    axes[1].plot(x[x <= 1.5], 0.9 * x[x <= 1.5], color=BLUE, lw=2.2)
    axes[1].plot(x[x >= 1.5], 0.9 * x[x >= 1.5] + 1.2, color=BLUE, lw=2.2)
    axes[1].plot([1.5], [1.35], "o", mfc="white", mec=BLUE, mew=2, ms=6)
    axes[1].plot([1.5], [2.55], "o", color=BLUE, ms=6)
    axes[1].set_title("jump", fontsize=10, color=NAVY)
    axes[2].plot(x, 0.9 * x, color=PURPLE, lw=2.2)
    axes[2].plot([1.5], [1.35], "o", mfc="white", mec=PURPLE, mew=2, ms=6)
    axes[2].set_title("hole", fontsize=10, color=NAVY)
    for ax in axes:
        ax.set_xticks([])
        ax.set_yticks([])
        for s in ("top", "right"):
            ax.spines[s].set_visible(False)
    save(fig, "ch01_continuity.svg")


# ── chapter 2: differentiation ──────────────────────────────────────────────
def ch02_first_principles():
    fig, ax = plt.subplots(figsize=(6.6, 3.3))
    xs = np.linspace(0.4, 3.6, 300)
    f = lambda t: 0.35 * t ** 2 + 1
    ax.plot(xs, f(xs), color=GREEN, lw=2.2)
    x0, h = 1.2, 1.1
    ax.plot([x0, x0], [0, f(x0)], color=MUTED, ls=(0, (3, 3)), lw=1.0)
    ax.plot([x0 + h, x0 + h], [0, f(x0 + h)], color=MUTED, ls=(0, (3, 3)), lw=1.0)
    ax.plot([x0, x0 + h], [f(x0), f(x0)], color=BLUE, lw=1.4)
    ax.plot([x0, x0 + h], [f(x0), f(x0 + h)], color=RED, lw=1.6)
    ax.plot([x0, x0 + h], [f(x0), f(x0 + h)], "o", color=NAVY, ms=5)
    ax.annotate("h", xy=(x0 + h / 2, f(x0) - 0.25), fontsize=10, color=BLUE)
    ax.annotate("f(x + h) − f(x)", xy=(x0 + h + 0.05, (f(x0) + f(x0 + h)) / 2),
                fontsize=8.6, color=RED, rotation=62)
    ax.text(2.45, 4.6, "gradient of the chord\n$\\dfrac{f(x+h)-f(x)}{h}$", fontsize=9.5, color=RED)
    ax.text(2.45, 3.4, "as $h \\to 0$ the chord\nbecomes the tangent:\n$f'(x) = 2(0.35x) = 0.7x$",
            fontsize=8.8, color=SLATE)
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    ax.set_xlim(0, 4.0)
    ax.set_ylim(0, 6.2)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch02_first_principles.svg")


def ch02_tangent_gradient():
    fig, ax = plt.subplots(figsize=(6.4, 3.1))
    xs = np.linspace(0.2, 3.4, 300)
    f = lambda t: t ** 2
    ax.plot(xs, f(xs), color=GREEN, lw=2.2, label="$y = x^2$")
    x0 = 1.4
    m = 2 * x0
    xt = np.linspace(0, 3.2, 2)
    ax.plot(xt, f(x0) + m * (xt - x0), color=RED, lw=1.8,
            label=f"tangent, gradient {m:g}")
    ax.plot([x0], [f(x0)], "o", color=NAVY, ms=6)
    ax.plot([x0, x0], [0, f(x0)], color=MUTED, ls=(0, (3, 3)), lw=1)
    ax.plot([0, x0], [f(x0), f(x0)], color=MUTED, ls=(0, (3, 3)), lw=1)
    ax.text(x0 + 0.08, -0.42, f"{x0:g}", fontsize=10, color=NAVY)
    ax.text(-0.35, f(x0) + 0.1, f"{f(x0):.2f}", fontsize=10, color=NAVY)
    ax.text(1.85, 5.1, "$f'(x) = 2x$", fontsize=11, color=RED)
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    ax.set_xlim(0, 3.6)
    ax.set_ylim(-0.9, 9)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    ax.legend(frameon=False, fontsize=9, loc="upper left")
    save(fig, "ch02_tangent_gradient.svg")


def ch02_rules_map():
    w, h = 760, 250
    b = [rect(0, 0, w, h, "#FFFFFF", NAVY, 10, 1.3),
         t(380, 28, "The Six Differentiation Rules You Need", size=12.5, weight="bold")]
    cards = [("Power", ["$y = x^n$", "$dy/dx = n x^(n-1)$"], GREEN),
             ("Constant multiple", ["$y = k f(x)$", "$dy/dx = k f'(x)$"], GREEN),
             ("Sum / difference", ["$y = f + g$", "$dy/dx = f' + g'$"], BLUE),
             ("Product", ["$y = u v$", "$dy/dx = u'v + uv'$"], AMBER),
             ("Quotient", ["$y = u/v$", "$dy/dx = (u'v - uv')/v^2$"], RED),
             ("Function of a function", ["$y = (a x + b)^n$", "$dy/dx = n a (a x + b)^(n-1)$"], PURPLE)]
    for i, (title, body, col) in enumerate(cards):
        x = 18 + (i % 3) * 244
        y = 52 + (i // 3) * 94
        b.append(rect(x, y, 226, 80, "#FFFFFF", col, 7, 1.4))
        b.append(f'<rect x="{x}" y="{y}" width="226" height="4" rx="2" fill="{col}"/>')
        b.append(t(x + 113, y + 21, title, size=9.4, weight="bold", fill=col))
        b.append(t(x + 113, y + 43, body[0], size=9.6))
        b.append(t(x + 113, y + 63, body[1], size=9.6))
    write_svg("ch02_rules_map.svg", svg(w, h, "\n".join(b)))


def ch02_second_derivative():
    fig, ax = plt.subplots(figsize=(6.2, 3.0))
    xs = np.linspace(-0.4, 3.6, 300)
    y = xs ** 3 - 3 * xs ** 2 + 2
    ax.plot(xs, y, color=GREEN, lw=2.2)
    ax.plot([0, 2], [2, -2], "o", color=NAVY, ms=5)
    ax.annotate("maximum\nf'(0)=0, f''(0)<0", xy=(0, 2), xytext=(-0.35, 4.8), fontsize=8.6,
                color=RED, arrowprops=dict(arrowstyle="->", color=RED, lw=1.0))
    ax.annotate("minimum\nf'(2)=0, f''(2)>0", xy=(2, -2), xytext=(2.2, 1.2), fontsize=8.6,
                color=BLUE, arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.0))
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch02_second_derivative.svg")


# ── chapter 3: applications ─────────────────────────────────────────────────
def ch03_stationary_flow():
    w, h = 760, 170
    b = [rect(0, 0, w, h, "#FFFFFF", GREEN, 10, 1.3)]
    steps = ["1. Differentiate f(x)", "2. Solve f'(x) = 0", "3. Test each x", "4. Answer the question asked"]
    for i, s in enumerate(steps):
        x = 16 + i * 186
        b.append(rect(x, 46, 170, 74, GREEN_LIGHT, GREEN, 8, 1.3))
        b.append(lines(x + 85, 78, s.split(" ", 1)[1].split("\n"), size=9.4, fill=NAVY))
        b.append(t(x + 12, 66, s.split(".")[0], size=9, fill=GREEN, anchor="start", weight="bold"))
        if i < 3:
            b.append(arrow(x + 172, 83, x + 186, 83, color=MUTED, sw=1.3, marker="an"))
    write_svg("ch03_stationary_flow.svg", svg(w, h, "\n".join(b)))


def ch03_curve_features():
    fig, ax = plt.subplots(figsize=(6.8, 3.2))
    xs = np.linspace(-1.4, 4.4, 400)
    y = (xs ** 3) / 3 - 2 * xs ** 2 + 3 * xs + 1
    ax.plot(xs, y, color=GREEN, lw=2.2)
    ax.axhline(0, color=MUTED, lw=0.9)
    ax.plot([1, 3], [y[np.argmin(abs(xs - 1))], y[np.argmin(abs(xs - 3))]], "o", color=RED, ms=6)
    ax.annotate("maximum", xy=(1, 2.33), xytext=(0.1, 5.2), fontsize=9, color=RED,
                arrowprops=dict(arrowstyle="->", color=RED, lw=1.0))
    ax.annotate("minimum", xy=(3, 1.0), xytext=(3.1, 3.6), fontsize=9, color=RED,
                arrowprops=dict(arrowstyle="->", color=RED, lw=1.0))
    ax.annotate("inflexion midway", xy=(2, 1.67), xytext=(1.2, -1.6), fontsize=8.6, color=PURPLE,
                arrowprops=dict(arrowstyle="->", color=PURPLE, lw=1.0))
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch03_curve_features.svg")


def ch03_rate_chain():
    w, h = 760, 190
    b = [rect(0, 0, w, h, "#FFFFFF", BLUE, 10, 1.3),
         t(380, 30, "Rate of Change: the Chain of Three Quantities", size=12, weight="bold", fill=NAVY)]
    boxes = [("Volume", "$V = 4/3 pi r^3$"), ("Radius", "$r$ changes with $t$"), ("Time", "$dV/dt$")]
    for i, (title, sub) in enumerate(boxes):
        x = 60 + i * 220
        b.append(rect(x, 56, 180, 76, BLUE_LIGHT, BLUE, 8, 1.3))
        b.append(t(x + 90, 84, title, size=10.5, weight="bold", fill=NAVY))
        b.append(t(x + 90, 108, sub, size=10, fill=SLATE))
        if i < 2:
            b.append(arrow(x + 182, 94, x + 200, 94, color=BLUE, sw=1.5, marker="an"))
    b.append(t(380, 160, "$dV/dt = (dV/dr)(dr/dt)$ — multiply the rates along the chain", size=10, fill=GREEN))
    write_svg("ch03_rate_chain.svg", svg(w, h, "\n".join(b)))


# ── chapter 4: integration ──────────────────────────────────────────────────
def ch04_antiderivative():
    w, h = 760, 200
    b = [rect(0, 0, w, h, "#FFFFFF", PURPLE, 10, 1.3),
         t(380, 30, "Integration reverses differentiation — one power up, divide by the new power", size=11, weight="bold", fill=NAVY)]
    rows = [("$integral x^n dif x = x^(n+1)/(n+1) + c$", "power rule for $n != -1$"),
            ("$integral k dif x = k x + c$", "a constant integrates to a linear term"),
            ("$integral (f + g) dif x = integral f dif x + integral g dif x$", "integrate term by term")]
    for i, (main, note) in enumerate(rows):
        y = 62 + i * 44
        b.append(rect(40, y, 680, 34, PURPLE_LIGHT if i % 2 == 0 else "#FFFFFF", PURPLE, 6, 1.0))
        b.append(t(210, y + 23, main, size=10))
        b.append(t(560, y + 23, note, size=9, fill=SLATE))
    write_svg("ch04_antiderivative.svg", svg(w, h, "\n".join(b)))


def ch04_area_under_curve():
    fig, ax = plt.subplots(figsize=(6.6, 3.2))
    xs = np.linspace(0, 3, 400)
    f = lambda t: 4 - 0.5 * t ** 2
    ax.plot(xs, f(xs), color=GREEN, lw=2.2, label="$y = 4 - \\frac{x^2}{2}$")
    a, b = 0.5, 2.4
    xa = np.linspace(a, b, 300)
    ax.fill_between(xa, 0, f(xa), color=GREEN_MID, alpha=0.75, zorder=1)
    ax.plot([a, a], [0, f(a)], color=MUTED, ls=(0, (3, 3)), lw=1)
    ax.plot([b, b], [0, f(b)], color=MUTED, ls=(0, (3, 3)), lw=1)
    ax.text(a - 0.02, -0.45, "a", fontsize=11, color=NAVY, ha="center")
    ax.text(b, -0.45, "b", fontsize=11, color=NAVY, ha="center")
    ax.text(1.45, 1.0, "area $= \\int_a^b f(x)\\,dx$", fontsize=11, color=NAVY)
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    ax.set_xlim(0, 3.2)
    ax.set_ylim(-0.8, 4.6)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch04_area_under_curve.svg")


def ch04_trapezium_rule():
    fig, ax = plt.subplots(figsize=(6.4, 3.0))
    f = lambda t: 3 + np.sin(t)
    xs = np.linspace(0.3, 3.3, 300)
    ax.plot(xs, f(xs), color=GREEN, lw=2.0)
    pts = np.linspace(0.6, 3.0, 4)
    for i in range(len(pts) - 1):
        x0, x1 = pts[i], pts[i + 1]
        ax.fill_between([x0, x0, x1, x1], 0, [f(x0), f(x0), f(x1), f(x1)],
                        color=BLUE_LIGHT, alpha=0.9, zorder=1)
        ax.plot([x0, x0], [0, f(x0)], color=BLUE, lw=0.9)
        ax.plot([x1, x1], [0, f(x1)], color=BLUE, lw=0.9)
        ax.plot([x0, x1], [f(x0), f(x1)], color=BLUE, lw=1.2)
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    ax.set_ylim(0, 4.6)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    ax.text(1.9, 4.05, "each strip is a trapezium", fontsize=9.5, color=BLUE)
    save(fig, "ch04_trapezium_rule.svg")


# ── chapter 5: applications of integration ──────────────────────────────────
def ch05_area_between():
    fig, ax = plt.subplots(figsize=(6.6, 3.1))
    xs = np.linspace(-0.4, 2.6, 300)
    upper = 3 + xs
    lower = xs ** 2 + 1
    ax.plot(xs, upper, color=GREEN, lw=2.0, label="upper curve")
    ax.plot(xs, lower, color=PURPLE, lw=2.0, label="lower curve")
    inter = np.linspace(0, 2, 300)
    ax.fill_between(inter, inter ** 2 + 1, 3 + inter, color=GREEN_MID, alpha=0.7)
    ax.plot([0, 2], [3, 5], "o", color=NAVY, ms=5)
    ax.text(0.75, 3.7, "area $= \\int_0^2 (\\text{upper} - \\text{lower})\\,dx$", fontsize=9.4)
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    ax.legend(frameon=False, fontsize=8.6, loc="upper left")
    save(fig, "ch05_area_between.svg")


def ch05_signed_area():
    fig, ax = plt.subplots(figsize=(6.4, 3.0))
    xs = np.linspace(-0.5, 3.6, 400)
    y = xs ** 2 - 3 * xs
    ax.plot(xs, y, color=GREEN, lw=2.2)
    ax.axhline(0, color=MUTED, lw=0.9)
    x1 = np.linspace(0, 3, 200)
    ax.fill_between(x1, 0, x1 ** 2 - 3 * x1, color=RED_LIGHT, alpha=0.85)
    ax.fill_between(x1, x1 ** 2 - 3 * x1, 0, where=(x1 ** 2 - 3 * x1) < 0, color=RED_LIGHT, alpha=0.85)
    ax.axvline(3, color=MUTED, ls=(0, (3, 3)), lw=1)
    ax.text(0.55, -1.5, "below the axis:\nthe integral is negative", fontsize=8.8, color=RED)
    ax.text(1.9, 1.6, "area = |integral|,\nso split at the root", fontsize=8.8, color=SLATE)
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch05_signed_area.svg")


def ch05_velocity_distance():
    fig, ax = plt.subplots(figsize=(6.2, 2.9))
    t = np.linspace(0, 4, 300)
    v = 6 - 1.5 * t
    ax.plot(t, v, color=GREEN, lw=2.2)
    ax.axhline(0, color=MUTED, lw=0.9)
    tt = np.linspace(0, 4, 200)
    ax.fill_between(tt, 0, 6 - 1.5 * tt, where=(6 - 1.5 * tt) > 0, color=GREEN_MID, alpha=0.7)
    ax.fill_between(tt, 0, 6 - 1.5 * tt, where=(6 - 1.5 * tt) < 0, color=RED_LIGHT, alpha=0.9)
    ax.text(0.7, 2.0, "distance", fontsize=9.5, color=GREEN)
    ax.text(3.2, -1.2, "backwards", fontsize=9.5, color=RED)
    ax.set_xlabel("time (s)")
    ax.set_ylabel("velocity (m/s)")
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    ax.grid(color="#E2E8F0", lw=0.8)
    ax.set_axisbelow(True)
    save(fig, "ch05_velocity_distance.svg")
