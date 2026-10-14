import Mathlib.Combinatorics.SimpleGraph.Basic

/-!
---
title: Rooted forests through ancestor relations
type: definition
---
A strict ancestor relation of a rooted forest is transitive and irreflexive,
and the ancestors of each vertex are linearly ordered. On a finite vertex
set, these conditions characterize the strict ancestor relations of rooted
forests.
-/

namespace Lax183560.AncestorForest

/-- A strict ancestor relation of a rooted forest on `V`. -/
structure AncestorForest (V : Type) where
  ancestor : V → V → Prop
  transitive : IsTrans V ancestor
  irreflexive : Std.Irrefl ancestor
  ancestors_linearly_ordered : ∀ u v w : V,
    (ancestor u w ∧ ancestor v w) → (u = v ∨ ancestor u v ∨ ancestor v u)


end Lax183560.AncestorForest
