import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.LinearAlgebra.Matrix.Rank
import Mathlib.Data.ZMod.Basic

/-!
---
title: Binary cut-rank
type: definition
---
For a vertex set $A$ in a graph, the cut-rank is the rank over the
two-element field of the adjacency matrix with rows indexed by $A$ and
columns indexed by the vertices outside $A$.
-/

namespace Lax183560.CutRank

/-- Binary rank of the adjacency matrix across a cut. -/
noncomputable def cutRank {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) (A : Finset V) : ℕ := by
  classical
  let M : Matrix {v : V // v ∈ A} {v : V // v ∉ A} (ZMod 2) :=
    fun u v => if G.Adj u v then 1 else 0
  exact M.rank


end Lax183560.CutRank

