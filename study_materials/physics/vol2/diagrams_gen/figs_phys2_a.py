"""Volume 2 diagrams — waves and sound (chapters 1 and 2).

Schematic figures are hand-written SVG; anything with a curve or an axis is
matplotlib, so the geometry is true rather than sketched.
"""

from __future__ import annotations

import numpy as np

from common import (
    GREEN, GREEN_BRIGHT, GREEN_LIGHT, GREEN_MID, NAVY, SLATE, MUTED, LIGHT_BG,
    BORDER, AMBER, AMBER_LIGHT, RED, RED_LIGHT, BLUE, BLUE_LIGHT, PURPLE, PURPLE_LIGHT,
    t, lines, rect, line, arrow2, dot, path, svg, write_svg, recap_card,
    save, plt,
)

FIGURES = ["ch01_wave_types", "ch01_wave_terms", "ch01_stationary",
           "ch02_sound_media", "ch02_resonance", "ch02_beats", "ch02_doppler",
           "recap_ch01", "recap_ch02"]


# ── 1.1 types of wave ────────────────────────────────────────────────────────
def ch01_wave_types():
    w, h = 560, 300
    b = [t(280, 20, "TRANSVERSE AND LONGITUDINAL — WHAT ACTUALLY MOVES", size=10.6, weight="bold")]

    # panel A: transverse
    b.append(rect(14, 32, 258, 116, "#FFFFFF", GREEN, 7, 1.3))
    b.append(t(143, 50, "Transverse: the particles move at right angles", size=8.8, weight="bold", fill=GREEN))
    b.append(t(143, 62, "to the direction the wave travels", size=8.8, fill=GREEN))
    x0, x1, y0, amp = 32, 254, 100, 20
    pts = [(x, y0 - amp * np.sin((x - x0) / (x1 - x0) * 4 * np.pi)) for x in np.linspace(x0, x1, 160)]
    b.append(path("M " + " L ".join(f"{x:.1f},{y:.1f}" for x, y in pts), stroke=GREEN, sw=2.4))
    for x in (62, 102, 143, 184, 224):
        y = y0 - amp * np.sin((x - x0) / (x1 - x0) * 4 * np.pi)
        b.append(dot(x, y, 2.8, GREEN))
        b.append(line(x, y0, x, y, color=MUTED, sw=1.0, dash="3 2"))
        b.append(arrow2(x, y, x, y - 13 * np.sign(np.sin((x - x0) / (x1 - x0) * 4 * np.pi) or 1),
                        color=AMBER, sw=1.5, size=6))
    b.append(arrow2(36, 130, 250, 130, color=NAVY, sw=1.4, size=7))
    b.append(t(143, 143, "direction of travel", size=8, fill=NAVY))

    # panel B: longitudinal
    b.append(rect(288, 32, 258, 116, "#FFFFFF", BLUE, 7, 1.3))
    b.append(t(417, 50, "Longitudinal: the particles move back and forth", size=8.8, weight="bold", fill=BLUE))
    b.append(t(417, 62, "along the direction the wave travels", size=8.8, fill=BLUE))
    xs = np.linspace(304, 530, 44)
    phase = np.linspace(0, 3 * np.pi, len(xs))
    for x, ph in zip(xs, phase):
        off = 4.5 * np.sin(ph)
        b.append(f'<line x1="{x + off:.1f}" y1="82" x2="{x + off:.1f}" y2="116" stroke="{BLUE}" '
                 f'stroke-width="2.2" stroke-linecap="round"/>')
    for cx in (330, 470):
        b.append(t(cx, 128, "compression", size=7.4, fill=MUTED))
    b.append(t(400, 128, "rarefaction", size=7.4, fill=MUTED))
    b.append(arrow2(310, 140, 530, 140, color=NAVY, sw=1.4, size=7))

    # bottom: examples
    b.append(rect(14, 158, 532, 128, LIGHT_BG, BORDER, 7, 1.2))
    b.append(t(280, 175, "WHAT THE UTME ASKS YOU TO NAME", size=9, weight="bold", fill=NAVY))
    b.append(lines(150, 194, ["Transverse", "light, water waves,", "waves on a string,", "all electromagnetic waves"], size=9.2, gap=14))
    b.append(lines(300, 194, ["Longitudinal", "sound in air,", "compressions in a spring,", "seismic P waves"], size=9.2, gap=14))
    b.append(lines(445, 194, ["Both", "surface water waves are", "a mixture: the particles", "move in circles"], size=9.2, gap=14))
    b.append(line(60, 182, 60, 276, color=GREEN, sw=2.4))
    b.append(line(240, 182, 240, 276, color=BORDER, sw=1.0))
    b.append(line(370, 182, 370, 276, color=BORDER, sw=1.0))
    write_svg("ch01_wave_types.svg", svg(w, h, "\n".join(b)))


