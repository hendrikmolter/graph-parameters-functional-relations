import Lax825442.Bounds

/-!
---
title: Functional equivalence of graph parameters
type: definition
---
Two graph parameters are functionally equivalent when each admits a
functional bound in terms of the other. This does not require their numerical
values to be equal, or either bounding function to be linear.
-/

namespace Lax825442.Equivalent

open Lax153141.GraphParameters

/-- Functional bounds hold in both directions. -/
def Equivalent (p q : GraphParam) : Prop :=
  (Lax825442.Bounds.Bounds p q) ∧ (Lax825442.Bounds.Bounds q p)

end Lax825442.Equivalent
