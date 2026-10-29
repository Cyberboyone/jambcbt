#!/usr/bin/env python3
"""Build the two cumulative mock papers with shuffled, verified answer keys.

Question data lives in MOCK1 / MOCK2 as (stem, correct, [three distractors],
solution). Options are shuffled deterministically and the key is derived from
the shuffle, exactly as for the chapter drills.
"""

from __future__ import annotations

import random
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
from qmath import mc  # noqa: E402

OUT = Path(__file__).resolve().parent.parent
LETTERS = "ABCD"


def positions(n: int, seed: int) -> list[int]:
    rng = random.Random(seed)
    out = []
    while len(out) < n:
        block = [0, 1, 2, 3]
        rng.shuffle(block)
        out.extend(block)
    return out[:n]


def render(number: int, title: str, subtitle: str, intro_lines: list[str],
           qdata: list[tuple], chapter_note: str) -> str:
    qs = []
    for stem, correct, wrong, sol in qdata:
        qs.append(mc(stem, correct, list(wrong), sol))
    n = len(qs)
    pos = positions(n, seed=number * 17 + 3)
    keys, ordered = [], []
    for (stem, opts, _idx, sol), p in zip(qs, pos):
        rest = [o for o in opts[1:]]
        new = opts[:]
        correct = new.pop(0)
        new.insert(p, correct)
        keys.append(LETTERS[p])
        ordered.append((stem, new, sol))

    L = ['#import "template.typ": *', ""]
    L.append(f'#current-chapter.update("{title}")')
    L.append("#pagebreak()")
    L.append("")
    L.append("#block(")
    L.append("  width: 100%,")
    L.append("  fill: jamb-navy,")
    L.append("  stroke: 1.5pt + jamb-bright,")
    L.append("  radius: 10pt,")
    L.append("  inset: 18pt,")
    L.append(")[")
    L.append(f'  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[{title.upper()}]')
    L.append("  #v(6pt)")
    L.append(f'  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[{subtitle}]')
    L.append("]")
    L.append("")
    L.append("#v(4pt)")
    for line in intro_lines:
        L.append(line)
    L.append("")
    L.append(f"== {title} — Questions")
    L.append("")
    for i, (stem, opts, _sol) in enumerate(ordered, 1):
        parts = ", ".join(f"[{o}]" for o in opts)
        L.append(f"#mcq({i}, [{stem}], {parts})")
        L.append("")
    L.append("#pagebreak()")
    L.append("")
    L.append(f"== {title} — Answer Key")
    L.append("")
    L.append("#answer-key-grid((")
    for s in range(0, n, 10):
        chunk = ", ".join(f'"{k}"' for k in keys[s:s + 10])
        L.append(f"  {chunk},")
    L.append("))")
    L.append("")
    L.append(chapter_note)
    L.append("")
    L.append(f"== {title} — Complete Solutions")
    L.append("")
    for i, (_stem, _opts, sol) in enumerate(ordered, 1):
        L.append(f'#sol-item({i}, "{keys[i - 1]}")[')
        for ln in sol.strip().splitlines():
            L.append(f"  {ln.strip()}")
        L.append("]")
        L.append("")
    return "\n".join(L) + "\n"


