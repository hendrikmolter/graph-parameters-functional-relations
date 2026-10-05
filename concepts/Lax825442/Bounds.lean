import Lax153141.GraphParameters
import Mathlib.Order.Monotone.Basic

/-!
---
title: Functional bounds between graph parameters
type: definition
---
For natural-valued graph parameters $p$ and $q$, the arrow $p\to q$ means
that there is a nondecreasing function $f:\mathbb{N}\to\mathbb{N}$ such that
$q(G)\le f(p(G))$ for every finite simple graph $G$, including disconnected
graphs. Thus a bound on $p$ gives a bound on $q$.

The parameter signature is the existing `Lax153141.GraphParameters.GraphParam`.
-/

namespace Lax825442.Bounds

open Lax153141.GraphParameters

/-- A nondecreasing function of `p` bounds `q` on every finite simple graph. -/
def Bounds (p q : GraphParam) : Prop :=
  ∃ f : ℕ → ℕ, Monotone f ∧
    (∀ {V : Type} [Fintype V] [DecidableEq V] (G : SimpleGraph V),
      q G ≤ f (p G))

end Lax825442.Bounds
