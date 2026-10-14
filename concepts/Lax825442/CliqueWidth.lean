import Lax271696.CliqueExpr
import Mathlib.Combinatorics.SimpleGraph.Maps
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Order.Lattice.Nat

/-!
---
title: Clique-width
type: definition
---
The clique-width of a graph is the minimum number of labels needed to
construct it using vertex creation, disjoint union, the addition of all edges
between two distinct label classes, and relabeling.
The empty graph has clique-width zero.
-/

namespace Lax825442.CliqueWidth

open Lax271696.CliqueExpr

/-- A valid `k`-expression builds a numbered copy of `G`. -/
def HasCliqueWidthAtMost {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) (k : ℕ) : Prop :=
  Fintype.card V = 0 ∨
    ∃ e : Expr (Fintype.card V) k,
      ValidFor e (G.comap (Fintype.equivFin V).symm)

/-- The minimum number of labels in a valid expression for `G`. -/
noncomputable def cliqueWidth {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasCliqueWidthAtMost G k}

end Lax825442.CliqueWidth

