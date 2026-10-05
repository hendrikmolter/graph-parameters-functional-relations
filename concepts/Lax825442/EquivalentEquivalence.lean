import Lax825442.Equivalent

/-!
---
title: Functional equivalence is an equivalence relation
type: theorem
---
Functional equivalence of graph parameters is reflexive, symmetric, and
transitive. Identity functions give reflexivity, symmetry exchanges the two
bounds, and composition of nondecreasing bounding functions gives transitivity.
-/

namespace Lax825442.EquivalentEquivalence

open Lax153141.GraphParameters

/-- Mutual functional boundedness is an equivalence relation. -/
axiom equivalent_equivalence : Equivalence Lax825442.Equivalent.Equivalent

end Lax825442.EquivalentEquivalence
