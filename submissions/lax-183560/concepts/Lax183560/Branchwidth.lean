import Lax183560.BranchDecompositions

/-!
---
title: Branchwidth
type: definition
---
The branchwidth of a graph is the minimum, over all branch decompositions of
its edge set, of the maximum size of a middle set. The middle set of a cut
consists of the vertices incident with an edge on each side of the cut.
Graphs with at most one edge have branchwidth zero.
-/

namespace Lax183560.Branchwidth

open Lax183560.BranchDecompositions

/-- Number of vertices incident with an edge in `A` and an edge outside `A`. -/
noncomputable def middleSize {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) (A : Finset (Sym2 V)) : ℕ :=
  {v : V | (∃ e : Sym2 V, e ∈ G.edgeSet ∧ e ∈ A ∧ v ∈ e) ∧
    (∃ e : Sym2 V, e ∈ G.edgeSet ∧ e ∉ A ∧ v ∈ e)}.ncard

/-- A branch decomposition with every middle set of size at most `k`. -/
noncomputable def HasBranchwidthAtMost {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) (k : ℕ) : Prop := by
  classical
  exact G.edgeSet = ∅ ∨
    ∃ t : BranchDecompositions.BinaryTree (Sym2 V),
      t.Valid G.edgeFinset ∧
      t.cutWidth (middleSize G) ≤ k

/-- The minimum middle-set width of an edge branch decomposition. -/
noncomputable def branchwidth {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasBranchwidthAtMost G k}

end Lax183560.Branchwidth
