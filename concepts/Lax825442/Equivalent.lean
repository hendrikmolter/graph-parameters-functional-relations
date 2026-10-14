import Lax825442.Bounds

/-!
---
title: Functional equivalence of graph parameters
type: definition
---
Two graph parameters are functionally equivalent if each is bounded by a
total computable nondecreasing function of the other on every finite simple
graph.
-/

namespace Lax825442.Equivalent

open Lax153141.GraphParameters

/-- Functional bounds hold in both directions. -/
def Equivalent (p q : GraphParam) : Prop :=
  (Lax825442.Bounds.Bounds p q) ∧ (Lax825442.Bounds.Bounds q p)

end Lax825442.Equivalent
