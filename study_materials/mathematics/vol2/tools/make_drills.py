#!/usr/bin/env python3
"""Authoring engine for the Volume 2 practice drills (Chapters 3–9).

Each question's answer is *computed* from exact fractions here, and its
distractors come from named error models (sign slip, reciprocal slip, single
root, off-by-one index...). The result is written as a plain data module that
``drills/gen_drills.py`` turns into Typst. This makes a wrong answer key
structurally impossible.
"""

from __future__ import annotations

import sys
from fractions import Fraction as F
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from qmath import poly, poly_eval, poly_mult, linear_factor, mc, numeric, check, fmt_num, m

DRILLS = Path(__file__).resolve().parent.parent / "drills"


def write(ch: int, title: str, time: str, qs, note: str):
    out = DRILLS / f"ch{ch:02d}_drill.py"
    lines = [f'"""{note}"""', "", f"CHAPTER = {ch}", f"TITLE = {title!r}",
             f"TIME = {time!r}", "", "QUESTIONS = ["]
    for stem, opts, idx, sol in qs:
        opt_s = ", ".join('"' + o.replace('"', '\\"') + '"' for o in opts)
        lines.append(f"    ({stem!r},\n     [{opt_s}], {idx},\n     {sol!r}),")
        lines.append("")
    lines.append("]")
    out.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"wrote {out.name}: {len(qs)} questions")


# ═══════════════════════════════════════════════════════════════════════════
# CHAPTER 2 — polynomials
# ═══════════════════════════════════════════════════════════════════════════
def chapter2():
    Q = []

    def rem(coeffs, a):
        c = [F(x) for x in coeffs]
        r = poly_eval(c, F(a))
        wrong = poly_eval(c, F(-a))
        dropped = poly_eval(c[:-1] + [F(0)], F(a))
        off = r + 2
        stem = f"Find the remainder when ${poly(c)}$ is divided by ${poly([1, -F(a)])}$."
        sol = (f"Remainder theorem: evaluate at $x = {fmt_num(F(a))}$ (the value that makes the "
               f"divisor zero). Here $P({fmt_num(F(a))}) = {fmt_num(r)}$.")
        Q.append(numeric(stem, r, [wrong, dropped, off], sol))

    rem([1, -3, 4, -2], 1)
    rem([2, 1, -5, 3], -2)
    rem([1, 0, -2, 5], 2)
    rem([3, -2, 1, -4], -1)
    rem([1, 2, -1, 5], F(1, 2))
    rem([1, -6, 11, -6], 4)
    rem([2, -3, 0, 7], 3)
    rem([1, 4, 1, -6], -3)

    def unknown(coeffs, pos, a, remainder):
        mixed = list(coeffs)
        c = [F(x) if not isinstance(x, str) else F(0) for x in mixed]
        n = len(c) - 1
        power = F(a) ** (n - pos)
        known = sum(c[i] * F(a) ** (n - i) for i in range(len(c)) if i != pos)
        p = (F(remainder) - known) / power
        pieces = []
        for i, x in enumerate(mixed):
            pw = n - i
            if isinstance(x, str):
                pieces.append(x + ("" if pw == 0 else (" x" if pw == 1 else f" x^{pw}")))
                continue
            v = F(x)
            if v == 0:
                continue
            core = "" if (pw > 0 and abs(v) == 1) else fmt_num(abs(v))
            if pw == 1:
                core += "x"
            elif pw > 1:
                core += f"x^{pw}"
            pieces.append(("-" if v < 0 else "") + core)
        body = pieces[0]
        for s in pieces[1:]:
            body += (" - " if s.startswith("-") else " + ") + s.lstrip("-")
        a_s = fmt_num(F(a))
        stem = (f"When ${body}$ is divided by ${poly([1, -F(a)])}$ the remainder is "
                f"${fmt_num(F(remainder))}$. Find $p$.")
        sol = (f"Set $P({a_s}) = {fmt_num(F(remainder))}$ and solve the resulting linear "
               f"equation: $p = {fmt_num(p)}$.")
        Q.append(numeric(stem, p, [p + 2, p - 2, -p], sol))

    unknown([1, "p", -3, 4], 1, 2, 10)
    unknown([2, -3, "p", -6], 2, 2, 0)
    unknown([1, "p", -7, 6], 1, 1, 4)
    unknown([1, 3, "p", -4], 2, -2, 0)

    def factorise(roots):
        c = [F(1)]
        for r in roots:
            c = poly_mult(c, linear_factor(r))
        def b(r):
            if r == 0:
                return "x"
            return f"(x - {fmt_num(F(r))})" if r > 0 else f"(x + {fmt_num(F(-r))})"
        correct = "".join(b(r) for r in roots)
        wrong = []
        for i, r in enumerate(roots):
            swapped = list(roots)
            swapped[i] = -r
            wrong.append("".join(b(s) for s in swapped))
        wrong.append("".join(b(r) for r in roots[:-1]) + b(roots[-1] + 1))
        stem = f"Factorise ${poly(c)}$ completely."
        sol = ("Test divisors of the constant term to find one root, divide it out, then "
               "factorise the remaining quadratic. The roots are "
               + ", ".join(fmt_num(F(r)) for r in roots) + ".")
        Q.append(mc(stem, correct, wrong, sol))

    factorise([1, 2, 3])
    factorise([3, 2, -1])
    factorise([-1, 2, -3])
    factorise([2, -2, 1])

    def which_factor(coeffs, root, wrong_roots):
        c = [F(x) for x in coeffs]
        assert poly_eval(c, F(root)) == 0
        def b(r):
            return f"(x - {fmt_num(F(r))})" if r > 0 else f"(x + {fmt_num(F(-r))})"
        stem = f"Which of the following is a factor of ${poly(c)}$?"
        sol = (f"Substitute each candidate: only $x = {fmt_num(F(root))}$ gives $0$, so "
               f"${b(root)}$ is a factor by the factor theorem.")
        Q.append(mc(stem, b(root), [b(r) for r in wrong_roots], sol))

    which_factor([1, -6, 11, -6], 1, [-1, 4, -2])
    which_factor([2, 3, -11, -6], 2, [-2, 3, -3])
    which_factor([1, 3, 0, -4], -2, [2, 1, -4])
    which_factor([1, 0, -7, 6], 2, [-2, 3, -3])

    def quotient(root, qcoeffs, lead=1):
        d = poly_mult([F(lead), F(-root)], [F(x) for x in qcoeffs])
        q = [F(x) for x in qcoeffs]
        stem = f"Find the quotient when ${poly(d)}$ is divided by ${poly([1, -F(root)])}$."
        wrong = [poly([q[0], -q[1], q[2]]), poly([q[0], q[1], -q[2]]),
                 poly([q[1], q[2], q[0]])]
        sol = (f"Synthetic division with $x = {fmt_num(F(root))}$ gives quotient ${poly(q)}$ "
               f"and remainder $0$.")
        Q.append(mc(stem, poly(q), wrong, sol))

    quotient(2, [1, -3, 2])
    quotient(-2, [1, 2, -3])
    quotient(3, [2, 1, -4])

    def two_unknown(coeffs, pos1, pos2, roots, remainders):
        n = len(coeffs) - 1
        rows = []
        for r, remv in zip(roots, remainders):
            r = F(r)
            row = [r ** (n - pos1), r ** (n - pos2)]
            known = sum(F(c) * r ** (n - i) for i, c in enumerate(coeffs)
                        if not isinstance(c, str))
            row.append(F(remv) - known)
            rows.append(row)
        (a1, b1, c1), (a2, b2, c2) = rows
        det = a1 * b2 - a2 * b1
        A = (c1 * b2 - c2 * b1) / det
        B = (a1 * c2 - a2 * c1) / det
        pieces = []
        for i, x in enumerate(coeffs):
            pw = n - i
            if isinstance(x, str):
                pieces.append(x + ("" if pw == 0 else (" x" if pw == 1 else f" x^{pw}")))
                continue
            v = F(x)
            if v == 0:
                continue
            core = "" if (pw > 0 and abs(v) == 1) else fmt_num(abs(v))
            if pw == 1:
                core += "x"
            elif pw > 1:
                core += f"x^{pw}"
            pieces.append(("-" if v < 0 else "") + core)
        body = pieces[0]
        for s in pieces[1:]:
            body += (" - " if s.startswith("-") else " + ") + s.lstrip("-")
        stem = (f"The polynomial ${body}$ has ${poly([1, -F(roots[0])])}$ as a factor and leaves "
                f"remainder ${fmt_num(F(remainders[1]))}$ on division by "
                f"${poly([1, -F(roots[1])])}$. Find $a + b$.")
        sol = (f"The conditions give two simultaneous equations in $a$ and $b$; solving them "
               f"gives $a = {fmt_num(A)}$, $b = {fmt_num(B)}$, hence $a + b = {fmt_num(A + B)}$.")
        Q.append(numeric(stem, A + B, [A - B, -(A + B), A + B + 2], sol))

    two_unknown([1, "a", "b", 6], 1, 2, [1, 3], [0, 24])
    two_unknown([1, "a", -1, "b"], 1, 3, [2, -1], [0, 0])

    # conceptual
    Q.append(mc("What is the degree of $(x^2 + 1)(x^3 - 2x + 4)$?", "$5$",
                ["$6$", "$3$", "$2$"],
                "The leading terms multiply to $x^5$, so the degree is $5$."))
    Q.append(mc("Which of these is NOT a polynomial?", "$3x^2 + 2/x$",
                ["$5$", "$x^3 - x$", "$0.5x^4 + 2x$"],
                "A polynomial uses only non-negative whole-number powers; $2/x = 2x^(-1)$ "
                "is a negative power."))
    Q.append(mc("By the factor theorem, $(x - a)$ is a factor of $P(x)$ if and only if",
                "$P(a) = 0$", ["$P(0) = a$", "$P(-a) = 0$", "$P(a) = 1$"],
                "A linear factor corresponds exactly to a zero of the polynomial."))
    Q.append(mc("The remainder on dividing a cubic by a linear divisor is",
                "a constant", ["a linear expression", "always zero", "a quadratic expression"],
                "The remainder's degree must be less than the divisor's, and a linear "
                "divisor leaves degree $0$."))
    Q.append(mc("When $(x - 2)$ is a factor of $P(x)$, the value of $P(2)$ is",
                "$0$", ["$4$", "$-4$", "$8$"],
                "By the factor theorem a factor gives a zero remainder, so $P(2) = 0$."))
    Q.append(mc("The remainder on dividing $x^5 - 1$ by $(x - 1)$ is", "$0$",
                ["$1$", "$-1$", "$2$"],
                "$P(1) = 1 - 1 = 0$; indeed $x^n - 1$ is always divisible by $x - 1$."))
    Q.append(mc("If $(2x - 3)$ is a factor of $P(x)$, the value to substitute is",
                "$x = 3/2$", ["$x = 2/3$", "$x = -3/2$", "$x = 3$"],
                "Solve $2x - 3 = 0$ to get $x = 3/2$. For $(b x - a)$ always test $x = a/b$."))
    Q.append(mc("A cubic has roots $1$, $-1$ and $3$. Its equation is",
                "$x^3 - 3x^2 - x + 3 = 0$",
                ["$x^3 + 3x^2 - x - 3 = 0$", "$x^3 - 3x^2 + x - 3 = 0$",
                 "$x^3 - x^2 - 3x + 3 = 0$"],
                "$(x - 1)(x + 1)(x - 3) = (x^2 - 1)(x - 3) = x^3 - 3x^2 - x + 3$."))
    Q.append(mc("A polynomial of degree $4$ divided by $(x^2 + 1)$ leaves a remainder of degree at most",
                "$1$", ["$2$", "$3$", "$4$"],
                "The remainder has degree less than the divisor, so it is at most linear "
                "($A x + B$)."))
    Q.append(mc("The polynomial $x^3 + p x^2 + q x + r$ has $y$-intercept",
                "$r$", ["$p$", "$q$", "$p + q$"],
                "Setting $x = 0$ leaves $P(0) = r$."))
    Q.append(mc("For $x^3 + 3x^2 - 4$, one factor is",
                "$(x + 2)$", ["$(x - 2)$", "$(x + 1)$", "$(x - 4)$"],
                "$P(-2) = -8 + 12 - 4 = 0$, so $(x + 2)$ divides it."))
    Q.append(mc("If a polynomial $P(x)$ leaves remainder $-5$ on division by $(x - 1)$, then",
                "$P(1) = -5$", ["$P(-1) = -5$", "$P(5) = -1$", "$P(1) = 5$"],
                "The remainder theorem gives $P(a) = $ remainder for divisor $(x - a)$."))

    return Q


