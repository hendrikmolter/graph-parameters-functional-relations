import Mathlib.Combinatorics.SimpleGraph.Basic

/-!
---
title: Path decompositions
type: definition
---
A path decomposition of a graph is a finite sequence of vertex bags such
that every vertex belongs to a bag, both endpoints of every edge belong to
a common bag, and the bags containing any fixed vertex form an interval.
The sequence may be empty when the graph has no vertices.
-/

namespace Lax183560.PathDecomposition

/-- A path decomposition indexed by a finite linear order. -/
structure PathDecomposition {V : Type} (G : SimpleGraph V) where
  length : ℕ
  bag : Fin length → Finset V
  vertex_mem_bag : ∀ v : V, ∃ i, v ∈ bag i
  edge_mem_bag : ∀ ⦃u v : V⦄, G.Adj u v →
    ∃ i, u ∈ bag i ∧ v ∈ bag i
  bag_indices_interval : ∀ v : V, ∀ i j l : Fin length,
    (i ≤ j ∧ j ≤ l ∧ v ∈ bag i ∧ v ∈ bag l) → v ∈ bag j


end Lax183560.PathDecomposition

