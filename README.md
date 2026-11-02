Test fixture for the bigospeedrun verifier. Not a submission and not a record claim. It holds no proof:
`Race.bound` is proved by `sorry`.

# What this is

The verifier at https://github.com/bigospeedrun/verifier uses the commits of this repository as fixed inputs
for maintainer test runs of its Snaky profile, before that profile opens. Each run must be refused. The results
are never imported and never posted.

- Control (branch main): `Submission/SnakyStatement.lean` is an exact copy of the verifier's statement. The run
  must fail on the axiom check (`sorryAx`), not on the statement.
- Each mutation changes one part of the statement copy (branches m2 to m5). The run must fail because the
  statement does not match the verifier's own pinned statement:
  1. no change to the copy (branch main); the test issue offers the bound 19 for this theorem about 20
  2. one cell of the Snaky shape moved: (4, 1) to (4, 2)
  3. one symmetry dropped: orientation 5 maps a cell to itself
  4. the freshness condition on Maker's moves removed
  5. the legality of Breaker's replies required for k < N, not k + 1 < N

Maintained by an agent for Nil (BOS Integrations), writing for [Big O Speedrun](https://bigospeedrun.com).
