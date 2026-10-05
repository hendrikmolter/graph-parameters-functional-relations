import Mathlib.Combinatorics.SimpleGraph.VertexCover

/-!
---
title: Vertex-cover number
type: definition
---
The vertex-cover number is the minimum size of a set meeting every edge. This
natural-valued interface refers to mathlib’s vertex-cover number; it is finite
on finite graphs.
Mathlib's `SimpleGraph.vertexCoverNum_ne_top_of_finite` ensures that conversion
to a natural number loses no information in this domain.
-/

namespace Lax825442.VertexCover

/-- The natural-valued vertex-cover number of a finite graph. -/
noncomputable def vertexCover {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  G.vertexCoverNum.toNat

end Lax825442.VertexCover

