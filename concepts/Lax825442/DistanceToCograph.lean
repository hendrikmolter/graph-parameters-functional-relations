import Lax214022.Cographs
import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Order.Lattice.Nat

/-!
---
title: Distance to cographs
type: definition
---
The distance to cographs is the minimum number of vertices whose deletion
leaves a cograph.
-/

namespace Lax825442.DistanceToCograph

/-- Minimum number of vertices whose deletion leaves a cograph. -/
noncomputable def distanceToCograph {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k : ℕ | ∃ S : Finset V, (S.card = k) ∧
    (Lax214022.Cographs.IsCograph (G.induce {v | v ∉ S}))}

end Lax825442.DistanceToCograph