# ══════════════════════════════════════════════════════════════════════════
MOCK1 = [
    ("Make $x$ the subject of $y = 4x - 7$.", "$(y + 7)/4$",
     ["$(y - 7)/4$", "$4y + 7$", "$(7 - y)/4$"],
     "Add $7$, then divide by $4$: $x = (y + 7)/4$. *Chapter 1.*"),
    ("Given $1/f = 1/u + 1/v$ with $u = 8$ and $v = 8$, find $f$.", "$4$",
     ["$16$", "$8$", "$2$"],
     "$f = u v/(u + v) = 64/16 = 4$; indeed $1/8 + 1/8 = 1/4$. *Chapter 1.*"),
    ("Make $t$ the subject of $s = 1/2 a t^2$.", "$sqrt(2s/a)$",
     ["$2s/a$", "$sqrt(s/a)$", "$2a/s$"],
     "Multiply by $2$: $a t^2 = 2s$, so $t^2 = 2s/a$ and $t = sqrt(2s/a)$. *Chapter 1.*"),
    ("Find the remainder when $x^3 - 2x^2 + 3x - 4$ is divided by $(x - 2)$.", "$2$",
     ["$-2$", "$6$", "$0$"],
     "$P(2) = 8 - 8 + 6 - 4 = 2$. *Chapter 2.*"),
    ("Which is a factor of $x^3 - 4x^2 + x + 6$?", "$(x - 2)$",
     ["$(x + 2)$", "$(x - 6)$", "$(x + 3)$"],
     "$P(2) = 8 - 16 + 2 + 6 = 0$, so $(x - 2)$ is a factor; indeed the cubic is "
     "$(x - 2)(x - 3)(x + 1)$. *Chapter 2.*"),
    ("If $(x - 3)$ is a factor of $x^3 - 7x + k$, find $k$.", "$-6$",
     ["$6$", "$12$", "$-12$"],
     "$P(3) = 27 - 21 + k = 0$, so $k = -6$. *Chapter 2.*"),
    ("Factorise $x^2 - 5x - 14$.", "$(x - 7)(x + 2)$",
     ["$(x + 7)(x - 2)$", "$(x - 14)(x + 1)$", "$(x - 5)(x - 14)$"],
     "Product $-14$, sum $-5$: the pair is $-7$ and $2$. *Chapter 3.*"),
    ("Solve $2x^2 + 5x - 3 = 0$.", "$x = 1/2$ or $x = -3$",
     ["$x = -1/2$ or $x = 3$", "$x = 1$ or $x = -3$", "$x = 3/2$ or $x = -1$"],
     "Split the middle term: $2x^2 + 6x - x - 3 = 2x(x + 3) - 1(x + 3)$, so "
     "$(2x - 1)(x + 3) = 0$. *Chapter 3.*"),
    ("The roots of $x^2 - 6x + 5 = 0$ are $alpha$ and $beta$. Find $alpha^2 + beta^2$.", "$26$",
     ["$36$", "$16$", "$11$"],
     "$alpha + beta = 6$, $alpha beta = 5$, so $alpha^2 + beta^2 = 36 - 10 = 26$. *Chapter 3.*"),
    ("For what values of $k$ does $x^2 + k x + 16 = 0$ have equal roots?", "$plus.minus 8$",
     ["$8$ only", "$plus.minus 4$", "$4$ only"],
     "$Delta = k^2 - 64 = 0$, so $k = plus.minus 8$; both signs give a repeated root. *Chapter 3.*"),
    ("Express $x^2 - 6x + 11$ in the form $(x - h)^2 + k$.", "$(x - 3)^2 + 2$",
     ["$(x - 3)^2 - 2$", "$(x + 3)^2 + 2$", "$(x - 6)^2 + 11$"],
     "Complete the square: $x^2 - 6x + 11 = (x - 3)^2 - 9 + 11 = (x - 3)^2 + 2$. *Chapter 3.*"),
    ("The quadratic whose roots are $3$ and $-5$ is", "$x^2 + 2x - 15 = 0$",
     ["$x^2 - 2x - 15 = 0$", "$x^2 + 8x - 15 = 0$", "$x^2 - 8x + 15 = 0$"],
     "Sum $= -2$ and product $= -15$, so $x^2 - (-2)x + (-15) = 0$. *Chapter 3.*"),
    ("Solve $3x + 2y = 16$ and $4x - y = 3$ simultaneously.", "$x = 2, y = 5$",
     ["$x = 5, y = 2$", "$x = 3, y = 4$", "$x = 4, y = 3$"],
     "From the second, $y = 4x - 3$; substituting gives $3x + 8x - 6 = 16$, so $x = 2$ "
     "and $y = 5$. Check: $8 - 5 = 3$ ✓ *Chapter 4.*"),
    ("The equations $2x + 3y = 7$ and $4x + 6y = 21$ have", "no solution",
     ["one solution", "two solutions", "infinitely many solutions"],
     "Coefficients are proportional ($2/4 = 3/6$) but constants are not ($7/21$), so the "
     "lines are parallel. *Chapter 4.*"),
    ("A two-digit number has digit sum $9$. Reversing its digits increases it by $27$. Find it.", "$36$",
     ["$63$", "$45$", "$54$"],
     "$10b + a - (10a + b) = 9(b - a) = 27$, so $b - a = 3$ with $a + b = 9$: $a = 3$, $b = 6$. *Chapter 4.*"),
    ("Solve $y = x + 2$ and $x^2 + y^2 = 10$.", "$(1, 3)$ and $(-3, -1)$",
     ["$(3, 1)$ and $(-1, -3)$", "$(-1, 1)$ and $(3, 3)$", "$(2, 4)$ and $(-2, 0)$"],
     "Substituting gives $2x^2 + 4x - 6 = 0$, i.e. $x^2 + 2x - 3 = 0$, so $x = 1$ or $x = -3$ "
     "and $y = 3$ or $y = -1$. *Chapter 4.*"),
    ("Solve $5 - 2x < 11$.", "$x > -3$", ["$x < -3$", "$x > 3$", "$x < 3$"],
     "$-2x < 6$; dividing by $-2$ reverses the sign: $x > -3$. *Chapter 5.*"),
    ("Solve $x^2 - x - 6 > 0$.", "$x < -2$ or $x > 3$",
     ["$-2 < x < 3$", "$x > 2$ or $x < -3$", "$-3 < x < 2$"],
     "$(x - 3)(x + 2) > 0$: the parabola is positive outside its roots. *Chapter 5.*"),
    ("The integer values of $x$ satisfying $-3 <= 2x + 1 < 7$ are",
     "$-2, -1, 0, 1, 2$", ["$-1, 0, 1, 2$", "$-2, -1, 0, 1$", "$-3, -2, -1, 0, 1$"],
     "Subtract $1$: $-4 <= 2x < 6$; halve: $-2 <= x < 3$. *Chapter 5.*"),
    ("Solve $|2x - 1| <= 5$.", "$-2 <= x <= 3$", ["$-3 <= x <= 2$", "$x <= 3$", "$-2 < x < 3$"],
     "$-5 <= 2x - 1 <= 5$ gives $-4 <= 2x <= 6$, so $-2 <= x <= 3$. *Chapter 5.*"),
    ("If $y$ varies directly as $x^2$ and $y = 27$ when $x = 3$, find $y$ when $x = 5$.", "$75$",
     ["$45$", "$125$", "$60$"],
     "$27 = 9k$ gives $k = 3$, so $y = 3(25) = 75$. *Chapter 6.*"),
    ("If $y$ varies inversely as $x$ and $y = 6$ when $x = 4$, find $x$ when $y = 8$.", "$3$",
     ["$48$", "$2$", "$12$"],
     "$x y = 24$, so $x = 24/8 = 3$. *Chapter 6.*"),
    ("$z$ varies jointly as $x$ and $y^2$. If $z = 24$ when $x = 3$ and $y = 2$, find $z$ when $x = 2$ and $y = 3$.",
     "$36$", ["$54$", "$24$", "$18$"],
     "$24 = k(3)(4) = 12k$, so $k = 2$ and $z = 2(2)(9) = 36$. *Chapter 6.*"),
    ("$p$ is partly constant and partly varies as $q$. When $q = 2$, $p = 9$; when $q = 5$, $p = 18$. Find $p$ when $q = 8$.",
     "$27$", ["$24$", "$30$", "$21$"],
     "$p = k q + c$: $9 = 2k + c$, $18 = 5k + c$, so $k = 3$, $c = 3$ and $p = 27$. *Chapter 6.*"),
    ("The 12th term of the A.P. $4, 9, 14, dots$ is", "$59$",
     ["$54$", "$64$", "$49$"],
     "$T_12 = 4 + 11(5) = 59$. *Chapter 7.*"),
    ("The sum of the first 25 terms of the A.P. $2, 6, 10, dots$ is", "$1250$",
     ["$1200$", "$1300$", "$1100$"],
     "$S_25 = frac(25, 2)[4 + 24(4)] = frac(25, 2)(100) = 1250$. *Chapter 7.*"),
    ("How many terms are in the A.P. $3, 7, 11, dots, 99$?", "$25$",
     ["$24$", "$26$", "$23$"],
     "$99 = 3 + (n - 1)4$ gives $n - 1 = 24$, so $n = 25$. *Chapter 7.*"),
    ("The 6th term of the G.P. $2, 6, 18, dots$ is", "$486$",
     ["$162$", "$1458$", "$324$"],
     "$T_6 = 2(3^5) = 486$. *Chapter 7.*"),
    ("Find the sum to infinity of $12 + 6 + 3 + dots$", "$24$",
     ["$18$", "$36$", "$48$"],
     "$a = 12$, $r = 1/2$, so $S_infinity = 12/(1/2) = 24$. *Chapter 7.*"),
    ("Express $0.dot(6)$ as a fraction.", "$frac(2, 3)$",
     ["$frac(3, 5)$", "$frac(6, 10)$", "$frac(1, 6)$"],
     "G.P. with $a = frac(6, 10)$ and $r = frac(1, 10)$: $frac(6/10, 9/10) = frac(2, 3)$. *Chapter 7.*"),
    ("If $a * b = 3a - 2b$, evaluate $4 * 5$.", "$2$",
     ["$22$", "$-2$", "$7$"],
     "$3(4) - 2(5) = 12 - 10 = 2$. *Chapter 8.*"),
    ("If $a * b = a b + a + b$, find the identity element.", "$0$",
     ["$1$", "$-1$", "$2$"],
     "$a e + a + e = a$ gives $e(a + 1) = 0$, so $e = 0$ for all $a$. *Chapter 8.*"),
    ("If $a * b = a + b - 4$, the inverse of $6$ is", "$2$",
     ["$4$", "$-2$", "$10$"],
     "Identity: $e = 4$. Solve $6 + b - 4 = 4$, giving $b = 2$. *Chapter 8.*"),
    ("Evaluate $det mat(5, 3; -2, 4)$", "$26$",
     ["$14$", "$20$", "$-26$"],
     "$5(4) - 3(-2) = 20 + 6 = 26$. *Chapter 9.*"),
    ("If $A = mat(2, 1; 5, 3)$, find $det A$.", "$1$",
     ["$11$", "$-1$", "$6$"],
     "$2(3) - 1(5) = 1$, so $A$ is invertible. *Chapter 9.*"),
    ("The inverse of $mat(3, 1; 2, 1)$ is", "$mat(1, -1; -2, 3)$",
     ["$frac(1, 5) mat(1, -1; -2, 3)$", "$mat(3, -1; -2, 1)$", "$frac(1, 5) mat(1, 1; 2, 3)$"],
     "$det = 3 - 2 = 1$; swap the diagonal, negate the off-diagonal: $mat(1, -1; -2, 3)$. *Chapter 9.*"),
    ("If $A = mat(1, 2; 3, 4)$ and $B = mat(2, 0; 1, 2)$, find $A B$.", "$mat(4, 4; 10, 8)$",
     ["$mat(2, 0; 3, 8)$", "$mat(4, 10; 4, 8)$", "$mat(6, 6; 12, 12)$"],
     "Row times column: $(1)(2) + (2)(1) = 4$, $(1)(0) + (2)(2) = 4$, "
     "$(3)(2) + (4)(1) = 10$, $(3)(0) + (4)(2) = 8$. *Chapter 9.*"),
    ("The value of $x$ for which $det mat(x, 3; 2, x) = 10$ is", "$plus.minus 4$",
     ["$4$ only", "$plus.minus 6$", "$16$"],
     "$x^2 - 6 = 10$, so $x^2 = 16$ and $x = plus.minus 4$. *Chapter 9.*"),
    ("The degree of the polynomial $2x^3(x^2 - 1) - x$ is", "$5$",
     ["$3$", "$6$", "$4$"],
     "$2x^3(x^2 - 1) = 2x^5 - 2x^3$; the leading term is $x^5$. *Chapter 2.*"),
    ("When a polynomial is divided by $(x + 2)$ the remainder is $0$. Which statement is true?",
     "$(x + 2)$ is a factor and $P(-2) = 0$",
     ["$(x - 2)$ is a factor and $P(2) = 0$", "$P(0) = 2$", "the quotient has degree $0$"],
     "A zero remainder means the divisor divides exactly, so it is a factor and $P(-2) = 0$. *Chapter 2.*"),
]