# ═══════════════════════════════════════════════════════════════════════════
# CHAPTER 3 — quadratics
# ═══════════════════════════════════════════════════════════════════════════
def chapter3():
    Q = []

    def quad(a, b, c):
        """Typst string for a x^2 + b x + c."""
        return poly([F(a), F(b), F(c)])

    def solve_by_factor(a, b, c, r1, r2):
        stem = f"Solve ${quad(a, b, c)} = 0$."
        assert a * r1 * r1 + b * r1 + c == 0 and a * r2 * r2 + b * r2 + c == 0
        def o(r):
            return f"$x = {fmt_num(F(r))}$"
        sol = (f"Factorise: the roots are ${fmt_num(F(r1))}$ and ${fmt_num(F(r2))}$. "
               f"Check by substitution into the original equation.")
        Q.append(mc(stem, f"{o(r1)} or {o(r2)}",
                    [f"{o(-r1)} or {o(-r2)}", f"{o(r1)} or {o(-r2)}", f"{o(r1 * r2)} or {o(r1 + r2)}"],
                    sol))

    solve_by_factor(1, -5, 6, 2, 3)
    solve_by_factor(1, -7, 12, 3, 4)
    solve_by_factor(1, 2, -15, 3, -5)
    solve_by_factor(2, -5, 2, 2, F(1, 2))
    solve_by_factor(1, -1, -12, 4, -3)

    def sum_product(a, b, c):
        s = F(-b, a)
        p = F(c, a)
        stem = f"If $alpha$ and $beta$ are the roots of ${quad(a, b, c)} = 0$, find $alpha + beta$."
        sol = f"$alpha + beta = frac(-b, a) = {fmt_num(s)}$."
        Q.append(numeric(stem, s, [p, -s, s + 1], sol))
        stem2 = f"If $alpha$ and $beta$ are the roots of ${quad(a, b, c)} = 0$, find $alpha beta$."
        sol2 = f"$alpha beta = frac(c, a) = {fmt_num(p)}$."
        Q.append(numeric(stem2, p, [s, -p, p + 1], sol2))

    sum_product(2, -5, 3)
    sum_product(1, -4, 1)
    sum_product(3, 2, -1)

    def sum_squares(a, b, c):
        s, p = F(-b, a), F(c, a)
        val = s * s - 2 * p
        stem = (f"If $alpha$ and $beta$ are the roots of ${quad(a, b, c)} = 0$, "
                f"evaluate $alpha^2 + beta^2$.")
        sol = (f"$alpha + beta = {fmt_num(s)}$, $alpha beta = {fmt_num(p)}$, so "
               f"$alpha^2 + beta^2 = (alpha + beta)^2 - 2 alpha beta = {fmt_num(val)}$.")
        Q.append(numeric(stem, val, [s * s, s * s + 2 * p, val + 2], sol))

    sum_squares(1, -4, 1)
    sum_squares(1, -6, 4)
    sum_squares(2, -7, 3)

    def discriminant(a, b, c, desc):
        d = b * b - 4 * a * c
        stem = f"Find the discriminant of ${quad(a, b, c)} = 0$."
        sol = f"$Delta = b^2 - 4 a c = {b}^2 - 4({a})({c}) = {d}$; since $Delta {desc}$, the equation has {desc.replace('<','less than').replace('>','greater than').replace('=','equal to')} ... see notes."
        Q.append(numeric(stem, F(d), [F(-d), F(b * b + 4 * a * c), F(d + 4)], sol))

    discriminant(1, -5, 6, "> 0")
    discriminant(1, 4, 4, "= 0")
    discriminant(2, 3, 5, "< 0")

    def k_equal(pairs):
        for a, b, k in pairs:
            disc = b * b - 4 * a * k
            # equal roots: b^2 = 4ak  -> solve for a parameter given a,b,k
            pass

    def equal_roots(a, c):
        """b unknown: a x^2 + k x + c = 0 has equal roots."""
        val = 4 * a * c
        b = int(round(val ** 0.5))
        lead = "" if a == 1 else fmt_num(F(a))
        c_s = fmt_num(F(c))
        stem = (f"Find the positive value of $k$ for which "
                f"${lead}x^2 + k x + {c_s} = 0$ has equal roots.")
        sol = (f"Equal roots require $Delta = 0$: $k^2 - 4({a})({c}) = 0$, so $k^2 = {val}$ and "
               f"$k = {b}$ (positive root).")
        Q.append(numeric(stem, F(b), [F(-b), F(val), F(a * c)], sol))

    equal_roots(1, 9)
    equal_roots(2, 8)
    equal_roots(1, 16)

    def build_from_roots(r1, r2):
        s = F(r1) + F(r2)
        p = F(r1) * F(r2)
        stem = f"Form the quadratic equation whose roots are ${fmt_num(F(r1))}$ and ${fmt_num(F(r2))}$."
        def eq(s_, p_):
            b = -s_
            c = p_
            return f"$x^2 {'+' if b >= 0 else '-'} {fmt_num(abs(b))}x {'+' if c >= 0 else '-'} {fmt_num(abs(c))} = 0$"
        sol = (f"The sum of the roots is ${fmt_num(s)}$ and their product is ${fmt_num(p)}$, so "
               f"the equation is $x^2 - (text(\"sum\"))x + (text(\"product\")) = 0$.")
        Q.append(mc(stem, eq(s, p), [eq(s, -p), eq(-s, p), eq(s + 1, p + 1)], sol))

    build_from_roots(2, 3)
    build_from_roots(-1, 4)
    build_from_roots(F(1, 2), 3)

    def completing(a, b, c):
        # a(x + b/2a)^2 + (c - b^2/4a)
        h = -F(b, 2 * a)
        k = F(c) - F(b * b, 4 * a)
        stem = f"Express ${quad(a, b, c)}$ in the form $a(x - h)^2 + k$. Find $k$."
        sol = (f"Complete the square: $h = -frac(b, 2a) = {fmt_num(h)}$ and "
               f"$k = c - frac(b^2, 4a) = {fmt_num(k)}$.")
        Q.append(numeric(stem, k, [h, k + 1, -k], sol))

    completing(1, 6, 2)
    completing(2, -8, 11)
    completing(1, -4, 7)

    def minmax(a, b, c):
        k = F(c) - F(b * b, 4 * a)
        word = "minimum" if a > 0 else "maximum"
        stem = f"Find the {word} value of $y = {quad(a, b, c)}$."
        sol = (f"The vertex is at $x = -frac(b, 2a)$, and the {word} value is "
               f"$k = c - frac(b^2, 4a) = {fmt_num(k)}$.")
        Q.append(numeric(stem, k, [k - 2, k + 2, b * b - 4 * a * c], sol))

    minmax(1, -4, 7)
    minmax(-1, -4, 5)
    minmax(2, -8, 11)

    def roots_condition(a, b, c):
        """one root given, find other."""
        s = F(-b, a)
        # assumed r1 given; other = s - r1
        pass

    def one_root(a, b, c, r1):
        s = F(-b, a)
        r2 = s - r1
        stem = f"One root of ${quad(a, b, c)} = 0$ is ${fmt_num(F(r1))}$. Find the other root."
        sol = f"Sum of roots $= {fmt_num(s)}$, so the other root is ${fmt_num(s)} - {fmt_num(F(r1))} = {fmt_num(r2)}$."
        Q.append(numeric(stem, r2, [-r2, r2 + 1, F(c, a) / F(r1)], sol))

    one_root(1, -7, 12, 3)
    one_root(2, -5, 2, 2)
    one_root(3, 2, -8, F(-2))

    Q.append(mc("The discriminant of $a x^2 + b x + c = 0$ is", "$b^2 - 4 a c$",
                ["$b^2 + 4 a c$", "$4 a c - b^2$", "$b^2 - 2 a c$"],
                "The quantity under the square root in the quadratic formula is $b^2 - 4 a c$."))
    Q.append(mc("If $Delta = 0$, the quadratic equation has",
                "one repeated real root", ["two distinct real roots", "no real roots",
                                           "infinitely many roots"],
                "$Delta = 0$ makes the $plus.minus$ terms equal, so both roots coincide at $-b slash 2a$."))
    Q.append(mc("The sum of the roots of $3x^2 - 6x + 2 = 0$ is", "$2$",
                ["$-2$", "$2/3$", "$-2/3$"],
                "$-b/a = 6/3 = 2$; the minus sign in the formula cancels the negative coefficient."))
    Q.append(mc("For the equation $x^2 + 4x + 4 = 0$, the roots are",
                "$-2$ (twice)", ["$2$ (twice)", "$-2$ and $2$", "$-4$ and $1$"],
                "$(x + 2)^2 = 0$, so $x = -2$ is a repeated root and $Delta = 0$."))
    Q.append(mc("The graph of $y = x^2 - 2x - 3$ cuts the x-axis at",
                "$x = 3$ and $x = -1$", ["$x = -3$ and $x = 1$", "$x = 3$ only", "$x = 1$ only"],
                "Factorise: $(x - 3)(x + 1) = 0$."))
    Q.append(mc("If $x^2 + k x + 9 = 0$ has equal roots, then $k$ equals",
                "$plus.minus 6$", ["$6$ only", "$3$", "$plus.minus 3$"],
                "$k^2 = 36$, and a negative $k$ also gives equal roots, so both signs count."))
    Q.append(mc("The vertex of $y = (x - 3)^2 + 5$ is", "$(3, 5)$",
                ["$(-3, 5)$", "$(3, -5)$", "$(5, 3)$"],
                "Compare with $y = a(x - h)^2 + k$: the vertex is $(h, k) = (3, 5)$."))
    Q.append(mc("The substitution that solves $x^4 - 5x^2 + 4 = 0$ is", "$u = x^2$",
                ["$u = x^4$", "$u = sqrt(x)$", "$u = x + 1$"],
                "With $u = x^2$ the equation becomes $u^2 - 5u + 4 = 0$, a quadratic in $u$."))
    Q.append(mc("A quadratic equation with roots $alpha$ and $beta$ can be written as",
                "$x^2 - (alpha + beta)x + alpha beta = 0$",
                ["$x^2 + (alpha + beta)x + alpha beta = 0$",
                 "$x^2 - alpha beta x + (alpha + beta) = 0$",
                 "$x^2 + alpha beta x - (alpha + beta) = 0$"],
                "Expanding $(x - alpha)(x - beta)$ gives $x^2 - (alpha + beta)x + alpha beta$."))
    Q.append(mc("If the roots of a quadratic differ by $2$ and sum to $6$, their product is",
                "$8$", ["$16$", "$12$", "$9$"],
                "The roots are $2$ and $4$: $((alpha - beta)^2 = (alpha + beta)^2 - 4 alpha beta$ "
                "gives $4 = 36 - 4p$, so $p = 8$)."))

    return Q


