import Mathlib.Combinatorics.SimpleGraph.Basic
import Mathlib.Data.Real.Basic

/-!
---
title: Interval representations
type: definition
---
An interval representation assigns a nonempty closed real interval to each
vertex, with adjacency exactly when two distinct vertices have intersecting
intervals. Point intervals and repeated intervals are allowed.
-/

namespace Lax560391.IntervalRepresentation

structure IntervalRepresentation {V : Type} (G : SimpleGraph V) where
  lo : V → ℝ
  hi : V → ℝ
  nonempty : ∀ v, lo v ≤ hi v
  represents : ∀ u v, u ≠ v →
    (G.Adj u v ↔ lo u ≤ hi v ∧ lo v ≤ hi u)

end Lax560391.IntervalRepresentation
