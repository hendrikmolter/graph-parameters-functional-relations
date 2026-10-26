import Lax560391.ChordalGraphs

/-!
---
title: Block graphs
type: definition
---
A block graph is a graph with no induced cycle of length at least four
and no induced diamond (a complete four-vertex graph minus one edge).
Equivalently, every block is a clique. Empty and disconnected graphs are allowed.
-/

namespace Lax560391.BlockGraphs

open Lax560391.ChordalGraphs

/-- The four vertices induce a diamond, `K₄` with edge `cd` removed. -/
def IsInducedDiamond {V : Type} (G : SimpleGraph V) (a b c d : V) : Prop :=
  ([a, b, c, d] : List V).Nodup ∧
  G.Adj a b ∧ G.Adj a c ∧ G.Adj a d ∧
  G.Adj b c ∧ G.Adj b d ∧ ¬ G.Adj c d

/-- Block graphs are the chordal, diamond-free graphs. -/
def IsBlock {V : Type} (G : SimpleGraph V) : Prop :=
  IsChordal G ∧ ¬ ∃ a b c d : V, IsInducedDiamond G a b c d

end Lax560391.BlockGraphs
