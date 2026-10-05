import Lax214022.Cographs
import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Order.Lattice.Nat

/-!
---
title: Distance to cographs
type: definition
---
The distance to cographs is the minimum number of vertices whose deletion
leaves a cograph. The remaining graph is induced on the vertices outside the
deleted set. Cograph membership uses the registered `Lax214022.Cographs.IsCograph`,
expressed through a twin-width-zero contraction sequence. This is the standard
cograph class, equivalently the graphs with no induced four-vertex path.
-/

namespace Lax825442.DistanceToCograph

/-- Minimum number of vertices whose deletion leaves a cograph. -/
noncomputable def distanceToCograph {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k : ℕ | ∃ S : Finset V, (S.card = k) ∧
    (Lax214022.Cographs.IsCograph (G.induce {v | v ∉ S}))}

end Lax825442.DistanceToCograph
