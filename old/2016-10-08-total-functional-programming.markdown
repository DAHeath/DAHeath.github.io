---
layout: post
title:  "Total Functional Programming"
date:   2016-10-08 12:30:00 -0400
---
One of the biggest problems in Computer Science is that the Halting Problem
makes deciding lots of interesting characteristics of programs undecidable.
This means that doing certain kinds of useful analysis on programs is often
difficult or even impossible.

That said, there is a class of programs which are `total`: They halt! This is
the topic of David Turner's paper [Total Functional Programming][tfp]. Turner
suggests creating a language where it's easy to express total programs. By
default, the compiler would reject programs which are not "obviously" total.

My belief is that this direction could be pivotal in improving programmer
productivity. As Turner elaborates on, the majority of programs which people
tend to write are (or could be made) trivially total. The types of tooling which
could be provided for total programs would be far simpler and more powerful than
those which target programs that use Turing Complete features.

[tfp]: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.106.364&rep=rep1&type=pdf
