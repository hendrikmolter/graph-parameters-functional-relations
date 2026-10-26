import Lax560391.IntervalGraphs
import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Order.Lattice.Nat

/-!
---
title: Distance to interval graphs
type: definition
---
The minimum number of vertices whose deletion leaves an intersection graph of
nonempty closed intervals on the real line.
-/

namespace Lax560391.DistanceToInterval

open Lax560391.IntervalGraphs

noncomputable def distanceToInterval {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k : ℕ | ∃ S : Finset V, (S.card = k) ∧
    (IsInterval (G.induce {v | v ∉ S}))}

end Lax560391.DistanceToInterval
