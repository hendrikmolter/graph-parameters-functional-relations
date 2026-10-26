import Mathlib.Combinatorics.SimpleGraph.Basic

/-!
---
title: Chordal graphs
type: definition
---
A graph is chordal if it has no induced cycle of length at least four.
Empty and disconnected graphs are allowed.
-/

namespace Lax560391.ChordalGraphs

/-- The next vertex index, wrapping from the last index to zero. -/
def cyclicSucc (n : ℕ) (hn : 0 < n) (i : Fin n) : Fin n :=
  ⟨(i.val + 1) % n, Nat.mod_lt _ hn⟩

/-- A chordless cycle of length at least four. -/
def HasInducedLongCycle {V : Type} (G : SimpleGraph V) : Prop :=
  ∃ n : ℕ, ∃ hn : 4 ≤ n,
    let next := cyclicSucc n (lt_of_lt_of_le (by decide : 0 < 4) hn)
    ∃ f : Fin n ↪ V,
    (∀ i : Fin n, G.Adj (f i) (f (next i))) ∧
    (∀ i j : Fin n, i ≠ j → j ≠ next i → i ≠ next j →
      ¬ G.Adj (f i) (f j))

/-- No induced cycle of length at least four. -/
def IsChordal {V : Type} (G : SimpleGraph V) : Prop :=
  ¬ HasInducedLongCycle G

end Lax560391.ChordalGraphs
