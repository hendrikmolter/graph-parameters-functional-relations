import Lax183560.ModularDecomposition
import Mathlib.Order.Lattice.Nat

/-!
---
title: Modular-width
type: definition
---
The modular-width of a graph is the minimum, over all modular decompositions,
of the maximum number of parts in a substitution other than a disjoint union
or a complete join. Disjoint unions and complete joins do not contribute to
the width. Under this convention, cographs have modular-width zero.
-/

namespace Lax183560.ModularWidth

open Lax183560.ModularDecomposition

/-- Existence of a modular decomposition with substitution arity bounded by k. -/
def HasModularWidthAtMost (V : Type) (G : SimpleGraph V) (k : ℕ) : Prop :=
  ModularDecomposition V G k

/-- The least maximum arity of a non-union, non-join substitution. -/
noncomputable def modularWidth {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasModularWidthAtMost V G k}

end Lax183560.ModularWidth


