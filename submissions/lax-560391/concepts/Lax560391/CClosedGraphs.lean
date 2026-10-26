import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Data.Set.Card

/-!
---
title: c-closed graphs
type: definition
---
A graph is c-closed if every pair of distinct nonadjacent vertices has
fewer than c common neighbors. The value c may be zero; exactly the
complete graphs are 0-closed.
-/

namespace Lax560391.CClosedGraphs

def IsCClosed {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) (c : ℕ) : Prop :=
  ∀ u v : V, u ≠ v → ¬G.Adj u v →
    {w : V | G.Adj u w ∧ G.Adj v w}.ncard < c

end Lax560391.CClosedGraphs
