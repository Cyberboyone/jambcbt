"""Geometry plotting helpers shared by the Volume 3 diagram modules."""

from __future__ import annotations

import math

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.patches import Arc, Polygon, Circle, Wedge, FancyArrowPatch, Rectangle

from common import (GREEN, GREEN_BRIGHT, GREEN_LIGHT, NAVY, SLATE, MUTED,
                    LIGHT_BG, BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT,
                    BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT, save)


def canvas(w=7.2, h=4.4, xlim=None, ylim=None, equal=True):
    fig, ax = plt.subplots(figsize=(w, h))
    ax.set_axis_off()
    if equal:
        ax.set_aspect("equal")
    if xlim:
        ax.set_xlim(*xlim)
    if ylim:
        ax.set_ylim(*ylim)
    fig.subplots_adjust(left=0.02, right=0.98, top=0.96, bottom=0.04)
    return fig, ax


def seg(ax, p, q, color=NAVY, lw=1.8, ls="-", z=3, alpha=1.0):
    ax.plot([p[0], q[0]], [p[1], q[1]], color=color, lw=lw, ls=ls, zorder=z, alpha=alpha,
            solid_capstyle="round")


def poly(ax, pts, fill=None, edge=NAVY, lw=1.8, z=3, alpha=1.0, ls="-"):
    p = Polygon(pts, closed=True, facecolor=fill if fill else "none", edgecolor=edge,
                lw=lw, zorder=z, alpha=alpha, linestyle=ls, joinstyle="round")
    ax.add_patch(p)
    return p


def dot(ax, p, color=RED, s=26, z=6):
    ax.scatter([p[0]], [p[1]], s=s, color=color, zorder=z, edgecolor="white", linewidth=0.8)


def label(ax, p, text, dx=0.0, dy=0.0, size=10, color=NAVY, weight="bold", ha="center",
          va="center", z=8, style="normal"):
    ax.text(p[0] + dx, p[1] + dy, text, fontsize=size, color=color, ha=ha, va=va,
            fontweight=weight, zorder=z, fontstyle=style)


def angle_arc(ax, vertex, p1, p2, r=0.45, color=RED, lw=1.6, label_text=None, lab_r=None,
              size=8.4):
    """Draw the angle at `vertex` between rays to p1 and p2, with an optional label."""
    a1 = math.degrees(math.atan2(p1[1] - vertex[1], p1[0] - vertex[0]))
    a2 = math.degrees(math.atan2(p2[1] - vertex[1], p2[0] - vertex[0]))
    start, end = min(a1, a2), max(a1, a2)
    if end - start > 180:
        start, end = end, start + 360
    arc = Arc(vertex, 2 * r, 2 * r, angle=0, theta1=start, theta2=end, color=color,
              lw=lw, zorder=5)
    ax.add_patch(arc)
    if label_text is not None:
        am = math.radians((start + end) / 2)
        rr = lab_r if lab_r else r + 0.26
        label(ax, (vertex[0] + rr * math.cos(am), vertex[1] + rr * math.sin(am)),
              label_text, size=size, color=color)


def right_angle(ax, vertex, p1, p2, size=0.22, color=SLATE):
    u = np.array(p1) - np.array(vertex)
    v = np.array(p2) - np.array(vertex)
    u = u / np.linalg.norm(u)
    v = v / np.linalg.norm(v)
    a = np.array(vertex) + size * u
    b = np.array(vertex) + size * (u + v)
    c = np.array(vertex) + size * v
    ax.plot([a[0], b[0], c[0]], [a[1], b[1], c[1]], color=color, lw=1.1, zorder=5)


def ticks(ax, p, q, n=1, size=0.12, color=GREEN, lw=1.6, double=False):
    """Equality tick marks at the midpoint of segment pq."""
    p, q = np.array(p, float), np.array(q, float)
    d = q - p
    L = np.linalg.norm(d)
    if L == 0:
        return
    u = d / L
    nrm = np.array([-u[1], u[0]])
    m = p + d / 2
    offs = [0] if not double else [-size * 0.9, size * 0.9]
    for o in offs:
        c = m + u * o
        a = c - nrm * size
        b = c + nrm * size
        ax.plot([a[0], b[0]], [a[1], b[1]], color=color, lw=lw, zorder=6)


def parallel_marks(ax, p, q, n=1, size=0.13, color=PURPLE, lw=1.5):
    p, q = np.array(p, float), np.array(q, float)
    d = q - p
    L = np.linalg.norm(d)
    u = d / L
    nrm = np.array([-u[1], u[0]])
    m = p + d * 0.5
    for i in range(n):
        c = m + u * ((i - (n - 1) / 2) * size * 1.5)
        a = c - (u + nrm) * size * 0.5
        b = c + (u + nrm) * size * 0.5
        ax.plot([a[0], b[0]], [a[1], b[1]], color=color, lw=lw, zorder=6)


def arrow_arc(ax, p, q, color=GREEN, rad=0.25, lw=1.5, style="-|>"):
    a = FancyArrowPatch(p, q, connectionstyle=f"arc3,rad={rad}", arrowstyle=style,
                        color=color, lw=lw, mutation_scale=9, zorder=5)
    ax.add_patch(a)


def title(ax, text, x=None, y=None, size=10.5, color=NAVY):
    ax.set_title(text, fontsize=size, color=color, fontweight="bold", pad=6)


def note(ax, text, x=0.5, y=-0.06, size=8.6, color=MUTED):
    ax.text(x, y, text, transform=ax.transAxes, ha="center", va="top", fontsize=size,
            color=color)


def tri_panel(w=7.2, h=2.6, n=3):
    fig, axes = plt.subplots(1, n, figsize=(w, h))
    for ax in axes:
        ax.set_axis_off()
        ax.set_aspect("equal")
    fig.subplots_adjust(left=0.02, right=0.98, top=0.90, bottom=0.10, wspace=0.12)
    return fig, axes