# ── 1.2 the words that describe a wave ───────────────────────────────────────
def ch01_wave_terms():
    w, h = 560, 312
    b = [t(280, 20, "AMPLITUDE, WAVELENGTH, FREQUENCY, PERIOD, SPEED", size=10.6, weight="bold")]
    x0, x1, y0, amp = 50, 510, 126, 40
    span = x1 - x0
    xs = np.linspace(x0, x1, 320)
    ys = y0 - amp * np.sin((xs - x0) / span * 4 * np.pi)
    b.append(path("M " + " L ".join(f"{x:.1f},{y:.1f}" for x, y in zip(xs, ys)), stroke=GREEN, sw=2.4))
    b.append(line(x0, y0, x1, y0, color=SLATE, sw=1.1))

    crest_a, trough, crest_b = x0 + span / 8, x0 + 3 * span / 8, x0 + 5 * span / 8

    # amplitude — measured down to the trough, clear of the crest label
    b.append(line(trough, y0, trough, y0 + amp, color=AMBER, sw=1.4, dash="4 3"))
    b.append(t(trough + 7, y0 + amp / 2 + 4, "A", size=10.4, weight="bold", fill=AMBER, anchor="start"))
    b.append(t(trough + 7, y0 - 10, "amplitude", size=8.2, fill=AMBER, anchor="start"))

    # wavelength — crest to crest, above the curve
    for x in (crest_a, crest_b):
        b.append(line(x, y0 - amp - 24, x, y0 - amp - 2, color=BLUE, sw=1.0, dash="3 2"))
    b.append(arrow2(crest_a, y0 - amp - 18, crest_b, y0 - amp - 18, color=BLUE, sw=1.3, size=6))
    b.append(t((crest_a + crest_b) / 2, y0 - amp - 26, "wavelength  λ  — crest to crest", size=8.4, fill=BLUE))

    # period — one whole cycle, under the trough
    yb = y0 + amp + 16
    b.append(arrow2(crest_a, yb, crest_b, yb, color=PURPLE, sw=1.2, size=6))
    for x in (crest_a, crest_b):
        b.append(line(x, yb - 6, x, yb + 6, color=PURPLE, sw=1.0))
    b.append(t((crest_a + crest_b) / 2, yb + 16, "one cycle takes the period T, so f = 1 / T",
               size=8.4, fill=PURPLE))

    b.append(rect(14, 214, 532, 88, GREEN_LIGHT, GREEN, 7, 1.3))
    b.append(t(280, 236, "v = f λ      ·      f = 1 / T      ·      v = λ / T",
               size=11.4, weight="bold", fill=GREEN))
    b.append(t(280, 256, "The speed is set by the medium; the frequency is set by the source.", size=8.4, fill=SLATE))
    b.append(t(280, 270, "When a wave enters a new medium, f does not change — λ does.", size=8.4, fill=SLATE))
    b.append(t(280, 284, "So a 500 Hz note is still 500 Hz in water, where it travels faster and is therefore longer.",
               size=8.4, fill=SLATE))
    write_svg("ch01_wave_terms.svg", svg(w, h, "\n".join(b)))


