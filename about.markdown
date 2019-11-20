---
layout: page
---
Hi! My name is David Heath. I'm a Computer Science Ph.D. student at Georgia Tech.
My advisor is [Vlad Kolesnikov](https://www.cc.gatech.edu/people/vladimir-kolesnikov), Associate professor of cryptography at Georgia Tech.
I am coadvised by [Bill Harris](https://galois.com/team/bill-harris/), principal scientist at Galois.

My interests include:
  + Cryptography and Secure Multiparty Computation (MPC)
  + Programming Languages and Compiler Design

I work on the 9th floor of the CODA building [(756 W Peachtree St NW, Atlanta, GA 30308)](https://goo.gl/maps/CqeEd1wMpz6pV3wX7)

Research:
  <details>
  <summary>
  [Efficiently Computing with Private Data](https://smartech.gatech.edu/bitstream/handle/1853/61833/heath_videostream.html?sequence=3&isAllowed=y), presented as part of Georgia Tech's [Cybersecurity Lecture Series](https://cyber.gatech.edu/cyber-lecture).
  </summary>

  > Today, individual users and organizations often wish to contribute their private data to compute functions of interest.
  > Unfortunately, when data is deemed too valuable or is legally protected, such computation cannot be performed.
  >
  > Secure Multiparty Computation (MPC) is a subfield of Cryptography that allows mutually untrusting parties to work together to run programs over their private data without revealing any information except the program output.
  > In this way, MPC allows users to share private data while guaranteeing its privacy.
  > One fundamental and efficient MPC technique, Yao’s garbled circuit, represents the computed function as a Boolean circuit, and evaluates it gate-by-gate under encryption.
  >
  > While achieving excellent cost per gate, this approach requires evaluation of the entire circuit.
  > In particular, all inactive conditional branches must be sent over the network and evaluated: While inactive conditional branches are not needed to correctly compute functions, omitting them leaks information about the players’ private inputs.
  > After 35 years of active research, it is generally believed that this cost cannot be avoided without using relatively inefficient tools, such as universal circuits.
  >
  > In this talk, I will discuss a new technique for garbled circuit MPC, which challenges this widely-held belief.
  > I will show how to avoid sending inactive circuit branches at very modest increase of computation.
  > Because of this optimization, communication costs are proportional to the longest execution path, rather than to the entire circuit.
  >
  > The talk will be kept at a high level, and no cryptographic background is required.
  > The presented work is in collaboration with my advisor Vlad Kolesnikov.
  </details>

![Me!]({{ site.url }}/assets/me.jpg)
