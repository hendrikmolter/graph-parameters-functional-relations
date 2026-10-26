import Lax560391.DistanceHereditaryGraphs
import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Order.Lattice.Nat

/-!
---
title: Distance to distance-hereditary graphs
type: definition
---
The minimum number of vertices whose deletion leaves a graph in which every
connected induced subgraph preserves distances.
-/

namespace Lax560391.DistanceToDistanceHereditary

open Lax560391.DistanceHereditaryGraphs

noncomputable def distanceToDistanceHereditary
    {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k : ℕ | ∃ S : Finset V, (S.card = k) ∧
    (IsDistanceHereditary (G.induce {v | v ∉ S}))}

end Lax560391.DistanceToDistanceHereditary
