import Lax825442.StrictlyBounds
import Lax825442.Equivalent
import Lax825442.Incomparable

/-!
---
title: Exactly one of four relations for graph parameters
type: theorem
---
For every pair of graph parameters, exactly one of four relations holds:
the first strictly bounds the second, the second strictly bounds the first,
they are functionally equivalent, or they are incomparable.

The statement asserts that at least one case holds and explicitly excludes
all six pairs of simultaneous cases. Its proof uses classical excluded
middle for functional boundedness in each direction; it does not provide an
algorithm for deciding which case holds.
-/

namespace Lax825442.RelationClassification
open Lax153141.GraphParameters
open Lax825442.StrictlyBounds Lax825442.Equivalent Lax825442.Incomparable

/-- Exactly one of the four cases holds: exhaustiveness and pairwise exclusiveness. -/
axiom relationClassification (p q : GraphParam) :
  (StrictlyBounds p q ∨ StrictlyBounds q p ∨ Equivalent p q ∨ Incomparable p q) ∧
    ¬ (StrictlyBounds p q ∧ StrictlyBounds q p) ∧
    ¬ (StrictlyBounds p q ∧ Equivalent p q) ∧
    ¬ (StrictlyBounds p q ∧ Incomparable p q) ∧
    ¬ (StrictlyBounds q p ∧ Equivalent p q) ∧
    ¬ (StrictlyBounds q p ∧ Incomparable p q) ∧
    ¬ (Equivalent p q ∧ Incomparable p q)

end Lax825442.RelationClassification

