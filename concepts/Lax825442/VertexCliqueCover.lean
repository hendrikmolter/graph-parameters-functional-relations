import Mathlib.Combinatorics.SimpleGraph.Coloring.Vertex

/-!
---
title: Vertex clique cover number
type: definition
---
The vertex clique cover number of a graph is the minimum number of cliques
whose vertex sets partition its vertex set. Equivalently, it is the chromatic
number of the complement: each color class of the complement is a clique in
the original graph. The empty graph has vertex clique cover number zero.
-/

namespace Lax825442.VertexCliqueCover

/-- The vertex clique cover number, expressed as the chromatic number of the
complement. -/
noncomputable def vertexCliqueCover {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  Gᶜ.chromaticNumber.toNat

end Lax825442.VertexCliqueCover

