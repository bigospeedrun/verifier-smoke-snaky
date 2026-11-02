import Submission.SnakyStatement

/-!
Verifier test fixture (not a submission): the proof is `sorry`. The verifier must refuse it.
See README.md for what each commit of this repository changes.
-/

theorem Race.bound : BigOSpeedrun.Snaky.Bound 20 := by
  sorry
