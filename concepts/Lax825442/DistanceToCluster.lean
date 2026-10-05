import Mathlib.Combinatorics.SimpleGraph.CompleteMultipartite
import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Order.Lattice.Nat

/-!
---
title: Distance to cluster graphs
type: definition
---
A cluster graph is a disjoint union of cliques, including isolated vertices
and the empty graph. Equivalently, its complement is complete multipartite.
The distance to cluster graphs is the minimum number of vertices whose
deletion leaves a cluster induced graph. The target predicate reuses
mathlib's `SimpleGraph.IsCompleteMultipartite` on the complement.
-/

namespace Lax825442.DistanceToCluster

/-- Minimum number of vertices whose deletion leaves a disjoint union of cliques. -/
noncomputable def distanceToCluster {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k : ℕ | ∃ S : Finset V, (S.card = k) ∧
    ((G.induce {v | v ∉ S})ᶜ.IsCompleteMultipartite)}

end Lax825442.DistanceToCluster
