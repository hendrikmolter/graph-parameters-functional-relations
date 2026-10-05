import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Order.Lattice.Nat

/-!
---
title: Distance to complete graphs
type: definition
---
The distance to complete graphs is the minimum number of vertices whose
deletion leaves a complete induced graph. Completeness uses mathlib's top
graph, which has every edge between distinct vertices. The empty graph is
complete under this convention, so deleting all vertices always suffices.
-/

namespace Lax825442.DistanceToClique

/-- Minimum number of vertices whose deletion leaves a complete graph. -/
noncomputable def distanceToClique {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k : ℕ | ∃ S : Finset V, (S.card = k) ∧
    (G.induce {v | v ∉ S} = ⊤)}

end Lax825442.DistanceToClique
