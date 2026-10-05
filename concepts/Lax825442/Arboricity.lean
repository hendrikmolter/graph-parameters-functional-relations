import Mathlib.Combinatorics.SimpleGraph.Acyclic
import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Order.Lattice.Nat

/-!
---
title: Arboricity
type: definition
---
Arboricity is the minimum number of forests partitioning the edge set. An
edgeless graph has value zero.
-/

namespace Lax825442.Arboricity

/-- An assignment of graph edges to `k` classes, each inducing a forest. -/
def HasArboricityAtMost {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) (k : ℕ) : Prop :=
  ∃ color : G.edgeSet → Fin k,
    (∀ i : Fin k,
      (G.deleteEdges {e : Sym2 V | ∃ h : e ∈ G.edgeSet,
        color ⟨e, h⟩ ≠ i}).IsAcyclic)

/-- The minimum number of forests partitioning the edges. -/
noncomputable def arboricity {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasArboricityAtMost G k}

end Lax825442.Arboricity
