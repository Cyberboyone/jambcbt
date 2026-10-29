#!/usr/bin/env python3
"""Question engine for JAMB Mathematics Volume 4
(Calculus, Statistics & Probability).

Every question is built from computed numbers: the correct option is derived by
formula and the three distractors come from named error models, so a printed key
can never disagree with the printed question.
"""
from __future__ import annotations

import math
import random
import sys
from fractions import Fraction as F
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
from qmath import Bad, check, fmt_num, mc, poly  # noqa: E402

LETTERS = "ABCD"


# ── formatting helpers ─────────────────────────────────────────────────────
def mo(s: str) -> str:
    """Inline math."""
    return f"${s}$"


def n(x, unit: str = "") -> str:
    """An exact number as an inline-math option, with an optional unit."""
    s = fmt_num(F(x))
    return f"${s}$" + (f" {unit}" if unit else "")


def dec(x) -> str:
    """A short decimal string (no trailing zeros)."""
    s = f"{float(x):.3f}".rstrip("0").rstrip(".")
    return s


def pv(x) -> str:
    """A signed number suitable for pasting inside math."""
    x = F(x)
    return f"({x})" if x < 0 else f"{x}"


def q(stem, correct, wrongs, sol):
    opts = []
    for w in wrongs:
        if w and w != correct and w not in opts:
            opts.append(w)
        if len(opts) == 3:
            break
    if len(opts) < 3:
        raise Bad(f"three distinct distractors needed: {stem[:60]}")
    return mc(stem, correct, opts, sol)


def fac(r) -> str:
    """(x - r) written without a double sign."""
    r = F(r)
    return f"(x + {abs(r)})" if r < 0 else f"(x - {r})"


def brk(inner: str, p: int) -> str:
    """A bracketed expression raised to p, with ^1 written plainly."""
    return f"({inner})" if p == 1 else f"({inner})^{p}"


def power(c, p: int, var: str = "x") -> str:
    """c x^p rendered for math (coefficient 1, 0 and 1 handled)."""
    c = F(c)
    if c == 0:
        return "0"
    if p == 0:
        return fmt_num(c)
    body = var if p == 1 else f"{var}^{p}"
    if c == 1:
        return body
    if c == -1:
        return f"-{body}"
    return f"{fmt_num(c)}{body}"


# ══════════════════════════════════════════════════════════ chapter 1
def ch01(rng, cap):
    """Limits."""
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            stem, correct, wrong, sol = fn()
        except Bad:
            return
        try:
            out.append(q(stem, correct, wrong, sol))
            seen.add(key)
        except Bad:
            pass

    for _ in range(1200):
        k = rng.randrange(11)
        if k == 0:
            a = rng.choice([1, 2, 3])
            b = rng.randrange(-5, 6)
            c = rng.randrange(-8, 9)
            p = rng.choice([-3, -2, -1, 2, 3, 4])
            add(("sub", a, b, c, p), lambda a=a, b=b, c=c, p=p: (
                f"Evaluate $lim_(x -> {p}) ({poly([a, b, c])})$.",
                n(a * p * p + b * p + c),
                [n(a * p * p - b * p + c), n(a * p * p + b * p - c), n(a * p + b * p + c)],
                f"Substitute $x = {p}$: ${a}({p})^2 + {pv(b)}({p}) + {pv(c)} = {a * p * p + b * p + c}$. "
                f"The function is a polynomial, so the limit is the value. *Chapter 1.*"))
        elif k == 1:
            a = rng.randrange(2, 10)
            add(("dos", a), lambda a=a: (
                f"Evaluate $lim_(x -> {a}) (x^2 - {a * a})/(x - {a})$.",
                n(2 * a),
                [n(a), n(a * a), n(0)],
                f"$x^2 - {a * a} = (x - {a})(x + {a})$. After cancelling, the expression is $x + {a}$, "
                f"which tends to ${2 * a}$ as $x -> {a}$. *Chapter 1.*"))
        elif k == 2:
            a = rng.randrange(2, 6)
            add(("cubic", a), lambda a=a: (
                f"Evaluate $lim_(x -> {a}) (x^3 - {a ** 3})/(x - {a})$.",
                n(3 * a * a),
                [n(a * a), n(a ** 3), n(3 * a)],
                f"$x^3 - {a ** 3} = (x - {a})(x^2 + {a}x + {a * a})$. After cancelling, the expression "
                f"tends to ${a * a} + {a * a} + {a * a} = {3 * a * a}$. *Chapter 1.*"))
        elif k == 3:
            d = rng.choice([1, 2, 3])
            kk = rng.randrange(2, 8)
            a = d * kk
            b = rng.randrange(-6, 7)
            e = rng.randrange(-6, 7)
            add(("inf", a, b, d, e), lambda a=a, b=b, d=d, e=e, kk=kk: (
                f"Evaluate $lim_(x -> infinity) ({poly([a, b, 3])})/({poly([d, e, 5])})$.",
                n(F(a, d)),
                [n(F(d, a)), n(F(a, d) + 1), mo("infinity")],
                f"Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving "
                f"${a}/{d} = {fmt_num(F(a, d))}$. *Chapter 1.*"))
        elif k == 4:
            kk = rng.randrange(2, 8)
            add(("sin", kk), lambda kk=kk: (
                f"Evaluate $lim_(x -> 0) (sin({kk}x))/x$.",
                n(kk),
                [n(1), n(F(1, kk)), n(0)],
                f"Write $sin({kk}x)/x = {kk} times (sin {kk}x)/({kk}x)$. As $x -> 0$ the bracket tends "
                f"to $1$, so the limit is ${kk}$. *Chapter 1.*"))
        elif k == 5:
            a = rng.randrange(3, 9)
            b = rng.randrange(0, a)
            add(("quad", a, b), lambda a=a, b=b: (
                f"Evaluate $lim_(x -> {a}) ({poly([1, -(a + b), a * b])})/(x - {a})$.",
                n(a - b),
                [n(a + b), n(b - a), n(0)],
                f"The numerator factorises as $(x - {a})(x - {b})$. Cancelling leaves $x - {b}$, which "
                f"tends to ${a} - {b} = {a - b}$. *Chapter 1.*"))
        elif k == 6:
            a = rng.randrange(2, 9)
            add(("cont", a), lambda a=a: (
                f"A function is defined by $f(x) = (x^2 - {a * a})/(x - {a})$ for $x != {a}$, and "
                f"$f({a}) = k$. Find $k$ if $f$ is continuous at $x = {a}$.",
                n(2 * a),
                [n(a), n(a * a), n(0)],
                f"Continuity needs $k = lim_(x -> {a}) f(x)$. The difference of two squares cancels, "
                f"leaving $x + {a}$, which tends to ${2 * a}$. *Chapter 1.*"))
        elif k == 7:
            a = rng.randrange(3, 10)
            b = rng.randrange(0, a - 1)
            add(("both", a, b), lambda a=a, b=b: (
                f"Evaluate $lim_(x -> {a}) (x^2 - {a * a})/({poly([1, -(a + b), a * b])})$.",
                n(F(2 * a, a - b)),
                [n(F(a, a - b)), n(F(2 * a, a + b)), n(2 * a)],
                f"Both quadratics factorise: $(x - {a})(x + {a})$ over $(x - {a})(x - {b})$. Cancelling "
                f"leaves $(x + {a})/(x - {b})$, which tends to ${2 * a}/{a - b} = {fmt_num(F(2 * a, a - b))}$. *Chapter 1.*"))
        elif k == 8:
            a = rng.choice([1, 4, 9, 16, 25])
            s = int(math.isqrt(a))
            add(("rad", a), lambda a=a, s=s: (
                f"Evaluate $lim_(x -> 0) (sqrt(x + {a}) - {s})/x$.",
                n(F(1, 2 * s)),
                [n(F(1, s)), n(F(2, s)), n(F(1, 2 * a))],
                f"Multiply above and below by $sqrt(x + {a}) + {s}$. The top becomes $x$, the bottom "
                f"${s} + {s} = {2 * s}$, so the limit is ${fmt_num(F(1, 2 * s))}$. *Chapter 1.*"))
        elif k == 9:
            a = rng.randrange(2, 7)
            c = rng.randrange(1, 4)
            d = rng.randrange(1, 8)
            add(("zero", a, d), lambda a=a, c=c, d=d: (
                f"Evaluate $lim_(x -> infinity) ({poly([a, d])})/({poly([c, 0, 4])})$.",
                n(0),
                [n(F(a, c)), n(a), "does not exist"],
                f"The denominator grows like $x^2$ while the numerator grows like $x$, so the ratio "
                f"shrinks towards $0$. *Chapter 1.*"))
        else:
            a = rng.choice([2, 3, 4, 5])
            add(("abs", a), lambda a=a: (
                f"The function is $f(x) = abs(x - {a})/(x - {a})$ for $x != {a}$. Find $lim_(x -> {a}) f(x)$.",
                "does not exist",
                [n(1), n(-1), n(0)],
                f"From the right the ratio is $+1$; from the left it is $-1$. The two one-sided limits "
                f"differ, so the limit does not exist. *Chapter 1.*"))
        if len(out) >= cap:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 2
