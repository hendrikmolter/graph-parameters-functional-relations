import Lax825442.DoesNotBound

/-!
---
title: Incomparability of graph parameters
type: definition
---
Two graph parameters are incomparable if neither is bounded by a total
computable nondecreasing function of the other on every finite simple graph.
-/

namespace Lax825442.Incomparable

open Lax153141.GraphParameters

/-- Neither parameter functionally bounds the other. -/
def Incomparable (p q : GraphParam) : Prop :=
  (Lax825442.DoesNotBound.DoesNotBound p q) ∧
    (Lax825442.DoesNotBound.DoesNotBound q p)

end Lax825442.Incomparable
