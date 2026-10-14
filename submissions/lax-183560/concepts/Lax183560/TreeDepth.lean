import Lax183560.AncestorForest
import Mathlib.Order.Lattice.Nat

/-!
---
title: Treedepth
type: definition
---
The treedepth of a graph is the minimum height of a rooted forest on its
vertex set whose closure contains the graph. The closure joins every vertex
to each of its ancestors, and height counts the vertices on a longest
root-to-leaf path. The empty graph has treedepth zero.
-/

namespace Lax183560.TreeDepth

open Lax183560.AncestorForest

/-- `G` lies in the closure of a forest of vertex height at most `k`. -/
def HasTreedepthAtMost {V : Type} (G : SimpleGraph V) (k : ℕ) : Prop :=
  ∃ F : AncestorForest V,
    (∀ ⦃u v : V⦄, G.Adj u v → (F.ancestor u v ∨ F.ancestor v u)) ∧
    ∃ rank : V → Fin k,
      ∀ ⦃u v : V⦄, F.ancestor u v → rank u < rank v

/-- The minimum height of a rooted forest whose closure contains `G`. -/
noncomputable def treedepth {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasTreedepthAtMost G k}

end Lax183560.TreeDepth


