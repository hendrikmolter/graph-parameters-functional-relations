import Lax560391.ChordalGraphs
import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Order.Lattice.Nat

/-!
---
title: Distance to chordal graphs
type: definition
---
The minimum number of vertices whose deletion leaves a graph with no induced
cycle of length at least four.
-/

namespace Lax560391.DistanceToChordal

open Lax560391.ChordalGraphs

noncomputable def distanceToChordal {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k : ℕ | ∃ S : Finset V, (S.card = k) ∧
    (IsChordal (G.induce {v | v ∉ S}))}

end Lax560391.DistanceToChordal
