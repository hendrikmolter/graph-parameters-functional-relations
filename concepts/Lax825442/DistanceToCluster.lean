import Mathlib.Combinatorics.SimpleGraph.CompleteMultipartite
import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Order.Lattice.Nat

/-!
---
title: Distance to cluster graphs
type: definition
---
The distance to cluster graphs is the minimum number of vertices whose
deletion leaves a cluster graph.
-/

namespace Lax825442.DistanceToCluster

/-- Minimum number of vertices whose deletion leaves a disjoint union of cliques. -/
noncomputable def distanceToCluster {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k : ℕ | ∃ S : Finset V, (S.card = k) ∧
    ((G.induce {v | v ∉ S})ᶜ.IsCompleteMultipartite)}

end Lax825442.DistanceToCluster