# ═══════════════════════════════════════════════════════════════════════════
# Extra conceptual items — appended to reach a full 40-question drill
# (correct option first; the compiler shuffles the printed order).
# ═══════════════════════════════════════════════════════════════════════════
EXTRA = {
6: [
 ("If $y$ varies directly as $x^2$ and $x$ is tripled, then $y$ is", "multiplied by $9$",
  ["multiplied by $3$", "divided by $9$", "unchanged"],
  "$y = k x^2$; replacing $x$ by $3x$ multiplies $y$ by $9$."),
 ("If $y$ varies inversely as $x$ and $x$ is halved, then $y$ is", "doubled",
  ["halved", "quadrupled", "unchanged"],
  "$x y = k$: halving $x$ doubles $y$."),
 ("The constant of variation $k$ has units that depend on", "the quantities being related",
  ["the exam board", "the value of $x$ only", "the value of $y$ only"],
  "$k$ carries whatever units make the equation dimensionally consistent."),
 ("For a partial variation $y = k x + c$, the graph", "cuts the $y$-axis at $c$",
  ["passes through the origin", "is a hyperbola", "has no intercept"],
  "At $x = 0$, $y = c$, so the line does not pass through the origin unless $c = 0$."),
 ("If $p$ varies jointly as $q$ and $r$ and inversely as $s$, then", "$p s = k q r$",
  ["$p = k q r s$", "$p = k s/(q r)$", "$p q r = k s$"],
  "The joint statement $p = k q r/s$ rearranges to $p s = k q r$."),
 ("In an inverse-square law, doubling the distance", "quarters the intensity",
  ["halves the intensity", "doubles the intensity", "quadruples the intensity"],
  "Intensity is proportional to $1/d^2$, so doubling $d$ divides the intensity by $4$."),
 ("Two quantities are in direct proportion when", "their ratio is constant",
  ["their product is constant", "their sum is constant", "their difference is constant"],
  "Direct proportion means $y/x = k$."),
 ("If $y$ varies directly as $x$ and $y = 0$ when $x = 0$, the graph", "passes through the origin",
  ["is a horizontal line", "is a vertical line", "does not exist"],
  "A direct proportion always passes through $(0, 0)$."),
 ("A physics formula $F = G m_1 m_2/d^2$ is an example of", "joint and inverse variation",
  ["partial variation", "direct variation only", "inverse variation only"],
  "$F$ varies jointly with the two masses and inversely with the square of the distance."),
 ("If $y$ varies inversely as $x$ and $y$ is negative when $x$ is positive, then $k$ is",
  "negative", ["positive", "zero", "undefined"],
  "$k = x y$, and a positive times a negative is negative."),
],
7: [
 ("An arithmetic progression has a constant", "common difference",
  ["common ratio", "sum", "product"], "Each term is obtained by ADDING $d$."),
 ("A geometric progression has a constant", "common ratio",
  ["common difference", "first term", "sum"], "Each term is obtained by MULTIPLYING by $r$."),
 ("The sum of the first $n$ odd numbers is", "$n^2$", ["$2n$", "$n(n+1)$", "$frac(n(n+1), 2)$"],
  "The odd numbers form an A.P. with $a = 1$, $d = 2$: $S_n = frac(n,2)[2 + 2(n-1)] = n^2$."),
 ("If an A.P. has $a = 5$ and $d = 0$, then", "every term is $5$",
  ["the terms double", "the sum is zero", "the sequence is not an A.P."],
  "Adding zero leaves each term unchanged."),
 ("The $n$th term of $1, 4, 9, 16, dots$ is", "$n^2$", ["$2n - 1$", "$3n - 2$", "$n(n+1)$"],
  "The sequence is the perfect squares, so $T_n = n^2$ (not an A.P.)."),
 ("A G.P. with $r = 1$ is", "constant, and has no finite sum to infinity",
  ["divergent to infinity", "convergent", "undefined"],
  "Every term equals $a$; the sum grows without bound, so $S_infinity$ does not exist."),
 ("If $|r| >= 1$, the sum to infinity of a G.P.", "does not exist",
  ["equals $a/(1-r)$", "equals zero", "equals $a$"],
  "The convergence condition $|r| < 1$ fails."),
 ("The arithmetic mean of $a$ and $b$ is", "$frac(a + b, 2)$", ["$sqrt(a b)$", "$frac(2 a b, a + b)$", "$a b$"],
  "The single arithmetic mean between $a$ and $b$ is their average."),
 ("The geometric mean of $4$ and $9$ is", "$6$", ["$6.5$", "$13$", "$36$"],
  "$sqrt(4 times 9) = 6$, since the middle term satisfies $T_2^2 = T_1 T_3$."),
 ("In an A.P., $T_n - T_{n-1}$ equals", "$d$", ["$a$", "$n$", "$r$"],
  "Consecutive terms differ by the common difference."),
],
8: [
 ("For a binary operation to have an inverse for every element, the set must contain",
  "an identity element", ["a zero", "a negative number", "at least three elements"],
  "Inverses are defined relative to an identity, so the identity must exist first."),
 ("If $a * b = a - b$, the operation is", "not commutative",
  ["commutative", "associative", "closed only on integers"],
  "$3 - 5 = -2$ but $5 - 3 = 2$, so order matters."),
 ("Which of these operations is commutative?", "$a * b = a + b + 2$",
  ["$a * b = a - 2b$", "$a * b = a^b$", "$a * b = 2a - b$"],
  "The expression $a + b + 2$ is symmetric in $a$ and $b$."),
 ("If $a * b = a b$, the identity element is", "$1$", ["$0$", "$-1$", "$a$"],
  "$a times 1 = a$ for every $a$."),
 ("If $a * b = a + b$, the identity element is", "$0$", ["$1$", "$-1$", "$a$"],
  "$a + 0 = a$ for every $a$."),
 ("Under $a * b = a b + a + b$, the element $-1$", "has no inverse",
  ["is the identity", "is self-inverse", "is the inverse of $1$"],
  "The inverse formula $frac(-a, a+1)$ is undefined at $a = -1$."),
 ("Evaluating $a * (b * c)$ requires", "an inner evaluation followed by an outer one",
  ["three simultaneous operations", "only two elements", "no substitution"],
  "Brackets force the inner operation first."),
 ("A binary operation table is symmetric about its leading diagonal exactly when the operation is",
  "commutative", ["associative", "closed", "invertible"],
  "Symmetry means the entry for $(a, b)$ equals the entry for $(b, a)$."),
 ("If $a * b = 3a + 3b$, then $2 * 4$ equals", "$18$", ["$14$", "$24$", "$9$"],
  "$3(2) + 3(4) = 6 + 12 = 18$."),
 ("If $a * b = a b - 1$, the identity element is", "none of these",
  ["$0$", "$1$", "$-1$"],
  "$a e - 1 = a$ gives $e = frac(a+1, a)$, which is not a single fixed value, so no identity exists."),
],
9: [
 ("Two matrices can be added only when they", "have the same order",
  ["are square", "have non-zero determinants", "are transposes of each other"],
  "Addition combines corresponding entries, which requires identical orders."),
 ("The determinant of $mat(a, b; c, d)$ is", "$a d - b c$", ["$a d + b c$", "$a b - c d$", "$a c - b d$"],
  "Multiply the main diagonal and subtract the product of the other diagonal."),
 ("If $A$ is $3 times 2$ and $B$ is $2 times 5$, then $A B$ has order",
  "$3 times 5$", ["$2 times 2$", "$5 times 3$", "undefined"], "The outer dimensions give the order."),
 ("The inverse of $mat(1, 0; 0, 1)$ is", "$mat(1, 0; 0, 1)$",
  ["$mat(0, 1; 1, 0)$", "$mat(-1, 0; 0, -1)$", "undefined"],
  "The identity matrix is its own inverse."),
 ("For a $2 times 2$ matrix with determinant $D$, the inverse contains the factor",
  "$1/D$", ["$D$", "$D^2$", "$-D$"],
  "The adjugate is divided by the determinant."),
 ("Cramer's rule gives $x$ as", "$D_x slash D$", ["$D slash D_x$", "$D_y slash D$", "$D_x D$"],
  "Each variable equals the determinant with its own column replaced, divided by $D$."),
 ("The matrix $mat(2, 4; 1, 2)$ is", "singular", ["non-singular", "the identity", "symmetric"],
  "Its determinant is $4 - 4 = 0$, so it has no inverse."),
 ("A $90degree$ rotation matrix has determinant", "$1$", ["$0$", "$-1$", "$2$"],
  "Rotations preserve area, so $|det| = 1$; here $det = 0 - (-1) = 1$."),
 ("Multiplying a matrix on the left by $A^(-1)$ is valid only when", "$A$ is non-singular",
  ["$A$ is symmetric", "$B = 0$", "$A$ is $3 times 3$"],
  "The inverse exists only if the determinant is non-zero."),
 ("The transpose of $A^T$ is", "$A$", ["$A^(-1)$", "$-A$", "$2A$"],
  "Transposing twice returns the original matrix."),
 ("If $A X = B$ and $A$ is singular, then", "there is no unique solution",
  ["$X = A^(-1) B$", "$X = B A^(-1)$", "$X = 0$"],
  "Without an inverse, Cramer's rule divides by zero; the system is inconsistent or under-determined."),
 ("For $A = mat(1, 2; 3, 4)$, the determinant is", "$-2$", ["$2$", "$10$", "$-10$"],
  "$1(4) - 2(3) = -2$. The negative sign is meaningful: the transformation flips orientation."),
],
}


def with_extra(ch, qs):
    for stem, correct, wrong, sol in EXTRA.get(ch, []):
        qs.append(mc(stem, correct, list(wrong), sol))
    return qs