# ══════════════════════════════════════════════════════════════════════════
MOCK2 = [
    ("Make $r$ the subject of $V = 4/3 pi r^3$.", "$root(3, (3V)/(4pi))$",
     ["$root(3, V/(4pi))$", "$(3V)/(4pi)$", "$root(3, (4V)/(3pi))$"],
     "Multiply by $3$: $3V = 4 pi r^3$. Divide by $4pi$: $r^3 = (3V)/(4pi)$. "
     "Cube root: $r = root(3, (3V)/(4pi))$. *Chapter 1.*"),
    ("Make $x$ the subject of $y = (2x + 3)/(x - 1)$.", "$(y + 3)/(y - 2)$",
     ["$(y - 3)/(y + 2)$", "$(y + 3)/(2 - y)$", "$(3 - y)/(y - 2)$"],
     "Cross-multiply: $y(x - 1) = 2x + 3$, so $y x - y = 2x + 3$. Collect: "
     "$x(y - 2) = y + 3$, hence $x = (y + 3)/(y - 2)$. *Chapter 1.*"),
    ("Make $h$ the subject of $A = 1/2 (a + b) h$.", "$(2A)/(a + b)$",
     ["$A/(2(a + b))$", "$(2A)/(a - b)$", "$(2A - a)/b$"],
     "Multiply by $2$: $2A = (a + b) h$. Divide by the bracket: $h = (2A)/(a + b)$. "
     "*Chapter 1.*"),
    ("Given $T = 2 pi sqrt(L/g)$, find $L$ when $T = 4pi$ and $g = 10$.", "$40$",
     ["$160$", "$20$", "$10$"],
     "Square both sides: $T^2 = 4 pi^2 L/g$, so $L = g T^2/(4 pi^2)$. "
     "Substituting: $L = 10 times 16 pi^2/(4 pi^2) = 40$. *Chapter 1.*"),
    ("Find the remainder when $2x^3 - 3x^2 + x - 5$ is divided by $(x + 1)$.", "$-11$",
     ["$-9$", "$-3$", "$1$"],
     "By the remainder theorem the remainder is $P(-1) = -2 - 3 - 1 - 5 = -11$. *Chapter 2.*"),
    ("If $(2x - 1)$ is a factor of $2x^3 - 5x^2 + k x - 1$, find $k$.", "$4$",
     ["$-4$", "$2$", "$8$"],
     "A factor gives a zero remainder at $x = 1/2$: $1/4 - 5/4 + k/2 - 1 = 0$, so "
     "$k/2 = 2$ and $k = 4$. *Chapter 2.*"),
    ("Divide $x^3 - 8$ by $(x - 2)$.", "$x^2 + 2x + 4$",
     ["$x^2 - 2x + 4$", "$x^2 + 2x - 4$", "$x^2 - 4$"],
     "A difference of cubes: $x^3 - 8 = (x - 2)(x^2 + 2x + 4)$, so the quotient is "
     "$x^2 + 2x + 4$ with zero remainder. *Chapter 2.*"),
    ("If $(x - 2)$ is a factor of $x^3 + a x^2 - 4x + 4$, find $a$.", "$-1$",
     ["$1$", "$2$", "$-2$"],
     "Set $P(2) = 0$: $8 + 4a - 8 + 4 = 0$, so $4a = -4$ and $a = -1$. *Chapter 2.*"),
    ("Factorise completely $x^3 + 2x^2 - 5x - 6$.", "$(x - 2)(x + 1)(x + 3)$",
     ["$(x + 2)(x - 1)(x - 3)$", "$(x - 2)(x - 1)(x + 3)$", "$(x + 2)(x + 1)(x - 3)$"],
     "$P(2) = 8 + 8 - 10 - 6 = 0$, so $(x - 2)$ is a factor. Division gives "
     "$x^2 + 4x + 3 = (x + 1)(x + 3)$. *Chapter 2.*"),
    ("Solve $3x^2 - 5x - 2 = 0$.", "$x = 2$ or $x = -1/3$",
     ["$x = -2$ or $x = 1/3$", "$x = 1$ or $x = -2/3$", "$x = 2$ or $x = 1/3$"],
     "Split the middle term: $3x^2 - 6x + x - 2 = 3x(x - 2) + 1(x - 2)$, so "
     "$(3x + 1)(x - 2) = 0$. *Chapter 3.*"),
    ("For $2x^2 - 7x + 3 = 0$, find the sum and the product of the roots.", "$7/2$ and $3/2$",
     ["$-7/2$ and $3/2$", "$7/2$ and $-3/2$", "$7$ and $3$"],
     "Sum $= -b/a = 7/2$; product $= c/a = 3/2$. The sign belongs to the sum only. *Chapter 3.*"),
    ("Find the minimum value of $x^2 - 6x + 5$.", "$-4$",
     ["$4$", "$-5$", "$3$"],
     "Complete the square: $x^2 - 6x + 5 = (x - 3)^2 - 4$, which is least when "
     "$x = 3$, giving $-4$. *Chapter 3.*"),
    ("Express $2x^2 - 8x + 5$ in the form $a(x - h)^2 + k$.", "$2(x - 2)^2 - 3$",
     ["$2(x - 2)^2 + 3$", "$2(x - 4)^2 - 11$", "$(x - 2)^2 - 3$"],
     "Factor out $2$: $2(x^2 - 4x) + 5 = 2[(x - 2)^2 - 4] + 5 = 2(x - 2)^2 - 3$. *Chapter 3.*"),
    ("The equation $x^2 + (k + 2)x + 9 = 0$ has equal roots. Find the positive value of $k$.",
     "$4$", ["$-8$", "$8$", "$1$"],
     "Equal roots need $Delta = 0$: $(k + 2)^2 - 36 = 0$, so $k + 2 = plus.minus 6$, giving "
     "$k = 4$ or $k = -8$. The positive value is $4$. *Chapter 3.*"),
    ("Solve $3x + 2y = 12$ and $x - 2y = 4$.", "$x = 4, y = 0$",
     ["$x = 0, y = 4$", "$x = 2, y = 3$", "$x = 4, y = 1$"],
     "The $y$ coefficients are opposites, so add: $4x = 16$, $x = 4$. Then "
     "$12 + 2y = 12$, so $y = 0$. *Chapter 4.*"),
    ("Solve $5x - 3y = 11$ and $2x + 3y = 17$.", "$x = 4, y = 3$",
     ["$x = 3, y = 4$", "$x = 4, y = -3$", "$x = 2, y = 5$"],
     "Add to eliminate $y$: $7x = 28$, $x = 4$. Then $20 - 3y = 11$, so $y = 3$. *Chapter 4.*"),
    ("How many solutions has the system $y = 2x + 3$, $y = 2x - 5$?", "None",
     ["Exactly one", "Exactly two", "Infinitely many"],
     "Both lines have gradient $2$ but different intercepts, so they are parallel and "
     "never meet. *Chapter 4.*"),
    ("Solve $x + y = 5$ and $x^2 + y^2 = 13$.", "$(2, 3)$ and $(3, 2)$",
     ["$(1, 4)$ and $(4, 1)$", "$(2, 3)$ only", "$(5, 0)$ and $(0, 5)$"],
     "From the linear equation $y = 5 - x$, so $x^2 + (5 - x)^2 = 13$ gives "
     "$2x^2 - 10x + 12 = 0$, that is $x^2 - 5x + 6 = 0$. *Chapter 4.*"),
    ("Solve $3x - 7 < 5x + 3$.", "$x > -5$",
     ["$x < -5$", "$x > 5$", "$x < 5$"],
     "Collect: $-2x < 10$. Dividing by $-2$ reverses the sign: $x > -5$. *Chapter 5.*"),
    ("Solve $x^2 - x - 6 < 0$.", "$-2 < x < 3$",
     ["$x < -2$ or $x > 3$", "$-3 < x < 2$", "$x < 3$"],
     "$x^2 - x - 6 = (x - 3)(x + 2)$, roots $-2$ and $3$. The parabola opens upwards, so it "
     "is below the axis between the roots. *Chapter 5.*"),
    ("How many integers satisfy $-3 < x <= 4$?", "$7$",
     ["$6$", "$8$", "$5$"],
     "The integers are $-2, -1, 0, 1, 2, 3, 4$ — seven in all, since $-3$ is excluded and "
     "$4$ is included. *Chapter 5.*"),
    ("Solve $|2x - 3| <= 5$.", "$-1 <= x <= 4$",
     ["$x <= 4$", "$-4 <= x <= 1$", "$1 <= x <= 4$"],
     "The modulus inequality becomes $-5 <= 2x - 3 <= 5$. Add $3$: $-2 <= 2x <= 8$; "
     "divide by $2$: $-1 <= x <= 4$. *Chapter 5.*"),
    ("$y$ varies directly as $x$, and $y = 12$ when $x = 3$. Find $y$ when $x = 7$.", "$28$",
     ["$21$", "$24$", "$84$"],
     "$y = k x$ with $k = 12/3 = 4$, so $y = 4 times 7 = 28$. *Chapter 6.*"),
    ("$y$ varies inversely as $x^2$. If $y = 2$ when $x = 3$, find $y$ when $x = 6$.", "$1/2$",
     ["$1$", "$4$", "$1/4$"],
     "$y = k/x^2$ with $k = 2 times 9 = 18$, so $y = 18/36 = 1/2$. *Chapter 6.*"),
    ("$y$ varies jointly as $x$ and $z$ and inversely as $w$. If $y = 6$ when $x = 2$, $z = 3$, "
     "$w = 4$, find $y$ when $x = 5$, $z = 2$, $w = 8$.", "$5$",
     ["$10$", "$2.5$", "$20$"],
     "$y = k x z/w$, so $6 = k(6)/4$ and $k = 4$. Then $y = 4(10)/8 = 5$. *Chapter 6.*"),
    ("$y$ is partly constant and partly varies as $x$. If $y = 11$ when $x = 2$ and $y = 21$ "
     "when $x = 4$, find $y$ when $x = 6$.", "$31$",
     ["$41$", "$26$", "$36$"],
     "Write $y = k x + c$. Subtracting the two data pairs: $2k = 10$, so $k = 5$ and "
     "$c = 11 - 10 = 1$. Hence $y = 5(6) + 1 = 31$. *Chapter 6.*"),
    ("The $5$th term of the A.P. $3, 7, 11, dots$ is", "$19$",
     ["$23$", "$15$", "$20$"],
     "$a = 3$, $d = 4$, so $T_5 = 3 + 4(4) = 19$. *Chapter 7.*"),
    ("Find the sum of the first $20$ terms of $2, 5, 8, dots$", "$610$",
     ["$600$", "$620$", "$305$"],
     "$S_20 = 20/2 [2(2) + 19(3)] = 10(4 + 57) = 10(61) = 610$. *Chapter 7.*"),
    ("The $5$th term of the G.P. $2, 6, 18, dots$ is", "$162$",
     ["$54$", "$486$", "$108$"],
     "$T_5 = 2(3)^4 = 2(81) = 162$. *Chapter 7.*"),
    ("Find the sum to infinity of $1 + 1/3 + 1/9 + dots$", "$3/2$",
     ["$2$", "$4/3$", "$9/4$"],
     "$a = 1$, $r = 1/3$, so $S_infinity = 1/(1 - 1/3) = 3/2$. *Chapter 7.*"),
    ("In an A.P. the $3$rd term is $10$ and the $7$th is $22$. The first term is", "$4$",
     ["$6$", "$3$", "$7$"],
     "$T_7 - T_3 = 4d = 12$, so $d = 3$ and $a = 10 - 2(3) = 4$. *Chapter 7.*"),
    ("Insert two geometric means between $3$ and $24$.", "$6$ and $12$",
     ["$9$ and $15$", "$8$ and $16$", "$6$ and $18$"],
     "With two means, $24 = 3 r^3$, so $r^3 = 8$ and $r = 2$; the terms are $3, 6, 12, 24$. "
     "*Chapter 7.*"),
    ("If $a * b = a + b + a b$, find $2 * 3$.", "$11$",
     ["$6$", "$5$", "$12$"],
     "Substitute: $2 + 3 + 2(3) = 11$. *Chapter 8.*"),
    ("If $a * b = a + b - 4$, the identity element is", "$4$",
     ["$0$", "$-4$", "$1$"],
     "The identity satisfies $a * e = a$: $a + e - 4 = a$, so $e = 4$. *Chapter 8.*"),
    ("If $a * b = a + b + a b$, the inverse of $2$ under $*$ is", "$-2/3$",
     ["$-2$", "$2/3$", "$-1/3$"],
     "The identity is $0$, so solve $2 + b + 2b = 0$, giving $3b = -2$ and $b = -2/3$. "
     "*Chapter 8.*"),
    ("The determinant of $mat(3, 2; 1, 4)$ is", "$10$",
     ["$14$", "$2$", "$12$"],
     "$det = 3(4) - 2(1) = 10$. *Chapter 9.*"),
    ("If $A = mat(1, 2; 3, 4)$ and $B = mat(0, 1; 1, 0)$, find $A B$.", "$mat(2, 1; 4, 3)$",
     ["$mat(0, 2; 3, 0)$", "$mat(1, 0; 0, 4)$", "$mat(3, 2; 7, 4)$"],
     "Multiplying by $B$ interchanges the two columns of $A$, so $A B = mat(2, 1; 4, 3)$. "
     "*Chapter 9.*"),
    ("The inverse of $mat(2, 1; 5, 3)$ is", "$mat(3, -1; -5, 2)$",
     ["$mat(3, -1; 5, -2)$", "$mat(-3, 1; 5, -2)$", "$mat(2, -1; -5, 3)$"],
     "$det = 6 - 5 = 1$, so the inverse is the cofactor form $mat(3, -1; -5, 2)$. *Chapter 9.*"),
    ("Using matrices, solve $2x + y = 7$, $5x + 3y = 18$.", "$x = 3, y = 1$",
     ["$x = 1, y = 3$", "$x = 2, y = 2$", "$x = 3, y = -1$"],
     "The determinant is $6 - 5 = 1$, so Cramer's rule gives $x = (21 - 18)/1 = 3$ and "
     "$y = (36 - 35)/1 = 1$. *Chapter 9.*"),
    ("The determinant of $mat(1, 2, 3; 0, 1, 4; 5, 6, 0)$ is", "$1$",
     ["$-1$", "$0$", "$25$"],
     "Expand along the first row: $1(0 - 24) - 2(0 - 20) + 3(0 - 5) = -24 + 40 - 15 = 1$. "
     "*Chapter 9.*"),
]