# ── 1.3 stationary waves on a string ─────────────────────────────────────────
def ch01_stationary():
    w, h = 560, 288
    b = [t(280, 20, "STATIONARY WAVES ON A STRING FIXED AT BOTH ENDS", size=10.6, weight="bold")]
    rows = [(1, "fundamental", "f₁ = v / 2L"), (2, "second harmonic", "f₂ = 2 f₁"),
            (3, "third harmonic", "f₃ = 3 f₁")]
    ytop = 48
    for i, (n, name, freq) in enumerate(rows):
        yc = ytop + i * 74
        b.append(rect(14, yc, 532, 62, "#FFFFFF", BORDER, 6, 1.0))
        b.append(t(28, yc + 24, name, size=8.8, weight="bold", fill=GREEN, anchor="start"))
        b.append(t(28, yc + 40, freq, size=8.4, fill=SLATE, anchor="start"))
        x0, x1, base = 150, 350, yc + 36
        xs = np.linspace(x0, x1, 240)
        ys = base - 22 * np.sin(n * np.pi * (xs - x0) / (x1 - x0))
        b.append(line(x0, base, x1, base, color=BORDER, sw=0.9, dash="3 2"))
        b.append(path("M " + " L ".join(f"{x:.1f},{y:.1f}" for x, y in zip(xs, ys)),
                      stroke=GREEN, sw=2.2))
        for k in range(n + 1):
            b.append(dot(x0 + k * (x1 - x0) / n, base, 3.0, NAVY))
        b.append(t(368, yc + 32, f"{n} loop{'s' if n > 1 else ''}", size=8.2, fill=MUTED, anchor="start"))
        b.append(t(368, yc + 48, f"L = {n}λ/2", size=8.4, fill=SLATE, anchor="start"))

    b.append(rect(14, 266, 532, 20, AMBER_LIGHT, AMBER, 6, 1.0))
    b.append(t(280, 280, "Nodes never move, antinodes move most, and neighbouring nodes are λ/2 apart.",
               size=8.4, fill=SLATE))
    write_svg("ch01_stationary.svg", svg(w, h, "\n".join(b)))


# ── 2.1 sound needs a medium ─────────────────────────────────────────────────
def ch02_sound_media():
    w, h = 560, 250
    b = [t(280, 20, "SOUND IS A MECHANICAL WAVE — NO MEDIUM, NO SOUND", size=10.6, weight="bold")]

    # bell jar
    b.append(rect(20, 38, 240, 194, "#FFFFFF", BORDER, 8, 1.2))
    b.append(t(140, 60, "a ringing bell in a vacuum is silent", size=8.4, fill=BLUE))
    b.append('<path d="M 78 214 L 78 138 A 62 62 0 0 1 202 138 L 202 214 Z" fill="#EFF6FF" stroke="#2563EB" stroke-width="1.6"/>')
    b.append(rect(98, 180, 32, 28, "#FFFFFF", SLATE, 4, 1.2))
    b.append('<path d="M 130 184 A 11 11 0 0 1 130 206" fill="none" stroke="#334155" stroke-width="2"/>')
    b.append(t(114, 174, "bell", size=7.8, fill=SLATE))
    b.append(t(140, 226, "air removed", size=8.2, fill=MUTED))
    for x, y in ((62, 96), (196, 100), (72, 150), (198, 158)):
        b.append(dot(x, y, 1.4, MUTED))

    # speed bars
    b.append(t(430, 46, "Speed of sound, m s⁻¹", size=9.2, weight="bold"))
    data = [("air (20 °C)", 343, GREEN), ("water", 1500, BLUE), ("steel", 5000, PURPLE)]
    for i, (name, val, col) in enumerate(data):
        y = 70 + i * 42
        b.append(t(288, y + 11, name, size=8.4, fill=SLATE, anchor="start"))
        wbar = val / 5000 * 140
        b.append(rect(356, y, max(wbar, 6), 16, col, col, 3, 0.8))
        b.append(t(356 + wbar + 6, y + 12, f"{val}", size=8.2, fill=SLATE, anchor="start"))

    b.append(rect(286, 200, 258, 32, GREEN_LIGHT, GREEN, 6, 1.1))
    b.append(t(415, 214, "v ∝ √(elasticity / density):", size=8.4, weight="bold", fill=GREEN))
    b.append(t(415, 226, "stiffer and lighter means faster", size=8.2, fill=SLATE))
    write_svg("ch02_sound_media.svg", svg(w, h, "\n".join(b)))


