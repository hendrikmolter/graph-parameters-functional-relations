import Mathlib.Combinatorics.SimpleGraph.Coloring.Vertex

/-!
---
title: Vertex clique cover number
type: definition
---
The vertex clique cover number is the minimum number of cliques partitioning
the vertices, equivalently the chromatic number of the complement.
Each color class of the complement is a clique of the original graph.
The complement is finite, so converting its chromatic number to a natural
number loses no information. The empty graph has value zero.
-/

namespace Lax825442.VertexCliqueCover

/-- The vertex clique cover number, expressed as the chromatic number of the
complement. -/
noncomputable def vertexCliqueCover {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  Gᶜ.chromaticNumber.toNat

end Lax825442.VertexCliqueCover

