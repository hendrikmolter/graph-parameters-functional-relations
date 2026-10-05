import Lax825442.StrictlyBounds
import Mathlib.Order.Defs.Unbundled

/-!
---
title: Strict functional boundedness is a strict partial order
type: theorem
---
Strict functional boundedness is irreflexive and transitive on graph
parameters, and hence is a strict partial order. The statement uses mathlib's
`IsStrictOrder`, which expresses these two properties. Asymmetry follows from
them. Distinct graph parameters can be functionally equivalent, so this is
not asserted to be a strict total order.
-/

namespace Lax825442.StrictlyBoundsOrder

open Lax153141.GraphParameters

/-- Strict functional boundedness is an irreflexive, transitive relation. -/
axiom strictlyBounds_strictOrder :
  IsStrictOrder GraphParam Lax825442.StrictlyBounds.StrictlyBounds

end Lax825442.StrictlyBoundsOrder
