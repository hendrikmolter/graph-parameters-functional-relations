import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Data.Set.Card
import Mathlib.Order.Lattice.Nat

/-!
---
title: Twin-cover number
type: definition
---
A twin-cover meets every edge whose endpoints are not true twins in the
original graph. The twin-cover number is the minimum cardinality of such a
set.
-/

namespace Lax825442.TwinCover

/-- Adjacent vertices with the same neighbors outside the pair. -/
def TrueTwins {V : Type} (G : SimpleGraph V) (u v : V) : Prop :=
  G.Adj u v ∧ (∀ w : V,
    (w ≠ u ∧ w ≠ v) → (G.Adj u w ↔ G.Adj v w))

/-- A set meeting every edge except those between true twins. -/
def IsTwinCover {V : Type} (G : SimpleGraph V) (S : Set V) : Prop :=
  ∀ ⦃u v : V⦄,
    (G.Adj u v ∧ ¬ TrueTwins G u v) → (u ∈ S ∨ v ∈ S)

/-- The minimum cardinality of a twin-cover. -/
noncomputable def twinCover {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | ∃ S : Set V, (S.ncard = k) ∧ IsTwinCover G S}

end Lax825442.TwinCover
