import Lax68.Planar
import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Order.Lattice.Nat

/-!
---
title: Distance to planar graphs
type: definition
---
The distance to planar graphs is the minimum number of vertices whose deletion
leaves a planar induced graph. Planarity uses the registered `Lax68.Planar.IsPlanar`,
which asserts the existence of a crossing-free straight-line drawing in the
real plane. For finite simple graphs this agrees with standard planarity.
-/

namespace Lax825442.DistanceToPlanar

/-- Minimum number of vertices whose deletion leaves a planar graph. -/
noncomputable def distanceToPlanar {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k : ℕ | ∃ S : Finset V, (S.card = k) ∧
    (Lax68.Planar.IsPlanar (G.induce {v | v ∉ S}))}

end Lax825442.DistanceToPlanar
