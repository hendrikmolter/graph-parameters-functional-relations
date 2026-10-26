import Mathlib.Combinatorics.SimpleGraph.Connectivity.Connected
import Mathlib.Data.Set.Card
import Mathlib.Order.Lattice.Nat

/-!
---
title: Vertex integrity
type: definition
---
The vertex integrity of a finite graph is the minimum, over vertex sets `S`,
of the size of `S` plus the order of the largest connected component of the
graph induced by the remaining vertices. The maximum component order is zero
when no vertices remain.
-/

namespace Lax560391.VertexIntegrity

/-- Deleting `S` leaves no component larger than `k - |S|`. -/
def HasVertexIntegrityAtMost {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) (k : ℕ) : Prop :=
  ∃ S : Set V, S.ncard ≤ k ∧
    ∀ C : (G.induce Sᶜ).ConnectedComponent,
      S.ncard + C.supp.ncard ≤ k

/-- The minimum of deletion-set size plus largest remaining component size. -/
noncomputable def vertexIntegrity {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasVertexIntegrityAtMost G k}

end Lax560391.VertexIntegrity
