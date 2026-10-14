import Lax825442.StrictlyBounds
import Mathlib.Order.Defs.Unbundled

/-!
---
title: Strict functional boundedness is a strict partial order
type: theorem
---
Strict functional boundedness of graph parameters is irreflexive and
transitive, and hence is a strict partial order. Asymmetry follows from these
two properties.
-/

namespace Lax825442.StrictlyBoundsOrder

open Lax153141.GraphParameters

/-- Strict functional boundedness is an irreflexive, transitive relation. -/
axiom strictlyBounds_strictOrder :
  IsStrictOrder GraphParam Lax825442.StrictlyBounds.StrictlyBounds

end Lax825442.StrictlyBoundsOrder
