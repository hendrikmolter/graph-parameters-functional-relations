import Lax825442.FunctionalEquivalenceConnection

namespace Lax825442Proofs.FunctionalEquivalenceConnection

open Lax153141.GraphParameters
open Lax825442.Bounds

private def monotoneHull (f : ℕ → ℕ) : ℕ → ℕ
  | 0 => f 0
  | n + 1 => max (monotoneHull f n) (f (n + 1))

private theorem monotoneHull_monotone (f : ℕ → ℕ) :
    Monotone (monotoneHull f) := by
  apply monotone_nat_of_le_succ
  intro n
  exact le_max_left _ _

private theorem le_monotoneHull (f : ℕ → ℕ) (n : ℕ) :
    f n ≤ monotoneHull f n := by
  cases n with
  | zero => exact le_refl _
  | succ n => exact le_max_right _ _

private theorem bounds_of_function {p q : GraphParam}
    (h : ∃ f : ℕ → ℕ,
      (∀ {V : Type} [Fintype V] [DecidableEq V] (G : SimpleGraph V),
        q G ≤ f (p G))) : Bounds p q := by
  obtain ⟨f, hf⟩ := h
  refine ⟨monotoneHull f, monotoneHull_monotone f, ?_⟩
  intro V _ _ G
  exact (hf G).trans (le_monotoneHull f (p G))

/--
---
conclusion: Lax825442.FunctionalEquivalenceConnection.functionallyEquivalent_iff
---
Replace each arbitrary bounding function by its nondecreasing upper envelope.
-/
theorem functionallyEquivalent_iff (p q : GraphParam) :
    (FunctionallyEquivalent p q) ↔ (Lax825442.Equivalent.Equivalent p q) := by
  constructor
  · intro h
    exact ⟨bounds_of_function h.2, bounds_of_function h.1⟩
  · rintro ⟨⟨f, _, hf⟩, ⟨g, _, hg⟩⟩
    exact ⟨⟨g, hg⟩, ⟨f, hf⟩⟩

end Lax825442Proofs.FunctionalEquivalenceConnection
