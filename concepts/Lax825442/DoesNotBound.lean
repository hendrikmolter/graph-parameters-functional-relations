import Lax825442.Bounds

/-!
---
title: Absence of a functional bound
type: definition
---
The relation $p\not\to q$ says that there is no total computable,
nondecreasing function bounding $q(G)$ in terms of $p(G)$ on all finite simple
graphs. It is the negation of the computable boundedness relation.

A graph family with uniformly bounded $p$ and unbounded $q$ witnesses this
relation. Such a separating family is sufficient, but absence of a computable
bound does not by itself assert absence of every noncomputable bound.
An unknown catalogue entry does not assert this relation.
-/

namespace Lax825442.DoesNotBound

open Lax153141.GraphParameters

/-- No computable nondecreasing functional bound from `p` to `q` exists. -/
def DoesNotBound (p q : GraphParam) : Prop :=
  ¬ (Lax825442.Bounds.Bounds p q)

end Lax825442.DoesNotBound
