import Lax560391.ChordalIntersectionRepresentation
import Mathlib.Order.Lattice.Nat

/-!
---
title: Chordal intersection dimension
type: definition
---
The minimum number of chordal supergraphs whose edge intersection is the
graph. The intersection of zero factors is complete, so complete graphs have
value zero.
-/

namespace Lax560391.ChordalIntersectionDimension

/-- `G` is the intersection of `k` chordal graphs on the same vertices.
The distinctness guard gives the intersection of zero graphs the complete
graph rather than a reflexive relation. -/
def HasChordalIntersectionDimensionAtMost {V : Type}
    (G : SimpleGraph V) (k : ℕ) : Prop :=
  Nonempty (Lax560391.ChordalIntersectionRepresentation.ChordalIntersectionRepresentation G k)

noncomputable def chordalIntersectionDimension
    {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasChordalIntersectionDimensionAtMost G k}

end Lax560391.ChordalIntersectionDimension