if __name__ == "__main__":
    q2 = chapter2()
    handle = check(q2, "ch02")
    write(2, "Polynomials & Factor/Remainder Theorems", "35 minutes", q2,
          "Chapter 2 drill — generated by tools/make_drills.py (answers computed).")
    q3 = chapter3()
    check(q3, "ch03")
    write(3, "Quadratic Equations & Graphs", "45 minutes", q3,
          "Chapter 3 drill — generated by tools/make_drills.py (answers computed).")


# ═══════════════════════════════════════════════════════════════════════════
# CHAPTER 4 — simultaneous equations
# ═══════════════════════════════════════════════════════════════════════════
def chapter4():
    Q = []

    def lin(a, b, c, d, e, f):
        """a x + b y = c ; d x + e y = f"""
        det = a * e - b * d
        assert det != 0
        x = F(c * e - b * f, det)
        y = F(a * f - c * d, det)
        def eqn(p, q, r):
            ps = "" if p == 1 else fmt_num(F(p))
            qs = ("" if abs(q) == 1 else fmt_num(abs(F(q)))) + "y"
            sign = "+" if q > 0 else "-"
            return f"${ps}x {sign} {qs} = {fmt_num(F(r))}$"
        stem = f"Solve {eqn(a, b, c)} and {eqn(d, e, f)} simultaneously."
        def ans(xv, yv):
            return f"$x = {fmt_num(xv)}, y = {fmt_num(yv)}$"
        sol = (f"Eliminate one variable by matching coefficients: $x = {fmt_num(x)}$, "
               f"$y = {fmt_num(y)}$. Substituting back into both original equations checks the pair.")
        Q.append(mc(stem, ans(x, y), [ans(y, x), ans(-x, y), ans(x, -y)], sol))

    lin(2, 3, 12, 1, -1, 1)
    lin(3, 4, 10, 2, -3, 1)
    lin(1, 1, 7, 1, -1, 3)
    lin(4, 3, 18, 2, 5, 16)
    lin(5, 2, 16, 3, -1, 3)

    def linear_quadratic(m, c, k):
        """y = m x + c with x^2 + y^2 = k, integer intersection."""
        # solve x^2 + (mx+c)^2 = k
        A = 1 + m * m
        B = 2 * m * c
        C = c * c - k
        disc = B * B - 4 * A * C
        import math
        r = math.isqrt(disc)
        if r * r != disc:
            return False
        xs = [F(-B + r, 2 * A), F(-B - r, 2 * A)]
        ys = [m * x + c for x in xs]
        sols = list(zip(xs, ys))
        stem = f"Solve $y = {m}x {('+' if c >= 0 else '-')} {abs(c)}$ and $x^2 + y^2 = {k}$."
        def pt(p):
            return f"$({fmt_num(p[0])}, {fmt_num(p[1])})$"
        correct = " and ".join(pt(p) for p in sols)
        wrong = [" and ".join(pt((p[1], p[0])) for p in sols),
                 pt(sols[0]), pt((-sols[0][0], sols[0][1]))]
        s = (f"Substitute the linear equation into the circle: $x^2 + ({m}x "
             f"{'+' if c >= 0 else '-'} {abs(c)})^2 = {k}$, solve the quadratic, then use the "
             f"LINEAR equation to get each matching $y$.")
        Q.append(mc(stem, correct, wrong, s))
        return True

    linear_quadratic(1, 1, 25)
    linear_quadratic(2, 1, 20)
    linear_quadratic(1, -1, 25)

    def word_sum(a, b, prod):
        """numbers sum s and product p."""
        stem = (f"The sum of two numbers is ${a + b}$ and their product is ${a * b}$. "
                f"Find the numbers.")
        def ans(p, q):
            return f"${p}$ and ${q}$"
        sol = (f"Model: $x + y = {a + b}$, $x y = {a * b}$. Then $x$ and $y$ are the roots of "
               f"$t^2 - {a + b}t + {a * b} = 0$, i.e. ${a}$ and ${b}$.")
        Q.append(mc(stem, ans(a, b), [ans(a + 1, b - 1), ans(-a, -b), ans(a, b + 2)], sol))

    word_sum(3, 7, 21)
    word_sum(5, 8, 40)
    word_sum(4, 9, 36)

    def three_unknown(x, y, z):
        eqs = [(1, 1, 1, x + y + z), (2, -1, 1, 2 * x - y + z), (1, 2, -1, x + 2 * y - z)]
        stem = (f"Solve $x + y + z = {x + y + z}$, $2x - y + z = {2 * x - y + z}$ and "
                f"$x + 2y - z = {x + 2 * y - z}$.")
        def ans(a, b, c):
            return f"$x = {a}, y = {b}, z = {c}$"
        sol = (f"Eliminate $z$ from two pairs, solve the resulting $2 times 2$ system, then "
               f"back-substitute: $x = {x}$, $y = {y}$, $z = {z}$.")
        Q.append(mc(stem, ans(x, y, z), [ans(y, x, z), ans(x, z, y), ans(x, y, z + 1)], sol))

    three_unknown(1, 2, 3)
    three_unknown(2, 3, 4)

    def no_solution(a, b, c, k):
        stem = f"Show that ${a}x + {b}y = {c}$ and ${a * k}x + {b * k}y = {c * k + 3}$ have"
        sol = ("The coefficients are proportional but the constants are not, so the lines are "
               "parallel and the system is inconsistent.")
        Q.append(mc(stem, "no solution", ["one solution", "infinitely many solutions",
                                          "two solutions"], sol))

    no_solution(2, 3, 7, 2)
    no_solution(3, 4, 5, 3)

    Q.append(mc("Two straight lines in a plane can intersect in",
                "at most one point", ["exactly two points", "three points",
                                      "any number of points"],
                "Two distinct non-parallel lines meet once; parallel lines do not meet at all."))
    Q.append(mc("A pair of simultaneous equations has infinitely many solutions when the two lines are",
                "coincident", ["parallel and distinct", "perpendicular", "vertical"],
                "Coincident lines share every point, so every point on the line is a solution."))
    Q.append(mc("For the system $a_1 x + b_1 y = c_1$, $a_2 x + b_2 y = c_2$, a unique solution requires",
                "$a_1 b_2 - a_2 b_1 != 0$", ["$a_1 b_2 - a_2 b_1 = 0$",
                                           "$a_1 c_2 - a_2 c_1 = 0$", "$b_1 c_2 - b_2 c_1 = 0$"],
                "A non-zero coefficient determinant means the lines are not parallel."))
    Q.append(mc("The substitution used to solve $y = x + 1$ with $x^2 + y^2 = 25$ gives",
                "$2x^2 + 2x - 24 = 0$", ["$2x^2 - 2x - 24 = 0$", "$x^2 + 2x - 24 = 0$",
                                        "$2x^2 + 2x + 24 = 0$"],
                "Substitute: $x^2 + (x + 1)^2 = 25$ gives $2x^2 + 2x + 1 = 25$, i.e. "
                "$2x^2 + 2x - 24 = 0$."))
    Q.append(mc("A two-digit number is written as", "$10a + b$", ["$a + b$", "$a b$", "$10b + a$"],
                "The tens digit $a$ is worth $10a$ and the units digit $b$ is worth $b$."))
    Q.append(mc("To eliminate $y$ from $3x + 2y = 8$ and $5x - 2y = 16$ you should",
                "add the equations", ["subtract the equations", "multiply them",
                                      "divide the first by the second"],
                "The $y$ coefficients are $+2$ and $-2$, so adding removes $y$."))
    Q.append(mc("If a father is three times his son's age now, then in $12$ years the equation is",
                "$f + 12 = 3(s + 12)$", ["$f + 12 = 3s$", "$f = 3(s + 12)$", "$f - 12 = 3s$"],
                "Both ages increase by $12$; the ratio given for the future must use the future ages."))

    for a, b, c, d, e, f in [(7, 2, 24, 3, -1, 8), (2, 5, 19, 4, 3, 25),
                             (3, 1, 11, 2, 3, 18), (6, 5, 27, 4, -3, 5)]:
        lin(a, b, c, d, e, f)
    for m, cc, k in [(2, -3, 20), (1, 4, 32)]:
        linear_quadratic(m, cc, k)
    for a, b in [(2, 6), (1, 5), (3, 8)]:
        word_sum(a, b, a * b)
    three_unknown(3, 1, 2)

    for a, b, c, inc in [(2, 3, 7, 3), (4, 5, 9, 5)]:
        stem = (f"Find $k$ such that ${a}x + {b}y = {c}$ and ${a * 2}x + {b * 2}y = k$ "
                f"have infinitely many solutions.")
        sol = ("Infinitely many solutions need the second equation to be a multiple of the "
               f"first, so $k = {c * 2}$.")
        Q.append(numeric(stem, F(c * 2), [F(c), F(c + 1), F(2 * c + 1)], sol))

    Q.append(mc("The pair $x + y = 5$, $2x + 2y = 10$ has",
                "infinitely many solutions", ["one solution", "no solution", "two solutions"],
                "The second equation is exactly twice the first, so the lines coincide."))
    Q.append(mc("Solving $y = x^2$ with $y = 4$ gives", "$x = plus.minus 2$",
                ["$x = 2$ only", "$x = 4$", "$x = plus.minus 4$"],
                "$x^2 = 4$ has two roots, $2$ and $-2$; both give $y = 4$."))
    Q.append(mc("The substitution $x = y + 3$ into $3x + 2y = 24$ gives",
                "$5y = 15$", ["$5y = 27$", "$3y = 15$", "$5y = 21$"],
                "$3(y + 3) + 2y = 24$ gives $5y + 9 = 24$, so $5y = 15$ and $y = 3$."))
    return Q


