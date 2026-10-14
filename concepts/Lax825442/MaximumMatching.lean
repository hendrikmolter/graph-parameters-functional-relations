import Mathlib.Combinatorics.SimpleGraph.Matching
import Mathlib.Order.Lattice.Nat
import Mathlib.Data.Set.Card

/-!
---
title: Maximum matching number
type: definition
---
The maximum matching number of a graph is the largest number of edges in a
matching. The empty graph has maximum matching number zero.
-/

namespace Lax825442.MaximumMatching

/-- The maximum number of edges in a matching. -/
noncomputable def maximumMatching {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sSup {n : ℕ | ∃ M : G.Subgraph, M.IsMatching ∧ (M.edgeSet.ncard = n)}

end Lax825442.MaximumMatching
