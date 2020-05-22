# Software Architecture

## Mono Repo vs Poly Repo

Mono repo should apply for most cases since they reduce the amount of work to keep library in sync and also make it easier to work on issues that span multiple libraries

Poly repo is used when you have to break a piece out because multiple places are using them

Mono and poly are not exclusive, you can have a repo that can multiple libraries that are meant to be used together

## Estimation

This [Embedded Artistry articles][2] demonstrates approaches to predicting. There are various rules but the good ones seem to avoid the mob effects and the come-first mentality where the first estimation is repeated by everyone else. They usually accomplish these two things by making sure everyone's estimation is taken into account anonymously and at the same time.

## Designing Abstractions

As illustrated in [this article][1], lack of abstraction is almost as prevalent as premature abstraction, when we find ourselves bolting more stuffs on the old code, it's time to rethink the design. Have patience before refactoring to avoid over abstraction.

[1]: https://www.sandimetz.com/blog/2016/1/20/the-wrong-abstraction
[2]: https://embeddedartistry.com/blog/2020/03/16/improving-our-estimation-abilities-embedded-artistrys-approach/
