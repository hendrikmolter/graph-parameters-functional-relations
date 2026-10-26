import Lax560391.EdgeCliqueCovering
import Mathlib.Order.Lattice.Nat

/-!
---
title: Edge clique cover number
type: definition
---
An edge clique cover is a family of vertex cliques such that every graph edge
has both endpoints in at least one family member. Its number is the minimum
size of such a family. An edgeless graph has edge clique cover number zero.
-/

namespace Lax560391.EdgeCliqueCover

/-- `k` indexed cliques cover every edge of `G`. Repeated or empty cliques
are harmless because the minimum index count is taken. -/
def HasEdgeCliqueCoverAtMost {V : Type} [DecidableEq V]
    (G : SimpleGraph V) (k : ℕ) : Prop :=
  Nonempty (Lax560391.EdgeCliqueCovering.EdgeCliqueCovering G k)

noncomputable def edgeCliqueCover {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasEdgeCliqueCoverAtMost G k}

end Lax560391.EdgeCliqueCover
