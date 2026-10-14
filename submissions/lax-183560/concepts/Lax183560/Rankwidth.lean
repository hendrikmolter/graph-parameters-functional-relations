import Lax183560.BranchDecompositions
import Lax183560.CutRank

/-!
---
title: Rank-width
type: definition
---
The rank-width of a graph is the minimum, over all branch decompositions of
its vertex set, of the maximum cut-rank. The cut-rank of a cut is the rank
over the two-element field of the adjacency matrix between its two sides.
The empty graph has rank-width zero.
-/

namespace Lax183560.Rankwidth

open Lax183560.BranchDecompositions Lax183560.CutRank

/-- Existence of a vertex branch decomposition of cut-rank at most `k`. -/
def HasRankwidthAtMost {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) (k : ℕ) : Prop :=
  IsEmpty V ∨
    ∃ t : BranchDecompositions.BinaryTree V,
      t.Valid Finset.univ ∧
      t.cutWidth (cutRank G) ≤ k

/-- The minimum maximum binary cut-rank. -/
noncomputable def rankwidth {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasRankwidthAtMost G k}

end Lax183560.Rankwidth