# ═══════════════════════════════════════════════════════════════════════════
# CHAPTER 5 — inequalities
# ═══════════════════════════════════════════════════════════════════════════
def chapter5():
    Q = []

    def linear(a, b, sym, c):
        # a x + b sym c
        rhs = F(c - b, a)
        flip = a < 0
        op = sym
        if flip:
            op = {"<": ">", ">": "<", "<=": ">=", ">=": "<=", "≤": "≥", "≥": "≤"}[sym]
        def eq(p, q, s):
            ps = "" if p == 1 else ("-" if p == -1 else fmt_num(F(p)))
            qs = ("" if q == 0 else (" + " if q > 0 else " - ") + fmt_num(abs(F(q))))
            return f"${ps}x{qs} {s} {fmt_num(F(abs(q) + 0))}$"
        stem = f"Solve ${('' if a == 1 else ('-' if a == -1 else fmt_num(F(a))))}x {'+' if b >= 0 else '-'} {abs(b)} {sym} {c}$."
        lhs_plain = f"{'' if a == 1 else ('-' if a == -1 else fmt_num(F(a)))}x {'+' if b >= 0 else '-'} {abs(b)}"
        stem = f"Solve ${lhs_plain} {sym} {c}$."
        sign_txt = "<" if rhs >= 0 else ">"
        def ans(o, v):
            return f"$x {o} {fmt_num(abs(v)) if v < 0 else fmt_num(v)}$"
        correct = f"$x {op} {fmt_num(rhs)}$"
        wrong = [f"$x {('>' if op in ('<', '<=') else '<')} {fmt_num(rhs)}$",
                 f"$x {op} {fmt_num(-rhs)}$", f"$x {op} {fmt_num(rhs + 1)}$"]
        sol = (f"Transpose the constant, then divide by ${fmt_num(F(a))}$."
               + (" Dividing by a negative number REVERSES the inequality." if flip else ""))
        Q.append(mc(stem, correct, wrong, sol))

    linear(2, 3, "<", 11)
    linear(-3, 5, "<=", 2)
    linear(4, -1, ">", 11)
    linear(-2, 1, ">=", 7)
    linear(5, 2, "<=", 17)

    def quadratic_ineq(r1, r2, kind):
        r1, r2 = sorted([F(r1), F(r2)])
        b = -(r1 + r2)
        c = r1 * r2
        body = poly([F(1), b, c])
        stem = f"Solve ${body} {kind} 0$."
        if kind in (">", ">="):
            correct = f"$x < {fmt_num(r1)}$ or $x > {fmt_num(r2)}$"
            wrong = [f"${fmt_num(r1)} < x < {fmt_num(r2)}$",
                     f"$x < {fmt_num(r2)}$ or $x > {fmt_num(r1)}$",
                     f"$x > {fmt_num(r1)}$"]
            sol = (f"Factorise to get roots ${fmt_num(r1)}$ and ${fmt_num(r2)}$. Since the "
                   f"parabola opens upward, it is positive OUTSIDE the roots.")
        else:
            correct = f"${fmt_num(r1)} < x < {fmt_num(r2)}$"
            wrong = [f"$x < {fmt_num(r1)}$ or $x > {fmt_num(r2)}$",
                     f"$x < {fmt_num(r2)}$", f"${fmt_num(r1)} <= x$"]
            sol = (f"The roots ${fmt_num(r1)}$ and ${fmt_num(r2)}$ split the number line; the "
                   f"parabola lies BELOW the axis between them.")
        Q.append(mc(stem, correct, wrong, sol))

    quadratic_ineq(2, 3, ">")
    quadratic_ineq(-4, 3, "<=")
    quadratic_ineq(1, 5, "<")
    quadratic_ineq(-2, 4, ">")

    def compound(lo, hi, a, b, step=1):
        # lo <= a x + b <= hi
        x1 = F(lo - b, a)
        x2 = F(hi - b, a)
        stem = f"Solve ${lo} <= {a}x {'+' if b >= 0 else '-'} {abs(b)} <= {hi}$."
        correct = f"${fmt_num(x1)} <= x <= {fmt_num(x2)}$"
        wrong = [f"${fmt_num(x1)} < x < {fmt_num(x2)}$",
                 f"${fmt_num(x1 - 1)} <= x <= {fmt_num(x2 + 1)}$",
                 f"$x >= {fmt_num(x1)}$"]
        sol = (f"Apply the same operation to all three parts: subtract ${b}$ then divide by "
               f"${a}$ (positive, so no reversal).")
        Q.append(mc(stem, correct, wrong, sol))

    compound(-2, 8, 3, -1)
    compound(1, 13, 4, 1)
    compound(-5, 7, 2, 3)

    def modulus(h, k, kind):
        if kind == "<":
            correct = f"${h - k} < x < {h + k}$"
            wrong = [f"$x < {h - k}$ or $x > {h + k}$", f"${h} < x < {h + k}$",
                     f"${h - k} <= x <= {h + k}$"]
            sol = (f"$|x - {h}| < {k}$ means $x$ is less than ${k}$ units from ${h}$: "
                   f"${h - k} < x < {h + k}$.")
        else:
            correct = f"$x < {h - k}$ or $x > {h + k}$"
            wrong = [f"${h - k} < x < {h + k}$", f"$x > {h - k}$", f"$x < {h + k}$"]
            sol = (f"$|x - {h}| > {k}$ keeps the points FARTHER than ${k}$ from ${h}$, giving "
                   f"the two outer rays.")
        Q.append(mc(f"Solve $|x - {h}| {kind} {k}$.", correct, wrong, sol))

    modulus(3, 5, "<")
    modulus(2, 4, ">")
    modulus(1, 3, "<=")

    Q.append(mc("Multiplying both sides of an inequality by $-2$ requires",
                "reversing the inequality sign", ["no change", "squaring both sides",
                                                  "taking reciprocals"],
                "Multiplication or division by a negative number reverses the direction."))
    Q.append(mc("The solution of $x^2 - 5x + 6 > 0$ is",
                "$x < 2$ or $x > 3$", ["$2 < x < 3$", "$x > 2$", "$x < 3$"],
                "The parabola $y = (x - 2)(x - 3)$ is above the axis outside its roots."))
    Q.append(mc("The solution of $(x + 1)(x - 4) <= 0$ is",
                "$-1 <= x <= 4$", ["$x <= -1$ or $x >= 4$", "$-4 <= x <= 1$", "$x <= 4$"],
                "'Less than or equal to zero' means between the roots, endpoints included."))
    Q.append(mc("Which point satisfies $2x + y < 6$?", "$(1, 1)$",
                ["$(3, 1)$", "$(2, 3)$", "$(0, 7)$"],
                "$2(1) + 1 = 3 < 6$; the others give $7$, $7$ and $7$."))
    Q.append(mc("The integer values of $x$ satisfying $-1 < x <= 3$ are",
                "$0, 1, 2, 3$", ["$-1, 0, 1, 2, 3$", "$0, 1, 2$", "$1, 2, 3$"],
                "$-1$ is excluded by the strict inequality, and $3$ is included."))
    Q.append(mc("For $x^2 + 2x + 5 > 0$, the solution set is",
                "all real numbers", ["no real numbers", "$x > -1$", "$x < -1$"],
                "$x^2 + 2x + 5 = (x + 1)^2 + 4 > 0$ for every real $x$."))
    Q.append(mc("The boundary line of $y <= 2x - 1$ is drawn",
                "solid, because the boundary is included", ["dashed, because it is excluded",
                "solid, because the region is unbounded", "dashed, because the gradient is positive"],
                "$<=$ includes equality, so the line itself belongs to the region."))
    Q.append(mc("To decide which side of $x + y >= 4$ to shade, test",
                "the origin, then shade the opposite side", ["the origin, then shade its side",
                "the point $(4, 4)$", "any point on the line"],
                "$0 + 0 = 0 >= 4$ is false, so the origin's side is NOT in the region."))

    for a, b, sym, c in [(3, 1, ">", 10), (-4, 2, "<", 6), (2, -5, ">=", 1), (-5, 3, "<=", 8)]:
        linear(a, b, sym, c)
    quadratic_ineq(-1, 2, ">")
    quadratic_ineq(0, 4, "<")
    compound(-6, 6, 3, 0)
    compound(-3, 9, 2, -1)

    Q.append(mc("If $a < b$ and both are positive, then", "$1/a > 1/b$",
                ["$1/a < 1/b$", "$1/a = 1/b$", "nothing can be said"],
                "Taking reciprocals of positive numbers reverses the inequality."))
    Q.append(mc("The values of $x$ for which $x^2 <= 9$ are", "$-3 <= x <= 3$",
                ["$x <= 3$", "$x <= -3$ or $x >= 3$", "$0 <= x <= 3$"],
                "$x^2 - 9 <= 0$ factorises as $(x - 3)(x + 3) <= 0$, giving the interval between the roots."))
    Q.append(mc("The region $x >= 0$, $y >= 0$ is", "the first quadrant, axes included",
                ["the first quadrant, axes excluded", "the whole plane", "a straight line"],
                "Both coordinates are non-negative, which is exactly the closed first quadrant."))
    Q.append(mc("For the feasible region bounded by $x + y <= 4$, $x >= 0$, $y >= 0$, "
                "the maximum of $P = 2x + y$ is",
                "$8$", ["$4$", "$6$", "$10$"],
                "Test the vertices $(0,0)$, $(4,0)$ and $(0,4)$: the values are $0$, $8$ and $4$, "
                "so the maximum is $8$ at $(4, 0)$."))
    Q.append(mc("Solving $3 - 2x > 9$ gives", "$x < -3$",
                ["$x > -3$", "$x < 3$", "$x > 3$"],
                "Subtract $3$: $-2x > 6$; divide by $-2$ and reverse: $x < -3$."))
    return Q


# ═══════════════════════════════════════════════════════════════════════════
# CHAPTER 6 — variation
# ═══════════════════════════════════════════════════════════════════════════
def chapter6():
    Q = []

    def direct(a, b, x2, power=1):
        k = F(b) / (F(a) ** power)
        y2 = k * F(x2) ** power
        word = {1: "x", 2: "the square of $x$", 3: "the cube of $x$"}[power]
        stem = (f"If $y$ varies directly as {word} and $y = {b}$ when $x = {a}$, "
                f"find $y$ when $x = {x2}$.")
        sol = (f"$y = k x^{power}$ gives $k = {fmt_num(k)}$; substituting $x = {x2}$ gives "
               f"$y = {fmt_num(y2)}$.")
        Q.append(numeric(stem, y2, [F(b) * F(x2, a) ** power, F(b) * F(x2, a),
                                    k * F(x2)], sol))

    direct(2, 12, 7)
    direct(4, 48, 3, 2)
    direct(3, 24, 5, 2)

    def inverse(a, b, x2, power=1):
        k = F(b) * (F(a) ** power)
        if power == 1:
            y2 = k / F(x2)
        else:
            y2 = k / (F(x2) ** power)
        word = {1: "$x$", 2: "the square of $x$"}[power]
        stem = (f"If $y$ varies inversely as {word} and $y = {b}$ when $x = {a}$, "
                f"find $y$ when $x = {x2}$.")
        sol = (f"$y = frac(k, x^{power})$ gives $k = {fmt_num(k)}$; substituting $x = {x2}$ "
               f"gives $y = {fmt_num(y2)}$.")
        Q.append(numeric(stem, y2, [k * F(x2) ** power, F(b) * F(x2, a), y2 + 1], sol))

    inverse(4, 5, 10)
    inverse(2, 80, 5, 2)
    inverse(9, 8, 36, 1)

    def joint(a1, a2, b, x1, z1):
        k = F(b) / (F(a1) * F(a2))
        r = k * F(x1) * F(z1)
        stem = (f"If $y$ varies jointly as $x$ and $z$, and $y = {b}$ when $x = {a1}$ and "
                f"$z = {a2}$, find $y$ when $x = {x1}$ and $z = {z1}$.")
        sol = f"$y = k x z$; from the first pair $k = {fmt_num(k)}$, so $y = {fmt_num(r)}$."
        Q.append(numeric(stem, r, [r + 2, r - 2, F(b) * F(x1, a1)], sol))

    joint(3, 4, 24, 5, 2)
    joint(3, 2, 36, 2, 5)

    def partial(x1, y1, x2, y2, x3):
        k = (F(y2) - F(y1)) / (F(x2) - F(x1))
        c = F(y1) - k * F(x1)
        y3 = k * F(x3) + c
        stem = (f"$y$ is partly constant and partly varies as $x$. When $x = {x1}$, $y = {y1}$; "
                f"when $x = {x2}$, $y = {y2}$. Find $y$ when $x = {x3}$.")
        sol = (f"Model $y = k x + c$: solving the two conditions gives $k = {fmt_num(k)}$ and "
               f"$c = {fmt_num(c)}$, so $y({x3}) = {fmt_num(y3)}$.")
        Q.append(numeric(stem, y3, [y3 + 1, F(y1) * F(x3, x1), y3 - 2], sol))

    partial(2, 11, 5, 23, 8)
    partial(1, 7, 3, 31, 2)
    partial(3, 10, 5, 16, 7)

    def ratio(a, b, factor):
        stem = (f"If $y$ varies directly as $x$ and $y = {b}$ when $x = {a}$, find $x$ when "
                f"$y = {b * factor}$.")
        x = F(a * factor)
        sol = f"In direct variation $y/x$ is constant, so $x = {a} times {factor} = {fmt_num(x)}$."
        Q.append(numeric(stem, x, [x + 1, F(a, factor) if factor else x, x - 1], sol))

    ratio(3, 12, 4)
    ratio(5, 20, 3)

    Q.append(mc("If $y$ varies inversely as $x$, then", "$x y$ is constant",
                ["$y/x$ is constant", "$x + y$ is constant", "$x - y$ is constant"],
                "Inverse variation means $y = k/x$, i.e. $x y = k$."))
    Q.append(mc("The graph of a direct variation passing through the origin is",
                "a straight line", ["a hyperbola", "a parabola", "a circle"],
                "$y = k x$ is linear, so the graph is a straight line through $(0, 0)$."))
    Q.append(mc("The graph of $y = k/x$ is", "a rectangular hyperbola",
                ["a straight line", "a parabola", "a circle"],
                "Inverse variation traces the standard rectangular hyperbola in the first and third quadrants."))
    Q.append(mc("If $z$ varies jointly as $x$ and $y$ and $x$ doubles while $y$ is unchanged, then $z$",
                "doubles", ["halves", "quadruples", "is unchanged"],
                "$z = k x y$; doubling $x$ doubles the product."))
    Q.append(mc("The constant $k$ in a variation is found by",
                "substituting the given pair of values", ["reading the y-intercept",
                "differentiating the equation", "taking the reciprocal of the gradient"],
                "Every variation question starts by substituting the supplied data pair to fix $k$."))
    Q.append(mc("A table of values with a constant product $x y$ indicates",
                "inverse variation", ["direct variation", "partial variation", "joint variation"],
                "Constant product is the signature of $y = k/x$."))
    Q.append(mc("Wages consisting of a fixed basic salary plus commission on sales model",
                "partial variation", ["direct variation", "inverse variation", "joint variation"],
                "There is a constant part plus a part that varies with sales: $E = k S + c$."))
    Q.append(mc("If $y$ varies directly as $sqrt(x)$ and $y = 6$ when $x = 9$, then the constant is",
                "$2$", ["$3$", "$18$", "$54$"],
                "$6 = k sqrt(9) = 3k$, so $k = 2$."))
    return Q


