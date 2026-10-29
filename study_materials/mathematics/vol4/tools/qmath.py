#!/usr/bin/env python3
"""Exact algebra helpers used to author and verify drill questions.

Everything here is built on fractions.Fraction, so answers are exact and a
question can never ship with an arithmetic mistake: the printed option is
computed, and the distractors are computed from *named error models* (the
mistakes candidates actually make), then checked for uniqueness.
"""

from __future__ import annotations

from fractions import Fraction as F


# ── formatting ─────────────────────────────────────────────────────────────
def fmt_num(x: F | int) -> str:
    """Plain-text/typst-math rendering of an exact number (no $ signs)."""
    x = F(x)
    if x.denominator == 1:
        return str(x.numerator)
    sign = "-" if x < 0 else ""
    x = abs(x)
    return f"{sign}frac({x.numerator}, {x.denominator})"


def m(x: F | int) -> str:
    """Number wrapped in inline math for use as an option or inside a stem."""
    s = fmt_num(F(x))
    neg = s.startswith("-")
    if neg:
        s = s[1:]
    out = "$" + s + "$"
    return ("$" + fmt_num(F(x)) + "$") if not neg else out.replace("$", "$-", 1)


def poly(coeffs: list[F | int], var: str = "x") -> str:
    """Render highest-power-first coefficients as Typst math (no $ signs)."""
    coeffs = [F(c) for c in coeffs]
    n = len(coeffs) - 1
    out = []
    for i, c in enumerate(coeffs):
        p = n - i
        if c == 0:
            continue
        sign = "-" if c < 0 else "+"
        mag = abs(c)
        if p == 0:
            body = fmt_num(mag)
        elif p == 1:
            body = ("" if mag == 1 else fmt_num(mag)) + var
        else:
            body = ("" if mag == 1 else fmt_num(mag)) + f"{var}^{p}"
        if not out:
            out.append(("-" if c < 0 else "") + body)
        else:
            out.append(f" {sign} {body}")
    return "".join(out) if out else "0"


def poly_mult(a: list[F], b: list[F]) -> list[F]:
    out = [F(0)] * (len(a) + len(b) - 1)
    for i, x in enumerate(a):
        for j, y in enumerate(b):
            out[i + j] += x * y
    return out


def poly_eval(coeffs: list[F], x: F) -> F:
    acc = F(0)
    for c in coeffs:
        acc = acc * x + F(c)
    return acc


def linear_factor(root: F) -> list[F]:
    """Coefficients of (x - root)."""
    return [F(1), -F(root)]


# ── question assembly ──────────────────────────────────────────────────────
class Bad(Exception):
    pass


def mc(stem: str, correct: str, wrong: list[str | None], sol: str) -> tuple:
    """Build one question tuple, enforcing uniqueness of the four options."""
    opts = [correct]
    for w in wrong:
        if w is None:
            continue
        if w not in opts:
            opts.append(w)
        if len(opts) == 4:
            break
    if len(opts) < 4:
        raise Bad(f"need four distinct options for: {stem[:70]} -> {opts}")
    return (stem, opts, 0, sol)


def numeric(stem: str, correct: F, wrong_values: list[F | None], sol: str,
            formatter=m) -> tuple:
    """Options are exact numbers; missing distractors are topped up sensibly."""
    correct = F(correct)
    seen = {formatter(correct)}
    wrong: list[str] = []
    candidates = [w for w in wrong_values if w is not None]
    candidates += [correct + 1, correct - 1, -correct, correct * 2,
                   correct + 2, correct - 2, correct / 2]
    for v in candidates:
        s = formatter(F(v))
        if s not in seen:
            seen.add(s)
            wrong.append(s)
        if len(wrong) == 3:
            break
    return mc(stem, formatter(correct), wrong, sol)


def dedupe_distractors(vals, correct, formatter=fmt_num, extra=("--",)):
    """Return formatted distractors that differ from the answer and each other."""
    seen = {formatter(correct)}
    out = []
    for v in vals:
        if v is None:
            continue
        s = formatter(v)
        if s not in seen:
            seen.add(s)
            out.append(s)
    for e in extra:
        if len(out) >= 3:
            break
        if e not in seen:
            seen.add(e)
            out.append(e)
    return out[:3]


def check(qs: list[tuple], name: str) -> None:
    for i, q in enumerate(qs, 1):
        stem, opts, idx, sol = q
        if len(opts) != 4:
            raise Bad(f"{name} Q{i}: {len(opts)} options")
        if len(set(opts)) != 4:
            raise Bad(f"{name} Q{i}: duplicate options {opts}")
        if not 0 <= idx < 4:
            raise Bad(f"{name} Q{i}: bad index")
        if "//" in stem + sol + "".join(opts):
            raise Bad(f"{name} Q{i}: contains // which starts a Typst comment")
    print(f"{name}: {len(qs)} questions checked OK")
