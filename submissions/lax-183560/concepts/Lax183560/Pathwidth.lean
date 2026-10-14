import Lax183560.PathDecomposition
import Mathlib.Order.Lattice.Nat

/-!
---
title: Pathwidth
type: definition
---
The pathwidth of a graph is the minimum width of a path decomposition.
The width of a path decomposition is the maximum bag size minus one.
The empty graph has pathwidth zero.
-/

namespace Lax183560.Pathwidth

open Lax183560.PathDecomposition

/-- Existence of a path decomposition with bags of size at most `k + 1`. -/
def HasPathwidthAtMost {V : Type} (G : SimpleGraph V) (k : ℕ) : Prop :=
  ∃ D : PathDecomposition G, ∀ i, (D.bag i).card ≤ k + 1

/-- The minimum path-decomposition width. -/
noncomputable def pathwidth {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasPathwidthAtMost G k}

end Lax183560.Pathwidth