def ch02(rng, cap):
    """Differentiation from first principles and the rules."""
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            stem, correct, wrong, sol = fn()
        except Bad:
            return
        try:
            out.append(q(stem, correct, wrong, sol))
            seen.add(key)
        except Bad:
            pass

    for _ in range(1200):
        k = rng.randrange(12)
        if k == 0:
            a = rng.randrange(2, 8)
            p = rng.randrange(2, 7)
            add(("pow", a, p), lambda a=a, p=p: (
                f"Differentiate $y = {a}x^{p}$ with respect to $x$.",
                mo(f"{a * p}x^{p - 1}"),
                [mo(f"{a}x^{p - 1}"), mo(f"{a * p}x^{p}"), mo(f"{a * p}x^{p + 1}")],
                f"Multiply by the power and reduce it by one: $dif y / dif x = {a} times {p} x^{p - 1} "
                f"= {a * p}x^{p - 1}$. *Chapter 2.*"))
        elif k == 1:
            a = rng.randrange(2, 6)
            b = rng.randrange(-6, 7)
            c = rng.randrange(-8, 9)
            d = rng.randrange(-9, 10)
            add(("poly", a, b, c, d), lambda a=a, b=b, c=c, d=d: (
                f"Differentiate $y = {poly([a, b, c, d])}$.",
                mo(poly([3 * a, 2 * b, c])),
                [mo(poly([3 * a, 2 * b, c, d])), mo(poly([a, b, c])), mo(poly([3 * a, 2 * b, c + 1]))],
                f"Bring each power down and reduce it: ${3 * a}x^2 + {2 * b}x + {c}$. A constant "
                f"differentiates to zero. *Chapter 2.*"))
        elif k == 2:
            a = rng.randrange(1, 5)
            b = rng.randrange(-6, 7)
            c = rng.randrange(1, 5)
            d = rng.randrange(-6, 7)
            add(("prod", a, b, c, d), lambda a=a, b=b, c=c, d=d: (
                f"Differentiate $y = ({poly([a, b])})({poly([c, d])})$.",
                mo(poly([2 * a * c, a * d + b * c])),
                [mo(poly([a * c, a * d + b * c])), mo(poly([a + c, b + d])), mo(poly([2 * a * c, a * d - b * c]))],
                f"Multiply out first: $y = {poly([a * c, a * d + b * c, b * d])}$, so "
                f"$dif y / dif x = {poly([2 * a * c, a * d + b * c])}$. *Chapter 2.*"))
        elif k == 3:
            a = rng.randrange(1, 6)
            b = rng.randrange(-7, 8)
            c = rng.randrange(1, 7)
            num = a * c - b
            add(("quot", a, b, c), lambda a=a, b=b, c=c, num=num: (
                f"Differentiate $y = ({poly([a, b])})/(x + {c})$.",
                mo(f"frac({fmt_num(num)}, (x + {c})^2)"),
                [mo(f"frac({fmt_num(-num)}, (x + {c})^2)"), mo(f"frac({fmt_num(num)}, x + {c})"), n(a)],
                f"Quotient rule: $(({a})(x + {c}) - ({poly([a, b])})(1))/(x + {c})^2 = "
                f"{fmt_num(num)}/(x + {c})^2$. *Chapter 2.*"))
        elif k == 4:
            a = rng.randrange(2, 6)
            b = rng.randrange(-6, 7)
            p = rng.randrange(2, 6)
            add(("chain", a, b, p), lambda a=a, b=b, p=p: (
                f"Differentiate $y = ({poly([a, b])})^{p}$.",
                mo(f"{a * p}" + brk(poly([a, b]), p - 1)),
                [mo(f"{p}" + brk(poly([a, b]), p - 1)), mo(f"{a}" + brk(poly([a, b]), p - 1)),
                 mo(f"{a * p}" + brk(poly([a, b]), p))],
                f"Bring the power down, reduce it by one, then multiply by the derivative of the "
                f"bracket, which is ${a}$: ${a * p}" + brk(poly([a, b]), p - 1) + f"$. *Chapter 2.*"))
        elif k == 5:
            a = rng.randrange(1, 4)
            b = rng.randrange(-5, 6)
            c = rng.randrange(-8, 9)
            p = rng.choice([-2, -1, 2, 3])
            add(("grad", a, b, c, p), lambda a=a, b=b, c=c, p=p: (
                f"Find the gradient of $y = {poly([a, b, c])}$ at $x = {p}$.",
                n(2 * a * p + b),
                [n(a * p * p + b * p + c), n(2 * a * p), n(2 * a + b)],
                f"$dif y / dif x = {poly([2 * a, b])}$, so at $x = {p}$ the gradient is "
                f"${2 * a}({p}) + {pv(b)} = {2 * a * p + b}$. *Chapter 2.*"))
        elif k == 6:
            a = rng.randrange(2, 5)
            b = rng.randrange(-6, 7)
            c = rng.randrange(-8, 9)
            d = rng.randrange(-9, 10)
            add(("second", a, b, c), lambda a=a, b=b, c=c: (
                f"Find the second derivative of $y = {poly([a, b, c, d])}$.",
                mo(poly([6 * a, 2 * b])),
                [mo(poly([3 * a, 2 * b])), mo(poly([6 * a, 2 * b, c])), mo(poly([6 * a, b]))],
                f"$dif y / dif x = {poly([3 * a, 2 * b, c])}$, and differentiating again gives "
                f"$y'' = {poly([6 * a, 2 * b])}$. *Chapter 2.*"))
        elif k == 7:
            a = rng.choice([1, 2, 3])
            b = rng.randrange(-8, 9)
            c = rng.randrange(-9, 10)
            add(("stat", a, b, c), lambda a=a, b=b, c=c: (
                f"Find the $x$-coordinate of the turning point of $y = {poly([a, b, c])}$.",
                n(F(-b, 2 * a)),
                [n(F(b, 2 * a)), n(F(-b, a)), n(F(-2 * a, b) if b else 0)],
                f"Set $dif y / dif x = {poly([2 * a, b])} = 0$, so $x = {fmt_num(F(-b, 2 * a))}$. *Chapter 2.*"))
        elif k == 8:
            a = rng.randrange(2, 6)
            b = rng.randrange(-7, 8)
            t = rng.randrange(1, 5)
            add(("vel", a, b, t), lambda a=a, b=b, t=t: (
                f"A particle moves so that $s = {poly([a, b, 0, 0], var='t')}$ metres after $t$ seconds. "
                f"Find its velocity at $t = {t}$ s.",
                n(3 * a * t * t + 2 * b * t, "m/s"),
                [n(a * t ** 3 + b * t * t, "m/s"), n(3 * a * t + 2 * b, "m/s"), n(6 * a * t + 2 * b, "m/s^2")],
                f"$v = dif s / dif t = {poly([3 * a, 2 * b, 0], var='t')}$, so at $t = {t}$, "
                f"$v = {3 * a * t * t + 2 * b * t}$ m/s. *Chapter 2.*"))
        elif k == 9:
            a = rng.randrange(2, 7)
            p = rng.randrange(1, 4)
            add(("neg", a, p), lambda a=a, p=p: (
                f"Differentiate $y = {a}/x^{p}$.",
                mo(f"-{a * p}/x^{p + 1}"),
                [mo(f"-{a}/x^{p + 1}"), mo(f"{a * p}/x^{p + 1}"), mo(f"-{a * p}/x^{p}")],
                f"Write $y = {a}x^(-{p})$, so $dif y / dif x = -{a * p}x^(-{p + 1}) = -{a * p}/x^{p + 1}$. "
                f"*Chapter 2.*"))
        elif k == 10:
            a = rng.randrange(1, 5)
            add(("trig", a), lambda a=a: (
                f"Differentiate $y = sin({a}x)$.",
                mo(f"{a} cos({a}x)"),
                [mo(f"cos({a}x)"), mo(f"-{a} cos({a}x)"), mo(f"{a} sin({a}x)")],
                f"The derivative of $sin(k x)$ is $k cos(k x)$, so here it is ${a} cos({a}x)$. "
                f"*Chapter 2.*"))
        else:
            a = rng.randrange(1, 4)
            b = rng.randrange(-6, 7)
            x0 = rng.randrange(1, 4)
            if 2 * a * x0 + b == 0:
                continue
            add(("norm", a, b, x0), lambda a=a, b=b, x0=x0: (
                f"Find the gradient of the normal to $y = {poly([a, b])}$ at $x = {x0}$.",
                n(F(-1, 2 * a * x0 + b)),
                [n(2 * a * x0 + b), n(F(1, 2 * a * x0 + b)), n(-2 * a * x0 - b)],
                f"The tangent gradient is ${2 * a}({x0}) + {pv(b)} = {2 * a * x0 + b}$, so the normal "
                f"gradient is ${fmt_num(F(-1, 2 * a * x0 + b))}$. *Chapter 2.*"))
        if len(out) >= cap:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 3
