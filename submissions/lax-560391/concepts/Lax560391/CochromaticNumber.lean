import Lax560391.CochromaticPartition
import Mathlib.Order.Lattice.Nat

/-!
---
title: Cochromatic number
type: definition
---
The cochromatic number is the least number of parts in a vertex partition
where each part induces either a clique or an independent set. Parts need not
be graph modules. The empty graph has cochromatic number zero.
-/

namespace Lax560391.CochromaticNumber

/-- A partition into at most `k` cliques or independent sets. Empty labels
are allowed and do not affect the minimum. -/
def HasCochromaticNumberAtMost {V : Type} (G : SimpleGraph V) (k : ℕ) : Prop :=
  Nonempty (Lax560391.CochromaticPartition.CochromaticPartition G k)

noncomputable def cochromaticNumber {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) : ℕ :=
  sInf {k | HasCochromaticNumberAtMost G k}

end Lax560391.CochromaticNumber