# ── 2.2 resonance tube ───────────────────────────────────────────────────────
def ch02_resonance():
    w, h = 560, 300
    b = [t(280, 20, "THE RESONANCE TUBE — FINDING THE SPEED OF SOUND", size=10.6, weight="bold")]

    # the tube: open at the top, water level sets the air column
    x0, x1 = 96, 140
    b.append(rect(x0, 52, x1 - x0, 196, "#FFFFFF", BLUE, 3, 1.4))
    b.append(rect(x0, 168, x1 - x0, 80, "#DBEAFE", "#2563EB", 0, 1.0))
    b.append(line(x0, 168, x1, 168, color="#2563EB", sw=1.6))
    b.append(t((x0 + x1) / 2, 264, "water", size=8.2, fill=BLUE))

    # tuning fork above the open end
    b.append('<path d="M 104 40 L 104 52 M 132 40 L 132 52" stroke="#334155" stroke-width="2"/>')
    b.append(t((x0 + x1) / 2, 34, "tuning fork", size=7.8, fill=SLATE))

    # the two resonance lengths, drawn beside the tube
    for y, lab, col in ((112, "l₁", GREEN), (74, "l₂", AMBER)):
        b.append(line(x1, y, 168, y, color=col, sw=1.2, dash="4 3"))
        b.append(dot(x1, y, 2.6, col))
        b.append(t(174, y + 4, lab, size=9.6, weight="bold", fill=col, anchor="start"))
    b.append(line(x1, 74, x1, 112, color=MUTED, sw=1.0))
    b.append(t(x1 + 4, 96, "λ/2", size=7.8, fill=MUTED, anchor="start"))

    # right-hand panels
    b.append(rect(214, 50, 332, 92, "#FFFFFF", GREEN, 7, 1.3))
    b.append(t(380, 70, "λ = 2 (l₂ − l₁)", size=12.4, weight="bold", fill=GREEN))
    b.append(t(380, 90, "v = f λ", size=10, fill=SLATE))
    b.append(t(380, 110, "The half-wavelength difference cancels", size=8.2, fill=MUTED))
    b.append(t(380, 124, "the unknown end correction.", size=8.2, fill=MUTED))

    b.append(rect(214, 152, 332, 96, LIGHT_BG, BORDER, 7, 1.1))
    b.append(t(380, 170, "Resonance happens when the air column is exactly", size=8.6, weight="bold", fill=NAVY))
    b.append(t(380, 184, "the right length to fit a node at the water and an", size=8.6, fill=NAVY))
    b.append(t(380, 198, "antinode at the open end — that is why the note", size=8.6, fill=NAVY))
    b.append(t(380, 212, "suddenly becomes loud as the tube is raised.", size=8.6, fill=NAVY))
    b.append(t(380, 232, "f₁ = v / 4L, and only odd harmonics sound.", size=8.6, fill=GREEN))
    write_svg("ch02_resonance.svg", svg(w, h, "\n".join(b)))


# ── 2.3 beats ────────────────────────────────────────────────────────────────
def ch02_beats():
    fig, ax = plt.subplots(figsize=(6.0, 2.6))
    fig.subplots_adjust(left=0.09, right=0.985, top=0.80, bottom=0.20)
    t_ = np.linspace(0, 0.4, 2400)
    f1, f2 = 440, 448
    y1 = np.sin(2 * np.pi * f1 * t_)
    y2 = np.sin(2 * np.pi * f2 * t_)
    env = 2 * np.abs(np.cos(np.pi * (f2 - f1) * t_))
    ax.plot(t_, y1, color="#CBD5E1", lw=0.7, label="440 Hz")
    ax.plot(t_, y2, color="#93C5FD", lw=0.7, label="448 Hz")
    ax.plot(t_, (y1 + y2) / 2, color=GREEN, lw=1.2, label="together")
    ax.plot(t_, env / 2, color=AMBER, lw=1.0, ls="--", label="beat envelope")
    ax.plot(t_, -env / 2, color=AMBER, lw=1.0, ls="--")
    ax.set_xlabel("time / s")
    ax.set_ylabel("displacement")
    ax.set_yticks([-1, 0, 1])
    ax.set_xticks([0, 0.1, 0.2, 0.3, 0.4])
    ax.set_ylim(-1.55, 1.45)
    ax.set_title("BEATS: 440 Hz AND 448 Hz SOUND TOGETHER", fontsize=9.4, color=NAVY,
                 weight="bold", pad=16)
    ax.legend(loc="upper center", bbox_to_anchor=(0.5, 1.16), fontsize=6.6, ncol=4,
              frameon=False, handlelength=1.4, columnspacing=1.2)
    ax.text(0.2, -1.42, "beat frequency = 8 Hz — eight loud-and-soft cycles each second, "
                        "which is the difference of the two frequencies",
            fontsize=6.6, color=SLATE, ha="center")
    for sp in ("top", "right"):
        ax.spines[sp].set_visible(False)
    ax.grid(True, color="#EEF2F6", lw=0.7)
    ax.set_axisbelow(True)
    save(fig, "ch02_beats.svg")


