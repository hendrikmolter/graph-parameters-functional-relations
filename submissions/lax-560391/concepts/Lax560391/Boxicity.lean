import Lax560391.BoxRepresentation
import Mathlib.Order.Lattice.Nat

/-!
---
title: Boxicity
type: definition
---
Boxicity is the minimum number of coordinates in an intersection
representation by nonempty axis-parallel closed boxes. Zero coordinates give a
complete graph, so complete graphs have value zero.
-/

namespace Lax560391.Boxicity

/-- An intersection representation by nonempty closed `k`-dimensional
axis-parallel boxes. -/
def HasBoxicityAtMost {V : Type} (G : SimpleGraph V) (k : ℕ) : Prop :=
  Nonempty (Lax560391.BoxRepresentation.BoxRepresentation G k)

noncomputable def boxicity {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasBoxicityAtMost G k}

end Lax560391.Boxicity
