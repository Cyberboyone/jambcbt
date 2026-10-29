"""Chapter 1 drill — Change of Subject of Formula (45 questions).

Option order in this file is (correct, distractor, distractor, distractor); the
compiler shuffles it and derives the printed key from the shuffle.
"""

CHAPTER = 1
TITLE = "Change of Subject of Formula"
TIME = "35 minutes"

QUESTIONS = [
    ("Make $x$ the subject of $y = 3x + 2$.",
     ["$(y - 2)/3$", "$(y + 2)/3$", "$3y - 2$", "$y/3 - 2$"], 0,
     "Subtract $2$: $3x = y - 2$. Divide by $3$: $x = (y - 2)/3$. The addition is undone *before* the multiplication — reverse order of operations."),

    ("Given $b = a/c - d$, express $a$ in terms of $b$, $c$ and $d$.",
     ["$c(b + d)$", "$c(b - d)$", "$(b + d)/c$", "$b c + d$"], 0,
     "Add $d$ to both sides: $a/c = b + d$. Multiply both sides by $c$: $a = c(b + d)$. Moving $-d$ across the equals sign makes it $+d$."),

    ("Make $t$ the subject of $s = 1/2 g t^2$.",
     ["$sqrt(2s/g)$", "$2s/g$", "$sqrt(s/(2g))$", "$(2s)/g^2$"], 0,
     "Multiply by $2$: $g t^2 = 2s$. Divide by $g$: $t^2 = 2s/g$. Since $t$ is a time, take the positive root: $t = sqrt(2s/g)$."),

    ("Make $r$ the subject of $C = 2pi r$.",
     ["$C/(2pi)$", "$2pi C$", "$C/(2pi^2)$", "$2C/pi$"], 0,
     "Divide both sides by $2pi$: $r = C/(2pi)$. No squaring is needed because $r$ itself is not squared — only $r^2$ in an area formula would require a root."),

    ("Make $h$ the subject of $V = pi r^2 h$.",
     ["$V/(pi r^2)$", "$V/(pi r)$", "$frac(pi r^2, V)$", "$V - pi r^2$"], 0,
     "Both $pi$, $r^2$ and $h$ are multiplied together, so divide by the product $pi r^2$: $h = V/(pi r^2)$. Subtracting $pi r^2$ is the classic 'move it over' error."),

    ("Make $b$ the subject of $A = 1/2 (a + b) h$.",
     ["$2A/h - a$", "$2A/h + a$", "$(2A - a)/h$", "$A/(2h) - a$"], 0,
     "Multiply by $2$: $2A = (a + b)h$. Divide by $h$: $a + b = 2A/h$. Subtract $a$: $b = 2A/h - a$. The bracket must be divided *as a whole*."),

    ("Make $u$ the subject of $v^2 = u^2 + 2 a s$.",
     ["$sqrt(v^2 - 2 a s)$", "$v - 2 a s$", "$sqrt(v^2 + 2 a s)$", "$v^2 - 2 a s$"], 0,
     "Subtract $2 a s$: $u^2 = v^2 - 2 a s$. Take the positive root: $u = sqrt(v^2 - 2 a s)$, since $u$ is a speed."),

    ("Given $1/f = 1/u + 1/v$, express $f$ in terms of $u$ and $v$.",
     ["$frac(u v, u + v)$", "$frac(u + v, u v)$", "$frac(u v, v - u)$", "$u + v$"], 0,
     "Combine over the common denominator: $1/f = (v + u)/(u v)$. Invert *both* sides: $f = frac(u v, u + v)$. The option $frac(u + v, u v)$ is the reciprocal of the answer — it is printed every year."),

    ("Make $x$ the subject of $y = (x - 1)/(x + 1)$.",
     ["$(1 + y)/(1 - y)$", "$(1 - y)/(1 + y)$", "$(y + 1)/(y - 1)$", "$2y - 1$"], 0,
     "Cross-multiply: $x y + y = x - 1$. Collect: $x(y - 1) = -(1 + y)$. Divide and reverse both signs: $x = (1 + y)/(1 - y)$."),

    ("Make $x$ the subject of $a x + b x = c$.",
     ["$c/(a + b)$", "$c/(a - b)$", "$c - a - b$", "$(a + b)/c$"], 0,
     "The subject occurs twice, so factorise rather than divide it away: $x(a + b) = c$, giving $x = c/(a + b)$."),

    ("Make $x$ the subject of $a(x + b) = c(x - d)$.",
     ["$(a b + c d)/(c - a)$", "$(a b - c d)/(c - a)$", "$(c d - a b)/(c - a)$", "$(a b + c d)/(a - c)$"], 0,
     "Expand: $a x + a b = c x - c d$. Collect: $x(a - c) = -(a b + c d)$. Divide and reverse the signs: $x = (a b + c d)/(c - a)$."),

    ("If $1/R = 1/R_1 + 1/R_2$, express $R$ in terms of $R_1$ and $R_2$.",
     ["$frac(R_1 R_2, R_1 + R_2)$", "$frac(R_1 + R_2, R_1 R_2)$", "$R_1 + R_2$", "$frac(R_1 R_2, R_2 - R_1)$"], 0,
     "Combine: $1/R = (R_2 + R_1)/(R_1 R_2)$. Invert both sides: $R = frac(R_1 R_2, R_1 + R_2)$ — product over sum, the parallel-resistor rule."),

    ("Make $d$ the subject of $S = n/2 (2a + (n - 1)d)$.",
     ["$frac(2(S - n a), n(n - 1))$", "$frac(2S - n a, n(n - 1))$", "$frac(2S, n(n - 1)) - 2a$", "$frac(S - n a, n(n - 1))$"], 0,
     "Multiply by $2$: $2S = n(2a + (n - 1)d)$. Divide by $n$: $2S/n = 2a + (n - 1)d$. Subtract $2a$ and divide by $(n - 1)$, then tidy: $d = frac(2(S - n a), n(n - 1))$."),

    ("Make $r$ the subject of $A = P(1 + r/100)^n$.",
     ["$100[(A/P)^(1/n) - 1]$", "$100[(A/P)^n - 1]$", "$100[(P/A)^(1/n) - 1]$", "$100(A/P - 1)/n$"], 0,
     "Divide by $P$, take the $n$th root of both sides, subtract $1$, then multiply by $100$. The $n$th root is the *inverse* of the $n$th power — it is not a division by $n$."),

    ("Make $g$ the subject of $T = 2pi sqrt(l/g)$.",
     ["$(4pi^2 l)/T^2$", "$(4pi^2 l^2)/T^2$", "$frac(T^2, 4pi^2 l)$", "$(2pi l)/T$"], 0,
     "Divide by $2pi$, square both sides to get $frac(T^2, 4pi^2) = l/g$, then invert and multiply by $l$: $g = frac(4pi^2 l, T^2)$. Squaring the whole side squares $2pi$ as well."),

    ("Make $x$ the subject of $y = a^x$.",
     ["$log_a y$", "$log_y a$", "$a log y$", "$y log a$"], 0,
     "Take logarithms to base $a$ of both sides: $log_a y = x$. Swapping base and argument (as in $log_y a$) gives the reciprocal and is wrong."),

    ("Make $x$ the subject of $log_10 (x/a) = b$.",
     ["$a dot 10^b$", "$frac(10^b, a)$", "$a b^(10)$", "$b dot 10^a$"], 0,
     "A logarithm is an exponent: $x/a = 10^b$, so $x = a dot 10^b$. The base is $10$, and it is raised to the *answer* $b$."),

    ("Make $h$ the subject of $1/h = 1/a + 1/b$.",
     ["$frac(a b, a + b)$", "$frac(a + b, a b)$", "$a + b$", "$frac(a b, b - a)$"], 0,
     "Combine the right side: $1/h = frac(a + b, a b)$. Invert both sides: $h = frac(a b, a + b)$ — the harmonic mean of $a$ and $b$."),

    ("Make $x$ the subject of $x/2 + y/3 = 1$.",
     ["$(6 - 2y)/3$", "$(6 - 3y)/2$", "$2 - 3y$", "$(3 - y)/6$"], 0,
     "Multiply through by $6$: $3x + 2y = 6$. Then $3x = 6 - 2y$ and $x = (6 - 2y)/3$. Divide by the coefficient of $x$, which is $3$."),

    ("Make $q$ the subject of $p = (q + r)/(q - r)$.",
     ["$r(p + 1)/(p - 1)$", "$r(p - 1)/(p + 1)$", "$r(p + 1)/(1 - p)$", "$r/(p - 1)$"], 0,
     "Cross-multiply: $p q - p r = q + r$. Collect: $q(p - 1) = r(1 + p)$, so $q = frac(r(p + 1), p - 1)$."),

    ("Make $x$ the subject of $y = sqrt(x^2 - 4)$.",
     ["$sqrt(y^2 + 4)$", "$y^2 + 4$", "$sqrt(y^2 - 4)$", "$y + 4$"], 0,
     "Square both sides: $y^2 = x^2 - 4$. Then $x^2 = y^2 + 4$ and $x = sqrt(y^2 + 4)$. Do not stop at $x^2$."),

    ("Make $x$ the subject of $3/(x - 2) = y$.",
     ["$2 + 3/y$", "$2 - 3/y$", "$3/y - 2$", "$(3 - 2y)/y$"], 0,
     "Cross-multiply: $3 = y(x - 2)$, so $x - 2 = 3/y$ and $x = 2 + 3/y$. The $-2$ inside the bracket becomes $+2$ on crossing over."),

    ("Make $n$ the subject of $A = P(1 + r n)$.",
     ["$frac(A - P, P r)$", "$frac(A + P, P r)$", "$frac(A - P, r)$", "$A/(P r) - 1$"], 0,
     "Divide by $P$: $A/P = 1 + r n$. Subtract $1$: $(A - P)/P = r n$. Divide by $r$: $n = frac(A - P, P r)$."),

    ("Make $b$ the subject of $a/b = c/d$.",
     ["$frac(a d, c)$", "$frac(a c, d)$", "$frac(c d, a)$", "$frac(a, c d)$"], 0,
     "Cross-multiply: $a d = b c$. Divide by $c$: $b = frac(a d, c)$."),

    ("Make $y$ the subject of $x = (2y - 3)/(y + 1)$.",
     ["$(x + 3)/(2 - x)$", "$(x - 3)/(2 - x)$", "$(x + 3)/(x - 2)$", "$(3 - x)/(x + 2)$"], 0,
     "Cross-multiply: $x y + x = 2y - 3$. Collect: $y(x - 2) = -(x + 3)$, so $y = frac(x + 3, 2 - x)$."),

    ("Make $t$ the subject of $v = u(1 - t/T)$.",
     ["$T(u - v)/u$", "$T(v - u)/u$", "$T(1 - u/v)$", "$frac(u - v, T u)$"], 0,
     "Divide by $u$: $v/u = 1 - t/T$. Then $t/T = (u - v)/u$, so $t = T(u - v)/u$. Check: $v = u$ gives $t = 0$."),

    ("Make $r$ the subject of $V = 4/3 pi r^3$.",
     ["$root(3, frac(3V, 4pi))$", "$root(3, frac(4V, 3pi))$", "$frac(3V, 4pi)$", "$root(3, frac(3V, 4pi^3))$"], 0,
     "Multiply by $3$: $3V = 4pi r^3$. Divide by $4pi$: $r^3 = frac(3V, 4pi)$. Cube root: $r = root(3, frac(3V, 4pi))$."),

    ("Make $x$ the subject of $(x + a)/(x - b) = c$.",
     ["$(a + b c)/(c - 1)$", "$(a - b c)/(c - 1)$", "$(b c - a)/(c + 1)$", "$a + b c$"], 0,
     "Cross-multiply: $x + a = c x - b c$. Collect: $a + b c = x(c - 1)$, so $x = frac(a + b c, c - 1)$."),

    ("Make $x$ the subject of $a x = b(x + c)$.",
     ["$frac(b c, a - b)$", "$frac(b c, b - a)$", "$frac(a c, a - b)$", "$frac(c, a - b)$"], 0,
     "Expand: $a x = b x + b c$. Collect: $x(a - b) = b c$, so $x = frac(b c, a - b)$."),

    ("Make $m$ the subject of $E = m c^2$.",
     ["$E/c^2$", "$E c^2$", "$sqrt(E/c)$", "$E - c^2$"], 0,
     "Divide both sides by $c^2$: $m = E/c^2$. No root is needed because $m$ is not squared."),

    ("Make $x$ the subject of $y = 2^(x + 1)$.",
     ["$log_2 y - 1$", "$log_2 y + 1$", "$2 log_2 y$", "$log_2 (y + 1)$"], 0,
     "Take logs to base $2$: $log_2 y = x + 1$, so $x = log_2 y - 1$. The $-1$ is *outside* the logarithm."),

    ("Make $h$ the subject of $A = 2pi r(r + h)$.",
     ["$frac(A, 2pi r) - r$", "$frac(A, 2pi r) + r$", "$frac(A, 2pi) - r$", "$frac(A, 2pi r^2)$"], 0,
     "Divide by $2pi r$: $frac(A, 2pi r) = r + h$. Subtract $r$: $h = frac(A, 2pi r) - r$."),

    ("Make $w$ the subject of $P = 2(l + w)$.",
     ["$P/2 - l$", "$P/2 + l$", "$(P - l)/2$", "$2P - l$"], 0,
     "Divide by $2$: $P/2 = l + w$. Subtract $l$: $w = P/2 - l$. Divide before subtracting, since $2$ multiplies the bracket."),

    ("Make $x$ the subject of $sqrt(x/a) = b$.",
     ["$a b^2$", "$frac(b^2, a)$", "$a b$", "$frac(a, b^2)$"], 0,
     "Square both sides: $x/a = b^2$. Multiply by $a$: $x = a b^2$."),

    ("Make $x$ the subject of $a/(x + b) = c$.",
     ["$a/c - b$", "$a/c + b$", "$c/a - b$", "$a c - b$"], 0,
     "Cross-multiply: $a = c(x + b)$. Divide by $c$: $x + b = a/c$. Subtract $b$: $x = a/c - b$."),

    ("If $y = (2x - 1)/3$, find $x$ when $y = 5$.",
     ["$8$", "$7$", "$9$", "$11$"], 0,
     "Transpose first: $3y = 2x - 1$, so $x = (3y + 1)/2 = 16/2 = 8$. Check: $(2(8) - 1)/3 = 15/3 = 5$."),

    ("Given $1/f = 1/u + 1/v$ with $u = 6$ and $v = 3$, find $f$.",
     ["$2$", "$4.5$", "$9$", "$1.5$"], 0,
     "$f = frac(u v, u + v) = 18/9 = 2$. Verify: $1/6 + 1/3 = 1/2$, so $f = 2$."),

    ("Using $s = u t + 1/2 a t^2$, find $s$ when $u = 4$, $a = 2$ and $t = 3$.",
     ["$21$", "$18$", "$24$", "$15$"], 0,
     "$s = 4(3) + 1/2 (2)(9) = 12 + 9 = 21$. The $1/2$ and the $a = 2$ cancel to leave $t^2 = 9$."),

    ("Make $x$ the subject of $x^2 + y^2 = r^2$, taking $x > 0$.",
     ["$sqrt(r^2 - y^2)$", "$r - y$", "$sqrt(r^2 + y^2)$", "$r^2 - y^2$"], 0,
     "$x^2 = r^2 - y^2$, and since $x > 0$, $x = sqrt(r^2 - y^2)$. Never 'distribute' a root: $sqrt(r^2 - y^2) != r - y$."),

    ("Make $x$ the subject of $(x - 1)/(x + 2) = y/3$.",
     ["$(2y + 3)/(3 - y)$", "$(2y - 3)/(3 - y)$", "$(3 + y)/(2y - 3)$", "$(3 - y)/(2y + 3)$"], 0,
     "Cross-multiply: $3x - 3 = x y + 2y$. Collect: $x(3 - y) = 2y + 3$, so $x = frac(2y + 3, 3 - y)$."),

    ("Make $x$ the subject of $y = (a x + b)/(c x + d)$, where $c y != a$.",
     ["$(b - d y)/(c y - a)$", "$(b + d y)/(a - c y)$", "$(d y - b)/(c y - a)$", "$(b - d y)/(a - c y)$"], 0,
     "Cross-multiply: $c x y + d y = a x + b$. Collect: $x(c y - a) = b - d y$, so $x = frac(b - d y, c y - a)$."),

    ("Make $P$ the subject of $A = P(1 + r t)$.",
     ["$A/(1 + r t)$", "$A(1 + r t)$", "$A/(r t)$", "$A - r t$"], 0,
     "The subject already appears once, multiplied by the whole bracket $(1 + r t)$. Divide both sides by that bracket: $P = A/(1 + r t)$."),

    ("Make $r$ the subject of $s = (a + r)/(1 - r)$.",
     ["$(s - a)/(s + 1)$", "$(s + a)/(s - 1)$", "$(a - s)/(s + 1)$", "$(s - a)/(1 - s)$"], 0,
     "Cross-multiply: $s - s r = a + r$. Collect: $s - a = r(1 + s)$, so $r = (s - a)/(s + 1)$."),

    ("Make $y$ the subject of $x^2/a^2 + y^2/b^2 = 1$, taking $y > 0$.",
     ["$b sqrt(1 - x^2/a^2)$", "$b(1 - x/a)$", "$sqrt(b^2 - x^2)$", "$b sqrt(1 + x^2/a^2)$"], 0,
     "$frac(y^2, b^2) = 1 - frac(x^2, a^2)$, so $y = b sqrt(1 - frac(x^2, a^2))$ for $y > 0$. The radius $b$ multiplies the whole root, it is not squared inside it."),

    ("Make $T$ the subject of the gas equation $P V = n R T$.",
     ["$frac(P V, n R)$", "$frac(n R, P V)$", "$P V n R$", "$P V - n R$"], 0,
     "All of $n$, $R$ and $T$ are multiplied on the right, so divide by the product $n R$: $T = frac(P V, n R)$."),
]