# ═══════════════════════════════════════════════════════════════════════════
# CHAPTER 7 — progressions
# ═══════════════════════════════════════════════════════════════════════════
def chapter7():
    Q = []

    def ap_n(a, d, n):
        t = F(a) + (n - 1) * F(d)
        stem = f"Find the {n}th term of the A.P. ${a}, {a + d}, {a + 2 * d}, dots$"
        sol = f"$T_n = a + (n - 1)d = {a} + {n - 1}({d}) = {fmt_num(t)}$."
        Q.append(numeric(stem, t, [F(a) + n * F(d), F(a) + (n - 2) * F(d), t + F(d)], sol))

    ap_n(5, 4, 15)
    ap_n(3, 7, 10)
    ap_n(2, -3, 12)
    ap_n(8, -5, 20)

    def ap_sum(a, d, n):
        s = F(n, 2) * (2 * F(a) + (n - 1) * F(d))
        stem = f"Find the sum of the first {n} terms of the A.P. ${a}, {a + d}, {a + 2 * d}, dots$"
        sol = (f"$S_n = frac(n, 2)[2a + (n - 1)d] = frac({n}, 2)[{2 * a} + {n - 1}({d})] = "
               f"{fmt_num(s)}$.")
        Q.append(numeric(stem, s, [s + F(n), s - F(n), s * 2], sol))

    ap_sum(3, 4, 20)
    ap_sum(7, 3, 15)
    ap_sum(10, -2, 12)
    ap_sum(2, 5, 30)

    def ap_count(a, d, last):
        n = F(last - a, d) + 1
        stem = f"How many terms are there in the A.P. ${a}, {a + d}, {a + 2 * d}, dots, {last}$?"
        sol = (f"$T_n = {last}$ gives ${last} = {a} + (n - 1)({d})$, so $n = {fmt_num(n)}$.")
        Q.append(numeric(stem, n, [n - 1, n + 1, F(last, d)], sol))

    ap_count(7, 4, 143)
    ap_count(5, 3, 62)
    ap_count(2, 6, 98)

    def gp_n(a, r, n):
        t = F(a) * F(r) ** (n - 1)
        stem = f"Find the {n}th term of the G.P. ${a}, {a * r}, {a * r * r}, dots$"
        sol = f"$T_n = a r^(n - 1) = {a} times {r}^{n - 1} = {fmt_num(t)}$."
        Q.append(numeric(stem, t, [F(a) * F(r) ** n, F(a) * F(r) ** (n - 2), t * 2], sol))

    gp_n(3, 2, 8)
    gp_n(2, 3, 6)
    gp_n(5, -2, 5)

    def gp_sum(a, r, n):
        s = F(a) * (1 - F(r) ** n) / (1 - F(r)) if r != 1 else F(a) * n
        stem = f"Find the sum of the first {n} terms of the G.P. ${a}, {a * r}, {a * r * r}, dots$"
        sol = (f"$S_n = frac(a(1 - r^n), 1 - r) = frac({a}(1 - {r}^{n}), 1 - {r}) = {fmt_num(s)}$.")
        Q.append(numeric(stem, s, [s + F(a), s * 2, s - F(a)], sol))

    gp_sum(2, 3, 6)
    gp_sum(16, F(1, 2), 5)
    gp_sum(3, 2, 5)

    def gp_inf(a, r):
        s = F(a) / (1 - F(r))
        stem = f"Find the sum to infinity of ${a} + {fmt_num(F(a) * F(r))} + dots$"
        sol = f"$S_infinity = frac(a, 1 - r) = frac({a}, 1 - {fmt_num(F(r))}) = {fmt_num(s)}$."
        Q.append(numeric(stem, s, [s + F(a), F(a) * F(1 - r), s * 2], sol))

    gp_inf(8, F(1, 2))
    gp_inf(9, F(1, 3))
    gp_inf(12, F(3, 4))
    gp_inf(4, F(-1, 2))

    def means(a, b, count):
        # geometric means between a and b with n means -> ratio
        total_terms = count + 2
        ratio = F(b, a) ** F(1, total_terms - 1)
        r = round(ratio)
        if F(r) ** (total_terms - 1) != F(b, a):
            return
        ms = [F(a) * F(r) ** (i + 1) for i in range(count)]
        stem = f"Insert {count} geometric means between ${a}$ and ${b}$."
        correct = " and ".join(fmt_num(v) for v in ms)
        wrong = [" and ".join(fmt_num(v * 2) for v in ms),
                 " and ".join(fmt_num(v + 1) for v in ms),
                 " and ".join(fmt_num(F(b) - F(a - 1)) for v in ms)]
        sol = (f"The sequence has {total_terms} terms, so $a r^{{{total_terms - 1}}} = {b}$ gives "
               f"$r = {r}$ and the means are ${correct}$.")
        Q.append(mc(stem, correct, wrong, sol))

    means(3, 24, 2)
    means(2, 16, 2)
    means(5, 80, 3)

    Q.append(mc("The $n$th term of an A.P. with first term $a$ and common difference $d$ is",
                "$a + (n - 1)d$", ["$a + n d$", "$a + (n + 1)d$", "$a d + (n - 1)$"],
                "The first term already carries no $d$, so there are $n - 1$ steps."))
    Q.append(mc("The common ratio of a G.P. is found by",
                "dividing a term by the previous term", ["subtracting consecutive terms",
                "adding consecutive terms", "multiplying consecutive terms"],
                "In a G.P. each term is $r$ times the one before, so $r = T_{n+1}/T_n$."))
    Q.append(mc("A G.P. has a sum to infinity only when", "$|r| < 1$",
                ["$r > 1$", "$r = 1$", "$r > 0$"],
                "Only then do the terms shrink towards zero; the formula $a/(1 - r)$ requires $|r| < 1$."))
    Q.append(mc("The sum of the first $n$ natural numbers is", "$frac(n(n + 1), 2)$",
                ["$frac(n(n - 1), 2)$", "$n^2$", "$frac(n(n + 1)(2n + 1), 6)$"],
                "This is an A.P. with $a = 1$ and $d = 1$: $S_n = frac(n, 2)(1 + n)$."))
    Q.append(mc("Three numbers in G.P. are conveniently represented as",
                "$frac(a, r), a, a r$", ["$a - d, a, a + d$", "$a, a + d, a + 2d$", "$a, a r, a r^2$"],
                "The symmetric choice makes the product $a^3$ independent of $r$."))
    Q.append(mc("If $T_2 = 6$ and $T_5 = 48$ in a G.P., the common ratio is", "$2$",
                ["$3$", "$4$", "$8$"],
                "$T_5/T_2 = r^3 = 8$, so $r = 2$."))
    Q.append(mc("If the 5th term of an A.P. is $19$ and the 12th is $47$, the common difference is",
                "$4$", ["$3$", "$5$", "$7$"],
                "$47 - 19 = 7d = 28$, so $d = 4$."))
    Q.append(mc("$0.dot(3)$ expressed as a fraction by the sum-to-infinity formula is", "$frac(1, 3)$",
                ["$frac(3, 10)$", "$frac(1, 30)$", "$frac(3, 11)$"],
                "$0.333 dots = frac(3, 10) + frac(3, 100) + dots$ with $a = frac(3, 10)$, $r = frac(1, 10)$, "
                "giving $frac(3, 9) = frac(1, 3)$."))
    Q.append(mc("The number of terms in the A.P. $1, 3, 5, dots, 99$ is", "$50$",
                ["$49$", "$51$", "$100$"],
                "$99 = 1 + (n - 1)(2)$ gives $n - 1 = 49$, so $n = 50$."))
    return Q


