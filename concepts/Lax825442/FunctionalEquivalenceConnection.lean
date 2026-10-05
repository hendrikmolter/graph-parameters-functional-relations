import Lax825442.Equivalent

/-!
---
title: Agreement with Lax functional equivalence
type: theorem
---
Mutual nondecreasing functional bounds agree with the existing Lax definition
`Lax153141.GraphParameters.FunctionallyEquivalent`, which permits arbitrary
natural-valued bounding functions.

For an arbitrary bounding function $f$, its upper envelope
$h(n)=\max\{f(0),\ldots,f(n)\}$ is nondecreasing and satisfies $f(n)\le h(n)$.
Replacing both bounding functions by these envelopes proves the agreement.
-/

namespace Lax825442.FunctionalEquivalenceConnection

open Lax153141.GraphParameters

/-- Mutual monotone bounds agree with the registered Lax definition. -/
axiom functionallyEquivalent_iff (p q : GraphParam) :
  (FunctionallyEquivalent p q) ↔ (Lax825442.Equivalent.Equivalent p q)

end Lax825442.FunctionalEquivalenceConnection
