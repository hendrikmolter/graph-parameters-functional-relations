import Mathlib.Combinatorics.SimpleGraph.Matching
import Mathlib.Order.Lattice.Nat
import Mathlib.Data.Set.Card

/-!
---
title: Maximum matching number
type: definition
---
A matching is a set of edges with no shared endpoints. The maximum matching
number of a finite simple graph is the largest number of edges in a matching.
The empty graph has value zero. The definition uses mathlib's subgraph
matching predicate and counts edges, rather than matched vertices.
-/

namespace Lax825442.MaximumMatching

/-- The maximum number of edges in a matching. -/
noncomputable def maximumMatching {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sSup {n : ℕ | ∃ M : G.Subgraph, M.IsMatching ∧ (M.edgeSet.ncard = n)}

end Lax825442.MaximumMatching