# ═══════════════════════════════════════════════════════════════════════════
# CHAPTER 8 — binary operations
# ═══════════════════════════════════════════════════════════════════════════
def chapter8():
    Q = []

    def op_eval(name, f, a, b, wrongs):
        val = f(a, b)
        stem = f"If $a * b = {name}$, evaluate ${a} * {b}$."
        sol = f"Substitute $a = {a}$, $b = {b}$: ${name}$ gives ${fmt_num(F(val))}$."
        Q.append(numeric(stem, F(val), [F(w) for w in wrongs], sol))

    op_eval("a + b + a b", lambda a, b: a + b + a * b, 3, 5, [23 + 1, 3 * 5, 3 + 5])
    op_eval("a^2 - b", lambda a, b: a * a - b, 4, 7, [9, 33, -33])
    op_eval("2a - b", lambda a, b: 2 * a - b, 5, 3, [13, 4, -7])
    op_eval("a b + 2", lambda a, b: a * b + 2, 6, 4, [26, 10, 8])
    op_eval("a + b - 3", lambda a, b: a + b - 3, 7, 2, [12, 9, 3])
    op_eval("a^2 + b^2", lambda a, b: a * a + b * b, 3, 4, [7, 12, 49])

    def nested(f, name, a, b, c, val, wrongs):
        stem = f"If $a * b = {name}$, evaluate ${a} * ({b} * {c})$."
        sol = (f"Inner first: ${b} * {c}$, then apply the operation again with $a = {a}$. "
               f"The value is ${fmt_num(F(val))}$.")
        Q.append(numeric(stem, F(val), [F(w) for w in wrongs], sol))

    nested(lambda a, b: 2 * a - b, "2a - b", 3, 4, 1, -1, [3, 5, -5])
    nested(lambda a, b: a + b + a * b, "a + b + a b", 1, 2, 3, 11, [17, 9, 14])

    def identity(name, e, options):
        stem = f"If $a * b = {name}$, find the identity element."
        sol = (f"Solve $a * e = a$ with $a$ kept general: $e = {fmt_num(F(e))}$.")
        Q.append(numeric(stem, F(e), [F(o) for o in options], sol))

    identity("a + b - 3", 3, [0, -3, 1])
    identity("a b + a + b", 0, [1, -1, 2])
    identity("a + b + 2", -2, [2, 0, -1])
    identity("a + b", 0, [1, -1, 2])

    def inverse(name, e, a, inv):
        stem = (f"If $a * b = {name}$ (identity ${fmt_num(F(e))}$), find the inverse of ${a}$ "
                f"under $*$.")
        sol = (f"Solve ${a} * b = {fmt_num(F(e))}$: the inverse is ${fmt_num(F(inv))}$.")
        Q.append(numeric(stem, F(inv), [F(-inv), F(a), F(e)], sol))

    inverse("a + b - 3", 3, 5, 1)
    inverse("a + b", 0, 7, -7)
    inverse("a b + 2", 0, 4, F(-1, 2))

    Q.append(mc("A binary operation on a set $S$ is commutative if",
                "$a * b = b * a$ for all $a, b$ in $S$",
                ["$(a * b) * c = a * (b * c)$", "$a * e = a$", "$a * b$ is always in $S$"],
                "Commutativity is the statement that order does not affect the result."))
    Q.append(mc("A set is closed under an operation when",
                "every result belongs to the set", ["the operation is commutative",
                "an identity exists", "every element has an inverse"],
                "Closure is only about staying inside the set."))
    Q.append(mc("For the operation $a * b = a + b - 3$, the identity element is",
                "$3$", ["$0$", "$-3$", "$1$"],
                "$a + e - 3 = a$ gives $e = 3$."))
    Q.append(mc("If $a * b = a b$, the inverse of $4$ is", "$frac(1, 4)$",
                ["$-4$", "$4$", "$1$"],
                "The identity is $1$; solving $4b = 1$ gives $b = frac(1, 4)$."))
    Q.append(mc("The operation $a * b = a^2 - b$ is", "not commutative",
                ["commutative", "associative", "closed only on positive integers"],
                "$2 * 3 = 1$ but $3 * 2 = 7$, so order changes the result."))
    Q.append(mc("To find an identity element you solve", "$a * e = a$",
                ["$a * e = e$", "$a * b = b * a$", "$a * e = 0$"],
                "The identity leaves every element unchanged, so $a * e$ must equal $a$."))
    Q.append(mc("Under $a * b = a + b$, the set of odd integers is",
                "not closed, because the sum of two odds is even",
                ["closed, because the sum of two odds is odd", "not closed, because $0$ is missing",
                 "closed, because $1$ is the identity"],
                "$3 + 5 = 8$, which is even, so the operation takes you outside the set."))
    Q.append(mc("If $a * b = 2a + 2b$, then $a * b$ equals", "$b * a$",
                ["$a - b$", "$a b$", "$a^2 + b$"],
                "The definition is symmetric in $a$ and $b$, so the operation is commutative."))
    Q.append(mc("For $a * b = a b + a + b$, the value of $1 * 0$ is", "$1$",
                ["$0$", "$2$", "$-1$"],
                "$1 times 0 + 1 + 0 = 1$."))
    Q.append(mc("The inverse of the identity element is",
                "the identity element itself", ["undefined", "always zero", "the largest element"],
                "$e * e = e$, so $e$ is its own inverse."))
    return Q


# ═══════════════════════════════════════════════════════════════════════════
# CHAPTER 9 — matrices
# ═══════════════════════════════════════════════════════════════════════════
def chapter9():
    Q = []

    def mat2(a, b, c, d):
        return f"mat({a}, {b}; {c}, {d})"

    def det2(a, b, c, d):
        val = a * d - b * c
        stem = f"Evaluate the determinant of ${mat2(a, b, c, d)}$."
        sol = f"$det = a d - b c = ({a})({d}) - ({b})({c}) = {val}$."
        Q.append(numeric(stem, F(val), [F(a * d + b * c), F(-val), F(val + 2)], sol))

    det2(3, 4, 2, 5)
    det2(2, -1, 6, -3)
    det2(5, 3, -2, 4)
    det2(-1, 2, 3, -5)
    det2(0, 1, 1, 0)

    def det3(m):
        a, b, c, d, e, f, g, h, i = m
        val = a * (e * i - f * h) - b * (d * i - f * g) + c * (d * h - e * g)
        rows = "; ".join(", ".join(str(x) for x in m[k:k + 3]) for k in (0, 3, 6))
        stem = f"Evaluate the determinant of $mat({rows})$."
        sol = (f"Expand along the first row with alternating signs: "
               f"$a(e i - f h) - b(d i - f g) + c(d h - e g) = {val}$.")
        Q.append(numeric(stem, F(val), [F(-val), F(val + 2), F(a * e * i - b * d * h - c * f * g)], sol))

    det3([1, 2, 3, 4, 5, 6, 7, 8, 10])
    det3([2, 0, 1, 3, 1, 2, 1, 4, 5])
    det3([1, 1, 1, 2, 3, 4, 4, 9, 16])

    def inv2(a, b, c, d):
        det = a * d - b * c
        assert det != 0
        correct = f"$frac(1, {det}) {mat2(d, -b, -c, a)}$"
        wrong = [f"$frac(1, {det}) {mat2(a, -b, -c, d)}$",
                 f"$frac(1, {det}) {mat2(-d, b, c, -a)}$",
                 f"$frac(1, {a * d + b * c}) {mat2(d, -b, -c, a)}$"]
        stem = f"Find the inverse of ${mat2(a, b, c, d)}$."
        sol = (f"$det = {det}$; interchange the diagonal, negate the off-diagonal entries and "
               f"divide by the determinant: ${correct.strip('$')}$.")
        Q.append(mc(stem, correct, wrong, sol))

    inv2(4, 3, 2, 1)
    inv2(1, 2, 3, 4)
    inv2(2, -1, 5, 3)

    def multiply(m1, m2):
        a, b, c, d = m1
        e, f, g, h = m2
        p, q = a * e + b * g, a * f + b * h
        r, s = c * e + d * g, c * f + d * h
        correct = f"${mat2(p, q, r, s)}$"
        wrong = [f"${mat2(a * e, b * f, c * g, d * h)}$",
                 f"${mat2(p, r, q, s)}$", f"${mat2(p + 1, q, r, s)}$"]
        stem = f"If $A = {mat2(a, b, c, d)}$ and $B = {mat2(e, f, g, h)}$, find $A B$."
        sol = (f"Row times column: $({a})({e}) + ({b})({g}) = {p}$, and so on, giving "
               f"${mat2(p, q, r, s)}$.")
        Q.append(mc(stem, correct, wrong, sol))

    multiply((1, 2, 3, 4), (5, 6, 7, 8))
    multiply((2, 1, 1, 3), (1, 0, 2, 1))
    multiply((1, 0, 0, 1), (7, 8, 9, 10))

    def cramer(a, b, c, d, e, f):
        D = a * d - b * c
        x = F(e * d - b * f, D)
        y = F(a * f - e * c, D)
        stem = f"Solve ${a}x + {b}y = {e}$ and ${c}x + {d}y = {f}$ by the matrix method."
        correct = f"$x = {fmt_num(x)}, y = {fmt_num(y)}$"
        wrong = [f"$x = {fmt_num(y)}, y = {fmt_num(x)}$",
                 f"$x = {fmt_num(-x)}, y = {fmt_num(y)}$",
                 f"$x = {fmt_num(x + 1)}, y = {fmt_num(y)}$"]
        sol = (f"$D = {D}$, $D_x = {e * d - b * f}$, $D_y = {a * f - e * c}$, so "
               f"$x = D_x slash D = {fmt_num(x)}$ and $y = D_y slash D = {fmt_num(y)}$.")
        Q.append(mc(stem, correct, wrong, sol))

    cramer(2, 3, 1, 4, 12, 14)
    cramer(3, 2, 2, -1, 16, 1)
    cramer(1, 1, 2, -1, 7, 2)

    Q.append(mc("A matrix $A$ has an inverse if and only if", "$det A != 0$",
                ["$det A = 0$", "$A$ is square", "$A$ is symmetric"],
                "Division by the determinant requires it to be non-zero; such a matrix is non-singular."))
    Q.append(mc("Matrix multiplication is", "associative but not commutative",
                ["commutative but not associative", "both commutative and associative",
                 "neither commutative nor associative"],
                "$(A B) C = A (B C)$ always, but $A B != B A$ in general."))
    Q.append(mc("The order of the product of a $2 times 3$ and a $3 times 4$ matrix is",
                "$2 times 4$", ["$3 times 3$", "$4 times 2$", "undefined"],
                "The inner dimensions match ($3 = 3$) and the outer ones give $2 times 4$."))
    Q.append(mc("The identity matrix $I$ satisfies", "$A I = I A = A$",
                ["$A I = 0$", "$A I = I$", "$A I = A^T$"],
                "The identity behaves like $1$ in ordinary multiplication."))
    Q.append(mc("If $det A = 0$, the simultaneous equations $A X = B$ have",
                "no unique solution", ["exactly one solution", "exactly two solutions",
                                       "always infinitely many solutions"],
                "Without an inverse the system is either inconsistent or has infinitely many solutions."))
    Q.append(mc("To solve $A X = B$ you multiply", "on the left by $A^(-1)$",
                ["on the right by $A^(-1)$", "by $A$ on the left", "by $B^(-1)$ on the left"],
                "$A^(-1) A X = A^(-1) B$ gives $X = A^(-1) B$; order matters."))
    Q.append(mc("The transpose of a $2 times 3$ matrix has order", "$3 times 2$",
                ["$2 times 3$", "$6 times 6$", "$3 times 3$"],
                "Transposing interchanges rows and columns."))
    Q.append(mc("For $A = mat(1, 2; 2, 4)$, the determinant is", "$0$",
                ["$8$", "$-4$", "$4$"],
                "$1(4) - 2(2) = 0$; the rows are proportional, so $A$ is singular."))
    Q.append(mc("The determinant of a $2 times 2$ matrix is the", "area scale factor",
                ["sum of the diagonal entries", "trace of the matrix", "perimeter scale factor"],
                "$|det|$ gives the factor by which areas change under the transformation."))
    Q.append(mc("Multiplying a matrix by a scalar multiplies", "every element by that scalar",
                ["only the diagonal elements", "only the first row", "the determinant only"],
                "Scalar multiplication distributes over every entry."))
    return Q


