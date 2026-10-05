import Mathlib.Combinatorics.SimpleGraph.Coloring.Vertex

/-!
---
title: Chromatic number
type: definition
---
The chromatic number is the minimum number of colors in a proper vertex
coloring. This interface takes the natural part of mathlib’s chromatic number,
which is finite on finite graphs.
Mathlib's `SimpleGraph.colorable_of_fintype` gives a coloring with at most
the number of vertices, so conversion to a natural number loses no information.
-/

namespace Lax825442.ChromaticNumber

/-- The natural-valued chromatic number of a finite graph. -/
noncomputable def chromaticNumber {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  G.chromaticNumber.toNat

end Lax825442.ChromaticNumber

