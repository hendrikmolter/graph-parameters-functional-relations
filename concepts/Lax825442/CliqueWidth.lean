import Lax271696.CliqueExpr
import Mathlib.Combinatorics.SimpleGraph.Maps
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Order.Lattice.Nat

/-!
---
title: Clique-width
type: definition
---
Clique-width is the least number of labels in a valid expression that builds
the graph from vertex creation, disjoint union, joining two label classes,
and relabelling. The expression language is imported from the registered
Lax concept `Lax271696.CliqueExpr`. A finite vertex type is transported to
`Fin n` because that expression language uses canonically numbered vertices.
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

