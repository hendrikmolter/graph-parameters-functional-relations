import Lax68.Planar
import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Order.Lattice.Nat

/-!
---
title: Distance to planar graphs
type: definition
---
The distance to planar graphs is the minimum number of vertices whose
deletion leaves a planar graph.
-/

namespace Lax825442.DistanceToPlanar

/-- Minimum number of vertices whose deletion leaves a planar graph. -/
noncomputable def distanceToPlanar {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k : ℕ | ∃ S : Finset V, (S.card = k) ∧
    (Lax68.Planar.IsPlanar (G.induce {v | v ∉ S}))}

end Lax825442.DistanceToPlanar
