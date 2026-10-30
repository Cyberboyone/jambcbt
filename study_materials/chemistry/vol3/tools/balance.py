"""Spread the correct options of an item bank evenly across A, B, C and D.

The banks are written with the correct option wherever the author first thought
of it, which leaves the key clustered on one letter.  JAMB-style papers spread
the key, so every printed drill and paper is passed through `balanced()`, which
moves the correct option to its allotted position and slides the displaced
option into the gap.  The permutation is seeded, so a rebuild always gives the
same paper.
"""

import random


def balanced(items, seed=0):
    """Return a copy of `items` with the correct option spread over A–D."""
    items = list(items)
    targets = [i % 4 for i in range(len(items))]
    random.Random(seed).shuffle(targets)

    out = []
    for (stem, opts, idx, sol), target in zip(items, targets):
        opts = list(opts)
        opts[idx], opts[target] = opts[target], opts[idx]
        out.append((stem, tuple(opts), target, sol))
    return out