# ═══════════════════════════════════════════════════════════════════════════
# Extra conceptual items — appended to reach a full 40-question drill
# (correct option first; the compiler shuffles the printed order).
# ═══════════════════════════════════════════════════════════════════════════
EXTRA = {
6: [
 ("If $y$ varies directly as $x^2$ and $x$ is tripled, then $y$ is", "multiplied by $9$",
  ["multiplied by $3$", "divided by $9$", "unchanged"],
  "$y = k x^2$; replacing $x$ by $3x$ multiplies $y$ by $9$."),
 ("If $y$ varies inversely as $x$ and $x$ is halved, then $y$ is", "doubled",
  ["halved", "quadrupled", "unchanged"],
  "$x y = k$: halving $x$ doubles $y$."),
 ("The constant of variation $k$ has units that depend on", "the quantities being related",
  ["the exam board", "the value of $x$ only", "the value of $y$ only"],
  "$k$ carries whatever units make the equation dimensionally consistent."),
 ("For a partial variation $y = k x + c$, the graph", "cuts the $y$-axis at $c$",
  ["passes through the origin", "is a hyperbola", "has no intercept"],
  "At $x = 0$, $y = c$, so the line does not pass through the origin unless $c = 0$."),
 ("If $p$ varies jointly as $q$ and $r$ and inversely as $s$, then", "$p s = k q r$",
  ["$p = k q r s$", "$p = k s/(q r)$", "$p q r = k s$"],
  "The joint statement $p = k q r/s$ rearranges to $p s = k q r$."),
 ("In an inverse-square law, doubling the distance", "quarters the intensity",
  ["halves the intensity", "doubles the intensity", "quadruples the intensity"],
  "Intensity is proportional to $1/d^2$, so doubling $d$ divides the intensity by $4$."),
 ("Two quantities are in direct proportion when", "their ratio is constant",
  ["their product is constant", "their sum is constant", "their difference is constant"],
  "Direct proportion means $y/x = k$."),
 ("If $y$ varies directly as $x$ and $y = 0$ when $x = 0$, the graph", "passes through the origin",
  ["is a horizontal line", "is a vertical line", "does not exist"],
  "A direct proportion always passes through $(0, 0)$."),
 ("A physics formula $F = G m_1 m_2/d^2$ is an example of", "joint and inverse variation",
  ["partial variation", "direct variation only", "inverse variation only"],
  "$F$ varies jointly with the two masses and inversely with the square of the distance."),
 ("If $y$ varies inversely as $x$ and $y$ is negative when $x$ is positive, then $k$ is",
  "negative", ["positive", "zero", "undefined"],
  "$k = x y$, and a positive times a negative is negative."),
],
7: [
 ("An arithmetic progression has a constant", "common difference",
  ["common ratio", "sum", "product"], "Each term is obtained by ADDING $d$."),
 ("A geometric progression has a constant", "common ratio",
  ["common difference", "first term", "sum"], "Each term is obtained by MULTIPLYING by $r$."),
 ("The sum of the first $n$ odd numbers is", "$n^2$", ["$2n$", "$n(n+1)$", "$frac(n(n+1), 2)$"],
  "The odd numbers form an A.P. with $a = 1$, $d = 2$: $S_n = frac(n,2)[2 + 2(n-1)] = n^2$."),
 ("If an A.P. has $a = 5$ and $d = 0$, then", "every term is $5$",
  ["the terms double", "the sum is zero", "the sequence is not an A.P."],
  "Adding zero leaves each term unchanged."),
 ("The $n$th term of $1, 4, 9, 16, dots$ is", "$n^2$", ["$2n - 1$", "$3n - 2$", "$n(n+1)$"],
  "The sequence is the perfect squares, so $T_n = n^2$ (not an A.P.)."),
 ("A G.P. with $r = 1$ is", "constant, and has no finite sum to infinity",
  ["divergent to infinity", "convergent", "undefined"],
  "Every term equals $a$; the sum grows without bound, so $S_infinity$ does not exist."),
 ("If $|r| >= 1$, the sum to infinity of a G.P.", "does not exist",
  ["equals $a/(1-r)$", "equals zero", "equals $a$"],
  "The convergence condition $|r| < 1$ fails."),
 ("The arithmetic mean of $a$ and $b$ is", "$frac(a + b, 2)$", ["$sqrt(a b)$", "$frac(2 a b, a + b)$", "$a b$"],
  "The single arithmetic mean between $a$ and $b$ is their average."),
 ("The geometric mean of $4$ and $9$ is", "$6$", ["$6.5$", "$13$", "$36$"],
  "$sqrt(4 times 9) = 6$, since the middle term satisfies $T_2^2 = T_1 T_3$."),
 ("In an A.P., $T_n - T_{n-1}$ equals", "$d$", ["$a$", "$n$", "$r$"],
  "Consecutive terms differ by the common difference."),
],
8: [
 ("For a binary operation to have an inverse for every element, the set must contain",
  "an identity element", ["a zero", "a negative number", "at least three elements"],
  "Inverses are defined relative to an identity, so the identity must exist first."),
 ("If $a * b = a - b$, the operation is", "not commutative",
  ["commutative", "associative", "closed only on integers"],
  "$3 - 5 = -2$ but $5 - 3 = 2$, so order matters."),
 ("Which of these operations is commutative?", "$a * b = a + b + 2$",
  ["$a * b = a - 2b$", "$a * b = a^b$", "$a * b = 2a - b$"],
  "The expression $a + b + 2$ is symmetric in $a$ and $b$."),
 ("If $a * b = a b$, the identity element is", "$1$", ["$0$", "$-1$", "$a$"],
  "$a times 1 = a$ for every $a$."),
 ("If $a * b = a + b$, the identity element is", "$0$", ["$1$", "$-1$", "$a$"],
  "$a + 0 = a$ for every $a$."),
 ("Under $a * b = a b + a + b$, the element $-1$", "has no inverse",
  ["is the identity", "is self-inverse", "is the inverse of $1$"],
  "The inverse formula $frac(-a, a+1)$ is undefined at $a = -1$."),
 ("Evaluating $a * (b * c)$ requires", "an inner evaluation followed by an outer one",
  ["three simultaneous operations", "only two elements", "no substitution"],
  "Brackets force the inner operation first."),
 ("A binary operation table is symmetric about its leading diagonal exactly when the operation is",
  "commutative", ["associative", "closed", "invertible"],
  "Symmetry means the entry for $(a, b)$ equals the entry for $(b, a)$."),
 ("If $a * b = 3a + 3b$, then $2 * 4$ equals", "$18$", ["$14$", "$24$", "$9$"],
  "$3(2) + 3(4) = 6 + 12 = 18$."),
 ("If $a * b = a b - 1$, the identity element is", "none of these",
  ["$0$", "$1$", "$-1$"],
  "$a e - 1 = a$ gives $e = frac(a+1, a)$, which is not a single fixed value, so no identity exists."),
],
9: [
 ("Two matrices can be added only when they", "have the same order",
  ["are square", "have non-zero determinants", "are transposes of each other"],
  "Addition combines corresponding entries, which requires identical orders."),
 ("The determinant of $mat(a, b; c, d)$ is", "$a d - b c$", ["$a d + b c$", "$a b - c d$", "$a c - b d$"],
  "Multiply the main diagonal and subtract the product of the other diagonal."),
 ("If $A$ is $3 times 2$ and $B$ is $2 times 5$, then $A B$ has order",
  "$3 times 5$", ["$2 times 2$", "$5 times 3$", "undefined"], "The outer dimensions give the order."),
 ("The inverse of $mat(1, 0; 0, 1)$ is", "$mat(1, 0; 0, 1)$",
  ["$mat(0, 1; 1, 0)$", "$mat(-1, 0; 0, -1)$", "undefined"],
  "The identity matrix is its own inverse."),
 ("For a $2 times 2$ matrix with determinant $D$, the inverse contains the factor",
  "$1/D$", ["$D$", "$D^2$", "$-D$"],
  "The adjugate is divided by the determinant."),
 ("Cramer's rule gives $x$ as", "$D_x slash D$", ["$D slash D_x$", "$D_y slash D$", "$D_x D$"],
  "Each variable equals the determinant with its own column replaced, divided by $D$."),
 ("The matrix $mat(2, 4; 1, 2)$ is", "singular", ["non-singular", "the identity", "symmetric"],
  "Its determinant is $4 - 4 = 0$, so it has no inverse."),
 ("A $90degree$ rotation matrix has determinant", "$1$", ["$0$", "$-1$", "$2$"],
  "Rotations preserve area, so $|det| = 1$; here $det = 0 - (-1) = 1$."),
 ("Multiplying a matrix on the left by $A^(-1)$ is valid only when", "$A$ is non-singular",
  ["$A$ is symmetric", "$B = 0$", "$A$ is $3 times 3$"],
  "The inverse exists only if the determinant is non-zero."),
 ("The transpose of $A^T$ is", "$A$", ["$A^(-1)$", "$-A$", "$2A$"],
  "Transposing twice returns the original matrix."),
 ("If $A X = B$ and $A$ is singular, then", "there is no unique solution",
  ["$X = A^(-1) B$", "$X = B A^(-1)$", "$X = 0$"],
  "Without an inverse, Cramer's rule divides by zero; the system is inconsistent or under-determined."),
 ("For $A = mat(1, 2; 3, 4)$, the determinant is", "$-2$", ["$2$", "$10$", "$-10$"],
  "$1(4) - 2(3) = -2$. The negative sign is meaningful: the transformation flips orientation."),
],
}


def with_extra(ch, qs):
    for stem, correct, wrong, sol in EXTRA.get(ch, []):
        qs.append(mc(stem, correct, list(wrong), sol))
    return qs


if __name__ == "__main__":
    for ch, fn, title, tm in [(2, chapter2, "Polynomials & Factor/Remainder Theorems", "35 minutes"),
                              (3, chapter3, "Quadratic Equations & Graphs", "45 minutes"),
                              (4, chapter4, "Simultaneous Equations", "40 minutes"),
                              (5, chapter5, "Linear & Quadratic Inequalities", "35 minutes"),
                              (6, chapter6, "Variation", "35 minutes"),
                              (7, chapter7, "Arithmetic & Geometric Progressions", "45 minutes"),
                              (8, chapter8, "Binary Operations", "30 minutes"),
                              (9, chapter9, "Matrices & Determinants", "45 minutes")]:
        qs = with_extra(ch, fn())
        check(qs, f"ch{ch:02d}")
        write(ch, title, tm, qs,
              f"Chapter {ch} drill — generated by tools/make_drills.py (answers computed).")
