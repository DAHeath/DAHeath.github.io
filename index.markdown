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
I\'m David Heath, a cryptographer and recent PhD recipient from Georgia Tech.
In Fall of 2022, I will join UIUC as an assistant professor.
My research focuses on [Secure Multiparty Computation (MPC)](https://en.wikipedia.org/wiki/Secure_multi-party_computation).
My research \- done in collaboration with my thesis advisor [Vlad
Kolesnikov](https://www.cc.gatech.edu/~vlad/) and others \- has
improved two important areas of cryptography:

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
  + [*One-Hot Garbling*](https://dl.acm.org/doi/abs/10.1145/3460120.3484764) is a new GC technique that
    improves the efficiency of a variety of low level functions.
    Traditionally, GCs operate strictly over AND and XOR gates.
    One-hot garbling shows that certain vectorized operations can be computed
    more efficiently, and we need not compile all operations down to AND and
    XOR gates.
  + *Garbled RAM (GRAM)* is a [powerful technique](https://eprint.iacr.org/2012/601.pdf)
    that augments GC with a
    sublinear cost random access memory.
    Unforunately, existing GRAM techniques are too expensive for practice.
    My [recent research](https://eprint.iacr.org/2021/1519) has uncovered new GC primitives that make practical GRAM attainable.
* *Practical Zero Knowledge*. Together with my collaborators, I have made
  important advances in the field of [Zero Knowledge (ZK)](https://en.wikipedia.org/wiki/Zero-knowledge_proof) Proofs.  In
  particular, my research shows it is possible to run ZK proofs of very large proofs [quite efficiently](https://www.computer.org/csdl/proceedings-article/sp/2021/893400b538/1t0x9pFe8tq).


To learn more about my research, you can peruse my work below or have a look at [my CV](./cv.pdf).

See my [PhD Dissertation](./dissertation.pdf).

## Conference Publications

### 2022

* David Heath, Vladimir Kolesnikov, and Rafail Ostrovsky. [Practical Garbled RAM](https://eprint.iacr.org/2021/1519). EUROCRYPT 2022 *Best Paper Award*.
[Conference Talk](https://www.youtube.com/watch?v=kgeHG-jIKCM&list=PLeeS-3Ml-rpo46w2onH4CGzlHZ8uwa1w5&index=1).
* Abida Haque, David Heath, Vladimir Kolesnikov, Steve Lu, Rafail Ostrovsky, and Akash Shah. [GCWise: Garbled Circuits With Sublinear Evaluator](https://eprint.iacr.org/2022/797). EUROCRYPT 2022.
[Conference Talk](https://www.youtube.com/watch?v=2aMeluc44Fc&list=PLeeS-3Ml-rpo46w2onH4CGzlHZ8uwa1w5&index=2).
* Yibin Yang, David Heath,Vladimir Kolesnikov,and David Devecsery. [EZEE: Epoch Parallel Zero Knowledge for ANSI C](https://eprint.iacr.org/2022/811). EuroS&P 2022.

### 2021

* David Heath and Vladimir Kolesnikov. [One Hot Garbling](https://eprint.iacr.org/2022/798). CCS 2021. [Conference Talk](https://iframe.videodelivery.net/eyJraWQiOiI3YjgzNTg3NDZlNWJmNDM0MjY5YzEwZTYwMDg0ZjViYiIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJkZjYyMzE3MTMzZjM0Nzk2NTg4Yjk0ZjRjZjg1OTFlNiIsImtpZCI6IjdiODM1ODc0NmU1YmY0MzQyNjljMTBlNjAwODRmNWJiIiwiZXhwIjoxNjU2MDE2ODIwfQ.dVmhuvSBa9_2Yf0raXuo3yVBs7n7U_wrVCiSvIlEUt2HUiGbTTktKdpnm6iXZM8GM2OQaBWn8xZvITAyjCK-HHYTDMeRjRcktdzn9NMsG_hmZOMnaQKzzOniYLPNzkRXBwii0GbBIJhpk4qWhskOjdEpRQlsP5gI64zCFY6LGoPFvTo_3Y6NDGtCq53gdSgS00owsjAp3ca3B84-K6dTCvEaZS2vWzQhN1ghmYgEd1vs_sLz9u6jW9wlY0GUA5UaNiMXvzbf_mFAKXX-r8-Qx5yOqzb4RHhGH9YKWY5NSgal4P657v8PEOvUPs0WXB3gNdscDGwS8tfoCQ94CIZN3A?poster=https%3A%2F%2Fvideodelivery.net%2FeyJraWQiOiI3YjgzNTg3NDZlNWJmNDM0MjY5YzEwZTYwMDg0ZjViYiIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJkZjYyMzE3MTMzZjM0Nzk2NTg4Yjk0ZjRjZjg1OTFlNiIsImtpZCI6IjdiODM1ODc0NmU1YmY0MzQyNjljMTBlNjAwODRmNWJiIiwiZXhwIjoxNjU2MDE2ODIwfQ.dVmhuvSBa9_2Yf0raXuo3yVBs7n7U_wrVCiSvIlEUt2HUiGbTTktKdpnm6iXZM8GM2OQaBWn8xZvITAyjCK-HHYTDMeRjRcktdzn9NMsG_hmZOMnaQKzzOniYLPNzkRXBwii0GbBIJhpk4qWhskOjdEpRQlsP5gI64zCFY6LGoPFvTo_3Y6NDGtCq53gdSgS00owsjAp3ca3B84-K6dTCvEaZS2vWzQhN1ghmYgEd1vs_sLz9u6jW9wlY0GUA5UaNiMXvzbf_mFAKXX-r8-Qx5yOqzb4RHhGH9YKWY5NSgal4P657v8PEOvUPs0WXB3gNdscDGwS8tfoCQ94CIZN3A%2Fthumbnails%2Fthumbnail.jpg%3Ftime%3D10.0s).
* David Heath and Vladimir Kolesnikov. [PrORAM: Fast O(log n) Private Coin ZK ORAM](https://eprint.iacr.org/2021/587).
ASIACRYPT 2021. [Conference Talk](https://www.youtube.com/watch?v=oJ_30plLyZo).
* David Heath, Vladimir Kolesnikov, and Stanislav Peceny. [Garbling, Stacked and Staggered](https://eprint.iacr.org/2021/1590). ASIACRYPT 2021. [Conference Talk by Stan Peceny](https://www.youtube.com/watch?v=QnVanTjaP8o).
* David Heath and Vladimir Kolesnikov. [LogStack: Stacked Garbling with O(b log b) Computation](https://eprint.iacr.org/2021/531).
  EUROCRYPT 2021.
  [Conference Talk](https://www.youtube.com/watch?v=fNrZhfNQ_fQ).
* David Heath, Yibin Yang, David Devecsery, and Vladimir Kolesnikov.
  [Zero Knowledge for Everything and Everyone: Fast ZK Processor with Cached ORAM for ANSI C programs](https://eprint.iacr.org/2022/810). S\&P 2021. [Conference Talk](https://www.youtube.com/watch?v=JS-xpz1BIL4).
* David Heath, Vladimir Kolesnikov, and Stanislav Peceny. [Masked Triples \- Amortizing Multiplication Triples Across Conditionals](https://eprint.iacr.org/2021/604). PKC 2021. [Conference Talk by Stan Peceny](https://www.youtube.com/watch?v=mZm2tMas-yc).
* David Heath, Vladimir Kolesnikov, and Jiahui Lu. [Efficient Generic Arithmetic for KKW: Practical Linear MPC\-in\-the\-Head NIZK on Commodity Hardware without Trusted Setup](https://eprint.iacr.org/2022/795). CSCML 2021.

### 2020
* David Heath, Vladimir Kolesnikov, and Stanislav Peceny. [MOTIF: (almost) Free Branching in GMW via Vector\-Scalar Multiplication](https://eprint.iacr.org/2020/1175).
  ASIACRYPT 2020. [Conference Talk by Stan Peceny](https://www.youtube.com/watch?v=nRIQclqfAAQ).
* David Heath and Vladimir Kolesnikov. [A 2.1 KHz Zero-Knowledge Processor with BubbleRAM](https://eprint.iacr.org/2022/809). CCS 2020. [Conference Talk](https://iframe.videodelivery.net/eyJraWQiOiI3YjgzNTg3NDZlNWJmNDM0MjY5YzEwZTYwMDg0ZjViYiIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiIzNzQ0ZjMwZGI4NWE0Mzk3NTUwNTAzMGU1MzEwMTlhZSIsImtpZCI6IjdiODM1ODc0NmU1YmY0MzQyNjljMTBlNjAwODRmNWJiIiwiZXhwIjoxNjU2MDE4MzExfQ.rF5seqWsMq1tGNdY6o6xYzwqYkhumD4q0n3OFUfVJAZqjieycX7E15adVEZzJq3mtTdLQrM2x65xYmlXzJi5gsxAPemL9jyNb5o8FhX_pk2ijDWXN_57oQjKtk1HB5-gGfOr5ZcyS1LL-ptc1NPje7Df1V9ZHPXD_OqwrJlAnwUp36jR55mrojV6YrVoCsncHlI5hfjmqc7JLwk-eFjUT_GhENldxFjCOStsNe8VJ6_igvI5iC9L3RmhdDLEGrPviiDysjazvZbeb9U9NZemQHNBZvzldBIH5fekDoj9DhFscmuCvExIkP4Zg283tuaMdVi06L5IEQ-w29zhGOh2FA?poster=https%3A%2F%2Fvideodelivery.net%2FeyJraWQiOiI3YjgzNTg3NDZlNWJmNDM0MjY5YzEwZTYwMDg0ZjViYiIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiIzNzQ0ZjMwZGI4NWE0Mzk3NTUwNTAzMGU1MzEwMTlhZSIsImtpZCI6IjdiODM1ODc0NmU1YmY0MzQyNjljMTBlNjAwODRmNWJiIiwiZXhwIjoxNjU2MDE4MzExfQ.rF5seqWsMq1tGNdY6o6xYzwqYkhumD4q0n3OFUfVJAZqjieycX7E15adVEZzJq3mtTdLQrM2x65xYmlXzJi5gsxAPemL9jyNb5o8FhX_pk2ijDWXN_57oQjKtk1HB5-gGfOr5ZcyS1LL-ptc1NPje7Df1V9ZHPXD_OqwrJlAnwUp36jR55mrojV6YrVoCsncHlI5hfjmqc7JLwk-eFjUT_GhENldxFjCOStsNe8VJ6_igvI5iC9L3RmhdDLEGrPviiDysjazvZbeb9U9NZemQHNBZvzldBIH5fekDoj9DhFscmuCvExIkP4Zg283tuaMdVi06L5IEQ-w29zhGOh2FA%2Fthumbnails%2Fthumbnail.jpg%3Ftime%3D10.0s).
* David Heath and Vladimir Kolesnikov. [Stacked Garbling - Garbled Circuit Proportional to Longest Execution Path](https://eprint.iacr.org/2020/973). CRYPTO 2020. [Conference Talk](https://www.youtube.com/watch?v=ii13QRHU2Ss).
* David Heath and Vladimir Kolesnikov. [Stacked Garbling for Disjunctive Zero-Knowledge Proofs](https://eprint.iacr.org/2020/136). EUROCRYPT 2020. [Conference Talk](https://www.youtube.com/watch?v=O_kWpyIzqY4).



## Unpublished Manuscripts

* David Heath, Vladimir Kolesnikov, Stanislav Peceny, and Yibin Yang. Towards Generic MPC Compilers via Variable Instruction Set Architectures (VISAs).
* David Darais, David Heath, Ryan Estes, William Harris, and Michael Hicks. Lambda\-Symphony: A Concise Language Model for MPC.

## Talks

* New Directions in Garbled Circuits. Invited Speaker at TPMPC, June 2022.
* EpiGRAM: Practical Garbled RAM. Invited Speaker at Charles River Crypto Day, March 2022.
* [Practical Garbled RAM](https://www.youtube.com/watch?v=Rg91tBQjkyk). CMU Reading Group, December 2021.
* Practical Garbled RAM. UMD Reading Group, December 2021.
* Practical Garbled RAM. Stanford Security Seminar, November 2021.
* Logstack: Stacked Garbling with O(b log b) Computation. TCC 2021 Special in-person Workshop, November 2021.
* [Logstack: Stacked Garbling with O(b log b) Computation](https://crypto.stanford.edu/seclab/sem-20-21/heath.html). Stanford Security Seminar, May 2021.
* [Zero-knowledge for Everything and Everyone](https://scp.cc.gatech.edu/2021/02/05/zero-knowledge-for-everything-and-everyone/). Georgia Tech Cybersecurity Lecture Series, February 2021.
* Stacked garbling: Garbled circuit proportional to longest execution path. Stanford Security Seminar, September 2020
* [Efficiently Computing with Private Data](https://mediaspace.gatech.edu/media/David+Heath+-+Efficiently+Computing+with+Private+Data/1_8qvvz08r). Georgia Tech Cybersecurity Lecture Series, September 2019.
