import Mathlib.Combinatorics.SimpleGraph.Basic
import Mathlib.Data.Real.Basic

/-!
---
title: Box representations
type: definition
---
A box representation assigns a nonempty closed axis-parallel real box to
each vertex, with adjacency exactly when the boxes intersect. The dimension
may be zero, in which case the represented graph is complete.
-/

namespace Lax560391.BoxRepresentation

structure BoxRepresentation {V : Type} (G : SimpleGraph V) (k : ℕ) where
  lo : V → Fin k → ℝ
  hi : V → Fin k → ℝ
  nonempty : ∀ v i, lo v i ≤ hi v i
  represents : ∀ u v, u ≠ v →
    (G.Adj u v ↔ ∀ i, lo u i ≤ hi v i ∧ lo v i ≤ hi u i)

end Lax560391.BoxRepresentation
