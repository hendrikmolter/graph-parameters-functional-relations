import Lax825442.DoesNotBound

/-!
---
title: Strict functional boundedness of graph parameters
type: definition
---
A graph parameter $p$ strictly bounds a graph parameter $q$ if $q$ is bounded
by a total computable nondecreasing function of $p$ on every finite simple
graph, but $p$ admits no such bound in terms of $q$.
-/

namespace Lax825442.StrictlyBounds

open Lax153141.GraphParameters

/-- Functional boundedness holds in one direction and fails in the reverse. -/
def StrictlyBounds (p q : GraphParam) : Prop :=
  (Lax825442.Bounds.Bounds p q) ∧
    (Lax825442.DoesNotBound.DoesNotBound q p)

end Lax825442.StrictlyBounds
