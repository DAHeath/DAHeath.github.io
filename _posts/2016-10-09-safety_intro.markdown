---
layout: post
title:  "Checking Sequential Programs for Safety"
date:   2016-10-09 12:30:00 -0400
---
Check out this C program which calculates the least common multiple of two
integers.

{% highlight c %}

int gcd(int a, int b) {
  int t;
  while (b != 0) {
    t = a % b;
    a = b;
    b = t;
  }
  return a;
}

int lcm(int a, int b) {
  return a / gcd(a, b) * b;
}

{% endhighlight %}

This program has an input over which it is not well defined. Can you spot the
problem?

If the user calls `lcm(0, 0)` then the program will crash! (It crashes because
the `gcd` of `0` and `0` is `0`, so `lcm` features a division by `0`.) This is
a type of bug that is easy to miss. Unfortunately a normal compiler will do
nothing to help the programmer spot it.

My core interest is in providing better feedback to the programmer about bugs
like these. One cutting edge method for finding a bug like this is to
use `interpolants`. Solving interpolants goes beyond what I want to talk about
here, but you can read more about this in Kenneth McMillan's paper
[Lazy Abstraction with Interpolants][lawi].

In 2013, McMillan and Andrey Rybalchenko published a follow-up paper which
shows how to use interpolation to solve constrained Horn Clauses. This paper
is titled [Solving Constrained Horn Clauses using Interpolation][schc]. A Horn
Clause is a special type of Logical Formula. It has any number of
clauses on the left which are all `anded` together. This conjunction `implies`
a single clause.
{% highlight c %}
a ^ not b ^ c ^ d -> e
{% endhighlight %}
is a Horn Clause. If you want more background, the [wikipedia article][wiki]
does a fair job introducing Horn Clauses.

Why is this important? Because translating sequential programs to Horn Clauses
is relatively straightforward! Here is the a potential translation of the program above:
{% highlight c %}

lcm(a, b)
  -> gcd(a, b)

gcd(a, b)
  ^ b != 0
  ^ t = a % b
  ^ a0 = y
  ^ b0 = t
  -> gcd(a0, b0)

gcd(a, b)
  ^ b = 0
  -> gcd_exit (a)

lcm(x)
  ^ gcd_exit(a, b)
  ^ y = (a / x) * b
  -> gcd_exit(y)

{% endhighlight %}

The first line of the above can be read "If you made it to the entrance of `lcm`
with arguments `a` and `b`, then you made it to the entrance of `gcd` with
arguments `a` and `b`.

The second line can be read "If you made it to the entrance of `gcd` with arguments
`a` and `b`, `b` is not `0`, `t` is `a % b`, `a0` is `y`, and `b0` is `t`, then you
made it back to `gcd` with arguments `a0` and `b0`.

Try to figure out the meaning of the other lines yourself! Since interpolation can
be used to solve Horn Clauses, and programs can be converted into Horn Clauses,
we can use a Horn Clause Interpolant Solver (such as one provided by Microsoft's
Automated Theorem Prover [Z3][z3]) to answer questions about our programs.

For example, we'd like to prove that division by `0` is impossible. To do this,
we can add a new special clause.
{% highlight c %}

not (lcm(a, b) ^ gcd_exit(x) -> x != 0) -> query(x)

{% endhighlight %}

You can read this as: "If you reached `lcm` with arguments `a` and `b` and you
reached the exit of `gcd` with argument `x` then `x` is not `0`. If this is not
true, then the query is true." Feeding all of these clauses to Z3 using the
Duality Engine gives us a result back: `sat`. What does this mean? It means
that the query is satisfiable. In other words, `x` might be `0` and a division by
 `0` could occur!

By the way, here is one way the programmer could fix the program:

{% highlight c %}

int gcd(int a, int b) {
  ...
}

int lcm(int a, int b) {
  if (a == 0 && b == 0) {
    return 0;
  } else {
    return a / gcd(a, b) * b;
  }
}

{% endhighlight %}

With this modification Z3 will helpfully inform us that our query is `unsat`:
There no way that a division by `0` will occur!

If you think that this all sounds too good to be true then you're partly right
and partly wrong. Solving these types of problems really does work, and the
solver is efficient too! However, the Interpolant Solver is constantly trying to
solve [NP-Complete][np] problems. Therefore, there are certain programs where you
could try this technique and the theorem prover will take an unrealistic amount
of time to finish.

An example is when a program aggressively uses dynamic memory and heap data
structures. The research that my colleagues and I are currently working on
searches for ways to apply this sort of strategy to a wider array of problems.

[lawi]: http://www.cs.toronto.edu/~fbacchus/csc2512/Lectures/2014Readings/McMillan_CAV06.pdf
[schc]: https://www.microsoft.com/en-us/research/wp-content/uploads/2016/02/MSR-TR-2013-6.pdf
[wiki]: https://en.wikipedia.org/wiki/Horn_clause
[z3]:   https://github.com/Z3Prover/z3
[np]:   https://en.wikipedia.org/wiki/NP-completeness
