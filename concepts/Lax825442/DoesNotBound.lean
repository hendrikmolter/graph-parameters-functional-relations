import Lax825442.Bounds

/-!
---
title: Absence of a functional bound
type: definition
---
We write $p\not\to q$ if no total computable nondecreasing function bounds
$q(G)$ in terms of $p(G)$ on every finite simple graph. This relation is the
negation of functional boundedness.

A family of graphs on which $p$ is uniformly bounded and $q$ is unbounded
establishes this relation. Such a family is sufficient, but the absence of a
computable bound does not imply the absence of every noncomputable bound.
-/

namespace Lax825442.DoesNotBound

open Lax153141.GraphParameters

/-- No computable nondecreasing functional bound from `p` to `q` exists. -/
def DoesNotBound (p q : GraphParam) : Prop :=
  ¬ (Lax825442.Bounds.Bounds p q)

end Lax825442.DoesNotBound
