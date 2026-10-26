import Lax560391.CClosedGraphs
import Mathlib.Order.Lattice.Nat

/-!
---
title: c-closure
type: definition
---
The c-closure is the least natural number c for which the graph is c-closed.
Complete graphs have value zero.
-/

namespace Lax560391.Closure

noncomputable def closure {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {c : ℕ | Lax560391.CClosedGraphs.IsCClosed G c}

end Lax560391.Closure
