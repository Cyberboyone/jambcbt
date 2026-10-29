#!/usr/bin/env python3
"""Question engine for JAMB Mathematics Volume 3 (Geometry, Mensuration & Trigonometry).

Every question is built from computed numbers: the correct option is derived by
formula and the three distractors come from named error models, so a printed
key can never disagree with the printed question.
"""
from __future__ import annotations

import math
import random
import sys
from fractions import Fraction as F
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
from qmath import Bad, check, fmt_num, m, mc  # noqa: E402

LETTERS = "ABCD"


def dedupe(vals, correct, extra=("None of these", "Cannot be determined", "--")):
    seen = {correct}
    out = []
    for v in vals:
        if v is None or v in seen:
            continue
        seen.add(v)
        out.append(v)
    for e in extra:
        if len(out) >= 3:
            break
        if e not in seen:
            seen.add(e)
            out.append(e)
    return out[:3]


import re

_DEG = re.compile(r"^\$\(?(\d+)(?:/(\d+))?\)?\^degree\$$")
_NUM = re.compile(r"^\$(?:frac\((\d+), (\d+)\)|\((\d+)/(\d+)\)|(\d+))( ?[^$]*)?\$$")


def value_of(opt):
    """(value, unit) for a numeric option, or (None, None) for a word option."""
    hit = _DEG.match(opt)
    if hit:
        return F(int(hit.group(1)), int(hit.group(2) or 1)), "^degree"
    hit = _NUM.match(opt)
    if hit:
        if hit.group(1):
            v = F(int(hit.group(1)), int(hit.group(2)))
        elif hit.group(3):
            v = F(int(hit.group(3)), int(hit.group(4)))
        else:
            v = F(int(hit.group(5)))
        return v, (hit.group(6) or "")
    return None, None


def plausible(correct, opt):
    """Reject distractors that could never be a sensible answer."""
    cv, cu = value_of(correct)
    ov, ou = value_of(opt)
    if cv is None or ov is None or ou != cu:
        return True
    if cu == "^degree":
        cap = 180 if cv <= 180 else 360
        return 0 < ov <= cap
    if cv == 0:
        return True
    return ov > 0 and F(1, 10) <= abs(ov / cv) <= 10


def topup(correct, seen):
    """A plausible wrong option in the same units as the answer."""
    cv, cu = value_of(correct)
    if cv is None:
        return None
    if cu == "^degree":
        cands = [cv + 13, cv - 17, 180 - cv, cv + 22, cv - 9, (360 - cv) if cv <= 180 else cv - 30]
        if cv.denominator == 1:
            cands = [c for c in cands if F(c).denominator == 1]
    else:
        cands = [cv * 2, cv + 5, cv * 3, abs(cv - 7) or cv + 9, cv / 2, cv + 11]
    for c in cands:
        out = f"${fmt_num(c)}{cu}$" if cu != "^degree" else deg(c)
        if out not in seen and plausible(correct, out):
            return out
    return None


def q(stem, correct, wrongs, sol):
    opts = dedupe([w for w in wrongs if w and plausible(correct, w)], correct, extra=())
    while len(opts) < 3:
        extra = topup(correct, set(opts) | {correct})
        if extra is None:
            break
        opts.append(extra)
    return mc(stem, correct, opts, sol)


def brg(b):
    """A three-figure bearing that keeps its leading zeros in Typst math."""
    return "$" + '"' + f"{int(b) % 360:03d}" + '"^degree$'




def deg(v):
    return f"${fmt_num(F(v))}^degree$"


def par(n):
    """Wrap a negative number in brackets so differences stay readable."""
    return f"({n})" if n < 0 else str(n)


