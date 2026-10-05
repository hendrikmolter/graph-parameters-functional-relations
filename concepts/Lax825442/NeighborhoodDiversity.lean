import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Data.Set.Card
import Mathlib.Order.Lattice.Nat

/-!
---
title: Neighborhood diversity
type: definition
---
Neighborhood diversity is the minimum number of parts partitioning the
vertices such that each part is a module and induces either a clique or an
independent set. The empty graph has value zero.
-/

namespace Lax825442.NeighborhoodDiversity

/-- A partition into `k` parts, each a module and each inducing a clique or
an independent set. Empty labels are allowed and disappear at the minimum. -/
def HasNeighborhoodDiversityAtMost {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) (k : ℕ) : Prop :=
  ∃ part : V → Fin k,
    (∀ u v w : V,
      (part u = part v ∧ part w ≠ part u) → (G.Adj u w ↔ G.Adj v w)) ∧
    (∀ i : Fin k,
      (∀ u v : V,
        (u ≠ v ∧ (part u = i ∧ part v = i)) → G.Adj u v) ∨
      (∀ u v : V,
        (part u = i ∧ part v = i) → ¬ G.Adj u v))

/-- The minimum number of neighborhood-diversity parts. -/
noncomputable def neighborhoodDiversity {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasNeighborhoodDiversityAtMost G k}

end Lax825442.NeighborhoodDiversity
