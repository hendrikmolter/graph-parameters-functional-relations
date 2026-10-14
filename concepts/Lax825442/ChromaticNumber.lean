import Mathlib.Combinatorics.SimpleGraph.Coloring.Vertex

/-!
---
title: Chromatic number
type: definition
---
The chromatic number of a graph is the minimum number of colors needed for a
proper vertex coloring.
-/

namespace Lax825442.ChromaticNumber

/-- The natural-valued chromatic number of a finite graph. -/
noncomputable def chromaticNumber {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  G.chromaticNumber.toNat

end Lax825442.ChromaticNumber

