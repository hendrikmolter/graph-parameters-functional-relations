import Lax825442.DoesNotBound

/-!
---
title: Incomparability of graph parameters
type: definition
---
Two graph parameters are incomparable when neither admits a functional bound
in terms of the other. Both directions must fail. Unbounded ratios alone do
not establish incomparability.
-/

namespace Lax825442.Incomparable

open Lax153141.GraphParameters

/-- Neither parameter functionally bounds the other. -/
def Incomparable (p q : GraphParam) : Prop :=
  (Lax825442.DoesNotBound.DoesNotBound p q) ∧
    (Lax825442.DoesNotBound.DoesNotBound q p)

end Lax825442.Incomparable
