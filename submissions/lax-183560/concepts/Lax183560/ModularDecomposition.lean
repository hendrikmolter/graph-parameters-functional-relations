import Mathlib.Combinatorics.SimpleGraph.Maps

/-!
---
title: Modular decompositions
type: definition
---
A modular decomposition recursively partitions a graph into nonempty modules.
A module is a vertex set whose vertices have the same neighbors outside the
set. Between any two parts, either all possible edges are present or none
are; a quotient graph records which parts are adjacent. Each part is
decomposed recursively, with graphs on at most one vertex as the base case.

A decomposition has width at most $k$ if every substitution uses at most
$k$ parts, except for disjoint unions and complete joins, whose numbers of
parts are unrestricted. The quotient graphs need not be prime.
-/

namespace Lax183560.ModularDecomposition

/-- A recursive modular decomposition whose nontrivial substitutions use at
most `k` parts. -/
inductive ModularDecomposition :
    (V : Type) → SimpleGraph V → ℕ → Prop where
  | atom {V : Type} [Fintype V] (G : SimpleGraph V) (k : ℕ)
      (h : Fintype.card V ≤ 1) : ModularDecomposition V G k
  | substitute {V : Type} [Fintype V] [DecidableEq V]
      (G : SimpleGraph V) (k n : ℕ)
      (part : V → Fin n) (Q : SimpleGraph (Fin n))
      (nontrivial : 2 ≤ n)
      (surjective : Function.Surjective part)
      (cross : ∀ u v : V, part u ≠ part v →
        (G.Adj u v ↔ Q.Adj (part u) (part v)))
      (children : ∀ i : Fin n,
        ModularDecomposition {v : V // part v = i}
          (G.induce {v : V | part v = i}) k)
      (arity : Q = ⊥ ∨ Q = ⊤ ∨ n ≤ k) :
      ModularDecomposition V G k


end Lax183560.ModularDecomposition

