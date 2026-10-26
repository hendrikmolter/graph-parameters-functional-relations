import Lax560391.BlockGraphs
import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Order.Lattice.Nat

/-!
---
title: Distance to block graphs
type: definition
---
The minimum number of vertices whose deletion leaves a block graph, expressed
as a chordal graph with no induced diamond.
-/

namespace Lax560391.DistanceToBlock

open Lax560391.BlockGraphs

noncomputable def distanceToBlock {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k : ℕ | ∃ S : Finset V, (S.card = k) ∧
    (IsBlock (G.induce {v | v ∉ S}))}

end Lax560391.DistanceToBlock