def ch03(rng, cap):
    """Applications of differentiation."""
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            stem, correct, wrong, sol = fn()
        except Bad:
            return
        try:
            out.append(q(stem, correct, wrong, sol))
            seen.add(key)
        except Bad:
            pass

    for _ in range(1200):
        k = rng.randrange(10)
        if k == 0:
            a = rng.randrange(1, 4)
            m = rng.randrange(1, 4)
            b = 3 * (a * a - m * m)
            add(("stationary", a, m), lambda a=a, m=m, b=b: (
                f"Find the $x$-coordinates of the stationary points of "
                f"$y = {poly([1, 3 * a, b, 0])}$.",
                mo(f'x = {m - a} quad "or" quad x = {-m - a}'),
                [mo(f'x = {m - a} quad "or" quad x = {m + a}'), mo(f'x = {m} quad "or" quad x = {-m}'),
                 mo(f'x = {m + a} quad "or" quad x = {a - m}')],
                f"$dif y / dif x = {poly([3, 6 * a, b])} = 3{fac(m - a)}{fac(-m - a)}$, so the "
                f"stationary points are at $x = {m - a}$ and $x = {-m - a}$. *Chapter 3.*"))
        elif k == 1:
            a = rng.randrange(0, 4)
            m = rng.randrange(1, 4)
            b = 3 * (a * a - m * m)
            add(("minmax", a, m), lambda a=a, m=m, b=b: (
                f"The curve $y = {poly([1, 3 * a, b, 0])}$ has a stationary point at $x = {m - a}$. "
                f"Determine its nature.",
                "minimum",
                ["maximum", "point of inflexion", "neither"],
                f"$y'' = 6x + {6 * a}$, which at $x = {m - a}$ equals ${6 * (m - a) + 6 * a} > 0$. A "
                f"positive second derivative means a minimum. *Chapter 3.*"))
        elif k == 2:
            a = rng.choice([1, 2, 3])
            h = rng.randrange(-4, 5)
            c = rng.randrange(-9, 10)
            top = c + a * h * h
            add(("maxval", a, h), lambda a=a, h=h, c=c, top=top: (
                f"Find the maximum value of $y = {poly([-a, 2 * a * h, c])}$.",
                n(top),
                [n(c), n(top + a), n(-top)],
                f"The maximum occurs where $dif y / dif x = -{2 * a}x + {2 * a * h} = 0$, that is at "
                f"$x = {h}$. There $y = {top}$. *Chapter 3.*"))
        elif k == 3:
            a = rng.randrange(1, 4)
            p = rng.randrange(1, 4)
            add(("tangent", a, p), lambda a=a, p=p: (
                f"Find the gradient of the tangent to $y = {a}x^2$ at $x = {p}$.",
                n(2 * a * p),
                [n(a * p * p), n(2 * a), n(F(-1, 2 * a * p))],
                f"$dif y / dif x = {2 * a}x$, so at $x = {p}$ the gradient is ${2 * a * p}$. *Chapter 3.*"))
        elif k == 4:
            r = rng.randrange(2, 9)
            rate = rng.randrange(1, 4)
            add(("circle", r, rate), lambda r=r, rate=rate: (
                f"The radius of a circle increases at ${rate}$ cm/s. Find the rate at which the area "
                f"increases when $r = {r}$ cm.",
                mo(f"{2 * r * rate}pi") + " cm²/s",
                [mo(f"{r * r * rate}pi") + " cm²/s", mo(f"{2 * r}pi") + " cm²/s",
                 mo(f"{r * rate}pi") + " cm²/s"],
                f"$A = pi r^2$, so $dif A / dif t = 2 pi r (dif r)/dif t = 2 pi ({r})({rate}) = "
                f"{2 * r * rate}pi$ cm²/s. *Chapter 3.*"))
        elif k == 5:
            x = rng.randrange(2, 7)
            d = rng.choice([F(1, 100), F(1, 50), F(1, 20), F(1, 10)])
            add(("increment", x, str(d)), lambda x=x, d=d: (
                f"Use calculus to estimate the increase in $y = x^2$ when $x$ grows from ${x}$ to "
                f"${dec(x + d)}$.",
                n(2 * x * d),
                [n(x * x * d), n(2 * x), n(d)],
                f"$dif y = 2x dif x = 2({x})({dec(d)}) = {fmt_num(2 * x * d)}$, that is about "
                f"{dec(2 * x * d)}. *Chapter 3.*"))
        elif k == 6:
            a = rng.randrange(1, 4)
            r = rng.randrange(2, 6)
            b = a * r * r
            add(("inc", a, b), lambda a=a, b=b, r=r: (
                f"Find the values of $x$ for which $y = {poly([a, 0, -b, 0])}$ is increasing.",
                mo(f'x < -{r} quad "or" quad x > {r}'),
                [mo(f'x > {r}'), mo(f'-{r} < x < {r}'), mo(f'x < {r}')],
                f"$dif y / dif x = {poly([3 * a, 0, -b])} = {3 * a}(x + {r})(x - {r})$, which is "
                f"positive outside the roots $x = +-{r}$. *Chapter 3.*"))
        elif k == 7:
            p = rng.randrange(2, 11) * 2
            add(("product", p), lambda p=p: (
                f"Two numbers add up to ${p}$. Find the largest possible product.",
                n((p // 2) ** 2),
                [n(p * p // 4 + p), n((p // 2) ** 2 + p), n((p // 2) * p // 2 + 1)],
                f"If the numbers are $x$ and ${p} - x$, the product is ${p}x - x^2$, maximised where "
                f"${p} - 2x = 0$, so $x = {p // 2}$ and the product is ${(p // 2) ** 2}$. *Chapter 3.*"))
        elif k == 8:
            peri = rng.choice([20, 24, 28, 32, 36, 40])
            add(("rect", peri), lambda peri=peri: (
                f"A rectangle has perimeter ${peri}$ m. Find its largest possible area.",
                mo(f"{peri * peri // 16}") + " m²",
                [mo(f"{peri * peri // 8}") + " m²", mo(f"{peri // 4}") + " m²", mo(f"{peri * 2}") + " m²"],
                f"With sides $x$ and ${peri // 2} - x$, the area ${peri // 2}x - x^2$ is greatest at "
                f"$x = {peri // 4}$, giving ${peri * peri // 16}$ m². *Chapter 3.*"))
        else:
            a = rng.randrange(2, 6)
            b = rng.randrange(-6, 7)
            c = rng.randrange(-8, 9)
            t = rng.randrange(1, 4)
            add(("acc", a, b, c, t), lambda a=a, b=b, c=c, t=t: (
                f"A particle has velocity $v = {poly([a, b, c], var='t')}$ m/s. Find its acceleration "
                f"at $t = {t}$ s.",
                n(2 * a * t + b, "m/s²"),
                [n(a * t * t + b * t + c, "m/s²"), n(a * t + b, "m/s²"), n(2 * a, "m/s²")],
                f"$a = dif v / dif t = {poly([2 * a, b], var='t')}$, so at $t = {t}$ the acceleration is "
                f"${2 * a * t + b}$ m/s². *Chapter 3.*"))
        if len(out) >= cap:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 4
def ch04(rng, cap):
    """Integration."""
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            stem, correct, wrong, sol = fn()
        except Bad:
            return
        try:
            out.append(q(stem, correct, wrong, sol))
            seen.add(key)
        except Bad:
            pass

    for _ in range(1200):
        k = rng.randrange(10)
        if k == 0:
            a = rng.randrange(2, 7)
            p = rng.randrange(2, 6)
            add(("pow", a, p), lambda a=a, p=p: (
                f"Evaluate $integral {a}x^{p} dif x$.",
                mo(f"{fmt_num(F(a, p + 1))}x^{p + 1} + c"),
                [mo(f"{a}x^{p + 1} + c"), mo(f"{a * (p + 1)}x^{p + 1} + c"),
                 mo(f"{fmt_num(F(a, p + 1))}x^{p + 1}")],
                f"Add one to the power and divide by the new power: ${a}x^{p + 1} div {p + 1} = "
                f"{fmt_num(F(a, p + 1))}x^{p + 1} + c$. Never forget the constant. *Chapter 4.*"))
        elif k == 1:
            a = rng.randrange(2, 6)
            b = rng.randrange(-6, 7)
            c = rng.randrange(-8, 9)
            add(("poly", a, b, c), lambda a=a, b=b, c=c: (
                f"Evaluate $integral ({poly([3 * a, 2 * b, c])}) dif x$.",
                mo(poly([a, b, c, 0]).replace(" + 0", "") + " + c"),
                [mo(poly([a, b, c]).replace(" + 0", "") + " + c"),
                 mo(poly([3 * a, b, c]).replace(" + 0", "") + " + c"),
                 mo(poly([a, 2 * b, c]).replace(" + 0", "") + " + c")],
                f"Integrate term by term: ${poly([a, b, c, 0]).replace(' + 0', '').replace(' - 0', '')} + c$. "
                f"*Chapter 4.*"))
        elif k == 2:
            a = rng.randrange(1, 4)
            b = rng.randrange(-4, 5)
            lo = rng.choice([0, 1, 2])
            hi = lo + rng.randrange(1, 4)
            val = F(a * hi ** 3, 3) + F(b * hi * hi, 2) - (F(a * lo ** 3, 3) + F(b * lo * lo, 2))
            add(("def", a, b, lo, hi), lambda a=a, b=b, lo=lo, hi=hi, val=val: (
                f"Evaluate $integral_{lo}^{hi} ({poly([a, b, 0])}) dif x$.",
                n(val),
                [n(-val), n(val + F(1, 3)), n(F(a * hi ** 2, 2) + F(b * hi, 1))],
                f"The antiderivative is ${poly([F(a, 3), F(b, 2), 0, 0])}$. Substituting ${hi}$ and ${lo}$ "
                f"and subtracting gives ${fmt_num(val)}$. *Chapter 4.*"))
        elif k == 3:
            a = rng.randrange(2, 5)
            b = rng.randrange(-5, 6)
            p = rng.randrange(2, 5)
            add(("chain", a, b, p), lambda a=a, b=b, p=p: (
                f"Evaluate $integral ({poly([a, b])})^{p} dif x$.",
                mo(f"({poly([a, b])})^{p + 1}/{a * (p + 1)} + c"),
                [mo(f"({poly([a, b])})^{p + 1}/{p + 1} + c"), mo(f"({poly([a, b])})^{p}/{a * p} + c"),
                 mo(f"{a}({poly([a, b])})^{p + 1}/{p + 1} + c")],
                f"Divide by the derivative of the bracket as well as by the new power: "
                f"$({poly([a, b])})^{p + 1}/({a * (p + 1)}) + c$. *Chapter 4.*"))
        elif k == 4:
            add(("inv",), lambda: (
                "Evaluate $integral 1/x^2 dif x$.",
                mo("-1/x + c"),
                [mo("1/x + c"), mo("-1/x"), mo("-2/x^3 + c")],
                "Write $1/x^2 = x^(-2)$; the antiderivative is $x^(-1)/(-1) = -1/x + c$. *Chapter 4.*"))
        elif k == 5:
            a = rng.randrange(2, 6)
            b = rng.randrange(-5, 6)
            x0 = rng.randrange(1, 4)
            y0 = a * x0 * x0 + b * x0 + rng.randrange(-4, 5)
            c = y0 - (a * x0 * x0 + b * x0)
            add(("const", a, b, x0), lambda a=a, b=b, x0=x0, y0=y0, c=c: (
                f"Given $dif y / dif x = {poly([2 * a, b])}$ and $y = {y0}$ when $x = {x0}$, find $y$.",
                mo(poly([a, b, c])),
                [mo(poly([a, b, 0])), mo(poly([2 * a, b, 0])), mo(poly([a, b, y0]))],
                f"Integrating gives $y = {poly([a, b, 0])} + k$. Substituting $x = {x0}$, $y = {y0}$ "
                f"gives $k = {c}$, so $y = {poly([a, b, c])}$. *Chapter 4.*"))
        elif k == 6:
            a = rng.randrange(1, 4)
            lo = rng.choice([0, 1])
            hi = lo + rng.randrange(1, 3)
            area = F(a * hi ** 3, 3) - F(a * lo ** 3, 3)
            add(("area", a, lo, hi), lambda a=a, lo=lo, hi=hi, area=area: (
                f"Find the area under $y = {a}x^2$ between $x = {lo}$ and $x = {hi}$.",
                n(area, "square units"),
                [n(-area, "square units"), n(a * hi * hi - a * lo * lo, "square units"),
                 n(area * 2, "square units")],
                f"$integral_{lo}^{hi} {a}x^2 dif x = {F(a, 3)}[{hi}^3 - {lo}^3] = {fmt_num(area)}$ "
                f"square units. *Chapter 4.*"))
        elif k == 7:
            a = rng.randrange(1, 4)
            add(("expand", a), lambda a=a: (
                f"Evaluate $integral (x + {a})^2 dif x$.",
                mo(f"frac(x^3, 3) + {a}x^2 + {a * a}x + c"),
                [mo(f"frac((x + {a})^3, 3) + c"), mo(f"frac(x^3, 3) + {a}x^2 + c"),
                 mo(f"frac(x^3, 3) + {2 * a}x^2 + {a * a}x + c")],
                f"Expand first: $x^2 + {2 * a}x + {a * a}$, then integrate to "
                f"$x^3/3 + {a}x^2 + {a * a}x + c$. *Chapter 4.*"))
        elif k == 8:
            a = rng.randrange(1, 4)
            b = rng.randrange(1, 4)
            add(("def2", a, b), lambda a=a, b=b: (
                f"Evaluate $integral_0^{a} ({poly([b, 0, 0])}) dif x$.",
                n(F(b * a ** 3, 3)),
                [n(F(b * a ** 2, 2)), n(F(b * a ** 4, 4)), n(F(b * a ** 3, 2))],
                f"$integral {b}x^2 dif x = {poly([F(b, 3), 0, 0, 0])}$, and from $0$ to ${a}$ that is "
                f"${fmt_num(F(b * a ** 3, 3))}$. *Chapter 4.*"))
        else:
            a = rng.randrange(2, 6)
            p = rng.randrange(2, 5)
            add(("lin", a, p), lambda a=a, p=p: (
                f"Evaluate $integral ({a}x + 1)^{p} dif x$.",
                mo(f"({a}x + 1)^{p + 1}/{a * (p + 1)} + c"),
                [mo(f"({a}x + 1)^{p + 1}/{p + 1} + c"), mo(f"({a}x + 1)^{p}/{a * p} + c"),
                 mo(f"({a}x + 1)^{p + 1} + c")],
                f"Raise the power by one, divide by the new power and by ${a}$: "
                f"$({a}x + 1)^{p + 1}/{a * (p + 1)} + c$. *Chapter 4.*"))
        if len(out) >= cap:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 5
def ch05(rng, cap):
    """Area under a curve and motion."""
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            stem, correct, wrong, sol = fn()
        except Bad:
            return
        try:
            out.append(q(stem, correct, wrong, sol))
            seen.add(key)
        except Bad:
            pass

    for _ in range(1200):
        k = rng.randrange(10)
        if k == 0:
            a = rng.randrange(1, 4)
            hi = rng.randrange(2, 5)
            area = F(a * hi ** 2, 2)
            add(("line", a, hi), lambda a=a, hi=hi, area=area: (
                f"Find the area between $y = {a}x$, the $x$-axis, $x = 0$ and $x = {hi}$.",
                n(area, "square units"),
                [n(a * hi, "square units"), n(F(a * hi ** 3, 3), "square units"),
                 n(area * 2, "square units")],
                f"$integral_0^{hi} {a}x dif x = {F(a, 2)}x^2$ from $0$ to ${hi}$, giving "
                f"${fmt_num(area)}$ square units. *Chapter 5.*"))
        elif k == 1:
            a = rng.randrange(1, 4)
            lo = rng.randrange(1, 3)
            hi = lo + rng.randrange(1, 3)
            area = (F(hi ** 3, 3) + a * hi) - (F(lo ** 3, 3) + a * lo)
            add(("curve", a, lo, hi), lambda a=a, lo=lo, hi=hi, area=area: (
                f"Find the area under $y = x^2 + {a}$ from $x = {lo}$ to $x = {hi}$.",
                n(area, "square units"),
                [n((hi ** 3 - lo ** 3), "square units"), n(-area, "square units"),
                 n(F(hi ** 3, 3) - F(lo ** 3, 3), "square units")],
                f"$integral_{lo}^{hi} (x^2 + {a}) dif x = [x^3/3 + {a}x]$. Substituting gives "
                f"${fmt_num(area)}$ square units. *Chapter 5.*"))
        elif k == 2:
            add(("between",), lambda: (
                "Find the area enclosed between $y = x^2$ and $y = x$.",
                mo("1/6") + " square units",
                [mo("1/3") + " square units", mo("1/2") + " square units", mo("1/12") + " square units"],
                f"They meet at $x = 0$ and $x = 1$. $integral_0^1 (x - x^2) dif x = "
                f"1/2 - 1/3 = 1/6$ square units. *Chapter 5.*"))
        elif k == 3:
            a = rng.randrange(1, 4)
            b = rng.randrange(1, 7)
            t = rng.randrange(1, 5)
            dist = F(a * t ** 3, 3) + F(b * t * t, 2)
            add(("vel", a, b, t), lambda a=a, b=b, t=t, dist=dist: (
                f"A particle has velocity $v = {poly([a, b, 0], var='t')}$ m/s. Find the distance "
                f"travelled from $t = 0$ to $t = {t}$ s.",
                n(dist, "m"),
                [n(a * t * t + b * t, "m"), n(F(a * t ** 4, 4) + F(b * t ** 3, 3), "m"), n(dist * 2, "m")],
                f"Distance $= integral_0^{t} v dif t = {poly([F(a, 3), F(b, 2), 0, 0], var='t')}$ "
                f"evaluated at ${t}$, giving ${fmt_num(dist)}$ m. *Chapter 5.*"))
        elif k == 4:
            a = rng.randrange(3, 6)
            t = rng.randrange(2, a)
            disp = a * t * t - t ** 3
            add(("sign", a, t), lambda a=a, t=t, disp=disp: (
                f"A particle has velocity $v = {poly([a, -1, 0], var='t')}$ m/s. Find its displacement from "
                f"$t = 0$ to $t = {t}$ s.",
                n(disp, "m"),
                [n(F(a * t ** 3, 3) - F(t ** 4, 4), "m"), n(-disp, "m"), n(a * t - t * t, "m")],
                f"$s = integral_0^{t} v dif t = {poly([F(-1, 3), F(a, 2), 0, 0], var='t')}$, which at $t = {t}$ is "
                f"${fmt_num(disp)}$ m. The velocity changes sign, so the displacement is smaller than "
                f"the distance. *Chapter 5.*"))
        elif k == 5:
            a = rng.randrange(2, 6)
            b = rng.randrange(-6, 7)
            t = rng.randrange(1, 4)
            add(("acc", a, b, t), lambda a=a, b=b, t=t: (
                f"The velocity of a body is $v = {poly([a, b], var='t')}$ m/s. Find its acceleration "
                f"at $t = {t}$ s.",
                n(a, "m/s²"),
                [n(a * t + b, "m/s²"), n(F(a * t * t, 2) + b * t, "m/s²"), n(2 * a, "m/s²")],
                f"Acceleration is the derivative of velocity, $a = dif v / dif t = {a}$, which is "
                f"constant. *Chapter 5.*"))
        elif k == 6:
            add(("trap",), lambda: (
                "Use the trapezium rule with four strips of width $0.5$ to estimate "
                "$integral_0^2 x^2 dif x$.",
                mo("2.75"),
                [mo("2.5"), mo("3.0"), mo("2.625")],
                f"The ordinates at $0, 0.5, 1, 1.5, 2$ are $0, 0.25, 1, 2.25, 4$. The rule gives "
                f"$0.5/2[0 + 4 + 2(0.25 + 1 + 2.25)] = 0.25[4 + 7] = 2.75$. The exact value is "
                f"$8/3 = 2.667$. *Chapter 5.*"))
        elif k == 7:
            a = rng.randrange(1, 4)
            add(("split", a), lambda a=a: (
                f"Find the total area enclosed between $y = x^2 - {a * a}$ and the $x$-axis.",
                n(F(4 * a ** 3, 3), "square units"),
                [n(0, "square units"), n(F(2 * a ** 3, 3), "square units"), n(F(8 * a ** 3, 3), "square units")],
                f"The curve cuts the axis at $x = +-{a}$. Each region has area ${fmt_num(F(2 * a ** 3, 3))}$, "
                f"so the total is ${fmt_num(F(4 * a ** 3, 3))}$ square units — the raw integral over "
                f"$[-{a}, {a}]$ is zero and is not the area. *Chapter 5.*"))
        elif k == 8:
            a = rng.randrange(1, 4)
            b = rng.randrange(1, 4)
            add(("tri", a, b), lambda a=a, b=b: (
                f"Find the area between $y = {a}x$ and $y = {b}x^2$ in the first quadrant.",
                n(F(a ** 3, 6 * b * b), "square units"),
                [n(F(a * a, 2 * b * b), "square units"), n(F(a ** 3, 3 * b * b), "square units"),
                 n(F(a * a, 6 * b), "square units")],
                f"They meet at $x = 0$ and $x = {fmt_num(F(a, b))}$. "
                f"$integral_0^{a/b} ({a}x - {b}x^2) dif x = {fmt_num(F(a ** 3, 6 * b * b))}$ square units. "
                f"*Chapter 5.*"))
        else:
            u = rng.randrange(2, 8)
            acc = rng.randrange(1, 4)
            t = rng.randrange(2, 5)
            dist = u * t + F(acc * t * t, 2)
            add(("suvat", u, acc, t), lambda u=u, acc=acc, t=t, dist=dist: (
                f"A body starts with speed ${u}$ m/s and accelerates uniformly at ${acc}$ m/s². "
                f"Find the distance covered in ${t}$ s.",
                n(dist, "m"),
                [n(u * t, "m"), n(u + acc * t, "m"), n(F(acc * t * t, 2), "m")],
                f"$v = {u} + {acc}t$, and $integral_0^{t} v dif t = {u}t + {F(acc, 2)}t^2$ gives "
                f"${fmt_num(dist)}$ m after ${t}$ s. *Chapter 5.*"))
        if len(out) >= cap:
            break
    return out


CHAPTERS = {}


def build(ch, n, seed=None):
    rng = random.Random(seed if seed is not None else 1000 + ch)
    qs = CHAPTERS[ch](rng, n)
    seen, uniq = set(), []
    for t in qs:
        if t[0] in seen:
            continue
        seen.add(t[0])
        uniq.append(t)
    qs = uniq
    check(qs, f"ch{ch:02d}")
    return qs




# ══════════════════════════════════════════════════════════ chapter 6
def ch06(rng, cap):
    """Representation of data: tables, charts, histograms, the ogive."""
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            stem, correct, wrong, sol = fn()
        except Bad:
            return
        try:
            out.append(q(stem, correct, wrong, sol))
            seen.add(key)
        except Bad:
            pass

    for _ in range(1200):
        k = rng.randrange(11)
        if k == 0:
            vals = sorted(rng.sample(range(1, 10), 5))
            freqs = [rng.randrange(1, 8) for _ in vals]
            tot = sum(freqs)
            sxf = sum(v * f for v, f in zip(vals, freqs))
            mean = F(sxf, tot)
            add(("mean", tuple(vals), tuple(freqs)), lambda vals=vals, freqs=freqs, tot=tot, sxf=sxf, mean=mean: (
                "The values " + ", ".join(str(v) for v in vals) + " occur with frequencies "
                + ", ".join(str(f) for f in freqs) + " respectively. Find the mean.",
                n(mean),
                [n(F(sum(vals), 5)), n(F(sxf, 5)), n(F(sum(freqs), 5))],
                f"$sum f x = {sxf}$ and $sum f = {tot}$, so the mean is ${fmt_num(mean)}$. "
                f"*Chapter 6.*"))
        elif k == 1:
            classes = [(0, 9), (10, 19), (20, 29), (30, 39), (40, 49)]
            freqs = [rng.randrange(2, 12) for _ in classes]
            top = max(freqs)
            idx = freqs.index(top)
            lab = f"{classes[idx][0]} - {classes[idx][1]}"
            add(("modal", tuple(freqs)), lambda classes=classes, freqs=freqs, idx=idx, lab=lab: (
                "The marks of a class are grouped as 0 - 9, 10 - 19, 20 - 29, 30 - 39, 40 - 49 with "
                "frequencies " + ", ".join(str(f) for f in freqs) + " respectively. Find the modal class.",
                f"${lab}$",
                [f"${classes[i][0]} - {classes[i][1]}$" for i in range(5) if i != idx][:3],
                f"The modal class is the one with the highest frequency, ${max(freqs)}$, so it is "
                f"${lab}$. For grouped data a class is modal, not a single value. *Chapter 6.*"))
        elif k == 2:
            classes = [(0, 9), (10, 19), (20, 29), (30, 39), (40, 49)]
            freqs = [rng.randrange(2, 15) for _ in classes]
            tot = sum(freqs)
            run, idx = 0, 0
            for i, f in enumerate(freqs):
                run += f
                if run >= F(tot, 2):
                    idx = i
                    break
            lab = f"{classes[idx][0]} - {classes[idx][1]}"
            add(("medianclass", tuple(freqs)), lambda classes=classes, freqs=freqs, idx=idx, lab=lab, tot=tot: (
                "The ages of 40 students are grouped as 0 - 9, 10 - 19, 20 - 29, 30 - 39, 40 - 49 with "
                "frequencies " + ", ".join(str(f) for f in freqs) + " respectively. Find the median class.",
                f"${lab}$",
                [f"${classes[i][0]} - {classes[i][1]}$" for i in range(5) if i != idx][:3],
                f"The cumulative frequencies pass ${tot}/2 = {fmt_num(F(tot, 2))}$ inside the class "
                f"${lab}$, which is therefore the median class. *Chapter 6.*"))
        elif k == 3:
            total = rng.choice([200, 360, 400, 720, 180])
            part = total // rng.choice([2, 3, 4, 5, 8])
            ang = F(360 * part, total)
            add(("pie", total, part), lambda total=total, part=part, ang=ang: (
                f"In a pie chart of ${total}$ students, ${part}$ chose Physics. Find the angle of the "
                f"Physics sector.",
                mo(f"{fmt_num(ang)}^degree"),
                [mo(f"{fmt_num(F(part, total))}^degree"), mo(f"{fmt_num(ang * 2)}^degree"),
                 mo(f"{fmt_num(360 - ang)}^degree")],
                f"Each student is ${fmt_num(F(360, total))}^degree$, so ${part}$ students occupy "
                f"${part} times {fmt_num(F(360, total))}^degree = {fmt_num(ang)}^degree$. *Chapter 6.*"))
        elif k == 4:
            lo = rng.choice([0, 10, 20])
            w = rng.choice([5, 10, 20])
            f = rng.choice([10, 20, 25, 30, 40])
            fd = F(f, w)
            add(("fd", lo, w, f), lambda lo=lo, w=w, f=f, fd=fd: (
                f"A histogram has a class ${lo} - {lo + w}$ with frequency ${f}$. Find its frequency "
                f"density.",
                n(fd),
                [n(f * w), n(F(w, f)), n(f + w)],
                f"Frequency density $= {f} div {w} = {fmt_num(fd)}$. Frequency density, not frequency, "
                f"is what a histogram plots; it is frequency divided by class width. *Chapter 6.*"))
        elif k == 5:
            classes = [(1, 10), (11, 20), (21, 30), (31, 40), (41, 50)]
            freqs = [rng.randrange(2, 12) for _ in classes]
            cut = rng.choice([2, 3])
            run = sum(freqs[:cut])
            add(("cf", tuple(freqs), cut), lambda classes=classes, freqs=freqs, cut=cut, run=run: (
                "The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40, 41 - 50 with frequencies "
                + ", ".join(str(f) for f in freqs) + " respectively. How many values are at most "
                f"${classes[cut - 1][1]}$?",
                n(run),
                [n(sum(freqs)), n(freqs[cut - 1]), n(run - freqs[0])],
                f"The cumulative frequency up to ${classes[cut - 1][1]}$ is "
                f"${' + '.join(str(f) for f in freqs[:cut])} = {run}$. *Chapter 6.*"))
        elif k == 6:
            vals = sorted(rng.sample(range(2, 20), 6))
            freqs = [rng.randrange(1, 9) for _ in vals]
            top = max(freqs)
            idx = freqs.index(top)
            add(("mode", tuple(vals), tuple(freqs)), lambda vals=vals, freqs=freqs, idx=idx: (
                "The values " + ", ".join(str(v) for v in vals) + " occur with frequencies "
                + ", ".join(str(f) for f in freqs) + " respectively. Find the mode.",
                n(vals[idx]),
                [n(v) for i, v in enumerate(vals) if i != idx][:3],
                f"The mode is the value with the greatest frequency (${max(freqs)}$), which is "
                f"${vals[idx]}$. *Chapter 6.*"))
        elif k == 7:
            vals = sorted(rng.sample(range(1, 30), 6))
            freqs = [rng.randrange(1, 9) for _ in vals]
            add(("range", tuple(vals)), lambda vals=vals, freqs=freqs: (
                "A data set takes the values " + ", ".join(str(v) for v in vals) + ". Find its range.",
                n(vals[-1] - vals[0]),
                [n(vals[-1]), n(vals[0]), n(vals[-1] + vals[0])],
                f"Range $= $ largest $-$ smallest $= {vals[-1]} - {vals[0]} = {vals[-1] - vals[0]}$. "
                f"*Chapter 6.*"))
        elif k == 8:
            ang = rng.choice([36, 45, 60, 72, 90, 108, 120, 144])
            add(("frac", ang), lambda ang=ang: (
                f"A sector of a pie chart subtends ${ang}^degree$ at the centre. What fraction of the "
                f"whole does it represent?",
                mo(fmt_num(F(ang, 360))),
                [mo(fmt_num(F(360, ang))), mo(fmt_num(F(ang, 180))), mo(fmt_num(F(100, ang)))],
                f"The fraction is ${ang}/360 = {fmt_num(F(ang, 360))}$ of the total. *Chapter 6.*"))
        elif k == 9:
            total = rng.choice([40, 50, 60, 80, 120])
            pct = rng.choice([10, 20, 25, 30, 40])
            count = F(total * pct, 100)
            add(("pct", total, pct), lambda total=total, pct=pct, count=count: (
                f"In a pie chart of ${total}$ students, ${pct}$ percent chose History. How many "
                f"students is that?",
                n(count),
                [n(total - count), n(F(total, pct)), n(F(pct * 100, total))],
                f"${pct}$ percent of ${total}$ is ${fmt_num(count)}$ students. *Chapter 6.*"))
        else:
            lo = rng.choice([10, 20, 30])
            w = rng.choice([10, 20])
            fd = rng.choice([F(3, 2), F(5, 2), 2, 3, 4])
            f = F(lo + w - lo) * fd
            add(("freq", lo, w, str(fd)), lambda lo=lo, w=w, fd=fd, f=f: (
                f"A histogram has frequency density ${fmt_num(fd)}$ for the class ${lo} - {lo + w}$. "
                f"Find the frequency of that class.",
                n(f),
                [n(fd), n(f * w), n(F(w, fd))],
                f"Frequency $= \"density\" times \"class width\" = {fmt_num(fd)} times {w} = {fmt_num(f)}$. "
                f"*Chapter 6.*"))
        if len(out) >= cap:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 7
def ch07(rng, cap):
    """Measures of location."""
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            stem, correct, wrong, sol = fn()
        except Bad:
            return
        try:
            out.append(q(stem, correct, wrong, sol))
            seen.add(key)
        except Bad:
            pass

    for _ in range(1200):
        k = rng.randrange(11)
        if k == 0:
            cnt = rng.choice([5, 6, 7])
            vals = [rng.randrange(2, 30) for _ in range(cnt)]
            tot = sum(vals)
            add(("mean", tuple(vals)), lambda vals=vals, tot=tot: (
                "Find the mean of the numbers " + ", ".join(str(v) for v in vals) + ".",
                n(F(tot, len(vals))),
                [n(tot), n(sorted(vals)[len(vals) // 2]), n(F(tot, len(vals) + 1))],
                f"The sum is ${tot}$ and there are ${len(vals)}$ numbers, so the mean is "
                f"${fmt_num(F(tot, len(vals)))}$. *Chapter 7.*"))
        elif k == 1:
            cnt = rng.choice([5, 7, 9])
            vals = sorted(rng.sample(range(1, 40), cnt))
            med = vals[cnt // 2]
            add(("median", tuple(vals)), lambda vals=vals, med=med: (
                "Find the median of the numbers " + ", ".join(str(v) for v in vals) + ".",
                n(med),
                [n(sum(vals) // cnt), n(vals[cnt // 2 - 1]), n(vals[-1])],
                f"With ${cnt}$ values the median is the ${(cnt + 1) // 2}$rd in order, which is "
                f"${med}$. *Chapter 7.*"))
        elif k == 2:
            cnt = rng.choice([6, 8])
            vals = sorted(rng.sample(range(1, 40), cnt))
            med = F(vals[cnt // 2 - 1] + vals[cnt // 2], 2)
            add(("median2", tuple(vals)), lambda vals=vals, med=med: (
                "Find the median of the numbers " + ", ".join(str(v) for v in vals) + ".",
                n(med),
                [n(vals[cnt // 2]), n(F(sum(vals), cnt)), n(vals[cnt // 2 - 1])],
                f"With an even count the median is the mean of the middle two, "
                f"$({vals[cnt // 2 - 1]} + {vals[cnt // 2]})/2 = {fmt_num(med)}$. *Chapter 7.*"))
        elif k == 3:
            base = rng.sample(range(1, 20), 4)
            vals = sorted(base + [base[0], base[1]])
            from collections import Counter
            c = Counter(vals)
            top = max(c.values())
            modes = [v for v, f in c.items() if f == top]
            add(("mode", tuple(vals)), lambda vals=vals, modes=modes: (
                "Find the mode of the numbers " + ", ".join(str(v) for v in vals) + ".",
                n(modes[0]) if len(modes) == 1 else mo(" and ".join(str(x) for x in sorted(modes))),
                [n(sorted(set(vals) - set(modes))[0]) if set(vals) - set(modes) else n(0),
                 n(sum(vals) // len(vals)),
                 n(sorted(vals)[len(vals) // 2 - 1])],
                f"Each of ${', '.join(str(x) for x in sorted(modes))}$ appears twice, more often than "
                f"any other value, so the data are "
                f"{'bimodal' if len(modes) == 2 else 'multimodal'}. *Chapter 7.*"))
        elif k == 4:
            n1, m1 = rng.randrange(10, 30), rng.randrange(20, 60)
            n2, m2 = rng.randrange(10, 30), rng.randrange(20, 60)
            comb = F(n1 * m1 + n2 * m2, n1 + n2)
            add(("comb", n1, m1, n2, m2), lambda n1=n1, m1=m1, n2=n2, m2=m2, comb=comb: (
                f"A class of ${n1}$ students has a mean score of ${m1}$; a second class of ${n2}$ "
                f"students has a mean of ${m2}$. Find the mean of the two classes together.",
                n(comb),
                [n(F(m1 + m2, 2)), n(F(m1 - m2, 2) if m1 > m2 else F(m2 - m1, 2)), n(n1 * m1 + n2 * m2)],
                f"Combined mean $= ({n1} times {m1} + {n2} times {m2}) div {n1 + n2} = "
                f"{fmt_num(comb)}$. The plain average of the two means ignores the sizes. *Chapter 7.*"))
        elif k == 5:
            cnt = rng.choice([5, 6])
            vals = [rng.randrange(4, 20) for _ in range(cnt)]
            mean = F(sum(vals), cnt)
            vals[0] = mean * cnt - sum(vals[1:])
            if vals[0] <= 0 or vals[0] != int(vals[0]):
                continue
            vals = [int(v) for v in vals]
            known = vals[1:]
            add(("missing", tuple(known), str(mean)), lambda known=known, mean=mean, cnt=cnt: (
                f"The mean of ${cnt}$ numbers is ${fmt_num(mean)}$. {cnt - 1} of them are "
                + ", ".join(str(v) for v in known) + ". Find the remaining one.",
                n(vals[0]),
                [n(int(mean)), n(sum(known)), n(int(mean) * cnt)],
                f"Total $= {cnt} times {fmt_num(mean)} = {int(mean * cnt)}$; the known numbers "
                f"add to ${sum(known)}$, so the remaining one is ${int(mean * cnt)} - {sum(known)} = {vals[0]}$. "
                f"*Chapter 7.*"))
        elif k == 6:
            classes = [(1, 10), (11, 20), (21, 30), (31, 40)]
            mids = [F(lo + hi, 2) for lo, hi in classes]
            freqs = [rng.randrange(2, 10) for _ in classes]
            tot = sum(freqs)
            mean = sum(m * f for m, f in zip(mids, freqs)) / tot
            add(("gmean", tuple(freqs)), lambda classes=classes, mids=mids, freqs=freqs, tot=tot, mean=mean: (
                "The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40 with frequencies "
                + ", ".join(str(f) for f in freqs) + " respectively. Estimate the mean.",
                n(mean),
                [n(F(sum(m * f for m, f in zip(mids, freqs)), 4)), n(F(sum(mids), 4)), n(mean + 1)],
                "Use the midpoints $5.5, 15.5, 25.5, 35.5$: $sum f x = "
                f"{sum(m * f for m, f in zip(mids, freqs))}$ over $sum f = {tot}$, giving "
                f"${fmt_num(mean)}$. *Chapter 7.*"))
        elif k == 7:
            cnt = rng.choice([7, 11])
            vals = sorted(rng.sample(range(1, 30), cnt))
            q1 = vals[(cnt + 1) // 4 - 1]
            q3 = vals[3 * (cnt + 1) // 4 - 1]
            add(("iqr", tuple(vals)), lambda vals=vals, cnt=cnt, q1=q1, q3=q3: (
                "Find the interquartile range of the numbers " + ", ".join(str(v) for v in vals) + ".",
                n(q3 - q1),
                [n(vals[-1] - vals[0]), n(q3 + q1), n(vals[cnt // 2] - q1)],
                f"$Q_1$ occupies position $({cnt} + 1)/4 = {(cnt + 1) // 4}$ and $Q_3$ position "
                f"$3({cnt} + 1)/4 = {3 * (cnt + 1) // 4}$, so $Q_1 = {q1}$ and $Q_3 = {q3}$. The "
                f"interquartile range is ${q3} - {q1} = {q3 - q1}$. *Chapter 7.*"))
        elif k == 8:
            cnt = rng.randrange(10, 25)
            mean = rng.randrange(10, 30)
            addm = rng.randrange(2, 8)
            add(("shift", cnt, mean, addm), lambda cnt=cnt, mean=mean, addm=addm: (
                f"The mean of ${cnt}$ numbers is ${mean}$. If ${addm}$ is added to every number, what "
                f"is the new mean?",
                n(mean + addm),
                [n(mean * addm), n(mean), n(F(mean * cnt, cnt + addm))],
                f"Adding a constant to every value adds the same constant to the mean: "
                f"${mean} + {addm} = {mean + addm}$. *Chapter 7.*"))
        elif k == 9:
            n1, m1, n2, m2 = rng.randrange(2, 6), rng.randrange(60, 90), rng.randrange(2, 6), rng.randrange(50, 80)
            wmean = F(n1 * m1 + n2 * m2, n1 + n2)
            add(("weighted", n1, m1, n2, m2), lambda n1=n1, m1=m1, n2=n2, m2=m2, wmean=wmean: (
                f"A student scored ${m1}$ in a test weighted ${n1}$ and ${m2}$ in a test weighted "
                f"${n2}$. Find the weighted mean score.",
                n(wmean),
                [n(F(m1 + m2, 2)), n(F(n1 * m1 + n2 * m2, 2)), n(F(m1 * m2, 100))],
                f"Weighted mean $= ({n1} times {m1} + {n2} times {m2}) div {n1 + n2} = {fmt_num(wmean)}$. "
                f"*Chapter 7.*"))
        else:
            vals = sorted(rng.sample(range(1, 40), 10))
            p = rng.choice([90, 70, 10, 30])
            pos = max(1, min(10, (p * 10 + 50) // 100))
            add(("pct", tuple(vals), p), lambda vals=vals, p=p, pos=pos: (
                "The values " + ", ".join(str(v) for v in vals) + " are in order. Estimate the "
                f"${p}$th percentile.",
                n(vals[pos - 1]),
                [n(vals[pos]), n(vals[-1]), n(vals[0])],
                f"The ${p}$th percentile sits at position ${p} times 10 / 100 = {fmt_num(F(p * 10, 100))}$, "
                f"so take the value ${vals[pos - 1]}$. *Chapter 7.*"))
        if len(out) >= cap:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 8
def ch08(rng, cap):
    """Measures of dispersion."""
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            stem, correct, wrong, sol = fn()
        except Bad:
            return
        try:
            out.append(q(stem, correct, wrong, sol))
            seen.add(key)
        except Bad:
            pass

    def spread(vals):
        mean = F(sum(vals), len(vals))
        ss = sum((F(v) - mean) ** 2 for v in vals)
        return mean, ss / len(vals)

    for _ in range(1200):
        k = rng.randrange(10)
        if k == 0:
            vals = sorted(rng.sample(range(1, 40), 6))
            add(("range", tuple(vals)), lambda vals=vals: (
                "Find the range of " + ", ".join(str(v) for v in vals) + ".",
                n(vals[-1] - vals[0]),
                [n(vals[-1]), n(vals[0]), n(vals[-1] + vals[0])],
                f"Range $= {vals[-1]} - {vals[0]} = {vals[-1] - vals[0]}$. *Chapter 8.*"))
        elif k == 1:
            cnt = rng.choice([4, 5])
            vals = [rng.randrange(2, 20) for _ in range(cnt)]
            mean = F(sum(vals), cnt)
            md = sum(abs(F(v) - mean) for v in vals) / cnt
            add(("md", tuple(vals)), lambda vals=vals, mean=mean, md=md: (
                "Find the mean deviation of " + ", ".join(str(v) for v in vals) + ".",
                n(md),
                [n(mean), n(md * 2), n(F(sum(vals), cnt - 1))],
                f"The mean is ${fmt_num(mean)}$; the deviations average to ${fmt_num(md)}$ in magnitude. "
                f"*Chapter 8.*"))
        elif k == 2:
            cnt = rng.choice([4, 5])
            vals = [rng.randrange(2, 16) for _ in range(cnt)]
            mean, var = spread(vals)
            add(("var", tuple(vals)), lambda vals=vals, mean=mean, var=var: (
                "Find the variance of " + ", ".join(str(v) for v in vals) + ".",
                n(var),
                [n(var * 2), n(mean), n(F(sum(v * v for v in vals), len(vals)))],
                f"Mean $= {fmt_num(mean)}$; the mean square deviation is ${fmt_num(var)}$. *Chapter 8.*"))
        elif k == 3:
            cnt = rng.choice([4, 5])
            vals = [rng.randrange(1, 11) for _ in range(cnt)]
            mean, var = spread(vals)
            sd = F(math.isqrt(int(var)), 1) if var.denominator == 1 and math.isqrt(int(var)) ** 2 == int(var) else None
            if sd is None:
                continue
            add(("sd", tuple(vals)), lambda vals=vals, mean=mean, var=var, sd=sd: (
                "Find the standard deviation of " + ", ".join(str(v) for v in vals) + ".",
                n(sd),
                [n(var), n(sd * 2), n(sd + 1)],
                f"Variance $= {fmt_num(var)}$, so the standard deviation is $sqrt({fmt_num(var)}) = "
                f"{fmt_num(sd)}$. *Chapter 8.*"))
        elif k == 4:
            var = rng.choice([2, 3, 4, 5, 6, 8, 9, 12, 16])
            kk = rng.randrange(2, 5)
            add(("mult", var, kk), lambda var=var, kk=kk: (
                f"Every value in a data set is multiplied by ${kk}$. If the variance was ${var}$, "
                f"what is the new variance?",
                n(var * kk * kk),
                [n(var * kk), n(var), n(var + kk)],
                f"Multiplying by $k$ multiplies the variance by $k^2$ and the standard deviation by $k$. "
                f"Here the new variance is ${var} times {kk * kk} = {var * kk * kk}$. *Chapter 8.*"))
        elif k == 5:
            cnt = rng.randrange(10, 30)
            mean = rng.randrange(20, 60)
            sd = rng.randrange(2, 9)
            add(("shift", cnt, mean, sd), lambda cnt=cnt, mean=mean, sd=sd: (
                f"A distribution has mean ${mean}$ and standard deviation ${sd}$. If $5$ is added to "
                f"every value, what are the new mean and standard deviation?",
                f"mean ${mean + 5}$, SD ${sd}$",
                [f"mean ${mean}$, SD ${sd + 5}$", f"mean ${mean + 5}$, SD ${sd + 5}$",
                 f"mean ${mean}$, SD ${sd}$"],
                f"Adding a constant moves the mean but leaves the spread untouched, so the mean becomes "
                f"${mean + 5}$ and the SD stays ${sd}$. *Chapter 8.*"))
        elif k == 6:
            classes = [(1, 10), (11, 20), (21, 30), (31, 40)]
            mids = [F(lo + hi, 2) for lo, hi in classes]
            freqs = [rng.randrange(2, 9) for _ in classes]
            tot = sum(freqs)
            mean = sum(m * f for m, f in zip(mids, freqs)) / tot
            var = sum(f * (m - mean) ** 2 for m, f in zip(mids, freqs)) / tot
            add(("gvar", tuple(freqs)), lambda mids=mids, freqs=freqs, tot=tot, mean=mean, var=var: (
                "The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40 with frequencies "
                + ", ".join(str(f) for f in freqs) + " respectively. Estimate the variance.",
                n(var),
                [n(var * 2), n(mean), n(var + 1)],
                f"Using the midpoints $5.5, 15.5, 25.5, 35.5$ the mean is ${fmt_num(mean)}$; "
                f"$sum f (x - overline(x))^2 = {sum(f * (m - mean) ** 2 for m, f in zip(mids, freqs))}$ "
                f"over ${tot}$ gives the variance ${fmt_num(var)}$. *Chapter 8.*"))
        elif k == 7:
            cnt = rng.randrange(8, 20)
            mean = rng.randrange(10, 30)
            sd = rng.randrange(2, 8)
            add(("cv", cnt, mean, sd), lambda mean=mean, sd=sd: (
                f"A distribution has mean ${mean}$ and standard deviation ${sd}$. Find its coefficient "
                f"of variation, as a percentage.",
                mo(f"{float(sd / mean) * 100:.1f}") + " percent",
                [mo(f"{float(mean / sd) * 100:.1f}") + " percent", mo(f"{float(sd / mean):.2f}") + " percent",
                 mo(f"{float(sd / mean) * 1000:.0f}") + " percent"],
                f"Coefficient of variation $= \"SD\" div \"mean\" times 100 = ({sd} div {mean}) times 100 "
                f"= {float(sd / mean) * 100:.1f}$ percent. *Chapter 8.*"))
        elif k == 8:
            cnt = rng.randrange(4, 8)
            mean = rng.randrange(4, 12)
            var = rng.randrange(1, 9)
            sxx = cnt * (mean * mean + var)
            add(("sumx2", cnt, mean, var), lambda cnt=cnt, mean=mean, var=var, sxx=sxx: (
                f"A set of ${cnt}$ numbers has mean ${mean}$ and variance ${var}$. Find $sum x^2$.",
                n(sxx),
                [n(cnt * mean), n(cnt * var), n(mean * mean + var)],
                f"$sum x^2 = n(overline(x)^2 + sigma^2) = {cnt}({mean}^2 + {var}) = {sxx}$. *Chapter 8.*"))
        else:
            cnt = rng.choice([3, 4])
            vals = [rng.randrange(1, 9) for _ in range(cnt)]
            mean, var = spread(vals)
            sd = math.sqrt(float(var))
            add(("sd2", tuple(vals)), lambda vals=vals, sd=sd: (
                "Find the standard deviation of " + ", ".join(str(v) for v in vals) + ", correct to "
                "two decimal places.",
                mo(f"{sd:.2f}"),
                [mo(f"{sd * 2:.2f}"), mo(f"{sd * sd:.2f}"), mo(f"{sd + 1:.2f}")],
                f"Mean $= {fmt_num(F(sum(vals), len(vals)))}$; variance $= {float(var):.4f}$, so the "
                f"standard deviation is ${sd:.2f}$. *Chapter 8.*"))
        if len(out) >= cap:
            break
    return out


CHAPTERS.update({1: ch01, 2: ch02, 3: ch03, 4: ch04, 5: ch05, 6: ch06, 7: ch07, 8: ch08})


if __name__ == "__main__":
    total = 0
    for ch in sorted(CHAPTERS):
        got = build(ch, 42, seed=700 + ch)
        total += len(got)
        print(f"ch{ch:02d}: {len(got)}")
    print("total", total)


# ══════════════════════════════════════════════════════════ chapter 9
def fact(x: int) -> int:
    out = 1
    for i in range(2, x + 1):
        out *= i
    return out


def nPr(x: int, r: int) -> int:
    return fact(x) // fact(x - r)


def nCr(x: int, r: int) -> int:
    return fact(x) // (fact(r) * fact(x - r))


WORDS = {
    "BANANA": {"B": 1, "A": 3, "N": 2},
    "LEVEL": {"L": 2, "E": 2, "V": 1},
    "COMMITTEE": {"C": 1, "O": 1, "M": 2, "T": 2, "E": 2, "H": 1},
    "STATISTICS": {"S": 3, "T": 3, "A": 1, "I": 2, "C": 1},
    "SUCCESS": {"S": 3, "U": 1, "C": 2, "E": 1},
    "PARALLEL": {"P": 1, "A": 2, "R": 1, "L": 3, "E": 1},
    "MATHEMATICS": {"M": 2, "A": 2, "T": 2, "H": 1, "E": 1, "I": 1, "C": 1, "S": 1},
    "ASSESSMENT": {"A": 1, "S": 4, "E": 2, "M": 1, "N": 1, "T": 1},
}


def word_arrangements(word: str) -> int:
    counts = WORDS[word]
    total = fact(len(word))
    for c in counts.values():
        total //= fact(c)
    return total


def ch09(rng, cap):
    """Permutations and combinations."""
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            stem, correct, wrong, sol = fn()
        except Bad:
            return
        try:
            out.append(q(stem, correct, wrong, sol))
            seen.add(key)
        except Bad:
            pass

    for _ in range(1200):
        k = rng.randrange(12)
        if k == 0:
            m = rng.randrange(6, 11)
            r = rng.randrange(2, 5)
            add(("perm", m, r), lambda m=m, r=r: (
                f"In how many ways can ${r}$ different posts be filled from ${m}$ candidates, with no "
                f"candidate holding two posts?",
                n(nPr(m, r)),
                [n(nCr(m, r)), n(m ** r), n(nPr(m, r - 1))],
                f"The posts are distinct, so order matters: $attach(P, tl: {m}, bl: {r}) = "
                f"{' times '.join(str(m - i) for i in range(r))} = {nPr(m, r)}$. *Chapter 9.*"))
        elif k == 1:
            m = rng.randrange(6, 11)
            r = rng.randrange(2, 5)
            add(("comb", m, r), lambda m=m, r=r: (
                f"In how many ways can a committee of ${r}$ be chosen from ${m}$ people?",
                n(nCr(m, r)),
                [n(nPr(m, r)), n(nCr(m, r + 1) if r + 1 <= m else nCr(m, 1)), n(m * r)],
                f"The committee has no internal order, so divide the permutations by ${r}!$: "
                f"$attach(C, tl: {m}, bl: {r}) = {nPr(m, r)}/{fact(r)} = {nCr(m, r)}$. *Chapter 9.*"))
        elif k == 2:
            w = rng.choice(list(WORDS))
            total = word_arrangements(w)
            add(("letters", w), lambda w=w, total=total: (
                f"How many distinct arrangements are there of the letters of the word {w}?",
                n(total),
                [n(fact(len(w))) if fact(len(w)) != total else n(total // 2),
                 n(total // 2 if total % 2 == 0 else total * 2), n(total * 2)],
                f"The word has ${len(w)}$ letters with repeats: "
                + ", ".join(f"{c} ${v}$ times" for c, v in WORDS[w].items() if v > 1)
                + f". Divide ${len(w)}!$ by the factorial of each repeat, giving ${total}$. *Chapter 9.*"))
        elif k == 3:
            m = rng.randrange(5, 9)
            add(("circle", m), lambda m=m: (
                f"In how many ways can ${m}$ people be seated at a round table?",
                n(fact(m - 1)),
                [n(fact(m)), n(fact(m - 1) * 2), n(fact(m) // 2)],
                f"Fix one person to kill the rotations: the remaining ${m - 1}$ can be ordered in "
                f"${m - 1}! = {fact(m - 1)}$ ways. *Chapter 9.*"))
        elif k == 4:
            men, women = rng.randrange(5, 8), rng.randrange(4, 7)
            add(("cttee", men, women), lambda men=men, women=women: (
                f"A committee of $3$ men and $2$ women is to be chosen from ${men}$ men and ${women}$ "
                f"women. In how many ways can this be done?",
                n(nCr(men, 3) * nCr(women, 2)),
                [n(nCr(men, 3) + nCr(women, 2)), n(nPr(men, 3) * nPr(women, 2)), n(nCr(men + women, 5))],
                f"Choose the men and the women separately, then multiply: "
                f"$attach(C, tl: {men}, bl: 3) times attach(C, tl: {women}, bl: 2) = {nCr(men, 3)} times "
                f"{nCr(women, 2)} = {nCr(men, 3) * nCr(women, 2)}$. *Chapter 9.*"))
        elif k == 5:
            digits = rng.randrange(5, 8)
            length = rng.choice([2, 3])
            add(("digits", digits, length, "nr"), lambda digits=digits, length=length: (
                f"How many {length}-digit numbers can be formed from the digits $1$ to ${digits}$ if no "
                f"digit is repeated?",
                n(nPr(digits, length)),
                [n(digits ** length), n(nCr(digits, length)), n(nPr(digits, length - 1))],
                f"$attach(P, tl: {digits}, bl: {length}) = "
                f"{' times '.join(str(digits - i) for i in range(length))} = {nPr(digits, length)}$. "
                f"*Chapter 9.*"))
        elif k == 6:
            people = rng.randrange(6, 12)
            add(("hands", people), lambda people=people: (
                f"At a meeting, every one of ${people}$ people shakes hands once with every other. How "
                f"many handshakes take place?",
                n(nCr(people, 2)),
                [n(nPr(people, 2)), n(people * people), n(people * (people - 1))],
                f"A handshake involves two people and has no order, so count "
                f"$attach(C, tl: {people}, bl: 2) = {nCr(people, 2)}$. *Chapter 9.*"))
        elif k == 7:
            boys, girls = rng.randrange(3, 6), rng.choice([2, 3])
            add(("together", boys, girls), lambda boys=boys, girls=girls: (
                f"In how many ways can ${boys}$ boys and ${girls}$ girls sit in a row if the girls must "
                f"sit together?",
                n(fact(girls) * fact(boys + 1)),
                [n(fact(boys + girls)), n(fact(boys) * fact(girls)), n(fact(boys + 1))],
                f"Treat the girls as one block, giving ${boys + 1}$ objects arranged in ${boys + 1}!$ "
                f"ways, and the girls ordered inside the block in ${girls}!$ ways. The product is "
                f"${fact(girls) * fact(boys + 1)}$. *Chapter 9.*"))
        elif k == 8:
            m = rng.randrange(5, 10)
            r = rng.randrange(1, 4)
            add(("fact", m, r), lambda m=m, r=r: (
                f"Evaluate ${m}! div {m - r}!$.",
                n(nPr(m, r)),
                [n(nPr(m, r) * fact(r)), n(nCr(m, r)), n(m - r)],
                f"The quotient cancels every factor up to ${m - r}$: "
                f"${' times '.join(str(m - i) for i in range(r))} = {nPr(m, r)}$. *Chapter 9.*"))
        elif k == 9:
            sides = rng.randrange(5, 11)
            add(("diag", sides), lambda sides=sides: (
                f"How many diagonals has a polygon with ${sides}$ sides?",
                n(sides * (sides - 3) // 2),
                [n(sides * (sides - 1) // 2), n(sides * (sides - 3)), n(sides - 3)],
                f"Joining pairs of vertices gives $attach(C, tl: {sides}, bl: 2) = "
                f"{sides * (sides - 1) // 2}$ segments, of which ${sides}$ are sides, so there are "
                f"${sides * (sides - 3) // 2}$ diagonals. *Chapter 9.*"))
        elif k == 10:
            books = rng.randrange(4, 8)
            add(("shelf", books), lambda books=books: (
                f"In how many ways can ${books}$ different books be arranged on a shelf?",
                n(fact(books)),
                [n(fact(books - 1)), n(books * books), n(fact(books) // 2)],
                f"Any of the ${books}$ can go first, then any of the rest, and so on: "
                f"${books}! = {fact(books)}$. *Chapter 9.*"))
        else:
            m = rng.randrange(6, 10)
            add(("all", m), lambda m=m: (
                f"A password consists of ${m}$ different letters chosen in order from an alphabet of "
                f"$26$. In how many ways can it be formed?",
                n(nPr(26, m)),
                [n(nCr(26, m)), n(26 ** m), n(fact(m))],
                f"$attach(P, tl: 26, bl: {m}) = {' times '.join(str(26 - i) for i in range(m))} = "
                f"{nPr(26, m)}$. *Chapter 9.*"))
        if len(out) >= cap:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 10
SUMS = [0, 0, 1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1]


def ch10(rng, cap):
    """Probability."""
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            stem, correct, wrong, sol = fn()
        except Bad:
            return
        try:
            out.append(q(stem, correct, wrong, sol))
            seen.add(key)
        except Bad:
            pass

    for _ in range(1200):
        k = rng.randrange(12)
        if k == 0:
            desc, ways = rng.choice([("an even number", 3), ("a prime number", 3), ("an odd number", 3),
                                     ("a multiple of $3$", 2), ("a number greater than $4$", 2),
                                     ("a number less than $3$", 2), ("a factor of $6$", 4)])
            add(("die", desc), lambda desc=desc, ways=ways: (
                f"A fair die is thrown once. Find the probability of obtaining {desc}.",
                n(F(ways, 6)),
                [n(F(6 - ways, 6)), n(F(ways, 5)), n(F(ways + 1, 6))],
                f"There are $6$ equally likely outcomes and ${ways}$ of them qualify, so the probability "
                f"is ${ways}/6 = {fmt_num(F(ways, 6))}$. *Chapter 10.*"))
        elif k == 1:
            s = rng.randrange(4, 11)
            ways = SUMS[s]
            add(("dice", s), lambda s=s, ways=ways: (
                f"Two fair dice are thrown. Find the probability that the sum of the scores is ${s}$.",
                n(F(ways, 36)),
                [n(F(ways, 6)), n(F(1, 36)), n(F(ways + 1, 36))],
                f"There are $36$ equally likely pairs and ${ways}$ of them sum to ${s}$, so the "
                f"probability is $frac({ways}, 36) = {fmt_num(F(ways, 36))}$. *Chapter 10.*"))
        elif k == 2:
            desc, ways = rng.choice([("a king", 4), ("a heart", 13), ("a face card", 12), ("an ace", 4),
                                     ("a red card", 26), ("a spade", 13)])
            add(("card", desc), lambda desc=desc, ways=ways: (
                f"A card is drawn at random from a standard pack of $52$. Find the probability that it is "
                f"{desc}.",
                n(F(ways, 52)),
                [n(F(ways, 51)), n(F(4, 52)), n(F(13, 52))],
                f"${ways}$ of the $52$ cards qualify, so the probability is $frac({ways}, 52) = "
                f"{fmt_num(F(ways, 52))}$. *Chapter 10.*"))
        elif k == 3:
            r, b = rng.randrange(3, 8), rng.randrange(2, 6)
            add(("bagrep", r, b), lambda r=r, b=b: (
                f"A bag contains ${r}$ red and ${b}$ blue balls. Two balls are drawn with replacement. "
                f"Find the probability that both are red.",
                n(F(r * r, (r + b) ** 2)),
                [n(F(r * (r - 1), (r + b) * (r + b - 1))), n(F(2 * r, r + b)),
                 n(F(r, (r + b) ** 2))],
                f"With replacement the draws are independent, so multiply: "
                f"${r}/{r + b} times {r}/{r + b} = {fmt_num(F(r * r, (r + b) ** 2))}$. *Chapter 10.*"))
        elif k == 4:
            r, b = rng.randrange(3, 8), rng.randrange(2, 6)
            add(("bagno", r, b), lambda r=r, b=b: (
                f"A bag contains ${r}$ red and ${b}$ blue balls. Two balls are drawn without replacement. "
                f"Find the probability that both are red.",
                n(F(r * (r - 1), (r + b) * (r + b - 1))),
                [n(F(r * r, (r + b) ** 2)), n(F(r, (r + b) * (r + b - 1))),
                 n(F(2 * r, r + b))],
                f"After one red has gone there are ${r - 1}$ reds left in ${r + b - 1}$ balls, so the "
                f"probability is ${r}/{r + b} times {r - 1}/{r + b - 1} = "
                f"{fmt_num(F(r * (r - 1), (r + b) * (r + b - 1)))}$. *Chapter 10.*"))
        elif k == 5:
            tosses = rng.randrange(2, 5)
            add(("heads", tosses), lambda tosses=tosses: (
                f"A fair coin is tossed ${tosses}$ times. Find the probability of obtaining at least one "
                f"head.",
                n(F(2 ** tosses - 1, 2 ** tosses)),
                [n(F(1, 2 ** tosses)), n(F(1, 2)), n(F(tosses, 2 ** tosses))],
                f"$P(\"at least one head\") = 1 - P(\"no head\") = 1 - 1/{2 ** tosses} = "
                f"{fmt_num(F(2 ** tosses - 1, 2 ** tosses))}$. *Chapter 10.*"))
        elif k == 6:
            d = rng.randrange(2, 10)
            p = F(d, 10)
            add(("comp", d), lambda d=d, p=p: (
                f"The probability that an event $A$ occurs is ${fmt_num(p)}$. Find $P(\"not\" A)$.",
                n(1 - p),
                [n(p), n(p - 1), n(p * 2)],
                f"$P(\"not\" A) = 1 - P(A) = 1 - {fmt_num(p)} = {fmt_num(1 - p)}$. *Chapter 10.*"))
        elif k == 7:
            a, b = rng.choice([(2, 3), (3, 4), (1, 4), (2, 5), (3, 5), (1, 3)])
            add(("indep", a, b), lambda a=a, b=b: (
                f"$A$ and $B$ are independent events with $P(A) = 1/{a}$ and $P(B) = 1/{b}$. Find "
                f"$P(A \"and\" B)$.",
                n(F(1, a * b)),
                [n(F(1, a + b)), n(F(a + b, a * b)), n(F(1, a * b * 2))],
                f"Independent events multiply: $1/{a} times 1/{b} = 1/{a * b}$. *Chapter 10.*"))
        elif k == 8:
            pa, pb, pab = F(1, 2), F(1, 3), F(1, 6)
            add(("union",), lambda: (
                "Given $P(A) = frac(1, 2)$, $P(B) = frac(1, 3)$ and $P(A \"and\" B) = frac(1, 6)$, find "
                "$P(A \"or\" B)$.",
                n(pa + pb - pab),
                [n(pa + pb), n(pa + pb + pab), n(pa * pb)],
                f"$P(A \"or\" B) = P(A) + P(B) - P(A \"and\" B) = frac(1, 2) + frac(1, 3) - frac(1, 6) "
                f"= {fmt_num(pa + pb - pab)}$. The overlap is "
                f"counted twice unless it is subtracted once. *Chapter 10.*"))
        elif k == 9:
            a, b = rng.choice([(3, 2), (2, 1), (4, 1), (5, 3), (7, 2), (3, 5)])
            add(("odds", a, b), lambda a=a, b=b: (
                f"The odds in favour of an event are ${a} : {b}$. Find the probability that the event "
                f"occurs.",
                n(F(a, a + b)),
                [n(F(a, b)), n(F(b, a + b)), n(F(a + b, a))],
                f"Odds $a : b$ mean ${a}$ favourable outcomes against ${b}$ unfavourable, so "
                f"$P = {a}/({a} + {b}) = {fmt_num(F(a, a + b))}$. *Chapter 10.*"))
        elif k == 10:
            r, b = rng.randrange(3, 8), rng.randrange(2, 6)
            tot = r + b
            both = F(r * (r - 1), tot * (tot - 1))
            none = F(b * (b - 1), tot * (tot - 1))
            one = 1 - both - none
            add(("oneeach", r, b), lambda r=r, b=b, tot=tot, one=one: (
                f"A bag contains ${r}$ red and ${b}$ blue balls. Two balls are drawn without replacement. "
                f"Find the probability that one is red and one is blue.",
                n(one),
                [n(F(2 * r * b, tot * tot)), n(F(r * b, tot * (tot - 1))), n(F(r + b, tot))],
                f"Two orders count: red then blue, and blue then red. Their probabilities are "
                f"${r}/{tot} times {b}/{tot - 1}$ and ${b}/{tot} times {r}/{tot - 1}$, and they add to "
                f"${fmt_num(one)}$. *Chapter 10.*"))
        else:
            pass_, fail = rng.choice([(1, 3), (2, 5), (1, 4), (3, 10)])
            att = rng.choice([2, 3])
            p = F(1, pass_ + fail) if pass_ == 1 else F(pass_, pass_ + fail)
            p = F(pass_, pass_ + fail)
            add(("attempts", pass_, fail, att), lambda p=p, att=att: (
                f"The probability that a student passes a test at the first attempt is ${fmt_num(p)}$. "
                f"Find the probability of passing at least once in ${att}$ independent attempts.",
                n(1 - (1 - p) ** att),
                [n(p ** att), n(1 - p ** att), n(p * att)],
                f"$P(\"at least one\") = 1 - (1 - {fmt_num(p)})^{att} = "
                f"{fmt_num(1 - (1 - p) ** att)}$. Multiply the failures, then subtract from $1$. "
                f"*Chapter 10.*"))
        if len(out) >= cap:
            break
    return out


CHAPTERS.update({9: ch09, 10: ch10})
