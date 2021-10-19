<style>
body {
  font-family: helvetica;
  line-height: 1.5em;
}
a:link {
  text-decoration: none;
}

a:visited {
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

a:active {
  text-decoration: underline;
}
</style>
# David Heath

You can reach me via email at <heath.davidanthony@gatech.edu>.

## About Me

Hi!
I\'m David Heath, a Computer Science PhD candidate studying cryptography at
Georgia Tech.
My research focuses on [Secure Multiparty Computation (MPC)](https://en.wikipedia.org/wiki/Secure_multi-party_computation).
So far, my research \- done in collaboration with my advisor [Vlad
Kolesnikov](https://www.cc.gatech.edu/~vlad/) and others \- has
improved two important areas of cryptography:

* *Practical Zero Knowledge*. Together with my collaborators, I have made
  important advances in the field of [Zero Knowledge (ZK)](https://en.wikipedia.org/wiki/Zero-knowledge_proof) Proofs.  In
  particular, my research shows it is possible to run ZK proofs of very large proofs [quite efficiently](https://www.computer.org/csdl/proceedings-article/sp/2021/893400b538/1t0x9pFe8tq).
* *Two Party Computation*.
  [Garbled Circuits (GC)](https://en.wikipedia.org/wiki/Garbled_circuit) is a
  foundational technique in MPC that allows two parties to securely compute
  arbitrary functions of their inputs with revealing nothing but the output.
  I have had the privilege of finding several
  new GC techniques:

  + [*Stacked Garbling*](https://eprint.iacr.org/2020/973) is a new GC technique
    that improves the handling of conditional branching.
    It was typically assumed that to securely compute a GC over a function, a string of cryptographic material proportional to the function description was needed.
    Stacked Garbling challenges this assumption, showing that we can reduce
    communication consumption such that it is proportional only to the single
    longest *execution path*, not to the entire function.
    We have also found similar improvements to other MPC techniques, namely to the [classic GMW protocol](https://eprint.iacr.org/2020/1175) and to [Beaver-Triple-based multiplication](https://eprint.iacr.org/2021/604).
  + *One-Hot Garbling* (appearing at CCS 2021) is a new GC technique that
    improves the efficiency of a variety of low level functions.
    Traditionally, GCs operate strictly over AND and XOR gates.
    One-hot garbling shows that certain vectorized operations can be computed
    more efficiently, and we need not compile all operations down to AND and
    XOR gates.
  + *Garbled RAM (GRAM)* is a [powerful technique](https://eprint.iacr.org/2012/601.pdf)
    that augments GC with a
    sublinear cost random access memory.
    Unforunately, existing GRAM techniques are too expensive for practice.
    My recent research has uncovered new GC primitives that make practical GRAM attainable.
    My work on GRAM is currently in submission.


To learn more about my research, you can peruse my work below or have a look at [my CV](./cv.pdf).


## Conference Publications

### 2021

* David Heath and Vladimir Kolesnikov. One hot garbling. CCS 2021.
* David Heath and Vladimir Kolesnikov. [PrORAM: Fast O(log n) private coin ZK ORAM](https://eprint.iacr.org/2021/587).
ASIACRYPT 2021.
* David Heath, Vladimir Kolesnikov, and Stanislav Peceny. Garbling, stacked and staggered. ASIACRYPT 2021.
* David Heath and Vladimir Kolesnikov. [LogStack: Stacked garbling with O(b log b) computation](https://eprint.iacr.org/2021/531).
  EUROCRYPT 2021.
  [Conference Talk](https://www.youtube.com/watch?v=fNrZhfNQ_fQ).
* David Heath, Yibin Yang, David Devecsery, and Vladimir Kolesnikov.
  [Zero knowledge for everything and everyone: Fast ZK processor with cached ORAM for ANSI C programs](https://www.computer.org/csdl/proceedings-article/sp/2021/893400b538/1t0x9pFe8tq). S\&P 2021. [Conference Talk](https://www.youtube.com/watch?v=JS-xpz1BIL4).
* David Heath, Vladimir Kolesnikov, and Stanislav Peceny. [Masked triples \- amortizing multiplication triples across conditionals](https://eprint.iacr.org/2021/604.pdf). PKC 2021. [Conference Talk by Stan Peceny](https://www.youtube.com/watch?v=mZm2tMas-yc).
* David Heath, Vladimir Kolesnikov, and Jiahui Lu. [Efficient generic arithmetic for KKW: Practical linear MPC\-in\-the\-head NIZK on commodity hardware without trusted setup](https://link.springer.com/chapter/10.1007/978-3-030-78086-9_31). CSCML 2021.

### 2020
* David Heath, Vladimir Kolesnikov, and Stanislav Peceny. [MOTIF: (almost) free branching in GMW via vector\-scalar multiplication](https://eprint.iacr.org/2020/1175).
  ASIACRYPT 2020. [Conference Talk by Stan Peceny](https://www.youtube.com/watch?v=nRIQclqfAAQ).
* David Heath and Vladimir Kolesnikov. [A 2.1 KHz zero-knowledge processor with BubbleRAM](https://dl.acm.org/doi/abs/10.1145/3372297.3417283). CCS 2020.
* David Heath and Vladimir Kolesnikov. [Stacked garbling - garbled circuit proportional to longest execution path](https://eprint.iacr.org/2020/973). CRYPTO 2020. [Conference Talk](https://www.youtube.com/watch?v=ii13QRHU2Ss).
* David Heath and Vladimir Kolesnikov. [Stacked garbling for disjunctive zero-knowledge proofs](https://eprint.iacr.org/2020/136.pdf). EUROCRYPT 2020. [Conference Talk](https://www.youtube.com/watch?v=O_kWpyIzqY4).



## Unpublished Manuscripts

* David Heath, Vladimir Kolesnikov, and Rafail Ostrovskey. Practical garbled RAM.
* Yibin Yang, David Heath,Vladimir Kolesnikov,and David Devecsery. EZEE: Epoch parallel zero knowledge for ANSI C.
* David Darais, David Heath, Ryan Estes, William Harris, and Michael Hicks. Lambda\-Symphony: A concise language model for MPC.
* Abida Haque, David Heath, Vladimir Kolesnikov, Steve Lu, Rafail Ostrovsky, and Akash Shah. GCWise: Garbled Circuits With Sublinear Evaluator.

## Talks

* [Logstack: Stacked garbling with O(b log b) computation](https://crypto.stanford.edu/seclab/sem-20-21/heath.html). Stanford Security Seminar, May 2021.
* [Zero-knowledge for everything and everyone](https://scp.cc.gatech.edu/2021/02/05/zero-knowledge-for-everything-and-everyone/). Georgia Tech Cybersecurity Lecture Series, February 2021.
* Stacked garbling: Garbled circuit proportional to longest execution path. Stanford Security Seminar, September 2020
* [Efficiently computing with private data](https://mediaspace.gatech.edu/media/David+Heath+-+Efficiently+Computing+with+Private+Data/1_8qvvz08r). Georgia Tech Cybersecurity Lecture Series, September 2019.
