import Mathlib.Combinatorics.SimpleGraph.VertexCover

/-!
---
title: Vertex-cover number
type: definition
---
A vertex cover is a set of vertices that meets every edge. The vertex-cover
number is the minimum size of a vertex cover.
-/

namespace Lax825442.VertexCover

/-- The natural-valued vertex-cover number of a finite graph. -/
noncomputable def vertexCover {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  G.vertexCoverNum.toNat

end Lax825442.VertexCover

