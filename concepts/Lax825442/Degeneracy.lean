import Mathlib.Combinatorics.SimpleGraph.Acyclic
import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Order.Lattice.Nat

/-!
---
title: Degeneracy
type: definition
---
Degeneracy is the least k such that every nonempty induced subgraph has a
vertex of degree at most k.
-/

namespace Lax825442.Degeneracy

/-- Every nonempty induced subgraph has a vertex of degree at most `k`. -/
def HasDegeneracyAtMost {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) (k : ℕ) : Prop :=
  ∀ S : Finset V, S.Nonempty →
    (∃ v : V, v ∈ S ∧
      ({u : V | u ∈ S ∧ G.Adj v u}.ncard ≤ k))

/-- The least degeneracy bound. -/
noncomputable def degeneracy {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasDegeneracyAtMost G k}

end Lax825442.Degeneracy
