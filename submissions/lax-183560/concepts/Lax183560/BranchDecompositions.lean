import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.LinearAlgebra.Matrix.Rank
import Mathlib.Data.ZMod.Basic
import Mathlib.Order.Lattice.Nat

/-!
---
title: Binary branch decompositions of finite sets
type: definition
---
A branch decomposition of a finite set is an unrooted tree of maximum degree
three whose leaves are in bijection with the set. Each edge determines a cut
by separating the leaves into two parts.

For symmetric cut functions, a decomposition can be represented by a binary
tree obtained by rooting it at an edge. Each subtree determines one side of
a cut. The root determines the cut with an empty opposite side, which has
value zero for the cut functions used here.
-/

namespace Lax183560.BranchDecompositions

inductive BinaryTree (α : Type) where
  | leaf : α → BinaryTree α
  | fork : BinaryTree α → BinaryTree α → BinaryTree α

/-- Leaves with multiplicity, in left-to-right order. -/
def BinaryTree.leaves {α : Type} : BinaryTree α → List α
  | .leaf a => [a]
  | .fork left right => left.leaves ++ right.leaves

/-- A valid branch tree contains each element of the ground set once. -/
def BinaryTree.Valid {α : Type} [DecidableEq α]
    (t : BinaryTree α) (ground : Finset α) : Prop :=
  t.leaves.Nodup ∧ t.leaves.toFinset = ground

/-- Maximum cut value among the cuts at the nodes of a branch tree. -/
def BinaryTree.cutWidth {α : Type} [DecidableEq α]
    (measure : Finset α → ℕ) : BinaryTree α → ℕ
  | .leaf a => measure {a}
  | .fork left right =>
      max (measure ((left.leaves ++ right.leaves).toFinset))
        (max (left.cutWidth measure) (right.cutWidth measure))

end Lax183560.BranchDecompositions
