import Lax153141.GraphParameters
import Mathlib.Order.Monotone.Basic
import Mathlib.Computability.Partrec

/-!
---
title: Functional bounds between graph parameters
type: definition
---
For graph parameters $p$ and $q$ with values in the natural numbers, we write
$p\to q$ if there is a total computable nondecreasing function
$f:\mathbb{N}\to\mathbb{N}$ such that $q(G)\le f(p(G))$ for every finite
simple graph $G$. Thus, a bound on $p$ yields a bound on $q$. The definition
includes disconnected graphs.
-/

namespace Lax825442.Bounds

open Lax153141.GraphParameters

/-- A computable nondecreasing function of `p` bounds `q` on every finite simple graph. -/
def Bounds (p q : GraphParam) : Prop :=
  ∃ f : ℕ → ℕ, Computable f ∧ Monotone f ∧
    (∀ {V : Type} [Fintype V] [DecidableEq V] (G : SimpleGraph V),
      q G ≤ f (p G))

end Lax825442.Bounds
