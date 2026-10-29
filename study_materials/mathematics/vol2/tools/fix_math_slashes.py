#!/usr/bin/env python3
"""Rewrite `A//B` inside Typst math segments as `frac(A, B)`.

`//` is a comment introducer in Typst, so it can never mean division inside
`$ ... $`. This tool converts every such occurrence in a file (or a directory
tree of .typ / .py drill data) into an explicit `frac()` call, which is
unambiguous and renders identically in inline and display math.

Usage:  python fix_math_slashes.py [paths...]      (default: vol2 root)
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

ATOM = set("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789^_.")


def close_paren(s: str, i: int) -> int:
    """s[i] == '('; return index of the matching ')' (or -1)."""
    depth = 0
    for j in range(i, len(s)):
        if s[j] == "(":
            depth += 1
        elif s[j] == ")":
            depth -= 1
            if depth == 0:
                return j
    return -1


def open_paren(s: str, i: int) -> int:
    """s[i] == ')'; return index of the matching '(' (or -1)."""
    depth = 0
    for j in range(i, -1, -1):
        if s[j] == ")":
            depth += 1
        elif s[j] == "(":
            depth -= 1
            if depth == 0:
                return j
    return -1


def numerator_start(s: str, k: int) -> int:
    """Scan left from index k (just before '//'), return start of numerator."""
    i = k - 1
    # skip trailing spaces
    while i >= 0 and s[i] == " ":
        i -= 1
    if i < 0:
        return k
    if s[i] == ")":
        op = open_paren(s, i)
        if op < 0:
            return i
        i = op
        # absorb a directly-attached coefficient such as the 2 in 2(S - na)
        while i - 1 >= 0 and (s[i - 1] in ATOM):
            i -= 1
        # absorb directly-attached function names such as sqrt / root
        return i
    # plain atom run, possibly with internal single spaces (a product)
    start = i
    while i >= 0:
        c = s[i]
        if c in ATOM:
            i -= 1
            continue
        if c == " " and i - 1 >= 0 and s[i - 1] in ATOM:
            i -= 1
            continue
        break
    start = i + 1
    return start


def denominator_end(s: str, j: int) -> int:
    """Scan right from index j (just after '//'), return end of denominator."""
    while j < len(s) and s[j] == " ":
        j += 1
    if j >= len(s):
        return j
    if s[j] == "(":
        close = close_paren(s, j)
        return len(s) if close < 0 else close + 1
    start = j
    while j < len(s) and s[j] in ATOM:
        j += 1
    if j == start:  # single non-atom token
        j += 1
    return j


def fix_math(seg: str) -> tuple[str, int]:
    count = 0
    while True:
        k = seg.find("//")
        if k < 0:
            return seg, count
        a = numerator_start(seg, k)
        b = denominator_end(seg, k + 2)
        num = strip_outer(seg[a:k].strip())
        den = strip_outer(seg[k + 2:b].strip())
        if not num or not den:
            raise ValueError(f"cannot parse division in: {seg!r}")
        seg = seg[:a] + f"frac({num}, {den})" + seg[b:]
        count += 1


def strip_outer(s: str) -> str:
    """Remove parentheses that wrap the whole argument."""
    s = s.strip()
    while s.startswith("(") and s.endswith(")"):
        depth = 0
        for i, c in enumerate(s):
            if c == "(":
                depth += 1
            elif c == ")":
                depth -= 1
                if depth == 0 and i != len(s) - 1:
                    return s
        s = s[1:-1].strip()
    return s


MATH = re.compile(r"\$([^$]+)\$")


def process(text: str) -> tuple[str, int]:
    total = 0

    def repl(m: re.Match) -> str:
        nonlocal total
        seg, c = fix_math(m.group(1))
        total += c
        return "$" + seg + "$"

    out = []
    for line in text.splitlines(keepends=True):
        if line.lstrip().startswith("//"):
            out.append(line)          # a genuine Typst comment line
        else:
            out.append(MATH.sub(repl, line))
    return "".join(out), total


def main() -> int:
    args = sys.argv[1:] or ["."]
    targets: list[Path] = []
    for a in args:
        p = Path(a)
        if p.is_dir():
            targets += sorted(p.rglob("*.typ")) + sorted(p.rglob("*_drill.py"))
        else:
            targets.append(p)
    grand = 0
    for p in targets:
        if p.name.startswith("_"):
            continue
        text = p.read_text(encoding="utf-8")
        new, n = process(text)
        if n:
            p.write_text(new, encoding="utf-8")
            print(f"{p}: {n} division(s) rewritten")
            grand += n
    print(f"total rewritten: {grand}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
