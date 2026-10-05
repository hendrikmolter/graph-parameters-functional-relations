import Lax825442.Bounds

/-!
---
title: Absence of a functional bound
type: definition
---
The relation $p\not\to q$ says that there is no function bounding $q(G)$
in terms of $p(G)$ on all finite simple graphs. Requiring a bounding function
to be nondecreasing does not change this notion: any natural-valued function
can be replaced by its nondecreasing upper envelope.

A graph family with uniformly bounded $p$ and unbounded $q$ witnesses this
relation. An unknown catalogue entry does not assert this relation.
-/

namespace Lax825442.DoesNotBound

open Lax153141.GraphParameters

/-- No functional bound from `p` to `q` exists. -/
def DoesNotBound (p q : GraphParam) : Prop :=
  ¬ (Lax825442.Bounds.Bounds p q)

end Lax825442.DoesNotBound
