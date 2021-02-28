# Covidence Coding Challenge

Covidence is a Systematic Review management system. We provide software and
infrastructure for teams of reviewers to perform a systematic review
efficiently, reliably, and with integrity.

A Systematic Review is widely considered one of the strongest forms of evidence
due in part to its rigorous approach for appraising the quality of multiple
topically related studies and producing a conclusion from analysing the
findings across multiple studies.

Critical to producing this high quality evidence is to only
consider the actions and decisions taken by review team members when they
reach a level of consensus.

## Problem

The citation of each study in a systematic review needs to be screened to
determine if it is relevant to the review. To mitigate the introduction of bias
by any single reviewer, a citation must be screened by at least 2 individuals
before it proceeds to the next stage of review.

Your task is to build a simplified version of this screening feature, which
tracks the process of consensus.

Given a list of citations (sample data is provided as a JSON file), build a
small tool that allows reviewers to pass a judgement for each citation and
which can output the current classification of all citations according to the
judgements thus far.

For the purposes of this problem, each citation is either "included",
"excluded", or "undecided".

Each reviewer has the opportunity to make a decision (yes or no) as to whether
the citation is relevant. There can be an arbitrary number of reviewers
assessing citations in an arbitrary order.

For instance:

| | Citation 1 | Citation 2 | Citation 3 | Citation 4 | Citation 5 |
|-|-|-|-|-|-|
| Reviewer A | ✔️ | ✔️ | ❌ | ✔️ | ✔️
| Reviewer B | ✔️ | ❌ | ❌ | ❌ | ❌
| Reviewer C | _n/a_ | ✔️ | _n/a_ | ❌ | _no vote yet_
| --- | --- | --- | --- | --- | --- |
| Outcome | **✔️** | **✔️** | **❌** | **❌** | _Undecided_


You may build this feature in any way you like, such as a module/library with a
clear API, a CLI tool, a purely frontend app, or something else. This does not have to be a web
application.

The important part of this challenge is the consensus and classification
mechanism itself--not any particular UI presentation of it--so time should be
spent accordingly. You should treat this as if it were a production quality, so
focus on correctness, extensibility, maintainability, and communicating the
design to collaborators.

**Please don't spend more than a few hours on this** - if you are unable to
complete the challenge in that time that's perfectly okay, this is not a test
of development speed. Instead add a section to your README with your thoughts
on what you would do next.

JSON file with sample citation data is in: [citation.json](/citation.json)

## Submission

Please provide a README containing instructions for setup, testing, and running.
Also include any other context you like, such as design choices you felt were
important, what you chose to focus on, what you didn't have time for but have
thoughts on, etc...

You may use any language you like for this challenge, just be sure the
instructions for running it are clear.

Please include your Git history but do not post your solution in a public
repository. Instead, you may email the working directory (including `.git`),
upload to a private repository, or Covidence can provide you a private
repository to push to.