def clk(mins):
    """Noon plus a whole number of hours, written as a 12-hour clock time."""
    h = (12 + mins // 60) % 12
    return f"{h or 12}:00 p.m."


def sq(var, k):
    """Render (x - h)^2, (x + h)^2 or x^2 for a circle equation."""
    if k == 0:
        return f"{var}^2"
    if k > 0:
        return f"({var} - {k})^2"
    return f"({var} + {-k})^2"


# ══════════════════════════════════════════════════════════ chapter 1
def ch01(rng, n):
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        stem, correct, wrong, sol = fn()
        try:
            out.append(q(stem, correct, wrong, sol))
            seen.add(key)
        except Bad:
            pass

    for _ in range(400):
        k = rng.randrange(11)
        if k == 0:
            s = rng.choice([3, 4, 5, 6, 7, 8, 9, 10, 12])
            add(("sum", s), lambda s=s: (
                f"Find the sum of the interior angles of a polygon with ${s}$ sides.",
                deg((s - 2) * 180),
                [deg((s - 1) * 180), deg(s * 180), deg((s - 2) * 90)],
                f"Interior sum $= (n - 2) times 180^degree = ({s} - 2) times 180^degree = {(s - 2) * 180}^degree$. *Chapter 1.*"))
        elif k == 1:
            s = rng.choice([3, 4, 6, 8, 9, 10, 12])
            add(("each", s), lambda s=s: (
                f"Find each interior angle of a regular polygon with ${s}$ sides.",
                deg(F((s - 2) * 180, s)),
                [deg(F(360, s)), deg(F((s - 2) * 180, s) + 12), deg(F((s - 2) * 180, s) - 15)],
                f"Each angle $= (n - 2) times 180^degree -: n = {fmt_num(F((s - 2) * 180, s))}^degree$. *Chapter 1.*"))
        elif k == 2:
            s = rng.choice([4, 5, 6, 8, 9, 10, 12, 15])
            add(("ext", s), lambda s=s: (
                f"Find each exterior angle of a regular polygon with ${s}$ sides.",
                deg(F(360, s)),
                [deg(F(180, s)), deg(F(360, s) * 2), deg(F(720, s))],
                f"The exterior angles of any polygon total $360^degree$, so each is $360^degree -: {s} = {fmt_num(F(360, s))}^degree$. *Chapter 1.*"))
        elif k == 3:
            s = rng.choice([3, 4, 5, 6, 8, 9, 10, 12])
            add(("fromInt", s), lambda s=s: (
                f"The interior angle of a regular polygon is ${(s - 2) * 180 // s}^degree$. How many sides has it?",
                m(s), [m(s + 1), m(s - 1), m(2 * s)],
                f"Exterior angle $= 180^degree - {(s - 2) * 180 // s}^degree = {180 - (s - 2) * 180 // s}^degree$; $n = 360 -: {180 - (s - 2) * 180 // s} = {s}$. *Chapter 1.*"))
        elif k == 4:
            a, b = rng.randrange(30, 80), rng.randrange(30, 80)
            if a + b >= 170:
                continue
            add(("line", a, b), lambda a=a, b=b: (
                f"Two angles on a straight line are ${a}^degree$ and ${b}^degree$. Find the third angle.",
                deg(180 - a - b),
                [deg(360 - a - b), deg(180 - a), deg(a + b)],
                f"Angles on a straight line add to $180^degree$: $180 - {a} - {b} = {180 - a - b}^degree$. *Chapter 1.*"))
        elif k == 5:
            a, b, c = rng.randrange(60, 130), rng.randrange(60, 130), rng.randrange(60, 130)
            if a + b + c >= 350:
                continue
            add(("point", a, b, c), lambda a=a, b=b, c=c: (
                f"Three angles meet at a point and measure ${a}^degree$, ${b}^degree$ and ${c}^degree$. Find the fourth.",
                deg(360 - a - b - c),
                [deg(360 - a - b), deg(360 - a - b - c + 20), deg(180 - (a + b + c) // 2 if 180 - (a + b + c) // 2 > 0 else 90)],
                f"Angles at a point total $360^degree$: $360 - {a} - {b} - {c} = {360 - a - b - c}^degree$. *Chapter 1.*"))
        elif k == 6:
            a = rng.randrange(35, 145)
            add(("vert", a), lambda a=a: (
                f"Two straight lines intersect. One of the angles formed is ${a}^degree$. Find the angle vertically opposite to it.",
                deg(a), [deg(180 - a), deg(360 - a), deg(90 - a if a < 90 else a - 90)],
                f"Vertically opposite angles are equal, so the required angle is ${a}^degree$. "
                f"The angle adjacent to it would be ${180 - a}^degree$. *Chapter 1.*"))
        elif k == 7:
            a = rng.randrange(40, 140)
            add(("coint", a), lambda a=a: (
                f"Two parallel lines are cut by a transversal. One interior angle is ${a}^degree$. "
                f"Find the co-interior angle on the same side.",
                deg(180 - a), [deg(a), deg(360 - a), deg(90 + a)],
                f"Co-interior (allied) angles are supplementary: $180 - {a} = {180 - a}^degree$. *Chapter 1.*"))
        elif k == 8:
            a = rng.randrange(30, 150)
            add(("alt", a), lambda a=a: (
                f"Two parallel lines are cut by a transversal, forming an angle of ${a}^degree$ with one of them. "
                f"Find the alternate angle to it.",
                deg(a), [deg(180 - a), deg(90 - a if a < 90 else a - 90), deg(2 * a)],
                f"Alternate angles are equal, so the alternate angle is also ${a}^degree$. *Chapter 1.*"))
        elif k == 9:
            s = rng.choice([5, 6, 8, 9, 10, 12])
            add(("extSum", s), lambda s=s: (
                f"What is the sum of the exterior angles of a polygon with ${s}$ sides?",
                deg(360), [deg(180), deg((s - 2) * 180), deg(360 * s)],
                f"The exterior angles of *any* convex polygon always total $360^degree$, whatever the number of sides. *Chapter 1.*"))
        else:
            a, b = rng.randrange(30, 75), rng.randrange(30, 75)
            add(("tri", a, b), lambda a=a, b=b: (
                f"Two angles of a triangle are ${a}^degree$ and ${b}^degree$. Find the third angle.",
                deg(180 - a - b), [deg(360 - a - b), deg(180 - a), deg(180 - b)],
                f"The angles of a triangle total $180^degree$: $180 - {a} - {b} = {180 - a - b}^degree$. *Chapter 1.*"))
        if len(out) >= n:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 2
TRIADS = [(3, 4, 5), (5, 12, 13), (8, 15, 17), (7, 24, 25), (6, 8, 10), (9, 12, 15),
          (9, 40, 41), (20, 21, 29), (12, 16, 20), (10, 24, 26), (15, 20, 25), (16, 30, 34)]


def ch02(rng, n):
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            out.append(q(*fn()))
            seen.add(key)
        except Bad:
            pass

    for _ in range(500):
        k = rng.randrange(9)
        if k == 0:
            a, b = rng.randrange(30, 80), rng.randrange(30, 80)
            if a + b >= 170:
                continue
            add(("tri", a, b), lambda a=a, b=b: (
                f"Two angles of a triangle are ${a}^degree$ and ${b}^degree$. Find the exterior angle at the third vertex.",
                deg(a + b), [deg(180 - a - b), deg(360 - a - b), deg(a + b + 180)],
                f"The exterior angle equals the sum of the two interior opposite angles: "
                f"${a} + {b} = {a + b}^degree$. *Chapter 2.*"))
        elif k == 1:
            a, b, c = rng.choice(TRIADS)
            side = rng.randrange(3)
            if side == 0:
                add(("hyp", a, b), lambda a=a, b=b, c=c: (
                    f"A right-angled triangle has legs ${a}$ cm and ${b}$ cm. Find the hypotenuse.",
                    f"${c}$ cm", [f"${a + b}$ cm", f"${c + 1}$ cm", f"${a * b}$ cm"],
                    f"$c^2 = {a}^2 + {b}^2 = {a * a + b * b}$, so $c = sqrt({a * a + b * b}) = {c}$ cm. *Chapter 2.*"))
            else:
                add(("leg", a, b, side), lambda a=a, b=b, c=c, side=side: (
                    f"In a right-angled triangle the hypotenuse is ${c}$ cm and one leg is ${a}$ cm. Find the other leg.",
                    f"${b}$ cm", [f"${c + a}$ cm", f"${a + b}$ cm", f"${2 * b}$ cm"],
                    f"$b^2 = {c}^2 - {a}^2 = {c * c - a * a}$, so $b = {b}$ cm. *Chapter 2.*"))
        elif k == 2:
            b, h = rng.randrange(4, 20), rng.randrange(4, 20)
            add(("area", b, h), lambda b=b, h=h: (
                f"Find the area of a triangle with base ${b}$ cm and height ${h}$ cm.",
                f"${fmt_num(F(b * h, 2))}$ cm²",
                [f"${b * h}$ cm²", f"${fmt_num(F(b * h, 4))}$ cm²", f"${2 * b * h}$ cm²"],
                f"$A = 1/2 b h = 1/2 times {b} times {h} = {fmt_num(F(b * h, 2))}$ cm². *Chapter 2.*"))
        elif k == 3:
            a, b, c = rng.choice([(6, 8, 10), (5, 12, 13), (9, 12, 15), (8, 15, 17)])
            s = F(a + b + c, 2)
            area = F(a * b, 2) if a * a + b * b == c * c else None
            if area is None:
                continue
            add(("heron", a, b, c), lambda a=a, b=b, c=c, s=s, area=area: (
                f"A triangle has sides ${a}$ cm, ${b}$ cm and ${c}$ cm. Find its area.",
                f"${fmt_num(area)}$ cm²", [f"${fmt_num(s)}$ cm²", f"${fmt_num(area * 2)}$ cm²", f"${a + b + c}$ cm²"],
                f"$s = ({a} + {b} + {c})/2 = {fmt_num(s)}$; $A = sqrt(s(s - a)(s - b)(s - c)) = {fmt_num(area)}$ cm². *Chapter 2.*"))
        elif k == 4:
            kk = rng.choice([2, 3, 4])
            a, b, c = rng.choice(TRIADS)
            add(("sim", kk, a), lambda kk=kk, a=a, b=b, c=c: (
                f"Two triangles are similar. A side of the smaller is ${a}$ cm and the corresponding side of the larger is ${a * kk}$ cm. "
                f"If another side of the smaller is ${b}$ cm, find the corresponding side of the larger.",
                f"${b * kk}$ cm", [f"${b + kk}$ cm", f"${b}$ cm", f"${b * kk + a}$ cm"],
                f"The scale factor is ${a * kk} -: {a} = {kk}$, so the side is ${b} times {kk} = {b * kk}$ cm. *Chapter 2.*"))
        elif k == 5:
            kk = rng.choice([2, 3])
            add(("areaRatio", kk), lambda kk=kk: (
                f"Two similar figures have corresponding sides in the ratio $1 : {kk}$. Find the ratio of their areas.",
                f"$1 : {kk * kk}$", [f"$1 : {kk}$", f"$1 : {kk * 2}$", f"$1 : {kk ** 3}$"],
                f"Areas scale as the *square* of the linear ratio: $1^2 : {kk}^2 = 1 : {kk * kk}$. *Chapter 2.*"))
        elif k == 6:
            base = 2 * rng.randrange(15, 40)
            add(("iso", base), lambda base=base: (
                f"In an isosceles triangle the vertex angle is ${base}^degree$. Find each base angle.",
                deg(F(180 - base, 2)), [deg(180 - base), deg(F(180 - base, 2) + 5), deg(F(90 - base, 2))],
                f"The base angles are equal and total $180 - {base} = {180 - base}^degree$, so each is "
                f"${fmt_num(F(180 - base, 2))}^degree$. *Chapter 2.*"))
        elif k == 7:
            a = rng.choice([6, 8, 10, 12])
            add(("equi", a), lambda a=a: (
                f"Find the area of an equilateral triangle of side ${a}$ cm.",
                f"${fmt_num(F(a * a, 4))}sqrt(3)$ cm²",
                [f"${fmt_num(F(a * a, 2))}sqrt(3)$ cm²", f"${a * a}sqrt(3)$ cm²", f"${fmt_num(F(3 * a, 2))}$ cm²"],
                f"$A = (sqrt(3))/4 a^2 = (sqrt(3))/4 times {a * a} = {fmt_num(F(a * a, 4))}sqrt(3)$ cm². *Chapter 2.*"))
        else:
            add(("angleSum",), lambda: (
                "Which set of conditions is *not* sufficient to prove two triangles congruent?",
                "Two sides and a non-included angle (SSA)",
                ["Three sides (SSS)", "Two angles and the included side (ASA)", "Right angle, hypotenuse and one side (RHS)"],
                "SSA does not determine a unique triangle — the ambiguous case. The four valid tests are SSS, SAS, ASA and RHS. *Chapter 2.*"))
        if len(out) >= n:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 3
def ch03(rng, n):
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            out.append(q(*fn()))
            seen.add(key)
        except Bad:
            pass

    for _ in range(500):
        k = rng.randrange(10)
        if k == 0:
            a = rng.randrange(20, 90)
            add(("centre", a), lambda a=a: (
                f"An arc subtends ${a}^degree$ at the circumference of a circle. Find the angle it subtends at the centre.",
                deg(2 * a), [deg(a), deg(180 - a), deg(F(a, 2))],
                f"Angle at the centre $= 2 times$ angle at the circumference $= 2 times {a} = {2 * a}^degree$. *Chapter 3.*"))
        elif k == 1:
            a = rng.randrange(40, 180)
            add(("circ", a), lambda a=a: (
                f"An arc subtends ${a}^degree$ at the centre of a circle. Find the angle it subtends at the circumference.",
                deg(F(a, 2)), [deg(a), deg(2 * a), deg(180 - F(a, 2))],
                f"Angle at the circumference $= 1/2 times$ angle at the centre $= {fmt_num(F(a, 2))}^degree$. *Chapter 3.*"))
        elif k == 2:
            add(("semi",), lambda: (
                "AB is a diameter of a circle and P is any other point on the circle. Find $angle A P B$.",
                deg(90), [deg(45), deg(60), deg(180)],
                "The angle in a semicircle is a right angle. *Chapter 3.*"))
        elif k == 3:
            a = rng.randrange(60, 130)
            add(("cyc", a), lambda a=a: (
                f"In a cyclic quadrilateral, one angle is ${a}^degree$. Find the angle opposite to it.",
                deg(180 - a), [deg(a), deg(360 - a), deg(90 + a)],
                f"Opposite angles of a cyclic quadrilateral are supplementary: $180 - {a} = {180 - a}^degree$. *Chapter 3.*"))
        elif k == 4:
            a = rng.randrange(20, 70)
            add(("tangent", a), lambda a=a: (
                f"PT is a tangent to a circle with centre O, touching it at T. If $angle T O P = {a}^degree$, "
                f"find $angle O P T$.",
                deg(90 - a), [deg(a), deg(180 - a), deg(90 + a)],
                f"The radius meets the tangent at $90^degree$, so in $triangle O T P$: $angle O P T = 180 - 90 - {a} = {90 - a}^degree$. *Chapter 3.*"))
        elif k == 5:
            a = rng.randrange(30, 80)
            add(("altseg", a), lambda a=a: (
                f"The angle between a tangent and a chord at the point of contact is ${a}^degree$. "
                f"Find the angle in the alternate segment.",
                deg(a), [deg(180 - a), deg(2 * a), deg(90 - a)],
                "By the alternate segment theorem the two angles are equal. *Chapter 3.*"))
        elif k == 6:
            a = rng.randrange(40, 100)
            add(("sameseg", a), lambda a=a: (
                f"Two points P and Q lie on the same arc AB of a circle, with $angle A P B = {a}^degree$. Find $angle A Q B$.",
                deg(a), [deg(180 - a), deg(2 * a), deg(F(a, 2))],
                "Angles in the same segment are equal. *Chapter 3.*"))
        elif k == 7:
            r, d = rng.choice([(10, 6), (13, 5), (15, 9), (17, 8), (25, 7), (13, 12)])
            half = math.isqrt(r * r - d * d)
            if half * half != r * r - d * d:
                continue
            add(("chord", r, d), lambda r=r, d=d, half=half: (
                f"A chord of a circle of radius ${r}$ cm is ${d}$ cm from the centre. Find the length of the chord.",
                f"${2 * half}$ cm", [f"${half}$ cm", f"${r + d}$ cm", f"${2 * r - d}$ cm"],
                f"Half the chord $= sqrt({r}^2 - {d}^2) = {half}$, so the chord is ${2 * half}$ cm. *Chapter 3.*"))
        elif k == 8:
            a = rng.randrange(50, 120)
            add(("twotang", a), lambda a=a: (
                f"Two tangents are drawn from an external point to a circle, and the angle between them is ${a}^degree$. "
                f"Find the angle subtended by the chord of contact at the centre.",
                deg(180 - a), [deg(a), deg(2 * a), deg(360 - a)],
                f"The angle between the tangents and the angle at the centre are supplementary: $180 - {a} = {180 - a}^degree$. *Chapter 3.*"))
        else:
            add(("tangle",), lambda: (
                "Two tangents drawn from an external point to a circle are",
                "equal in length",
                ["perpendicular to each other", "parallel to each other", "of different lengths unless the point is on the circle"],
                "Tangents from the same external point are always equal in length. *Chapter 3.*"))
        if len(out) >= n:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 4
def ch04(rng, n):
    out, seen = [], set()

    def add(key, stem, correct, wrong, sol):
        if key in seen:
            return
        try:
            out.append(q(stem, correct, wrong, sol))
            seen.add(key)
        except Bad:
            pass

    def addq(key, fn):
        if key in seen:
            return
        try:
            out.append(q(*fn()))
            seen.add(key)
        except Bad:
            pass

    items = [
        (("pb",), "The locus of points equidistant from two fixed points A and B is",
         "the perpendicular bisector of AB",
         ["the angle bisector of $angle A B$", "a circle with centre A", "a line parallel to AB"],
         "Equidistance from two *points* always gives the perpendicular bisector. *Chapter 4.*"),
        (("lb",), "The locus of points equidistant from two intersecting straight lines is",
         "the pair of angle bisectors",
         ["the pair of parallel lines", "a circle", "the perpendicular bisector of the segment between them"],
         "Equidistance from two *lines* gives the two angle bisectors of the angles they form. *Chapter 4.*"),
        (("pt",), "The locus of points at a fixed distance $d$ from a fixed point O is",
         "a circle of radius $d$ centred at O",
         ["a straight line through O", "two parallel lines distance $d$ from O", "a square of side $d$"],
         "A constant distance from one fixed point traces a circle. *Chapter 4.*"),
        (("ln",), "The locus of points at a fixed distance $d$ from a straight line AB is",
         "two lines parallel to AB, one on each side",
         ["a circle of radius $d$", "the perpendicular bisector of AB", "a single line parallel to AB"],
         "Both sides of the line must be included: two parallel lines. *Chapter 4.*"),
        (("arc",), "To construct the perpendicular bisector of AB with compasses, the radius used must be",
         "more than half of AB",
         ["exactly half of AB", "less than half of AB", "equal to AB"],
         "Arcs of radius greater than $A B/2$ intersect; smaller arcs do not meet. *Chapter 4.*"),
        (("angle",), "The first step in bisecting an angle with compasses is to",
         "draw an arc from the vertex cutting both arms",
         ["draw a circle about the vertex", "draw the perpendicular bisector of one arm", "measure the angle with a protractor"],
         "Equal marks on the two arms give the two points the second pair of arcs is drawn from. *Chapter 4.*"),
        (("tri",), "A locus problem asks for points that are 4 cm from A *and* 3 cm from B. The number of such points is at most",
         "two", ["one", "three", "four"],
         "A circle of radius 4 about A meets a circle of radius 3 about B in at most two points. *Chapter 4.*"),
        (("region",), "The region inside a triangle equidistant from all three sides is found using",
         "the angle bisectors of the three angles",
         ["the perpendicular bisectors of the three sides", "the medians", "the altitudes"],
         "Equidistance from the three *sides* uses angle bisectors; their meeting point is the incentre. *Chapter 4.*"),
        (("circum",), "The centre of the circle through the three vertices of a triangle is found using",
         "the perpendicular bisectors of the sides",
         ["the angle bisectors", "the medians", "the altitudes"],
         "Equidistance from the three *vertices* uses perpendicular bisectors; the meeting point is the circumcentre. *Chapter 4.*"),
        (("scale",), "A construction is described as \"accurate\". This means the answer must be",
         "constructed with compasses and ruler only",
         ["measured with a protractor", "calculated from a formula", "estimated by eye"],
         "Accurate constructions use only a straight edge and compasses; a protractor would make it a measurement. *Chapter 4.*"),
    ]
    for key, stem, c, w, s in items:
        add(key, stem, c, w, s)

    extra = [
        (("halfplane",), "The set of points nearer to A than to B is",
         "the half-plane on A's side of the perpendicular bisector of AB",
         ["the half-plane on B's side of the perpendicular bisector of AB",
          "the circle with AB as diameter", "the line through the midpoint of AB"],
         "The boundary is the perpendicular bisector of AB; the side containing A is the required region. *Chapter 4.*"),
        (("rightangle",), "The locus of points P such that $angle A P B = 90^degree$, where AB is fixed, is",
         "the circle with AB as diameter",
         ["the perpendicular bisector of AB", "a straight line parallel to AB", "two arcs centred at A and B"],
         "The angle in a semicircle is $90^degree$, so P lies on the circle with AB as diameter (Thales). *Chapter 4.*"),
        (("rollcircle",), "A circle of radius 3 cm rolls along a straight line without slipping. The path traced by its centre is",
         "a straight line parallel to the given line, 3 cm away",
         ["a circle of radius 3 cm", "a straight line along the given line", "a cycloid"],
         "The centre always stays 3 cm from the line, so it moves along a parallel line. *Chapter 4.*"),
        (("equi3",), "The number of points equidistant from the three vertices of a triangle is",
         "exactly one", ["two", "three", "infinitely many"],
         "The perpendicular bisectors of the three sides meet at one point, the circumcentre. *Chapter 4.*"),
    ]
    for key, stem, c, w, sol in extra:
        add(key, stem, c, w, sol)

    for _ in range(400):
        k = rng.randrange(5)
        if k == 2:
            r1, r2 = rng.choice([(5, 3), (7, 2), (4, 4), (9, 5), (6, 3)])
            d = rng.randrange(2, 15)
            if d > r1 + r2:
                cnt = 4
            elif d == r1 + r2:
                cnt = 3
            elif d == abs(r1 - r2):
                cnt = 1
            elif d < abs(r1 - r2):
                cnt = 0
            else:
                cnt = 2
            if d > r1 + r2:
                rel = "do not meet"
            elif d == r1 + r2:
                rel = "touch externally"
            elif d == abs(r1 - r2):
                rel = "touch internally"
            elif d > abs(r1 - r2):
                rel = "intersect in two points"
            else:
                rel = "lie one inside the other"
            addq(("tangents", r1, r2, d), lambda r1=r1, r2=r2, d=d, cnt=cnt, rel=rel: (
                f"Two circles of radii ${r1}$ cm and ${r2}$ cm have their centres ${d}$ cm apart. "
                f"How many common tangents can be drawn to them?",
                m(cnt), [m(4 if cnt != 4 else 2), m(1), m(3)],
                f"The radii differ by ${abs(r1 - r2)}$ cm and sum to ${r1 + r2}$ cm; since the centres are ${d}$ cm apart "
                f"the circles {rel}, so they have ${cnt}$ common tangents. *Chapter 4.*"))
            if len(out) >= n:
                break
            continue
        if k == 3:
            twice = rng.choice([True, False])
            ang = rng.choice([120, 60, 180]) if twice else rng.choice([120, 90, 60, 180])
            res = ang // 4 if twice else ang // 2
            addq(("bisect", ang, twice), lambda ang=ang, twice=twice, res=res: (
                f"A ${ang}^degree$ angle is bisected{' twice' if twice else ''}. Each resulting angle measures",
                deg(res), [deg(ang // 2 if twice else ang // 4), deg(res * 2), deg(ang)],
                f"${ang} -: 2{' -: 2' if twice else ''} = {res}^degree$. *Chapter 4.*"))
            if len(out) >= n:
                break
            continue
        if k == 1:
            d = rng.choice([6, 8, 10, 12, 14])
            addq(("thales", d), lambda d=d: (
                f"PQ = ${d}$ cm. A point X moves so that $angle P X Q = 90^degree$. The radius of the circle on which X lies is",
                f"${d // 2}$ cm", [f"${d}$ cm", f"${d * 2}$ cm", f"${fmt_num(F(d, 3))}$ cm"],
                f"$angle P X Q = 90^degree$ puts X on the circle with PQ as diameter, so the radius is ${d}/2 = {d // 2}$ cm. *Chapter 4.*"))
            if len(out) >= n:
                break
            continue
        if sum(1 for _t in out if _t[0].startswith("Points P are")) >= 12:
            if len(out) >= n:
                break
            continue
        d1 = rng.randrange(2, 9)
        d2 = rng.randrange(2, 9)
        dist = rng.randrange(2, 12)
        if abs(d1 - d2) < dist < d1 + d2:
            cnt = 2
        elif dist == d1 + d2 or dist == abs(d1 - d2):
            cnt = 1
        else:
            cnt = 0
        add(("intersect", d1, d2, dist),
            f"Points P are ${d1}$ cm from A and ${d2}$ cm from B, where AB $= {dist}$ cm. How many positions can P occupy?",
            m(cnt), [m(2 if cnt != 2 else 0), m(4), m(3)],
            f"Two circles of radii ${d1}$ and ${d2}$ with centres ${dist}$ apart: the number of intersections is ${cnt}$ "
            f"(compare ${dist}$ with ${d1 + d2}$ and ${abs(d1 - d2)}$). *Chapter 4.*")
        if len(out) >= n:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 5
PI = F(22, 7)


def ch05(rng, n):
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            out.append(q(*fn()))
            seen.add(key)
        except Bad:
            pass

    for _ in range(500):
        k = rng.randrange(9)
        if k == 0:
            b, h = rng.randrange(4, 20), rng.randrange(4, 20)
            add(("rect", b, h), lambda b=b, h=h: (
                f"Find the area of a rectangle ${b}$ cm by ${h}$ cm.",
                f"${b * h}$ cm²", [f"${2 * (b + h)}$ cm²", f"${b + h}$ cm²", f"${fmt_num(F(b * h, 2))}$ cm²"],
                f"$A = b h = {b} times {h} = {b * h}$ cm². *Chapter 5.*"))
        elif k == 1:
            b, h = rng.randrange(5, 20), rng.randrange(4, 15)
            add(("para", b, h), lambda b=b, h=h: (
                f"Find the area of a parallelogram with base ${b}$ cm and height ${h}$ cm.",
                f"${b * h}$ cm²", [f"${fmt_num(F(b * h, 2))}$ cm²", f"${2 * (b + h)}$ cm²", f"${b + h}$ cm²"],
                f"$A = b h = {b} times {h} = {b * h}$ cm² (not $1/2 b h$ — that is the triangle). *Chapter 5.*"))
        elif k == 2:
            a, b, h = rng.randrange(4, 14), rng.randrange(4, 14), rng.randrange(3, 12)
            if (a + b) * h % 2:
                continue
            add(("trap", a, b, h), lambda a=a, b=b, h=h: (
                f"Find the area of a trapezium with parallel sides ${a}$ cm and ${b}$ cm and height ${h}$ cm.",
                f"${fmt_num(F((a + b) * h, 2))}$ cm²",
                [f"${(a + b) * h}$ cm²", f"${a * b}$ cm²", f"${fmt_num(F(a * b * h, 2))}$ cm²"],
                f"$A = 1/2 (a + b) h = 1/2 ({a} + {b}) times {h} = {fmt_num(F((a + b) * h, 2))}$ cm². *Chapter 5.*"))
        elif k == 3:
            r = rng.choice([7, 14, 21, 28, 35])
            add(("circ", r), lambda r=r: (
                f"Find the area of a circle of radius ${r}$ cm. (Take $pi = 22/7$.)",
                f"${fmt_num(PI * r * r)}$ cm²",
                [f"${fmt_num(2 * PI * r)}$ cm²", f"${fmt_num(PI * r)}$ cm²", f"${4 * r * r}$ cm²"],
                f"$A = pi r^2 = 22/7 times {r}^2 = {fmt_num(PI * r * r)}$ cm². *Chapter 5.*"))
        elif k == 4:
            r = rng.choice([7, 14, 21, 28])
            add(("circum", r), lambda r=r: (
                f"Find the circumference of a circle of radius ${r}$ cm. (Take $pi = 22/7$.)",
                f"${fmt_num(2 * PI * r)}$ cm",
                [f"${fmt_num(PI * r * r)}$ cm", f"${fmt_num(PI * r)}$ cm", f"${4 * r}$ cm"],
                f"$C = 2 pi r = 2 times 22/7 times {r} = {fmt_num(2 * PI * r)}$ cm. *Chapter 5.*"))
        elif k == 5:
            r = rng.choice([7, 14, 21])
            th = rng.choice([30, 45, 60, 90, 120, 135])
            add(("sector", r, th), lambda r=r, th=th: (
                f"Find the area of a sector of radius ${r}$ cm which subtends ${th}^degree$ at the centre. (Take $pi = 22/7$.)",
                f"${fmt_num(F(th, 360) * PI * r * r)}$ cm²",
                [f"${fmt_num(F(th, 180) * PI * r * r)}$ cm²", f"${fmt_num(F(1, 2) * r * r)}$ cm²", f"${fmt_num(F(th, 360) * 2 * PI * r)}$ cm²"],
                f"$A = theta/360 times pi r^2 = {th}/360 times 22/7 times {r * r} = {fmt_num(F(th, 360) * PI * r * r)}$ cm². *Chapter 5.*"))
        elif k == 6:
            r = rng.choice([7, 14, 21])
            th = rng.choice([30, 45, 60, 90, 120, 135])
            add(("arc", r, th), lambda r=r, th=th: (
                f"Find the length of an arc of a circle of radius ${r}$ cm subtending ${th}^degree$ at the centre. (Take $pi = 22/7$.)",
                f"${fmt_num(F(th, 360) * 2 * PI * r)}$ cm",
                [f"${fmt_num(F(th, 180) * 2 * PI * r)}$ cm", f"${fmt_num(F(th, 360) * PI * r * r)}$ cm", f"${fmt_num(2 * PI * r)}$ cm"],
                f"Arc $= theta/360 times 2 pi r = {th}/360 times 2 times 22/7 times {r} = {fmt_num(F(th, 360) * 2 * PI * r)}$ cm. *Chapter 5.*"))
        elif k == 7:
            d1, d2 = rng.randrange(6, 20), rng.randrange(6, 20)
            add(("rhom", d1, d2), lambda d1=d1, d2=d2: (
                f"Find the area of a rhombus whose diagonals are ${d1}$ cm and ${d2}$ cm.",
                f"${fmt_num(F(d1 * d2, 2))}$ cm²", [f"${d1 * d2}$ cm²", f"${2 * d1 * d2}$ cm²", f"${d1 + d2}$ cm²"],
                f"$A = 1/2 d_1 d_2 = 1/2 times {d1} times {d2} = {fmt_num(F(d1 * d2, 2))}$ cm². *Chapter 5.*"))
        else:
            r = rng.choice([7, 14])
            th = rng.choice([60, 90, 120])
            add(("perim", r, th), lambda r=r, th=th: (
                f"Find the perimeter of a sector of radius ${r}$ cm with angle ${th}^degree$. (Take $pi = 22/7$.)",
                f"${fmt_num(2 * r + F(th, 360) * 2 * PI * r)}$ cm",
                [f"${fmt_num(F(th, 360) * 2 * PI * r)}$ cm", f"${fmt_num(2 * r)}$ cm", f"${fmt_num(2 * PI * r)}$ cm"],
                f"Perimeter $= 2r +$ arc $= {2 * r} + {fmt_num(F(th, 360) * 2 * PI * r)} = {fmt_num(2 * r + F(th, 360) * 2 * PI * r)}$ cm. *Chapter 5.*"))
        if len(out) >= n:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 6
def ch06(rng, n):
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            out.append(q(*fn()))
            seen.add(key)
        except Bad:
            pass

    for _ in range(500):
        k = rng.randrange(8)
        if k == 0:
            a = rng.randrange(2, 12)
            add(("cube", a), lambda a=a: (
                f"Find the total surface area of a cube of side ${a}$ cm.",
                f"${6 * a * a}$ cm²", [f"${a * a}$ cm²", f"${4 * a * a}$ cm²", f"${a ** 3}$ cm³"],
                f"$S.A. = 6 a^2 = 6 times {a * a} = {6 * a * a}$ cm². *Chapter 6.*"))
        elif k == 1:
            l, b, h = rng.randrange(3, 12), rng.randrange(3, 10), rng.randrange(3, 10)
            add(("cuboid", l, b, h), lambda l=l, b=b, h=h: (
                f"Find the volume of a cuboid ${l}$ cm by ${b}$ cm by ${h}$ cm.",
                f"${l * b * h}$ cm³", [f"${2 * (l * b + l * h + b * h)}$ cm³",
                                      f"${l + b + h}$ cm³", f"${fmt_num(F(l * b * h, 2))}$ cm³"],
                f"$V = l b h = {l} times {b} times {h} = {l * b * h}$ cm³. *Chapter 6.*"))
        elif k == 2:
            r = rng.choice([7, 14])
            h = rng.randrange(5, 20)
            add(("cyl", r, h), lambda r=r, h=h: (
                f"Find the volume of a cylinder of radius ${r}$ cm and height ${h}$ cm. (Take $pi = 22/7$.)",
                f"${fmt_num(PI * r * r * h)}$ cm³",
                [f"${fmt_num(2 * PI * r * h)}$ cm³", f"${fmt_num(PI * r * h)}$ cm³", f"${fmt_num(F(1, 3) * PI * r * r * h)}$ cm³"],
                f"$V = pi r^2 h = 22/7 times {r * r} times {h} = {fmt_num(PI * r * r * h)}$ cm³. *Chapter 6.*"))
        elif k == 3:
            r = rng.choice([7, 14])
            h = 3 * rng.randrange(2, 6)
            add(("cone", r, h), lambda r=r, h=h: (
                f"Find the volume of a cone of base radius ${r}$ cm and height ${h}$ cm. (Take $pi = 22/7$.)",
                f"${fmt_num(F(1, 3) * PI * r * r * h)}$ cm³",
                [f"${fmt_num(PI * r * r * h)}$ cm³", f"${fmt_num(F(1, 2) * PI * r * r * h)}$ cm³", f"${fmt_num(PI * r * h)}$ cm³"],
                f"$V = 1/3 pi r^2 h = 1/3 times 22/7 times {r * r} times {h} = {fmt_num(F(1, 3) * PI * r * r * h)}$ cm³. *Chapter 6.*"))
        elif k == 4:
            add(("sphere",), lambda: (
                "A sphere has radius $r$. Its total surface area is",
                "$4 pi r^2$", ["$2 pi r^2$", "$(4/3) pi r^3$", "$pi r^2$"],
                "The surface area of a sphere is $4 pi r^2$; the volume is $(4/3) pi r^3$. *Chapter 6.*"))
        elif k == 5:
            a = rng.randrange(4, 12)
            h = 3 * rng.randrange(2, 6)
            add(("pyr", a, h), lambda a=a, h=h: (
                f"A pyramid has a square base of side ${a}$ cm and height ${h}$ cm. Find its volume.",
                f"${a * a * h // 3}$ cm³",
                [f"${a * a * h}$ cm³", f"${a * a * h // 2}$ cm³", f"${a * h}$ cm³"],
                f"$V = 1/3 times$ base area $times h = 1/3 times {a * a} times {h} = {a * a * h // 3}$ cm³. *Chapter 6.*"))
        elif k == 6:
            add(("frustum",), lambda: (
                "The volume of a frustum of a cone with base radii $R$ and $r$ and height $h$ is",
                "$(1/3) pi h (R^2 + R r + r^2)$", ["$(1/3) pi h (R^2 + r^2)$", "$(1/3) pi h R r$", "$pi h (R^2 - r^2)$"],
                "The frustum formula adds the two circular areas and the product of the radii: $(1/3) pi h (R^2 + R r + r^2)$. *Chapter 6.*"))
        else:
            r = rng.choice([7, 14])
            h = rng.randrange(5, 15)
            add(("curved", r, h), lambda r=r, h=h: (
                f"Find the curved surface area of a cylinder of radius ${r}$ cm and height ${h}$ cm. (Take $pi = 22/7$.)",
                f"${fmt_num(2 * PI * r * h)}$ cm²",
                [f"${fmt_num(PI * r * r * h)}$ cm²", f"${fmt_num(2 * PI * r * (r + h))}$ cm²", f"${fmt_num(PI * r * h)}$ cm²"],
                f"Curved area $= 2 pi r h = 2 times 22/7 times {r} times {h} = {fmt_num(2 * PI * r * h)}$ cm². *Chapter 6.*"))
        if len(out) >= n:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 7
R_EARTH = 6300  # km, chosen so 1° = 110 km exactly with pi = 22/7


def ch07(rng, n):
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            out.append(q(*fn()))
            seen.add(key)
        except Bad:
            pass

    for _ in range(900):
        k = rng.randrange(14)
        if k == 8:
            dist = rng.choice([555, 1110, 1665, 2220, 2775])
            add(("reverse", dist), lambda dist=dist: (
                f"Two points on the same meridian are ${dist}$ km apart. Find their difference in latitude, taking 1° as 111 km.",
                deg(dist // 111), [deg(dist // 55), deg(dist // 222), deg(dist * 2 // 111)],
                f"$theta = {dist} -: 111 = {fmt_num(F(dist, 111))}^degree$. *Chapter 7.*"))
        elif k == 9:
            dl = rng.choice([10, 20, 25, 40, 75])
            add(("mins", dl), lambda dl=dl: (
                f"Find the difference in local time between two towns whose longitudes differ by ${dl}^degree$, in minutes.",
                f"${dl * 4}$ minutes", [f"${dl * 2}$ minutes", f"${dl * 15}$ minutes", f"${dl * 60}$ minutes"],
                f"Each degree of longitude is 4 minutes of time, so ${dl} times 4 = {dl * 4}$ minutes. *Chapter 7.*"))
        elif k == 10:
            add(("smallcirc",), lambda: (
                "The circumference of the circle of latitude $60^degree$ is, as a fraction of the equator's circumference,",
                "one half", ["one quarter", "the same", "one eighth"],
                "The radius of the parallel is $R cos 60^degree = R/2$, so its circumference is half the equator's. *Chapter 7.*"))
        elif k == 11:
            val = rng.choice([19800, 39600])
            name = "a meridian (pole to pole)" if val == 19800 else "the equator"
            add(("circ", val), lambda val=val, name=name: (
                f"Taking $R = 6300$ km and $pi = 22/7$, find the length of {name}.",
                f"${val}$ km", [f"${val * 2}$ km" if val == 19800 else f"${val // 2}$ km", f"${val // 2}$ km", f"$12600$ km"],
                f"Length $= 2 pi R = 2 times 22/7 times 6300 = 39600$ km; a meridian is half of that, 19800 km. *Chapter 7.*"))
        elif k == 12:
            dl = rng.choice([15, 30, 45, 90])
            add(("longfromtime", dl), lambda dl=dl: (
                f"Two towns differ in local time by ${fmt_num(F(dl * 4, 60))}$ {'hour' if dl == 15 else 'hours'}. "
                f"Find the difference in their longitudes.",
                deg(dl), [deg(dl * 2), deg(F(dl, 2)), deg(dl + 15)],
                f"One hour corresponds to $15^degree$, so ${fmt_num(F(dl * 4, 60))}$ hours corresponds to ${dl}^degree$. *Chapter 7.*"))
        elif k == 13:
            add(("latDef",), lambda: (
                "The latitude of a place is",
                "the angle between the equator and the line from the centre of the earth to the place",
                ["the angle between the prime meridian and the place",
                 "the distance of the place from the nearest pole",
                 "the angle measured clockwise from the north pole"],
                "Latitude is measured north or south of the equator as an angle at the centre of the earth. *Chapter 7.*"))
        elif k == 0:
            d = rng.choice([5, 10, 15, 20, 30, 45, 60])
            add(("merid", d), lambda d=d: (
                f"Two towns on the same meridian have latitudes ${d}^degree N$ and ${d + 10}^degree N$. "
                f"Find the distance between them, taking 1° of latitude as 111 km.",
                f"${10 * 111}$ km", [f"${5 * 111}$ km", f"${20 * 111}$ km", f"${111}$ km"],
                f"Latitude difference $= 10^degree$, so the distance is $10 times 111 = {10 * 111}$ km. *Chapter 7.*"))
        elif k == 1:
            lat = rng.choice([0, 60, 0, 60])
            dl = rng.choice([10, 20, 30, 45, 60, 90])
            if lat == 0:
                dist = 110 * dl
                add(("equator", dl), lambda dl=dl, dist=dist: (
                    f"Two towns on the equator differ in longitude by ${dl}^degree$. "
                    f"Find the distance between them along the equator. (Take $R = 6300$ km, $pi = 22/7$.)",
                    f"${dist}$ km", [f"${dist // 2}$ km", f"${dist * 2}$ km", f"$110$ km"],
                    f"On the equator the radius is $R$, and $1^degree = 110$ km, so the distance is "
                    f"${dl} times 110 = {dist}$ km. *Chapter 7.*"))
            else:
                dist = 110 * dl // 2
                add(("lat60", dl), lambda dl=dl, dist=dist: (
                    f"Two towns on latitude $60^degree N$ differ in longitude by ${dl}^degree$. "
                    f"Find the distance between them along that parallel. (Take $R = 6300$ km, $pi = 22/7$.)",
                    f"${dist}$ km", [f"${dist * 2}$ km", f"${dist + 110}$ km", f"${dist // 2}$ km"],
                    f"Radius of the parallel $= R cos 60^degree = 3150$ km, so $1^degree = 55$ km and the distance is "
                    f"${dl} times 55 = {dist}$ km. *Chapter 7.*"))
        elif k == 2:
            dl = rng.choice([15, 30, 45, 60, 90, 120])
            add(("time", dl), lambda dl=dl: (
                f"Two towns differ in longitude by ${dl}^degree$. Find the difference in their local times.",
                f"${fmt_num(F(dl, 15))}$ {'hour' if dl == 15 else 'hours'}",
                [f"${fmt_num(F(dl, 30))}$ {'hour' if dl == 30 else 'hours'}",
                 f"${fmt_num(F(dl * 2, 15))}$ hours", f"${dl}$ hours"],
                f"$15^degree$ of longitude is one hour, so ${dl}^degree = {dl}/15 = {fmt_num(F(dl, 15))}$ hours. *Chapter 7.*"))
        elif k == 3:
            lat, cs = 60, "1/2"
            rad = F(6300, 2)
            add(("smallrad", lat), lambda lat=lat, cs=cs, rad=rad: (
                f"Find the radius of the circle of latitude ${lat}^degree$. (Take $R = 6300$ km.)",
                f"${fmt_num(rad)}$ km",
                ["$6300$ km", f"${fmt_num(rad + 3150)}$ km", f"${fmt_num(rad // 2)}$ km"],
                f"$r = R cos {lat}^degree = 6300 times {cs} = {fmt_num(rad)}$ km. *Chapter 7.*"))
        elif k == 4:
            add(("great",), lambda: (
                "A great circle of a sphere is",
                "any circle whose plane passes through the centre of the sphere",
                ["any circle drawn on the surface of the sphere",
                 "a circle whose radius is half the radius of the sphere",
                 "a circle of latitude other than the equator"],
                "A great circle has the same centre and radius as the sphere; the equator and all meridians are great circles. *Chapter 7.*"))
        elif k == 5:
            t = rng.choice([2, 3, 4, 6])
            dl = rng.choice([15, 30, 45, 60])
            mins = dl * 4
            add(("localtime", dl), lambda dl=dl, mins=mins: (
                f"Town P is on longitude $0^degree$ and town Q is ${dl}^degree$ east of P. "
                f"If the local time at P is 12:00 noon, what is the local time at Q?",
                clk(mins), [clk(mins + 60), clk(mins - 60), clk(mins + 120)],
                f"Q is east, so its local time is ahead: ${dl} times 4 = {mins}$ minutes. *Chapter 7.*"))
        elif k == 6:
            add(("meridianDef",), lambda: (
                "A meridian is",
                "a great circle passing through both poles",
                ["a circle parallel to the equator", "a small circle through the poles", "the longest parallel of latitude"],
                "Every meridian is a great circle through the North and South poles; its length is the full circumference of the sphere. *Chapter 7.*"))
        else:
            lat1, lat2 = rng.choice([(20, 50), (10, 40), (35, 65)])
            add(("sameMeridian", lat1, lat2), lambda lat1=lat1, lat2=lat2: (
                f"Find the distance between two points on the same meridian at latitudes ${lat1}^degree N$ and ${lat2}^degree S$, "
                f"taking 1° as 111 km.",
                f"${(lat1 + lat2) * 111}$ km", [f"${abs(lat2 - lat1) * 111}$ km",
                                               f"${(lat1 + lat2) * 111 // 2}$ km", f"${(lat1 + lat2) * 55}$ km"],
                f"Opposite hemispheres: the angular distance is ${lat1} + {lat2} = {lat1 + lat2}^degree$, so the distance is "
                f"${lat1 + lat2} times 111 = {(lat1 + lat2) * 111}$ km. *Chapter 7.*"))
        if len(out) >= n:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 8
def ch08(rng, n):
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            out.append(q(*fn()))
            seen.add(key)
        except Bad:
            pass

    for _ in range(500):
        k = rng.randrange(8)
        if k == 0:
            x1, y1 = rng.randrange(-9, 9), rng.randrange(-9, 9)
            x2, y2 = rng.randrange(-9, 9), rng.randrange(-9, 9)
            if x1 == x2:
                continue
            gg = F(y2 - y1, x2 - x1)
            add(("grad", x1, y1, x2, y2), lambda x1=x1, y1=y1, x2=x2, y2=y2, gg=gg: (
                f"Find the gradient of the line joining $({x1}, {y1})$ and $({x2}, {y2})$.",
                m(gg), [m(-gg), m(F(x2 - x1, y2 - y1)) if y2 != y1 else m(gg + 2), m(gg + 1)],
                f"$m = (y_2 - y_1)/(x_2 - x_1) = ({par(y2)} - ({par(y1)}))/({par(x2)} - ({par(x1)})) = {fmt_num(gg)}$. *Chapter 8.*"))
        elif k == 1:
            x1, y1 = rng.randrange(-8, 8), rng.randrange(-8, 8)
            x2, y2 = rng.randrange(-8, 8), rng.randrange(-8, 8)
            if (x1 + x2) % 2 or (y1 + y2) % 2:
                continue
            add(("mid", x1, y1, x2, y2), lambda x1=x1, y1=y1, x2=x2, y2=y2: (
                f"Find the midpoint of the line joining $({x1}, {y1})$ and $({x2}, {y2})$.",
                f"$({(x1 + x2) // 2}, {(y1 + y2) // 2})$",
                [f"$({x2 - x1}, {y2 - y1})$", f"$({(x1 + x2) // 2}, {y2 - y1})$", f"$({x1 + x2}, {y1 + y2})$"],
                f"Midpoint $= ((x_1 + x_2)/2, (y_1 + y_2)/2) = ({(x1 + x2) // 2}, {(y1 + y2) // 2})$. *Chapter 8.*"))
        elif k == 2:
            a, b, c = rng.choice(TRIADS)
            add(("dist", a, b), lambda a=a, b=b, c=c: (
                f"Find the distance between $(0, 0)$ and $({a}, {b})$.",
                m(c), [m(a + b), m(a * b), m(c + 2)],
                f"$d = sqrt({a}^2 + {b}^2) = sqrt({a * a + b * b}) = {c}$. *Chapter 8.*"))
        elif k == 3:
            m1 = F(rng.choice([-2, -1, 1, 2, 3]), rng.choice([1, 2, 3]))
            if m1 == 0:
                continue
            perp = -1 / m1
            add(("perp", m1), lambda m1=m1, perp=perp: (
                f"Find the gradient of a line perpendicular to one of gradient ${fmt_num(m1)}$.",
                m(perp), [m(m1), m(-m1), m(1 / m1 if m1 else 0)],
                f"Perpendicular gradients satisfy $m_1 m_2 = -1$, so $m_2 = -1 -: {fmt_num(m1)} = {fmt_num(perp)}$. *Chapter 8.*"))
        elif k == 4:
            c = rng.randrange(2, 10)
            add(("circle", c), lambda c=c: (
                f"Find the radius of the circle $x^2 + y^2 = {c * c}$.",
                m(c), [m(c * c), m(2 * c), m(F(c, 2))],
                f"The equation is $x^2 + y^2 = r^2$, so $r = sqrt({c * c}) = {c}$. *Chapter 8.*"))
        elif k == 5:
            h, kk, r = rng.randrange(-4, 5), rng.randrange(-4, 5), rng.randrange(2, 8)
            add(("circleCentre", h, kk, r), lambda h=h, kk=kk, r=r: (
                f"Find the centre of the circle ${sq('x', h)} + {sq('y', kk)} = {r * r}$.",
                f"$({h}, {kk})$", [f"$({-h}, {-kk})$", f"$({kk}, {h})$", f"$({r}, {r})$"],
                f"Comparing with $(x - h)^2 + (y - k)^2 = r^2$ gives the centre $({h}, {kk})$. *Chapter 8.*"))
        elif k == 6:
            mm = rng.choice([-3, -2, 2, 3])
            c = rng.randrange(-6, 7)
            x0 = rng.randrange(-4, 5)
            y0 = mm * x0 + c
            add(("lineEq", mm, c, x0, y0), lambda mm=mm, c=c, x0=x0, y0=y0: (
                f"Find the equation of the line of gradient ${mm}$ passing through $({x0}, {y0})$.",
                f"$y = {mm}x {'+' if c >= 0 else '-'} {abs(c)}$",
                [f"$y = {mm}x {'+' if -c >= 0 else '-'} {abs(c)}$",
                 f"$y = {-mm}x {'+' if c >= 0 else '-'} {abs(c)}$", f"$y = {mm}x$"],
                f"$y - y_1 = m(x - x_1)$: $y - {y0} = {mm}(x - {x0})$, giving $y = {mm}x {'+' if c >= 0 else '-'} {abs(c)}$. *Chapter 8.*"))
        else:
            add(("parallel",), lambda: (
                "Two lines are parallel if and only if",
                "their gradients are equal", ["their gradients multiply to $-1$",
                                              "their gradients are reciprocals", "their intercepts are equal"],
                "Parallel lines have equal gradients; perpendicular lines have gradients whose product is $-1$. *Chapter 8.*"))
        if len(out) >= n:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 9
SIN = {
    30: F(1, 2), 45: "sqrt(2)/2", 60: "sqrt(3)/2", 90: 1,
    120: "sqrt(3)/2", 135: "sqrt(2)/2", 150: F(1, 2), 180: 0,
    210: F(-1, 2), 225: "-sqrt(2)/2", 240: "-sqrt(3)/2", 270: -1,
    300: "-sqrt(3)/2", 315: "-sqrt(2)/2", 330: F(-1, 2), 360: 0,
}
COS = {
    0: 1, 30: "sqrt(3)/2", 45: "sqrt(2)/2", 60: F(1, 2), 90: 0,
    120: F(-1, 2), 135: "-sqrt(2)/2", 150: "-sqrt(3)/2", 180: -1,
    210: "-sqrt(3)/2", 225: "-sqrt(2)/2", 240: F(-1, 2), 270: 0,
    300: F(1, 2), 315: "sqrt(2)/2", 330: "sqrt(3)/2", 360: 1,
}
TAN = {0: 0, 30: "sqrt(3)/3", 45: 1, 60: "sqrt(3)", 120: "-sqrt(3)",
       135: -1, 150: "-sqrt(3)/3", 180: 0, 225: 1, 315: -1}


def num(x):
    return m(x) if isinstance(x, F) else f"${x}$"


def ch09(rng, n):
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            out.append(q(*fn()))
            seen.add(key)
        except Bad:
            pass

    for _ in range(700):
        k = rng.randrange(11)
        if k == 0:
            a = rng.choice([30, 45, 60])
            wrongs = {30: [num(F(1, 3)), num(COS[30]), "$1$"],
                      45: ["$1$", "$sqrt(3)/2$", "$1/2$"],
                      60: ["$1/2$", "$sqrt(2)/2$", "$1$"]}[a]
            add(("sin", a), lambda a=a, wrongs=wrongs: (
                f"Evaluate $sin {a}^degree$.", num(SIN[a]), wrongs,
                f"From the special triangles, $sin {a}^degree = {SIN[a] if isinstance(SIN[a], str) else fmt_num(SIN[a])}$. *Chapter 9.*"))
        elif k == 1:
            a = rng.choice([30, 45, 60])
            wrongs = {30: ["$1/2$", "$sqrt(2)/2$", "$0$"],
                      45: ["$1$", "$sqrt(3)/2$", "$1/2$"],
                      60: ["$sqrt(3)/2$", "$sqrt(2)/2$", "$0$"]}[a]
            add(("cos", a), lambda a=a, wrongs=wrongs: (
                f"Evaluate $cos {a}^degree$.", num(COS[a]), wrongs,
                f"$cos {a}^degree = {COS[a] if isinstance(COS[a], str) else fmt_num(COS[a])}$. *Chapter 9.*"))
        elif k == 2:
            a = rng.choice([30, 45, 60])
            wrongs = {30: ["$sqrt(3)$", "$1/2$", "$1$"],
                      45: ["$sqrt(2)/2$", "$2$", "$sqrt(3)$"],
                      60: ["$sqrt(3)/3$", "$1/2$", "$1$"]}[a]
            add(("tan", a), lambda a=a, wrongs=wrongs: (
                f"Evaluate $tan {a}^degree$.", num(TAN[a]), wrongs,
                f"$tan {a}^degree = {TAN[a] if isinstance(TAN[a], str) else fmt_num(TAN[a])}$. *Chapter 9.*"))
        elif k == 3:
            a, b, c = rng.choice(TRIADS)
            which = rng.choice(["sin", "cos", "tan"])
            if which == "sin":
                corr, wr = F(a, c), [F(b, c), F(a, b), F(c, a)]
            elif which == "cos":
                corr, wr = F(b, c), [F(a, c), F(a, b), F(c, b)]
            else:
                corr, wr = F(a, b), [F(b, a), F(a, c), F(c, a)]
            add(("ratio", which, a, b), lambda which=which, a=a, b=b, c=c, corr=corr, wr=wr: (
                f"In a right-angled triangle the side opposite $theta$ is ${a}$ cm, the side adjacent is ${b}$ cm "
                f"and the hypotenuse is ${c}$ cm. Find ${which} theta$.",
                f"${fmt_num(corr)}$", [f"${fmt_num(w)}$" for w in wr],
                f"${which} theta = {fmt_num(corr)}$ from the definitions SOH CAH TOA. *Chapter 9.*"))
        elif k == 4:
            s0, c0 = rng.choice([(F(3, 5), F(4, 5)), (F(5, 13), F(12, 13)), (F(8, 17), F(15, 17)),
                                 (F(7, 25), F(24, 25)), (F(20, 29), F(21, 29))])
            add(("identity", str(s0)), lambda s0=s0, c0=c0: (
                f"If $sin theta = {fmt_num(s0)}$ and $theta$ is acute, find $cos theta$.",
                f"${fmt_num(c0)}$", [f"${fmt_num(s0)}$", f"${fmt_num(1 - s0)}$", f"${fmt_num(c0 + F(1, 10))}$"],
                f"$sin^2 theta + cos^2 theta = 1$, so $cos theta = sqrt(1 - {fmt_num(s0 * s0)}) = {fmt_num(c0)}$. *Chapter 9.*"))
        elif k == 5:
            a = rng.choice([30, 45, 60])
            add(("complement", a), lambda a=a: (
                f"Write $sin {a}^degree$ in terms of a cosine.",
                f"$cos {90 - a}^degree$", [f"$cos {a}^degree$", f"$cos {180 - a}^degree$", f"$sin {90 - a}^degree$", f"$cos {90 + a}^degree$"],
                f"$sin theta = cos(90^degree - theta)$, so $sin {a}^degree = cos {90 - a}^degree$. *Chapter 9.*"))
        elif k == 6:
            add(("obtuse",), lambda: (
                "For an obtuse angle $theta$, which statement is true?",
                "$sin theta$ is positive but $cos theta$ is negative",
                ["both are positive", "both are negative", "$sin theta$ is negative but $cos theta$ is positive"],
                "Sine is positive in the second quadrant and cosine is negative there. *Chapter 9.*"))
        elif k == 7:
            add(("period",), lambda: (
                "The period of $y = sin x$ is",
                "$360^degree$", ["$180^degree$", "$90^degree$", "$720^degree$"],
                "Sine repeats every $360^degree$; tangent repeats every $180^degree$. *Chapter 9.*"))
        elif k == 8:
            add(("amplitude",), lambda: (
                "The amplitude of $y = 3 sin x$ is",
                "$3$", ["$1$", "$6$", "$3/2$"],
                "The amplitude is the coefficient of the sine, 3. *Chapter 9.*"))
        elif k == 9:
            add(("eval",), lambda: (
                "Evaluate $sin 30^degree + cos 60^degree$.",
                "$1$", ["$1/2$", "$sqrt(3)/2$", "$0$"],
                "$sin 30^degree = 1/2$ and $cos 60^degree = 1/2$, so the sum is 1. *Chapter 9.*"))
        else:
            add(("cast",), lambda: (
                "In which quadrant are both $sin theta$ and $tan theta$ positive?",
                "the first quadrant", ["the second quadrant", "the third quadrant", "the fourth quadrant"],
                "CAST: in the first quadrant all three ratios are positive. *Chapter 9.*"))
        if len(out) >= n:
            break
    return out


# ══════════════════════════════════════════════════════════ chapter 10
def ch10(rng, n):
    out, seen = [], set()

    def add(key, fn):
        if key in seen:
            return
        try:
            out.append(q(*fn()))
            seen.add(key)
        except Bad:
            pass

    bearing_pairs = [(30, "N30E"), (60, "N60E"), (120, "S60E"), (150, "S30E"),
                     (210, "S30W"), (240, "S60W"), (300, "N60W"), (330, "N30W")]
    for _ in range(900):
        k = rng.randrange(12)
        if k == 6:
            b1 = rng.choice([40, 70, 130, 200, 260, 320])
            b2 = (b1 + 90) % 360
            add(("bear90", b1), lambda b1=b1, b2=b2: (
                f"A boat sails on a bearing of {brg(b1)} and then turns through $90^degree$ clockwise. "
                f"What is its new bearing?",
                brg(b2), [brg(b1 - 90), brg(b2 + 25), brg(b1)], 
                f"{brg(b1)} $+ 90^degree = {b2}^degree$, so the new bearing is {brg(b2)}. *Chapter 10.*"))
        elif k == 7:
            d, ang = rng.choice([(10, 45), (12, 45), (20, 45)])
            add(("elev45", d, ang), lambda d=d, ang=ang: (
                f"From a point ${d}$ m from the foot of a vertical tower, the angle of elevation of the top is ${ang}^degree$. "
                f"Find the height of the tower.",
                f"${d}$ m", [f"${d * 2}$ m", f"${d // 2}$ m", f"${d * 3}$ m"],
                f"$tan {ang}^degree = h/{d}$ and $tan 45^degree = 1$, so $h = {d}$ m. *Chapter 10.*"))
        elif k == 8:
            a, b, c = rng.choice([(6, 8, 10), (9, 12, 15), (5, 12, 13), (12, 16, 20)])
            add(("cosAngle", a, b, c), lambda a=a, b=b, c=c: (
                f"A triangle has sides ${a}$ cm, ${b}$ cm and ${c}$ cm. Find the angle opposite the side of length ${c}$ cm.",
                "$90^degree$", ["$60^degree$", "$45^degree$", "$30^degree$"],
                f"$c^2 = a^2 + b^2$ $({c}^2 = {a * a} + {b * b})$, so the triangle is right-angled and the angle is $90^degree$. *Chapter 10.*"))
        elif k == 9:
            add(("depression",), lambda: (
                "The angle of depression of a boat from the top of a cliff is $30^degree$. The corresponding angle of elevation of the top of the cliff from the boat is",
                "$30^degree$", ["$60^degree$", "$150^degree$", "$90^degree$"],
                "Angles of elevation and depression between the same two points are alternate angles, hence equal. *Chapter 10.*"))
        elif k == 10:
            b, compass = rng.choice([(120, "S 60 E"), (150, "S 30 E"), (210, "S 30 W"),
                                     (240, "S 60 W"), (300, "N 60 W"), (330, "N 30 W")])
            wrongs = [c for c in ("N 60 E", "N 30 W", "S 60 E", "N 60 W", "S 30 E") if c != compass][:3]
            add(("compass", b), lambda b=b, compass=compass, wrongs=wrongs: (
                f"Write the bearing {brg(b)} as a compass direction of the form N/S angle E/W.",
                compass, wrongs,
                f"{brg(b)} lies in the quadrant whose axes are North/South and East/West, so it is written *{compass}*. *Chapter 10.*"))
        elif k == 11:
            add(("sineRuleFind",), lambda: (
                "In $triangle A B C$, $angle A = 45^degree$ and $angle B = 60^degree$. Which side is longest?",
                "the side opposite $angle C$",
                ["the side opposite $angle A$", "the side opposite $angle B$", "all three sides are equal"],
                "The third angle is $75^degree$, the largest, and the largest side faces the largest angle — so the side opposite $angle C$ is longest. *Chapter 10.*"))
        elif k == 0:
            b, desc = rng.choice(bearing_pairs)
            add(("conv", b), lambda b=b, desc=desc: (
                f"Write the direction {desc} as a three-figure bearing.",
                brg(b), [brg(360 - b), brg(b + 40), brg(180 - b)],
                f"Bearings are measured clockwise from North, so {desc} is {brg(b)}. *Chapter 10.*"))
        elif k == 1:
            b = rng.choice([20, 35, 70, 110, 145, 200, 245, 310, 340])
            back = (b + 180) % 360
            add(("back", b), lambda b=b, back=back: (
                f"The bearing of Q from P is {brg(b)}. Find the bearing of P from Q.",
                brg(back), [brg(b), brg(360 - b), brg(b + 90)],
                f"The back bearing is the forward bearing $plus.minus 180^degree$: {brg(b)} $plus.minus 180^degree = {back}^degree$. *Chapter 10.*"))
        elif k == 2:
            ang = rng.choice([30, 45, 60])
            hyp = rng.choice([8, 10, 12, 20])
            side = F(hyp, 2)
            if ang == 30:
                add(("sinerule", ang, hyp), lambda ang=ang, hyp=hyp, side=side: (
                    f"In $triangle A B C$, $angle A = 30^degree$, $angle B = 90^degree$ and the hypotenuse is ${hyp}$ cm. "
                    f"Find the side opposite $A$.",
                    f"${fmt_num(side)}$ cm", [f"${hyp}$ cm", f"${fmt_num(F(hyp, 4))}$ cm", f"${hyp * 2}$ cm"],
                    f"In a right triangle, $sin A = a/h$, so $a = {hyp} sin 30^degree = {fmt_num(side)}$ cm. *Chapter 10.*"))
            else:
                d = rng.choice([4, 6, 8, 9])
                add(("elev60", d), lambda d=d: (
                    f"From a point ${d}$ m from the foot of a vertical tower, the angle of elevation of the top is $60^degree$. "
                    f"Find the height of the tower.",
                    f"${d}sqrt(3)$ m",
                    [f"${d}sqrt(3)/3$ m", f"${d}$ m", f"${d * 3}$ m"],
                    f"$tan 60^degree = h/{d} = sqrt(3)$, so $h = {d} sqrt(3)$ m. *Chapter 10.*"))
        elif k == 3:
            a, b, C = rng.choice([(3, 4, 90), (5, 12, 90), (4, 6, 60), (6, 8, 60)])
            if C == 90:
                area = F(a * b, 2)
                rr = a * a + b * b
                side3 = math.isqrt(rr)
                add(("cos90", a, b), lambda a=a, b=b, area=area, side3=side3: (
                    f"In $triangle A B C$, $a = {a}$ cm, $b = {b}$ cm and $angle C = 90^degree$. Find $c$.",
                    f"${side3}$ cm", [f"${a + b}$ cm", f"${a * b}$ cm", f"${side3 + 1}$ cm"],
                    f"$c^2 = a^2 + b^2 = {a * a + b * b}$, so $c = {side3}$ cm. *Chapter 10.*"))
            else:
                c2 = a * a + b * b - 2 * a * b * F(1, 2)
                c = math.isqrt(int(c2))
                add(("cos60", a, b, c), lambda a=a, b=b, c=c, c2=c2: (
                    f"In $triangle A B C$, $a = {a}$ cm, $b = {b}$ cm and $angle C = 60^degree$. Find $c$.",
                    f"${c}$ cm", [f"${c + 1}$ cm", f"${a + b}$ cm", f"${math.isqrt(int(c2)) + 2}$ cm"],
                    f"$c^2 = a^2 + b^2 - 2 a b cos 60^degree = {a * a} + {b * b} - {a * b} = {int(c2)}$, so $c = {c}$ cm. *Chapter 10.*"))
        elif k == 4:
            a, b, C = rng.choice([(4, 6, 30), (6, 10, 30), (8, 5, 30)])
            area = F(a * b, 2) * F(1, 2)
            add(("areaTri", a, b), lambda a=a, b=b, area=area: (
                f"Find the area of a triangle with sides ${a}$ cm and ${b}$ cm enclosing an angle of $30^degree$.",
                f"${fmt_num(area)}$ cm²", [f"${fmt_num(area * 2)}$ cm²", f"${fmt_num(F(a * b, 2))}$ cm²", f"${a * b}$ cm²"],
                f"$A = 1/2 a b sin C = 1/2 times {a} times {b} times sin 30^degree = {fmt_num(area)}$ cm². *Chapter 10.*"))
        else:
            add(("bearingsAngle",), lambda: (
                "The bearing of Q from P is $060^degree$ and the bearing of R from P is $150^degree$. Find $angle Q P R$.",
                "$90^degree$", ["$210^degree$", "$45^degree$", "$180^degree$"],
                f"The angle between the two bearings is $150 - 60 = 90^degree$. *Chapter 10.*"))
        if len(out) >= n:
            break
    return out


CHAPTERS = {1: ch01, 2: ch02, 3: ch03, 4: ch04, 5: ch05,
            6: ch06, 7: ch07, 8: ch08, 9: ch09, 10: ch10}


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