# ── 2.4 Doppler effect ───────────────────────────────────────────────────────
def ch02_doppler():
    w, h = 560, 265
    b = [t(280, 20, "THE DOPPLER EFFECT — A MOVING SOURCE BUNCHES ITS WAVES", size=10.6, weight="bold")]
    sx, sy = 240, 130
    b.append(dot(sx, sy, 6, RED))
    b.append(t(sx - 12, sy + 4, "source", size=8.4, fill=RED, anchor="end"))
    b.append(arrow2(sx + 10, sy + 4, sx + 72, sy + 4, color=RED, sw=1.6, size=7))
    b.append(t(sx + 78, sy + 8, "moving", size=8.0, fill=RED, anchor="start"))
    for i, r in enumerate((18, 34, 50, 66, 82)):
        b.append(f'<circle cx="{sx - i * 15}" cy="{sy}" r="{r}" fill="none" stroke="{GREEN}" '
                 f'stroke-width="1.3" opacity="{1 - i * 0.13:.2f}"/>')
    b.append(t(470, 96, "shorter λ", size=8.6, fill=GREEN))
    b.append(t(470, 110, "higher pitch", size=8.6, fill=GREEN))
    b.append(t(70, 96, "longer λ", size=8.6, fill=MUTED))
    b.append(t(70, 110, "lower pitch", size=8.6, fill=MUTED))
    b.append(line(300, 40, 300, 210, color=BORDER, sw=1.0, dash="4 3"))

    b.append(rect(14, 214, 532, 42, GREEN_LIGHT, GREEN, 7, 1.2))
    b.append(t(280, 231, "f′ = f v / (v ± v_s)      —  minus when the source approaches, plus when it recedes",
               size=9.4, weight="bold", fill=GREEN))
    b.append(t(280, 247, "The observer hears a higher pitch as the ambulance comes, then a sudden drop as it passes.",
               size=8.4, fill=SLATE))
    write_svg("ch02_doppler.svg", svg(w, h, "\n".join(b)))


# ── recap cards ──────────────────────────────────────────────────────────────
def recap_ch01():
    recap_card("recap_ch01.svg", "Chapter 1 recap card — waves and wave motion", [
        ("The wave equation", "v = f λ. The speed is fixed by the medium, the frequency by the source, and "
                              "λ follows. Crossing into a new medium changes v and λ but never f."),
        ("Transverse or longitudinal", "Transverse: the particles move at right angles to the travel "
                                        "(light, water, a plucked string). Longitudinal: along it (sound)."),
        ("The four behaviours", "Reflection, refraction, diffraction and interference happen to every wave. "
                                "Diffraction is greatest when the gap is about one wavelength."),
        ("Stationary waves", "Two identical waves in opposite directions make nodes and antinodes. A string "
                             "fixed at both ends sounds at f = n v / 2L; a pipe closed at one end only at odd multiples."),
    ])


def recap_ch02():
    recap_card("recap_ch02.svg", "Chapter 2 recap card — sound", [
        ("A mechanical wave", "Sound needs a medium: it cannot cross a vacuum. It travels fastest in solids, "
                              "then liquids, then gases — about 340 m s⁻¹ in air."),
        ("Pitch, loudness, quality", "Pitch is frequency, loudness is amplitude, quality is the mixture of "
                                     "overtones. Echo is reflection; reverberation is many overlapping echoes."),
        ("Resonance and beats", "A pipe resonates at its natural frequencies; a closed pipe gives only odd "
                                "harmonics. Two notes close in frequency beat at f₁ − f₂."),
        ("Doppler", "A moving source crowds its wavefronts ahead and stretches them behind, so the pitch rises "
                    "on approach and falls as it passes. Ultrasound and echo sounding use the same reflection."),
    ])
