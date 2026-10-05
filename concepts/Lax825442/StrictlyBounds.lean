import Lax825442.DoesNotBound

/-!
---
title: Strict functional boundedness of graph parameters
type: definition
---
A graph parameter p strictly bounds q when q is bounded by a nondecreasing
function of p on all finite simple graphs, but p admits no functional bound
in terms of q. This does not assert a pointwise strict inequality between
their values. It is the strict part of functional boundedness.
-/

namespace Lax825442.StrictlyBounds

open Lax153141.GraphParameters

/-- Functional boundedness holds in one direction and fails in the reverse. -/
def StrictlyBounds (p q : GraphParam) : Prop :=
  (Lax825442.Bounds.Bounds p q) ∧
    (Lax825442.DoesNotBound.DoesNotBound q p)

end Lax825442.StrictlyBounds