if __name__ == "__main__":
    intro1 = [
        "#v(4pt)",
        '#text(font: "DejaVu Sans", size: 10pt, fill: rgb("#CBD5E1"))['
        'Forty questions in forty minutes — the exact format, timing and difficulty spread of the '
        'Algebra section of a real UTME Mathematics paper.]',
        "",
        "#v(4pt)",
        "#grid(",
        "  columns: (1fr, 1fr, 1fr, 1fr),",
        "  column-gutter: 8pt,",
        '  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[QUESTIONS] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40]],',
        '  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TIME] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40 min]],',
        '  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[MARKING] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[No negatives]],',
        '  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TARGET] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[30 / 40]],',
        ")",
        "",
        "== Instructions",
        "",
        "+ Attempt *all forty* questions in *forty minutes*. There is no negative marking, so never leave a blank.",
        "+ If a question takes longer than ninety seconds, flag it and return in the final pass.",
        "+ Use no scientific calculator — the CBT calculator is four-function only.",
        "+ Write your answers on rough paper, then compare with the key.",
        "",
        '#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[',
        '  #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-green)[WRITE THESE FIVE FACTS ON YOUR ROUGH SHEET FIRST]',
        "  #v(3pt)",
        "  $ x = frac(-b plus.minus sqrt(b^2 - 4 a c), 2a) , quad alpha + beta = -frac(b, a) , quad alpha beta = frac(c, a) $",
        "  $ T_n = a + (n - 1)d , quad S_n = frac(n, 2)[2a + (n - 1)d] , quad S_infinity = frac(a, 1 - r) $",
        "  $ det mat(a, b; c, d) = a d - b c , quad A^(-1) = frac(1, det A) mat(d, -b; -c, a) $",
        "]",
    ]
    note = ('#block(width: 100%, fill: trap-bg, stroke: 0.9pt + trap-red, radius: 7pt, inset: 10pt)[\n'
            '  #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: trap-red)[HOW TO MARK YOURSELF]\n'
            '  #v(2pt)\n'
            '  Score 30+ and this section is exam-ready. Below 24, return to the chapter named at the\n'
            '  end of each solution. For every miss, write the three-line review: what you did, what\n'
            '  the rule was, and what you will check next time.\n'
            ']')
    (OUT / "mock_ch10.typ").write_text(
        render(10, "Mock Examination 1", "Full Section II CBT Paper", intro1, MOCK1, note),
        encoding="utf-8")
    print("wrote mock_ch10.typ with", len(MOCK1), "questions")

    intro2 = [
        "#v(4pt)",
        '#text(font: "DejaVu Sans", size: 10pt, fill: rgb("#CBD5E1"))['
        'A second, entirely fresh paper. Different numbers, same syllabus, same timing — '
        'use it a fortnight after Mock 1 to prove that the improvement is real.]',
        "",
        "#v(4pt)",
        "== Instructions",
        "",
        "+ Attempt all forty questions in forty minutes, without notes.",
        "+ Record the chapter named in each solution you get wrong.",
        "+ Aim for 30 or more, and for no chapter contributing more than three misses.",
        "",
        '#block(width: 100%, fill: trap-bg, stroke: 0.9pt + trap-red, radius: 7pt, inset: 10pt)[',
        '  #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: trap-red)[IF YOU SCORE BELOW 24]',
        "  #v(2pt)",
        "  Do not start a third paper. Return to Appendix J, complete the error log for every",
        "  miss, and redo the drill at the end of the chapter that produced each error. A paper",
        "  you have not reviewed is a paper wasted.",
        "]",
    ]
    note2 = ('#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[\n'
             '  #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-green)[SCORE CONVERSION]\n'
             '  #v(2pt)\n'
             '  Each question is worth the same mark. Convert to a percentage by multiplying your\n'
             '  score by 2.5. A UTME Mathematics paper of forty questions drawn from this volume\n'
             '  would place 30/40 in the top band; 24/40 is the minimum for a competitive total.\n'
             ']')
    (OUT / "mock2.typ").write_text(
        render(11, "Appendix F: Second Full Mock Examination", "Second Full CBT Paper",
               intro2, MOCK2, note2),
        encoding="utf-8")
    print("wrote mock2.typ with", len(MOCK2), "questions")
